import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A059700: Primes p such that p^7 reversed is also prime.

The programs for A059700, there is no canonical definition to state claims against.
-/

/-! ## A059700.P3125974627824171621

`p?[A059208(n+1)]`
-/

namespace A059700.P3125974627824171621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059700.P3125974627824171621

/-! ## A059700.P2868584450159043367

`∩[A000040(n+1), A059208(n+1)]`
-/

namespace A059700.P2868584450159043367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P2868584450159043367

/-! ## A059700.P13791292166551447653

`∩[A045319(n+1), A059208(n+1)]`
-/

namespace A059700.P13791292166551447653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P13791292166551447653

/-! ## A059700.P2525234780848907816

`∩[A045344(n+1), A059208(n+1)]`
-/

namespace A059700.P2525234780848907816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P2525234780848907816

/-! ## A059700.P4640937997651249553

`∩[A008578(n+1), A059208(n+1)]`
-/

namespace A059700.P4640937997651249553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P4640937997651249553

/-! ## A059700.P18220137698225517608

`∩[A033946(n+1), A059208(n+1)]`
-/

namespace A059700.P18220137698225517608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P18220137698225517608

/-! ## A059700.P13775000276234070384

`∩[A046022(n+1), A059208(n+1)]`
-/

namespace A059700.P13775000276234070384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P13775000276234070384

/-! ## A059700.P13438141617481392063

`∩[A051948(n+1), A059208(n+1)]`
-/

namespace A059700.P13438141617481392063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P13438141617481392063

/-! ## A059700.P18390922641803988596

`∩[A053813(n+1), A059208(n+1)]`
-/

namespace A059700.P18390922641803988596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P18390922641803988596

/-! ## A059700.P9753661461733178589

`∩[A059208(n+1), A062972(n+1)]`
-/

namespace A059700.P9753661461733178589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P9753661461733178589

/-! ## A059700.P3108284970143723337

`∩[A059208(n+1), A066050(n+1)]`
-/

namespace A059700.P3108284970143723337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P3108284970143723337

/-! ## A059700.P16852299017566443395

`∩[A059208(n+1), A067126(n+1)]`
-/

namespace A059700.P16852299017566443395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P16852299017566443395

/-! ## A059700.P10646145054674295701

`∩[A059208(n+1), A132630(n+1)]`
-/

namespace A059700.P10646145054674295701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P10646145054674295701

/-! ## A059700.P14476115179276938002

`∩[A182140(n+1), A059208(n+1)]`
-/

namespace A059700.P14476115179276938002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P14476115179276938002

/-! ## A059700.P13219722442710922325

`∩[A326715(n+1), A059208(n+1)]`
-/

namespace A059700.P13219722442710922325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P13219722442710922325

/-! ## A059700.P17231910009118961027

`∩[A059208(n+1), A145739(n+1)]`
-/

namespace A059700.P17231910009118961027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P17231910009118961027

/-! ## A059700.P5841468496607140485

`∩[A059208(n+1), A340076(n+1)]`
-/

namespace A059700.P5841468496607140485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P5841468496607140485

/-! ## A059700.P13201384332529692004

`record[A020639(A059208(n+2))]`
-/

namespace A059700.P13201384332529692004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A059208 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059700.P13201384332529692004

/-! ## A059700.P3409981937848282543

`filter[A059208(n+1), A010051(#)]`
-/

namespace A059700.P3409981937848282543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A059700.P3409981937848282543

/-! ## A059700.P17977635180472445796

`∩[A059208(n+1), A174219(n+1)]`
-/

namespace A059700.P17977635180472445796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059700.P17977635180472445796

/-!
# A059701: Primes p such that p^8 reversed is also prime.

The programs for A059701, there is no canonical definition to state claims against.
-/

/-! ## A059701.P2650634539098471601

`p?[A059209(n+1)]`
-/

namespace A059701.P2650634539098471601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059701.P2650634539098471601

/-! ## A059701.P5049553098479272848

`record[p?[A059209(A323889(n))]]`
-/

namespace A059701.P5049553098479272848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059701.P5049553098479272848

/-! ## A059701.P7423365543915226305

`record[p?[A059209(A324347(n))]]`
-/

namespace A059701.P7423365543915226305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059701.P7423365543915226305

/-! ## A059701.P7911146468628023996

`p?[record[A059209(A154958(n))]]`
-/

namespace A059701.P7911146468628023996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059701.P7911146468628023996

/-! ## A059701.P265389759068210440

`p?[record[A059209(A141256(n))]]`
-/

namespace A059701.P265389759068210440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059701.P265389759068210440

/-! ## A059701.P47330234533673292

`∩[A059209(n+1), A216285(n+1)]`
-/

namespace A059701.P47330234533673292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P47330234533673292

/-! ## A059701.P2569946778849610087

`∩[A000040(n+1), A059209(n+1)]`
-/

namespace A059701.P2569946778849610087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P2569946778849610087

/-! ## A059701.P2024592138981669289

`∩[A004139(n+1), A059209(n+1)]`
-/

namespace A059701.P2024592138981669289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P2024592138981669289

/-! ## A059701.P13121400245151367328

`∩[A006005(n+1), A059209(n+1)]`
-/

namespace A059701.P13121400245151367328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P13121400245151367328

/-! ## A059701.P16943692673585614976

`∩[A008578(n+1), A059209(n+1)]`
-/

namespace A059701.P16943692673585614976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P16943692673585614976

/-! ## A059701.P17014764205560787611

`∩[A033946(n+1), A059209(n+1)]`
-/

namespace A059701.P17014764205560787611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P17014764205560787611

/-! ## A059701.P12403823698343488565

`∩[A045319(n+1), A059209(n+1)]`
-/

namespace A059701.P12403823698343488565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P12403823698343488565

/-! ## A059701.P7396903812800611723

`∩[A045344(n+1), A059209(n+1)]`
-/

namespace A059701.P7396903812800611723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P7396903812800611723

/-! ## A059701.P3629460246303436888

`∩[A046022(n+1), A059209(n+1)]`
-/

namespace A059701.P3629460246303436888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P3629460246303436888

/-! ## A059701.P12461712376263300337

`∩[A051948(n+1), A059209(n+1)]`
-/

namespace A059701.P12461712376263300337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P12461712376263300337

/-! ## A059701.P17555194032757274394

`∩[A053813(n+1), A059209(n+1)]`
-/

namespace A059701.P17555194032757274394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P17555194032757274394

/-! ## A059701.P7369960536031047359

`∩[A059209(n+1), A062972(n+1)]`
-/

namespace A059701.P7369960536031047359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P7369960536031047359

/-! ## A059701.P7724503831180098885

`∩[A059209(n+1), A064728(n+1)]`
-/

namespace A059701.P7724503831180098885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P7724503831180098885

/-! ## A059701.P16899270901711407989

`∩[A059209(n+1), A065091(n+1)]`
-/

namespace A059701.P16899270901711407989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P16899270901711407989

/-! ## A059701.P720008738979891139

`∩[A059209(n+1), A065376(n+1)]`
-/

namespace A059701.P720008738979891139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059701.P720008738979891139

/-!
# A059702: Primes p such that p^9 reversed is also prime.

The programs for A059702, there is no canonical definition to state claims against.
-/

/-! ## A059702.P12705361860743467076

`p?[A059210(n+1)]`
-/

namespace A059702.P12705361860743467076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059702.P12705361860743467076

/-! ## A059702.P8529640967695496468

`record[p?[A059210(A324347(n))]]`
-/

namespace A059702.P8529640967695496468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059702.P8529640967695496468

/-! ## A059702.P11340172494539943708

`p?[A059210(-xor(n, -1))]%A078492(n)²`
-/

namespace A059702.P11340172494539943708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A078492 n ^ 2)

end

end A059702.P11340172494539943708

/-! ## A059702.P15136240164348439282

`A000027(p?[A059210(-xor(n, -1))])`
-/

namespace A059702.P15136240164348439282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A059702.P15136240164348439282

/-! ## A059702.P9025515937497535993

`∩[A059210(n+1), A096264(n+1)]`
-/

namespace A059702.P9025515937497535993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P9025515937497535993

/-! ## A059702.P12695284977713731586

`∩[A000040(n+1), A059210(n+1)]`
-/

namespace A059702.P12695284977713731586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P12695284977713731586

/-! ## A059702.P2228193485413037205

`∩[A004139(n+1), A059210(n+1)]`
-/

namespace A059702.P2228193485413037205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P2228193485413037205

/-! ## A059702.P15531535305222205480

`∩[A006005(n+1), A059210(n+1)]`
-/

namespace A059702.P15531535305222205480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P15531535305222205480

/-! ## A059702.P13778944435746148573

`∩[A008578(n+1), A059210(n+1)]`
-/

namespace A059702.P13778944435746148573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P13778944435746148573

/-! ## A059702.P9756737010809074189

`∩[A033946(n+1), A059210(n+1)]`
-/

namespace A059702.P9756737010809074189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P9756737010809074189

/-! ## A059702.P13349035229749635521

`∩[A045319(n+1), A059210(n+1)]`
-/

namespace A059702.P13349035229749635521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P13349035229749635521

/-! ## A059702.P11095598160626165584

`∩[A045344(n+1), A059210(n+1)]`
-/

namespace A059702.P11095598160626165584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P11095598160626165584

/-! ## A059702.P15640744427580741776

`∩[A046022(n+1), A059210(n+1)]`
-/

namespace A059702.P15640744427580741776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P15640744427580741776

/-! ## A059702.P306305665068319222

`∩[A051948(n+1), A059210(n+1)]`
-/

namespace A059702.P306305665068319222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P306305665068319222

/-! ## A059702.P18025687075577048603

`∩[A053813(n+1), A059210(n+1)]`
-/

namespace A059702.P18025687075577048603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P18025687075577048603

/-! ## A059702.P4204660933802380585

`∩[A059210(n+1), A062972(n+1)]`
-/

namespace A059702.P4204660933802380585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P4204660933802380585

/-! ## A059702.P753959020371167852

`∩[A059210(n+1), A065396(n+1)]`
-/

namespace A059702.P753959020371167852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P753959020371167852

/-! ## A059702.P3384247955476428999

`∩[A059210(n+1), A067126(n+1)]`
-/

namespace A059702.P3384247955476428999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P3384247955476428999

/-! ## A059702.P259628588383971171

`∩[A059210(n+1), A078132(n+1)]`
-/

namespace A059702.P259628588383971171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P259628588383971171

/-! ## A059702.P15170814688285383080

`∩[A059210(n+1), A122731(n+1)]`
-/

namespace A059702.P15170814688285383080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059702.P15170814688285383080

/-!
# A059703: Primes p such that p^10 reversed is also prime.

The programs for A059703, there is no canonical definition to state claims against.
-/

/-! ## A059703.P15761112902821057540

`p?[A059211(n+1)]`
-/

namespace A059703.P15761112902821057540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059703.P15761112902821057540

/-! ## A059703.P10325016461094413928

`p?[record[A059211(A246694(n))]]`
-/

namespace A059703.P10325016461094413928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059703.P10325016461094413928

/-! ## A059703.P10553063075892809142

`p?[record[A059211(A052938(n))]]`
-/

namespace A059703.P10553063075892809142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059703.P10553063075892809142

/-! ## A059703.P7400566683249511377

`p?[A059211(A052938(2*n))]%A017186(n)`
-/

namespace A059703.P7400566683249511377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017186 n)

end

end A059703.P7400566683249511377

/-! ## A059703.P817361809958655164

`∩[A000040(n+1), A059211(n+1)]`
-/

namespace A059703.P817361809958655164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P817361809958655164

/-! ## A059703.P17339943078440027257

`∩[A008578(n+1), A059211(n+1)]`
-/

namespace A059703.P17339943078440027257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P17339943078440027257

/-! ## A059703.P14512492817777790466

`∩[A033946(n+1), A059211(n+1)]`
-/

namespace A059703.P14512492817777790466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P14512492817777790466

/-! ## A059703.P17125376985194956275

`∩[A045319(n+1), A059211(n+1)]`
-/

namespace A059703.P17125376985194956275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P17125376985194956275

/-! ## A059703.P2602291120670462465

`∩[A045344(n+1), A059211(n+1)]`
-/

namespace A059703.P2602291120670462465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P2602291120670462465

/-! ## A059703.P14940167130776905751

`∩[A046022(n+1), A059211(n+1)]`
-/

namespace A059703.P14940167130776905751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P14940167130776905751

/-! ## A059703.P16461403388452318185

`∩[A051948(n+1), A059211(n+1)]`
-/

namespace A059703.P16461403388452318185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P16461403388452318185

/-! ## A059703.P17925809687467426253

`∩[A053813(n+1), A059211(n+1)]`
-/

namespace A059703.P17925809687467426253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P17925809687467426253

/-! ## A059703.P16817856145555517804

`∩[A059211(n+1), A062972(n+1)]`
-/

namespace A059703.P16817856145555517804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P16817856145555517804

/-! ## A059703.P558937897996399127

`∩[A059211(n+1), A067126(n+1)]`
-/

namespace A059703.P558937897996399127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P558937897996399127

/-! ## A059703.P17646133482156665784

`∩[A059211(n+1), A182140(n+1)]`
-/

namespace A059703.P17646133482156665784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P17646133482156665784

/-! ## A059703.P17859716619523086464

`∩[A189710(n+1), A059211(n+1)]`
-/

namespace A059703.P17859716619523086464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P17859716619523086464

/-! ## A059703.P3914075183119735178

`∩[A059211(n+1), A284696(n+1)]`
-/

namespace A059703.P3914075183119735178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P3914075183119735178

/-! ## A059703.P919120775086507979

`∩[A000430(n+1), A059211(n+1)]`
-/

namespace A059703.P919120775086507979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P919120775086507979

/-! ## A059703.P4384627582940438855

`∩[A009087(n+1), A059211(n+1)]`
-/

namespace A059703.P4384627582940438855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P4384627582940438855

/-! ## A059703.P15272637681366339195

`∩[A015919(n+1), A059211(n+1)]`
-/

namespace A059703.P15272637681366339195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059703.P15272637681366339195

/-!
# A059704: Primes p such that p^11 reversed is also prime.

The programs for A059704, there is no canonical definition to state claims against.
-/

/-! ## A059704.P12441184970017058072

`p?[A059212(n+1)]`
-/

namespace A059704.P12441184970017058072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059704.P12441184970017058072

/-! ## A059704.P15369350299535020532

`∩[A348283(n+1), A059212(n+1)]`
-/

namespace A059704.P15369350299535020532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P15369350299535020532

/-! ## A059704.P10556434547271978735

`∩[A015919(n+1), A059212(n+1)]`
-/

namespace A059704.P10556434547271978735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P10556434547271978735

/-! ## A059704.P4730412538772327768

`∩[A059212(n+1), A065376(n+1)]`
-/

namespace A059704.P4730412538772327768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P4730412538772327768

/-! ## A059704.P11007836612554915639

`∩[A059212(n+1), A070957(n+1)]`
-/

namespace A059704.P11007836612554915639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P11007836612554915639

/-! ## A059704.P15193254843139970838

`∩[A059212(n+1), A078138(n+1)]`
-/

namespace A059704.P15193254843139970838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P15193254843139970838

/-! ## A059704.P16316969073606610955

`∩[A059212(n+1), A106119(n+1)]`
-/

namespace A059704.P16316969073606610955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P16316969073606610955

/-! ## A059704.P17530713178056348377

`∩[A059212(n+1), A157996(n+1)]`
-/

namespace A059704.P17530713178056348377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P17530713178056348377

/-! ## A059704.P15931328235737520722

`∩[A059212(n+1), A261123(n+1)]`
-/

namespace A059704.P15931328235737520722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P15931328235737520722

/-! ## A059704.P3210874512965721661

`∩[A000040(n+1), A059212(n+1)]`
-/

namespace A059704.P3210874512965721661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P3210874512965721661

/-! ## A059704.P2620430957546401716

`∩[A004139(n+1), A059212(n+1)]`
-/

namespace A059704.P2620430957546401716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P2620430957546401716

/-! ## A059704.P17413129048178198943

`∩[A006005(n+1), A059212(n+1)]`
-/

namespace A059704.P17413129048178198943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P17413129048178198943

/-! ## A059704.P712498607525637563

`∩[A008578(n+1), A059212(n+1)]`
-/

namespace A059704.P712498607525637563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P712498607525637563

/-! ## A059704.P7604681163567510398

`∩[A033946(n+1), A059212(n+1)]`
-/

namespace A059704.P7604681163567510398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P7604681163567510398

/-! ## A059704.P13231108900006108247

`∩[A045319(n+1), A059212(n+1)]`
-/

namespace A059704.P13231108900006108247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P13231108900006108247

/-! ## A059704.P75602945584800719

`∩[A045344(n+1), A059212(n+1)]`
-/

namespace A059704.P75602945584800719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P75602945584800719

/-! ## A059704.P10421517179896209844

`∩[A046022(n+1), A059212(n+1)]`
-/

namespace A059704.P10421517179896209844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P10421517179896209844

/-! ## A059704.P8495612246552357170

`∩[A051948(n+1), A059212(n+1)]`
-/

namespace A059704.P8495612246552357170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P8495612246552357170

/-! ## A059704.P14957504605600255850

`∩[A053813(n+1), A059212(n+1)]`
-/

namespace A059704.P14957504605600255850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P14957504605600255850

/-! ## A059704.P9864524303175991473

`∩[A059212(n+1), A062972(n+1)]`
-/

namespace A059704.P9864524303175991473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059704.P9864524303175991473

/-!
# A059705: Primes p such that p^12 reversed is also prime.

The programs for A059705, there is no canonical definition to state claims against.
-/

/-! ## A059705.P11546900288856848467

`p?[A059213(n+1)]`
-/

namespace A059705.P11546900288856848467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059705.P11546900288856848467

/-! ## A059705.P11292830800054066509

`p?[record[A059213(A344180(n))]]`
-/

namespace A059705.P11292830800054066509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059705.P11292830800054066509

/-! ## A059705.P3062234384215921685

`p?[A059213(A344180(n))*A157928(n)]`
-/

namespace A059705.P3062234384215921685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (A344180 n).toNat * A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059705.P3062234384215921685

/-! ## A059705.P9627402543630917601

`∩[A216887(n+1), A059213(n+1)]`
-/

namespace A059705.P9627402543630917601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059705.P9627402543630917601

/-! ## A059705.P12547728678179316326

`∩[A000040(n+1), A059213(n+1)]`
-/

namespace A059705.P12547728678179316326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059705.P12547728678179316326

/-! ## A059705.P10379435422766299307

`∩[A004139(n+1), A059213(n+1)]`
-/

namespace A059705.P10379435422766299307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059705.P10379435422766299307

/-! ## A059705.P14494864289027321392

`∩[A006005(n+1), A059213(n+1)]`
-/

namespace A059705.P14494864289027321392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059705.P14494864289027321392

/-! ## A059705.P6703999867456565354

`∩[A008578(n+1), A059213(n+1)]`
-/

namespace A059705.P6703999867456565354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059705.P6703999867456565354

/-! ## A059705.P1529659367964849584

`∩[A033946(n+1), A059213(n+1)]`
-/

namespace A059705.P1529659367964849584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059705.P1529659367964849584

/-! ## A059705.P14068661014724360041

`∩[A045319(n+1), A059213(n+1)]`
-/

namespace A059705.P14068661014724360041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059705.P14068661014724360041

/-! ## A059705.P1824744216198514764

`∩[A045344(n+1), A059213(n+1)]`
-/

namespace A059705.P1824744216198514764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059705.P1824744216198514764

/-! ## A059705.P16385251860552972839

`∩[A053813(n+1), A059213(n+1)]`
-/

namespace A059705.P16385251860552972839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059705.P16385251860552972839

/-! ## A059705.P2273566523339337014

`record[A020639(A059213(n+2))]`
-/

namespace A059705.P2273566523339337014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A059213 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059705.P2273566523339337014

/-! ## A059705.P9669392160074176104

`filter[A059213(n+1), A010051(#)]`
-/

namespace A059705.P9669392160074176104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A059705.P9669392160074176104

/-! ## A059705.P1879598944444093090

`filter[A059213(n+1), A323152(#)]`
-/

namespace A059705.P1879598944444093090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A059705.P1879598944444093090

/-! ## A059705.P6278742140974523120

`filter[A059213(n+1), A323153(#)]`
-/

namespace A059705.P6278742140974523120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A059705.P6278742140974523120

/-!
# A059706: Smallest prime p such that p^n reversed is a prime.

The programs for A059706, there is no canonical definition to state claims against.
-/

/-! ## A059706.P124898640235205644

`p?[A222049(p?[A276011(n)])]`
-/

namespace A059706.P124898640235205644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276011 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222049 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059706.P124898640235205644

/-! ## A059706.P4447298278590893550

`A123627(A108328(n+1)+n)`
-/

namespace A059706.P4447298278590893550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123627 (A108328 (n + 1) + (n : ℤ)).toNat

end

end A059706.P4447298278590893550

/-!
# A059707: If all digits have the same parity, stop; otherwise write down the number formed by the even digits and the number formed by the odd digits and multiply them; repeat.

The programs for A059707, there is no canonical definition to state claims against.
-/

/-! ## A059707.P17125291794934672858

`n%A003207(A249009(n))`
-/

namespace A059707.P17125291794934672858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A003207 (A249009 n).toNat)

end

end A059707.P17125291794934672858

/-! ## A059707.P9938462524872233340

`A028310(n)%A066048(A053159(n+1))`
-/

namespace A059707.P9938462524872233340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A066048 (A053159 (n + 1)).toNat)

end

end A059707.P9938462524872233340

/-! ## A059707.P5923134199854719296

`A089868(n)%A066048(A053159(n+1))`
-/

namespace A059707.P5923134199854719296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089868 n) (A066048 (A053159 (n + 1)).toNat)

end

end A059707.P5923134199854719296

/-! ## A059707.P9976546456890392724

`A118759(n)%A066048(A053159(n+1))`
-/

namespace A059707.P9976546456890392724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 n) (A066048 (A053159 (n + 1)).toNat)

end

end A059707.P9976546456890392724

/-! ## A059707.P14662535690842011876

`n-A062759(A053159(n+1))*A180160(n)`
-/

namespace A059707.P14662535690842011876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A062759 (A053159 (n + 1)).toNat * A180160 n

end

end A059707.P14662535690842011876

/-!
# A059708: Numbers k such that all digits have same parity.

The programs for A059708, the canonical program `A059708.P17038311625249914196` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059708 has offset 1).

The definition of A059708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059708.P6333770092197618969

`eq[2, A055640(A171797(n))]`
-/

namespace A059708.P6333770092197618969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A171797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059708.P6333770092197618969

namespace A059708

/-- `eq[2, A055640(A171797(n))]` -/
def P6333770092197618969.Spec : Prop :=
  ∀ n, (P6333770092197618969.a n : ℤ) = A059708 (n + 1)

end A059708

/-! ## A059708.P81232494987300731

`eq[1, A136522(A073053(n))]`
-/

namespace A059708.P81232494987300731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A073053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059708.P81232494987300731

namespace A059708

/-- `eq[1, A136522(A073053(n))]` -/
def P81232494987300731.Spec : Prop :=
  ∀ n, (P81232494987300731.a n : ℤ) = A059708 (n + 1)

end A059708

/-! ## A059708.P3965480479314955961

`record[A059707(n)]`
-/

namespace A059708.P3965480479314955961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059708.P3965480479314955961

namespace A059708

/-- `record[A059707(n)]` -/
def P3965480479314955961.Spec : Prop :=
  ∀ n, P3965480479314955961.a n = A059708 (n + 1)

end A059708

/-! ## A059708.P14844383416499412570

`record[A059717(n)]`
-/

namespace A059708.P14844383416499412570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059708.P14844383416499412570

namespace A059708

/-- `record[A059717(n)]` -/
def P14844383416499412570.Spec : Prop :=
  ∀ n, P14844383416499412570.a n = A059708 (n + 1)

