import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A258200: First differences of A258024.

The programs for A258200, there is no canonical definition to state claims against.
-/

/-! ## A258200.P14379567804449220593

`A258024(n+2)-A258024(n+1)`
-/

namespace A258200.P14379567804449220593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 2) - A258024 (n + 1)

end

end A258200.P14379567804449220593

/-! ## A258200.P17439597853264936405

`Δ[A258024(n+1)]`
-/

namespace A258200.P17439597853264936405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258200.P17439597853264936405

/-! ## A258200.P9070483344770914724

`Δ[record[A258024(A324346(n))]]`
-/

namespace A258200.P9070483344770914724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258200.P9070483344770914724

/-! ## A258200.P1832044904991773113

`Δ[record[A258024(A126759(n))]]`
-/

namespace A258200.P1832044904991773113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258200.P1832044904991773113

/-! ## A258200.P17421408291507457491

`Δ[record[A258024(A141256(n))]]`
-/

namespace A258200.P17421408291507457491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258200.P17421408291507457491

/-! ## A258200.P7114405103534840012

`Δ[record[A258024(A336320(n))]]`
-/

namespace A258200.P7114405103534840012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (A336320 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258200.P7114405103534840012

/-! ## A258200.P4497526135253536212

`Δ[lt[0, A258021(n)]]`
-/

namespace A258200.P4497526135253536212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A258200.P4497526135253536212

/-! ## A258200.P5436021089430657175

`Δ[eq[1, A258021(n+1)]]`
-/

namespace A258200.P5436021089430657175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A258200.P5436021089430657175

/-!
# A258202: Natural numbers n that have the property that starting from k = n, the fixed point of the map k -> floor(tan(k)) is strictly positive, while the smallest number encountered during the iteration is strictly negative.

The programs for A258202, there is no canonical definition to state claims against.
-/

/-! ## A258202.P13240264802101440995

`∩[A246442(2*(n+1)), A258024(n+2)]`
-/

namespace A258202.P13240264802101440995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246442 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258202.P13240264802101440995

/-! ## A258202.P5030905492615464738

`∩[A257984(n+1), A258024(n+1)]`
-/

namespace A258202.P5030905492615464738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258202.P5030905492615464738

/-!
# A258203: Natural numbers n that have the property that starting from k = n, the fixed point of the map k -> floor(tan(k)) is strictly positive, and the smallest number encountered during the iteration is also strictly positive.

The programs for A258203, there is no canonical definition to state claims against.
-/

/-! ## A258203.P7832677388311402796

`A258007(n)+a(n-1)` with `a(0)=1`
-/

namespace A258203.P7832677388311402796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A258007 n + a (n - 1)

end

end A258203.P7832677388311402796

/-! ## A258203.P13155442302863970743

`∑[A258007(n+1)]+1-A258007(n+1)`
-/

namespace A258203.P13155442302863970743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A258007 (n + 1))

end

end A258203.P13155442302863970743

/-! ## A258203.P17244918028292731446

`∩[A062389(n+1), A258024(n+1)]`
-/

namespace A258203.P17244918028292731446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258203.P17244918028292731446

/-! ## A258203.P3894681402363782423

`∩[A257984(n+1)-1, A258024(n+1)]`
-/

namespace A258203.P3894681402363782423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258203.P3894681402363782423

/-! ## A258203.P15573067451524912346

`∩[A258024(n+1), A327422(n+1)]`
-/

namespace A258203.P15573067451524912346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258203.P15573067451524912346

/-! ## A258203.P4052664704227566841

`∩[A258024(n+1), A140758(n)]`
-/

namespace A258203.P4052664704227566841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258203.P4052664704227566841

/-! ## A258203.P9894259460015345979

`∩[A248521(n+1), A258024(n+1)]`
-/

namespace A258203.P9894259460015345979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258203.P9894259460015345979

/-! ## A258203.P75853809277018337

`∩[A258024(n+1), A258048(n)]`
-/

namespace A258203.P75853809277018337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258048 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258203.P75853809277018337

/-! ## A258203.P1778735199920454023

`∩[A246443(n+1), A258024(n+1)]`
-/

namespace A258203.P1778735199920454023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258203.P1778735199920454023

/-! ## A258203.P2779459702447184321

`lt[0, A258201(n)]`
-/

namespace A258203.P2779459702447184321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258203.P2779459702447184321

/-! ## A258203.P9496327954147081076

`eq[1, A258201(n+1)]+1`
-/

namespace A258203.P9496327954147081076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258203.P9496327954147081076

/-! ## A258203.P11048106968119874817

`eq[A054977(n), A258201(n)]`
-/

namespace A258203.P11048106968119874817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258203.P11048106968119874817

/-! ## A258203.P10086251864681871745

`eq[A158388(n), A258201(n)]`
-/

namespace A258203.P10086251864681871745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258203.P10086251864681871745

/-! ## A258203.P9488195567395163272

`eq[A258201(n), A267537(n)]`
-/

namespace A258203.P9488195567395163272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258201 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258203.P9488195567395163272

/-! ## A258203.P2790221166450812237

`eq[A258201(n), A267869(n)]`
-/

namespace A258203.P2790221166450812237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258201 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258203.P2790221166450812237

/-! ## A258203.P15376433441676895680

`eq[A258201(n), A267871(n)]`
-/

namespace A258203.P15376433441676895680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258201 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258203.P15376433441676895680

/-! ## A258203.P9935829257313952387

`eq[A258201(n), A329684(n)]`
-/

namespace A258203.P9935829257313952387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258201 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258203.P9935829257313952387

/-! ## A258203.P790460785415870153

`filter[A062389(n+1), A258021(#)]`
-/

namespace A258203.P790460785415870153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A258021 (f1 j).toNat = 1) n)

end

end A258203.P790460785415870153

/-! ## A258203.P14049344105830562228

`filter[A258024(n+1), A126565(#)]`
-/

namespace A258203.P14049344105830562228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A126565 (f1 j).toNat = 1) n)

end

end A258203.P14049344105830562228

/-!
# A258204: Number of one-sided strictly non-overlapping holeless polyhexes of perimeter 2n, counted up to rotation.

The programs for A258204, there is no canonical definition to state claims against.
-/

/-! ## A258204.P1753721344934780155

`2*A258206(n+1)-A258205(n+1)`
-/

namespace A258204.P1753721344934780155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258206 (n + 1) - A258205 (n + 1)

end

end A258204.P1753721344934780155

/-! ## A258204.P18170205920764797688

`A258017(n+1)-char[12]`
-/

namespace A258204.P18170205920764797688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258017 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A258204.P18170205920764797688

/-! ## A258204.P4030956022937746655

`abs(A258017(n+1)-A185213(n))`
-/

namespace A258204.P4030956022937746655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258017 (n + 1) - A185213 n|

end

end A258204.P4030956022937746655

/-! ## A258204.P361801056442257530

`abs(A258017(n+1)-A225099(n))`
-/

namespace A258204.P361801056442257530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258017 (n + 1) - A225099 n|

end

end A258204.P361801056442257530

/-! ## A258204.P5770466981740937806

`abs(A258017(n+1)-A277157(n))`
-/

namespace A258204.P5770466981740937806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258017 (n + 1) - A277157 n|

end

end A258204.P5770466981740937806

/-!
# A258205: Number of strictly non-overlapping holeless polyhexes of perimeter 2n with bilateral symmetry, counted up to rotation.

The programs for A258205, there is no canonical definition to state claims against.
-/

/-! ## A258205.P8546790623735909762

`2*A258206(n+1)-A258204(n+1)`
-/

namespace A258205.P8546790623735909762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258206 (n + 1) - A258204 (n + 1)

end

end A258205.P8546790623735909762

/-! ## A258205.P10647058264332028685

`A258018(n+1)-char[12]`
-/

namespace A258205.P10647058264332028685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258018 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A258205.P10647058264332028685

/-! ## A258205.P2040738806493209333

`xor(A061649(n), A258018(n+1))`
-/

namespace A258205.P2040738806493209333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061649 n) (A258018 (n + 1))

end

end A258205.P2040738806493209333

/-! ## A258205.P14290509529753513059

`abs(A258018(n+1)-A185213(n))`
-/

namespace A258205.P14290509529753513059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258018 (n + 1) - A185213 n|

end

end A258205.P14290509529753513059

/-! ## A258205.P17003779259988115398

`abs(A258018(n+1)-A225099(n))`
-/

namespace A258205.P17003779259988115398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258018 (n + 1) - A225099 n|

end

end A258205.P17003779259988115398

/-!
# A258206: Number of strictly non-overlapping holeless polyhexes of perimeter 2n, counted up to rotations and turning over.

The programs for A258206, there is no canonical definition to state claims against.
-/

/-! ## A258206.P12596167888213941402

`1/2*(A258204(n+1)+A258205(n+1))`
-/

namespace A258206.P12596167888213941402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A258204 (n + 1) + A258205 (n + 1) : ℚ)

end

end A258206.P12596167888213941402

/-! ## A258206.P1945071519435723710

`A258019(n+1)-char[12]`
-/

namespace A258206.P1945071519435723710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258019 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A258206.P1945071519435723710

/-! ## A258206.P13776342182214013764

`xor(A185213(n), A258019(n+1))`
-/

namespace A258206.P13776342182214013764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185213 n) (A258019 (n + 1))

end

end A258206.P13776342182214013764

/-! ## A258206.P5446351365558534602

`xor(A225099(n), A258019(n+1))`
-/

namespace A258206.P5446351365558534602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A225099 n) (A258019 (n + 1))

end

end A258206.P5446351365558534602

/-! ## A258206.P13908190443295220468

`xor(A258019(n+1), A277157(n))`
-/

namespace A258206.P13908190443295220468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A258019 (n + 1)) (A277157 n)

end

end A258206.P13908190443295220468

/-!
# A258207: Square array: row n gives the numbers remaining after the stage n of Lucky sieve.

The programs for A258207, there is no canonical definition to state claims against.
-/

/-! ## A258207.P16579568964830906514

`A258208(∑[char[∑[n]]]²-n)`
-/

namespace A258207.P16579568964830906514
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258208 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A258207.P16579568964830906514

/-! ## A258207.P6148736043434515376

`or(1, A258208(A038722(n+1)))`
-/

namespace A258207.P6148736043434515376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A258208 (A038722 (n + 1)).toNat)

end

end A258207.P6148736043434515376

/-! ## A258207.P10681794155765214221

`A258208(A038722(n+1))%A017209(n)`
-/

namespace A258207.P10681794155765214221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258208 (A038722 (n + 1)).toNat) (A017209 n)

end

end A258207.P10681794155765214221

/-! ## A258207.P18159074656613655399

`char[A014681(n)]*A258208(A038722(n+1))`
-/

namespace A258207.P18159074656613655399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A258208 (A038722 (n + 1)).toNat

end

end A258207.P18159074656613655399

/-! ## A258207.P8698315023241958319

`A057427(n+1)*A258208(A038722(n+1))`
-/

namespace A258207.P8698315023241958319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A258208 (A038722 (n + 1)).toNat

end

end A258207.P8698315023241958319

/-! ## A258207.P6839670779532563095

`A158388(n+1)*A258208(A038722(n+1))`
-/

namespace A258207.P6839670779532563095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 1) * A258208 (A038722 (n + 1)).toNat

end

end A258207.P6839670779532563095

/-! ## A258207.P4253592964112702196

`A258208(A038722(n+1))+A000045(C(n, n+1))`
-/

namespace A258207.P4253592964112702196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258208 (A038722 (n + 1)).toNat + A000045 (Nat.choose n (n + 1))

end

end A258207.P4253592964112702196

/-! ## A258207.P14069488016074378107

`A258208(A038722(n+1))+A000007(A007318(n))`
-/

namespace A258207.P14069488016074378107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258208 (A038722 (n + 1)).toNat + A000007 (A007318 n).toNat

end

end A258207.P14069488016074378107

/-! ## A258207.P14661179196872435876

`A001222(A037126(n+1))*A258208(A038722(n+1))`
-/

namespace A258207.P14661179196872435876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037126 (n + 1)).toNat * A258208 (A038722 (n + 1)).toNat

end

end A258207.P14661179196872435876

/-! ## A258207.P7350881951797024946

`A258208(A038722(n+1))^(A020639(A000010(n+2))-1)`
-/

namespace A258207.P7350881951797024946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258208 (A038722 (n + 1)).toNat : ℚ) ^ (A020639 (A000010 (n + 2)).toNat - 1 : ℤ)

end

end A258207.P7350881951797024946

/-!
# A258208: Transpose of array A258207 which gives the numbers remaining after the stage n of Lucky sieve.

The programs for A258208, there is no canonical definition to state claims against.
-/

/-! ## A258208.P3627396080052637239

`A258207(∑[char[∑[n]]]²-n)`
-/

namespace A258208.P3627396080052637239
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258207 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A258208.P3627396080052637239

/-! ## A258208.P17054417989791081283

`or(1, A258207(A038722(n+1)))`
-/

namespace A258208.P17054417989791081283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A258207 (A038722 (n + 1)).toNat)

end

end A258208.P17054417989791081283

/-! ## A258208.P696725654210292547

`A258207(A038722(n+1))%A016825(n)`
-/

namespace A258208.P696725654210292547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258207 (A038722 (n + 1)).toNat) (A016825 n)

end

end A258208.P696725654210292547

/-! ## A258208.P11203549499867159887

`∑{d}[A258207(A038722(n+1)), A000010(#)]`
-/

namespace A258208.P11203549499867159887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258207 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A258208.P11203549499867159887

/-! ## A258208.P6366014253008650236

`A057427(n+1)*A258207(A038722(n+1))`
-/

namespace A258208.P6366014253008650236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A258207 (A038722 (n + 1)).toNat

end

end A258208.P6366014253008650236

/-! ## A258208.P17409721128127094523

`A258207(A038722(n+1))+char[A038812(n+1)]`
-/

namespace A258208.P17409721128127094523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038812 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258207 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A258208.P17409721128127094523

/-! ## A258208.P604766310517918859

`A258207(A038722(n+1))+char[A290450(n+1)]`
-/

namespace A258208.P604766310517918859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258207 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A258208.P604766310517918859