end A059708

/-! ## A059708.P9043409300041348639

`record[A391869(n)]`
-/

namespace A059708.P9043409300041348639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059708.P9043409300041348639

namespace A059708

/-- `record[A391869(n)]` -/
def P9043409300041348639.Spec : Prop :=
  ∀ n, P9043409300041348639.a n = A059708 (n + 1)

end A059708

/-! ## A059708.P17038311625249914196

`eq[0, A374097(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059708

/-- `eq[0, A374097(n)]` -/
def P17038311625249914196.Spec : Prop :=
  ∀ n, (P17038311625249914196.a n : ℤ) = A059708 (n + 1)

theorem P17038311625249914196.correct : P17038311625249914196.Spec := by
  intro n
  simp only [A059708, Nat.add_sub_cancel]

end A059708

/-! ## A059708.P3182474560133663332

`A059707(eq[n, A059707(n)])`
-/

namespace A059708.P3182474560133663332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059708.P3182474560133663332

namespace A059708

/-- `A059707(eq[n, A059707(n)])` -/
def P3182474560133663332.Spec : Prop :=
  ∀ n, P3182474560133663332.a n = A059708 (n + 1)

end A059708

/-! ## A059708.P2834572128708498054

`A059717(eq[n, A059717(n)])`
-/

namespace A059708.P2834572128708498054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059708.P2834572128708498054

namespace A059708

/-- `A059717(eq[n, A059717(n)])` -/
def P2834572128708498054.Spec : Prop :=
  ∀ n, P2834572128708498054.a n = A059708 (n + 1)

end A059708

/-! ## A059708.P13769748890961747450

`eq[0, A196563(n)*A196564(n)]`
-/

namespace A059708.P13769748890961747450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n * A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059708.P13769748890961747450

namespace A059708

/-- `eq[0, A196563(n)*A196564(n)]` -/
def P13769748890961747450.Spec : Prop :=
  ∀ n, (P13769748890961747450.a n : ℤ) = A059708 (n + 1)

end A059708

/-! ## A059708.P8983976975069776134

`lt[A045841(n)*A045887(n), 1]`
-/

namespace A059708.P8983976975069776134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045841 n * A045887 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059708.P8983976975069776134

namespace A059708

/-- `lt[A045841(n)*A045887(n), 1]` -/
def P8983976975069776134.Spec : Prop :=
  ∀ n, (P8983976975069776134.a n : ℤ) = A059708 (n + 1)

end A059708

/-!
# A059710: Dimension of space of invariants of n-th tensor power of 7-dimensional irreducible representation of G_2. Also the number of n-leaf, otherwise trivalent graphs in a disk such that all faces have at least 6 sides.

The programs for A059710, there is no canonical definition to state claims against.
-/

/-! ## A059710.P13169809961340471818

`A000292(A144157(∑[n]))`
-/

namespace A059710.P13169809961340471818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A144157 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A059710.P13169809961340471818

/-! ## A059710.P18139578996044265271

`A278363(A005043(n)+1)`
-/

namespace A059710.P18139578996044265271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A005043 n + 1).toNat

end

end A059710.P18139578996044265271

/-! ## A059710.P16203553407691045266

`A278676(A005043(n)+1)`
-/

namespace A059710.P16203553407691045266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A005043 n + 1).toNat

end

end A059710.P16203553407691045266

/-! ## A059710.P16893992498127833400

`A000292(Δ[A000045(n*C(n, 9)!)])`
-/

namespace A059710.P16893992498127833400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n * Nat.factorial (Nat.choose n 9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (f1 (n + 1) - f1 n).toNat

end

end A059710.P16893992498127833400

/-! ## A059710.P12110963934854898939

`A000292(A212804(n))%p?[A000045(n)]`
-/

namespace A059710.P12110963934854898939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (A212804 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A059710.P12110963934854898939

/-!
# A059712: Number of stacked directed animals on the square lattice.

The programs for A059712, there is no canonical definition to state claims against.
-/

/-! ## A059712.P16738313545846618147

`(A059738(n)+A001006(n))/2`
-/

namespace A059712.P16738313545846618147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059738 n + A001006 n : ℚ) / 2

end

end A059712.P16738313545846618147

/-! ## A059712.P11636564238665222193

`A001006(n)+A059738(n+1)%A059738(n)`
-/

namespace A059712.P11636564238665222193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + Int.tmod (A059738 (n + 1)) (A059738 n)

end

end A059712.P11636564238665222193

/-! ## A059712.P1357790839665249488

`4*A059738(n)-A059738(n+1)`
-/

namespace A059712.P1357790839665249488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A059738 n - A059738 (n + 1)

end

end A059712.P1357790839665249488

/-! ## A059712.P14033428253433531124

`(A001006(n)+record[A126954(n)])/2`
-/

namespace A059712.P14033428253433531124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126954 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001006 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A059712.P14033428253433531124

/-! ## A059712.P18064539607423779213

`A014682(A059738(n)+A001006(n))`
-/

namespace A059712.P18064539607423779213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A059738 n + A001006 n).toNat

end

end A059712.P18064539607423779213

/-!
# A059713: Number of multi-directed animals on the square lattice.

The programs for A059713, there is no canonical definition to state claims against.
-/

/-! ## A059713.P13770340311377461400

`A171842(n)+A002265(A007483(n))`
-/

namespace A059713.P13770340311377461400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n + A002265 (A007483 n).toNat

end

end A059713.P13770340311377461400

/-! ## A059713.P16009125574584642384

`A071724(n)+A004526(A193653(n))`
-/

namespace A059713.P16009125574584642384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n + A004526 (A193653 n).toNat

end

end A059713.P16009125574584642384

/-! ## A059713.P9254635074855182969

`A004396(A071736(n)-A268395(n))`
-/

namespace A059713.P9254635074855182969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A071736 n - A268395 n).toNat

end

end A059713.P9254635074855182969

/-!
# A059714: Number of stacked directed animals on the triangular lattice.

The programs for A059714, there is no canonical definition to state claims against.
-/

/-! ## A059714.P16536608506160703509

`(A049027(n+1)+A000108(n+1))/2`
-/

namespace A059714.P16536608506160703509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049027 (n + 1) + A000108 (n + 1) : ℚ) / 2

end

end A059714.P16536608506160703509

/-! ## A059714.P7640659247720260033

`5*A049027(n+1)-A049027(n+2)`
-/

namespace A059714.P7640659247720260033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A049027 (n + 1) - A049027 (n + 2)

end

end A059714.P7640659247720260033

/-! ## A059714.P4632123232418932741

`A128308(A058331(n+1))`
-/

namespace A059714.P4632123232418932741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128308 (A058331 (n + 1)).toNat

end

end A059714.P4632123232418932741

/-! ## A059714.P12372352540973404923

`A128308(A005408((n+1)²))`
-/

namespace A059714.P12372352540973404923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128308 (A005408 ((n + 1) ^ 2)).toNat

end

end A059714.P12372352540973404923

/-! ## A059714.P14584390625045725244

`A128308(A046092(n+1)-(2*n+1))`
-/

namespace A059714.P14584390625045725244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128308 (A046092 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A059714.P14584390625045725244

/-!
# A059715: Number of multi-directed animals on the triangular lattice.

The programs for A059715, there is no canonical definition to state claims against.
-/

/-! ## A059715.P5432108353110441177

`A026748(n)-A058343(A005195(n))`
-/

namespace A059715.P5432108353110441177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026748 n - A058343 (A005195 n).toNat

end

end A059715.P5432108353110441177

/-! ## A059715.P10188913684764295143

`A026748(n)-A085978(A030019(n))`
-/

namespace A059715.P10188913684764295143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026748 n - A085978 (A030019 n).toNat

end

end A059715.P10188913684764295143

/-! ## A059715.P13166715563703652864

`A005843(A151118(n))-A151136(n)`
-/

namespace A059715.P13166715563703652864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151118 n).toNat - A151136 n

end

end A059715.P13166715563703652864

/-!
# A059716: Number of column convex polyominoes with n hexagonal cells.

The programs for A059716, the canonical program `A059716.P1371099941682442546` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059716 has offset 1).

The definition of A059716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059716.P1371099941682442546

`6*a(n-1)-10*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=42`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A059716

/-- `6*a(n-1)-10*a(n-2)+7*a(n-3)-a(n-4)` -/
def P1371099941682442546.Spec : Prop :=
  ∀ n, P1371099941682442546.a n = A059716 (n + 1)

theorem P1371099941682442546.correct : P1371099941682442546.Spec := by
  intro n
  simp only [A059716, Nat.add_sub_cancel]

end A059716

/-! ## A059716.P6805034133650133887

`A028310(A141072(2*(n+1))-A051763(n+1))`
-/

namespace A059716.P6805034133650133887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A141072 (2 * (n + 1)) - A051763 (n + 1)).toNat

end

end A059716.P6805034133650133887

namespace A059716

/-- `A028310(A141072(2*(n+1))-A051763(n+1))` -/
def P6805034133650133887.Spec : Prop :=
  ∀ n, P6805034133650133887.a n = A059716 (n + 1)

end A059716

/-! ## A059716.P4971624867133264569

`filter[A141072(2*(n+1)), A071034(#)]`
-/

namespace A059716.P4971624867133264569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141072 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071034 (f1 j).toNat = 1) n)

end

end A059716.P4971624867133264569

namespace A059716

/-- `filter[A141072(2*(n+1)), A071034(#)]` -/
def P4971624867133264569.Spec : Prop :=
  ∀ n, P4971624867133264569.a n = A059716 (n + 1)

end A059716

/-!
# A059717: Start with decimal expansion of n; if all digits have the same parity, stop; otherwise write down the number formed by the even digits and the number formed by the odd digits and add them; repeat.

The programs for A059717, there is no canonical definition to state claims against.
-/

/-! ## A059717.P1034330993769937038

`or(A010051(A146687(n+1)), A059707(n))`
-/

namespace A059717.P1034330993769937038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A146687 (n + 1)).toNat) (A059707 n)

end

end A059717.P1034330993769937038

/-! ## A059717.P4227502508573205302

`A180160(n)+n%A062759(A053159(n+1))`
-/

namespace A059717.P4227502508573205302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n + Int.tmod (n : ℤ) (A062759 (A053159 (n + 1)).toNat)

end

end A059717.P4227502508573205302

/-! ## A059717.P15975053049870191363

`A180160(n)+A028310(n)%A066048(A053159(n+1))`
-/

namespace A059717.P15975053049870191363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n + Int.tmod (A028310 n) (A066048 (A053159 (n + 1)).toNat)

end

end A059717.P15975053049870191363

/-! ## A059717.P2131338730077381779

`A180160(n)+A089868(n)%A066048(A053159(n+1))`
-/

namespace A059717.P2131338730077381779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n + Int.tmod (A089868 n) (A066048 (A053159 (n + 1)).toNat)

end

end A059717.P2131338730077381779

/-! ## A059717.P10439585106216687258

`A180160(n)+A118759(n)%A066048(A053159(n+1))`
-/

namespace A059717.P10439585106216687258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n + Int.tmod (A118759 n) (A066048 (A053159 (n + 1)).toNat)

end

end A059717.P10439585106216687258

/-!
# A059718: Triangle T(n,k), 0<=k<=n, giving coefficients when output sequence O_0, O_1, O_2, ... from transformation described in A059216 is expressed in terms of input sequence I_0, I_1, I_2, ...

The programs for A059718, there is no canonical definition to state claims against.
-/

/-! ## A059718.P14973872626472401761

`A319759(A295224(n+1))+A009766(n)`
-/

namespace A059718.P14973872626472401761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319759 (A295224 (n + 1)).toNat + A009766 n

end

end A059718.P14973872626472401761

/-! ## A059718.P2584512342260348284

`A336107(A186370(n+1))+A009766(n)`
-/

namespace A059718.P2584512342260348284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 (A186370 (n + 1)).toNat + A009766 n

end

end A059718.P2584512342260348284

/-! ## A059718.P17324707929856426742

`A064580(n)+A025466(A208355(n+2))`
-/

namespace A059718.P17324707929856426742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064580 n + A025466 (A208355 (n + 2)).toNat

end

end A059718.P17324707929856426742

/-! ## A059718.P17285943180941195663

`A209860(A064580(n))%A209865(n+4)`
-/

namespace A059718.P17285943180941195663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209860 (A064580 n).toNat) (A209865 (n + 4))

end

end A059718.P17285943180941195663

/-!
# A059720: Triangle T(n,k), 0<=k<=n, formed from coefficients when formula for n-th diagonal of triangle in A059718 is written as a sum of binomial coefficients.

The programs for A059720, there is no canonical definition to state claims against.
-/

/-! ## A059720.P6826062014031229731

`ceil(∏{p}[n+1, #]/7)*A102705(A298213(n))`
-/

namespace A059720.P6826062014031229731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / 7⌉ * A102705 (A298213 n).toNat

end

end A059720.P6826062014031229731

/-! ## A059720.P13851665667616211816

`A185708(A089846(n))+A130191(n)`
-/

namespace A059720.P13851665667616211816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185708 (A089846 n).toNat + A130191 n

end

end A059720.P13851665667616211816

/-! ## A059720.P2476858077045490888

`A130191(n)+A118953(A156888(n))`
-/

namespace A059720.P2476858077045490888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 n + A118953 (A156888 n).toNat

end

end A059720.P2476858077045490888

/-! ## A059720.P1208643634116477384

`A180466(A325983(n+1))*A324162(n)`
-/

namespace A059720.P1208643634116477384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180466 (A325983 (n + 1)).toNat * A324162 n

end

end A059720.P1208643634116477384

/-! ## A059720.P469012211130191217

`lcm(A050361(A038547(n+1)), A130191(n))`
-/

namespace A059720.P469012211130191217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050361 (A038547 (n + 1)).toNat) (A130191 n)

end

end A059720.P469012211130191217

/-!
# A059721: Mean of first six positive powers of n, i.e., (n + n^2 + n^3 + n^4 + n^5 + n^6)/6.

The programs for A059721, the canonical program `A059721.P1622387050023049645` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059721 has offset 0).

The definition of A059721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059721.P1622387050023049645

`(n+n²+n^3+n^4+n^5+n^6)/6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A059721

/-- `(n+n²+n^3+n^4+n^5+n^6)/6` -/
def P1622387050023049645.Spec : Prop :=
  ∀ n, P1622387050023049645.a n = (A059721 n : ℚ)

end A059721

/-! ## A059721.P9909896771702264064

`ceil(A228290(n)/6)`
-/

namespace A059721.P9909896771702264064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A228290 n : ℚ) / 6⌉

end

end A059721.P9909896771702264064

namespace A059721

/-- `ceil(A228290(n)/6)` -/
def P9909896771702264064.Spec : Prop :=
  ∀ n, P9909896771702264064.a n = A059721 n

end A059721

/-! ## A059721.P292246388592278399

`∑[n/3]*A059826(n)`
-/

namespace A059721.P292246388592278399
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A059826 n : ℚ)

end

end A059721.P292246388592278399

namespace A059721

/-- `∑[n/3]*A059826(n)` -/
def P292246388592278399.Spec : Prop :=
  ∀ n, P292246388592278399.a n = (A059721 n : ℚ)

end A059721

/-! ## A059721.P9055815701313946847

`(n^4+n²+1)*A000217(n)/3`
-/

namespace A059721.P9055815701313946847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + n ^ 2 + 1 : ℚ) * ((A000217 n : ℚ) / 3)

end

end A059721.P9055815701313946847

namespace A059721

/-- `(n^4+n²+1)*A000217(n)/3` -/
def P9055815701313946847.Spec : Prop :=
  ∀ n, P9055815701313946847.a n = (A059721 n : ℚ)

end A059721

/-! ## A059721.P13747838430529986762

`∑[A005900(n)]*A002061(n)`
-/

namespace A059721.P13747838430529986762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002061 n

end

end A059721.P13747838430529986762

namespace A059721

/-- `∑[A005900(n)]*A002061(n)` -/
def P13747838430529986762.Spec : Prop :=
  ∀ n, P13747838430529986762.a n = A059721 n

end A059721

/-! ## A059721.P17811435854229698713

`A002061(n+1)*A002061(n)*∑[n/3]`
-/

namespace A059721.P17811435854229698713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 (n + 1) * A002061 n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059721.P17811435854229698713

namespace A059721

/-- `A002061(n+1)*A002061(n)*∑[n/3]` -/
def P17811435854229698713.Spec : Prop :=
  ∀ n, P17811435854229698713.a n = (A059721 n : ℚ)

end A059721

/-! ## A059721.P15230534451273815046

`A002061(n)*A006325(n+1)`
-/

namespace A059721.P15230534451273815046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A006325 (n + 1)

end

end A059721.P15230534451273815046

namespace A059721

/-- `A002061(n)*A006325(n+1)` -/
def P15230534451273815046.Spec : Prop :=
  ∀ n, P15230534451273815046.a n = A059721 n

end A059721

/-! ## A059721.P13055737313543594285

`(A002415(n+1)+A002415(n))*A002061(n)`
-/

namespace A059721.P13055737313543594285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002415 (n + 1) + A002415 n) * A002061 n

end

end A059721.P13055737313543594285

namespace A059721

/-- `(A002415(n+1)+A002415(n))*A002061(n)` -/
def P13055737313543594285.Spec : Prop :=
  ∀ n, P13055737313543594285.a n = A059721 n

end A059721

/-! ## A059721.P1664134382829292783

`A001839(A002061(n+1))*A002061(n)`
-/

namespace A059721.P1664134382829292783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001839 (A002061 (n + 1)).toNat * A002061 n

end

end A059721.P1664134382829292783

namespace A059721

/-- `A001839(A002061(n+1))*A002061(n)` -/
def P1664134382829292783.Spec : Prop :=
  ∀ n, P1664134382829292783.a n = A059721 n

end A059721

/-!
# A059722: a(n) = n*(2*n^2 - 2*n + 1).

The programs for A059722, the canonical program `A059722.P11059442351168334169` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059722 has offset 0).

The definition of A059722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n²-2*n+1)` (program `A059722.P11059442351168334169`, by `A059722.P11059442351168334169.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059722.P11059442351168334169

`n*(2*n²-2*n+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A059722

/-- `n*(2*n²-2*n+1)` -/
def P11059442351168334169.Spec : Prop :=
  ∀ n, P11059442351168334169.a n = A059722 n

theorem P11059442351168334169.correct : P11059442351168334169.Spec := by
  intro n
  simp only [A059722]

end A059722

/-! ## A059722.P4926789199096348409

`lcm(n, (1-n)²+n²)`
-/

namespace A059722.P4926789199096348409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ))

end

end A059722.P4926789199096348409

namespace A059722

/-- `lcm(n, (1-n)²+n²)` -/
def P4926789199096348409.Spec : Prop :=
  ∀ n, (P4926789199096348409.a n : ℤ) = A059722 n

end A059722

/-! ## A059722.P17282014730872711235

`Δ[C((1-n)², 2)]+n²`
-/

namespace A059722.P17282014730872711235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - (n : ℤ)) ^ 2).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n ^ 2 : ℤ)

end

end A059722.P17282014730872711235

namespace A059722

/-- `Δ[C((1-n)², 2)]+n²` -/
def P17282014730872711235.Spec : Prop :=
  ∀ n, P17282014730872711235.a n = A059722 n

end A059722

/-! ## A059722.P7464894596933897843

`2*2*n*C(n, 2)+n`
-/

namespace A059722.P7464894596933897843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n * Nat.choose n 2) + n

end

end A059722.P7464894596933897843

namespace A059722

/-- `2*2*n*C(n, 2)+n` -/
def P7464894596933897843.Spec : Prop :=
  ∀ n, (P7464894596933897843.a n : ℤ) = A059722 n

end A059722

/-! ## A059722.P10167725794855710521

`n-n*(n-C(2*n, 2))`
-/

namespace A059722.P10167725794855710521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * ((n : ℤ) - (Nat.choose (2 * n) 2 : ℤ))

end

end A059722.P10167725794855710521

namespace A059722

/-- `n-n*(n-C(2*n, 2))` -/
def P10167725794855710521.Spec : Prop :=
  ∀ n, P10167725794855710521.a n = A059722 n

end A059722

/-! ## A059722.P14616331370077698877

`floor(n*∑[a(n-1)+4])` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A059722.P14616331370077698877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059722.P14616331370077698877

namespace A059722

/-- `floor(n*∑[a(n-1)+4])` -/
def P14616331370077698877.Spec : Prop :=
  ∀ n, (P14616331370077698877.a n : ℤ) = A059722 n

end A059722

/-! ## A059722.P5816244398967862066

`abs(n*or(1, (n-1)*2*n))`
-/

namespace A059722.P5816244398967862066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.lor 1 (((n : ℤ) - 1) * (2 * n : ℤ))|

end

end A059722.P5816244398967862066

namespace A059722

/-- `abs(n*or(1, (n-1)*2*n))` -/
def P5816244398967862066.Spec : Prop :=
  ∀ n, P5816244398967862066.a n = A059722 n

end A059722

/-! ## A059722.P3791013584683963235

`abs(n*xor(1, (n-1)*2*n))`
-/

namespace A059722.P3791013584683963235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.xor 1 (((n : ℤ) - 1) * (2 * n : ℤ))|

end

end A059722.P3791013584683963235

namespace A059722

/-- `abs(n*xor(1, (n-1)*2*n))` -/
def P3791013584683963235.Spec : Prop :=
  ∀ n, P3791013584683963235.a n = A059722 n

end A059722

/-! ## A059722.P13068768735621215557

`lcm(n-1-n², 2*n)-n`
-/

namespace A059722.P13068768735621215557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1 - (n ^ 2 : ℤ)) (2 * n : ℤ) : ℤ) - (n : ℤ)

end

end A059722.P13068768735621215557

namespace A059722

/-- `lcm(n-1-n², 2*n)-n` -/
def P13068768735621215557.Spec : Prop :=
  ∀ n, P13068768735621215557.a n = A059722 n

end A059722

/-! ## A059722.P11926755355033153734

`n*∑[a(n-1)+4]+n` with `a(0)=0, a(1)=0`
-/

namespace A059722.P11926755355033153734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A059722.P11926755355033153734

namespace A059722

/-- `n*∑[a(n-1)+4]+n` -/
def P11926755355033153734.Spec : Prop :=
  ∀ n, (P11926755355033153734.a n : ℤ) = A059722 n

end A059722

/-! ## A059722.P16807413352012959019

`n-n*∑[a(n-1)-4]` with `a(0)=0, a(1)=0`
-/

namespace A059722.P16807413352012959019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059722.P16807413352012959019

namespace A059722

/-- `n-n*∑[a(n-1)-4]` -/
def P16807413352012959019.Spec : Prop :=
  ∀ n, P16807413352012959019.a n = A059722 n

end A059722

/-! ## A059722.P7879483683033940440

`2*n*lcm(2, n*(n-1))+n`
-/

namespace A059722.P7879483683033940440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Int.lcm 2 ((n : ℤ) * ((n : ℤ) - 1)) + n

end

end A059722.P7879483683033940440

namespace A059722

/-- `2*n*lcm(2, n*(n-1))+n` -/
def P7879483683033940440.Spec : Prop :=
  ∀ n, (P7879483683033940440.a n : ℤ) = A059722 n

end A059722

/-! ## A059722.P1625110652244873900

`2*n*(n-1)*gcd(n, 2*n)+n`
-/

namespace A059722.P1625110652244873900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (((n : ℤ) - 1) * (Nat.gcd n (2 * n) : ℤ)) + (n : ℤ)

end

end A059722.P1625110652244873900

namespace A059722

/-- `2*n*(n-1)*gcd(n, 2*n)+n` -/
def P1625110652244873900.Spec : Prop :=
  ∀ n, P1625110652244873900.a n = A059722 n

theorem P1625110652244873900.correct : P1625110652244873900.Spec := by
  intro n
  simp only [A059722, Nat.add_sub_cancel, A059722.P1625110652244873900.a, A059722.P11059442351168334169.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A059722

/-! ## A059722.P9451536705807442369

`(n-1)*n*and(2*n+1, 2*n)+n`
-/

namespace A059722.P9451536705807442369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (n * Nat.land (2 * n + 1) (2 * n) : ℤ) + (n : ℤ)

end

end A059722.P9451536705807442369

namespace A059722

/-- `(n-1)*n*and(2*n+1, 2*n)+n` -/
def P9451536705807442369.Spec : Prop :=
  ∀ n, P9451536705807442369.a n = A059722 n

end A059722

/-! ## A059722.P4130210692926942048

`2*A045991(n)+n`
-/

namespace A059722.P4130210692926942048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045991 n + (n : ℤ)

end

end A059722.P4130210692926942048

namespace A059722

/-- `2*A045991(n)+n` -/
def P4130210692926942048.Spec : Prop :=
  ∀ n, P4130210692926942048.a n = A059722 n

end A059722

/-! ## A059722.P13822553786501782894

`n*A051890(n)-n`
-/

namespace A059722.P13822553786501782894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051890 n - (n : ℤ)

end

end A059722.P13822553786501782894

namespace A059722

/-- `n*A051890(n)-n` -/
def P13822553786501782894.Spec : Prop :=
  ∀ n, P13822553786501782894.a n = A059722 n

end A059722

/-! ## A059722.P6197721646561328072

`A048395(n)-(2*n)²`
-/

namespace A059722.P6197721646561328072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n - ((2 * n) ^ 2 : ℤ)

end

end A059722.P6197721646561328072

namespace A059722

/-- `A048395(n)-(2*n)²` -/
def P6197721646561328072.Spec : Prop :=
  ∀ n, P6197721646561328072.a n = A059722 n

end A059722

/-! ## A059722.P8865588963969215065

`A015238(n)+n²+n`
-/

namespace A059722.P8865588963969215065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 n + (n ^ 2 + n : ℤ)

end

end A059722.P8865588963969215065

namespace A059722

/-- `A015238(n)+n²+n` -/
def P8865588963969215065.Spec : Prop :=
  ∀ n, P8865588963969215065.a n = A059722 n

end A059722

/-! ## A059722.P8840755956113888551

`(A002593(n)+n)/(n+1)`
-/

namespace A059722.P8840755956113888551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002593 n + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A059722.P8840755956113888551

namespace A059722

/-- `(A002593(n)+n)/(n+1)` -/
def P8840755956113888551.Spec : Prop :=
  ∀ n, P8840755956113888551.a n = (A059722 n : ℚ)

end A059722

/-!
# A059723: Mean of the first 2^n nonnegative powers of 3, i.e., (1 + 3 + 3^2 + ... + 3^(2^n-1))/2^n.

The programs for A059723, the canonical program `A059723.P16152980995503144699` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059723 has offset 0).

The definition of A059723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059723.P16152980995503144699

`(3^2^n-1)/2^(n+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A059723

/-- `(3^2^n-1)/2^(n+1)` -/
def P16152980995503144699.Spec : Prop :=
  ∀ n, P16152980995503144699.a n = (A059723 n : ℚ)

end A059723

/-! ## A059723.P12334199472155012550

`(2^(n-1)*a(n-1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A059723.P12334199472155012550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1) + 1) * a (n - 1)

end

end A059723.P12334199472155012550

namespace A059723

/-- `(2^(n-1)*a(n-1)+1)*a(n-1)` -/
def P12334199472155012550.Spec : Prop :=
  ∀ n, P12334199472155012550.a n = (A059723 n : ℚ)

end A059723

/-! ## A059723.P339062335969018138

`A006575(2^n)`
-/

namespace A059723.P339062335969018138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006575 (2 ^ n)

end

end A059723.P339062335969018138

namespace A059723

/-- `A006575(2^n)` -/
def P339062335969018138.Spec : Prop :=
  ∀ n, P339062335969018138.a n = A059723 n

end A059723

/-!
# A059724: Second diagonal of A059720.

The programs for A059724, there is no canonical definition to state claims against.
-/

/-! ## A059724.P11319120158740008470

`record[A059720(∑[n]+2)]`
-/

namespace A059724.P11319120158740008470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059720 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059724.P11319120158740008470

/-! ## A059724.P10485153321731849809

`A059720(∑[n+2]+3)`
-/

namespace A059724.P10485153321731849809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059720 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A059724.P10485153321731849809

/-! ## A059724.P8450172241890168410

`record[gcd(A008281(n), A059720(n+2))]`
-/

namespace A059724.P8450172241890168410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008281 n) (A059720 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059724.P8450172241890168410

/-! ## A059724.P14983019791603482227

`record[A059720(n+2)/A059234(n+1)]`
-/

namespace A059724.P14983019791603482227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059720 (n + 2) : ℚ) / (A059234 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059724.P14983019791603482227

/-! ## A059724.P2586401192371127699

`record[A059720(n+2)/A008970(n+2)]`
-/

namespace A059724.P2586401192371127699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059720 (n + 2) : ℚ) / (A008970 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059724.P2586401192371127699

/-!
# A059725: Central column in A059720.

The programs for A059725, there is no canonical definition to state claims against.
-/

/-! ## A059725.P11634749216864533

`A059720(∑[4*n])`
-/

namespace A059725.P11634749216864533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059725.P11634749216864533

/-! ## A059725.P2175959569755956237

`record[A059720(n*(floor(n/(xor(n, n+1)+1))+1))]`
-/

namespace A059725.P2175959569755956237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059720 ((n : ℤ) * (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059725.P2175959569755956237

/-! ## A059725.P17770783596600848524

`gcd(A059720(A046092(n)), A151878(n))`
-/

namespace A059725.P17770783596600848524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059720 (A046092 n).toNat) (A151878 n)

end

end A059725.P17770783596600848524

/-! ## A059725.P4256163235132927678

`or(A000007(n), A059720(A046092(n)))`
-/

namespace A059725.P4256163235132927678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A059720 (A046092 n).toNat)

end

end A059725.P4256163235132927678

/-! ## A059725.P8715414741873132403

`A059720(A046092(n))-A151878(n+1)`
-/

namespace A059725.P8715414741873132403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059720 (A046092 n).toNat - A151878 (n + 1)

end

end A059725.P8715414741873132403

/-!
# A059726: Row sums of A059720.

The programs for A059726, there is no canonical definition to state claims against.
-/

/-! ## A059726.P3138269963642672412

`or(1, A238781(2*n²+1))`
-/

namespace A059726.P3138269963642672412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238781 (2 * n ^ 2 + 1))

end

end A059726.P3138269963642672412

/-! ## A059726.P5408251861628071457

`A293392(A001372(n))`
-/

namespace A059726.P5408251861628071457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293392 (A001372 n).toNat

end

end A059726.P5408251861628071457

/-!
# A059727: a(n) = Fibonacci(n)*(Fibonacci(n) + 1).

The programs for A059727, the canonical program `A059727.P9881445159819085903` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059727 has offset 0).

The definition of A059727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059727.P13826386675163317994

`round(ϕ^n/sqrt(5))+round(ϕ^n/sqrt(5))²`
-/

namespace A059727.P13826386675163317994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) + SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

end

end A059727.P13826386675163317994

namespace A059727

/-- `round(ϕ^n/sqrt(5))+round(ϕ^n/sqrt(5))²` -/
def P13826386675163317994.Spec : Prop :=
  ∀ n, P13826386675163317994.a n = A059727 n

end A059727

/-! ## A059727.P14460716667093434119

`2*A033192(n)`
-/

namespace A059727.P14460716667093434119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033192 n

end

end A059727.P14460716667093434119

namespace A059727

/-- `2*A033192(n)` -/
def P14460716667093434119.Spec : Prop :=
  ∀ n, P14460716667093434119.a n = A059727 n

end A059727

/-! ## A059727.P9056136784998163996

`A382608(n)/2`
-/

namespace A059727.P9056136784998163996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382608 n : ℚ) / 2

end

end A059727.P9056136784998163996

namespace A059727

/-- `A382608(n)/2` -/
def P9056136784998163996.Spec : Prop :=
  ∀ n, P9056136784998163996.a n = (A059727 n : ℚ)

end A059727

/-! ## A059727.P7246233576586486551

`2*(A032441(n)-1)`
-/

namespace A059727.P7246233576586486551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032441 n - 1)

end

end A059727.P7246233576586486551

namespace A059727

/-- `2*(A032441(n)-1)` -/
def P7246233576586486551.Spec : Prop :=
  ∀ n, P7246233576586486551.a n = A059727 n

end A059727

/-! ## A059727.P9881445159819085903

`2*C(A001611(n), 2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059727

/-- `2*C(A001611(n), 2)` -/
def P9881445159819085903.Spec : Prop :=
  ∀ n, (P9881445159819085903.a n : ℤ) = A059727 n

theorem P9881445159819085903.correct : P9881445159819085903.Spec := by
  intro n
  simp only [A059727]

end A059727

/-! ## A059727.P8104289984948647694

`floor((A001588(n)/2)²)`
-/

namespace A059727.P8104289984948647694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A001588 n : ℚ) / 2) ^ 2⌋

end

end A059727.P8104289984948647694

namespace A059727

/-- `floor((A001588(n)/2)²)` -/
def P8104289984948647694.Spec : Prop :=
  ∀ n, P8104289984948647694.a n = A059727 n

end A059727

/-! ## A059727.P17995557680608021162

`A000045(n)*A001611(n)`
-/

namespace A059727.P17995557680608021162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001611 n

end

end A059727.P17995557680608021162

namespace A059727

/-- `A000045(n)*A001611(n)` -/
def P17995557680608021162.Spec : Prop :=
  ∀ n, P17995557680608021162.a n = A059727 n

end A059727

/-! ## A059727.P15618885269885930342

`abs(A001611(n)*A236191(n))`
-/

namespace A059727.P15618885269885930342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001611 n * A236191 n|

end

end A059727.P15618885269885930342

namespace A059727

/-- `abs(A001611(n)*A236191(n))` -/
def P15618885269885930342.Spec : Prop :=
  ∀ n, P15618885269885930342.a n = A059727 n

end A059727

/-! ## A059727.P5315911685116298953

`A000045(n)*Δ[A081659(n)]`
-/

namespace A059727.P5315911685116298953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A059727.P5315911685116298953

namespace A059727

/-- `A000045(n)*Δ[A081659(n)]` -/
def P5315911685116298953.Spec : Prop :=
  ∀ n, P5315911685116298953.a n = A059727 n

end A059727

/-! ## A059727.P14784681982892924402

`A001611(n)*A212804(n+1)`
-/

namespace A059727.P14784681982892924402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n * A212804 (n + 1)

end

end A059727.P14784681982892924402

namespace A059727

/-- `A001611(n)*A212804(n+1)` -/
def P14784681982892924402.Spec : Prop :=
  ∀ n, P14784681982892924402.a n = A059727 n

end A059727

/-! ## A059727.P9941946765837836649

`(A157725(n)-1)*A000045(n)`
-/

namespace A059727.P9941946765837836649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157725 n - 1) * A000045 n

end

end A059727.P9941946765837836649

namespace A059727

/-- `(A157725(n)-1)*A000045(n)` -/
def P9941946765837836649.Spec : Prop :=
  ∀ n, P9941946765837836649.a n = A059727 n

end A059727

/-! ## A059727.P7891185367559093030

`2*(A191797(n)+A000045(n))`
-/

namespace A059727.P7891185367559093030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A191797 n + A000045 n)

end

end A059727.P7891185367559093030

namespace A059727

/-- `2*(A191797(n)+A000045(n))` -/
def P7891185367559093030.Spec : Prop :=
  ∀ n, P7891185367559093030.a n = A059727 n

end A059727

/-! ## A059727.P2587396709993162133

`(A157726(n)-2)*A000045(n)`
-/

namespace A059727.P2587396709993162133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157726 n - 2) * A000045 n

end

end A059727.P2587396709993162133

namespace A059727

/-- `(A157726(n)-2)*A000045(n)` -/
def P2587396709993162133.Spec : Prop :=
  ∀ n, P2587396709993162133.a n = A059727 n

end A059727

/-! ## A059727.P7329482765486913385

`(A157725(n)-2)*A001611(n)`
-/

namespace A059727.P7329482765486913385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157725 n - 2) * A001611 n

end

end A059727.P7329482765486913385

namespace A059727

/-- `(A157725(n)-2)*A001611(n)` -/
def P7329482765486913385.Spec : Prop :=
  ∀ n, P7329482765486913385.a n = A059727 n

end A059727

/-! ## A059727.P5217249434987845225

`2*(A007598(n)-A191797(n))`
-/

namespace A059727.P5217249434987845225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007598 n - A191797 n)

end

end A059727.P5217249434987845225

namespace A059727

/-- `2*(A007598(n)-A191797(n))` -/
def P5217249434987845225.Spec : Prop :=
  ∀ n, P5217249434987845225.a n = A059727 n

end A059727

/-! ## A059727.P13359032533898886795

`A001611(n)*A103609(2*n)`
-/

namespace A059727.P13359032533898886795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n * A103609 (2 * n)

end

end A059727.P13359032533898886795

namespace A059727

/-- `A001611(n)*A103609(2*n)` -/
def P13359032533898886795.Spec : Prop :=
  ∀ n, P13359032533898886795.a n = A059727 n

end A059727

/-! ## A059727.P649473322352139273

`2*A104220(n)*A173173(n)`
-/

namespace A059727.P649473322352139273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A104220 n * A173173 n)

end

end A059727.P649473322352139273

namespace A059727

/-- `2*A104220(n)*A173173(n)` -/
def P649473322352139273.Spec : Prop :=
  ∀ n, P649473322352139273.a n = A059727 n

end A059727

/-! ## A059727.P5661441603856606236

`(A002062(n)-n)*A001611(n)`
-/

namespace A059727.P5661441603856606236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002062 n - (n : ℤ)) * A001611 n

end

end A059727.P5661441603856606236

namespace A059727

/-- `(A002062(n)-n)*A001611(n)` -/
def P5661441603856606236.Spec : Prop :=
  ∀ n, P5661441603856606236.a n = A059727 n

end A059727

/-!
# A059728: a(0)=3; thereafter, a(n) = A002426(n+1) + Fibonacci(n-1)*(Fibonacci(n-1) + 1).

The programs for A059728, there is no canonical definition to state claims against.
-/

/-! ## A059728.P16437832336961673430

`3*A330827(∑[3^n])`
-/

namespace A059728.P16437832336961673430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A330827 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059728.P16437832336961673430

/-! ## A059728.P9086038780693545257

`A246676(3*A002426(n))`
-/

namespace A059728.P9086038780693545257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (3 * A002426 n).toNat

end

end A059728.P9086038780693545257

/-! ## A059728.P6539790437604658204

`A249815(3*A002426(n))`
-/

namespace A059728.P6539790437604658204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249815 (3 * A002426 n).toNat

end

end A059728.P6539790437604658204

/-! ## A059728.P12895697996914483871

`A255407(3*A002426(n))`
-/

namespace A059728.P12895697996914483871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (3 * A002426 n).toNat

end

end A059728.P12895697996914483871

/-! ## A059728.P15027379290354707610

`A057353(4*A002426(n))`
-/

namespace A059728.P15027379290354707610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (4 * A002426 n).toNat

end

end A059728.P15027379290354707610

/-!
# A059729: Carryless squares n X n base 10.

The programs for A059729, there is no canonical definition to state claims against.
-/

/-! ## A059729.P8565594995442416409

`A361390(∑[n+3])`
-/

namespace A059729.P8565594995442416409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059729.P8565594995442416409

/-! ## A059729.P18038418468220117139

`A359697(A179865(n+1))-floor(1/(n+1))`
-/

namespace A059729.P18038418468220117139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359697 (A179865 (n + 1)).toNat - ⌊1 / (n + 1 : ℚ)⌋

end

end A059729.P18038418468220117139

/-! ## A059729.P2272550903353366461

`A059692(∑[4*n])`
-/

namespace A059729.P2272550903353366461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059729.P2272550903353366461

/-! ## A059729.P9291307069887835595

`and(-1, A059692(A046092(n)))`
-/

namespace A059729.P9291307069887835595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A059692 (A046092 n).toNat)

end

end A059729.P9291307069887835595

/-! ## A059729.P2641917663388666876

`lcm(A033999(n), A059692(A046092(n)))`
-/

namespace A059729.P2641917663388666876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A059692 (A046092 n).toNat)

end

end A059729.P2641917663388666876

/-! ## A059729.P17815332286912656328

`A059692(A046092(n))%A001235(n+1)`
-/

namespace A059729.P17815332286912656328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059692 (A046092 n).toNat) (A001235 (n + 1))

end

end A059729.P17815332286912656328

/-! ## A059729.P11723678763666762522

`A033999(2*(n+1))*A059692(A046092(n))`
-/

namespace A059729.P11723678763666762522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 1)) * A059692 (A046092 n).toNat

end

end A059729.P11723678763666762522

/-!
# A059730: Third diagonal of A059922.

The programs for A059730, there is no canonical definition to state claims against.
-/

/-! ## A059730.P10698429154012506834

`a(n-1)*A002627(n+1)+1` with `a(0)=1`
-/

namespace A059730.P10698429154012506834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A002627 (n + 1) + 1

end

end A059730.P10698429154012506834

/-! ## A059730.P17583882465942346637

`a(n-1)*∑[∑[A193668(n)]]+1` with `a(0)=1`
-/

namespace A059730.P17583882465942346637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A059730.P17583882465942346637

/-! ## A059730.P6527456870760206806

`(A000522(n+1)-A000142(n+1))*a(n-1)+1` with `a(0)=1`
-/

namespace A059730.P6527456870760206806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000522 (n + 1) - A000142 (n + 1)) * a (n - 1) + 1

end

end A059730.P6527456870760206806

/-! ## A059730.P18099208500875130653

`A059922(A167614(n+2))`
-/

namespace A059730.P18099208500875130653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059922 (A167614 (n + 2)).toNat

end

end A059730.P18099208500875130653

/-! ## A059730.P16929265918622778858

`A059922(A141214(n)+6)`
-/

namespace A059730.P16929265918622778858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059922 (A141214 n + 6).toNat

end

end A059730.P16929265918622778858

/-!
# A059732: Central column (even terms a(2*n,n)) of A059922.

The programs for A059732, there is no canonical definition to state claims against.
-/

/-! ## A059732.P7297334128100109770

`A059733(2*n)`
-/

namespace A059732.P7297334128100109770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059733 (2 * n)

end

end A059732.P7297334128100109770

/-!
# A059733: Central column a(n,[n/2]) of A059922.

The programs for A059733, there is no canonical definition to state claims against.
-/

/-! ## A059733.P9784386199156990654

`A059922(A194274(n))`
-/

namespace A059733.P9784386199156990654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059922 (A194274 n).toNat

end

end A059733.P9784386199156990654

/-! ## A059733.P9756770992539096708

`A059922(A007590(n+1))`
-/

namespace A059733.P9756770992539096708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059922 (A007590 (n + 1)).toNat

end

end A059733.P9756770992539096708

/-! ## A059733.P16096455019265437843

`A059922(A080476(n+1))`
-/

namespace A059733.P16096455019265437843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059922 (A080476 (n + 1)).toNat

end

end A059733.P16096455019265437843

/-! ## A059733.P7849460083996829822

`A059922(A156324(n+1))`
-/

namespace A059733.P7849460083996829822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059922 (A156324 (n + 1)).toNat

end

end A059733.P7849460083996829822

/-! ## A059733.P14485764320866250921

`A059922(A000982(n)+n)`
-/

namespace A059733.P14485764320866250921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059922 (A000982 n + (n : ℤ)).toNat

end

end A059733.P14485764320866250921

/-!
# A059734: Carryless 11^n base 10; a(n) is carryless sum of 10*a(n-1) and a(n-1).

The programs for A059734, there is no canonical definition to state claims against.
-/

/-! ## A059734.P12546466497813275584

`A195946(n+1)%Δ[A325203(A004868(n+1))]`
-/

namespace A059734.P12546466497813275584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325203 (A004868 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195946 (n + 1)) (f1 (n + 1) - f1 n)

end

end A059734.P12546466497813275584

/-!
# A059735: Number of complementary pairs of tournaments on n nodes.

The programs for A059735, there is no canonical definition to state claims against.
-/

/-! ## A059735.P14158200367386588546

`(A000568(n+1)+A002785(n+1))/2`
-/

namespace A059735.P14158200367386588546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000568 (n + 1) + A002785 (n + 1) : ℚ) / 2

end

end A059735.P14158200367386588546

/-! ## A059735.P3705523008817940930

`A217538(A306017(n)+A000272(n))`
-/

namespace A059735.P3705523008817940930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (A306017 n + A000272 n).toNat

end

end A059735.P3705523008817940930

/-! ## A059735.P3752854870273757519

`A156253(A327437(n))-A164994(n)`
-/

namespace A059735.P3752854870273757519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A327437 n).toNat - A164994 n

end

end A059735.P3752854870273757519

/-!
# A059736: A class of polytopal spheres.

The programs for A059736, the canonical program `A059736.P7369905162504597381` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059736 has offset 1).

The definition of A059736 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007147, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059736.P7369905162504597381

`A007147(n+1)-floor((n+1)²/12)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A059736

/-- `A007147(n+1)-floor((n+1)²/12)-1` -/
def P7369905162504597381.Spec : Prop :=
  ∀ n, P7369905162504597381.a n = A059736 (n + 1)

theorem P7369905162504597381.correct : P7369905162504597381.Spec := by
  intro n
  simp only [A059736, Nat.add_sub_cancel]

end A059736

/-! ## A059736.P18090621166190477143

`A007147(n+1)-A008620(A076921(n+1))`
-/

namespace A059736.P18090621166190477143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007147 (n + 1) - A008620 (A076921 (n + 1)).toNat

end

end A059736.P18090621166190477143

namespace A059736

/-- `A007147(n+1)-A008620(A076921(n+1))` -/
def P18090621166190477143.Spec : Prop :=
  ∀ n, P18090621166190477143.a n = A059736 (n + 1)

end A059736

/-! ## A059736.P6971776215163615832

`A256216(n+1)+A016116(n)-A008620(A076921(n+1))`
-/

namespace A059736.P6971776215163615832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256216 (n + 1) + (A016116 n - A008620 (A076921 (n + 1)).toNat)

end

end A059736.P6971776215163615832

namespace A059736

/-- `A256216(n+1)+A016116(n)-A008620(A076921(n+1))` -/
def P6971776215163615832.Spec : Prop :=
  ∀ n, P6971776215163615832.a n = A059736 (n + 1)

end A059736

/-! ## A059736.P1106670784588075211

`A091696(n+1)-(A056357(n+1)+A008620(A076921(n+1)))`
-/

namespace A059736.P1106670784588075211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091696 (n + 1) - (A056357 (n + 1) + A008620 (A076921 (n + 1)).toNat)

end

end A059736.P1106670784588075211

namespace A059736

/-- `A091696(n+1)-(A056357(n+1)+A008620(A076921(n+1)))` -/
def P1106670784588075211.Spec : Prop :=
  ∀ n, P1106670784588075211.a n = A059736 (n + 1)

end A059736

/-! ## A059736.P5696357800843302787

`A000029(n+1)-A000011(n+1)-A008620(A076921(n+1))`
-/

namespace A059736.P5696357800843302787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) - A000011 (n + 1) - A008620 (A076921 (n + 1)).toNat

end

end A059736.P5696357800843302787

namespace A059736

/-- `A000029(n+1)-A000011(n+1)-A008620(A076921(n+1))` -/
def P5696357800843302787.Spec : Prop :=
  ∀ n, P5696357800843302787.a n = A059736 (n + 1)

end A059736

/-! ## A059736.P4284666378689842048

`A056342(n+1)+1-A056357(n+1)-A008620(A076921(n+1))`
-/