/-! ## A258208.P327232308544453395

`A258207(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A258208.P327232308544453395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258207 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A258208.P327232308544453395

/-! ## A258208.P12774814300321179882

`A014963(6*(n+2))*A258207(A038722(n+1))`
-/

namespace A258208.P12774814300321179882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A258207 (A038722 (n + 1)).toNat

end

end A258208.P12774814300321179882

/-!
# A258209: Numbers k for which A256999(A059893(k)) = k.

The programs for A258209, there is no canonical definition to state claims against.
-/

/-! ## A258209.P9989133440643033712

`eq[n, A256999(A030109(2*n+1))]`
-/

namespace A258209.P9989133440643033712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (A030109 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258209.P9989133440643033712

/-! ## A258209.P1148802428630564074

`A328607(lt[A015128(n), A007368(3*n)])`
-/

namespace A258209.P1148802428630564074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007368 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328607 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A258209.P1148802428630564074

/-! ## A258209.P3929413411763797989

`A328607(lt[A328601(n+1), A328567(2*(n+2))])`
-/

namespace A258209.P3929413411763797989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328567 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328607 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A258209.P3929413411763797989

/-!
# A258210: Expansion of f(-q) * f(-q^2) * chi(-q^3) in powers of q where chi(), f() are Ramanujan theta functions.

The programs for A258210, there is no canonical definition to state claims against.
-/

/-! ## A258210.P10531234583541652063

`(-1)^n*A258228(n)`
-/

namespace A258210.P10531234583541652063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A258228 n

end

end A258210.P10531234583541652063

/-! ## A258210.P14900107295111199832

`A061347(n+1)*A256282(n)`
-/

namespace A258210.P14900107295111199832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A256282 n

end

end A258210.P14900107295111199832

/-! ## A258210.P3455341953404736252

`A258228(n)*A309873(n+1)`
-/

namespace A258210.P3455341953404736252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258228 n * A309873 (n + 1)

end

end A258210.P3455341953404736252

/-! ## A258210.P4676037212294175126

`A057079(n+2)*A258256(n)`
-/

namespace A258210.P4676037212294175126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) * A258256 n

end

end A258210.P4676037212294175126

/-! ## A258210.P2558447950501699977

`A131713(n+2)*A256282(n)`
-/

namespace A258210.P2558447950501699977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 2) * A256282 n

end

end A258210.P2558447950501699977

/-! ## A258210.P7794050350984955853

`A258292(2*n)/(-1)^n`
-/

namespace A258210.P7794050350984955853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258292 (2 * n) : ℚ) / ((-1) ^ n : ℚ)

end

end A258210.P7794050350984955853

/-! ## A258210.P14925651932856987174

`A033999(n)*A258279(2*n)`
-/

namespace A258210.P14925651932856987174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A258279 (2 * n)

end

end A258210.P14925651932856987174

/-! ## A258210.P13583635896365040746

`A033999(n)*A258292(2*n)`
-/

namespace A258210.P13583635896365040746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A258292 (2 * n)

end

end A258210.P13583635896365040746

/-! ## A258210.P17553875245292982812

`A057079(2*n)*A256282(n)`
-/

namespace A258210.P17553875245292982812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n) * A256282 n

end

end A258210.P17553875245292982812

/-! ## A258210.P12159442866507738070

`A104794(n)/A132954(2*n)`
-/

namespace A258210.P12159442866507738070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 n : ℚ) / (A132954 (2 * n) : ℚ)

end

end A258210.P12159442866507738070

/-! ## A258210.P9016748940991842292

`A258279(2*n)*A309873(n+1)`
-/

namespace A258210.P9016748940991842292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258279 (2 * n) * A309873 (n + 1)

end

end A258210.P9016748940991842292

/-! ## A258210.P2223838725164336543

`A258292(2*n)*A309873(n+1)`
-/

namespace A258210.P2223838725164336543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258292 (2 * n) * A309873 (n + 1)

end

end A258210.P2223838725164336543

/-! ## A258210.P5342800724995675823

`A087960(2*n)*A258292(2*n)`
-/

namespace A258210.P5342800724995675823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A258292 (2 * n)

end

end A258210.P5342800724995675823

/-! ## A258210.P5393604280889609347

`A057079(2*n+1)*A258279(2*n)/A057079(n+1)`
-/

namespace A258210.P5393604280889609347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057079 (2 * n + 1) * A258279 (2 * n) : ℚ) / (A057079 (n + 1) : ℚ)

end

end A258210.P5393604280889609347

/-! ## A258210.P9865958184677176863

`A057079(2*n+1)*A258292(2*n)/A057079(n+1)`
-/

namespace A258210.P9865958184677176863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057079 (2 * n + 1) * A258292 (2 * n) : ℚ) / (A057079 (n + 1) : ℚ)

end

end A258210.P9865958184677176863

/-! ## A258210.P9025328365674860059

`A010892(A016777(n))*A258292(2*n)`
-/

namespace A258210.P9025328365674860059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016777 n).toNat * A258292 (2 * n)

end

end A258210.P9025328365674860059

/-! ## A258210.P16763967988355193112

`A256280(n)/A057079(n²)`
-/

namespace A258210.P16763967988355193112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256280 n : ℚ) / (A057079 (n ^ 2) : ℚ)

end

end A258210.P16763967988355193112

/-! ## A258210.P16561306484594423014

`A256014(n)/A131713(n²)`
-/

namespace A258210.P16561306484594423014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256014 n : ℚ) / (A131713 (n ^ 2) : ℚ)

end

end A258210.P16561306484594423014

/-! ## A258210.P6336562735537456983

`A256280(n)/A132954(n²)`
-/

namespace A258210.P6336562735537456983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256280 n : ℚ) / (A132954 (n ^ 2) : ℚ)

end

end A258210.P6336562735537456983

/-!
# A258211: Nonsquarefree numbers of the form 4*k + 2.

The programs for A258211, the canonical program `A258211.P3873874455253473199` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258211 has offset 1).

The definition of A258211 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053850, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258211.P3873874455253473199

`2*A053850(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A258211

/-- `2*A053850(n+1)` -/
def P3873874455253473199.Spec : Prop :=
  ∀ n, P3873874455253473199.a n = A258211 (n + 1)

theorem P3873874455253473199.correct : P3873874455253473199.Spec := by
  intro n
  simp only [A258211, Nat.add_sub_cancel]

end A258211

/-! ## A258211.P14812610129581973273

`lcm(2, A053850(A000027(n+1)))`
-/

namespace A258211.P14812610129581973273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A053850 (A000027 (n + 1)).toNat)

end

end A258211.P14812610129581973273

namespace A258211

/-- `lcm(2, A053850(A000027(n+1)))` -/
def P14812610129581973273.Spec : Prop :=
  ∀ n, (P14812610129581973273.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P4252335157870550367

`A053850(A000027(n+1))+A053850(n+1)`
-/

namespace A258211.P4252335157870550367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (A000027 (n + 1)).toNat + A053850 (n + 1)

end

end A258211.P4252335157870550367

namespace A258211

/-- `A053850(A000027(n+1))+A053850(n+1)` -/
def P4252335157870550367.Spec : Prop :=
  ∀ n, P4252335157870550367.a n = A258211 (n + 1)

end A258211

/-! ## A258211.P17498812984094797113

`lcm(A020639(A053858(n+1)), A053850(n+1))`
-/

namespace A258211.P17498812984094797113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A053858 (n + 1)).toNat) (A053850 (n + 1))

end

end A258211.P17498812984094797113

namespace A258211

/-- `lcm(A020639(A053858(n+1)), A053850(n+1))` -/
def P17498812984094797113.Spec : Prop :=
  ∀ n, (P17498812984094797113.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P12649359218294257250

`4*eq[0, A008683(2*n+1)]+2`
-/

namespace A258211.P12649359218294257250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A258211.P12649359218294257250

namespace A258211

/-- `4*eq[0, A008683(2*n+1)]+2` -/
def P12649359218294257250.Spec : Prop :=
  ∀ n, (P12649359218294257250.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P10154253193824483936

`2*eq[A087049(n), A107393(n)]`
-/

namespace A258211.P10154253193824483936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258211.P10154253193824483936

namespace A258211

/-- `2*eq[A087049(n), A107393(n)]` -/
def P10154253193824483936.Spec : Prop :=
  ∀ n, (P10154253193824483936.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P12325249033827908349

`∩[2*A013929(n+1), A016825(n)]`
-/

namespace A258211.P12325249033827908349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258211.P12325249033827908349

namespace A258211

/-- `∩[2*A013929(n+1), A016825(n)]` -/
def P12325249033827908349.Spec : Prop :=
  ∀ n, (P12325249033827908349.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P899829209076028569

`∩[2*A319927(n+1), A319927(n+1)]`
-/

namespace A258211.P899829209076028569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258211.P899829209076028569

namespace A258211

/-- `∩[2*A319927(n+1), A319927(n+1)]` -/
def P899829209076028569.Spec : Prop :=
  ∀ n, (P899829209076028569.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P9626988165575760745

`filter[A034046(n+1), A217586(#)]`
-/

namespace A258211.P9626988165575760745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A258211.P9626988165575760745

namespace A258211

/-- `filter[A034046(n+1), A217586(#)]` -/
def P9626988165575760745.Spec : Prop :=
  ∀ n, P9626988165575760745.a n = A258211 (n + 1)

end A258211

/-! ## A258211.P2088474108693815086

`2*lt[A088440(2*n), A105570(2*n)]`
-/

namespace A258211.P2088474108693815086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258211.P2088474108693815086

namespace A258211

/-- `2*lt[A088440(2*n), A105570(2*n)]` -/
def P2088474108693815086.Spec : Prop :=
  ∀ n, (P2088474108693815086.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P14034126810872755033

`∩[2*A274720(n+1), A360768(n+1)]`
-/

namespace A258211.P14034126810872755033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258211.P14034126810872755033

namespace A258211

/-- `∩[2*A274720(n+1), A360768(n+1)]` -/
def P14034126810872755033.Spec : Prop :=
  ∀ n, (P14034126810872755033.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P12318944627639659774

`2*∩[A082377(n+1), A274720(n+1)]`
-/

namespace A258211.P12318944627639659774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258211.P12318944627639659774

namespace A258211

/-- `2*∩[A082377(n+1), A274720(n+1)]` -/
def P12318944627639659774.Spec : Prop :=
  ∀ n, (P12318944627639659774.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P5071568327747177908

`2*∩[A014076(n+1), A038838(n+1)]`
-/

namespace A258211.P5071568327747177908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258211.P5071568327747177908

namespace A258211

/-- `2*∩[A014076(n+1), A038838(n+1)]` -/
def P5071568327747177908.Spec : Prop :=
  ∀ n, (P5071568327747177908.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P12003382518038728462

`2*∩[A014076(n+1), A046790(n+1)]`
-/

namespace A258211.P12003382518038728462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258211.P12003382518038728462

namespace A258211

/-- `2*∩[A014076(n+1), A046790(n+1)]` -/
def P12003382518038728462.Spec : Prop :=
  ∀ n, (P12003382518038728462.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P10223071338831313369

`2*∩[A014076(n+1), A072903(n+1)]`
-/

namespace A258211.P10223071338831313369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258211.P10223071338831313369

namespace A258211

/-- `2*∩[A014076(n+1), A072903(n+1)]` -/
def P10223071338831313369.Spec : Prop :=
  ∀ n, (P10223071338831313369.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P14610612512027170862

`2*∩[A038838(n+1), A071904(n+1)]`
-/

namespace A258211.P14610612512027170862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258211.P14610612512027170862

namespace A258211

/-- `2*∩[A038838(n+1), A071904(n+1)]` -/
def P14610612512027170862.Spec : Prop :=
  ∀ n, (P14610612512027170862.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P11554694056825241211

`2*∩[A046790(n+1), A071904(n+1)]`
-/

namespace A258211.P11554694056825241211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258211.P11554694056825241211

namespace A258211

/-- `2*∩[A046790(n+1), A071904(n+1)]` -/
def P11554694056825241211.Spec : Prop :=
  ∀ n, (P11554694056825241211.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P5356108903699862051

`2*∩[A071904(n+1), A072903(n+1)]`
-/

namespace A258211.P5356108903699862051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258211.P5356108903699862051

namespace A258211

/-- `2*∩[A071904(n+1), A072903(n+1)]` -/
def P5356108903699862051.Spec : Prop :=
  ∀ n, (P5356108903699862051.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P4894327170799659971

`∩[2*A014076(n+1), A360768(n+1)]`
-/

namespace A258211.P4894327170799659971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258211.P4894327170799659971

namespace A258211

/-- `∩[2*A014076(n+1), A360768(n+1)]` -/
def P4894327170799659971.Spec : Prop :=
  ∀ n, (P4894327170799659971.a n : ℤ) = A258211 (n + 1)

end A258211

/-! ## A258211.P15847547478119599321

`∩[2*A071904(n+1), A360768(n+1)]`
-/

namespace A258211.P15847547478119599321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258211.P15847547478119599321

namespace A258211

/-- `∩[2*A071904(n+1), A360768(n+1)]` -/
def P15847547478119599321.Spec : Prop :=
  ∀ n, (P15847547478119599321.a n : ℤ) = A258211 (n + 1)

end A258211

/-!
# A258213: Number of permutations of {1,2,3,...,n} such that no even numbers are adjacent.

The programs for A258213, there is no canonical definition to state claims against.
-/

/-! ## A258213.P6264832929298189552

`a(n-2)*∑[(n+1)*n%2]` with `a(0)=1, a(1)=1`
-/

namespace A258213.P6264832929298189552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258213.P6264832929298189552

/-! ## A258213.P13066669969300617654

`A362588(A165157(n+1))`
-/

namespace A258213.P13066669969300617654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362588 (A165157 (n + 1)).toNat

end

end A258213.P13066669969300617654

/-! ## A258213.P16628550043455084138

`A187741(n+1)*A187741(A267458(n+1))`
-/

namespace A258213.P16628550043455084138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187741 (n + 1) * A187741 (A267458 (n + 1)).toNat

end

end A258213.P16628550043455084138

/-! ## A258213.P1213684083431468757

`A182062(A004526(n²)+n)`
-/

namespace A258213.P1213684083431468757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182062 (A004526 (n ^ 2) + (n : ℤ)).toNat

end

end A258213.P1213684083431468757

/-! ## A258213.P15157557680739138481

`A182062(A123108(n²)+n)`
-/

namespace A258213.P15157557680739138481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182062 (A123108 (n ^ 2) + (n : ℤ)).toNat

end

end A258213.P15157557680739138481

/-! ## A258213.P15326113054210909759

`A182062(∑[A106249(2*n)]-1)`
-/

namespace A258213.P15326113054210909759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182062 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A258213.P15326113054210909759

/-! ## A258213.P12513779412155293580

`A182062(A123108(sqrt(A099761(n))))`
-/

namespace A258213.P12513779412155293580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182062 (A123108 (SequenceMachineLib.roundAway (Real.sqrt (A099761 n : ℝ))).toNat).toNat

end

end A258213.P12513779412155293580

/-!
# A258216: Number of permutations of {1,2,3,...,n} such that no multiples of 3 are adjacent.

The programs for A258216, there is no canonical definition to state claims against.
-/

/-! ## A258216.P551370897679894545

`A182062(A002264(n)+∑[n])`
-/

namespace A258216.P551370897679894545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182062 (A002264 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A258216.P551370897679894545

/-! ## A258216.P5516591627215571167

`A182062(A161680(n)+A004773(n))`
-/

namespace A258216.P5516591627215571167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182062 (A161680 n + A004773 n).toNat

end

end A258216.P5516591627215571167

/-!
# A258217: Smallest multiple of 7 starting with n, that did not appear earlier.

The programs for A258217, there is no canonical definition to state claims against.
-/

/-! ## A258217.P18206120616357953400

`7*A258334(n+1)`
-/

namespace A258217.P18206120616357953400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A258334 (n + 1)

end

end A258217.P18206120616357953400

/-! ## A258217.P11205724838056709373

`lcm(A082802(n+1), A258334(n+1))`
-/

namespace A258217.P11205724838056709373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082802 (n + 1)) (A258334 (n + 1))

end

end A258217.P11205724838056709373

/-! ## A258217.P10588516532737288614

`A008589(A258334(n+1))`
-/

namespace A258217.P10588516532737288614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A258334 (n + 1)).toNat

end

end A258217.P10588516532737288614

/-! ## A258217.P11521181384434464183

`A016993(A258334(n+1))-A109720(A047304(n+1))`
-/

namespace A258217.P11521181384434464183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A258334 (n + 1)).toNat - A109720 (A047304 (n + 1)).toNat

end

end A258217.P11521181384434464183

/-! ## A258217.P8370043715124438440

`A258188(A258330(A258334(A258226(A258225(n+1)))))`
-/

namespace A258217.P8370043715124438440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258188 (A258330 (A258334 (A258226 (A258225 (n + 1)).toNat).toNat).toNat).toNat

end

end A258217.P8370043715124438440

/-! ## A258217.P12592629895610144483

`A258188(A258330(A258334(A258330(A258329(n+1)))))`
-/

namespace A258217.P12592629895610144483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258188 (A258330 (A258334 (A258330 (A258329 (n + 1)).toNat).toNat).toNat).toNat

end

end A258217.P12592629895610144483

/-! ## A258217.P3852229479976309967

`A258188(A258330(A258334(A258334(A258335(n+1)))))`
-/

namespace A258217.P3852229479976309967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258188 (A258330 (A258334 (A258334 (A258335 (n + 1)).toNat).toNat).toNat).toNat

end

end A258217.P3852229479976309967

/-! ## A258217.P13664081983903788893

`A258188(A258330(A258334(n+1)%A007283(n)))`
-/

namespace A258217.P13664081983903788893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258188 (A258330 (Int.tmod (A258334 (n + 1)) (A007283 n)).toNat).toNat

end

end A258217.P13664081983903788893

/-!
# A258219: A(n,k) is the sum over all Dyck paths of semilength n of products over all peaks p of (x_p+k*y_p)/y_p, where x_p and y_p are the coordinates of peak p; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A258219, there is no canonical definition to state claims against.
-/

/-! ## A258219.P9768123333849446031

`A123731(A371767(n))`
-/

namespace A258219.P9768123333849446031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A371767 n).toNat

end

end A258219.P9768123333849446031

/-! ## A258219.P16980703195629427454

`A122291(A397420(n))`
-/

namespace A258219.P16980703195629427454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122291 (A397420 n).toNat

end

end A258219.P16980703195629427454

/-! ## A258219.P4253575975355055027

`floor((A344155(A081720(n+1)+1)+1)/5)`
-/

namespace A258219.P4253575975355055027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A344155 (A081720 (n + 1) + 1).toNat + 1 : ℚ) / 5⌋

end

end A258219.P4253575975355055027

/-! ## A258219.P12735618120829681964

`A123731(A008279(n)*A233543(n))`
-/

namespace A258219.P12735618120829681964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A008279 n * A233543 n).toNat

end

end A258219.P12735618120829681964

/-! ## A258219.P16970098994075544960

`A111660(A290605(n)+A208744(n+1))`
-/

namespace A258219.P16970098994075544960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A290605 n + A208744 (n + 1)).toNat

end

end A258219.P16970098994075544960

/-!
# A258221: Row sums of A258220.

The programs for A258221, there is no canonical definition to state claims against.
-/

/-! ## A258221.P18073311973023776753

`A141819((n+1)^∑[∑{p}[n+1, gcd(n, #)]])`
-/

namespace A258221.P18073311973023776753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141819 ((n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A258221.P18073311973023776753

/-!
# A258224: Row sums of A258223.

The programs for A258224, there is no canonical definition to state claims against.
-/

/-! ## A258224.P16443791726536680136

`A194957(n)+A020654(A194471(n))`
-/

namespace A258224.P16443791726536680136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194957 n + A020654 (A194471 n).toNat

end

end A258224.P16443791726536680136

/-!
# A258225: a(n) = A258083(n) / 3.

The programs for A258225, there is no canonical definition to state claims against.
-/

/-! ## A258225.P13136349326433717762

`A258083(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258225.P13136349326433717762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258083 (n + 1) : ℚ) / 3

end

end A258225.P13136349326433717762

/-! ## A258225.P2451454824338788855

`A002264(A258083(n+1))`
-/

namespace A258225.P2451454824338788855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A258083 (n + 1)).toNat

end

end A258225.P2451454824338788855

/-! ## A258225.P18020751136342595669

`A008611(A258083(n+1)+1)`
-/

namespace A258225.P18020751136342595669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A258083 (n + 1) + 1).toNat

end

end A258225.P18020751136342595669

/-! ## A258225.P5385616843328125433

`A087509(A258083(n+1)+1)`
-/

namespace A258225.P5385616843328125433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 (A258083 (n + 1) + 1).toNat

end

end A258225.P5385616843328125433

/-! ## A258225.P4960701564444155967

`A008620(A258083(n+1)-1)`
-/

namespace A258225.P4960701564444155967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A258083 (n + 1) - 1).toNat

end

end A258225.P4960701564444155967

/-! ## A258225.P2831530896073745090

`A089598(A258083(n+1)-1)`
-/

namespace A258225.P2831530896073745090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 (A258083 (n + 1) - 1).toNat

end

end A258225.P2831530896073745090

/-! ## A258225.P10146088050753584483

`A008615(2*A258083(n+1))`
-/

namespace A258225.P10146088050753584483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A258083 (n + 1)).toNat

end

end A258225.P10146088050753584483

/-! ## A258225.P15678621732775298700

`A008615(A258083(n+1)+A258083(n+1)+1)`
-/

namespace A258225.P15678621732775298700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A258083 (n + 1) + (A258083 (n + 1) + 1)).toNat

end

end A258225.P15678621732775298700

/-! ## A258225.P6198933884497018553

`A182182(lcm(3, A258083(n+1)))`
-/

namespace A258225.P6198933884497018553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 (Int.lcm 3 (A258083 (n + 1)))

end

end A258225.P6198933884497018553

/-! ## A258225.P15067689812832326866

`A182182(A258083(n+1))%A014614(n+1)`
-/

namespace A258225.P15067689812832326866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182182 (A258083 (n + 1)).toNat) (A014614 (n + 1))

end

end A258225.P15067689812832326866

/-!
# A258226: Inverse permutation to A258225.

The programs for A258226, there is no canonical definition to state claims against.
-/

/-! ## A258226.P8908462032637177234

`(3*(n+1))%A055583(A322856(n))`
-/

namespace A258226.P8908462032637177234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * (n + 1) : ℤ) (A055583 (A322856 n).toNat)

end

end A258226.P8908462032637177234

/-! ## A258226.P17071639991336422798

`A000027(3*(n+1))%A058945(A127193(n+1))`
-/

namespace A258226.P17071639991336422798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (3 * (n + 1))) (A058945 (A127193 (n + 1)).toNat)

end

end A258226.P17071639991336422798

/-! ## A258226.P14105437735818438691

`A008585(n+1)%A017173(A127193(n+1))`
-/

namespace A258226.P14105437735818438691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (n + 1)) (A017173 (A127193 (n + 1)).toNat)

end

end A258226.P14105437735818438691

/-!
# A258228: Expansion of f(q) * f(-q^2) * chi(q^3) in powers of q where chi(), f() are Ramanujan theta functions.

The programs for A258228, there is no canonical definition to state claims against.
-/

/-! ## A258228.P11811113096920023523

`(-1)^n*A258210(n)`
-/

namespace A258228.P11811113096920023523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A258210 n

end

end A258228.P11811113096920023523

/-! ## A258228.P9632647839173950991

`A258279(2*n)`
-/

namespace A258228.P9632647839173950991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258279 (2 * n)

end

end A258228.P9632647839173950991

/-! ## A258228.P9553936035952505423

`A258292(2*n)`
-/

namespace A258228.P9553936035952505423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258292 (2 * n)

end

end A258228.P9553936035952505423

/-! ## A258228.P15146328935738498346

`A061347(n+1)*A258256(n)`
-/

namespace A258228.P15146328935738498346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A258256 n

end

end A258228.P15146328935738498346

/-! ## A258228.P4317577444412337269

`A258210(n)*A309873(n+1)`
-/

namespace A258228.P4317577444412337269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258210 n * A309873 (n + 1)

end

end A258228.P4317577444412337269

/-! ## A258228.P14677443313559053225

`A057079(n+2)*A256282(n)`
-/

namespace A258228.P14677443313559053225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) * A256282 n

end

end A258228.P14677443313559053225

/-! ## A258228.P8219615717566212694

`A131713(n+2)*A258256(n)`
-/

namespace A258228.P8219615717566212694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 2) * A258256 n

end

end A258228.P8219615717566212694

/-! ## A258228.P6378014000766854154

`A061347(n+1)*A256282(2*n)`
-/

namespace A258228.P6378014000766854154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A256282 (2 * n)

end

end A258228.P6378014000766854154

/-! ## A258228.P772009935190410692

`A131713(n+2)*A256282(2*n)`
-/

namespace A258228.P772009935190410692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 2) * A256282 (2 * n)

end

end A258228.P772009935190410692

/-! ## A258228.P7942042327298482574

`xor(1, xor(1, A258279(n+n)))`
-/

namespace A258228.P7942042327298482574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A258279 (n + n)))

end

end A258228.P7942042327298482574

/-! ## A258228.P16020536605167559698

`A057079(2*n)*A258256(n)`
-/

namespace A258228.P16020536605167559698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n) * A258256 n

end

end A258228.P16020536605167559698

/-! ## A258228.P8656892358660561329

`A004018(n)/A132954(2*n)`
-/

namespace A258228.P8656892358660561329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / (A132954 (2 * n) : ℚ)

end

end A258228.P8656892358660561329

/-! ## A258228.P16611810167847836794

`A259761(n)/A132367(2*n)`
-/

namespace A258228.P16611810167847836794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259761 n : ℚ) / (A132367 (2 * n) : ℚ)

end

end A258228.P16611810167847836794

/-! ## A258228.P3149347726963972041

`A256280(2*n)/A057079(n)²`
-/

namespace A258228.P3149347726963972041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256280 (2 * n) : ℚ) / (A057079 n ^ 2 : ℚ)

end

end A258228.P3149347726963972041

/-! ## A258228.P6378480408031159519

`A256014(2*n)/A131713(n)²`
-/

namespace A258228.P6378480408031159519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256014 (2 * n) : ℚ) / (A131713 n ^ 2 : ℚ)

end

end A258228.P6378480408031159519

/-! ## A258228.P7656356543800981118

`2*A256269(2*n)-A256269(n)`
-/

namespace A258228.P7656356543800981118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256269 (2 * n) - A256269 n

end

end A258228.P7656356543800981118

/-! ## A258228.P3925578771506119835

`A258210(4*n)`
-/

namespace A258228.P3925578771506119835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258210 (4 * n)

end

end A258228.P3925578771506119835

/-!
# A258231: Numbers n such that both n and n squared contain exactly the same digits, and n is not divisible by 10.

The programs for A258231, there is no canonical definition to state claims against.
-/

/-! ## A258231.P8199132843051881473

`A029793(eq[A114775(n), A351322(n)])`
-/

namespace A258231.P8199132843051881473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029793 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A258231.P8199132843051881473

/-!
# A258233: Number of ways to represent the n-th prime as arithmetic mean of three other primes.

The programs for A258233, there is no canonical definition to state claims against.
-/

/-! ## A258233.P8098906775222767043

`A068307(A001748(n+1))-A116619(n+1)`
-/

namespace A258233.P8098906775222767043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A001748 (n + 1)).toNat - A116619 (n + 1)

end

end A258233.P8098906775222767043

/-! ## A258233.P5291627268474266289

`A068307(A001748(n+1))-A045917(A000040(n+1))`
-/

namespace A258233.P5291627268474266289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A001748 (n + 1)).toNat - A045917 (A000040 (n + 1)).toNat

end

end A258233.P5291627268474266289

/-! ## A258233.P1626581488562101860

`A258263(n)+a(n-1)` with `a(0)=0`
-/

namespace A258233.P1626581488562101860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A258263 n + a (n - 1)

end

end A258233.P1626581488562101860

/-! ## A258233.P14559253839060399877

`∑[A258263(A028310(n))]-1`
-/

namespace A258233.P14559253839060399877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258263 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A258233.P14559253839060399877

/-! ## A258233.P4984846829442498003

`∑[A258263(A000038(n)+n)]`
-/

namespace A258233.P4984846829442498003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258263 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258233.P4984846829442498003

/-! ## A258233.P4350470661782734636

`∑[A258263(or(n, A000038(n)))]`
-/

namespace A258233.P4350470661782734636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258263 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258233.P4350470661782734636

/-! ## A258233.P5706203563274232587

`∑[A258263(n+1)]-A258263(n+1)`
-/

namespace A258233.P5706203563274232587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A258263 (n + 1)

end

end A258233.P5706203563274232587

/-! ## A258233.P12124272919250284416

`A083338(A001748(n+1))-A083338(A100484(n+1))`
-/

namespace A258233.P12124272919250284416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (A001748 (n + 1)).toNat - A083338 (A100484 (n + 1)).toNat

end

end A258233.P12124272919250284416

/-! ## A258233.P11333953313280021981

`∑[A258263(A002260(A081270(n)))]`
-/

namespace A258233.P11333953313280021981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258263 (A002260 (A081270 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258233.P11333953313280021981

/-!
# A258236: Number of steps from n to 0, where allowable steps are x -> [x/r] if x is in upper Wythoff sequence (A001950) and x -> [r*x] otherwise, where [ ] = floor and r = (3+sqrt(5))/2.

The programs for A258236, there is no canonical definition to state claims against.
-/

/-! ## A258236.P5953909666032851293

`A258248(lt[A258233(n+1), A258245(3*n+2)])`
-/

namespace A258236.P5953909666032851293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258245 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258248 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A258236.P5953909666032851293

/-!
# A258242: Number of steps from n to 0, where allowable steps are x -> [x/r] if x = is in A022838 (the Beatty sequence for sqrt(3)) and x -> [r*x] otherwise, where [ ] = floor and r = sqrt(3).

The programs for A258242, there is no canonical definition to state claims against.
-/

/-! ## A258242.P14604171468905129595

`∑{e}[lcm(n, A338645(n)), #]`
-/

namespace A258242.P14604171468905129595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A338645 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A258242.P14604171468905129595

/-! ## A258242.P8922263897466589706

`A116543((A216278(char[1]+2*n+1)+1)*A116523(n))`
-/

namespace A258242.P8922263897466589706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 ((A216278 ((if ∃ j, f1 j = n then 1 else 0) + (2 * n + 1)) + 1) * A116523 n).toNat

end

end A258242.P8922263897466589706

/-! ## A258242.P875639849116810333

`A116543(ceil((A113411(n)%(n+1)+1)/2)*A116523(n))`
-/

namespace A258242.P875639849116810333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (⌈(Int.tmod (A113411 n) (n + 1 : ℤ) + 1 : ℚ) / 2⌉ * A116523 n).toNat

end

end A258242.P875639849116810333

/-! ## A258242.P10970256506603318178

`A001222(A070889(n+1)*A157751(n))`
-/

namespace A258242.P10970256506603318178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A070889 (n + 1) * A157751 n).toNat

end

end A258242.P10970256506603318178

/-! ## A258242.P5097371441034739004

`A001222(A157751(n)*A379582(n+1))`
-/

namespace A258242.P5097371441034739004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A157751 n * A379582 (n + 1)).toNat

end

end A258242.P5097371441034739004

/-!
# A258246: Number of steps from n to 0, where allowable steps are x -> [x/Pi] if x = is in A022844 (the Beatty sequence for Pi) and x -> [Pi*x] otherwise, where [ ] = floor.

The programs for A258246, there is no canonical definition to state claims against.
-/

/-! ## A258246.P16016925252083948208

`(A053828(A033033(n+1))-1)%p?[A102363(n)]`
-/

namespace A258246.P16016925252083948208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053828 (A033033 (n + 1)).toNat - 1) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A258246.P16016925252083948208

/-! ## A258246.P7897149759682731315

`(A053828(A033033(n+1))-1)*A001222(A095086(2*n+1))`
-/

namespace A258246.P7897149759682731315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053828 (A033033 (n + 1)).toNat - 1) * A001222 (A095086 (2 * n + 1)).toNat

end

end A258246.P7897149759682731315

/-! ## A258246.P9108525027560467938

`A053828(A033033(n+1))-A325355(A259678(n+1))`
-/

namespace A258246.P9108525027560467938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A033033 (n + 1)).toNat - A325355 (A259678 (n + 1)).toNat

end

end A258246.P9108525027560467938

/-!
# A258248: Number of steps from n to 0, where allowable steps are x -> [x/r] if x = is in A022842 (the Beatty sequence for sqrt(8)) and x -> [r*x] otherwise, where r = sqrt(8) and [ ] = floor.

The programs for A258248, there is no canonical definition to state claims against.
-/

/-! ## A258248.P8007715635979222688

`A327008(A082561(n+1))`
-/

namespace A258248.P8007715635979222688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327008 (A082561 (n + 1)).toNat

end

end A258248.P8007715635979222688

/-!
# A258250: Primitive weird numbers (pwn) (A002975) whose abundance (A033880) is a power of 2 (A000079).

The programs for A258250, there is no canonical definition to state claims against.
-/

/-! ## A258250.P8350240936728623173

`∩[A002975(n+1), A259174(n+1)]`
-/

namespace A258250.P8350240936728623173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258250.P8350240936728623173

/-! ## A258250.P4049027281650041175

`A329190(A061494(n+1)²*A252474(n+1))`
-/

namespace A258250.P4049027281650041175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329190 (A061494 (n + 1) ^ 2 * A252474 (n + 1)).toNat

end

end A258250.P4049027281650041175

/-! ## A258250.P1567489397578715463

`A329190(comp[A261361(n+1)^n*n^3])`
-/

namespace A258250.P1567489397578715463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261361 (n + 1) ^ n * (n ^ 3 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329190 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A258250.P1567489397578715463

/-! ## A258250.P12139571353274539383

`∩[A259174(n+1), A354282(n+1)]`
-/

namespace A258250.P12139571353274539383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258250.P12139571353274539383

/-! ## A258250.P319329335802031316

`A329190(A084193(∑[n]))`
-/

namespace A258250.P319329335802031316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329190 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A258250.P319329335802031316

/-!
# A258251: Numbers n for which there exists a fixed point in the Collatz (3x+1) trajectory of n.

The programs for A258251, there is no canonical definition to state claims against.
-/

/-! ## A258251.P8034688344724085569

`∩[2*n, A258823(n+1)]/2`
-/

namespace A258251.P8034688344724085569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258823 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A258251.P8034688344724085569

/-! ## A258251.P17215064897434066273

`record[A025480(A258823(n+1))]`
-/

namespace A258251.P17215064897434066273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A258823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258251.P17215064897434066273

/-! ## A258251.P14553835746284064095

`record[A032742(A258823(n+2))]`
-/

namespace A258251.P14553835746284064095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A258823 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258251.P14553835746284064095

/-! ## A258251.P1484866239917693229

`record[A057979(A258823(n+1)+1)]`
-/

namespace A258251.P1484866239917693229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A258823 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258251.P1484866239917693229

/-! ## A258251.P8663854584328856880

`record[floor(A000265(A258823(n+1)+1)/2)]`
-/

namespace A258251.P8663854584328856880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000265 (A258823 (n + 1) + 1).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258251.P8663854584328856880

/-! ## A258251.P11688244740017472603

`A065033(record[A038608(A258823(n+1))])`
-/

namespace A258251.P11688244740017472603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A258823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A258251.P11688244740017472603

/-! ## A258251.P3845509657979162785

`A123108(record[A038608(A258823(n+1))])`
-/

namespace A258251.P3845509657979162785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A258823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A258251.P3845509657979162785

/-! ## A258251.P13646183189577375601

`A332893(record[A038608(A258823(n+1))])`
-/

namespace A258251.P13646183189577375601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A258823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A258251.P13646183189577375601

/-! ## A258251.P17950607770926916284

`record[A038608(A258823(n+1))]/A036453(n+2)`
-/

namespace A258251.P17950607770926916284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A258823 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A036453 (n + 2) : ℚ)

end

end A258251.P17950607770926916284

/-! ## A258251.P6839770075726364917

`record[A038608(A258823(n+1))/A020639(2*(n+1))]`
-/

namespace A258251.P6839770075726364917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038608 (A258823 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258251.P6839770075726364917

/-!
# A258254: Denominators of partial sums of 1/A258252(i), 1 <= i <= n.

The programs for A258254, there is no canonical definition to state claims against.
-/

/-! ## A258254.P629824995552253561

`A104890(or(A033611(n), A128649(n+1)))`
-/

namespace A258254.P629824995552253561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104890 (Int.lor (A033611 n) (A128649 (n + 1))).toNat

end

end A258254.P629824995552253561

/-! ## A258254.P821972356040748383

`A104890(or(A033615(n), A128649(n+1)))`
-/

namespace A258254.P821972356040748383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104890 (Int.lor (A033615 n) (A128649 (n + 1))).toNat

end

end A258254.P821972356040748383

/-!
# A258255: Least k such that n <= Sum_{i=1..k} 1/A258252(i), where A258252 are the numbers having lowest possible denominators for the sums of reciprocals.

The programs for A258255, there is no canonical definition to state claims against.
-/

/-! ## A258255.P16349345857685471292

`eq[1, A258254(n+1)]+1`
-/

namespace A258255.P16349345857685471292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258255.P16349345857685471292

/-! ## A258255.P11801152352851886336

`record[A000027(n+1)/A258254(n+1)]`
-/

namespace A258255.P11801152352851886336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A258254 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258255.P11801152352851886336

/-! ## A258255.P12689119761586975728

`record[A258253(n+1)/A258254(A258253(n+1))]`
-/

namespace A258255.P12689119761586975728
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258253 (n + 1) : ℚ) / (A258254 (A258253 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258255.P12689119761586975728

/-! ## A258255.P13532303193129045823

`A028310(lt[A258254(n+1), 2]+1)`
-/

namespace A258255.P13532303193129045823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258254 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A258255.P13532303193129045823

/-!
# A258256: Expansion of f(q^3) * psi(-q^3)^3 / (psi(-q) * psi(-q^9)) in powers of q where psi(), f() are Ramanujan theta functions.

The programs for A258256, there is no canonical definition to state claims against.
-/

/-! ## A258256.P11832856362831595170

`(-1)^n*A256282(n)`
-/

namespace A258256.P11832856362831595170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A256282 n

end

end A258256.P11832856362831595170

/-! ## A258256.P13572645061386727330

`abs(A256282(n))`
-/

namespace A258256.P13572645061386727330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256282 n|

end

end A258256.P13572645061386727330

/-! ## A258256.P3356886857460135907

`A004018(n)/((n²+1)%3)²`
-/

namespace A258256.P3356886857460135907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / ((((n ^ 2 + 1) % 3) ^ 2 : ℕ) : ℚ)

end

end A258256.P3356886857460135907

/-! ## A258256.P3084174913615738258

`A262689(A256282(n)²)`
-/

namespace A258256.P3084174913615738258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A256282 n ^ 2).toNat

end

end A258256.P3084174913615738258

/-! ## A258256.P16403180339191813884

`A258279(n)/A057079(n)`
-/

namespace A258256.P16403180339191813884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258279 n : ℚ) / (A057079 n : ℚ)

end

end A258256.P16403180339191813884

/-! ## A258256.P14681138712285309602

`A256014(n)/A132954(n)`
-/

namespace A258256.P14681138712285309602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256014 n : ℚ) / (A132954 n : ℚ)

end

end A258256.P14681138712285309602

/-! ## A258256.P16828212207432432537

`A259761(n)/A130196(n)`
-/

namespace A258256.P16828212207432432537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259761 n : ℚ) / (A130196 n : ℚ)

end

end A258256.P16828212207432432537

/-! ## A258256.P345319301178358257

`A258292(n)/A131713(n)`
-/

namespace A258256.P345319301178358257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258292 n : ℚ) / (A131713 n : ℚ)

end

end A258256.P345319301178358257

/-! ## A258256.P8016081616217841689

`gcd(A000038(n), A256282(n))`
-/

namespace A258256.P8016081616217841689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A256282 n)

end

end A258256.P8016081616217841689

/-! ## A258256.P15991662191771148755

`gcd(A256269(n), A258279(n))`
-/

namespace A258256.P15991662191771148755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256269 n) (A258279 n)

end

end A258256.P15991662191771148755

/-! ## A258256.P2832950390987823830

`gcd(A256279(n), A258292(n))`
-/

namespace A258256.P2832950390987823830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256279 n) (A258292 n)