namespace A059736.P4284666378689842048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056342 (n + 1) + 1 - A056357 (n + 1) - A008620 (A076921 (n + 1)).toNat

end

end A059736.P4284666378689842048

namespace A059736

/-- `A056342(n+1)+1-A056357(n+1)-A008620(A076921(n+1))` -/
def P4284666378689842048.Spec : Prop :=
  ∀ n, P4284666378689842048.a n = A059736 (n + 1)

end A059736

/-! ## A059736.P15649199083446310042

`A056342(n+1)+2-A000011(n+1)-A008620(A076921(n+1))`
-/

namespace A059736.P15649199083446310042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056342 (n + 1) + (2 - A000011 (n + 1)) - A008620 (A076921 (n + 1)).toNat

end

end A059736.P15649199083446310042

namespace A059736

/-- `A056342(n+1)+2-A000011(n+1)-A008620(A076921(n+1))` -/
def P15649199083446310042.Spec : Prop :=
  ∀ n, P15649199083446310042.a n = A059736 (n + 1)

end A059736

/-!
# A059737: Lesser of the smallest pair of consecutive numbers divisible by an n-th power, but neither divisible by an (n+1)-st power.

The programs for A059737, there is no canonical definition to state claims against.
-/

/-! ## A059737.P1009321236776947686

`A358818(n)+A016389((2*n)²)`
-/

namespace A059737.P1009321236776947686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358818 n + A016389 ((2 * n) ^ 2)

end

end A059737.P1009321236776947686

/-! ## A059737.P9296839804769141456

`A358818(n)+val(A093549(n+3), 3)`
-/

namespace A059737.P9296839804769141456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358818 n + (SequenceMachineLib.valuation (A093549 (n + 3)).toNat 3 : ℤ)

end

end A059737.P9296839804769141456

/-!
# A059738: Binomial transform of A054341 and inverse binomial transform of A049027.

The programs for A059738, there is no canonical definition to state claims against.
-/

/-! ## A059738.P6548360970570608432

`2*A059712(n+1)-A001006(n)`
-/

namespace A059738.P6548360970570608432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059712 (n + 1) - A001006 n

end

end A059738.P6548360970570608432

/-! ## A059738.P10524236293726554357

`A126954(∑[n])`
-/

namespace A059738.P10524236293726554357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126954 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059738.P10524236293726554357

/-! ## A059738.P3997158206652529065

`A171505(∑[n])`
-/

namespace A059738.P3997158206652529065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171505 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059738.P3997158206652529065

/-! ## A059738.P7589594798427916190

`record[A126954(n)]`
-/

namespace A059738.P7589594798427916190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059738.P7589594798427916190

/-! ## A059738.P16339780909151068454

`or(char[1], A126954(A000217(n)))`
-/

namespace A059738.P16339780909151068454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A126954 (A000217 n).toNat)

end

end A059738.P16339780909151068454

/-! ## A059738.P17546623273100341691

`record[A171505(C(A059169(n+1), 2))]`
-/

namespace A059738.P17546623273100341691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171505 (Nat.choose (A059169 (n + 1)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059738.P17546623273100341691

/-! ## A059738.P8009069716132335991

`A007318(C(2, n))*A126954(A000217(n))`
-/

namespace A059738.P8009069716132335991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A126954 (A000217 n).toNat

end

end A059738.P8009069716132335991

/-! ## A059738.P6896547623299441944

`A001222(A014442(n+1))*A126954(A000217(n))`
-/

namespace A059738.P6896547623299441944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014442 (n + 1)).toNat * A126954 (A000217 n).toNat

end

end A059738.P6896547623299441944

/-! ## A059738.P37301917864683187

`A001222(A256366(n+2))*A126954(A000217(n))`
-/

namespace A059738.P37301917864683187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A256366 (n + 2)).toNat * A126954 (A000217 n).toNat

end

end A059738.P37301917864683187

/-! ## A059738.P9392066578296943701

`A001222(A256368(n+2))*A126954(A000217(n))`
-/

namespace A059738.P9392066578296943701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A256368 (n + 2)).toNat * A126954 (A000217 n).toNat

end

end A059738.P9392066578296943701

/-!
# A059741: Prime unoriented alternating links with n crossings and 2 components.

The programs for A059741, there is no canonical definition to state claims against.
-/

/-! ## A059741.P4027903008424496609

`A331912(round(ϕ*a(n-1)))+1` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A059741.P4027903008424496609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1, 1] fun n a =>
  A331912 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat + 1

end

end A059741.P4027903008424496609

/-! ## A059741.P16676869861159452549

`A000194(A325193(floor(sqrt(2)*(3/2)^n)))`
-/

namespace A059741.P16676869861159452549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A325193 ⌊Real.sqrt (2 : ℝ) * (((3 : ℚ) / 2) ^ n : ℝ)⌋.toNat).toNat

end

end A059741.P16676869861159452549

/-! ## A059741.P14310425509230939866

`A002262(A357783(n)+A007091(n))`
-/

namespace A059741.P14310425509230939866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A357783 n + A007091 n).toNat

end

end A059741.P14310425509230939866

/-! ## A059741.P3310399015748152940

`A347609(A251704(n)+A110655(n))`
-/

namespace A059741.P3310399015748152940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 (A251704 n + A110655 n).toNat

end

end A059741.P3310399015748152940

/-! ## A059741.P4288787383590923106

`A347609(A346052(n)+A195208(n+1))`
-/

namespace A059741.P4288787383590923106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 (A346052 n + A195208 (n + 1)).toNat

end

end A059741.P4288787383590923106

/-!
# A059743: Number of points of norm^2 <= n^2 in the square lattice that are visible from the origin.

The programs for A059743, the canonical program `A059743.P10200141128620482655` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059743 has offset 0).

The definition of A059743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059743.P10200141128620482655

`A175341(n)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059743

/-- `A175341(n)+1` -/
def P10200141128620482655.Spec : Prop :=
  ∀ n, P10200141128620482655.a n = A059743 n

theorem P10200141128620482655.correct : P10200141128620482655.Spec := by
  intro n
  simp only [A059743]

end A059743

/-! ## A059743.P4878612728269940669

`4*A176562(n)+1`
-/

namespace A059743.P4878612728269940669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A176562 n + 1

end

end A059743.P4878612728269940669

namespace A059743

/-- `4*A176562(n)+1` -/
def P4878612728269940669.Spec : Prop :=
  ∀ n, P4878612728269940669.a n = A059743 n

end A059743

/-! ## A059743.P4317027715167082479

`xor(1, A175341(xor(1, xor(1, n))))`
-/

namespace A059743.P4317027715167082479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A175341 (Nat.xor 1 (Nat.xor 1 n)))

end

end A059743.P4317027715167082479

namespace A059743

/-- `xor(1, A175341(xor(1, xor(1, n))))` -/
def P4317027715167082479.Spec : Prop :=
  ∀ n, P4317027715167082479.a n = A059743 n

end A059743

/-! ## A059743.P4855814987120574477

`or(and(1, A141459(n)), A175341(n))`
-/

namespace A059743.P4855814987120574477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 1 (A141459 n)) (A175341 n)

end

end A059743.P4855814987120574477

namespace A059743

/-- `or(and(1, A141459(n)), A175341(n))` -/
def P4855814987120574477.Spec : Prop :=
  ∀ n, P4855814987120574477.a n = A059743 n

end A059743

/-! ## A059743.P9359293747389795334

`or(1, or(A175341(n), A327219(n)))`
-/

namespace A059743.P9359293747389795334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.lor (A175341 n) (A327219 n))

end

end A059743.P9359293747389795334

namespace A059743

/-- `or(1, or(A175341(n), A327219(n)))` -/
def P9359293747389795334.Spec : Prop :=
  ∀ n, P9359293747389795334.a n = A059743 n

end A059743

/-! ## A059743.P4306521553366336802

`A002522(n)-(n²-A175341(n))`
-/

namespace A059743.P4306521553366336802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - ((n ^ 2 : ℤ) - A175341 n)

end

end A059743.P4306521553366336802

namespace A059743

/-- `A002522(n)-(n²-A175341(n))` -/
def P4306521553366336802.Spec : Prop :=
  ∀ n, P4306521553366336802.a n = A059743 n

end A059743

/-! ## A059743.P14745379862821854876

`A016825(A176562(n))-1`
-/

namespace A059743.P14745379862821854876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A176562 n).toNat - 1

end

end A059743.P14745379862821854876

namespace A059743

/-- `A016825(A176562(n))-1` -/
def P14745379862821854876.Spec : Prop :=
  ∀ n, P14745379862821854876.a n = A059743 n

end A059743

/-! ## A059743.P11933238715765885322

`A016813(A176562(n))`
-/

namespace A059743.P11933238715765885322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A176562 n).toNat

end

end A059743.P11933238715765885322

namespace A059743

/-- `A016813(A176562(n))` -/
def P11933238715765885322.Spec : Prop :=
  ∀ n, P11933238715765885322.a n = A059743 n

end A059743

/-! ## A059743.P15347914069422470929

`A016825(2*A176562(n))/2`
-/

namespace A059743.P15347914069422470929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (2 * A176562 n).toNat : ℚ) / 2

end

end A059743.P15347914069422470929

namespace A059743

/-- `A016825(2*A176562(n))/2` -/
def P15347914069422470929.Spec : Prop :=
  ∀ n, P15347914069422470929.a n = (A059743 n : ℚ)

end A059743

/-! ## A059743.P15460790274782552834

`A304651(n²)+1`
-/

namespace A059743.P15460790274782552834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304651 (n ^ 2) + 1

end

end A059743.P15460790274782552834

namespace A059743

/-- `A304651(n²)+1` -/
def P15460790274782552834.Spec : Prop :=
  ∀ n, P15460790274782552834.a n = A059743 n

end A059743

/-! ## A059743.P17889929125445102820

`4*A305117(n²)+1`
-/

namespace A059743.P17889929125445102820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A305117 (n ^ 2) + 1

end

end A059743.P17889929125445102820

namespace A059743

/-- `4*A305117(n²)+1` -/
def P17889929125445102820.Spec : Prop :=
  ∀ n, P17889929125445102820.a n = A059743 n

end A059743

/-! ## A059743.P9268872066733938910

`A008586(A305117(n²))+1`
-/

namespace A059743.P9268872066733938910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A305117 (n ^ 2)).toNat + 1

end

end A059743.P9268872066733938910

namespace A059743

/-- `A008586(A305117(n²))+1` -/
def P9268872066733938910.Spec : Prop :=
  ∀ n, P9268872066733938910.a n = A059743 n

end A059743

/-!
# A059744: Numbers k such that k^2 is a palindromic square of sporadic type.

The programs for A059744, there is no canonical definition to state claims against.
-/

/-! ## A059744.P16846022243136826966

`sqrt(A059745(n+1))`
-/

namespace A059744.P16846022243136826966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059745 (n + 1) : ℝ)

end

end A059744.P16846022243136826966

/-! ## A059744.P2379540285410193102

`root(A059745(n+1), A069705(3*n+1))`
-/

namespace A059744.P2379540285410193102
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059745 (n + 1) : ℝ) ^ (1 / (A069705 (3 * n + 1) : ℝ))

end

end A059744.P2379540285410193102

/-! ## A059744.P12909635051159698201

`A059745(n+1)^((A059841(2*n+1)+1)/2)`
-/

namespace A059744.P12909635051159698201
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059745 (n + 1) : ℝ) ^ ((A059841 (2 * n + 1) + 1 : ℚ) / 2 : ℝ)

end

end A059744.P12909635051159698201

/-! ## A059744.P10575250581294521168

`root(A059745(n+1), A335901(A335901(n+4)))`
-/

namespace A059744.P10575250581294521168
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059745 (n + 1) : ℝ) ^ (1 / (A335901 (A335901 (n + 4)).toNat : ℝ))

end

end A059744.P10575250581294521168

/-!
# A059745: Palindromic squares of sporadic type.

The programs for A059745, there is no canonical definition to state claims against.
-/

/-! ## A059745.P9883105753749920305

`A059744(n+1)²`
-/

namespace A059745.P9883105753749920305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059744 (n + 1) ^ 2

end

end A059745.P9883105753749920305

/-! ## A059745.P429241014795027035

`A059744(2*n+1-n)^2`
-/

namespace A059745.P429241014795027035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059744 (2 * n + 1 - n) ^ 2

end

end A059745.P429241014795027035

/-! ## A059745.P10732251601990061578

`record[A059744(A022446(n))²]`
-/

namespace A059745.P10732251601990061578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059744 (A022446 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059745.P10732251601990061578

/-! ## A059745.P16892471796858534183

`record[A059744(A065648(n))²]`
-/

namespace A059745.P16892471796858534183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059744 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059745.P16892471796858534183

/-! ## A059745.P7137257933956048670

`record[A059744(A112382(n))²]`
-/

namespace A059745.P7137257933956048670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059744 (A112382 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059745.P7137257933956048670

/-!
# A059748: Numbers k such that 5*2^k + 7 is prime.

The programs for A059748, there is no canonical definition to state claims against.
-/

/-! ## A059748.P8687016668202868583

`lt[A269379(3*n+4), A269363(A375929(n+1))]`
-/

namespace A059748.P8687016668202868583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269363 (A375929 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059748.P8687016668202868583

/-! ## A059748.P8376559561838759316

`record[or(A005811(n), A340830(n+1))]`
-/

namespace A059748.P8376559561838759316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005811 n) (A340830 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059748.P8376559561838759316

/-! ## A059748.P15018997740050551176

`record[or(A072219(n+1), A340830(n+1))]`
-/

namespace A059748.P15018997740050551176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072219 (n + 1)) (A340830 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059748.P15018997740050551176

/-! ## A059748.P2198160041306373043

`record[or(A355311(n+1), A355319(2*n+7))]`
-/

namespace A059748.P2198160041306373043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A355311 (n + 1)) (A355319 (2 * n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059748.P2198160041306373043

/-! ## A059748.P15325630939631992187

`or(A181839(A049287(n+5)), A265059(n))`
-/

namespace A059748.P15325630939631992187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181839 (A049287 (n + 5)).toNat) (A265059 n)

end

end A059748.P15325630939631992187

/-!
# A059749: Numbers k such that 5*2^k - 7 is prime.

The programs for A059749, there is no canonical definition to state claims against.
-/

/-! ## A059749.P9102051082195180722

`record[A006694(A076405(n+1))]`
-/

namespace A059749.P9102051082195180722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (A076405 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059749.P9102051082195180722

/-! ## A059749.P10484543795689806167

`record[abs(A048866(A345917(2*(n+1))))]`
-/

namespace A059749.P10484543795689806167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048866 (A345917 (2 * (n + 1))).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059749.P10484543795689806167

/-! ## A059749.P9716539631958249803

`∑[A097853(∑[A225391(2*n+1)])]`
-/

namespace A059749.P9716539631958249803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225391 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059749.P9716539631958249803

/-! ## A059749.P17145375583099849157

`record[and(A114791(n+2), A330026(2*(n+1)))]`
-/

namespace A059749.P17145375583099849157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114791 (n + 2)) (A330026 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059749.P17145375583099849157

/-! ## A059749.P2009267334329494339

`lt[A095048(n+1), A210850(A271200(n))]`
-/

namespace A059749.P2009267334329494339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 (A271200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059749.P2009267334329494339

/-!
# A059752: Record values in A059751.

The programs for A059752, there is no canonical definition to state claims against.
-/

/-! ## A059752.P11659507139631201587

`record[A059751(n+1)]`
-/

namespace A059752.P11659507139631201587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059752.P11659507139631201587

/-! ## A059752.P12425150219244678901

`record[A059751(A028920(n))]-A025466(n)`
-/

namespace A059752.P12425150219244678901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059751 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A025466 n

end

end A059752.P12425150219244678901

/-! ## A059752.P17752476655510887584

`lt[A361689(A225597(2*(n+1))), A001316(n)]`
-/

namespace A059752.P17752476655510887584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361689 (A225597 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059752.P17752476655510887584

/-! ## A059752.P12015429033368521856

`lt[A242639(2*(n+1)), A349145(A000120(n))]`
-/

namespace A059752.P12015429033368521856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242639 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349145 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059752.P12015429033368521856

/-! ## A059752.P16049058966687772060

`lt[A006068(A067080(n+5)), A170893(2*(n+1))]`
-/

namespace A059752.P16049058966687772060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A067080 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170893 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059752.P16049058966687772060

/-!
# A059758: Undulating palindromic primes: numbers that are prime, palindromic in base 10, and the digits alternate: ababab... with a != b.

The programs for A059758, there is no canonical definition to state claims against.
-/

/-! ## A059758.P3782286334331170824

`A242541(n+26)`
-/

namespace A059758.P3782286334331170824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 26)

end

end A059758.P3782286334331170824

/-! ## A059758.P3669307363654868254

`∩[A030291(n+1), A046075(n+1)]`
-/

namespace A059758.P3669307363654868254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059758.P3669307363654868254

/-! ## A059758.P4154674057367943832

`∩[A032758(n+1), A085112(n+1)]`
-/

namespace A059758.P4154674057367943832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059758.P4154674057367943832

/-! ## A059758.P5147967880020550852

`∩[A046075(n+1), A235154(n+1)]`
-/

namespace A059758.P5147967880020550852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059758.P5147967880020550852

/-! ## A059758.P10767296208893405917

`∩[A046075(n+1), A050784(n+1)]`
-/

namespace A059758.P10767296208893405917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059758.P10767296208893405917

/-!
# A059760: a(n) is the number of edges (one-dimensional faces) in the convex polytope of real n X n doubly stochastic matrices.

The programs for A059760, there is no canonical definition to state claims against.
-/

/-! ## A059760.P5768351994644613924

`(A002104(n)-n)*n!/2`
-/

namespace A059760.P5768351994644613924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002104 n - (n : ℤ)) * (Nat.factorial n : ℤ) : ℚ) / 2

end

end A059760.P5768351994644613924

/-! ## A059760.P18055608461149422760

`∑{d}[A057354(A122778(n)), #]`
-/

namespace A059760.P18055608461149422760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A122778 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A059760.P18055608461149422760

/-!
# A059761: Initial primes of Cunningham chains of first type with length exactly 2. Primes in A059453 that survive as primes only one "2p-1 iteration", forming chains of exactly 2 terms.

The programs for A059761, there is no canonical definition to state claims against.
-/

/-! ## A059761.P12972854299331768251

`p?[A059456(n+1)+2-A338945(n+1)]`
-/

namespace A059761.P12972854299331768251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1) + (2 - A338945 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059761.P12972854299331768251

/-! ## A059761.P11186419412482454377

`∩[A059453(n+1), A095277(n+1)]`
-/

namespace A059761.P11186419412482454377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059761.P11186419412482454377

/-! ## A059761.P6937013530151561520

`eq[2, A339579(n+1)+A338770(n+1)²]`
-/

namespace A059761.P6937013530151561520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1) + A338770 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059761.P6937013530151561520

/-! ## A059761.P6276334042416191692

`eq[A283616(2*(n+1))+2, A292936(2*n+1)]`
-/

namespace A059761.P6276334042416191692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283616 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059761.P6276334042416191692

/-! ## A059761.P3759151864950182079

`lt[A156660(2*n+1)+A156659(n), A156660(n)]`
-/

namespace A059761.P3759151864950182079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (2 * n + 1) + A156659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059761.P3759151864950182079

/-!
# A059762: Initial primes of Cunningham chains of first type with length exactly 3. Primes in A059453 that survive as primes just two "2p+1 iterations", forming chains of exactly 3 terms.

The programs for A059762, there is no canonical definition to state claims against.
-/

/-! ## A059762.P9483027368203553612

`p?[(A338945(n+1)-2)*A059456(n+1)]`
-/

namespace A059762.P9483027368203553612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A338945 (n + 1) - 2) * A059456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059762.P9483027368203553612

/-! ## A059762.P16082852712657419188

`p?[A170825(A109946(n+1))]`
-/

namespace A059762.P16082852712657419188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170825 (A109946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059762.P16082852712657419188

/-! ## A059762.P11433937846748723363

`p?[A195508(A109946(n+2))]`
-/

namespace A059762.P11433937846748723363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 (A109946 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059762.P11433937846748723363

/-! ## A059762.P12924390036833082646

`record[A195508(A109946(n+3))]`
-/

namespace A059762.P12924390036833082646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 (A109946 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059762.P12924390036833082646

/-! ## A059762.P17204641870350623369

`filter[A109946(n+1), A131532(#)]`
-/

namespace A059762.P17204641870350623369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131532 (f1 j).toNat = 1) n)

end

end A059762.P17204641870350623369

/-!
# A059763: Primes starting a Cunningham chain of the first kind of length 4.

The programs for A059763, there is no canonical definition to state claims against.
-/

/-! ## A059763.P9990554193311877943

`filter[A110025(n+1), A185709(#)]`
-/

namespace A059763.P9990554193311877943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A059763.P9990554193311877943

/-! ## A059763.P5864734499847188580

`∩[A023272(n+1), A110025(n+1)]`
-/

namespace A059763.P5864734499847188580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059763.P5864734499847188580

/-! ## A059763.P9076505271146788754

`∩[A110025(n+1), p?[A124493(n+1)-1]]`
-/

namespace A059763.P9076505271146788754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110025 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124493 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059763.P9076505271146788754

/-! ## A059763.P4059229462798203299

`filter[A110025(n+1), A101264(#)]`
-/

namespace A059763.P4059229462798203299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A059763.P4059229462798203299

/-!
# A059764: Initial (unsafe) primes of Cunningham chains of first type with length exactly 5. Primes in A059453 that survive as primes just four "2p+1 iterations", forming chains of exactly 5 terms.

The programs for A059764, there is no canonical definition to state claims against.
-/

/-! ## A059764.P12410731115020731585

`∩[A023302(n+1), A110027(n+1)]`
-/

namespace A059764.P12410731115020731585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059764.P12410731115020731585

/-! ## A059764.P4610060022902183414

`∩[A110027(n+1), floor(A162019(n+1)/4)]`
-/

namespace A059764.P4610060022902183414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162019 (n + 1) : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059764.P4610060022902183414

/-! ## A059764.P15896401998401320142

`∩[A110027(n+1), floor(A157359(n+1)/16)]`
-/

namespace A059764.P15896401998401320142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157359 (n + 1) : ℚ) / 16⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059764.P15896401998401320142

/-!
# A059766: Initial (unsafe) primes of Cunningham chains of first type with length exactly 6.

The programs for A059766, there is no canonical definition to state claims against.
-/

/-! ## A059766.P4083131222169872108

`A023330(lt[A035373(n+1), A070450(2*n)])`
-/

namespace A059766.P4083131222169872108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070450 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023330 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A059766.P4083131222169872108

/-! ## A059766.P17483562291468867072

`A023330(lt[A259976(3*n+1), A306566(3*n+5)])`
-/

namespace A059766.P17483562291468867072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259976 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306566 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023330 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A059766.P17483562291468867072

/-! ## A059766.P16969156209932199345

`A023330(A120126(n)+A067099(n+7))`
-/

namespace A059766.P16969156209932199345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023330 (A120126 n + A067099 (n + 7)).toNat

end

end A059766.P16969156209932199345

/-! ## A059766.P11746110361363059644

`A023330(A156541(n+1)%A128335(n+3))`
-/

namespace A059766.P11746110361363059644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023330 (Int.tmod (A156541 (n + 1)) (A128335 (n + 3))).toNat

end

end A059766.P11746110361363059644

/-! ## A059766.P8423801454420278574

`A023330(∑[(A241710(n+1)+1)%3])`
-/

namespace A059766.P8423801454420278574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241710 (n + 1) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059766.P8423801454420278574

/-!
# A059767: Initial (unsafe) primes of Cunningham chains of first type with length exactly 7.

The programs for A059767, there is no canonical definition to state claims against.
-/

/-! ## A059767.P16625821377361309542

`A278932(A120194(n+2)+n)`
-/

namespace A059767.P16625821377361309542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278932 (A120194 (n + 2) + (n : ℤ)).toNat

end

end A059767.P16625821377361309542

/-! ## A059767.P11550103208726499513

`A278932(∑[A029359(n)!])`
-/

namespace A059767.P11550103208726499513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A029359 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278932 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059767.P11550103208726499513

/-! ## A059767.P1279419429351324044

`A278932(∑[A215703(n)!])`
-/

namespace A059767.P1279419429351324044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A215703 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278932 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059767.P1279419429351324044

/-! ## A059767.P15666340362480764817

`A278932(∑[A262495(n)!])`
-/

namespace A059767.P15666340362480764817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A262495 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278932 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059767.P15666340362480764817

/-! ## A059767.P874482921780246193

`A278932(A279041(n)+A278944(n+1))`
-/

namespace A059767.P874482921780246193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278932 (A279041 n + A278944 (n + 1)).toNat

end

end A059767.P874482921780246193

/-!
# A059768: Numbers k such that 2*3^k + 35 is prime.

The programs for A059768, there is no canonical definition to state claims against.
-/

/-! ## A059768.P6402442193288547629

`lt[A213806(3*(n+1)), A213773(A213819(2*n+3))]`
-/

namespace A059768.P6402442193288547629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213806 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213773 (A213819 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059768.P6402442193288547629

/-!
# A059769: Frobenius number of the subsemigroup of the natural numbers generated by successive pairs of Fibonacci numbers.

The programs for A059769, the canonical program `A059769.P5102715236662014780` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059769 has offset 3).

The definition of A059769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059769.P5102715236662014780

`∑[A262184(n+3)]-(n+2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059769

/-- `∑[A262184(n+3)]-(n+2)` -/
def P5102715236662014780.Spec : Prop :=
  ∀ n, P5102715236662014780.a n = A059769 (n + 3)

theorem P5102715236662014780.correct : P5102715236662014780.Spec := by
  intro n
  simp only [A059769, Nat.add_sub_cancel]

end A059769

/-! ## A059769.P11944161948231466079

`∑[2*C(A000045(n+3), 2)]-1`
-/

namespace A059769.P11944161948231466079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000045 (n + 3)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A059769.P11944161948231466079

namespace A059769

/-- `∑[2*C(A000045(n+3), 2)]-1` -/
def P11944161948231466079.Spec : Prop :=
  ∀ n, P11944161948231466079.a n = A059769 (n + 3)

end A059769

/-! ## A059769.P12849332165318646481

`A001654(n+3)-A020712(n)`
-/

namespace A059769.P12849332165318646481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 3) - A020712 n

end

end A059769.P12849332165318646481

namespace A059769

/-- `A001654(n+3)-A020712(n)` -/
def P12849332165318646481.Spec : Prop :=
  ∀ n, P12849332165318646481.a n = A059769 (n + 3)

end A059769

/-! ## A059769.P12841387387388240047

`∑[(A001911(n)+1)*A071679(n+1)]`
-/

namespace A059769.P12841387387388240047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001911 n + 1) * A071679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059769.P12841387387388240047

namespace A059769

/-- `∑[(A001911(n)+1)*A071679(n+1)]` -/
def P12841387387388240047.Spec : Prop :=
  ∀ n, P12841387387388240047.a n = A059769 (n + 3)

end A059769

/-! ## A059769.P3663126049181989208

`A000071(n+3)*A000071(n+4)-1`
-/

namespace A059769.P3663126049181989208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) * A000071 (n + 4) - 1

end

end A059769.P3663126049181989208

namespace A059769

/-- `A000071(n+3)*A000071(n+4)-1` -/
def P3663126049181989208.Spec : Prop :=
  ∀ n, P3663126049181989208.a n = A059769 (n + 3)

end A059769

/-! ## A059769.P3457086635389293005

`A020695(n)*A020701(n)-A020712(n)`
-/

namespace A059769.P3457086635389293005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A020701 n - A020712 n

end

end A059769.P3457086635389293005

namespace A059769

/-- `A020695(n)*A020701(n)-A020712(n)` -/
def P3457086635389293005.Spec : Prop :=
  ∀ n, P3457086635389293005.a n = A059769 (n + 3)

end A059769

/-! ## A059769.P15304379648188002254

`A020695(n+1)*A020695(n)-A020712(n)`
-/

namespace A059769.P15304379648188002254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) * A020695 n - A020712 n

end

end A059769.P15304379648188002254

namespace A059769

/-- `A020695(n+1)*A020695(n)-A020712(n)` -/
def P15304379648188002254.Spec : Prop :=
  ∀ n, P15304379648188002254.a n = A059769 (n + 3)

end A059769

/-! ## A059769.P14397253632936571622

`A020695(n)*A020701(n)-A020701(n+1)`
-/

namespace A059769.P14397253632936571622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A020701 n - A020701 (n + 1)

end

end A059769.P14397253632936571622

namespace A059769

/-- `A020695(n)*A020701(n)-A020701(n+1)` -/
def P14397253632936571622.Spec : Prop :=
  ∀ n, P14397253632936571622.a n = A059769 (n + 3)

end A059769

/-! ## A059769.P5437724458078916120

`Δ[A001891(n)]*A020695(n)-A000045(n+2)`
-/

namespace A059769.P5437724458078916120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A020695 n - A000045 (n + 2)

end

end A059769.P5437724458078916120

namespace A059769

/-- `Δ[A001891(n)]*A020695(n)-A000045(n+2)` -/
def P5437724458078916120.Spec : Prop :=
  ∀ n, P5437724458078916120.a n = A059769 (n + 3)

end A059769

/-! ## A059769.P18411271374366806902

`A157728(n+5)+A001911(n+1)*A001911(n)`
-/

namespace A059769.P18411271374366806902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157728 (n + 5) + A001911 (n + 1) * A001911 n

end

end A059769.P18411271374366806902

namespace A059769

/-- `A157728(n+5)+A001911(n+1)*A001911(n)` -/
def P18411271374366806902.Spec : Prop :=
  ∀ n, P18411271374366806902.a n = A059769 (n + 3)

end A059769

/-! ## A059769.P7606595625933147355

`A020701(2*n+1)+A001654(n+1)-A020701(n+1)`
-/

namespace A059769.P7606595625933147355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (2 * n + 1) + (A001654 (n + 1) - A020701 (n + 1))

end

end A059769.P7606595625933147355

namespace A059769

/-- `A020701(2*n+1)+A001654(n+1)-A020701(n+1)` -/
def P7606595625933147355.Spec : Prop :=
  ∀ n, P7606595625933147355.a n = A059769 (n + 3)

end A059769

/-! ## A059769.P12575083472412673067

`A006327(2*n+5)+A001654(n+1)-A006327(n+5)`
-/

namespace A059769.P12575083472412673067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (2 * n + 5) + (A001654 (n + 1) - A006327 (n + 5))

end

end A059769.P12575083472412673067

namespace A059769

/-- `A006327(2*n+5)+A001654(n+1)-A006327(n+5)` -/
def P12575083472412673067.Spec : Prop :=
  ∀ n, P12575083472412673067.a n = A059769 (n + 3)

end A059769

/-! ## A059769.P4145051938423851846

`Δ[A064831(n+2)]-A020712(n)`
-/

namespace A059769.P4145051938423851846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A020712 n

end

end A059769.P4145051938423851846

namespace A059769

/-- `Δ[A064831(n+2)]-A020712(n)` -/
def P4145051938423851846.Spec : Prop :=
  ∀ n, P4145051938423851846.a n = A059769 (n + 3)

end A059769

/-! ## A059769.P10277334618238391170

`Δ[A190173(n+2)]-A020701(n)`
-/

namespace A059769.P10277334618238391170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A020701 n

end

end A059769.P10277334618238391170

namespace A059769

/-- `Δ[A190173(n+2)]-A020701(n)` -/
def P10277334618238391170.Spec : Prop :=
  ∀ n, P10277334618238391170.a n = A059769 (n + 3)

end A059769

/-!
# A059770: First solution of x^2 = 2 mod p for primes p such that a solution exists.

The programs for A059770, there is no canonical definition to state claims against.
-/

/-! ## A059770.P3834652276725688893

`(A038873(n+1)-A059771(n+1))*ceil(sin(n)²)`
-/

namespace A059770.P3834652276725688893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038873 (n + 1) - A059771 (n + 1)) * ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A059770.P3834652276725688893

/-! ## A059770.P3327805518319929118

`(A038873(n+1)-A059771(n+1))*A057427(n)`
-/

namespace A059770.P3327805518319929118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038873 (n + 1) - A059771 (n + 1)) * A057427 n

end

end A059770.P3327805518319929118

/-! ## A059770.P6474125906551734096

`(A038873(n+1)-A059771(n+1))%A028884(n)`
-/

namespace A059770.P6474125906551734096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038873 (n + 1) - A059771 (n + 1)) (A028884 n)

end

end A059770.P6474125906551734096

/-! ## A059770.P15486531553263648196

`A038873(n+1)%A035476(n)-A059771(n+1)`
-/

namespace A059770.P15486531553263648196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038873 (n + 1)) (A035476 n) - A059771 (n + 1)

end

end A059770.P15486531553263648196

/-! ## A059770.P15034544588232913722

`A059772(A038873(n+1)-A059771(n+1))-A059771(n+1)`
-/

namespace A059770.P15034544588232913722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (A038873 (n + 1) - A059771 (n + 1)).toNat - A059771 (n + 1)

end

end A059770.P15034544588232913722

/-! ## A059770.P17938688795923179854

`record[A061397(A260395(n+1))]-A059771(n+1)`
-/

namespace A059770.P17938688795923179854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A260395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A059771 (n + 1)

end

end A059770.P17938688795923179854

/-!
# A059771: Second solution of x^2 = 2 mod p for primes p such that a solution exists.

The programs for A059771, there is no canonical definition to state claims against.
-/

/-! ## A059771.P2998126535811825583

`(A038873(n+1)-A059770(n+1))%(((8*n+3)²-5)/2)`
-/

namespace A059771.P2998126535811825583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038873 (n + 1) - A059770 (n + 1)) (SequenceMachineLib.roundAway ((((8 * n + 3) ^ 2 : ℤ) - 5 : ℚ) / 2))

end

end A059771.P2998126535811825583

/-! ## A059771.P14303082901918812629

`A038873(n+1)%A035476(n)-A059770(n+1)`
-/

namespace A059771.P14303082901918812629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038873 (n + 1)) (A035476 n) - A059770 (n + 1)

end

end A059771.P14303082901918812629

/-! ## A059771.P5854936682295711934

`record[A061397(A260395(n+1))]-A059770(n+1)`
-/

namespace A059771.P5854936682295711934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A260395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A059770 (n + 1)

end

end A059771.P5854936682295711934

/-!
# A059772: Smallest prime p such that n is a solution mod p of x^2 = 2, or 0 if no such prime exists.

The programs for A059772, there is no canonical definition to state claims against.
-/

/-! ## A059772.P5743985582417093022

`A097975(A133653(n+1)+n²)`
-/

namespace A059772.P5743985582417093022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (A133653 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A059772.P5743985582417093022

/-! ## A059772.P1328856240160354143

`A097975(A103517(2*n)+n²)`
-/

namespace A059772.P1328856240160354143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (A103517 (2 * n) + (n ^ 2 : ℤ)).toNat

end

end A059772.P1328856240160354143

/-! ## A059772.P329773492599245853

`A097975(A010000(n)+A008586(n))`
-/

namespace A059772.P329773492599245853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (A010000 n + A008586 n).toNat

end

end A059772.P329773492599245853

/-! ## A059772.P2509327774478517784

`A097975(A133263(n)+A055999(n))`
-/

namespace A059772.P2509327774478517784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (A133263 n + A055999 n).toNat

end

end A059772.P2509327774478517784

/-! ## A059772.P3101035888634413476

`A061397(A034699(A127736(n+1)))`
-/

namespace A059772.P3101035888634413476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A034699 (A127736 (n + 1)).toNat).toNat

end

end A059772.P3101035888634413476

/-!
# A059773: Maximum size of Aut(G) where G is a finite group of order n.

The programs for A059773, there is no canonical definition to state claims against.
-/

/-! ## A059773.P2869156087472989296

`A137316(A063756(n+1))`
-/

namespace A059773.P2869156087472989296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137316 (A063756 (n + 1)).toNat

end

end A059773.P2869156087472989296

/-! ## A059773.P10052400882623357988

`A137316(∑[A000001(n+1)])`
-/

namespace A059773.P10052400882623357988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059773.P10052400882623357988

/-! ## A059773.P14552018173567950278

`A137316(∑[A201733(n+1)])`
-/

namespace A059773.P14552018173567950278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059773.P14552018173567950278

/-! ## A059773.P2405440378250165041

`A061350(n+1)*A248891(A211096(n))`
-/

namespace A059773.P2405440378250165041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061350 (n + 1) * A248891 (A211096 n).toNat

end

end A059773.P2405440378250165041

/-! ## A059773.P10520417611749463890

`A072513(n+1)/A319719(A351703(n))`
-/

namespace A059773.P10520417611749463890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072513 (n + 1) : ℚ) / (A319719 (A351703 n).toNat : ℚ)

end

end A059773.P10520417611749463890

/-!
# A059774: Consider the line segment in R^n from the origin to the point P=(1,2,3,...,n); let d = squared distance to this line from the closest point of Z^n (excluding the endpoints). Sequence gives d times P.P.

The programs for A059774, there is no canonical definition to state claims against.
-/

/-! ## A059774.P11704075556200044725

`3*∑[C(n, 2)+1]-2-A001222(A004027(n))`
-/

namespace A059774.P11704075556200044725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 2 - A001222 (A004027 n).toNat

end

end A059774.P11704075556200044725

/-! ## A059774.P11380037460181835015

`A300646(A006784(n+1))+A005994(n)`
-/

namespace A059774.P11380037460181835015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (A006784 (n + 1)).toNat + A005994 n

end

end A059774.P11380037460181835015

/-!
# A059775: From solution to a counting problem.

The programs for A059775, there is no canonical definition to state claims against.
-/

/-! ## A059775.P4238122783099989626

`2*n*A247423(∑[(n+1)²+1])`
-/

namespace A059775.P4238122783099989626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A247423 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059775.P4238122783099989626

/-!
# A059776: Three-quadrant Ferrers graphs that partition n.

The programs for A059776, there is no canonical definition to state claims against.
-/

/-! ## A059776.P11132052246792381645

`∑[2*A035592(n)-A000716(n)]`
-/

namespace A059776.P11132052246792381645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035592 n - A000716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059776.P11132052246792381645

/-! ## A059776.P8388204166736695684

`∑[A001452(n)-A124761(A000125(n))]`
-/

namespace A059776.P8388204166736695684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001452 n - A124761 (A000125 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059776.P8388204166736695684

/-! ## A059776.P1361019986302457523

`∑[A000188(A001452(n)²)]`
-/

namespace A059776.P1361019986302457523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A001452 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059776.P1361019986302457523

/-! ## A059776.P11341838868142560703

`∑[A000196(A001452(n)²)]`
-/

namespace A059776.P11341838868142560703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001452 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059776.P11341838868142560703

/-!
# A059777: Number of self-conjugate three-quadrant Ferrers graphs that partition n.

The programs for A059777, there is no canonical definition to state claims against.
-/

/-! ## A059777.P9951127122819389730

`abs(∑[A106507(n)])`
-/

namespace A059777.P9951127122819389730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A059777.P9951127122819389730

/-! ## A059777.P11187472280525416

`A006950(n)-a(n-1)` with `a(0)=1`
-/

namespace A059777.P11187472280525416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006950 n - a (n - 1)

end

end A059777.P11187472280525416

/-! ## A059777.P11264121867040680549

`lcm(∑[A106507(n)], A008836(n+1))`
-/

namespace A059777.P11264121867040680549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A008836 (n + 1))

end

end A059777.P11264121867040680549

/-! ## A059777.P14797348513601225704

`lcm(A008836(n), A106507(n))-a(n-1)` with `a(0)=1`
-/

namespace A059777.P14797348513601225704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (A008836 n) (A106507 n) : ℤ) - a (n - 1)

end

end A059777.P14797348513601225704

/-! ## A059777.P9877316170918274223

`gcd(n+1-A000027(n+1), ∑[A106507(n)])`
-/

namespace A059777.P9877316170918274223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A000027 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059777.P9877316170918274223

/-! ## A059777.P2337574355364854269

`∑[A106507(n)]/A273225(n)*A274621(n)`
-/

namespace A059777.P2337574355364854269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106507 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A273225 n : ℚ) * (A274621 n : ℚ)

end

end A059777.P2337574355364854269

/-! ## A059777.P7950927964865565010

`∑[A106507(n)]*A057077(2*n)`
-/

namespace A059777.P7950927964865565010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A059777.P7950927964865565010

/-! ## A059777.P16841248384966560629

`∑[A106507(n)]/A057077(A005408(n))`
-/

namespace A059777.P16841248384966560629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106507 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A059777.P16841248384966560629

/-! ## A059777.P2797432233980700697

`abs(∑[A286950(∑[n+3])])`
-/

namespace A059777.P2797432233980700697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A059777.P2797432233980700697

/-! ## A059777.P10705033020323573669

`∑[A106507(n)]/A057077(A002522(n))`
-/

namespace A059777.P10705033020323573669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106507 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A057077 (A002522 n).toNat : ℚ)

end

end A059777.P10705033020323573669

/-!
# A059778: Expansion of 1 / product((1+q^(2*n+3))/(1-q^(2*n+2)), n=0..inf).

The programs for A059778, the canonical program `A059778.P17070218230264612452` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059778 has offset 0).

The definition of A059778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059778.P10309225984182435292

`A105812(n)*A167374(floor(n-atan(n)))`
-/

namespace A059778.P10309225984182435292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n * A167374 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A059778.P10309225984182435292

namespace A059778

/-- `A105812(n)*A167374(floor(n-atan(n)))` -/
def P10309225984182435292.Spec : Prop :=
  ∀ n, P10309225984182435292.a n = A059778 n

end A059778

/-! ## A059778.P8823515269193492653

`Δ[char[A000124(n)]]*A033999(n)`
-/

namespace A059778.P8823515269193492653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A033999 n

end

end A059778.P8823515269193492653

namespace A059778

/-- `Δ[char[A000124(n)]]*A033999(n)` -/
def P8823515269193492653.Spec : Prop :=
  ∀ n, P8823515269193492653.a n = A059778 n

end A059778

/-! ## A059778.P17070218230264612452

`A106459(A004483(n))+A106459(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059778

/-- `A106459(A004483(n))+A106459(n)` -/
def P17070218230264612452.Spec : Prop :=
  ∀ n, P17070218230264612452.a n = A059778 n

theorem P17070218230264612452.correct : P17070218230264612452.Spec := by
  intro n
  simp only [A059778]

end A059778

/-! ## A059778.P14136124537982235212

`A106459(A004482(A004482(n)))+A106459(n)`
-/

namespace A059778.P14136124537982235212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 (A004482 (A004482 n).toNat).toNat + A106459 n

end

end A059778.P14136124537982235212

namespace A059778

/-- `A106459(A004482(A004482(n)))+A106459(n)` -/
def P14136124537982235212.Spec : Prop :=
  ∀ n, P14136124537982235212.a n = A059778 n

end A059778

/-! ## A059778.P16151506614212397006

`Δ[Δ[A340945(A004275(n))]]`
-/

namespace A059778.P16151506614212397006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340945 (A004275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059778.P16151506614212397006

namespace A059778

/-- `Δ[Δ[A340945(A004275(n))]]` -/
def P16151506614212397006.Spec : Prop :=
  ∀ n, P16151506614212397006.a n = A059778 n

end A059778

/-! ## A059778.P16497154625978985322

`Δ[A051953(n+1)]%2*A008683(A059268(n))`
-/

namespace A059778.P16497154625978985322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2 * A008683 (A059268 n).toNat

end

end A059778.P16497154625978985322

namespace A059778

/-- `Δ[A051953(n+1)]%2*A008683(A059268(n))` -/
def P16497154625978985322.Spec : Prop :=
  ∀ n, P16497154625978985322.a n = A059778 n

end A059778

/-! ## A059778.P7989777845202657929

`A008683(A059268(n))*A062157(A004442(n))`
-/

namespace A059778.P7989777845202657929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A059268 n).toNat * A062157 (A004442 n).toNat

end

end A059778.P7989777845202657929

namespace A059778

/-- `A008683(A059268(n))*A062157(A004442(n))` -/
def P7989777845202657929.Spec : Prop :=
  ∀ n, P7989777845202657929.a n = A059778 n

end A059778

/-! ## A059778.P4874232035330102713

`A008683(A059268(n))*A062157(A008611(n))`
-/

namespace A059778.P4874232035330102713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A059268 n).toNat * A062157 (A008611 n).toNat

end

end A059778.P4874232035330102713

namespace A059778

/-- `A008683(A059268(n))*A062157(A008611(n))` -/
def P4874232035330102713.Spec : Prop :=
  ∀ n, P4874232035330102713.a n = A059778 n

end A059778

/-! ## A059778.P16490684118930208370

`A008683(A059268(n))*A062157(A106249(n))`
-/

namespace A059778.P16490684118930208370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A059268 n).toNat * A062157 (A106249 n).toNat

end

end A059778.P16490684118930208370

namespace A059778

/-- `A008683(A059268(n))*A062157(A106249(n))` -/
def P16490684118930208370.Spec : Prop :=
  ∀ n, P16490684118930208370.a n = A059778 n

end A059778

/-!
# A059779: A Lucas triangle: T(m,n), m >= n >= 0.

The programs for A059779, the canonical program `A059779.P4415360293391952996` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059779 has offset 0).

The definition of A059779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059779.P17602110727222226016

`2*A131410(n+1)-A039913(n)`
-/

namespace A059779.P17602110727222226016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131410 (n + 1) - A039913 n

end

end A059779.P17602110727222226016

namespace A059779

/-- `2*A131410(n+1)-A039913(n)` -/
def P17602110727222226016.Spec : Prop :=
  ∀ n, P17602110727222226016.a n = A059779 n

end A059779

/-! ## A059779.P16638557775716338247

`A118658(comp[C(n, 2)]-n)-A039913(n)`
-/

namespace A059779.P16638557775716338247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - A039913 n

end

end A059779.P16638557775716338247

namespace A059779

/-- `A118658(comp[C(n, 2)]-n)-A039913(n)` -/
def P16638557775716338247.Spec : Prop :=
  ∀ n, P16638557775716338247.a n = A059779 n

end A059779

/-! ## A059779.P4432942762184696134

`A091562(A057944(n))+A058071(n)`
-/

namespace A059779.P4432942762184696134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091562 (A057944 n).toNat + A058071 n

end

end A059779.P4432942762184696134

namespace A059779

/-- `A091562(A057944(n))+A058071(n)` -/
def P4432942762184696134.Spec : Prop :=
  ∀ n, P4432942762184696134.a n = A059779 n

end A059779

/-! ## A059779.P2970963763500307704

`A212804(A003056(n))+A058071(n)`
-/

namespace A059779.P2970963763500307704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A003056 n).toNat + A058071 n

end

end A059779.P2970963763500307704

namespace A059779

/-- `A212804(A003056(n))+A058071(n)` -/
def P2970963763500307704.Spec : Prop :=
  ∀ n, P2970963763500307704.a n = A059779 n

end A059779

/-! ## A059779.P14067972068051224027

`A000032(A003056(n))-A098356(n)`
-/

namespace A059779.P14067972068051224027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A003056 n).toNat - A098356 n

end

end A059779.P14067972068051224027

namespace A059779

/-- `A000032(A003056(n))-A098356(n)` -/
def P14067972068051224027.Spec : Prop :=
  ∀ n, P14067972068051224027.a n = A059779 n

end A059779

/-! ## A059779.P12339418348092684420

`A302126(A131507(n))-A098356(n)`
-/

namespace A059779.P12339418348092684420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A131507 n).toNat - A098356 n

end