end

end A258256.P2832950390987823830

/-! ## A258256.P14322755094079249169

`lcm(A001492(n), A256282(n))`
-/

namespace A258256.P14322755094079249169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001492 n) (A256282 n)

end

end A258256.P14322755094079249169

/-! ## A258256.P2282349108070403456

`A004018(n)/A130196(n)²`
-/

namespace A258256.P2282349108070403456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / (A130196 n ^ 2 : ℚ)

end

end A258256.P2282349108070403456

/-! ## A258256.P7579027608780704899

`A256282(n)*A309873(n+1)`
-/

namespace A258256.P7579027608780704899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 n * A309873 (n + 1)

end

end A258256.P7579027608780704899

/-! ## A258256.P14916638961422605552

`A258228(n)/A061347(n+1)`
-/

namespace A258256.P14916638961422605552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258228 n : ℚ) / (A061347 (n + 1) : ℚ)

end

end A258256.P14916638961422605552

/-! ## A258256.P26812717041851542

`(A258034(n)+A028601(n))/2`
-/

namespace A258256.P26812717041851542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258034 n + A028601 n : ℚ) / 2

end

end A258256.P26812717041851542

/-! ## A258256.P2727089790531218747

`A258292(n)/(2-A057079(n)²)`
-/

namespace A258256.P2727089790531218747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258292 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A258256.P2727089790531218747

/-! ## A258256.P17175769038208096492

`A256282(2*n)`
-/

namespace A258256.P17175769038208096492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 (2 * n)

end

end A258256.P17175769038208096492

/-! ## A258256.P17995597520379724803

`gcd(A258210(2*n), A258210(n))`
-/

namespace A258256.P17995597520379724803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A258210 (2 * n)) (A258210 n)

end

end A258256.P17995597520379724803

/-! ## A258256.P13795991872107316105

`A104794(2*n)/A131714(n)²`
-/

namespace A258256.P13795991872107316105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 (2 * n) : ℚ) / (A131714 n ^ 2 : ℚ)

end

end A258256.P13795991872107316105

/-!
# A258257: The number of representations of n as a minimal number of triangular numbers, A000217(n).

The programs for A258257, there is no canonical definition to state claims against.
-/

/-! ## A258257.P9613999220214315414

`A181506(A061336(n+1)+A000217(n))`
-/

namespace A258257.P9613999220214315414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181506 (A061336 (n + 1) + A000217 n).toNat

end

end A258257.P9613999220214315414

/-! ## A258257.P18134056844435778975

`A071625(or(A183912(3*(n+1)), A325420(n+1)))`
-/

namespace A258257.P18134056844435778975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (Int.lor (A183912 (3 * (n + 1))) (A325420 (n + 1))).toNat

end

end A258257.P18134056844435778975

/-! ## A258257.P148339653067497593

`A046219(A063841(n+2))`
-/

namespace A258257.P148339653067497593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046219 (A063841 (n + 2)).toNat

end

end A258257.P148339653067497593

/-! ## A258257.P15271069412873751255

`A088570(or(4, A213621(2*(n+1))))`
-/

namespace A258257.P15271069412873751255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (Int.lor 4 (A213621 (2 * (n + 1)))).toNat

end

end A258257.P15271069412873751255

/-! ## A258257.P4017270279064087844

`A006498(A051237(A051237(A051237(A000041(n+1)))))`
-/

namespace A258257.P4017270279064087844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (A051237 (A051237 (A051237 (A000041 (n + 1)).toNat).toNat).toNat).toNat

end

end A258257.P4017270279064087844

/-!
# A258259: Number of partitions of n into distinct parts less than or equal to n/2.

The programs for A258259, there is no canonical definition to state claims against.
-/

/-! ## A258259.P16943361851858440413

`A000009(n)-∑[A035457(A004442(n))]`
-/

namespace A258259.P16943361851858440413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258259.P16943361851858440413

/-! ## A258259.P7856548941965422970

`∑[A087897(n)-A035457(A004442(n))]`
-/

namespace A258259.P7856548941965422970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n - A035457 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258259.P7856548941965422970

/-! ## A258259.P1250457644738724615

`A000009(n)+A035457(n)-∑[A035457(n)]`
-/

namespace A258259.P1250457644738724615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A035457 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258259.P1250457644738724615

/-! ## A258259.P6932130777218427550

`A035457(n)+∑[A087897(n)-A035457(n)]`
-/

namespace A258259.P6932130777218427550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n - A035457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258259.P6932130777218427550

/-! ## A258259.P9395650238331074622

`A079126(floor(n²/2)+n)`
-/

namespace A258259.P9395650238331074622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 (⌊(n ^ 2 : ℚ) / 2⌋ + (n : ℤ)).toNat

end

end A258259.P9395650238331074622

/-!
# A258261: Primes p such that 3p - 4 is also prime.

The programs for A258261, there is no canonical definition to state claims against.
-/

/-! ## A258261.P14047480743827984132

`(A228353(n+1)+4)/3`
-/

namespace A258261.P14047480743827984132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228353 (n + 1) + 4 : ℚ) / 3

end

end A258261.P14047480743827984132

/-! ## A258261.P8228483820215808523

`p?[A228121(n+1)]`
-/

namespace A258261.P8228483820215808523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258261.P8228483820215808523

/-! ## A258261.P13617643023406449853

`p?[A087370(n+1)+1]`
-/

namespace A258261.P13617643023406449853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258261.P13617643023406449853

/-! ## A258261.P14188037337770425032

`p?[A024893(n+1)+2]`
-/

namespace A258261.P14188037337770425032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258261.P14188037337770425032

/-! ## A258261.P16801886652596702467

`filter[A228121(n+1), A010051(#)]`
-/

namespace A258261.P16801886652596702467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A258261.P16801886652596702467

/-! ## A258261.P17934045606996415535

`filter[A228121(n+1), A365716(#)]`
-/

namespace A258261.P17934045606996415535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A258261.P17934045606996415535

/-! ## A258261.P2955712775990084310

`filter[A228121(n+1), A380467(#)]`
-/

namespace A258261.P2955712775990084310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A258261.P2955712775990084310

/-! ## A258261.P14505726051892224997

`∩[A228121(n+1), A042988(n)]`
-/

namespace A258261.P14505726051892224997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258261.P14505726051892224997

/-! ## A258261.P1387138080662701473

`record[A006530(A087370(n+1)+1)]`
-/

namespace A258261.P1387138080662701473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087370 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258261.P1387138080662701473

/-! ## A258261.P16941520113156229307

`record[A006530(A024893(n+1)+2)]`
-/

namespace A258261.P16941520113156229307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024893 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258261.P16941520113156229307

/-! ## A258261.P14732701855383528833

`∩[A000040(n+1), A228121(n+1)]`
-/

namespace A258261.P14732701855383528833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258261.P14732701855383528833

/-! ## A258261.P13776697606670914808

`∩[A008578(n+1), A228121(n+1)]`
-/

namespace A258261.P13776697606670914808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258261.P13776697606670914808

/-! ## A258261.P8580434468854783983

`∩[A046022(n+1), A228121(n+1)]`
-/

namespace A258261.P8580434468854783983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258261.P8580434468854783983

/-! ## A258261.P18060996152003797841

`∩[A051948(n+1), A228121(n+1)]`
-/

namespace A258261.P18060996152003797841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258261.P18060996152003797841

/-! ## A258261.P16136082115219815856

`∩[A053577(n+1), A228121(n+1)]`
-/

namespace A258261.P16136082115219815856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258261.P16136082115219815856

/-! ## A258261.P5375143374128298979

`∩[A053813(n+1), A228121(n+1)]`
-/

namespace A258261.P5375143374128298979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258261.P5375143374128298979

/-! ## A258261.P658765956086744647

`∩[A066191(n+1), A228121(n+1)]`
-/

namespace A258261.P658765956086744647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258261.P658765956086744647

/-! ## A258261.P13573532278608895074

`∩[A067133(n+1), A228121(n+1)]`
-/

namespace A258261.P13573532278608895074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258261.P13573532278608895074

/-! ## A258261.P9538818786837639103

`∩[A116974(n+1), A228121(n+1)]`
-/

namespace A258261.P9538818786837639103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258261.P9538818786837639103

/-! ## A258261.P3658106570415401426

`∩[A158611(n+1), A228121(n+1)]`
-/

namespace A258261.P3658106570415401426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258261.P3658106570415401426

/-!
# A258263: First differences of A258233.

The programs for A258263, there is no canonical definition to state claims against.
-/

/-! ## A258263.P8971320926526831968

`A258233(n+2)-A258233(n+1)`
-/

namespace A258263.P8971320926526831968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258233 (n + 2) - A258233 (n + 1)

end

end A258263.P8971320926526831968

/-! ## A258263.P16846830771518241824

`Δ[A258233(n+1)]`
-/

namespace A258263.P16846830771518241824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258263.P16846830771518241824

/-! ## A258263.P12705395524346042210

`Δ[A068307(A001748(n+1))-A116619(n+1)]`
-/

namespace A258263.P12705395524346042210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A001748 (n + 1)).toNat - A116619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258263.P12705395524346042210

/-!
# A258264: Numbers having only one representation as a sum of the minimal number of triangular numbers, A000217.

The programs for A258264, there is no canonical definition to state claims against.
-/

/-! ## A258264.P939198593668637283

`eq[1, A258257(n+1)]+1`
-/

namespace A258264.P939198593668637283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258264.P939198593668637283

/-! ## A258264.P14881603887198316598

`record[A000027(n+1)/A258257(n+1)]`
-/

namespace A258264.P14881603887198316598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A258257 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258264.P14881603887198316598

/-! ## A258264.P12510398477595398914

`record[A005408(n)-n*A258257(n+1)]`
-/

namespace A258264.P12510398477595398914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A258257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258264.P12510398477595398914

/-! ## A258264.P7890426680304163078

`record[A133310(n)/A258257(A133310(n))]`
-/