end A059779.P12339418348092684420

namespace A059779

/-- `A302126(A131507(n))-A098356(n)` -/
def P12339418348092684420.Spec : Prop :=
  ∀ n, P12339418348092684420.a n = A059779 n

end A059779

/-! ## A059779.P3177258599063109250

`A000032(Δ[A006463(n)])-A098356(n)`
-/

namespace A059779.P3177258599063109250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat - A098356 n

end

end A059779.P3177258599063109250

namespace A059779

/-- `A000032(Δ[A006463(n)])-A098356(n)` -/
def P3177258599063109250.Spec : Prop :=
  ∀ n, P3177258599063109250.a n = A059779 n

end A059779

/-! ## A059779.P4426771606342227379

`A055389(A002024(n+1))-A039913(n)`
-/

namespace A059779.P4426771606342227379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (A002024 (n + 1)).toNat - A039913 n

end

end A059779.P4426771606342227379

namespace A059779

/-- `A055389(A002024(n+1))-A039913(n)` -/
def P4426771606342227379.Spec : Prop :=
  ∀ n, P4426771606342227379.a n = A059779 n

end A059779

/-! ## A059779.P4415360293391952996

`A058071(n)-A152163(A002024(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059779

/-- `A058071(n)-A152163(A002024(n+1))` -/
def P4415360293391952996.Spec : Prop :=
  ∀ n, P4415360293391952996.a n = A059779 n

theorem P4415360293391952996.correct : P4415360293391952996.Spec := by
  intro n
  simp only [A059779]

end A059779

/-! ## A059779.P14963518365948547116

`A039913(n)+A005843(A131410(n+1)-A039913(n))`
-/

namespace A059779.P14963518365948547116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 n + A005843 (A131410 (n + 1) - A039913 n).toNat

end

end A059779.P14963518365948547116

namespace A059779

/-- `A039913(n)+A005843(A131410(n+1)-A039913(n))` -/
def P14963518365948547116.Spec : Prop :=
  ∀ n, P14963518365948547116.a n = A059779 n

end A059779

/-! ## A059779.P10303111620596487067

`A005843(A131410(n+1))-A039913(n)`
-/

namespace A059779.P10303111620596487067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A131410 (n + 1)).toNat - A039913 n

end

end A059779.P10303111620596487067

namespace A059779

/-- `A005843(A131410(n+1))-A039913(n)` -/
def P10303111620596487067.Spec : Prop :=
  ∀ n, P10303111620596487067.a n = A059779 n

end A059779

/-!
# A059780: A generalized Pascal triangle of order 3: T(n,m), n >= 0, 2*n >= m >= 0.

The programs for A059780, there is no canonical definition to state claims against.
-/

/-! ## A059780.P5169130716777956274

`A005811(A143505(n+1))%A001209(2*n+3)`
-/

namespace A059780.P5169130716777956274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 (A143505 (n + 1)).toNat) (A001209 (2 * n + 3))

end

end A059780.P5169130716777956274

/-! ## A059780.P11525020002807592696

`A005811(A143505(n+1)%A340613(2*n+1))`
-/

namespace A059780.P11525020002807592696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.tmod (A143505 (n + 1)) (A340613 (2 * n + 1))).toNat

end

end A059780.P11525020002807592696

/-! ## A059780.P329454929168480378

`A136480(A008624(A165891(n))*A165891(n))`
-/

namespace A059780.P329454929168480378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A008624 (A165891 n).toNat * A165891 n).toNat

end

end A059780.P329454929168480378

/-! ## A059780.P14528516023466803885

`A034880(A291845(n))`
-/

namespace A059780.P14528516023466803885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034880 (A291845 n).toNat

end

end A059780.P14528516023466803885

/-! ## A059780.P6423739432460056519

`A104660(A322193(n))`
-/

namespace A059780.P6423739432460056519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104660 (A322193 n).toNat

end

end A059780.P6423739432460056519

/-!
# A059781: Triangle T(n,k) giving exponent of power of 2 dividing entry (n,k) of trinomial triangle A027907.

The programs for A059781, there is no canonical definition to state claims against.
-/

/-! ## A059781.P16241250364091621738

`val(A027907(n), 2)`
-/

namespace A059781.P16241250364091621738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A027907 n).toNat 2

end

end A059781.P16241250364091621738

/-! ## A059781.P17228973892551705031

`val(A169623(A161983(n)), 2)`
-/

namespace A059781.P17228973892551705031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A169623 (A161983 n).toNat).toNat 2

end

end A059781.P17228973892551705031

/-! ## A059781.P6430469067287246578

`val(A169623(A316670(n+1)), 2)`
-/

namespace A059781.P6430469067287246578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A169623 (A316670 (n + 1)).toNat).toNat 2

end

end A059781.P6430469067287246578

/-! ## A059781.P265606061879949503

`A001222(and(-A027907(n), A027907(n)))`
-/

namespace A059781.P265606061879949503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A027907 n) (A027907 n)).toNat

end

end A059781.P265606061879949503

/-! ## A059781.P183536744997724570

`A000005(and(-A027907(n), A027907(n)))-1`
-/

namespace A059781.P183536744997724570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land (-A027907 n) (A027907 n)).toNat - 1

end

end A059781.P183536744997724570

/-! ## A059781.P15435587444955278176

`val(A169623(A116942(2*n)), 2)`
-/

namespace A059781.P15435587444955278176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A169623 (A116942 (2 * n)).toNat).toNat 2

end

end A059781.P15435587444955278176

/-! ## A059781.P5189265985497097144

`val(A169623(A316965(n)+1), 2)`
-/

namespace A059781.P5189265985497097144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A169623 (A316965 n + 1).toNat).toNat 2

end

end A059781.P5189265985497097144

/-! ## A059781.P12969624144600186480

`log2(gcd(A016116(n), A027907(n)))`
-/

namespace A059781.P12969624144600186480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A016116 n) (A027907 n) : ℝ)

end

end A059781.P12969624144600186480

/-! ## A059781.P10715649578317425289

`A135523(3*A027907(n))`
-/

namespace A059781.P10715649578317425289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (3 * A027907 n).toNat

end

end A059781.P10715649578317425289

/-! ## A059781.P6378156034467815975

`A007814(A027907(n))`
-/

namespace A059781.P6378156034467815975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A027907 n).toNat

end

end A059781.P6378156034467815975

/-! ## A059781.P7681535848606739378

`A089263(6*A027907(n))`
-/

namespace A059781.P7681535848606739378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (6 * A027907 n).toNat

end

end A059781.P7681535848606739378

/-! ## A059781.P9230680222242845786

`A001511(A027907(n))-A001511(2*n+1)`
-/

namespace A059781.P9230680222242845786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A027907 n).toNat - A001511 (2 * n + 1)

end

end A059781.P9230680222242845786

/-! ## A059781.P10030245260377220298

`A001511(A027907(n))-A000010(ceil(1/(n+1)))`
-/

namespace A059781.P10030245260377220298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A027907 n).toNat - A000010 ⌈1 / (n + 1 : ℚ)⌉.toNat

end

end A059781.P10030245260377220298

/-! ## A059781.P1150572262350096635

`A001511(A027907(n))-A133819(A000124(n))`
-/

namespace A059781.P1150572262350096635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A027907 n).toNat - A133819 (A000124 n).toNat

end

end A059781.P1150572262350096635

/-! ## A059781.P5506329284752215440

`A008836(A158075(n+1))+A001511(A027907(n))`
-/

namespace A059781.P5506329284752215440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A158075 (n + 1)).toNat + A001511 (A027907 n).toNat

end

end A059781.P5506329284752215440

/-! ## A059781.P13124442877875181463

`A136480(2*A027907(n))-1`
-/

namespace A059781.P13124442877875181463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * A027907 n).toNat - 1

end

end A059781.P13124442877875181463

/-! ## A059781.P16122707948667720507

`A001511(A027907(n))-A027907(n²)`
-/

namespace A059781.P16122707948667720507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A027907 n).toNat - A027907 (n ^ 2)

end

end A059781.P16122707948667720507

/-!
# A059782: Triangle T(n,k) giving exponent of power of 3 dividing entry (n,k) of trinomial triangle A027907.

The programs for A059782, there is no canonical definition to state claims against.
-/

/-! ## A059782.P5280093142888860747

`val(A027907(n), 3)`
-/

namespace A059782.P5280093142888860747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A027907 n).toNat 3

end

end A059782.P5280093142888860747

/-! ## A059782.P8743660741456020861

`val(A169623(A161983(n)), 3)`
-/

namespace A059782.P8743660741456020861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A169623 (A161983 n).toNat).toNat 3

end

end A059782.P8743660741456020861

/-! ## A059782.P2361457634709101173

`val(A169623(A316670(n+1)), 3)`
-/

namespace A059782.P2361457634709101173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A169623 (A316670 (n + 1)).toNat).toNat 3

end

end A059782.P2361457634709101173

/-! ## A059782.P8600044507335687561

`val(A025564(n)+A025177(n), 3)`
-/

namespace A059782.P8600044507335687561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025564 n + A025177 n).toNat 3

end

end A059782.P8600044507335687561

/-! ## A059782.P14765276542216616948

`A001222(gcd(A027907(n), A098355(n)))`
-/

namespace A059782.P14765276542216616948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A027907 n) (A098355 n))

end

end A059782.P14765276542216616948

/-! ## A059782.P10679788445672542069

`val(A169623(A116942(2*n)), 3)`
-/

namespace A059782.P10679788445672542069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A169623 (A116942 (2 * n)).toNat).toNat 3

end

end A059782.P10679788445672542069

/-! ## A059782.P6421510494106941731

`val(A169623(A316965(n)+1), 3)`
-/

namespace A059782.P6421510494106941731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A169623 (A316965 n + 1).toNat).toNat 3

end

end A059782.P6421510494106941731

/-! ## A059782.P7180630002173074625

`A007949(A027907(n))`
-/

namespace A059782.P7180630002173074625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A027907 n).toNat

end

end A059782.P7180630002173074625

/-!
# A059784: a(n+1) = nextprime(a(n)^2). Smallest prime following the square of previous prime. Initial value = 2.

The programs for A059784, there is no canonical definition to state claims against.
-/

/-! ## A059784.P14668892434659145111

`A286682(n)+a(n-1)²` with `a(0)=2`
-/

namespace A059784.P14668892434659145111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A286682 n + a (n - 1) ^ 2

end

end A059784.P14668892434659145111

/-!
# A059785: a(n+1) = prevprime(a(n)^2). Largest prime prior to the square of previous prime. Initial value = 2.

The programs for A059785, there is no canonical definition to state claims against.
-/

/-! ## A059785.P15396018141956612506

`A053001(a(n-1))` with `a(0)=2`
-/

namespace A059785.P15396018141956612506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A053001 (a (n - 1)).toNat

end

end A059785.P15396018141956612506

/-! ## A059785.P10019631556660540260

`A113425(a(n-1))` with `a(0)=2`
-/

namespace A059785.P10019631556660540260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A113425 (a (n - 1)).toNat

end

end A059785.P10019631556660540260

/-!
# A059786: Smallest prime after 2*(n-th prime).

The programs for A059786, the canonical program `A059786.P8715638951535635433` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059786 has offset 1).

The definition of A059786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059786.P12410491326356906756

`A060271(n+1)+A059788(n+1)`
-/

namespace A059786.P12410491326356906756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060271 (n + 1) + A059788 (n + 1)

end

end A059786.P12410491326356906756

namespace A059786

/-- `A060271(n+1)+A059788(n+1)` -/
def P12410491326356906756.Spec : Prop :=
  ∀ n, P12410491326356906756.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P4384068339282389062

`A100484(n+1)+A059787(n+1)`
-/

namespace A059786.P4384068339282389062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A059787 (n + 1)

end

end A059786.P4384068339282389062

namespace A059786

/-- `A100484(n+1)+A059787(n+1)` -/
def P4384068339282389062.Spec : Prop :=
  ∀ n, P4384068339282389062.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P8715638951535635433

`A045344(A020900(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059786

/-- `A045344(A020900(n+1))` -/
def P8715638951535635433.Spec : Prop :=
  ∀ n, P8715638951535635433.a n = A059786 (n + 1)

theorem P8715638951535635433.correct : P8715638951535635433.Spec := by
  intro n
  simp only [A059786, Nat.add_sub_cancel]

end A059786

/-! ## A059786.P365152541589910060

`A000040(A020900(n+1)+1)`
-/

namespace A059786.P365152541589910060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A020900 (n + 1) + 1).toNat

end

end A059786.P365152541589910060

namespace A059786

/-- `A000040(A020900(n+1)+1)` -/
def P365152541589910060.Spec : Prop :=
  ∀ n, P365152541589910060.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P5543368571708501800

`A000040(A298862(n+1)-n)`
-/

namespace A059786.P5543368571708501800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A298862 (n + 1) - (n : ℤ)).toNat

end

end A059786.P5543368571708501800

namespace A059786

/-- `A000040(A298862(n+1)-n)` -/
def P5543368571708501800.Spec : Prop :=
  ∀ n, P5543368571708501800.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P15735866806893522626

`A000040(A063124(n+1)+1+n)`
-/

namespace A059786.P15735866806893522626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A063124 (n + 1) + 1 + (n : ℤ)).toNat

end

end A059786.P15735866806893522626

namespace A059786

/-- `A000040(A063124(n+1)+1+n)` -/
def P15735866806893522626.Spec : Prop :=
  ∀ n, P15735866806893522626.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P16444443608301837843

`A000040(A070046(n+1)+2+n)`
-/

namespace A059786.P16444443608301837843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A070046 (n + 1) + 2 + (n : ℤ)).toNat

end

end A059786.P16444443608301837843

namespace A059786

/-- `A000040(A070046(n+1)+2+n)` -/
def P16444443608301837843.Spec : Prop :=
  ∀ n, P16444443608301837843.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P3422601763639311128

`A008578(A020900(n+1)+2)`
-/

namespace A059786.P3422601763639311128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A020900 (n + 1) + 2).toNat

end

end A059786.P3422601763639311128

namespace A059786

/-- `A008578(A020900(n+1)+2)` -/
def P3422601763639311128.Spec : Prop :=
  ∀ n, P3422601763639311128.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P13885925200271778453

`A151800(A059788(n+1))`
-/

namespace A059786.P13885925200271778453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A059788 (n + 1)).toNat

end

end A059786.P13885925200271778453

namespace A059786

/-- `A151800(A059788(n+1))` -/
def P13885925200271778453.Spec : Prop :=
  ∀ n, P13885925200271778453.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P17791753033830347020

`A151800(A100484(n+1))`
-/

namespace A059786.P17791753033830347020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A100484 (n + 1)).toNat

end

end A059786.P17791753033830347020

namespace A059786

/-- `A151800(A100484(n+1))` -/
def P17791753033830347020.Spec : Prop :=
  ∀ n, P17791753033830347020.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P2737371323336191528

`A151800(Δ[2*A007504(n)])`
-/

namespace A059786.P2737371323336191528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (n + 1) - f1 n).toNat

end

end A059786.P2737371323336191528

namespace A059786

/-- `A151800(Δ[2*A007504(n)])` -/
def P2737371323336191528.Spec : Prop :=
  ∀ n, P2737371323336191528.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P8734187403984779504

`A151800(A001747(n+2)-1)`
-/

namespace A059786.P8734187403984779504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001747 (n + 2) - 1).toNat

end

end A059786.P8734187403984779504

namespace A059786

/-- `A151800(A001747(n+2)-1)` -/
def P8734187403984779504.Spec : Prop :=
  ∀ n, P8734187403984779504.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P497917660638143211

`A151800(2*A000040(n+1))`
-/

namespace A059786.P497917660638143211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * A000040 (n + 1)).toNat

end

end A059786.P497917660638143211

namespace A059786

/-- `A151800(2*A000040(n+1))` -/
def P497917660638143211.Spec : Prop :=
  ∀ n, P497917660638143211.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P14199240818624276909

`A151800(2*A008578(n+2))`
-/

namespace A059786.P14199240818624276909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * A008578 (n + 2)).toNat

end

end A059786.P14199240818624276909

namespace A059786

/-- `A151800(2*A008578(n+2))` -/
def P14199240818624276909.Spec : Prop :=
  ∀ n, P14199240818624276909.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P2515697666549049049

`A151800(record[2*A006530(n+2)])`
-/

namespace A059786.P2515697666549049049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059786.P2515697666549049049

namespace A059786

/-- `A151800(record[2*A006530(n+2)])` -/
def P2515697666549049049.Spec : Prop :=
  ∀ n, P2515697666549049049.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P2254384496273102436

`A151800(record[2*A020639(n+2)])`
-/

namespace A059786.P2254384496273102436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059786.P2254384496273102436

namespace A059786

/-- `A151800(record[2*A020639(n+2)])` -/
def P2254384496273102436.Spec : Prop :=
  ∀ n, P2254384496273102436.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P14382891562388844326

`A151800(2*(eq[n+2, A000203(n+1)]+1))`
-/

namespace A059786.P14382891562388844326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A059786.P14382891562388844326

namespace A059786

/-- `A151800(2*(eq[n+2, A000203(n+1)]+1))` -/
def P14382891562388844326.Spec : Prop :=
  ∀ n, P14382891562388844326.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P8980521936225849267

`A151800(A000040(n+1)+A000040(n+1))`
-/

namespace A059786.P8980521936225849267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A059786.P8980521936225849267

namespace A059786

/-- `A151800(A000040(n+1)+A000040(n+1))` -/
def P8980521936225849267.Spec : Prop :=
  ∀ n, P8980521936225849267.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P3897215565974672264

`A151800(2*(lt[A000010(n+1), A020639(n+1)]+1))`
-/

namespace A059786.P3897215565974672264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1))

end

end A059786.P3897215565974672264

namespace A059786

/-- `A151800(2*(lt[A000010(n+1), A020639(n+1)]+1))` -/
def P3897215565974672264.Spec : Prop :=
  ∀ n, P3897215565974672264.a n = A059786 (n + 1)

end A059786

/-! ## A059786.P187193491847582788

`A151800(2*A067747(2*n+1))`
-/

namespace A059786.P187193491847582788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * A067747 (2 * n + 1)).toNat

end

end A059786.P187193491847582788

namespace A059786

/-- `A151800(2*A067747(2*n+1))` -/
def P187193491847582788.Spec : Prop :=
  ∀ n, P187193491847582788.a n = A059786 (n + 1)

end A059786

/-!
# A059787: Distance between 2*(n-th prime) and next prime.

The programs for A059787, the canonical program `A059787.P10805631217386349978` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059787 has offset 1).

The definition of A059787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059787.P13131537037630039168

`A060271(n+1)-A059789(n)`
-/

namespace A059787.P13131537037630039168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060271 (n + 1) - A059789 n

end

end A059787.P13131537037630039168

namespace A059787

/-- `A060271(n+1)-A059789(n)` -/
def P13131537037630039168.Spec : Prop :=
  ∀ n, P13131537037630039168.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P10805631217386349978

`A059786(n+1)-A100484(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059787

/-- `A059786(n+1)-A100484(n+1)` -/
def P10805631217386349978.Spec : Prop :=
  ∀ n, P10805631217386349978.a n = A059787 (n + 1)

theorem P10805631217386349978.correct : P10805631217386349978.Spec := by
  intro n
  simp only [A059787, Nat.add_sub_cancel]

end A059787

/-! ## A059787.P17054904345342112787

`A059786(n+1)%A000040(n+1)`
-/

namespace A059787.P17054904345342112787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059786 (n + 1)) (A000040 (n + 1))

end

end A059787.P17054904345342112787

namespace A059787

/-- `A059786(n+1)%A000040(n+1)` -/
def P17054904345342112787.Spec : Prop :=
  ∀ n, P17054904345342112787.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P7977041024901645377

`A000040(n+1)+A059786(n+1)-A001748(n+1)`
-/

namespace A059787.P7977041024901645377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A059786 (n + 1) - A001748 (n + 1))

end

end A059787.P7977041024901645377

namespace A059787

/-- `A000040(n+1)+A059786(n+1)-A001748(n+1)` -/
def P7977041024901645377.Spec : Prop :=
  ∀ n, P7977041024901645377.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P5849231593591529806

`A065091(A020900(n+1))-A100484(n+1)`
-/

namespace A059787.P5849231593591529806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A020900 (n + 1)).toNat - A100484 (n + 1)

end

end A059787.P5849231593591529806

namespace A059787

/-- `A065091(A020900(n+1))-A100484(n+1)` -/
def P5849231593591529806.Spec : Prop :=
  ∀ n, P5849231593591529806.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P1984638213317959073

`A151800(A100484(n+1))%A000040(n+1)`
-/

namespace A059787.P1984638213317959073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A100484 (n + 1)).toNat) (A000040 (n + 1))

end

end A059787.P1984638213317959073

namespace A059787

/-- `A151800(A100484(n+1))%A000040(n+1)` -/
def P1984638213317959073.Spec : Prop :=
  ∀ n, P1984638213317959073.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P11758996369693496838

`A060266(p?[xor(1, n)])`
-/

namespace A059787.P11758996369693496838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A059787.P11758996369693496838

namespace A059787

/-- `A060266(p?[xor(1, n)])` -/
def P11758996369693496838.Spec : Prop :=
  ∀ n, P11758996369693496838.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P7738229674806740769

`A060266(A000040(n+1))`
-/

namespace A059787.P7738229674806740769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A000040 (n + 1)).toNat

end

end A059787.P7738229674806740769

namespace A059787

/-- `A060266(A000040(n+1))` -/
def P7738229674806740769.Spec : Prop :=
  ∀ n, P7738229674806740769.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P5361644810721294042

`A060266(A006005(n+1))`
-/

namespace A059787.P5361644810721294042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A006005 (n + 1)).toNat

end

end A059787.P5361644810721294042

namespace A059787

/-- `A060266(A006005(n+1))` -/
def P5361644810721294042.Spec : Prop :=
  ∀ n, P5361644810721294042.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P10613933283052652823

`A060266(A161847(n+1))`
-/

namespace A059787.P10613933283052652823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A161847 (n + 1)).toNat

end

end A059787.P10613933283052652823

namespace A059787

/-- `A060266(A161847(n+1))` -/
def P10613933283052652823.Spec : Prop :=
  ∀ n, P10613933283052652823.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P7469556848710766585

`A060266(A008578(n+2))`
-/

namespace A059787.P7469556848710766585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A008578 (n + 2)).toNat

end

end A059787.P7469556848710766585

namespace A059787

/-- `A060266(A008578(n+2))` -/
def P7469556848710766585.Spec : Prop :=
  ∀ n, P7469556848710766585.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P17431452395316558613

`A060266(A075643(n+2))`
-/

namespace A059787.P17431452395316558613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A075643 (n + 2)).toNat

end

end A059787.P17431452395316558613

namespace A059787

/-- `A060266(A075643(n+2))` -/
def P17431452395316558613.Spec : Prop :=
  ∀ n, P17431452395316558613.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P291977273740520598

`A060266(A116974(n+2))`
-/

namespace A059787.P291977273740520598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A116974 (n + 2)).toNat

end

end A059787.P291977273740520598

namespace A059787

/-- `A060266(A116974(n+2))` -/
def P291977273740520598.Spec : Prop :=
  ∀ n, P291977273740520598.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P15198846784798469989

`A060266(record[A006530(n+2)])`
-/

namespace A059787.P15198846784798469989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059787.P15198846784798469989

namespace A059787

/-- `A060266(record[A006530(n+2)])` -/
def P15198846784798469989.Spec : Prop :=
  ∀ n, P15198846784798469989.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P16224606018121114370

`A060266(record[A014963(n+2)])`
-/

namespace A059787.P16224606018121114370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059787.P16224606018121114370

namespace A059787

/-- `A060266(record[A014963(n+2)])` -/
def P16224606018121114370.Spec : Prop :=
  ∀ n, P16224606018121114370.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P8319017152174382615

`A060266(record[A020639(n+2)])`
-/

namespace A059787.P8319017152174382615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059787.P8319017152174382615

namespace A059787

/-- `A060266(record[A020639(n+2)])` -/
def P8319017152174382615.Spec : Prop :=
  ∀ n, P8319017152174382615.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P426951261739704657

`A060266(A100484(n+1)/2)`
-/

namespace A059787.P426951261739704657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A059787.P426951261739704657

namespace A059787

/-- `A060266(A100484(n+1)/2)` -/
def P426951261739704657.Spec : Prop :=
  ∀ n, P426951261739704657.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P11271629032220136780

`A060266(A001747(n+2)/2)`
-/

namespace A059787.P11271629032220136780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A059787.P11271629032220136780

namespace A059787

/-- `A060266(A001747(n+2)/2)` -/
def P11271629032220136780.Spec : Prop :=
  ∀ n, P11271629032220136780.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P13309560340563974779

`A060266(A006530(A001749(n+1)))`
-/

namespace A059787.P13309560340563974779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A006530 (A001749 (n + 1)).toNat).toNat

end

end A059787.P13309560340563974779

namespace A059787

/-- `A060266(A006530(A001749(n+1)))` -/
def P13309560340563974779.Spec : Prop :=
  ∀ n, P13309560340563974779.a n = A059787 (n + 1)

end A059787

/-! ## A059787.P12893007064573099000

`A060266(A006530(A001750(n+1)))`
-/

namespace A059787.P12893007064573099000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A006530 (A001750 (n + 1)).toNat).toNat

end

end A059787.P12893007064573099000

namespace A059787

/-- `A060266(A006530(A001750(n+1)))` -/
def P12893007064573099000.Spec : Prop :=
  ∀ n, P12893007064573099000.a n = A059787 (n + 1)

end A059787

/-!
# A059788: a(n) = largest prime < 2*prime(n).

The programs for A059788, the canonical program `A059788.P7916108785684957971` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059788 has offset 1).

The definition of A059788 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, A100484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059788.P7916108785684957971

`A007917(A100484(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059788

/-- `A007917(A100484(n+1))` -/
def P7916108785684957971.Spec : Prop :=
  ∀ n, P7916108785684957971.a n = A059788 (n + 1)

theorem P7916108785684957971.correct : P7916108785684957971.Spec := by
  intro n
  simp only [A059788, Nat.add_sub_cancel]

end A059788

/-! ## A059788.P15150331949472326609

`A100484(n+1)-A059789(n)`
-/

namespace A059788.P15150331949472326609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A059789 n

end

end A059788.P15150331949472326609

namespace A059788

/-- `A100484(n+1)-A059789(n)` -/
def P15150331949472326609.Spec : Prop :=
  ∀ n, P15150331949472326609.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P13212155778437985687

`A059786(n+1)-A060271(n+1)`
-/

namespace A059788.P13212155778437985687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059786 (n + 1) - A060271 (n + 1)

end

end A059788.P13212155778437985687

namespace A059788

/-- `A059786(n+1)-A060271(n+1)` -/
def P13212155778437985687.Spec : Prop :=
  ∀ n, P13212155778437985687.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P10039921731127217333

`A065091(A020900(n+1)-1)`
-/

namespace A059788.P10039921731127217333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A020900 (n + 1) - 1).toNat

end

end A059788.P10039921731127217333

namespace A059788

/-- `A065091(A020900(n+1)-1)` -/
def P10039921731127217333.Spec : Prop :=
  ∀ n, P10039921731127217333.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P17766818449638094675

`A000040(A020900(n+1))`
-/

namespace A059788.P17766818449638094675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A020900 (n + 1)).toNat