namespace A258264.P7890426680304163078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133310 n : ℚ) / (A258257 (A133310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258264.P7890426680304163078

/-! ## A258264.P5272863732671914826

`A008619(record[A005408(n)/A258257(n+1)])`
-/

namespace A258264.P5272863732671914826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A258257 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A258264.P5272863732671914826

/-! ## A258264.P2055572834241482847

`record[A008619(2*n)/A258257(A008619(2*n))]`
-/

namespace A258264.P2055572834241482847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A258257 (A008619 (2 * n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258264.P2055572834241482847

/-! ## A258264.P6201999938465448834

`record[A109785(n)/A258257(A109785(n))]`
-/

namespace A258264.P6201999938465448834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109785 n : ℚ) / (A258257 (A109785 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258264.P6201999938465448834

/-!
# A258265: Numbers having more than one representation as a sum of the minimal number of triangular numbers, A000217.

The programs for A258265, there is no canonical definition to state claims against.
-/

/-! ## A258265.P9130083164589615961

`lt[1, A258257(n+1)]+1`
-/

namespace A258265.P9130083164589615961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258265.P9130083164589615961

/-! ## A258265.P15038067081987491348

`lt[1, A258257(A028310(n))]`
-/

namespace A258265.P15038067081987491348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258257 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258265.P15038067081987491348

/-! ## A258265.P762417634908531785

`eq[char[A258264(n+1)], A000007(n)]`
-/

namespace A258265.P762417634908531785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A258265.P762417634908531785

/-! ## A258265.P11859841265392839983

`eq[char[A258264(n+1)], A000038(n)]`
-/

namespace A258265.P11859841265392839983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A258265.P11859841265392839983

/-! ## A258265.P14961295495639171271

`eq[char[A258264(n+1)], A106458(2*n+1)]`
-/

namespace A258265.P14961295495639171271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A258265.P14961295495639171271

/-! ## A258265.P5630140536377104371

`eq[char[A258264(n+1)], A049084(2*(n+1))]`
-/

namespace A258265.P5630140536377104371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A258265.P5630140536377104371

/-!
# A258266: Numbers having only one representation as a sum of the minimal number of squares, A002828.

The programs for A258266, there is no canonical definition to state claims against.
-/

/-! ## A258266.P4222692989296762987

`eq[1, A180466(n+1)]+1`
-/

namespace A258266.P4222692989296762987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258266.P4222692989296762987

/-! ## A258266.P10570968267068347202

`lt[1, log2(a(A180466(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A258266.P10570968267068347202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  Real.logb 2 (f2 (A180466 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A258266.P10570968267068347202

/-! ## A258266.P8474682517505099085

`comp[A258267(n+1)-1]+1`
-/

namespace A258266.P8474682517505099085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258267 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A258266.P8474682517505099085

/-! ## A258266.P6443566429536176138

`lt[1, A000045(a(A180466(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A258266.P6443566429536176138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000045 (f2 (A180466 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258266.P6443566429536176138

/-! ## A258266.P3266575436627843076

`lt[1, A001222(a(A180466(n)))]` with `a(0)=1, a(1)=4`
-/

namespace A258266.P3266575436627843076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  A001222 (f2 (A180466 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258266.P3266575436627843076

/-! ## A258266.P17841681928572127624

`lt[A000040(a(A180466(n))), 4]` with `a(0)=4, a(1)=2`
-/

namespace A258266.P17841681928572127624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  A000040 (f1 (A180466 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A258266.P17841681928572127624

/-! ## A258266.P16758073159325205426

`lt[8, A000010(a(A180466(n)))]` with `a(0)=5, a(1)=22`
-/

namespace A258266.P16758073159325205426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 22] fun n f2 =>
  A000010 (f2 (A180466 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258266.P16758073159325205426

/-! ## A258266.P2671384022497693841

`eq[ceil(sin(n)²), A180466(A028310(n))]`
-/

namespace A258266.P2671384022497693841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180466 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258266.P2671384022497693841

/-! ## A258266.P9312360912943566970

`eq[1, A195663(a(A180466(n)-1))]` with `a(0)=0`
-/

namespace A258266.P9312360912943566970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A195663 (f2 (A180466 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258266.P9312360912943566970

/-! ## A258266.P16783644954648340219

`record[(n+1)/a(A001222(A180466(n+1)²))]` with `a(0)=1`
-/

namespace A258266.P16783644954648340219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) / f1 (A001222 (A180466 (n + 1) ^ 2).toNat).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258266.P16783644954648340219

/-!
# A258267: Numbers having more than one representation as a sum of the minimal number of squares, A002828.

The programs for A258267, there is no canonical definition to state claims against.
-/

/-! ## A258267.P13565098041265935116

`lt[1, A180466(n+1)]+1`
-/

namespace A258267.P13565098041265935116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258267.P13565098041265935116

/-! ## A258267.P17762075071425297442

`eq[1, log2(a(A180466(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A258267.P17762075071425297442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  Real.logb 2 (f2 (A180466 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A258267.P17762075071425297442

/-! ## A258267.P5185696829825915765

`lt[1, A180466(A028310(n))]`
-/

namespace A258267.P5185696829825915765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180466 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258267.P5185696829825915765

/-! ## A258267.P9894180393419494284

`A153152(lt[1, A180466(n+1)])`
-/

namespace A258267.P9894180393419494284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A258267.P9894180393419494284

/-! ## A258267.P5810045207241165932

`lt[1, A180466(A233583(n+1))]`
-/

namespace A258267.P5810045207241165932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180466 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258267.P5810045207241165932

/-! ## A258267.P685515355428471544

`eq[1, A000007(a(A180466(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A258267.P685515355428471544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A000007 (f2 (A180466 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258267.P685515355428471544

/-! ## A258267.P1450075334422008145

`eq[1, A010052(a(A180466(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A258267.P1450075334422008145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A010052 (f2 (A180466 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258267.P1450075334422008145

/-! ## A258267.P5053188482008100086

`eq[1, A000010(a(A180466(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A258267.P5053188482008100086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000010 (f2 (A180466 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258267.P5053188482008100086

/-! ## A258267.P2677133861486596547

`eq[3, A000040(a(A180466(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A258267.P2677133861486596547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000040 (f2 (A180466 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258267.P2677133861486596547

/-! ## A258267.P11238107770956703799

`eq[3, A000043(a(A180466(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A258267.P11238107770956703799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000043 (f2 (A180466 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258267.P11238107770956703799

/-!
# A258269: Primes of the form p^3 + q^2 + r, where p, q, r are consecutive primes.

The programs for A258269, there is no canonical definition to state claims against.
-/

/-! ## A258269.P15360894040243123190

`p?[A352851(n+2)+A030078(n+1)]`
-/

namespace A258269.P15360894040243123190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352851 (n + 2) + A030078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258269.P15360894040243123190

/-!
# A258272: The smallest amount which cannot be made with fewer than n British coins.

The programs for A258272, there is no canonical definition to state claims against.
-/

/-! ## A258272.P9479858026357724963

`∑[A212951(∑[A331571(n)])]`
-/

namespace A258272.P9479858026357724963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331571 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212951 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258272.P9479858026357724963

/-!
# A258277: Expansion of chi(-q) * phi(-q^3) * psi(q^3) in powers of q where chi(), phi(), psi() are Ramanujan theta functions.

The programs for A258277, the canonical program `A258277.P14490946904607176595` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258277 has offset 0).

The definition of A258277 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122865, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258277.P14490946904607176595

`(-1)^n*A122865(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A258277

/-- `(-1)^n*A122865(n)` -/
def P14490946904607176595.Spec : Prop :=
  ∀ n, P14490946904607176595.a n = A258277 n

theorem P14490946904607176595.correct : P14490946904607176595.Spec := by
  intro n
  simp only [A258277]

end A258277

/-! ## A258277.P15422021044578798392

`-A258210(3*n+1)`
-/

namespace A258277.P15422021044578798392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A258210 (3 * n + 1)

end

end A258277.P15422021044578798392

namespace A258277

/-- `-A258210(3*n+1)` -/
def P15422021044578798392.Spec : Prop :=
  ∀ n, P15422021044578798392.a n = A258277 n

end A258277

/-! ## A258277.P2654164156097482036

`A122865(n)/A033999(n)`
-/

namespace A258277.P2654164156097482036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122865 n : ℚ) / (A033999 n : ℚ)

end

end A258277.P2654164156097482036

namespace A258277

/-- `A122865(n)/A033999(n)` -/
def P2654164156097482036.Spec : Prop :=
  ∀ n, P2654164156097482036.a n = (A258277 n : ℚ)

end A258277

/-! ## A258277.P12984271172982197649

`(-1)^n*A122856(2*n)`
-/

namespace A258277.P12984271172982197649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122856 (2 * n)

end

end A258277.P12984271172982197649

namespace A258277

/-- `(-1)^n*A122856(2*n)` -/
def P12984271172982197649.Spec : Prop :=
  ∀ n, P12984271172982197649.a n = A258277 n

end A258277

/-! ## A258277.P9400954483019957720

`A033999(n)*A258278(2*n)`
-/

namespace A258277.P9400954483019957720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A258278 (2 * n)

end

end A258277.P9400954483019957720

namespace A258277

/-- `A033999(n)*A258278(2*n)` -/
def P9400954483019957720.Spec : Prop :=
  ∀ n, P9400954483019957720.a n = A258277 n

end A258277

/-! ## A258277.P13586252271282466626

`A056594(2*n)*A258278(2*n)`
-/

namespace A258277.P13586252271282466626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A258278 (2 * n)

end

end A258277.P13586252271282466626

namespace A258277

/-- `A056594(2*n)*A258278(2*n)` -/
def P13586252271282466626.Spec : Prop :=
  ∀ n, P13586252271282466626.a n = A258277 n

end A258277

/-! ## A258277.P8857819584982523646

`A164677(2*n+1)*A258278(2*n)`
-/

namespace A258277.P8857819584982523646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164677 (2 * n + 1) * A258278 (2 * n)

end

end A258277.P8857819584982523646

namespace A258277

/-- `A164677(2*n+1)*A258278(2*n)` -/
def P8857819584982523646.Spec : Prop :=
  ∀ n, P8857819584982523646.a n = A258277 n

end A258277

/-! ## A258277.P7136156105005738812

`A113652(3*n+1)`
-/

namespace A258277.P7136156105005738812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113652 (3 * n + 1)

end

end A258277.P7136156105005738812

namespace A258277

/-- `A113652(3*n+1)` -/
def P7136156105005738812.Spec : Prop :=
  ∀ n, P7136156105005738812.a n = A258277 n

end A258277

/-! ## A258277.P6522661111531828122

`A121450(3*n+1)`
-/

namespace A258277.P6522661111531828122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 (3 * n + 1)

end

end A258277.P6522661111531828122

namespace A258277

/-- `A121450(3*n+1)` -/
def P6522661111531828122.Spec : Prop :=
  ∀ n, P6522661111531828122.a n = A258277 n

end A258277

/-! ## A258277.P13220000814081834992

`A132004(3*n+1)`
-/

namespace A258277.P13220000814081834992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132004 (3 * n + 1)

end

end A258277.P13220000814081834992

namespace A258277

/-- `A132004(3*n+1)` -/
def P13220000814081834992.Spec : Prop :=
  ∀ n, P13220000814081834992.a n = A258277 n

end A258277

/-! ## A258277.P839453421012633132

`A138746(3*n+1)`
-/

namespace A258277.P839453421012633132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138746 (3 * n + 1)

end

end A258277.P839453421012633132

namespace A258277

/-- `A138746(3*n+1)` -/
def P839453421012633132.Spec : Prop :=
  ∀ n, P839453421012633132.a n = A258277 n

end A258277

/-! ## A258277.P7747473880240316920

`A138952(3*n+1)`
-/

namespace A258277.P7747473880240316920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138952 (3 * n + 1)

end

end A258277.P7747473880240316920

namespace A258277

/-- `A138952(3*n+1)` -/
def P7747473880240316920.Spec : Prop :=
  ∀ n, P7747473880240316920.a n = A258277 n

end A258277

/-! ## A258277.P18169515579854524386

`A257900(3*n+1)`
-/

namespace A258277.P18169515579854524386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257900 (3 * n + 1)

end

end A258277.P18169515579854524386

namespace A258277

/-- `A257900(3*n+1)` -/
def P18169515579854524386.Spec : Prop :=
  ∀ n, P18169515579854524386.a n = A258277 n

end A258277

/-! ## A258277.P16549631695730649545

`A129448(A165355(n))`
-/

namespace A258277.P16549631695730649545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129448 (A165355 n).toNat

end

end A258277.P16549631695730649545

namespace A258277

/-- `A129448(A165355(n))` -/
def P16549631695730649545.Spec : Prop :=
  ∀ n, P16549631695730649545.a n = A258277 n

end A258277

/-! ## A258277.P13906889324459769024

`A138951(A016789(n)-1)/2`
-/

namespace A258277.P13906889324459769024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138951 (A016789 n - 1).toNat : ℚ) / 2

end

end A258277.P13906889324459769024

namespace A258277

/-- `A138951(A016789(n)-1)/2` -/
def P13906889324459769024.Spec : Prop :=
  ∀ n, P13906889324459769024.a n = (A258277 n : ℚ)

end A258277

/-! ## A258277.P13755642125381500076

`A002654(3*n+1)*A056594(2*n)`
-/

namespace A258277.P13755642125381500076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (3 * n + 1) * A056594 (2 * n)

end

end A258277.P13755642125381500076

namespace A258277

/-- `A002654(3*n+1)*A056594(2*n)` -/
def P13755642125381500076.Spec : Prop :=
  ∀ n, P13755642125381500076.a n = A258277 n

end A258277

/-! ## A258277.P292822124686665240

`A002654(3*n+1)*A010892(3*n)`
-/

namespace A258277.P292822124686665240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (3 * n + 1) * A010892 (3 * n)

end

end A258277.P292822124686665240

namespace A258277

/-- `A002654(3*n+1)*A010892(3*n)` -/
def P292822124686665240.Spec : Prop :=
  ∀ n, P292822124686665240.a n = A258277 n

end A258277

/-! ## A258277.P1058196669815928092

`A002654(3*n+1)*A034947(2*n+1)`
-/

namespace A258277.P1058196669815928092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (3 * n + 1) * A034947 (2 * n + 1)

end

end A258277.P1058196669815928092

namespace A258277

/-- `A002654(3*n+1)*A034947(2*n+1)` -/
def P1058196669815928092.Spec : Prop :=
  ∀ n, P1058196669815928092.a n = A258277 n

end A258277

/-! ## A258277.P7821567181192761235

`A002654(3*n+1)*A209615(2*n+1)`
-/

namespace A258277.P7821567181192761235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (3 * n + 1) * A209615 (2 * n + 1)

end

end A258277.P7821567181192761235

namespace A258277

/-- `A002654(3*n+1)*A209615(2*n+1)` -/
def P7821567181192761235.Spec : Prop :=
  ∀ n, P7821567181192761235.a n = A258277 n

end A258277

/-! ## A258277.P8665105028188977667

`A256279(3*n+1)`
-/

namespace A258277.P8665105028188977667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256279 (3 * n + 1)

end

end A258277.P8665105028188977667

namespace A258277

/-- `A256279(3*n+1)` -/
def P8665105028188977667.Spec : Prop :=
  ∀ n, P8665105028188977667.a n = A258277 n

end A258277

/-!
# A258278: Expansion of f(-x, -x^5)^2 in powers of x where f(,) is Ramanujan's general theta function.

The programs for A258278, the canonical program `A258278.P13033127775777485449` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258278 has offset 0).

The definition of A258278 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122856, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258278.P13033127775777485449

`(-1)^n*A122856(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A258278

/-- `(-1)^n*A122856(n)` -/
def P13033127775777485449.Spec : Prop :=
  ∀ n, P13033127775777485449.a n = A258278 n

theorem P13033127775777485449.correct : P13033127775777485449.Spec := by
  intro n
  simp only [A258278]

end A258278

/-! ## A258278.P1972092250838172821

`A122856(n)*A309873(n+1)`
-/

namespace A258278.P1972092250838172821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 n * A309873 (n + 1)

end

end A258278.P1972092250838172821

namespace A258278

/-- `A122856(n)*A309873(n+1)` -/
def P1972092250838172821.Spec : Prop :=
  ∀ n, P1972092250838172821.a n = A258278 n

end A258278

/-! ## A258278.P14507527428854511986

`A032520(A122856(n))*A033999(n)`
-/

namespace A258278.P14507527428854511986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032520 (A122856 n).toNat * A033999 n

end

end A258278.P14507527428854511986

namespace A258278

/-- `A032520(A122856(n))*A033999(n)` -/
def P14507527428854511986.Spec : Prop :=
  ∀ n, P14507527428854511986.a n = A258278 n

end A258278

/-! ## A258278.P14553502337439406422

`A122856(n)/A054354(A054353(n+1))`
-/

namespace A258278.P14553502337439406422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122856 n : ℚ) / (A054354 (A054353 (n + 1)).toNat : ℚ)

end

end A258278.P14553502337439406422

namespace A258278

/-- `A122856(n)/A054354(A054353(n+1))` -/
def P14553502337439406422.Spec : Prop :=
  ∀ n, P14553502337439406422.a n = (A258278 n : ℚ)

end A258278

/-! ## A258278.P17487160001780016112

`A033999(n)*A122865(2*n+1)`
-/

namespace A258278.P17487160001780016112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A122865 (2 * n + 1)

end

end A258278.P17487160001780016112

namespace A258278

/-- `A033999(n)*A122865(2*n+1)` -/
def P17487160001780016112.Spec : Prop :=
  ∀ n, P17487160001780016112.a n = A258278 n

end A258278

/-! ## A258278.P14490231393836364606

`A033999(n+1)*A258277(2*n+1)`
-/

namespace A258278.P14490231393836364606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A258277 (2 * n + 1)

end

end A258278.P14490231393836364606

namespace A258278

/-- `A033999(n+1)*A258277(2*n+1)` -/
def P14490231393836364606.Spec : Prop :=
  ∀ n, P14490231393836364606.a n = A258278 n

end A258278

/-! ## A258278.P10240206902087564734

`A034947(2*n+1)*A122865(2*n+1)`
-/

namespace A258278.P10240206902087564734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A122865 (2 * n + 1)

end

end A258278.P10240206902087564734

namespace A258278

/-- `A034947(2*n+1)*A122865(2*n+1)` -/
def P10240206902087564734.Spec : Prop :=
  ∀ n, P10240206902087564734.a n = A258278 n

end A258278

/-! ## A258278.P9375167598258129558

`A102283(A001651(n+2))*A258277(2*n+1)`
-/

namespace A258278.P9375167598258129558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A001651 (n + 2)).toNat * A258277 (2 * n + 1)

end

end A258278.P9375167598258129558

namespace A258278

/-- `A102283(A001651(n+2))*A258277(2*n+1)` -/
def P9375167598258129558.Spec : Prop :=
  ∀ n, P9375167598258129558.a n = A258278 n

end A258278

/-! ## A258278.P11276782741828314044

`A138745(3*n+2)`
-/

namespace A258278.P11276782741828314044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138745 (3 * n + 2)

end

end A258278.P11276782741828314044

namespace A258278

/-- `A138745(3*n+2)` -/
def P11276782741828314044.Spec : Prop :=
  ∀ n, P11276782741828314044.a n = A258278 n

end A258278

/-! ## A258278.P17687959559179565604

`A256282(3*n+2)`
-/

namespace A258278.P17687959559179565604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 (3 * n + 2)

end

end A258278.P17687959559179565604

namespace A258278

/-- `A256282(3*n+2)` -/
def P17687959559179565604.Spec : Prop :=
  ∀ n, P17687959559179565604.a n = A258278 n

end A258278

/-! ## A258278.P10489430357746559909

`A258279(3*n+2)`
-/

namespace A258278.P10489430357746559909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258279 (3 * n + 2)

end

end A258278.P10489430357746559909

namespace A258278

/-- `A258279(3*n+2)` -/
def P10489430357746559909.Spec : Prop :=
  ∀ n, P10489430357746559909.a n = A258278 n

end A258278

/-! ## A258278.P15287049190533995405

`A132003(3*n+2)/2`
-/

namespace A258278.P15287049190533995405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132003 (3 * n + 2) : ℚ) / 2

end

end A258278.P15287049190533995405

namespace A258278

/-- `A132003(3*n+2)/2` -/
def P15287049190533995405.Spec : Prop :=
  ∀ n, P15287049190533995405.a n = (A258278 n : ℚ)

end A258278

/-! ## A258278.P2487440852105135919

`A129448(A165367(n))`
-/

namespace A258278.P2487440852105135919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129448 (A165367 n).toNat

end

end A258278.P2487440852105135919

namespace A258278

/-- `A129448(A165367(n))` -/
def P2487440852105135919.Spec : Prop :=
  ∀ n, P2487440852105135919.a n = A258278 n

end A258278

/-! ## A258278.P8474946285689920448

`A002654(3*n+2)*A010892(3*n)`
-/

namespace A258278.P8474946285689920448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (3 * n + 2) * A010892 (3 * n)

end

end A258278.P8474946285689920448

namespace A258278

/-- `A002654(3*n+2)*A010892(3*n)` -/
def P8474946285689920448.Spec : Prop :=
  ∀ n, P8474946285689920448.a n = A258278 n

end A258278

/-! ## A258278.P6916629095910322636

`abs(A132004(3*n+2))*A309873(n+1)`
-/

namespace A258278.P6916629095910322636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132004 (3 * n + 2)| * A309873 (n + 1)

end

end A258278.P6916629095910322636

namespace A258278

/-- `abs(A132004(3*n+2))*A309873(n+1)` -/
def P6916629095910322636.Spec : Prop :=
  ∀ n, P6916629095910322636.a n = A258278 n

end A258278

/-! ## A258278.P524055546349430268

`A129251(A007913(n+1))-A138952(3*n+2)`
-/

namespace A258278.P524055546349430268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A007913 (n + 1)).toNat - A138952 (3 * n + 2)

end

end A258278.P524055546349430268

namespace A258278

/-- `A129251(A007913(n+1))-A138952(3*n+2)` -/
def P524055546349430268.Spec : Prop :=
  ∀ n, P524055546349430268.a n = A258278 n

end A258278

/-! ## A258278.P1314319705096755148

`A129251(A007947(n+1))-A138952(3*n+2)`
-/

namespace A258278.P1314319705096755148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A007947 (n + 1)).toNat - A138952 (3 * n + 2)

end

end A258278.P1314319705096755148

namespace A258278

/-- `A129251(A007947(n+1))-A138952(3*n+2)` -/
def P1314319705096755148.Spec : Prop :=
  ∀ n, P1314319705096755148.a n = A258278 n

end A258278

/-! ## A258278.P15120101915304549127

`A129251(A003817(3*(n+1)))-A138952(3*n+2)`
-/

namespace A258278.P15120101915304549127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A003817 (3 * (n + 1))).toNat - A138952 (3 * n + 2)

end

end A258278.P15120101915304549127

namespace A258278

/-- `A129251(A003817(3*(n+1)))-A138952(3*n+2)` -/
def P15120101915304549127.Spec : Prop :=
  ∀ n, P15120101915304549127.a n = A258278 n

end A258278

/-! ## A258278.P7557043730463026162

`A129448(A166304(n))`
-/

namespace A258278.P7557043730463026162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129448 (A166304 n).toNat

end

end A258278.P7557043730463026162

namespace A258278

/-- `A129448(A166304(n))` -/
def P7557043730463026162.Spec : Prop :=
  ∀ n, P7557043730463026162.a n = A258278 n

end A258278

/-! ## A258278.P17739674297221157530

`A121450(A017233(n))`
-/

namespace A258278.P17739674297221157530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 (A017233 n).toNat

end

end A258278.P17739674297221157530

namespace A258278

/-- `A121450(A017233(n))` -/
def P17739674297221157530.Spec : Prop :=
  ∀ n, P17739674297221157530.a n = A258278 n

end A258278

/-!
# A258279: Expansion of psi(q)^2 * chi(-q^3)^2 in powers of q where psi(), chi() are Ramanujan theta functions.

The programs for A258279, there is no canonical definition to state claims against.
-/

/-! ## A258279.P6526635780007978587

`A258292(n)/(-1)^n`
-/

namespace A258279.P6526635780007978587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258292 n : ℚ) / ((-1) ^ n : ℚ)

end

end A258279.P6526635780007978587

/-! ## A258279.P12512082929998402738

`A033999(n)*A258292(n)`
-/

namespace A258279.P12512082929998402738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A258292 n

end

end A258279.P12512082929998402738

/-! ## A258279.P12147666941689031926

`A057079(n)*A258256(n)`
-/

namespace A258279.P12147666941689031926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A258256 n

end

end A258279.P12147666941689031926

/-! ## A258279.P4613842891185653384

`A131713(n)*A256282(n)`
-/

namespace A258279.P4613842891185653384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A256282 n

end

end A258279.P4613842891185653384

/-! ## A258279.P6143701001284501627

`A004018(n)/A132954(n)`
-/

namespace A258279.P6143701001284501627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / (A132954 n : ℚ)

end

end A258279.P6143701001284501627

/-! ## A258279.P17431239979862140734

`A259761(n)/A132367(n)`
-/

namespace A258279.P17431239979862140734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259761 n : ℚ) / (A132367 n : ℚ)

end

end A258279.P17431239979862140734

/-! ## A258279.P14888116348262018469

`A256014(n)/A132367(n)²`
-/

namespace A258279.P14888116348262018469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256014 n : ℚ) / (A132367 n ^ 2 : ℚ)

end

end A258279.P14888116348262018469

/-! ## A258279.P15399268238542420535

`A258292(n)*A309873(n+1)`
-/

namespace A258279.P15399268238542420535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258292 n * A309873 (n + 1)

end

end A258279.P15399268238542420535

/-! ## A258279.P4472233628411312817

`A087960(n)^n*A258292(n)`
-/

namespace A258279.P4472233628411312817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ n * A258292 n

end

end A258279.P4472233628411312817

/-! ## A258279.P8891202222889741425

`(2-A057079(n)²)*A256282(n)`
-/

namespace A258279.P8891202222889741425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A256282 n

end

end A258279.P8891202222889741425

/-! ## A258279.P16811730648393884934

`(2-A038712(n+1))*A258292(n)`
-/

namespace A258279.P16811730648393884934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A038712 (n + 1)) * A258292 n

end

end A258279.P16811730648393884934

/-! ## A258279.P5818683745575045403

`A010815(val(n+1, 2))*A258292(n)`
-/

namespace A258279.P5818683745575045403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (SequenceMachineLib.valuation (n + 1) 2) * A258292 n

end

end A258279.P5818683745575045403

/-! ## A258279.P8816463153108706278

`A089802(val(n+1, 2))*A258292(n)`
-/

namespace A258279.P8816463153108706278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089802 (SequenceMachineLib.valuation (n + 1) 2) * A258292 n

end

end A258279.P8816463153108706278

/-! ## A258279.P11605531505139594217

`A256014(n)/A057079(A025480(n))²`
-/

namespace A258279.P11605531505139594217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256014 n : ℚ) / (A057079 (A025480 n).toNat ^ 2 : ℚ)

end

end A258279.P11605531505139594217

/-! ## A258279.P3457587277760883764

`A061347(n+2)*A256282(n)`
-/

namespace A258279.P3457587277760883764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) * A256282 n

end

end A258279.P3457587277760883764

/-! ## A258279.P14585447549494516498

`A033999(n)*A258210(2*n)`
-/

namespace A258279.P14585447549494516498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A258210 (2 * n)

end

end A258279.P14585447549494516498

/-! ## A258279.P3042110171052126017

`A057079(n)*A256282(2*n)`
-/

namespace A258279.P3042110171052126017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A256282 (2 * n)

end

end A258279.P3042110171052126017

/-! ## A258279.P1017242000887634427

`A104794(2*n)/A132954(n)`
-/

namespace A258279.P1017242000887634427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 (2 * n) : ℚ) / (A132954 n : ℚ)

end

end A258279.P1017242000887634427

/-! ## A258279.P17168263419419041055

`A033999(n)*A258228(2*n)`
-/

namespace A258279.P17168263419419041055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A258228 (2 * n)

end

end A258279.P17168263419419041055

/-! ## A258279.P3538048338420444798

`A010892(A016777(n))*A258292(n)`
-/

namespace A258279.P3538048338420444798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016777 n).toNat * A258292 n

end

end A258279.P3538048338420444798

/-!
# A258281: Number of partitions of 3 copies of n into distinct parts.

The programs for A258281, there is no canonical definition to state claims against.
-/

/-! ## A258281.P1074001902347503446

`A258280(eq[3, A055087(n)])`
-/

namespace A258281.P1074001902347503446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258281.P1074001902347503446

/-! ## A258281.P15770494764259336283

`A258280(eq[4, A122197(n+1)])`
-/

namespace A258281.P15770494764259336283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258281.P15770494764259336283

/-! ## A258281.P12618646091964785162

`A225391(n+2)-A326976(A052331(n+4))`
-/

namespace A258281.P12618646091964785162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225391 (n + 2) - A326976 (A052331 (n + 4)).toNat

end

end A258281.P12618646091964785162

/-!
# A258282: Number of partitions of 4 copies of n into distinct parts.

The programs for A258282, there is no canonical definition to state claims against.
-/

/-! ## A258282.P12318259623943347303

`A258280(eq[4, A055087(n)])`
-/

namespace A258282.P12318259623943347303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258282.P12318259623943347303

/-! ## A258282.P5743758232089790921

`A258280(A002620(n+9)+4)`
-/

namespace A258282.P5743758232089790921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (A002620 (n + 9) + 4).toNat

end

end A258282.P5743758232089790921

/-! ## A258282.P11760646371687715109

`A258280(eq[5, A122197(n+1)])`
-/

namespace A258282.P11760646371687715109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258282.P11760646371687715109

/-!
# A258283: Number of partitions of 5 copies of n into distinct parts.

The programs for A258283, there is no canonical definition to state claims against.
-/

/-! ## A258283.P17443673853055868516

`A258280(eq[5, A055087(n)])`
-/

namespace A258283.P17443673853055868516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258283.P17443673853055868516

/-! ## A258283.P8009702148269359848

`A258280(eq[6, A122197(n+1)])`
-/

namespace A258283.P8009702148269359848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258283.P8009702148269359848

/-!
# A258284: Number of partitions of 6 copies of n into distinct parts.

The programs for A258284, there is no canonical definition to state claims against.
-/

/-! ## A258284.P1646954757723456166

`A258280(eq[7, n%floor(sqrt(n+1))+1])`
-/

namespace A258284.P1646954757723456166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A258284.P1646954757723456166

/-! ## A258284.P8071279222290297395

`A258280(eq[6, A055087(n)])`
-/

namespace A258284.P8071279222290297395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258284.P8071279222290297395

/-! ## A258284.P5019135235035992118

`A258280(eq[7, A122197(n+1)])`
-/

namespace A258284.P5019135235035992118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258284.P5019135235035992118

/-!
# A258285: Number of partitions of 7 copies of n into distinct parts.

The programs for A258285, there is no canonical definition to state claims against.
-/

/-! ## A258285.P15030281929481551809

`A258280(eq[7, A055087(n)])`
-/

namespace A258285.P15030281929481551809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258285.P15030281929481551809

/-! ## A258285.P12500435962469167743

`A258280(eq[8, A122197(n+1)])`
-/

namespace A258285.P12500435962469167743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258285.P12500435962469167743

/-!
# A258286: Number of partitions of 8 copies of n into distinct parts.

The programs for A258286, there is no canonical definition to state claims against.
-/

/-! ## A258286.P14668031710236152220

`A258280(eq[8, A055087(n)])`
-/

namespace A258286.P14668031710236152220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258286.P14668031710236152220

/-! ## A258286.P11123041902648498268

`A258280(eq[9, A122197(n+1)])`
-/

namespace A258286.P11123041902648498268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258286.P11123041902648498268

/-!
# A258287: Number of partitions of 9 copies of n into distinct parts.

The programs for A258287, there is no canonical definition to state claims against.
-/

/-! ## A258287.P7087182161535490264

`A258280(eq[9, A055087(n)])`
-/

namespace A258287.P7087182161535490264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258287.P7087182161535490264

/-! ## A258287.P8574347101811987778

`A258280(eq[10, A122197(n+1)])`
-/

namespace A258287.P8574347101811987778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258287.P8574347101811987778

/-! ## A258287.P13252019101827160385

`A258280(lt[7, gcd(10, A122197(n+1))])`
-/

namespace A258287.P13252019101827160385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A122197 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A258287.P13252019101827160385

/-!
# A258288: Number of partitions of 10 copies of n into distinct parts.

The programs for A258288, there is no canonical definition to state claims against.
-/

/-! ## A258288.P11647532687363735907

`A258280(eq[10, A055087(n)])`
-/

namespace A258288.P11647532687363735907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258288.P11647532687363735907

/-! ## A258288.P7027176382304465702

`A258280(eq[11, A122197(n+1)])`
-/

namespace A258288.P7027176382304465702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258288.P7027176382304465702

/-!
# A258289: Number of partitions of 1, 2, 3, or more copies of n into distinct parts.

The programs for A258289, there is no canonical definition to state claims against.
-/

/-! ## A258289.P6340270784889265718

`A156724(3*A204856(n))`
-/

namespace A258289.P6340270784889265718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (3 * A204856 n).toNat

end

end A258289.P6340270784889265718

/-! ## A258289.P8838803608628760189

`A156724(A306665(n)+A030101(n))`
-/

namespace A258289.P8838803608628760189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A306665 n + A030101 n).toNat

end

end A258289.P8838803608628760189

/-! ## A258289.P3205409583989478323

`or(A040230(A002878(n)), A267007(n))`
-/

namespace A258289.P3205409583989478323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040230 (A002878 n).toNat) (A267007 n)

end

end A258289.P3205409583989478323

/-! ## A258289.P791402557478906832

`or(A000798(A057814(n)), A267007(n))`
-/

namespace A258289.P791402557478906832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000798 (A057814 n).toNat) (A267007 n)

end

end A258289.P791402557478906832

/-! ## A258289.P7309696866774880560

`or(A053164(A103237(n)), A267007(n))`
-/

namespace A258289.P7309696866774880560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053164 (A103237 n).toNat) (A267007 n)

end

end A258289.P7309696866774880560

/-!
# A258290: Arithmetic derivative of central binomial coefficients, cf. A000984.

The programs for A258290, the canonical program `A258290.P2763848387023428005` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258290 has offset 0).

The definition of A258290 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258290.P2763848387023428005

`A003415(A000984(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A258290

/-- `A003415(A000984(n))` -/
def P2763848387023428005.Spec : Prop :=
  ∀ n, P2763848387023428005.a n = A258290 n

theorem P2763848387023428005.correct : P2763848387023428005.Spec := by
  intro n
  simp only [A258290]

end A258290

/-! ## A258290.P14010197008273139793

`A258197(∑[4*n])`
-/

namespace A258290.P14010197008273139793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258197 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258290.P14010197008273139793

namespace A258290

/-- `A258197(∑[4*n])` -/
def P14010197008273139793.Spec : Prop :=
  ∀ n, P14010197008273139793.a n = A258290 n

end A258290

/-! ## A258290.P11832390978767205612

`record[A258197(A092530(n))]`
-/

namespace A258290.P11832390978767205612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258197 (A092530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258290.P11832390978767205612

namespace A258290

/-- `record[A258197(A092530(n))]` -/
def P11832390978767205612.Spec : Prop :=
  ∀ n, P11832390978767205612.a n = A258290 n

end A258290

/-! ## A258290.P6285503355871632710

`record[A258197(n*A008619(n))]`
-/

namespace A258290.P6285503355871632710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258197 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258290.P6285503355871632710

namespace A258290

/-- `record[A258197(n*A008619(n))]` -/
def P6285503355871632710.Spec : Prop :=
  ∀ n, P6285503355871632710.a n = A258290 n

end A258290

/-! ## A258290.P3779344064610456459

`A057427(n)*A258197(A046092(n))`
-/

namespace A258290.P3779344064610456459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A258197 (A046092 n).toNat

end

end A258290.P3779344064610456459

namespace A258290

/-- `A057427(n)*A258197(A046092(n))` -/
def P3779344064610456459.Spec : Prop :=
  ∀ n, P3779344064610456459.a n = A258290 n

end A258290

/-! ## A258290.P11291854083316794271

`record[A258197(A026741(n)+A000217(n))]`
-/

namespace A258290.P11291854083316794271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258197 (A026741 n + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258290.P11291854083316794271

namespace A258290

/-- `record[A258197(A026741(n)+A000217(n))]` -/
def P11291854083316794271.Spec : Prop :=
  ∀ n, P11291854083316794271.a n = A258290 n

end A258290

/-! ## A258290.P11629119964956141281

`A258197(A092530(2*n+1))+A258197(A092530(2*n))`
-/

namespace A258290.P11629119964956141281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258197 (A092530 (2 * n + 1)).toNat + A258197 (A092530 (2 * n)).toNat

end

end A258290.P11629119964956141281

namespace A258290

/-- `A258197(A092530(2*n+1))+A258197(A092530(2*n))` -/
def P11629119964956141281.Spec : Prop :=
  ∀ n, P11629119964956141281.a n = A258290 n

end A258290

/-!
# A258291: Expansion of q^(-1/4) * eta(q) * eta(q^2) * eta(q^6) / eta(q^3) in powers of q.

The programs for A258291, the canonical program `A258291.P5881300206868688426` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258291 has offset 0).

The definition of A258291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258291.P5881300206868688426

`A116604(2*n)/ratio[A131713(n+2)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A258291

/-- `A116604(2*n)/ratio[A131713(n+2)]` -/
def P5881300206868688426.Spec : Prop :=
  ∀ n, P5881300206868688426.a n = (A258291 n : ℚ)

end A258291

/-! ## A258291.P15582179348442565998

`A258279(4*n+1)/2`
-/

namespace A258291.P15582179348442565998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258279 (4 * n + 1) : ℚ) / 2

end

end A258291.P15582179348442565998

namespace A258291

/-- `A258279(4*n+1)/2` -/
def P15582179348442565998.Spec : Prop :=
  ∀ n, P15582179348442565998.a n = (A258291 n : ℚ)

end A258291

/-! ## A258291.P1480627450794110291

`A258292(4*n+1)/(1-6/2)`
-/

namespace A258291.P1480627450794110291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258292 (4 * n + 1) : ℚ) / (1 - (6 : ℚ) / 2)

end

end A258291.P1480627450794110291

namespace A258291

/-- `A258292(4*n+1)/(1-6/2)` -/
def P1480627450794110291.Spec : Prop :=
  ∀ n, P1480627450794110291.a n = (A258291 n : ℚ)

end A258291

/-! ## A258291.P4642547062466955714

`A004020(n)/A132954(A016813(n))`
-/

namespace A258291.P4642547062466955714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004020 n : ℚ) / (A132954 (A016813 n).toNat : ℚ)

end

end A258291.P4642547062466955714

namespace A258291

/-- `A004020(n)/A132954(A016813(n))` -/
def P4642547062466955714.Spec : Prop :=
  ∀ n, P4642547062466955714.a n = (A258291 n : ℚ)

end A258291

/-! ## A258291.P1759566312302986925

`A122864(A016813(n))/A131713(n)`
-/

namespace A258291.P1759566312302986925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122864 (A016813 n).toNat : ℚ) / (A131713 n : ℚ)

end

end A258291.P1759566312302986925

namespace A258291

/-- `A122864(A016813(n))/A131713(n)` -/
def P1759566312302986925.Spec : Prop :=
  ∀ n, P1759566312302986925.a n = (A258291 n : ℚ)

end A258291

/-!
# A258292: Expansion of psi(-q)^2 * chi(q^3)^2 in powers of q where psi(), f() are Ramanujan theta functions.

The programs for A258292, there is no canonical definition to state claims against.
-/

/-! ## A258292.P13459670056375051858

`(-1)^n*A258279(n)`
-/

namespace A258292.P13459670056375051858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A258279 n

end

end A258292.P13459670056375051858

/-! ## A258292.P4025823168489606045

`A057079(n)*A256282(n)`
-/

namespace A258292.P4025823168489606045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A256282 n

end

end A258292.P4025823168489606045

/-! ## A258292.P18203379996904967760

`A131713(n)*A258256(n)`
-/

namespace A258292.P18203379996904967760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A258256 n

end

end A258292.P18203379996904967760

/-! ## A258292.P5729682373922797836

`A104794(n)/A132954(n)`
-/

namespace A258292.P5729682373922797836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 n : ℚ) / (A132954 n : ℚ)

end

end A258292.P5729682373922797836

/-! ## A258292.P2328194209815789219

`A256280(n)/A177702(n)²`
-/

namespace A258292.P2328194209815789219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256280 n : ℚ) / (A177702 n ^ 2 : ℚ)

end

end A258292.P2328194209815789219

/-! ## A258292.P12145603465939114479

`A258279(n)*A309873(n+1)`
-/

namespace A258292.P12145603465939114479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258279 n * A309873 (n + 1)

end

end A258292.P12145603465939114479

/-! ## A258292.P12664015656663389116

`(2-A057079(n)²)*A258256(n)`
-/

namespace A258292.P12664015656663389116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A258256 n

end

end A258292.P12664015656663389116

/-! ## A258292.P6268907488217385009

`A061347(n+2)*A258256(n)`
-/

namespace A258292.P6268907488217385009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) * A258256 n

end

end A258292.P6268907488217385009

/-! ## A258292.P2170989903787087743

`A256280(n)/A057079(n+2)²`
-/

namespace A258292.P2170989903787087743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256280 n : ℚ) / (A057079 (n + 2) ^ 2 : ℚ)

end

end A258292.P2170989903787087743

/-! ## A258292.P11750961104738849948

`A258210(2*n)`
-/

namespace A258292.P11750961104738849948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258210 (2 * n)

end

end A258292.P11750961104738849948

/-! ## A258292.P8265799817566175967

`A258228(A064680(n))`
-/

namespace A258292.P8265799817566175967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258228 (A064680 n).toNat

end

end A258292.P8265799817566175967

/-! ## A258292.P17898871250819391399

`A131713(n)*A256282(2*n)`
-/

namespace A258292.P17898871250819391399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A256282 (2 * n)

end

end A258292.P17898871250819391399

/-! ## A258292.P7884470948522397709

`A061347(n+2)*A256282(2*n)`
-/

namespace A258292.P7884470948522397709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) * A256282 (2 * n)

end

end A258292.P7884470948522397709

/-! ## A258292.P4688640564471433448

`A258228(2*n)`
-/

namespace A258292.P4688640564471433448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258228 (2 * n)

end

end A258292.P4688640564471433448

/-! ## A258292.P5980825104190442327

`2*A256269(n)-A256269(2*n)`
-/

namespace A258292.P5980825104190442327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256269 n - A256269 (2 * n)

end

end A258292.P5980825104190442327

/-! ## A258292.P1996374578958716620

`A004018(n)/(2-A132954(2*n))`
-/

namespace A258292.P1996374578958716620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / (2 - A132954 (2 * n) : ℚ)

end

end A258292.P1996374578958716620

/-! ## A258292.P7761705634051183346

`A256280(2*n)/(A057079(2*n+1)-1)`
-/

namespace A258292.P7761705634051183346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256280 (2 * n) : ℚ) / (A057079 (2 * n + 1) - 1 : ℚ)

end

end A258292.P7761705634051183346

/-! ## A258292.P4249567085596286097

`A258279(4*n)`
-/

namespace A258292.P4249567085596286097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258279 (4 * n)

end

end A258292.P4249567085596286097

/-! ## A258292.P14131378472966152087

`A057079(4*n)*A258256(n)`
-/

namespace A258292.P14131378472966152087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (4 * n) * A258256 n

end

end A258292.P14131378472966152087

/-! ## A258292.P8632158300273744803

`A004018(n)/A132954(4*n)`
-/

namespace A258292.P8632158300273744803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / (A132954 (4 * n) : ℚ)

end

end A258292.P8632158300273744803

/-!
# A258293: Number of partitions of 3*n^2 into parts that are at most n.

The programs for A258293, there is no canonical definition to state claims against.
-/

/-! ## A258293.P1474373469935919759

`A008621(3^n*floor(∑[(n+1)/3*n!]))`
-/

namespace A258293.P1474373469935919759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 ((3 ^ n : ℤ) * ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋).toNat

end

end A258293.P1474373469935919759

/-!
# A258294: Number of partitions of 4*n^2 into parts that are at most n.

The programs for A258294, there is no canonical definition to state claims against.
-/

/-! ## A258294.P154576439111171514

`A026820(A028310(n)*A061600(2*n))`
-/

namespace A258294.P154576439111171514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A028310 n * A061600 (2 * n)).toNat

end

end A258294.P154576439111171514

/-!
# A258295: Number of partitions of 5*n^2 into parts that are at most n.

The programs for A258295, there is no canonical definition to state claims against.
-/

/-! ## A258295.P17863350536122674968

`A256992(A319122(n+1)+A008683(n+1))`
-/

namespace A258295.P17863350536122674968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (A319122 (n + 1) + A008683 (n + 1)).toNat

end

end A258295.P17863350536122674968

/-!
# A258296: Number of partitions of 2*n^2 into parts that are at most n.

The programs for A258296, there is no canonical definition to state claims against.
-/

/-! ## A258296.P10574325083262046941

`A026820(round(sqrt(n²+1))+C(2*n², 2))`
-/

namespace A258296.P10574325083262046941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + (Nat.choose (2 * n ^ 2) 2 : ℤ)).toNat

end

end A258296.P10574325083262046941

/-! ## A258296.P7467624959154602826

`A072233(A002817(2*n)+n)`
-/

namespace A258296.P7467624959154602826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A002817 (2 * n) + (n : ℤ)).toNat

end

end A258296.P7467624959154602826

/-! ## A258296.P13637443609250917105

`A058398(A002817(2*n)-n+1)`
-/

namespace A258296.P13637443609250917105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A002817 (2 * n) - (n : ℤ) + 1).toNat

end

end A258296.P13637443609250917105

/-! ## A258296.P10811975234856523560

`A026820(A002593(n)+round(sqrt(n²+1)))`
-/

namespace A258296.P10811975234856523560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A002593 n + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A258296.P10811975234856523560

/-! ## A258296.P8303105219423431796

`A026820(A028310(A002593(n)+n))`
-/

namespace A258296.P8303105219423431796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A028310 (A002593 n + (n : ℤ)).toNat).toNat

end

end A258296.P8303105219423431796

/-!
# A258298: Number of partitions of n*(n+1)*(n+2)/6 into parts that are at most n.

The programs for A258298, there is no canonical definition to state claims against.
-/

/-! ## A258298.P2920717310884771521

`A369218(∑[∑[n]])`
-/

namespace A258298.P2920717310884771521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369218 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258298.P2920717310884771521

/-! ## A258298.P16472871271852708992

`A071068(or(3, A032114(n+1)))`
-/

namespace A258298.P16472871271852708992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (Int.lor 3 (A032114 (n + 1))).toNat

end

end A258298.P16472871271852708992

/-!
# A258299: Number of partitions of n*(n-1)*(n-2) into parts that are at most n.

The programs for A258299, there is no canonical definition to state claims against.
-/

/-! ## A258299.P17561564587438982833

`or(A000166(n), A109754(A194349(n+1)))`
-/

namespace A258299.P17561564587438982833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000166 n) (A109754 (A194349 (n + 1)).toNat)

end

end A258299.P17561564587438982833