end

end A059788.P17766818449638094675

namespace A059788

/-- `A000040(A020900(n+1))` -/
def P17766818449638094675.Spec : Prop :=
  ∀ n, P17766818449638094675.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P10408926231420220692

`A000040(A063124(n+1)+n)`
-/

namespace A059788.P10408926231420220692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A063124 (n + 1) + (n : ℤ)).toNat

end

end A059788.P10408926231420220692

namespace A059788

/-- `A000040(A063124(n+1)+n)` -/
def P10408926231420220692.Spec : Prop :=
  ∀ n, P10408926231420220692.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P17228903046530964495

`A000040(A070046(n+1)+1+n)`
-/

namespace A059788.P17228903046530964495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A070046 (n + 1) + 1 + (n : ℤ)).toNat

end

end A059788.P17228903046530964495

namespace A059788

/-- `A000040(A070046(n+1)+1+n)` -/
def P17228903046530964495.Spec : Prop :=
  ∀ n, P17228903046530964495.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P2764339862079613378

`A000040(A298862(n+1)-(n+1))`
-/

namespace A059788.P2764339862079613378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A298862 (n + 1) - (n + 1 : ℤ)).toNat

end

end A059788.P2764339862079613378

namespace A059788

/-- `A000040(A298862(n+1)-(n+1))` -/
def P2764339862079613378.Spec : Prop :=
  ∀ n, P2764339862079613378.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P5341891672380954523

`A000040(2*n+1-A331677(n+1))`
-/

namespace A059788.P5341891672380954523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n + 1 : ℤ) - A331677 (n + 1)).toNat

end

end A059788.P5341891672380954523

namespace A059788

/-- `A000040(2*n+1-A331677(n+1))` -/
def P5341891672380954523.Spec : Prop :=
  ∀ n, P5341891672380954523.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P12832979846107436691

`A000040(A000040(n+1)-A246514(n+1)+n)`
-/

namespace A059788.P12832979846107436691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1) - A246514 (n + 1) + (n : ℤ)).toNat

end

end A059788.P12832979846107436691

namespace A059788

/-- `A000040(A000040(n+1)-A246514(n+1)+n)` -/
def P12832979846107436691.Spec : Prop :=
  ∀ n, P12832979846107436691.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P8425835484728388293

`A008578(A020900(n+1)+1)`
-/

namespace A059788.P8425835484728388293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A020900 (n + 1) + 1).toNat

end

end A059788.P8425835484728388293

namespace A059788

/-- `A008578(A020900(n+1)+1)` -/
def P8425835484728388293.Spec : Prop :=
  ∀ n, P8425835484728388293.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P679632163214447470

`A008578(A070046(n+1)+n+2)`
-/

namespace A059788.P679632163214447470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A070046 (n + 1) + (n + 2 : ℤ)).toNat

end

end A059788.P679632163214447470

namespace A059788

/-- `A008578(A070046(n+1)+n+2)` -/
def P679632163214447470.Spec : Prop :=
  ∀ n, P679632163214447470.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P13865701743459862517

`A000040(A099801(A006093(n+1)))`
-/

namespace A059788.P13865701743459862517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099801 (A006093 (n + 1)).toNat).toNat

end

end A059788.P13865701743459862517

namespace A059788

/-- `A000040(A099801(A006093(n+1)))` -/
def P13865701743459862517.Spec : Prop :=
  ∀ n, P13865701743459862517.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P6826899782206238444

`A000040(A000720(A001747(n+2)))`
-/

namespace A059788.P6826899782206238444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A001747 (n + 2)).toNat).toNat

end

end A059788.P6826899782206238444

namespace A059788

/-- `A000040(A000720(A001747(n+2)))` -/
def P6826899782206238444.Spec : Prop :=
  ∀ n, P6826899782206238444.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P6707123814776575658

`A000040(A000720(A076274(n+2)))`
-/

namespace A059788.P6707123814776575658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A076274 (n + 2)).toNat).toNat

end

end A059788.P6707123814776575658

namespace A059788

/-- `A000040(A000720(A076274(n+2)))` -/
def P6707123814776575658.Spec : Prop :=
  ∀ n, P6707123814776575658.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P5769438363957471689

`A000040(A099801(A000040(n+1)-1))`
-/

namespace A059788.P5769438363957471689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099801 (A000040 (n + 1) - 1).toNat).toNat

end

end A059788.P5769438363957471689

namespace A059788

/-- `A000040(A099801(A000040(n+1)-1))` -/
def P5769438363957471689.Spec : Prop :=
  ∀ n, P5769438363957471689.a n = A059788 (n + 1)

end A059788

/-! ## A059788.P14641619280278050090

`A000040(A000720(2*A000040(n+1)))`
-/

namespace A059788.P14641619280278050090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (2 * A000040 (n + 1)).toNat).toNat

end

end A059788.P14641619280278050090

namespace A059788

/-- `A000040(A000720(2*A000040(n+1)))` -/
def P14641619280278050090.Spec : Prop :=
  ∀ n, P14641619280278050090.a n = A059788 (n + 1)

end A059788

/-!
# A059789: Distance of 2*prime(n) from previous prime.

The programs for A059789, the canonical program `A059789.P935066988113703653` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059789 has offset 0).

The definition of A059789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059789.P9702671069679894887

`A060271(n+1)-A059787(n+1)`
-/

namespace A059789.P9702671069679894887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060271 (n + 1) - A059787 (n + 1)

end

end A059789.P9702671069679894887

namespace A059789

/-- `A060271(n+1)-A059787(n+1)` -/
def P9702671069679894887.Spec : Prop :=
  ∀ n, P9702671069679894887.a n = A059789 n

end A059789

/-! ## A059789.P935066988113703653

`A100484(n+1)-A059788(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059789

/-- `A100484(n+1)-A059788(n+1)` -/
def P935066988113703653.Spec : Prop :=
  ∀ n, P935066988113703653.a n = A059789 n

theorem P935066988113703653.correct : P935066988113703653.Spec := by
  intro n
  simp only [A059789]

end A059789

/-! ## A059789.P4957914681193630327

`2*A000040(n+1)-A059788(n+1)`
-/

namespace A059789.P4957914681193630327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A059788 (n + 1)

end

end A059789.P4957914681193630327

namespace A059789

/-- `2*A000040(n+1)-A059788(n+1)` -/
def P4957914681193630327.Spec : Prop :=
  ∀ n, P4957914681193630327.a n = A059789 n

end A059789

/-! ## A059789.P1621004592699768397

`A001747(n+2)-A059788(n+1)`
-/

namespace A059789.P1621004592699768397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) - A059788 (n + 1)

end

end A059789.P1621004592699768397

namespace A059789

/-- `A001747(n+2)-A059788(n+1)` -/
def P1621004592699768397.Spec : Prop :=
  ∀ n, P1621004592699768397.a n = A059789 n

end A059789

/-! ## A059789.P17417280830942892395

`A008578(n+2)+A008578(n+2)-A059788(n+1)`
-/

namespace A059789.P17417280830942892395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + (A008578 (n + 2) - A059788 (n + 1))

end

end A059789.P17417280830942892395

namespace A059789

/-- `A008578(n+2)+A008578(n+2)-A059788(n+1)` -/
def P17417280830942892395.Spec : Prop :=
  ∀ n, P17417280830942892395.a n = A059789 n

end A059789

/-! ## A059789.P3574329241655772638

`A100484(n+1)-A065091(A020900(n+1)-1)`
-/

namespace A059789.P3574329241655772638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A065091 (A020900 (n + 1) - 1).toNat

end

end A059789.P3574329241655772638

namespace A059789

/-- `A100484(n+1)-A065091(A020900(n+1)-1)` -/
def P3574329241655772638.Spec : Prop :=
  ∀ n, P3574329241655772638.a n = A059789 n

end A059789

/-! ## A059789.P259697285942068679

`A100484(n+1)-A000040(A020900(n+1))`
-/

namespace A059789.P259697285942068679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A000040 (A020900 (n + 1)).toNat

end

end A059789.P259697285942068679

namespace A059789

/-- `A100484(n+1)-A000040(A020900(n+1))` -/
def P259697285942068679.Spec : Prop :=
  ∀ n, P259697285942068679.a n = A059789 n

end A059789

/-! ## A059789.P12885848251993064571

`2*A000040(n+1)-A000040(A020900(n+1))`
-/

namespace A059789.P12885848251993064571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A000040 (A020900 (n + 1)).toNat

end

end A059789.P12885848251993064571

namespace A059789

/-- `2*A000040(n+1)-A000040(A020900(n+1))` -/
def P12885848251993064571.Spec : Prop :=
  ∀ n, P12885848251993064571.a n = A059789 n

end A059789

/-! ## A059789.P17724655653421576590

`A175851(A076274(n+2))`
-/

namespace A059789.P17724655653421576590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A076274 (n + 2)).toNat

end

end A059789.P17724655653421576590

namespace A059789

/-- `A175851(A076274(n+2))` -/
def P17724655653421576590.Spec : Prop :=
  ∀ n, P17724655653421576590.a n = A059789 n

end A059789

/-! ## A059789.P1018309243547784683

`A305806(2*A000040(n+1))`
-/

namespace A059789.P1018309243547784683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305806 (2 * A000040 (n + 1)).toNat

end

end A059789.P1018309243547784683

namespace A059789

/-- `A305806(2*A000040(n+1))` -/
def P1018309243547784683.Spec : Prop :=
  ∀ n, P1018309243547784683.a n = A059789 n

end A059789

/-! ## A059789.P9718270313137943933

`A305806(2*A008578(n+2))`
-/

namespace A059789.P9718270313137943933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305806 (2 * A008578 (n + 2)).toNat

end

end A059789.P9718270313137943933

namespace A059789

/-- `A305806(2*A008578(n+2))` -/
def P9718270313137943933.Spec : Prop :=
  ∀ n, P9718270313137943933.a n = A059789 n

end A059789

/-! ## A059789.P13427353385004066165

`A175851(2*A000040(n+1)-1)`
-/

namespace A059789.P13427353385004066165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * A000040 (n + 1) - 1).toNat

end

end A059789.P13427353385004066165

namespace A059789

/-- `A175851(2*A000040(n+1)-1)` -/
def P13427353385004066165.Spec : Prop :=
  ∀ n, P13427353385004066165.a n = A059789 n

end A059789

/-! ## A059789.P2985906902022353026

`A175851(A000040(n+1)+A000040(n+1)-1)`
-/

namespace A059789.P2985906902022353026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A000040 (n + 1) + (A000040 (n + 1) - 1)).toNat

end

end A059789.P2985906902022353026

namespace A059789

/-- `A175851(A000040(n+1)+A000040(n+1)-1)` -/
def P2985906902022353026.Spec : Prop :=
  ∀ n, P2985906902022353026.a n = A059789 n

end A059789

/-! ## A059789.P17502439912395253873

`A049653(p?[xor(1, n)])`
-/

namespace A059789.P17502439912395253873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A059789.P17502439912395253873

namespace A059789

/-- `A049653(p?[xor(1, n)])` -/
def P17502439912395253873.Spec : Prop :=
  ∀ n, P17502439912395253873.a n = A059789 n

end A059789

/-! ## A059789.P9368697955677515717

`A049653(Δ[A007504(n)])`
-/

namespace A059789.P9368697955677515717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (f1 (n + 1) - f1 n).toNat

end

end A059789.P9368697955677515717

namespace A059789

/-- `A049653(Δ[A007504(n)])` -/
def P9368697955677515717.Spec : Prop :=
  ∀ n, P9368697955677515717.a n = A059789 n

end A059789

/-! ## A059789.P14082002323648015861

`A049653(A000040(n+1))`
-/

namespace A059789.P14082002323648015861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (A000040 (n + 1)).toNat

end

end A059789.P14082002323648015861

namespace A059789

/-- `A049653(A000040(n+1))` -/
def P14082002323648015861.Spec : Prop :=
  ∀ n, P14082002323648015861.a n = A059789 n

end A059789

/-! ## A059789.P11443259029042715232

`A238737(A006093(n+1))`
-/

namespace A059789.P11443259029042715232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 (A006093 (n + 1)).toNat

end

end A059789.P11443259029042715232

namespace A059789

/-- `A238737(A006093(n+1))` -/
def P11443259029042715232.Spec : Prop :=
  ∀ n, P11443259029042715232.a n = A059789 n

end A059789

/-! ## A059789.P14599276269479914803

`A238737(A039915(n+1))`
-/

namespace A059789.P14599276269479914803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 (A039915 (n + 1)).toNat

end

end A059789.P14599276269479914803

namespace A059789

/-- `A238737(A039915(n+1))` -/
def P14599276269479914803.Spec : Prop :=
  ∀ n, P14599276269479914803.a n = A059789 n

end A059789

/-! ## A059789.P5246198725987826364

`A238737(A156037(n+1))`
-/

namespace A059789.P5246198725987826364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 (A156037 (n + 1)).toNat

end

end A059789.P5246198725987826364

namespace A059789

/-- `A238737(A156037(n+1))` -/
def P5246198725987826364.Spec : Prop :=
  ∀ n, P5246198725987826364.a n = A059789 n

end A059789

/-! ## A059789.P14477482917276527177

`A049653(A008578(n+2))`
-/

namespace A059789.P14477482917276527177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (A008578 (n + 2)).toNat

end

end A059789.P14477482917276527177

namespace A059789

/-- `A049653(A008578(n+2))` -/
def P14477482917276527177.Spec : Prop :=
  ∀ n, P14477482917276527177.a n = A059789 n

end A059789

/-!
# A059790: Distance between 2*(n-th prime) and nearest prime.

The programs for A059790, the canonical program `A059790.P12657176247631993408` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059790 has offset 1).

The definition of A059790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 748 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059790.P1903714696605532350

`A060268(A000040(n+1))`
-/

namespace A059790.P1903714696605532350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060268 (A000040 (n + 1)).toNat

end

end A059790.P1903714696605532350

namespace A059790

/-- `A060268(A000040(n+1))` -/
def P1903714696605532350.Spec : Prop :=
  ∀ n, P1903714696605532350.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P9538672562030036130

`A060268(A063884(n+1))`
-/

namespace A059790.P9538672562030036130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060268 (A063884 (n + 1)).toNat

end

end A059790.P9538672562030036130

namespace A059790

/-- `A060268(A063884(n+1))` -/
def P9538672562030036130.Spec : Prop :=
  ∀ n, P9538672562030036130.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P8424507125326562254

`A060268(A063904(n+1))`
-/

namespace A059790.P8424507125326562254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060268 (A063904 (n + 1)).toNat

end

end A059790.P8424507125326562254

namespace A059790

/-- `A060268(A063904(n+1))` -/
def P8424507125326562254.Spec : Prop :=
  ∀ n, P8424507125326562254.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P294442460201072229

`A060268(A008578(n+2))`
-/

namespace A059790.P294442460201072229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060268 (A008578 (n + 2)).toNat

end

end A059790.P294442460201072229

namespace A059790

/-- `A060268(A008578(n+2))` -/
def P294442460201072229.Spec : Prop :=
  ∀ n, P294442460201072229.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P13241177988936515982

`A060268(record[A006530(n+2)])`
-/

namespace A059790.P13241177988936515982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060268 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059790.P13241177988936515982

namespace A059790

/-- `A060268(record[A006530(n+2)])` -/
def P13241177988936515982.Spec : Prop :=
  ∀ n, P13241177988936515982.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P1386822955852721093

`A060268(record[A020639(n+2)])`
-/

namespace A059790.P1386822955852721093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060268 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059790.P1386822955852721093

namespace A059790

/-- `A060268(record[A020639(n+2)])` -/
def P1386822955852721093.Spec : Prop :=
  ∀ n, P1386822955852721093.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P8666308348382886946

`A060268(A060308(A005097(n+1)))`
-/

namespace A059790.P8666308348382886946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060268 (A060308 (A005097 (n + 1)).toNat).toNat

end

end A059790.P8666308348382886946

namespace A059790

/-- `A060268(A060308(A005097(n+1)))` -/
def P8666308348382886946.Spec : Prop :=
  ∀ n, P8666308348382886946.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P12657176247631993408

`A053543(A065897(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A059790

/-- `A053543(A065897(n+1))` -/
def P12657176247631993408.Spec : Prop :=
  ∀ n, P12657176247631993408.a n = A059790 (n + 1)

theorem P12657176247631993408.correct : P12657176247631993408.Spec := by
  intro n
  simp only [A059790, Nat.add_sub_cancel]

end A059790

/-! ## A059790.P11962717205417423172

`A051700(2*p?[xor(1, n)])`
-/

namespace A059790.P11962717205417423172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A059790.P11962717205417423172

namespace A059790

/-- `A051700(2*p?[xor(1, n)])` -/
def P11962717205417423172.Spec : Prop :=
  ∀ n, P11962717205417423172.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P10307182683821295054

`A051699(A073582(n+1))`
-/

namespace A059790.P10307182683821295054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A073582 (n + 1)).toNat

end

end A059790.P10307182683821295054

namespace A059790

/-- `A051699(A073582(n+1))` -/
def P10307182683821295054.Spec : Prop :=
  ∀ n, P10307182683821295054.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P13010835938589929983

`A051699(A100484(n+1))`
-/

namespace A059790.P13010835938589929983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A100484 (n + 1)).toNat

end

end A059790.P13010835938589929983

namespace A059790

/-- `A051699(A100484(n+1))` -/
def P13010835938589929983.Spec : Prop :=
  ∀ n, P13010835938589929983.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P2410476623407755578

`A051699(A001747(n+2))`
-/

namespace A059790.P2410476623407755578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A001747 (n + 2)).toNat

end

end A059790.P2410476623407755578

namespace A059790

/-- `A051699(A001747(n+2))` -/
def P2410476623407755578.Spec : Prop :=
  ∀ n, P2410476623407755578.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P16167679844685619663

`A051700(A077017(n+2))`
-/

namespace A059790.P16167679844685619663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A077017 (n + 2)).toNat

end

end A059790.P16167679844685619663

namespace A059790

/-- `A051700(A077017(n+2))` -/
def P16167679844685619663.Spec : Prop :=
  ∀ n, P16167679844685619663.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P9012427641705088160

`A051699(A161344(n+2))`
-/

namespace A059790.P9012427641705088160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A161344 (n + 2)).toNat

end

end A059790.P9012427641705088160

namespace A059790

/-- `A051699(A161344(n+2))` -/
def P9012427641705088160.Spec : Prop :=
  ∀ n, P9012427641705088160.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P12590292393636941898

`A051700(Δ[2*A007504(n)])`
-/

namespace A059790.P12590292393636941898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (n + 1) - f1 n).toNat

end

end A059790.P12590292393636941898

namespace A059790

/-- `A051700(Δ[2*A007504(n)])` -/
def P12590292393636941898.Spec : Prop :=
  ∀ n, P12590292393636941898.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P12750725065058100928

`A051700(record[2*A051698(n)])`
-/

namespace A059790.P12750725065058100928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059790.P12750725065058100928

namespace A059790

/-- `A051700(record[2*A051698(n)])` -/
def P12750725065058100928.Spec : Prop :=
  ∀ n, P12750725065058100928.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P18212536193523512015

`A051700(record[2*A162753(n)])`
-/

namespace A059790.P18212536193523512015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059790.P18212536193523512015

namespace A059790

/-- `A051700(record[2*A162753(n)])` -/
def P18212536193523512015.Spec : Prop :=
  ∀ n, P18212536193523512015.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P16205093251332422260

`A051700(2*p?[A001057(n)])`
-/

namespace A059790.P16205093251332422260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A059790.P16205093251332422260

namespace A059790

/-- `A051700(2*p?[A001057(n)])` -/
def P16205093251332422260.Spec : Prop :=
  ∀ n, P16205093251332422260.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P11381923330267542241

`A051700(2*p?[A004442(n)])`
-/

namespace A059790.P11381923330267542241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A059790.P11381923330267542241

namespace A059790

/-- `A051700(2*p?[A004442(n)])` -/
def P11381923330267542241.Spec : Prop :=
  ∀ n, P11381923330267542241.a n = A059790 (n + 1)

end A059790

/-! ## A059790.P6712644623948506554

`A051700(2*p?[A006369(n)])`
-/

namespace A059790.P6712644623948506554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A059790.P6712644623948506554

namespace A059790

/-- `A051700(2*p?[A006369(n)])` -/
def P6712644623948506554.Spec : Prop :=
  ∀ n, P6712644623948506554.a n = A059790 (n + 1)

end A059790

/-!
# A059791: Numbers k such that floor(phi^k) is prime, where phi is the golden ratio.

The programs for A059791, there is no canonical definition to state claims against.
-/

/-! ## A059791.P133391515328384115

`∪[∑[A290820(3*n+4)], A006512(n+1)]`
-/

namespace A059791.P133391515328384115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290820 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A059791.P133391515328384115

/-! ## A059791.P9362914304540837628

`A292251(A079397(n))+A000040(n+1)`
-/

namespace A059791.P9362914304540837628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (A079397 n).toNat + A000040 (n + 1)

end

end A059791.P9362914304540837628

/-! ## A059791.P16330311679069559203

`A292251(A079397(n))+A109611(n+1)`
-/

namespace A059791.P16330311679069559203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (A079397 n).toNat + A109611 (n + 1)

end

end A059791.P16330311679069559203

/-! ## A059791.P16396020451496891915

`lt[A213657(n+1), A213615(A213621(n))]`
-/

namespace A059791.P16396020451496891915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213615 (A213621 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059791.P16396020451496891915

/-! ## A059791.P16828516366728769968

`A219528(n+1)+A025469(A176111(n+1))`
-/

namespace A059791.P16828516366728769968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219528 (n + 1) + A025469 (A176111 (n + 1)).toNat

end

end A059791.P16828516366728769968

/-!
# A059792: Numbers k such that floor(Pi^k) is prime.

The programs for A059792, there is no canonical definition to state claims against.
-/

/-! ## A059792.P8387331061050135908

`A065840(A033485(n+1))+∑{e}[n+1, #]`
-/

namespace A059792.P8387331061050135908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065840 (A033485 (n + 1)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A059792.P8387331061050135908

/-! ## A059792.P12911332356439096184

`record[A158973(A042829(n))/A195850(n)]`
-/

namespace A059792.P12911332356439096184
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158973 (A042829 n).toNat : ℚ) / (A195850 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059792.P12911332356439096184

/-!
# A059793: Stationary value of quotient in the continued fraction expansion of sqrt(prime) when the quotient-cycle-length = 1.

The programs for A059793, the canonical program `A059793.P6091692102446340852` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059793 has offset 0).

The definition of A059793 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059793.P6091692102446340852

`2*A005574(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A059793

/-- `2*A005574(n+1)` -/
def P6091692102446340852.Spec : Prop :=
  ∀ n, P6091692102446340852.a n = A059793 n

theorem P6091692102446340852.correct : P6091692102446340852.Spec := by
  intro n
  simp only [A059793]

end A059793

/-! ## A059793.P11709251395944853181

`2*sqrt(A075408(n+1))`
-/

namespace A059793.P11709251395944853181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A075408 (n + 1) : ℝ)

end

end A059793.P11709251395944853181

namespace A059793

/-- `2*sqrt(A075408(n+1))` -/
def P11709251395944853181.Spec : Prop :=
  ∀ n, P11709251395944853181.a n = (A059793 n : ℝ)

end A059793

/-! ## A059793.P10620228315717460111

`2*(A089593(n+1)+1)`
-/

namespace A059793.P10620228315717460111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089593 (n + 1) + 1)

end

end A059793.P10620228315717460111

namespace A059793

/-- `2*(A089593(n+1)+1)` -/
def P10620228315717460111.Spec : Prop :=
  ∀ n, P10620228315717460111.a n = A059793 n

end A059793

/-! ## A059793.P5374114411119208876

`2*(A090693(n+1)-1)`
-/

namespace A059793.P5374114411119208876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A090693 (n + 1) - 1)

end

end A059793.P5374114411119208876

namespace A059793

/-- `2*(A090693(n+1)-1)` -/
def P5374114411119208876.Spec : Prop :=
  ∀ n, P5374114411119208876.a n = A059793 n

end A059793

/-! ## A059793.P14914001690315416249

`floor(2*sqrt(A002496(n+1)))`
-/

namespace A059793.P14914001690315416249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A002496 (n + 1) : ℝ)⌋

end

end A059793.P14914001690315416249

namespace A059793

/-- `floor(2*sqrt(A002496(n+1)))` -/
def P14914001690315416249.Spec : Prop :=
  ∀ n, P14914001690315416249.a n = A059793 n

end A059793

/-! ## A059793.P13369898403710828089

`A090693(n+1)+A089593(n+1)`
-/

namespace A059793.P13369898403710828089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1) + A089593 (n + 1)

end

end A059793.P13369898403710828089

namespace A059793

/-- `A090693(n+1)+A089593(n+1)` -/
def P13369898403710828089.Spec : Prop :=
  ∀ n, P13369898403710828089.a n = A059793 n

end A059793

/-! ## A059793.P668531216619923640

`A090693(n+1)²-A002496(n+1)`
-/

namespace A059793.P668531216619923640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1) ^ 2 - A002496 (n + 1)

end

end A059793.P668531216619923640

namespace A059793

/-- `A090693(n+1)²-A002496(n+1)` -/
def P668531216619923640.Spec : Prop :=
  ∀ n, P668531216619923640.a n = A059793 n

end A059793

/-! ## A059793.P9694023131245564646

`A005574(n+1)+A089593(n+1)+1`
-/

namespace A059793.P9694023131245564646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) + (A089593 (n + 1) + 1)

end

end A059793.P9694023131245564646

namespace A059793

/-- `A005574(n+1)+A089593(n+1)+1` -/
def P9694023131245564646.Spec : Prop :=
  ∀ n, P9694023131245564646.a n = A059793 n

end A059793

/-! ## A059793.P14233455016850252730

`A005574(n+1)+A090693(n+1)-1`
-/

namespace A059793.P14233455016850252730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) + (A090693 (n + 1) - 1)

end

end A059793.P14233455016850252730

namespace A059793

/-- `A005574(n+1)+A090693(n+1)-1` -/
def P14233455016850252730.Spec : Prop :=
  ∀ n, P14233455016850252730.a n = A059793 n

end A059793

/-! ## A059793.P13102844677079263713

`A005574(A000027(n+1))+A005574(n+1)`
-/

namespace A059793.P13102844677079263713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (A000027 (n + 1)).toNat + A005574 (n + 1)

end

end A059793.P13102844677079263713

namespace A059793

/-- `A005574(A000027(n+1))+A005574(n+1)` -/
def P13102844677079263713.Spec : Prop :=
  ∀ n, P13102844677079263713.a n = A059793 n

end A059793

/-! ## A059793.P17396006167234141961

`A005574(n+1)+A382617(n+1)/A002496(n+1)`
-/

namespace A059793.P17396006167234141961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005574 (n + 1) : ℚ) + (A382617 (n + 1) : ℚ) / (A002496 (n + 1) : ℚ)

end

end A059793.P17396006167234141961

namespace A059793

/-- `A005574(n+1)+A382617(n+1)/A002496(n+1)` -/
def P17396006167234141961.Spec : Prop :=
  ∀ n, P17396006167234141961.a n = (A059793 n : ℚ)

end A059793

/-! ## A059793.P6088659058445916551

`2*floor(sqrt(A163588(n+2)))`
-/

namespace A059793.P6088659058445916551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A163588 (n + 2))

end

end A059793.P6088659058445916551

namespace A059793

/-- `2*floor(sqrt(A163588(n+2)))` -/
def P6088659058445916551.Spec : Prop :=
  ∀ n, P6088659058445916551.a n = A059793 n

end A059793

/-! ## A059793.P13492388183857312390

`A005574(n+1)+A005574(n+2)-A214516(n+1)`
-/

namespace A059793.P13492388183857312390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) + (A005574 (n + 2) - A214516 (n + 1))

end

end A059793.P13492388183857312390

namespace A059793

/-- `A005574(n+1)+A005574(n+2)-A214516(n+1)` -/
def P13492388183857312390.Spec : Prop :=
  ∀ n, P13492388183857312390.a n = A059793 n

end A059793

/-! ## A059793.P11196680922929268573

`A005574(n+1)+record[A005574(A054576(n+1))]`
-/

namespace A059793.P11196680922929268573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (A054576 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059793.P11196680922929268573

namespace A059793

/-- `A005574(n+1)+record[A005574(A054576(n+1))]` -/
def P11196680922929268573.Spec : Prop :=
  ∀ n, P11196680922929268573.a n = A059793 n

end A059793

/-! ## A059793.P6210463843432161131

`floor(2*sqrt(A168024(n)))`
-/

namespace A059793.P6210463843432161131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A168024 n : ℝ)⌋

end

end A059793.P6210463843432161131

namespace A059793

/-- `floor(2*sqrt(A168024(n)))` -/
def P6210463843432161131.Spec : Prop :=
  ∀ n, P6210463843432161131.a n = A059793 n

end A059793

/-! ## A059793.P13109125434863503052

`2*eq[1, A053000(n)]`
-/

namespace A059793.P13109125434863503052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059793.P13109125434863503052

namespace A059793

/-- `2*eq[1, A053000(n)]` -/
def P13109125434863503052.Spec : Prop :=
  ∀ n, (P13109125434863503052.a n : ℤ) = A059793 n

end A059793

/-! ## A059793.P6921979012399014466

`2*eq[1, A193330(n)]`
-/

namespace A059793.P6921979012399014466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059793.P6921979012399014466

namespace A059793

/-- `2*eq[1, A193330(n)]` -/
def P6921979012399014466.Spec : Prop :=
  ∀ n, (P6921979012399014466.a n : ℤ) = A059793 n

end A059793

/-! ## A059793.P5538159523198869677

`2*eq[1, A284376(n)]`
-/

namespace A059793.P5538159523198869677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059793.P5538159523198869677

namespace A059793

/-- `2*eq[1, A284376(n)]` -/
def P5538159523198869677.Spec : Prop :=
  ∀ n, (P5538159523198869677.a n : ℤ) = A059793 n

end A059793

/-! ## A059793.P5592524403654522959

`2*eq[2, A193432(n)]`
-/

namespace A059793.P5592524403654522959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059793.P5592524403654522959

namespace A059793

/-- `2*eq[2, A193432(n)]` -/
def P5592524403654522959.Spec : Prop :=
  ∀ n, (P5592524403654522959.a n : ℤ) = A059793 n

end A059793

/-! ## A059793.P7693009936647085900

`2*eq[2, A278162(n)]`
-/

namespace A059793.P7693009936647085900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059793.P7693009936647085900

namespace A059793

/-- `2*eq[2, A278162(n)]` -/
def P7693009936647085900.Spec : Prop :=
  ∀ n, (P7693009936647085900.a n : ℤ) = A059793 n

end A059793

/-!
# A059794: a(n) = n* - 2^(n-1), where n* (A003418) = least common multiple of the numbers [1,...,n].

The programs for A059794, the canonical program `A059794.P9663854077218559482` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059794 has offset 1).

The definition of A059794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059794.P9663854077218559482

`∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]-2^n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A059794

/-- `∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]-2^n` -/
def P9663854077218559482.Spec : Prop :=
  ∀ n, P9663854077218559482.a n = A059794 (n + 1)

theorem P9663854077218559482.correct : P9663854077218559482.Spec := by
  intro n
  simp only [A059794, Nat.add_sub_cancel]

end A059794

/-! ## A059794.P14799825301514452823

`Δ[A173185(n)-2^n]`
-/

namespace A059794.P14799825301514452823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059794.P14799825301514452823

namespace A059794

/-- `Δ[A173185(n)-2^n]` -/
def P14799825301514452823.Spec : Prop :=
  ∀ n, P14799825301514452823.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P15984642815831087361

`Δ[A236856(n)-2^n]`
-/

namespace A059794.P15984642815831087361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059794.P15984642815831087361

namespace A059794

/-- `Δ[A236856(n)-2^n]` -/
def P15984642815831087361.Spec : Prop :=
  ∀ n, P15984642815831087361.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P15083461767981042457

`A067068(n+1)+2^n`
-/

namespace A059794.P15083461767981042457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067068 (n + 1) + (2 ^ n : ℤ)

end

end A059794.P15083461767981042457

namespace A059794

/-- `A067068(n+1)+2^n` -/
def P15083461767981042457.Spec : Prop :=
  ∀ n, P15083461767981042457.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P2771349883438975553

`A003418(n+1)-2^n`
-/

namespace A059794.P2771349883438975553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) - (2 ^ n : ℤ)

end

end A059794.P2771349883438975553

namespace A059794

/-- `A003418(n+1)-2^n` -/
def P2771349883438975553.Spec : Prop :=
  ∀ n, P2771349883438975553.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P841052001818275543

`∏[A014963(n+1)]-2^n`
-/

namespace A059794.P841052001818275543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A059794.P841052001818275543

namespace A059794

/-- `∏[A014963(n+1)]-2^n` -/
def P841052001818275543.Spec : Prop :=
  ∀ n, P841052001818275543.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P17269111073408860724

`A070198(n)-A000225(n)`
-/

namespace A059794.P17269111073408860724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 n - A000225 n

end

end A059794.P17269111073408860724

namespace A059794

/-- `A070198(n)-A000225(n)` -/
def P17269111073408860724.Spec : Prop :=
  ∀ n, P17269111073408860724.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P2707942407138322572

`A070198(n)-Δ[A000295(n)]`
-/

namespace A059794.P2707942407138322572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 n - (f1 (n + 1) - f1 n)

end

end A059794.P2707942407138322572

namespace A059794

/-- `A070198(n)-Δ[A000295(n)]` -/
def P2707942407138322572.Spec : Prop :=
  ∀ n, P2707942407138322572.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P14542680666113448798

`A060401(n+1)-A005126(n)`
-/

namespace A059794.P14542680666113448798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060401 (n + 1) - A005126 n

end

end A059794.P14542680666113448798

namespace A059794

/-- `A060401(n+1)-A005126(n)` -/
def P14542680666113448798.Spec : Prop :=
  ∀ n, P14542680666113448798.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P14581260261484524009

`A070198(n)+1-A000079(n)`
-/

namespace A059794.P14581260261484524009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 n + (1 - A000079 n)

end

end A059794.P14581260261484524009

namespace A059794

/-- `A070198(n)+1-A000079(n)` -/
def P14581260261484524009.Spec : Prop :=
  ∀ n, P14581260261484524009.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P5358279996369972999

`A121934(n+1)-A255047(n)`
-/

namespace A059794.P5358279996369972999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121934 (n + 1) - A255047 n

end

end A059794.P5358279996369972999

namespace A059794

/-- `A121934(n+1)-A255047(n)` -/
def P5358279996369972999.Spec : Prop :=
  ∀ n, P5358279996369972999.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P17954889748925386960

`Δ[∑[A003418(n)]-A000079(n)]`
-/

namespace A059794.P17954889748925386960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059794.P17954889748925386960

namespace A059794

/-- `Δ[∑[A003418(n)]-A000079(n)]` -/
def P17954889748925386960.Spec : Prop :=
  ∀ n, P17954889748925386960.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P8239062074671589917

`A068511(n+1)+A068510(n+1)`
-/

namespace A059794.P8239062074671589917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068511 (n + 1) + A068510 (n + 1)

end

end A059794.P8239062074671589917

namespace A059794

/-- `A068511(n+1)+A068510(n+1)` -/
def P8239062074671589917.Spec : Prop :=
  ∀ n, P8239062074671589917.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P14632375308486690437

`abs(A000079(n)-∏[A014963(n+1)])`
-/

namespace A059794.P14632375308486690437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - ∏ j ∈ Finset.range (n + 1), f1 j|

end

end A059794.P14632375308486690437

namespace A059794

/-- `abs(A000079(n)-∏[A014963(n+1)])` -/
def P14632375308486690437.Spec : Prop :=
  ∀ n, P14632375308486690437.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P6267373675233277688

`∏[A014963(n+1)]-A000225(n)-1`
-/

namespace A059794.P6267373675233277688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000225 n - 1

end

end A059794.P6267373675233277688

namespace A059794

/-- `∏[A014963(n+1)]-A000225(n)-1` -/
def P6267373675233277688.Spec : Prop :=
  ∀ n, P6267373675233277688.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P13695731985704057915

`∏[A014963(n+1)]-A324865(A000040(n+1))-1`
-/

namespace A059794.P13695731985704057915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A324865 (A000040 (n + 1)).toNat - 1

end

end A059794.P13695731985704057915

namespace A059794

/-- `∏[A014963(n+1)]-A324865(A000040(n+1))-1` -/
def P13695731985704057915.Spec : Prop :=
  ∀ n, P13695731985704057915.a n = A059794 (n + 1)

end A059794

/-! ## A059794.P1790470149379995627

`A034386(n+1)+A067068(n+1)-A068511(n+1)`
-/

namespace A059794.P1790470149379995627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (n + 1) + (A067068 (n + 1) - A068511 (n + 1))

end

end A059794.P1790470149379995627

namespace A059794

/-- `A034386(n+1)+A067068(n+1)-A068511(n+1)` -/
def P1790470149379995627.Spec : Prop :=
  ∀ n, P1790470149379995627.a n = A059794 (n + 1)

end A059794

/-!
# A059796: Degrees of irreducible representations of symmetric group S_14.

The programs for A059796, there is no canonical definition to state claims against.
-/

/-! ## A059796.P3850940608668820127

`A060717(A242474(∑[and(1, n+1)]))`
-/

namespace A059796.P3850940608668820127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060717 (A242474 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A059796.P3850940608668820127

/-! ## A059796.P5849577632534199890

`A060717(A008619(n)%A140261(n))`
-/

namespace A059796.P5849577632534199890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060717 (Int.tmod (A008619 n) (A140261 n)).toNat

end

end A059796.P5849577632534199890

/-! ## A059796.P9331535566394891234

`A060717(A008619(n))+A000038(A005496(n))`
-/

namespace A059796.P9331535566394891234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060717 (A008619 n).toNat + A000038 (A005496 n).toNat

end

end A059796.P9331535566394891234

/-! ## A059796.P3515409429860347083

`A060717(A008619(n))+A000038(A060717(n+1))`
-/

namespace A059796.P3515409429860347083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060717 (A008619 n).toNat + A000038 (A060717 (n + 1)).toNat

end

end A059796.P3515409429860347083

/-!
# A059797: Second in a series of arrays counting standard tableaux by partition type.

The programs for A059797, the canonical program `A059797.P8076883929035700437` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059797 has offset 0).

The definition of A059797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059797.P8076883929035700437

`A061928(n+1)-A194121(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A059797

/-- `A061928(n+1)-A194121(n)` -/
def P8076883929035700437.Spec : Prop :=
  ∀ n, P8076883929035700437.a n = A059797 n

theorem P8076883929035700437.correct : P8076883929035700437.Spec := by
  intro n
  simp only [A059797]

end A059797

/-! ## A059797.P14979477657596644999

`(comp[C(n, 2)]-n+1)*A014410(n+2)-A194121(n)`
-/

namespace A059797.P14979477657596644999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1) * A014410 (n + 2) - A194121 n

end

end A059797.P14979477657596644999

namespace A059797

/-- `(comp[C(n, 2)]-n+1)*A014410(n+2)-A194121(n)` -/
def P14979477657596644999.Spec : Prop :=
  ∀ n, P14979477657596644999.a n = A059797 n

end A059797

/-! ## A059797.P13846763934438184850

`A002024(n+1)*A014410(n+2)-A222403(n)`
-/

namespace A059797.P13846763934438184850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A014410 (n + 2) - A222403 n

end

end A059797.P13846763934438184850

namespace A059797

/-- `A002024(n+1)*A014410(n+2)-A222403(n)` -/
def P13846763934438184850.Spec : Prop :=
  ∀ n, P13846763934438184850.a n = A059797 n

end A059797

/-! ## A059797.P10196556757576980754

`A127717(A038722(n+1))+A127717(n+1)`
-/

namespace A059797.P10196556757576980754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127717 (A038722 (n + 1)).toNat + A127717 (n + 1)

end

end A059797.P10196556757576980754

namespace A059797

/-- `A127717(A038722(n+1))+A127717(n+1)` -/
def P10196556757576980754.Spec : Prop :=
  ∀ n, P10196556757576980754.a n = A059797 n

end A059797

/-! ## A059797.P2329432818549995215

`A127717(n+1)+A127717(A114327(n)+1+n)`
-/

namespace A059797.P2329432818549995215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127717 (n + 1) + A127717 (A114327 n + 1 + (n : ℤ)).toNat

end

end A059797.P2329432818549995215

namespace A059797

/-- `A127717(n+1)+A127717(A114327(n)+1+n)` -/
def P2329432818549995215.Spec : Prop :=
  ∀ n, P2329432818549995215.a n = A059797 n

end A059797

/-! ## A059797.P7920572765158893918

`A003506((n-comp[∑[n]])²+1-n)-A194121(n)`
-/

namespace A059797.P7920572765158893918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 + (1 - (n : ℤ))).toNat - A194121 n

end

end A059797.P7920572765158893918

namespace A059797

/-- `A003506((n-comp[∑[n]])²+1-n)-A194121(n)` -/
def P7920572765158893918.Spec : Prop :=
  ∀ n, P7920572765158893918.a n = A059797 n

end A059797

/-! ## A059797.P5360589198494052446

`A110952(n+3)+A014430(n)`
-/

namespace A059797.P5360589198494052446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110952 (n + 3) + A014430 n

end

end A059797.P5360589198494052446

namespace A059797

/-- `A110952(n+3)+A014430(n)` -/
def P5360589198494052446.Spec : Prop :=
  ∀ n, P5360589198494052446.a n = A059797 n

end A059797

/-! ## A059797.P4836178705779886539

`A110952(n+3)+A060351(A018900(n+1))`
-/

namespace A059797.P4836178705779886539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110952 (n + 3) + A060351 (A018900 (n + 1)).toNat

end

end A059797.P4836178705779886539

namespace A059797

/-- `A110952(n+3)+A060351(A018900(n+1))` -/
def P4836178705779886539.Spec : Prop :=
  ∀ n, P4836178705779886539.a n = A059797 n

end A059797

/-! ## A059797.P17907233366946151761

`A060351(eq[2, A125644(n)])`
-/

namespace A059797.P17907233366946151761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059797.P17907233366946151761

namespace A059797

/-- `A060351(eq[2, A125644(n)])` -/
def P17907233366946151761.Spec : Prop :=
  ∀ n, P17907233366946151761.a n = A059797 n

end A059797

/-! ## A059797.P5435633134243177751

`A060351(eq[2, A140130(n+1)]+1)`
-/

namespace A059797.P5435633134243177751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A059797.P5435633134243177751

namespace A059797

/-- `A060351(eq[2, A140130(n+1)]+1)` -/
def P5435633134243177751.Spec : Prop :=
  ∀ n, P5435633134243177751.a n = A059797 n

end A059797

/-!
# A059798: Primes p such that |p - q| is a square, where q is the reversal of p.

The programs for A059798, there is no canonical definition to state claims against.
-/

/-! ## A059798.P10757045143926575244

`∩[A278328(n+1), A334321(n+1)]`
-/

namespace A059798.P10757045143926575244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059798.P10757045143926575244

/-!
# A059799: Primes which when added to their reversals are squares.

The programs for A059799, there is no canonical definition to state claims against.
-/

/-! ## A059799.P9340459699239539722

`p?[A061230(n+1)]`
-/

namespace A059799.P9340459699239539722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059799.P9340459699239539722

/-! ## A059799.P4170248775020663878

`p?[A366080(n+1)]`
-/

namespace A059799.P4170248775020663878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059799.P4170248775020663878

/-! ## A059799.P13413276952403132153

`p?[record[A061230(A291769(n))]]`
-/

namespace A059799.P13413276952403132153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061230 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059799.P13413276952403132153

/-! ## A059799.P11121413895897846781

`p?[record[A061230(A328397(n))]]`
-/

namespace A059799.P11121413895897846781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061230 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059799.P11121413895897846781

/-! ## A059799.P7522712128234289430

`A000040(A227371(n+1))`
-/

namespace A059799.P7522712128234289430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A227371 (n + 1)).toNat

end

end A059799.P7522712128234289430

