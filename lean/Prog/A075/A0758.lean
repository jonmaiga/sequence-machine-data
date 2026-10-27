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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A075800: Palindromic numbers which are products of an odd number of distinct primes.

The programs for A075800, there is no canonical definition to state claims against.
-/

/-! ## A075800.P4866934973770650743

`A075806(n)+a(n-1)` with `a(0)=2`
-/

namespace A075800.P4866934973770650743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A075806 n + a (n - 1)

end

end A075800.P4866934973770650743

/-! ## A075800.P5532835006882332035

`∑[A075806(A000038(n)+n)]`
-/

namespace A075800.P5532835006882332035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075806 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075800.P5532835006882332035

/-! ## A075800.P12314313267099051629

`filter[A071251(n+1), A066829(#)]`
-/

namespace A075800.P12314313267099051629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A075800.P12314313267099051629

/-! ## A075800.P17724288747458929496

`filter[A071251(n+1), A359158(#)]`
-/

namespace A075800.P17724288747458929496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A075800.P17724288747458929496

/-! ## A075800.P2808819135846312939

`filter[A071251(n+1), A359372(#)]`
-/

namespace A075800.P2808819135846312939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A075800.P2808819135846312939

/-! ## A075800.P18040488358350170273

`filter[A071251(n+1), A374130(#)]`
-/

namespace A075800.P18040488358350170273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A075800.P18040488358350170273

/-! ## A075800.P13983353268955556025

`filter[A071251(n+1), A374466(#)]`
-/

namespace A075800.P13983353268955556025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A075800.P13983353268955556025

/-! ## A075800.P1194849313567141189

`record[A080305(A110751(n+2))]`
-/

namespace A075800.P1194849313567141189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (A110751 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075800.P1194849313567141189

/-! ## A075800.P16439509447479297344

`record[A080305(A002113(n+3))]`
-/

namespace A075800.P16439509447479297344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (A002113 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075800.P16439509447479297344

/-! ## A075800.P6860163844922166125

`filter[A071251(n+1), A252233(#)]`
-/

namespace A075800.P6860163844922166125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A075800.P6860163844922166125

/-! ## A075800.P12470108714057702603

`filter[A110751(n+1), A252233(#)]`
-/

namespace A075800.P12470108714057702603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A075800.P12470108714057702603

/-! ## A075800.P9258647566397811979

`filter[A002113(n+2), A252233(#)]`
-/

namespace A075800.P9258647566397811979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A075800.P9258647566397811979

/-! ## A075800.P3458089739847699085

`filter[A306273(n+2), A252233(#)]`
-/

namespace A075800.P3458089739847699085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A075800.P3458089739847699085

/-! ## A075800.P6946792122838249031

`∩[A071251(n+1), A374467(n+1)]`
-/

namespace A075800.P6946792122838249031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075800.P6946792122838249031

/-! ## A075800.P13405963333473764641

`∩[A002113(n+1), A030059(n+1)]`
-/

namespace A075800.P13405963333473764641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075800.P13405963333473764641

/-! ## A075800.P8579110253381736172

`∩[A030059(n+1), A071251(n+1)]`
-/

namespace A075800.P8579110253381736172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075800.P8579110253381736172

/-! ## A075800.P11419758374438920534

`∩[A030059(n+1), A110751(n+1)]`
-/

namespace A075800.P11419758374438920534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075800.P11419758374438920534

/-! ## A075800.P5200103252825394467

`∩[A030059(n+1), A306273(n+1)]`
-/

namespace A075800.P5200103252825394467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075800.P5200103252825394467

/-! ## A075800.P15662687032950043692

`∩[A071251(n+1), A211338(n+1)]`
-/

namespace A075800.P15662687032950043692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075800.P15662687032950043692

/-! ## A075800.P1096234478391542189

`∩[A071251(n+1), A279457(n+1)]`
-/

namespace A075800.P1096234478391542189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075800.P1096234478391542189

/-!
# A075801: Differences between adjacent palindromic nonprime numbers A032350.

The programs for A075801, there is no canonical definition to state claims against.
-/

/-! ## A075801.P2722844887526384260

`Δ[A032350(n+1)]`
-/

namespace A075801.P2722844887526384260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075801.P2722844887526384260

/-! ## A075801.P8796163509117228534

`abs(Δ[A032350(A328399(2*n))])`
-/

namespace A075801.P8796163509117228534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (A328399 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075801.P8796163509117228534

/-! ## A075801.P4955468424395691573

`A032350(n+2)-A032350(n+1)`
-/

namespace A075801.P4955468424395691573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 2) - A032350 (n + 1)

end

end A075801.P4955468424395691573

/-! ## A075801.P16361849850037314367

`Δ[record[A032350(A328399(n))]]`
-/

namespace A075801.P16361849850037314367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075801.P16361849850037314367

/-! ## A075801.P12556730257693150854

`Δ[record[A032350(A344180(n))]]`
-/

namespace A075801.P12556730257693150854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075801.P12556730257693150854

/-! ## A075801.P17383330486439238655

`abs(Δ[A032350(A008619(2*n))])`
-/

namespace A075801.P17383330486439238655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075801.P17383330486439238655

/-! ## A075801.P8601358187997988053

`Δ[∩[A002113(n+1), A018252(n+1)]]`
-/

namespace A075801.P8601358187997988053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A075801.P8601358187997988053

/-! ## A075801.P3346390177150892071

`Δ[record[A047813(A018252(n+1))]]`
-/

namespace A075801.P3346390177150892071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A018252 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075801.P3346390177150892071

/-! ## A075801.P3700244064332798771

`Δ[eq[n+1, A004086(A191558(n+1))]]`
-/

namespace A075801.P3700244064332798771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A191558 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A075801.P3700244064332798771

/-!
# A075802: Characteristic function of perfect powers, A001597.

The programs for A075802, the canonical program `A075802.P15418155707765850726` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075802 has offset 1).

The definition of A075802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075802.P12803520564062408304

`char[∑[A076412(n)]-1]`
-/

namespace A075802.P12803520564062408304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075802.P12803520564062408304

namespace A075802

/-- `char[∑[A076412(n)]-1]` -/
def P12803520564062408304.Spec : Prop :=
  ∀ n, (P12803520564062408304.a n : ℤ) = A075802 (n + 1)

end A075802

/-! ## A075802.P10969583907209460202

`floor(1/A160400(n+1))`
-/

namespace A075802.P10969583907209460202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A160400 (n + 1) : ℚ)⌋

end

end A075802.P10969583907209460202

namespace A075802

/-- `floor(1/A160400(n+1))` -/
def P10969583907209460202.Spec : Prop :=
  ∀ n, P10969583907209460202.a n = A075802 (n + 1)

end A075802

/-! ## A075802.P16283419849671658475

`floor(1/A274459(n+1))`
-/

namespace A075802.P16283419849671658475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A274459 (n + 1) : ℚ)⌋

end

end A075802.P16283419849671658475

namespace A075802

/-- `floor(1/A274459(n+1))` -/
def P16283419849671658475.Spec : Prop :=
  ∀ n, P16283419849671658475.a n = A075802 (n + 1)

end A075802

/-! ## A075802.P14350667884501115703

`ceil(A303709(n+1)/10)`
-/

namespace A075802.P14350667884501115703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A303709 (n + 1) : ℚ) / 10⌉

end

end A075802.P14350667884501115703

namespace A075802

/-- `ceil(A303709(n+1)/10)` -/
def P14350667884501115703.Spec : Prop :=
  ∀ n, P14350667884501115703.a n = A075802 (n + 1)

end A075802

/-! ## A075802.P13533626159752092414

`char[A001597(n+1)-1]`
-/

namespace A075802.P13533626159752092414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075802.P13533626159752092414

namespace A075802

/-- `char[A001597(n+1)-1]` -/
def P13533626159752092414.Spec : Prop :=
  ∀ n, (P13533626159752092414.a n : ℤ) = A075802 (n + 1)

end A075802

/-! ## A075802.P2790381062805401050

`char[A081676(n+1)-1]`
-/

namespace A075802.P2790381062805401050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075802.P2790381062805401050

namespace A075802

/-- `char[A081676(n+1)-1]` -/
def P2790381062805401050.Spec : Prop :=
  ∀ n, (P2790381062805401050.a n : ℤ) = A075802 (n + 1)

end A075802

/-! ## A075802.P3853353240068237123

`(1-A132350(n+1))^n`
-/

namespace A075802.P3853353240068237123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A132350 (n + 1)) ^ n

end

end A075802.P3853353240068237123

namespace A075802

/-- `(1-A132350(n+1))^n` -/
def P3853353240068237123.Spec : Prop :=
  ∀ n, P3853353240068237123.a n = A075802 (n + 1)

end A075802

/-! ## A075802.P3435536981041872017

`C(2, C(n+2, A175067(n+1)))`
-/

namespace A075802.P3435536981041872017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose (n + 2) (A175067 (n + 1)).toNat)

end

end A075802.P3435536981041872017

namespace A075802

/-- `C(2, C(n+2, A175067(n+1)))` -/
def P3435536981041872017.Spec : Prop :=
  ∀ n, (P3435536981041872017.a n : ℤ) = A075802 (n + 1)

end A075802

/-! ## A075802.P3929941096341484030

`A000007(A069584(n+1))`
-/

namespace A075802.P3929941096341484030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A069584 (n + 1)).toNat

end

end A075802.P3929941096341484030

namespace A075802

/-- `A000007(A069584(n+1))` -/
def P3929941096341484030.Spec : Prop :=
  ∀ n, P3929941096341484030.a n = A075802 (n + 1)

end A075802

/-! ## A075802.P4173179917736724538

`A000007(A074984(n+1))`
-/

namespace A075802.P4173179917736724538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A074984 (n + 1)).toNat

end

end A075802.P4173179917736724538

namespace A075802

/-- `A000007(A074984(n+1))` -/
def P4173179917736724538.Spec : Prop :=
  ∀ n, P4173179917736724538.a n = A075802 (n + 1)

end A075802

/-! ## A075802.P12869687405222563695

`A301573(A301573(n+1)²)`
-/

namespace A075802.P12869687405222563695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (A301573 (n + 1) ^ 2).toNat

end

end A075802.P12869687405222563695

namespace A075802

/-- `A301573(A301573(n+1)²)` -/
def P12869687405222563695.Spec : Prop :=
  ∀ n, P12869687405222563695.a n = A075802 (n + 1)

end A075802

/-! ## A075802.P15298626862311022402

`A054977(n)-A132350(n+1)`
-/

namespace A075802.P15298626862311022402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A132350 (n + 1)

end

end A075802.P15298626862311022402

namespace A075802

/-- `A054977(n)-A132350(n+1)` -/
def P15298626862311022402.Spec : Prop :=
  ∀ n, P15298626862311022402.a n = A075802 (n + 1)

end A075802

/-! ## A075802.P16053110067636573252

`A057427((1-A052409(n+1))²)`
-/

namespace A075802.P16053110067636573252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((1 - A052409 (n + 1)) ^ 2).toNat

end

end A075802.P16053110067636573252

namespace A075802

/-- `A057427((1-A052409(n+1))²)` -/
def P16053110067636573252.Spec : Prop :=
  ∀ n, P16053110067636573252.a n = A075802 (n + 1)

end A075802

/-! ## A075802.P15418155707765850726

`A069623(n+1)-A076411(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075802

/-- `A069623(n+1)-A076411(n+1)` -/
def P15418155707765850726.Spec : Prop :=
  ∀ n, P15418155707765850726.a n = A075802 (n + 1)

theorem P15418155707765850726.correct : P15418155707765850726.Spec := by
  intro n
  simp only [A075802, Nat.add_sub_cancel]

end A075802

/-! ## A075802.P9412517471593572055

`A303709(C(n, A303709(n+1)+n)+1)`
-/

namespace A075802.P9412517471593572055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (Nat.choose n (A303709 (n + 1) + (n : ℤ)).toNat + 1)

end

end A075802.P9412517471593572055

namespace A075802

/-- `A303709(C(n, A303709(n+1)+n)+1)` -/
def P9412517471593572055.Spec : Prop :=
  ∀ n, P9412517471593572055.a n = A075802 (n + 1)

end A075802

/-! ## A075802.P4301364060197891167

`∑{d}[n+1, A008683(#)*A091050((n+1)/#)]`
-/

namespace A075802.P4301364060197891167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A091050 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A075802.P4301364060197891167

namespace A075802

/-- `∑{d}[n+1, A008683(#)*A091050((n+1)/#)]` -/
def P4301364060197891167.Spec : Prop :=
  ∀ n, P4301364060197891167.a n = A075802 (n + 1)

end A075802

/-! ## A075802.P1299301704509484881

`∑{d}[n+1, A008836(#)*A304327((n+1)/#)]`
-/

namespace A075802.P1299301704509484881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A304327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A075802.P1299301704509484881

namespace A075802

/-- `∑{d}[n+1, A008836(#)*A304327((n+1)/#)]` -/
def P1299301704509484881.Spec : Prop :=
  ∀ n, P1299301704509484881.a n = A075802 (n + 1)

end A075802

/-! ## A075802.P2658303103060149372

`Δ[A076411(n+1)]`
-/

namespace A075802.P2658303103060149372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075802.P2658303103060149372

namespace A075802

/-- `Δ[A076411(n+1)]` -/
def P2658303103060149372.Spec : Prop :=
  ∀ n, P2658303103060149372.a n = A075802 (n + 1)

theorem P2658303103060149372.correct : P2658303103060149372.Spec := by
  intro n
  simp only [A075802, Nat.add_sub_cancel, A075802.P2658303103060149372.f1, A075802.P2658303103060149372.a, A075802.P15418155707765850726.a, A069623, A069623.P16188465153472375596.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075802

/-! ## A075802.P2536557213988536933

`char[A087320(n+1)-1]`
-/

namespace A075802.P2536557213988536933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087320 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075802.P2536557213988536933

namespace A075802

/-- `char[A087320(n+1)-1]` -/
def P2536557213988536933.Spec : Prop :=
  ∀ n, (P2536557213988536933.a n : ℤ) = A075802 (n + 1)

end A075802

/-! ## A075802.P16402308100648563892

`char[n*char[A045542(n+1)]]`
-/

namespace A075802.P16402308100648563892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A075802.P16402308100648563892

namespace A075802

/-- `char[n*char[A045542(n+1)]]` -/
def P16402308100648563892.Spec : Prop :=
  ∀ n, (P16402308100648563892.a n : ℤ) = A075802 (n + 1)

end A075802

/-!
# A075803: Differences between adjacent palindromic squarefree numbers.

The programs for A075803, there is no canonical definition to state claims against.
-/

/-! ## A075803.P12229991773606910706

`Δ[A071251(n+1)]`
-/

namespace A075803.P12229991773606910706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075803.P12229991773606910706

/-! ## A075803.P17762903944157659542

`abs(Δ[A071251(A328399(2*n))])`
-/

namespace A075803.P17762903944157659542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (A328399 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075803.P17762903944157659542

/-! ## A075803.P10182222102978975635

`abs(Δ[A071251(A005408(n)-n)])`
-/

namespace A075803.P10182222102978975635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075803.P10182222102978975635

/-! ## A075803.P5265661473135585542

`A071251(n+2)-A071251(n+1)`
-/

namespace A075803.P5265661473135585542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 2) - A071251 (n + 1)

end

end A075803.P5265661473135585542

/-! ## A075803.P8054533249903408673

`abs(Δ[A071251(A008619(2*n))])`
-/

namespace A075803.P8054533249903408673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075803.P8054533249903408673

/-! ## A075803.P10784960690742902751

`Δ[record[A093030(A005117(n+1))]]`
-/

namespace A075803.P10784960690742902751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (A005117 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075803.P10784960690742902751

/-! ## A075803.P363129042227108726

`Δ[eq[A056544(n+1), A056552(n+1)]]`
-/

namespace A075803.P363129042227108726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056544 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A075803.P363129042227108726

/-!
# A075804: Differences between adjacent palindromic nonsquarefree numbers A035132.

The programs for A075804, there is no canonical definition to state claims against.
-/

/-! ## A075804.P16623775530391009965

`Δ[A035132(n+1)]`
-/

namespace A075804.P16623775530391009965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075804.P16623775530391009965

/-! ## A075804.P11849307420838097322

`Δ[record[A035132(A291769(n))]]`
-/

namespace A075804.P11849307420838097322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075804.P11849307420838097322

/-! ## A075804.P5546387159389204556

`Δ[record[A035132(A329048(n))]]`
-/

namespace A075804.P5546387159389204556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075804.P5546387159389204556

/-! ## A075804.P1128184605574298403

`abs(Δ[A035132(A005408(n)-n)])`
-/

namespace A075804.P1128184605574298403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075804.P1128184605574298403

/-! ## A075804.P15757744198374822944

`A035132(n+2)-A035132(n+1)`
-/

namespace A075804.P15757744198374822944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (n + 2) - A035132 (n + 1)

end

end A075804.P15757744198374822944

/-! ## A075804.P6606696933784959394

`Δ[record[A035132(A158416(n))]]`
-/

namespace A075804.P6606696933784959394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075804.P6606696933784959394

/-! ## A075804.P5321044734772982726

`Δ[record[A035132(A117910(n))]]`
-/

namespace A075804.P5321044734772982726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075804.P5321044734772982726

/-! ## A075804.P9112810986524055594

`Δ[record[A035132(A263111(n))]]`
-/

namespace A075804.P9112810986524055594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075804.P9112810986524055594

/-! ## A075804.P7850458220511186540

`Δ[record[A035132(A137735(n))]]`
-/

namespace A075804.P7850458220511186540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075804.P7850458220511186540

/-! ## A075804.P11975229634579303686

`Δ[record[A047813(A013929(n+1))]]`
-/

namespace A075804.P11975229634579303686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A013929 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075804.P11975229634579303686

/-!
# A075805: Differences between adjacent palindromic numbers which are products of an even number of distinct primes.

The programs for A075805, there is no canonical definition to state claims against.
-/

/-! ## A075805.P16688080644264750768

`Δ[A075799(n+1)]`
-/

namespace A075805.P16688080644264750768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075805.P16688080644264750768

/-! ## A075805.P12573661231696975015

`A075799(n+2)-A075799(n+1)`
-/

namespace A075805.P12573661231696975015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 2) - A075799 (n + 1)

end

end A075805.P12573661231696975015

/-! ## A075805.P15300482754880840078

`Δ[∩[A046338(n+1), A071251(n+1)]]`
-/

namespace A075805.P15300482754880840078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A075805.P15300482754880840078

/-! ## A075805.P3304032332246052003

`Δ[record[A007913(A046338(n+1))]]`
-/

namespace A075805.P3304032332246052003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A046338 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075805.P3304032332246052003

/-! ## A075805.P16437790684980462515

`Δ[record[A062953(A071251(n+1))]]`
-/

namespace A075805.P16437790684980462515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (A071251 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075805.P16437790684980462515

/-! ## A075805.P1146428931391263717

`Δ[record[A341635(A032350(n+1))]]`
-/

namespace A075805.P1146428931391263717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341635 (A032350 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075805.P1146428931391263717

/-! ## A075805.P8764144178675221618

`Δ[record[A062953(A002113(n+2))]]`
-/

namespace A075805.P8764144178675221618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (A002113 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075805.P8764144178675221618

/-!
# A075806: Differences between adjacent palindromic numbers which are products of an odd number of distinct primes.

The programs for A075806, there is no canonical definition to state claims against.
-/

/-! ## A075806.P16281831193061916120

`Δ[A075800(n+1)]`
-/

namespace A075806.P16281831193061916120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075806.P16281831193061916120

/-! ## A075806.P11860999818841478137

`Δ[record[A075800(A133310(n))]]`
-/

namespace A075806.P11860999818841478137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075806.P11860999818841478137

/-! ## A075806.P12307173430784560517

`abs(Δ[A075800(A008619(2*n))])`
-/

namespace A075806.P12307173430784560517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075806.P12307173430784560517

/-! ## A075806.P6423319721205944708

`abs(Δ[A075800(A052938(2*n))])`
-/

namespace A075806.P6423319721205944708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075806.P6423319721205944708

/-! ## A075806.P12786134652626097447

`abs(Δ[A075800(A328399(2*n))])`
-/

namespace A075806.P12786134652626097447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (A328399 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075806.P12786134652626097447

/-! ## A075806.P3311034418382690850

`A075800(n+2)-A075800(n+1)`
-/

namespace A075806.P3311034418382690850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 2) - A075800 (n + 1)

end

end A075806.P3311034418382690850

/-! ## A075806.P11627478000778194318

`Δ[record[A075800(A154958(n))]]`
-/

namespace A075806.P11627478000778194318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075806.P11627478000778194318

/-! ## A075806.P10480176101318424656

`abs(Δ[A075800(A103221(6*n))])`
-/

namespace A075806.P10480176101318424656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (A103221 (6 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075806.P10480176101318424656

/-!
# A075807: Numbers k such that k-th prime is palindromic.

The programs for A075807, there is no canonical definition to state claims against.
-/

/-! ## A075807.P103150054496952237

`A000720(A002385(n+1))`
-/

namespace A075807.P103150054496952237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002385 (n + 1)).toNat

end

end A075807.P103150054496952237

/-! ## A075807.P7787341902776118973

`∑[A309321(C(2, n)+n)+1]`
-/

namespace A075807.P7787341902776118973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309321 (Nat.choose 2 n + n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075807.P7787341902776118973

/-! ## A075807.P6285379435580137027

`∑[A309321(A028310(n))+1]`
-/

namespace A075807.P6285379435580137027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309321 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075807.P6285379435580137027

/-! ## A075807.P13812518096558674203

`∑[A309321(A000038(n)+n)+1]`
-/

namespace A075807.P13812518096558674203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309321 (A000038 n + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075807.P13812518096558674203

/-! ## A075807.P14146523549922684816

`∑[A309321(A057428(n)+1+n)+1]`
-/

namespace A075807.P14146523549922684816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309321 (A057428 n + 1 + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075807.P14146523549922684816

/-! ## A075807.P13900358014057161297

`∑[A309321(round((A004273(n)+1)/2))+1]`
-/

namespace A075807.P13900358014057161297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309321 (SequenceMachineLib.roundAway ((A004273 n + 1 : ℚ) / 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075807.P13900358014057161297

/-! ## A075807.P5255313669582682076

`∑[A309321(n+1)+1]-A309321(n+1)`
-/

namespace A075807.P5255313669582682076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309321 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309321 (n + 1)

end

end A075807.P5255313669582682076

/-! ## A075807.P15529857527784051028

`a(n-1)+A309321(C(2, n)+n)+A054977(n)` with `a(0)=1`
-/

namespace A075807.P15529857527784051028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A309321 (Nat.choose 2 n + n) + A054977 n)

end

end A075807.P15529857527784051028

/-! ## A075807.P12513477299258766344

`A000720(A069217(n+2))`
-/

namespace A075807.P12513477299258766344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A069217 (n + 2)).toNat

end

end A075807.P12513477299258766344

/-! ## A075807.P6783552849357271711

`A000720(p?[A002113(n+1)])`
-/

namespace A075807.P6783552849357271711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075807.P6783552849357271711

/-! ## A075807.P11494424487583360907

`A000720(p?[A062687(n+1)])`
-/

namespace A075807.P11494424487583360907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075807.P11494424487583360907

/-! ## A075807.P11250617162036276651

`A061395(p?[A002113(n+1)])`
-/

namespace A075807.P11250617162036276651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075807.P11250617162036276651

/-! ## A075807.P9641307576135317

`record[A061395(A169829(n+2))]`
-/

namespace A075807.P9641307576135317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A169829 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075807.P9641307576135317

/-!
# A075808: Palindromic odd composite numbers that are the products of an odd number of distinct primes.

The programs for A075808, there is no canonical definition to state claims against.
-/

/-! ## A075808.P17569225362080482289

`∩[A035134(n+1), A356750(n+1)]`
-/

namespace A075808.P17569225362080482289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075808.P17569225362080482289

/-! ## A075808.P14012404166998863883

`∩[A035134(n+1), A075815(n+1)]`
-/

namespace A075808.P14012404166998863883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075808.P14012404166998863883

/-! ## A075808.P11141584060751836861

`∩[A071251(n+1), A075815(n+1)]`
-/

namespace A075808.P11141584060751836861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075808.P11141584060751836861

/-! ## A075808.P4451707051782055141

`∩[A075800(n+1), A075815(n+1)]`
-/

namespace A075808.P4451707051782055141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075808.P4451707051782055141

/-! ## A075808.P5926011317286974173

`filter[A075815(n+1), A008966(#)]`
-/

namespace A075808.P5926011317286974173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A075808.P5926011317286974173

/-! ## A075808.P17435267246288299712

`filter[A075815(n+1), A354353(#)]`
-/

namespace A075808.P17435267246288299712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A075808.P17435267246288299712

/-! ## A075808.P13243316600581136507

`filter[A075815(n+1), A354819(#)]`
-/

namespace A075808.P13243316600581136507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A075808.P13243316600581136507

/-! ## A075808.P7529102711693235114

`filter[A075815(n+1), A359158(#)]`
-/

namespace A075808.P7529102711693235114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A075808.P7529102711693235114

/-! ## A075808.P2413707236906240615

`filter[A075815(n+1), A359590(#)]`
-/

namespace A075808.P2413707236906240615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A075808.P2413707236906240615

/-! ## A075808.P2096728860130148304

`filter[A075815(n+1), A359592(#)]`
-/

namespace A075808.P2096728860130148304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A075808.P2096728860130148304

/-! ## A075808.P8632393375668882458

`filter[A075815(n+1), A359834(#)]`
-/

namespace A075808.P8632393375668882458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A075808.P8632393375668882458

/-! ## A075808.P7058215268829745945

`filter[A075815(n+1), A380469(#)]`
-/

namespace A075808.P7058215268829745945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A075808.P7058215268829745945

/-! ## A075808.P11178298643283323930

`filter[A356750(n+1), A354353(#)]`
-/

namespace A075808.P11178298643283323930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A075808.P11178298643283323930

/-! ## A075808.P18126827397778669398

`filter[A356750(n+1), A354819(#)]`
-/

namespace A075808.P18126827397778669398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A075808.P18126827397778669398

/-! ## A075808.P7501073777411865174

`filter[A356750(n+1), A380469(#)]`
-/

namespace A075808.P7501073777411865174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A075808.P7501073777411865174

/-! ## A075808.P464519203589268840

`filter[A035134(n+2), A373141(#)]`
-/

namespace A075808.P464519203589268840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A075808.P464519203589268840

/-!
# A075809: Palindromic even numbers with an odd number of distinct prime factors.

The programs for A075809, there is no canonical definition to state claims against.
-/

/-! ## A075809.P6399502341964601173

`∩[A029951(n+1), A075800(n+1)]`
-/

namespace A075809.P6399502341964601173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075809.P6399502341964601173

/-! ## A075809.P8292478046332846648

`∩[A071251(n+1), A075817(n+1)]`
-/

namespace A075809.P8292478046332846648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075809.P8292478046332846648

/-! ## A075809.P6520107906928469684

`∩[A075800(n+1), A075817(n+1)]`
-/

namespace A075809.P6520107906928469684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075809.P6520107906928469684

/-! ## A075809.P7265935005670489146

`∩[A075800(n+1), A277258(n+1)]`
-/

namespace A075809.P7265935005670489146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075809.P7265935005670489146

/-! ## A075809.P5294363772992881170

`∩[2*n, A075800(n+1)]`
-/

namespace A075809.P5294363772992881170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075809.P5294363772992881170

/-! ## A075809.P1300558668612675452

`filter[A075817(n+1), A008966(#)]`
-/

namespace A075809.P1300558668612675452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A075809.P1300558668612675452

/-! ## A075809.P6047698069876916161

`filter[A075800(n+1), A356163(#)]`
-/

namespace A075809.P6047698069876916161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A075809.P6047698069876916161

/-! ## A075809.P2554050764674186403

`filter[A075800(n+1), A359770(#)]`
-/

namespace A075809.P2554050764674186403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A075809.P2554050764674186403

/-! ## A075809.P1006901196140965402

`filter[A075800(n+1), A359774(#)]`
-/

namespace A075809.P1006901196140965402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A075809.P1006901196140965402

/-! ## A075809.P8352848521300632991

`filter[A075800(n+1), A359816(#)]`
-/

namespace A075809.P8352848521300632991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A075809.P8352848521300632991

/-! ## A075809.P7451470932411671873

`filter[A075800(n+1), A359820(#)]`
-/

namespace A075809.P7451470932411671873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A075809.P7451470932411671873

/-! ## A075809.P14881680222451374903

`filter[A075800(n+1), A359824(#)]`
-/

namespace A075809.P14881680222451374903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A075809.P14881680222451374903

/-! ## A075809.P18378592915560912620

`filter[A075800(n+1), A373252(#)]`
-/

namespace A075809.P18378592915560912620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A075809.P18378592915560912620

/-! ## A075809.P12067775733167440875

`∩[2*A056913(n+1), A002113(n+1)]`
-/

namespace A075809.P12067775733167440875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075809.P12067775733167440875

/-! ## A075809.P18024724109400638891

`∩[2*A056913(n+1), A071251(n+1)]`
-/

namespace A075809.P18024724109400638891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075809.P18024724109400638891

/-! ## A075809.P9786394197662692528

`∩[2*A056913(n+1), A306273(n+1)]`
-/

namespace A075809.P9786394197662692528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075809.P9786394197662692528

/-!
# A075810: Palindromic odd squarefree numbers with an even number of distinct prime factors.

The programs for A075810, there is no canonical definition to state claims against.
-/

/-! ## A075810.P11546223343166044

`∩[A029950(n+1), A075799(n+1)]`
-/

namespace A075810.P11546223343166044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075810.P11546223343166044

/-! ## A075810.P7896349656579820381

`filter[A029950(n+1), A359156(#)]`
-/

namespace A075810.P7896349656579820381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A075810.P7896349656579820381

/-! ## A075810.P5802792477786517558

`filter[A029950(n+1), A359465(#)]`
-/

namespace A075810.P5802792477786517558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A075810.P5802792477786517558

/-! ## A075810.P9855225917587551153

`filter[A032350(n+1), A359465(#)]`
-/

namespace A075810.P9855225917587551153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A075810.P9855225917587551153

/-! ## A075810.P11782247862736945907

`filter[A075799(n+1), A322980(#)]`
-/

namespace A075810.P11782247862736945907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A075810.P11782247862736945907

/-! ## A075810.P10321319123956888840

`filter[A046338(n+1), A359465(#)]`
-/

namespace A075810.P10321319123956888840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A075810.P10321319123956888840

/-! ## A075810.P11323501649596233051

`filter[A071251(n+1), A358680(#)]`
-/

namespace A075810.P11323501649596233051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A075810.P11323501649596233051

/-! ## A075810.P3143832860312364534

`filter[A071251(n+1), A359465(#)]`
-/

namespace A075810.P3143832860312364534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A075810.P3143832860312364534

/-! ## A075810.P15021521350355608164

`filter[A071251(n+1), A359595(#)]`
-/

namespace A075810.P15021521350355608164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A075810.P15021521350355608164

/-! ## A075810.P14879866348027624371

`filter[A071251(n+1), A359781(#)]`
-/

namespace A075810.P14879866348027624371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A075810.P14879866348027624371

/-! ## A075810.P8457805569184824175

`filter[A075799(n+1), A356163(#)]`
-/

namespace A075810.P8457805569184824175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A075810.P8457805569184824175

/-! ## A075810.P4705369808307603908

`filter[A075799(n+1), A358680(#)]`
-/

namespace A075810.P4705369808307603908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A075810.P4705369808307603908

/-! ## A075810.P11751377240163765571

`filter[A075799(n+1), A359465(#)]`
-/

namespace A075810.P11751377240163765571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A075810.P11751377240163765571

/-! ## A075810.P7055049680741422747

`filter[A075799(n+1), A359590(#)]`
-/

namespace A075810.P7055049680741422747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A075810.P7055049680741422747

/-! ## A075810.P3374823393224002800

`filter[A075799(n+1), A359592(#)]`
-/

namespace A075810.P3374823393224002800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A075810.P3374823393224002800

/-! ## A075810.P12990453577745021158

`filter[A075799(n+1), A359595(#)]`
-/

namespace A075810.P12990453577745021158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A075810.P12990453577745021158

/-! ## A075810.P11114895494190569018

`filter[A071251(n+1), A373374(#)]`
-/

namespace A075810.P11114895494190569018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A075810.P11114895494190569018

/-! ## A075810.P17294500723539097570

`filter[A092361(n+1), A359465(#)]`
-/

namespace A075810.P17294500723539097570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A075810.P17294500723539097570

/-! ## A075810.P8218988907839972714

`filter[A098897(n+1), A359465(#)]`
-/

namespace A075810.P8218988907839972714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A075810.P8218988907839972714

/-! ## A075810.P15429082363091611778

`filter[A169824(n+1), A359465(#)]`
-/

namespace A075810.P15429082363091611778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A075810.P15429082363091611778

/-!
# A075811: Palindromic even squarefree numbers with an even number of distinct prime factors.

The programs for A075811, there is no canonical definition to state claims against.
-/

/-! ## A075811.P6035562422634508288

`∩[A029951(n+1), A075799(n+1)]`
-/

namespace A075811.P6035562422634508288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075811.P6035562422634508288

/-! ## A075811.P10121932272178458288

`∩[A075799(n+1), A277258(n+1)]`
-/

namespace A075811.P10121932272178458288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075811.P10121932272178458288

/-! ## A075811.P18166346894435403771

`filter[A035134(n+1), A358775(#)]`
-/

namespace A075811.P18166346894435403771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358775 (f1 j).toNat = 1) n)

end

end A075811.P18166346894435403771

/-! ## A075811.P14089267636417506865

`filter[A035134(n+1), A369965(#)]`
-/

namespace A075811.P14089267636417506865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369965 (f1 j).toNat = 1) n)

end

end A075811.P14089267636417506865

/-! ## A075811.P17420497183096167708

`filter[A075799(n+1), A358775(#)]`
-/

namespace A075811.P17420497183096167708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358775 (f1 j).toNat = 1) n)

end

end A075811.P17420497183096167708

/-! ## A075811.P17588908947606630118

`filter[A075799(n+1), A369965(#)]`
-/

namespace A075811.P17588908947606630118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369965 (f1 j).toNat = 1) n)

end

end A075811.P17588908947606630118

/-! ## A075811.P11191517557015350792

`filter[A075799(n+2), A373252(#)]`
-/

namespace A075811.P11191517557015350792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A075811.P11191517557015350792

/-! ## A075811.P12604948796301879469

`∩[A016825(n), A075799(n+1)]`
-/

namespace A075811.P12604948796301879469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075811.P12604948796301879469

/-! ## A075811.P6291413217356901998

`∩[A035134(n+1), A369966(n+1)]`
-/

namespace A075811.P6291413217356901998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075811.P6291413217356901998

/-!
# A075812: Palindromic odd numbers with exactly 2 prime factors (counted with multiplicity).

The programs for A075812, there is no canonical definition to state claims against.
-/

/-! ## A075812.P10465745738756171211

`A046328(eq[1, A046328(n+1)%2]+1)`
-/

namespace A075812.P10465745738756171211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046328 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075812.P10465745738756171211

/-! ## A075812.P15206699483466123235

`A046328(eq[1, and(1, A046328(n+1))]+1)`
-/

namespace A075812.P15206699483466123235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046328 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075812.P15206699483466123235

/-! ## A075812.P4915865484911620177

`∩[or(1, A046328(n+1)), A046328(n+2)]`
-/

namespace A075812.P4915865484911620177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046328 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075812.P4915865484911620177

/-! ## A075812.P8142712293997362978

`∩[A029950(n+1), A046328(n+1)]`
-/

namespace A075812.P8142712293997362978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075812.P8142712293997362978

/-! ## A075812.P15895310289430003216

`∩[A029950(n+1), A085751(n+1)]`
-/

namespace A075812.P15895310289430003216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075812.P15895310289430003216

/-! ## A075812.P9235644008015850967

`filter[A046328(n+1), A359595(#)]`
-/

namespace A075812.P9235644008015850967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A075812.P9235644008015850967

/-! ## A075812.P7930707988812595331

`filter[A046328(n+1), A359770(#)]`
-/

namespace A075812.P7930707988812595331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A075812.P7930707988812595331

/-! ## A075812.P17125390757362528485

`filter[A046328(n+1), A359774(#)]`
-/

namespace A075812.P17125390757362528485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A075812.P17125390757362528485

/-! ## A075812.P3252495076041067938

`filter[A046328(n+1), A373157(#)]`
-/

namespace A075812.P3252495076041067938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A075812.P3252495076041067938

/-! ## A075812.P12445947829751691090

`filter[A046328(n+1), A374134(#)]`
-/

namespace A075812.P12445947829751691090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A075812.P12445947829751691090

/-! ## A075812.P592077742455263690

`filter[A029950(n+2), A359828(#)]`
-/

namespace A075812.P592077742455263690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A075812.P592077742455263690

/-! ## A075812.P5651815298042462751

`filter[A046328(n+2), A356163(#)]`
-/

namespace A075812.P5651815298042462751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A075812.P5651815298042462751

/-! ## A075812.P16986302921114373627

`filter[A046328(n+2), A358680(#)]`
-/

namespace A075812.P16986302921114373627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A075812.P16986302921114373627

/-! ## A075812.P14081793887404447656

`filter[A046328(n+2), A359781(#)]`
-/

namespace A075812.P14081793887404447656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A075812.P14081793887404447656

/-! ## A075812.P18400650926999569288

`filter[A046328(n+2), A359816(#)]`
-/

namespace A075812.P18400650926999569288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A075812.P18400650926999569288

/-! ## A075812.P11692441501633044083

`filter[A046328(n+2), A359828(#)]`
-/

namespace A075812.P11692441501633044083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A075812.P11692441501633044083

/-! ## A075812.P1546675464287732844

`filter[A046328(n+2), A373374(#)]`
-/

namespace A075812.P1546675464287732844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A075812.P1546675464287732844

/-! ## A075812.P12298534612360086810

`filter[A046328(n+2), A373851(#)]`
-/

namespace A075812.P12298534612360086810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373851 (f1 j).toNat = 1) n)

end

end A075812.P12298534612360086810

/-! ## A075812.P8951808942319264010

`∩[A001358(n+1), A029950(n+1)]`
-/

namespace A075812.P8951808942319264010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075812.P8951808942319264010

/-!
# A075813: Palindromic even numbers with exactly 2 prime factors (counted with multiplicity). Equivalently, palindromic numbers of the form 2*p with p prime.

The programs for A075813, there is no canonical definition to state claims against.
-/

/-! ## A075813.P3332465035995497588

`∩[A029951(n+1), A046328(n+1)]`
-/

namespace A075813.P3332465035995497588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075813.P3332465035995497588

/-! ## A075813.P7748276847491207559

`2*p?[A115897(n+1)]`
-/

namespace A075813.P7748276847491207559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075813.P7748276847491207559

/-! ## A075813.P9751131742157691153

`∩[2*n, A046328(n+1)]`
-/

namespace A075813.P9751131742157691153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075813.P9751131742157691153

/-! ## A075813.P839130332314780201

`filter[A046328(n+1), A365716(#)]`
-/

namespace A075813.P839130332314780201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A075813.P839130332314780201

/-! ## A075813.P5936979435104165952

`filter[A046328(n+1), A373252(#)]`
-/

namespace A075813.P5936979435104165952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A075813.P5936979435104165952

/-! ## A075813.P16206977866422036300

`filter[A046328(n+1), A377868(#)]`
-/

namespace A075813.P16206977866422036300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377868 (f1 j).toNat = 1) n)

end

end A075813.P16206977866422036300

/-! ## A075813.P6678990037481015655

`record[2*A006530(A277258(n+1))]`
-/

namespace A075813.P6678990037481015655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (A277258 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075813.P6678990037481015655

/-! ## A075813.P13067274106358756352

`∩[A001747(n+1), A032350(n+1)]`
-/

namespace A075813.P13067274106358756352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075813.P13067274106358756352

/-! ## A075813.P16919891583307048432

`∩[A001747(n+1), A035135(n+1)]`
-/

namespace A075813.P16919891583307048432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075813.P16919891583307048432

/-!
# A075814: Palindromic odd numbers with exactly 3 prime factors (counted with multiplicity).

The programs for A075814, there is no canonical definition to state claims against.
-/

/-! ## A075814.P15692827361271344001

`∩[A029950(n+1), A046329(n+1)]`
-/

namespace A075814.P15692827361271344001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075814.P15692827361271344001

/-! ## A075814.P16386032061469786843

`A046329(lt[val(A046329(n+1), 2), 1]+1)`
-/

namespace A075814.P16386032061469786843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046329 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A075814.P16386032061469786843

/-! ## A075814.P18206550428575812162

`∩[A046329(n+1), A075815(n+1)]`
-/

namespace A075814.P18206550428575812162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075814.P18206550428575812162

/-! ## A075814.P14208508562936343240

`∩[A075815(n+1), A324988(n+1)]`
-/

namespace A075814.P14208508562936343240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075814.P14208508562936343240

/-! ## A075814.P5640985919647823363

`filter[A029950(n+1), A369058(#)]`
-/

namespace A075814.P5640985919647823363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A075814.P5640985919647823363

/-! ## A075814.P7580382491287255509

`filter[A046329(n+1), A369058(#)]`
-/

namespace A075814.P7580382491287255509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A075814.P7580382491287255509

/-! ## A075814.P6968869572408965389

`filter[A046341(n+1), A369058(#)]`
-/

namespace A075814.P6968869572408965389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A075814.P6968869572408965389

/-! ## A075814.P5452029912440057567

`filter[A046329(n+1), A373141(#)]`
-/

namespace A075814.P5452029912440057567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A075814.P5452029912440057567

/-! ## A075814.P6118239408568698203

`filter[A046329(n+1), A374134(#)]`
-/

namespace A075814.P6118239408568698203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A075814.P6118239408568698203

/-! ## A075814.P6999044315564661633

`filter[A046329(n+1), A379952(#)]`
-/

namespace A075814.P6999044315564661633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A075814.P6999044315564661633

/-! ## A075814.P17583670588621008958

`filter[A075815(n+1), A369058(#)]`
-/

namespace A075814.P17583670588621008958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A075814.P17583670588621008958

/-! ## A075814.P9347993793300029793

`filter[A075815(n+1), A373975(#)]`
-/

namespace A075814.P9347993793300029793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A075814.P9347993793300029793

/-! ## A075814.P8042804355531338122

`filter[A092361(n+1), A369058(#)]`
-/

namespace A075814.P8042804355531338122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A075814.P8042804355531338122

/-! ## A075814.P13813452269895017719

`filter[A325322(n+1), A369058(#)]`
-/

namespace A075814.P13813452269895017719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A075814.P13813452269895017719

/-! ## A075814.P4237554999393739928

`filter[A032350(n+3), A369058(#)]`
-/

namespace A075814.P4237554999393739928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A075814.P4237554999393739928

/-! ## A075814.P16723956802612622717

`∩[A002113(n+1), A046316(n+1)]`
-/

namespace A075814.P16723956802612622717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075814.P16723956802612622717

/-! ## A075814.P11600072602158287873

`∩[A029950(n+1), A046316(n+1)]`
-/

namespace A075814.P11600072602158287873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075814.P11600072602158287873

/-! ## A075814.P16804005234510399277

`∩[A032350(n+1), A046316(n+1)]`
-/

namespace A075814.P16804005234510399277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075814.P16804005234510399277

/-! ## A075814.P4065307315476332461

`∩[A046316(n+1), A046329(n+1)]`
-/

namespace A075814.P4065307315476332461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075814.P4065307315476332461

/-! ## A075814.P8461054077083651989

`∩[A046316(n+1), A046341(n+1)]`
-/

namespace A075814.P8461054077083651989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075814.P8461054077083651989

/-!
# A075815: Palindromic odd composite numbers with an odd number of prime factors (counted with multiplicity).

The programs for A075815, there is no canonical definition to state claims against.
-/

/-! ## A075815.P15759374892349469282

`∩[A029950(n+1), A046341(n+1)]`
-/

namespace A075815.P15759374892349469282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075815.P15759374892349469282

/-! ## A075815.P18353659034020068434

`record[A000265(A046341(n+4))]`
-/

namespace A075815.P18353659034020068434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A046341 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075815.P18353659034020068434

/-! ## A075815.P16828659723336499818

`filter[A046341(n+1), A379952(#)]`
-/

namespace A075815.P16828659723336499818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A075815.P16828659723336499818

/-! ## A075815.P1779210071232296526

`filter[A046341(n+1), A323158(#)]`
-/

namespace A075815.P1779210071232296526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A075815.P1779210071232296526

/-! ## A075815.P16182564175556521235

`filter[A046341(n+1), A324908(#)]`
-/

namespace A075815.P16182564175556521235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A075815.P16182564175556521235

/-! ## A075815.P12367041337531832605

`filter[A046341(n+1), A353558(#)]`
-/

namespace A075815.P12367041337531832605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A075815.P12367041337531832605

/-! ## A075815.P10630036843389267632

`filter[A032350(n+3), A353558(#)]`
-/

namespace A075815.P10630036843389267632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A075815.P10630036843389267632

/-! ## A075815.P16272859759875056335

`∩[A002113(n+1), A046340(n+1)]`
-/

namespace A075815.P16272859759875056335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075815.P16272859759875056335

/-! ## A075815.P5708612778864537830

`∩[A029950(n+1), A046340(n+1)]`
-/

namespace A075815.P5708612778864537830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075815.P5708612778864537830

/-! ## A075815.P17696649746239323807

`∩[A032350(n+1), A046340(n+1)]`
-/

namespace A075815.P17696649746239323807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075815.P17696649746239323807

/-! ## A075815.P13821354271899163327

`∩[A046340(n+1), A046341(n+1)]`
-/

namespace A075815.P13821354271899163327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075815.P13821354271899163327

/-! ## A075815.P2846780876928132958

`∩[A046340(n+1), A061917(n+1)]`
-/

namespace A075815.P2846780876928132958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075815.P2846780876928132958

/-! ## A075815.P8788949093831007020

`∩[A046340(n+1), A083158(n+1)]`
-/

namespace A075815.P8788949093831007020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075815.P8788949093831007020

/-! ## A075815.P7848974392812272495

`∩[A046340(n+1), A092361(n+1)]`
-/

namespace A075815.P7848974392812272495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075815.P7848974392812272495

/-! ## A075815.P11113642732842956169

`∩[A046340(n+1), A169824(n+1)]`
-/

namespace A075815.P11113642732842956169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075815.P11113642732842956169

/-!
# A075816: Palindromic even numbers with exactly 3 prime factors (counted with multiplicity).

The programs for A075816, there is no canonical definition to state claims against.
-/

/-! ## A075816.P6265412717156716023

`∩[A029951(n+1), A046329(n+1)]`
-/

namespace A075816.P6265412717156716023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075816.P6265412717156716023

/-! ## A075816.P16693907224896176616

`∩[A046329(n+1), A075817(n+1)]`
-/

namespace A075816.P16693907224896176616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075816.P16693907224896176616

/-! ## A075816.P2701357846840728265

`∩[A046329(n+1), A277258(n+1)]`
-/

namespace A075816.P2701357846840728265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075816.P2701357846840728265

/-! ## A075816.P1540734024706076735

`∩[2*n, A046329(n+1)]`
-/

namespace A075816.P1540734024706076735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075816.P1540734024706076735

/-! ## A075816.P2372830776917046246

`filter[A046329(n+1), A359770(#)]`
-/

namespace A075816.P2372830776917046246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A075816.P2372830776917046246

/-! ## A075816.P6304940564073145637

`∩[A029951(n+1), A366430(n+1)]`
-/

namespace A075816.P6304940564073145637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075816.P6304940564073145637

/-! ## A075816.P8212108099552132764

`∩[A075817(n+1), A366430(n+1)]`
-/

namespace A075816.P8212108099552132764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075816.P8212108099552132764

/-! ## A075816.P5048148933583506098

`∩[A277258(n+1), A366430(n+1)]`
-/

namespace A075816.P5048148933583506098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075816.P5048148933583506098

/-! ## A075816.P10212659287472877082

`∩[2*A001358(n+1), A002113(n+1)]`
-/

namespace A075816.P10212659287472877082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075816.P10212659287472877082

/-! ## A075816.P609193237908355911

`∩[2*A001358(n+1), A032350(n+1)]`
-/

namespace A075816.P609193237908355911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075816.P609193237908355911

/-!
# A075817: Palindromic even numbers with an odd number of prime factors (counted with multiplicity).

The programs for A075817, there is no canonical definition to state claims against.
-/

/-! ## A075817.P15941666002152707795

`filter[A029951(n+2), A066829(#)]`
-/

namespace A075817.P15941666002152707795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A075817.P15941666002152707795

/-! ## A075817.P12812907807691438669

`filter[A029951(n+2), A359770(#)]`
-/

namespace A075817.P12812907807691438669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A075817.P12812907807691438669

/-! ## A075817.P17677317231184349718

`filter[A083158(n+1), A353556(#)]`
-/

namespace A075817.P17677317231184349718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353556 (f1 j).toNat = 1) n)

end

end A075817.P17677317231184349718

/-! ## A075817.P9060406081360922764

`filter[A002113(n+2), A353556(#)]`
-/

namespace A075817.P9060406081360922764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353556 (f1 j).toNat = 1) n)

end

end A075817.P9060406081360922764

/-! ## A075817.P3206147662217776966

`filter[A029951(n+2), A353556(#)]`
-/

namespace A075817.P3206147662217776966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353556 (f1 j).toNat = 1) n)

end

end A075817.P3206147662217776966

/-! ## A075817.P13918712392414539304

`∩[A002113(n+1), A046470(n+1)]`
-/

namespace A075817.P13918712392414539304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075817.P13918712392414539304

/-! ## A075817.P2292173549558644862

`∩[A029951(n+1), A046470(n+1)]`
-/

namespace A075817.P2292173549558644862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075817.P2292173549558644862

/-! ## A075817.P17824907985263434296

`∩[A046470(n+1), A083158(n+1)]`
-/

namespace A075817.P17824907985263434296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075817.P17824907985263434296

/-! ## A075817.P709658353688669489

`∩[2*A028260(n+1), A002113(n+1)]`
-/

namespace A075817.P709658353688669489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075817.P709658353688669489

/-!
# A075818: Even numbers with exactly 3 prime factors (counted with multiplicity).

The programs for A075818, the canonical program `A075818.P6886237212657486754` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075818 has offset 1).

The definition of A075818 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075818.P6886237212657486754

`2*A001358(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A075818

/-- `2*A001358(n+1)` -/
def P6886237212657486754.Spec : Prop :=
  ∀ n, P6886237212657486754.a n = A075818 (n + 1)

theorem P6886237212657486754.correct : P6886237212657486754.Spec := by
  intro n
  simp only [A075818, Nat.add_sub_cancel]

end A075818

/-! ## A075818.P1298298135217123733

`2*sqrt(A074985(n+1))`
-/

namespace A075818.P1298298135217123733
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A074985 (n + 1) : ℝ)

end

end A075818.P1298298135217123733

namespace A075818

/-- `2*sqrt(A074985(n+1))` -/
def P1298298135217123733.Spec : Prop :=
  ∀ n, P1298298135217123733.a n = (A075818 (n + 1) : ℝ)

end A075818

/-! ## A075818.P2113815796508640879

`2*(A186621(n+1)+1)`
-/

namespace A075818.P2113815796508640879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A186621 (n + 1) + 1)

end

end A075818.P2113815796508640879

namespace A075818

/-- `2*(A186621(n+1)+1)` -/
def P2113815796508640879.Spec : Prop :=
  ∀ n, P2113815796508640879.a n = A075818 (n + 1)

theorem P2113815796508640879.correct : P2113815796508640879.Spec := by
  intro n
  simp only [A075818, Nat.add_sub_cancel, A075818.P2113815796508640879.a, A075818.P6886237212657486754.a, A001358, A001358.P632087320844056370.a, A186621, A186621.P5089299060388261365.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075818

/-! ## A075818.P3816238452450645887

`2*(A088707(n+1)-1)`
-/

namespace A075818.P3816238452450645887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088707 (n + 1) - 1)

end

end A075818.P3816238452450645887

namespace A075818

/-- `2*(A088707(n+1)-1)` -/
def P3816238452450645887.Spec : Prop :=
  ∀ n, P3816238452450645887.a n = A075818 (n + 1)

end A075818

/-! ## A075818.P6254214886102545338

`2*(lt[0, A064911(n+1)]+1)`
-/

namespace A075818.P6254214886102545338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A075818.P6254214886102545338

namespace A075818

/-- `2*(lt[0, A064911(n+1)]+1)` -/
def P6254214886102545338.Spec : Prop :=
  ∀ n, (P6254214886102545338.a n : ℤ) = A075818 (n + 1)

end A075818

/-! ## A075818.P2283105949427551140

`2*(eq[2, A001222(n+1)]+1)`
-/

namespace A075818.P2283105949427551140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075818.P2283105949427551140

namespace A075818

/-- `2*(eq[2, A001222(n+1)]+1)` -/
def P2283105949427551140.Spec : Prop :=
  ∀ n, (P2283105949427551140.a n : ℤ) = A075818 (n + 1)

end A075818

/-! ## A075818.P5220094569661277284

`2*(A175708(n+1)+n+1)`
-/

namespace A075818.P5220094569661277284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A175708 (n + 1) + (n + 1 : ℤ))

end

end A075818.P5220094569661277284

namespace A075818

/-- `2*(A175708(n+1)+n+1)` -/
def P5220094569661277284.Spec : Prop :=
  ∀ n, P5220094569661277284.a n = A075818 (n + 1)

theorem P5220094569661277284.correct : P5220094569661277284.Spec := by
  intro n
  simp only [A075818, Nat.add_sub_cancel, A075818.P5220094569661277284.a, A075818.P6886237212657486754.a, A001358, A001358.P632087320844056370.a, A175708, A175708.P9200072279870982.a, A000027, A000027.P10331202704469894836.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075818

/-! ## A075818.P635689500258653990

`2*(A100493(n+1)-(n+1))`
-/

namespace A075818.P635689500258653990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A100493 (n + 1) - (n + 1 : ℤ))

end

end A075818.P635689500258653990

namespace A075818

/-- `2*(A100493(n+1)-(n+1))` -/
def P635689500258653990.Spec : Prop :=
  ∀ n, P635689500258653990.a n = A075818 (n + 1)

theorem P635689500258653990.correct : P635689500258653990.Spec := by
  intro n
  simp only [A075818, Nat.add_sub_cancel, A075818.P635689500258653990.a, A075818.P6886237212657486754.a, A001358, A001358.P632087320844056370.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A088707, A088707.P7291141647877559993.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A075818

/-! ## A075818.P13466424795729359018

`2*record[n/a(A001222(n))]` with `a(0)=4, a(1)=4, a(2)=1, a(3)=2`
-/

namespace A075818.P13466424795729359018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 4, 1, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075818.P13466424795729359018

namespace A075818

/-- `2*record[n/a(A001222(n))]` -/
def P13466424795729359018.Spec : Prop :=
  ∀ n, P13466424795729359018.a n = (A075818 (n + 1) : ℚ)

end A075818

/-! ## A075818.P635984165342092266

`A099981(n)-A175509(n+1)`
-/

namespace A075818.P635984165342092266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099981 n - A175509 (n + 1)

end

end A075818.P635984165342092266

namespace A075818

/-- `A099981(n)-A175509(n+1)` -/
def P635984165342092266.Spec : Prop :=
  ∀ n, P635984165342092266.a n = A075818 (n + 1)

theorem P635984165342092266.correct : P635984165342092266.Spec := by
  intro n
  simp only [A075818, Nat.add_sub_cancel, A075818.P635984165342092266.a, A075818.P6886237212657486754.a, A001358, A001358.P632087320844056370.a, A099981, A099981.P17550531884189049428.a, A175509, A175509.P4197014076791799754.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075818

/-! ## A075818.P2823299187761184014

`A186621(n+1)+A088707(n+1)`
-/

namespace A075818.P2823299187761184014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + A088707 (n + 1)

end

end A075818.P2823299187761184014

namespace A075818

/-- `A186621(n+1)+A088707(n+1)` -/
def P2823299187761184014.Spec : Prop :=
  ∀ n, P2823299187761184014.a n = A075818 (n + 1)

theorem P2823299187761184014.correct : P2823299187761184014.Spec := by
  intro n
  simp only [A075818, Nat.add_sub_cancel, A075818.P2823299187761184014.a, A075818.P6886237212657486754.a, A001358, A001358.P632087320844056370.a, A088707, A088707.P7291141647877559993.a, A186621, A186621.P5089299060388261365.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A075818

/-! ## A075818.P17303958122926795640

`A175708(n+1)+A100493(n+1)`
-/

namespace A075818.P17303958122926795640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + A100493 (n + 1)

end

end A075818.P17303958122926795640

namespace A075818

/-- `A175708(n+1)+A100493(n+1)` -/
def P17303958122926795640.Spec : Prop :=
  ∀ n, P17303958122926795640.a n = A075818 (n + 1)

theorem P17303958122926795640.correct : P17303958122926795640.Spec := by
  intro n
  simp only [A075818, Nat.add_sub_cancel, A075818.P17303958122926795640.a, A075818.P6886237212657486754.a, A001358, A001358.P632087320844056370.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A175708, A175708.P9200072279870982.a, A000027, A000027.P10331202704469894836.a, A072000, A072000.P3706059858088101648.a, A088707, A088707.P7291141647877559993.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A075818

/-! ## A075818.P12713877397952941689

`A118717(n+1)-A065516(n+1)`
-/

namespace A075818.P12713877397952941689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1) - A065516 (n + 1)

end

end A075818.P12713877397952941689

namespace A075818

/-- `A118717(n+1)-A065516(n+1)` -/
def P12713877397952941689.Spec : Prop :=
  ∀ n, P12713877397952941689.a n = A075818 (n + 1)

theorem P12713877397952941689.correct : P12713877397952941689.Spec := by
  intro n
  simp only [A075818, Nat.add_sub_cancel, A075818.P12713877397952941689.a, A075818.P6886237212657486754.a, A001358, A001358.P632087320844056370.a, A065516, A065516.P1921636422831940081.a, A118717, A118717.P5086267492730795154.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075818

/-! ## A075818.P4785437256778917654

`A133796(n+1)-A065870(n+1)`
-/

namespace A075818.P4785437256778917654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) - A065870 (n + 1)

end

end A075818.P4785437256778917654

namespace A075818

/-- `A133796(n+1)-A065870(n+1)` -/
def P4785437256778917654.Spec : Prop :=
  ∀ n, P4785437256778917654.a n = A075818 (n + 1)

theorem P4785437256778917654.correct : P4785437256778917654.Spec := by
  intro n
  simp only [A075818, Nat.add_sub_cancel, A075818.P4785437256778917654.a, A075818.P6886237212657486754.a, A001358, A001358.P632087320844056370.a, A065870, A065870.P5166953479567254549.a, A133796, A133796.P4942108177998988067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075818

/-! ## A075818.P16257725239819323603

`2*(A000040(n+1)-A065870(n+1))`
-/

namespace A075818.P16257725239819323603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) - A065870 (n + 1))

end

end A075818.P16257725239819323603

namespace A075818

/-- `2*(A000040(n+1)-A065870(n+1))` -/
def P16257725239819323603.Spec : Prop :=
  ∀ n, P16257725239819323603.a n = A075818 (n + 1)

theorem P16257725239819323603.correct : P16257725239819323603.Spec := by
  intro n
  simp only [A075818, Nat.add_sub_cancel, A075818.P16257725239819323603.a, A075818.P6886237212657486754.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A065870, A065870.P5166953479567254549.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075818

/-! ## A075818.P11691303165071478746

`2*(A133796(n+1)-A000040(n+1))`
-/

namespace A075818.P11691303165071478746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133796 (n + 1) - A000040 (n + 1))

end

end A075818.P11691303165071478746

namespace A075818

/-- `2*(A133796(n+1)-A000040(n+1))` -/
def P11691303165071478746.Spec : Prop :=
  ∀ n, P11691303165071478746.a n = A075818 (n + 1)

theorem P11691303165071478746.correct : P11691303165071478746.Spec := by
  intro n
  simp only [A075818, Nat.add_sub_cancel, A075818.P11691303165071478746.a, A075818.P6886237212657486754.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A133796, A133796.P4942108177998988067.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075818

/-! ## A075818.P15817632643633680513

`A088707(n+1)+eq[2, A001222(n+1)]`
-/

namespace A075818.P15817632643633680513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A075818.P15817632643633680513

namespace A075818

/-- `A088707(n+1)+eq[2, A001222(n+1)]` -/
def P15817632643633680513.Spec : Prop :=
  ∀ n, P15817632643633680513.a n = A075818 (n + 1)

end A075818

/-! ## A075818.P15698062257775857170

`A001358(A000027(n+1))+A001358(n+1)`
-/

namespace A075818.P15698062257775857170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A000027 (n + 1)).toNat + A001358 (n + 1)

end

end A075818.P15698062257775857170

namespace A075818

/-- `A001358(A000027(n+1))+A001358(n+1)` -/
def P15698062257775857170.Spec : Prop :=
  ∀ n, P15698062257775857170.a n = A075818 (n + 1)

end A075818

/-! ## A075818.P15686922203164276576

`A001358(n+1)+A118717(n+1)-A001358(n+2)`
-/

namespace A075818.P15686922203164276576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + (A118717 (n + 1) - A001358 (n + 2))

end

end A075818.P15686922203164276576

namespace A075818

/-- `A001358(n+1)+A118717(n+1)-A001358(n+2)` -/
def P15686922203164276576.Spec : Prop :=
  ∀ n, P15686922203164276576.a n = A075818 (n + 1)

theorem P15686922203164276576.correct : P15686922203164276576.Spec := by
  intro n
  simp only [A075818, Nat.add_sub_cancel, A075818.P15686922203164276576.a, A075818.P6886237212657486754.a, A001358, A001358.P632087320844056370.a, A118717, A118717.P5086267492730795154.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075818

/-! ## A075818.P10807187074261263422

`(A084126(n+1)+A084126(n+1))*A084127(n+1)`
-/

namespace A075818.P10807187074261263422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084126 (n + 1) + A084126 (n + 1)) * A084127 (n + 1)

end

end A075818.P10807187074261263422

namespace A075818

/-- `(A084126(n+1)+A084126(n+1))*A084127(n+1)` -/
def P10807187074261263422.Spec : Prop :=
  ∀ n, P10807187074261263422.a n = A075818 (n + 1)

end A075818

/-!
# A075819: 

The programs for A075819, there is no canonical definition to state claims against.
-/

/-! ## A075819.P15355462255327432253

`2*A046388(n+1)`
-/

namespace A075819.P15355462255327432253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046388 (n + 1)

end

end A075819.P15355462255327432253

/-! ## A075819.P17267434322327009698

`4*eq[4, A305973(n+1)]+2`
-/

namespace A075819.P17267434322327009698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A075819.P17267434322327009698

/-! ## A075819.P3568553740412797474

`4*eq[6, A278223(n+1)]+2`
-/

namespace A075819.P3568553740412797474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A075819.P3568553740412797474

/-! ## A075819.P16393769199001144518

`A046388(n+1)+A046388(Δ[n²]-n)`
-/

namespace A075819.P16393769199001144518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1) + A046388 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A075819.P16393769199001144518

/-! ## A075819.P4346606077725900723

`lcm(A001222(A006881(n+1)), A046388(n+1))`
-/

namespace A075819.P4346606077725900723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A006881 (n + 1)).toNat) (A046388 (n + 1))

end

end A075819.P4346606077725900723

/-! ## A075819.P16330994007684447493

`2*eq[10, A077462(2*n)]`
-/

namespace A075819.P16330994007684447493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075819.P16330994007684447493

/-! ## A075819.P67801641374569541

`A007947(A046388(n+1)+A046388(n+1))`
-/

namespace A075819.P67801641374569541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A046388 (n + 1) + A046388 (n + 1)).toNat

end

end A075819.P67801641374569541

/-! ## A075819.P510151277638247506

`∩[2*n, A160350(n+1)]`
-/

namespace A075819.P510151277638247506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075819.P510151277638247506

/-! ## A075819.P2207107581784830359

`filter[A160350(n+1), A356163(#)]`
-/

namespace A075819.P2207107581784830359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A075819.P2207107581784830359

/-! ## A075819.P18404669813457270050

`filter[A160350(n+1), A359770(#)]`
-/

namespace A075819.P18404669813457270050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A075819.P18404669813457270050

/-! ## A075819.P2089001019197397687

`filter[A160350(n+1), A359774(#)]`
-/

namespace A075819.P2089001019197397687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A075819.P2089001019197397687

/-! ## A075819.P18361128288588425841

`filter[A160350(n+1), A359816(#)]`
-/

namespace A075819.P18361128288588425841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A075819.P18361128288588425841

/-! ## A075819.P11929782010231521905

`filter[A160350(n+1), A359820(#)]`
-/

namespace A075819.P11929782010231521905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A075819.P11929782010231521905

/-! ## A075819.P81670554540176722

`filter[A160350(n+1), A359824(#)]`
-/

namespace A075819.P81670554540176722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A075819.P81670554540176722

/-! ## A075819.P4199690386310421358

`filter[A075818(n+1), A008966(#)]`
-/

namespace A075819.P4199690386310421358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A075819.P4199690386310421358

/-! ## A075819.P5725962638464644519

`filter[A075818(n+1), A354353(#)]`
-/

namespace A075819.P5725962638464644519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A075819.P5725962638464644519

/-! ## A075819.P3029353455250159931

`filter[A075818(n+1), A354819(#)]`
-/

namespace A075819.P3029353455250159931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A075819.P3029353455250159931

/-! ## A075819.P7840241584559735261

`filter[A075818(n+1), A354926(#)]`
-/

namespace A075819.P7840241584559735261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A075819.P7840241584559735261

/-! ## A075819.P2345044380323945108

`filter[A075818(n+1), A374130(#)]`
-/

namespace A075819.P2345044380323945108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A075819.P2345044380323945108

/-! ## A075819.P3211095877841819504

`filter[A075818(n+1), A374466(#)]`
-/

namespace A075819.P3211095877841819504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A075819.P3211095877841819504

/-!
# A075820: Coefficients of power series generated by the continued fraction-like form: A(x) = 1/(1 - x/sqrt(1 - 4x/cube-root(1 - 9x/4th-root(1 - 16x/5th-root(1 - 25x/... /n-th-root(1 - (n^2)x/...)))))), where n-th-root(z)=z^(1/n).

The programs for A075820, there is no canonical definition to state claims against.
-/

/-! ## A075820.P8922761457727321158

`A145080(∑[n]+n)-A185255(5*n)`
-/

namespace A075820.P8922761457727321158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145080 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A185255 (5 * n)

end

end A075820.P8922761457727321158

/-! ## A075820.P17482032794245041138

`A145081(n)-A067169(A000079(n))`
-/

namespace A075820.P17482032794245041138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145081 n - A067169 ((A000079 n).toNat + 11)

end

end A075820.P17482032794245041138

/-!
# A075821: List of possible last two digits (leading zeros omitted) of perfect powers.

The programs for A075821, there is no canonical definition to state claims against.
-/

/-! ## A075821.P7175117827773585355

`eq[n, lcm(n, gcd(10, n)²)]`
-/

namespace A075821.P7175117827773585355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.gcd 10 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075821.P7175117827773585355

/-! ## A075821.P14146819123175021194

`eq[0, n-A100990(n)]`
-/

namespace A075821.P14146819123175021194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A100990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075821.P14146819123175021194

/-! ## A075821.P4275478853686275679

`comp[A184418(comp[10*n])]`
-/

namespace A075821.P4275478853686275679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A075821.P4275478853686275679

/-! ## A075821.P730079254414414434

`record[gcd(n, A061927(n)²)]`
-/

namespace A075821.P730079254414414434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A061927 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075821.P730079254414414434

/-! ## A075821.P13926555084943963613

`eq[A100990(n), A118760(n)]`
-/

namespace A075821.P13926555084943963613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075821.P13926555084943963613

/-! ## A075821.P15789587312770644194

`eq[A100990(n), A216972(n)]`
-/

namespace A075821.P15789587312770644194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216972 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075821.P15789587312770644194

/-! ## A075821.P11446220107695397365

`eq[n, A100990(A254109(n))]`
-/

namespace A075821.P11446220107695397365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100990 (A254109 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075821.P11446220107695397365

/-! ## A075821.P4350403336732539881

`eq[A100990(n), A283971(n)]`
-/

namespace A075821.P4350403336732539881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075821.P4350403336732539881

/-! ## A075821.P12357475607791372098

`eq[A100990(n), A292579(n)]`
-/

namespace A075821.P12357475607791372098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075821.P12357475607791372098

/-! ## A075821.P4457838892300048855

`comp[A075823(n+1)]`
-/

namespace A075821.P4457838892300048855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A075821.P4457838892300048855

/-!
# A075823: Numbers that are not the last two digits (leading zeros omitted) of any perfect power.

The programs for A075823, there is no canonical definition to state claims against.
-/

/-! ## A075823.P6390100509651359700

`comp[n*gcd(10, n)]`
-/

namespace A075823.P6390100509651359700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 10 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A075823.P6390100509651359700

/-! ## A075823.P12066935587358722681

`comp[gcd(ceil(n/5)², lcm(8, n))]`
-/

namespace A075823.P12066935587358722681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌈(n : ℚ) / 5⌉ ^ 2) (Nat.lcm 8 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A075823.P12066935587358722681

/-! ## A075823.P13155989928859012330

`comp[gcd((n+1)^5-1, floor((n/2)²))]`
-/

namespace A075823.P13155989928859012330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n + 1) ^ 5 : ℤ) - 1) ⌊((n : ℚ) / 2) ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A075823.P13155989928859012330

/-! ## A075823.P18091415255386685295

`comp[A075821(n+1)]`
-/

namespace A075823.P18091415255386685295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A075823.P18091415255386685295

/-! ## A075823.P2246796023205524334

`comp[n*A109013(n)]`
-/

namespace A075823.P2246796023205524334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A109013 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A075823.P2246796023205524334

/-!
# A075824: Odd numbers that cannot be expressed as 2^k - 3^m where k and m are integers.

The programs for A075824, there is no canonical definition to state claims against.
-/

/-! ## A075824.P17151930166574451179

`comp[∪[2*n, A192110(n+1)]]`
-/

namespace A075824.P17151930166574451179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A075824.P17151930166574451179

/-! ## A075824.P17774423837886291598

`∩[2*n+1, A328077(n+1)]`
-/

namespace A075824.P17774423837886291598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075824.P17774423837886291598

/-! ## A075824.P908796631068114302

`filter[A328077(n+1), A000035(#)]`
-/

namespace A075824.P908796631068114302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A075824.P908796631068114302

/-! ## A075824.P7836424107736715870

`filter[A328077(n+1), A266070(#)]`
-/

namespace A075824.P7836424107736715870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A075824.P7836424107736715870

/-! ## A075824.P2039377724852737955

`filter[A328077(n+2), A266611(#)]`
-/

namespace A075824.P2039377724852737955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328077 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A075824.P2039377724852737955

/-! ## A075824.P1225090084427618484

`filter[A328077(n+2), A266719(#)]`
-/

namespace A075824.P1225090084427618484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328077 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A075824.P1225090084427618484

/-! ## A075824.P8726574197372478147

`filter[A328077(n+2), A296066(#)]`
-/

namespace A075824.P8726574197372478147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328077 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A075824.P8726574197372478147

/-! ## A075824.P715489664856900348

`filter[A328077(n+3), A266246(#)]`
-/

namespace A075824.P715489664856900348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328077 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A075824.P715489664856900348

/-! ## A075824.P18358800425167654916

`∩[A328077(n+1), A004273(n)]`
-/

namespace A075824.P18358800425167654916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075824.P18358800425167654916

/-! ## A075824.P17881620988690012473

`∩[A328077(n+1), A020742(n)]`
-/

namespace A075824.P17881620988690012473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075824.P17881620988690012473

/-!
# A075825: a(0) = 1, a(1) = 2; for n>0, a(2n) = |a(n)-a(n-1)|, a(2n+1) = a(n)+a(n-1).

The programs for A075825, there is no canonical definition to state claims against.
-/

/-! ## A075825.P14209748280812846980

`A196050(A001222(A035214(n)*A250554(n+1)))`
-/

namespace A075825.P14209748280812846980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A001222 (A035214 n * A250554 (n + 1)).toNat).toNat

end

end A075825.P14209748280812846980

/-! ## A075825.P5033849904403486789

`A160381(Δ[A049938(n+1)])+1`
-/

namespace A075825.P5033849904403486789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (f1 (n + 1) - f1 n).toNat + 1

end

end A075825.P5033849904403486789

/-! ## A075825.P11859321819415475469

`A097285(n+1)-A056594(A129757(n+1))`
-/

namespace A075825.P11859321819415475469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) - A056594 (A129757 (n + 1)).toNat

end

end A075825.P11859321819415475469

/-! ## A075825.P3645404957309569658

`A162912(n+1)-A321694(A306351(n+1))`
-/

namespace A075825.P3645404957309569658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162912 (n + 1) - A321694 (A306351 (n + 1)).toNat

end

end A075825.P3645404957309569658

/-! ## A075825.P17130111485279175980

`A333749(A288434(n+1))`
-/

namespace A075825.P17130111485279175980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (A288434 (n + 1)).toNat

end

end A075825.P17130111485279175980

/-!
# A075827: Let u(1) = x and u(n+1) = (n^2/u(n)) + 1 for n >= 1; then a(n) is such that u(n) =(a(n)*x + b(n))/(c(n)*x + d(n)) (in lowest terms) and a(n), b(n), c(n), d(n) are positive integers.

The programs for A075827, there is no canonical definition to state claims against.
-/

/-! ## A075827.P14942022159525528853

`A058313(n+1)*A335023(round(sqrt(n²+1)))`
-/

namespace A075827.P14942022159525528853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (n + 1) * A335023 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A075827.P14942022159525528853

/-! ## A075827.P15496150495875074108

`A075830(n+2)*A335023(A028310(n))`
-/

namespace A075827.P15496150495875074108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075830 (n + 2) * A335023 (A028310 n).toNat

end

end A075827.P15496150495875074108

/-! ## A075827.P13343452737119419834

`A024167(n+1)/A334958(round(acot(n)+n))`
-/

namespace A075827.P13343452737119419834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024167 (n + 1) : ℚ) / (A334958 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ)

end

end A075827.P13343452737119419834

/-! ## A075827.P13817614206684467711

`A024167(n+1)/A334958(A028310(n))`
-/

namespace A075827.P13817614206684467711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024167 (n + 1) : ℚ) / (A334958 (A028310 n).toNat : ℚ)

end

end A075827.P13817614206684467711

/-! ## A075827.P2814590996746055650

`A024167(n+1)/A334958(A233583(n+1))`
-/

namespace A075827.P2814590996746055650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024167 (n + 1) : ℚ) / (A334958 (A233583 (n + 1)).toNat : ℚ)

end

end A075827.P2814590996746055650

/-! ## A075827.P2886291243623227181

`A073480(∑[n]+1)/A334958(A233583(n+1))`
-/

namespace A075827.P2886291243623227181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073480 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (A334958 (A233583 (n + 1)).toNat : ℚ)

end

end A075827.P2886291243623227181

/-! ## A075827.P7811101290419326007

`A190782(A000217(n)+n+2)/A334958(A233583(n+1))`
-/

namespace A075827.P7811101290419326007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190782 (A000217 n + (n + 2 : ℤ)).toNat : ℚ) / (A334958 (A233583 (n + 1)).toNat : ℚ)

end

end A075827.P7811101290419326007

/-!
# A075828: Let u(1) = x and u(n+1) = (n^2/u(n)) + 1 for n >= 1; then a(n) is such that u(n) =(b(n)*x + a(n))/(c(n)*x + d(n)) (in lowest terms) and a(n), b(n), c(n), d(n) are positive integers.

The programs for A075828, the canonical program `A075828.P3872734700419893431` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075828 has offset 1).

The definition of A075828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075828.P3872734700419893431

`A024168(n+1)/gcd(A024168(n+1), A024168(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075828

/-- `A024168(n+1)/gcd(A024168(n+1), A024168(n))` -/
def P3872734700419893431.Spec : Prop :=
  ∀ n, P3872734700419893431.a n = (A075828 (n + 1) : ℚ)

end A075828

/-! ## A075828.P16288679996593012566

`A119248(n+1)*A335023(round(acot(n)+n))`
-/

namespace A075828.P16288679996593012566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119248 (n + 1) * A335023 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A075828.P16288679996593012566

namespace A075828

/-- `A119248(n+1)*A335023(round(acot(n)+n))` -/
def P16288679996593012566.Spec : Prop :=
  ∀ n, P16288679996593012566.a n = A075828 (n + 1)

end A075828

/-! ## A075828.P726329497022339305

`A119248(n+1)*A335023(round(sqrt(n²+1)))`
-/

namespace A075828.P726329497022339305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119248 (n + 1) * A335023 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A075828.P726329497022339305

namespace A075828

/-- `A119248(n+1)*A335023(round(sqrt(n²+1)))` -/
def P726329497022339305.Spec : Prop :=
  ∀ n, P726329497022339305.a n = A075828 (n + 1)

end A075828

/-! ## A075828.P10106537373946931264

`A075829(n+2)*A335023(A028310(n))`
-/

namespace A075828.P10106537373946931264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075829 (n + 2) * A335023 (A028310 n).toNat

end

end A075828.P10106537373946931264

namespace A075828

/-- `A075829(n+2)*A335023(A028310(n))` -/
def P10106537373946931264.Spec : Prop :=
  ∀ n, P10106537373946931264.a n = A075828 (n + 1)

end A075828

/-! ## A075828.P970527185519516280

`lcm(A119248(n+1), A335023(A028310(n)))`
-/

namespace A075828.P970527185519516280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A119248 (n + 1)) (A335023 (A028310 n).toNat)

end

end A075828.P970527185519516280

namespace A075828

/-- `lcm(A119248(n+1), A335023(A028310(n)))` -/
def P970527185519516280.Spec : Prop :=
  ∀ n, (P970527185519516280.a n : ℤ) = A075828 (n + 1)

end A075828

/-! ## A075828.P12940557932806953617

`A075827(n+1)/A075830(n+2)*A075829(n+2)`
-/

namespace A075828.P12940557932806953617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075827 (n + 1) : ℚ) / (A075830 (n + 2) : ℚ) * (A075829 (n + 2) : ℚ)

end

end A075828.P12940557932806953617

namespace A075828

/-- `A075827(n+1)/A075830(n+2)*A075829(n+2)` -/
def P12940557932806953617.Spec : Prop :=
  ∀ n, P12940557932806953617.a n = (A075828 (n + 1) : ℚ)

end A075828

/-! ## A075828.P9723609377899231673

`A024168(n+1)/A334958(round(acot(n)+n))`
-/

namespace A075828.P9723609377899231673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024168 (n + 1) : ℚ) / (A334958 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ)

end

end A075828.P9723609377899231673

namespace A075828

/-- `A024168(n+1)/A334958(round(acot(n)+n))` -/
def P9723609377899231673.Spec : Prop :=
  ∀ n, P9723609377899231673.a n = (A075828 (n + 1) : ℚ)

end A075828

/-! ## A075828.P17089527658259665920

`A024168(n+1)/A024167(n+1)*A075827(n+1)`
-/

namespace A075828.P17089527658259665920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024168 (n + 1) : ℚ) / (A024167 (n + 1) : ℚ) * (A075827 (n + 1) : ℚ)

end

end A075828.P17089527658259665920

namespace A075828

/-- `A024168(n+1)/A024167(n+1)*A075827(n+1)` -/
def P17089527658259665920.Spec : Prop :=
  ∀ n, P17089527658259665920.a n = (A075828 (n + 1) : ℚ)

end A075828

/-!
# A075829: Let u(1) = x and u(n+1) = (n^2/u(n)) + 1 for n >= 1; then a(n) is such that u(n) = (b(n)*x + c(n))/(d(n)*x + a(n)) (in lowest terms) and a(n), b(n), c(n), d(n) are positive integers.

The programs for A075829, the canonical program `A075829.P4591232702968774976` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075829 has offset 1).

The definition of A075829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075829.P4591232702968774976

`A024168(n)/gcd(A024168(n), A024168(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075829

/-- `A024168(n)/gcd(A024168(n), A024168(n+1))` -/
def P4591232702968774976.Spec : Prop :=
  ∀ n, P4591232702968774976.a n = (A075829 (n + 1) : ℚ)

end A075829

/-! ## A075829.P10869438497243497992

`A119248(abs(1-n)+1)`
-/

namespace A075829.P10869438497243497992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119248 (|1 - (n : ℤ)| + 1).toNat

end

end A075829.P10869438497243497992

namespace A075829

/-- `A119248(abs(1-n)+1)` -/
def P10869438497243497992.Spec : Prop :=
  ∀ n, P10869438497243497992.a n = A075829 (n + 1)

end A075829

/-! ## A075829.P17272601405970733433

`A119248(A028310(n))+C(2, n+2)`
-/

namespace A075829.P17272601405970733433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119248 (A028310 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A075829.P17272601405970733433

namespace A075829

/-- `A119248(A028310(n))+C(2, n+2)` -/
def P17272601405970733433.Spec : Prop :=
  ∀ n, P17272601405970733433.a n = A075829 (n + 1)

end A075829

/-! ## A075829.P4313020764611961483

`∏{e}[A008578(n+1), A119248(n*#)]`
-/

namespace A075829.P4313020764611961483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A119248 (n * Nat.factorization (f1 n).natAbs p)

end

end A075829.P4313020764611961483

namespace A075829

/-- `∏{e}[A008578(n+1), A119248(n*#)]` -/
def P4313020764611961483.Spec : Prop :=
  ∀ n, P4313020764611961483.a n = A075829 (n + 1)

end A075829

/-! ## A075829.P5367279547544707454

`∏{e}[A008578(n+1), A119248(n)/#]`
-/

namespace A075829.P5367279547544707454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A119248 n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A075829.P5367279547544707454

namespace A075829

/-- `∏{e}[A008578(n+1), A119248(n)/#]` -/
def P5367279547544707454.Spec : Prop :=
  ∀ n, P5367279547544707454.a n = (A075829 (n + 1) : ℚ)

end A075829

/-! ## A075829.P3875203869213826700

`or(char[2*n], A119248(A000007(n)+n))`
-/

namespace A075829.P3875203869213826700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A119248 (A000007 n + (n : ℤ)).toNat)

end

end A075829.P3875203869213826700

namespace A075829

/-- `or(char[2*n], A119248(A000007(n)+n))` -/
def P3875203869213826700.Spec : Prop :=
  ∀ n, P3875203869213826700.a n = A075829 (n + 1)

end A075829

/-! ## A075829.P3952610441904710307

`A075827(n+1)/A024167(n+1)*A024168(n)`
-/

namespace A075829.P3952610441904710307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075827 (n + 1) : ℚ) / (A024167 (n + 1) : ℚ) * (A024168 n : ℚ)

end

end A075829.P3952610441904710307

namespace A075829

/-- `A075827(n+1)/A024167(n+1)*A024168(n)` -/
def P3952610441904710307.Spec : Prop :=
  ∀ n, P3952610441904710307.a n = (A075829 (n + 1) : ℚ)

end A075829

/-!
# A075830: Let u(1) = x and u(n+1) = (n^2/u(n)) + 1 for n >= 1; then a(n) is such that u(n) = (b(n)*x + c(n))/(a(n)*x + d(n)) (in lowest terms) and a(n), b(n), c(n), d(n) are positive integers.

The programs for A075830, there is no canonical definition to state claims against.
-/

/-! ## A075830.P4959503105207584021

`ceil(A058313(abs(1-n)+1)-acot(n))`
-/

namespace A075830.P4959503105207584021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A058313 (|1 - (n : ℤ)| + 1).toNat : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A075830.P4959503105207584021

/-! ## A075830.P9500915314967604611

`A058313(a((2*n-1)%2-1)+n)` with `a(0)=0, a(1)=1`
-/

namespace A075830.P9500915314967604611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A058313 (a (Int.tmod ((2 * n : ℤ) - 1) 2 - 1).toNat + (n : ℤ)).toNat

end

end A075830.P9500915314967604611

/-! ## A075830.P13132910002013907631

`A058313(a(floor(char[(n+1)²+2]/2))+n)` with `a(0)=0`
-/

namespace A075830.P13132910002013907631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A058313 (a ⌊((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A075830.P13132910002013907631

/-! ## A075830.P15206098400564645756

`A058313(round(acot(n)+n))%(3^n)`
-/

namespace A075830.P15206098400564645756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058313 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (3 ^ n : ℤ)

end

end A075830.P15206098400564645756

/-! ## A075830.P7188043815789796453

`A058313(round(sqrt(n²+1)))%(3^n)`
-/

namespace A075830.P7188043815789796453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058313 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (3 ^ n : ℤ)

end

end A075830.P7188043815789796453

/-!
# A075832: Let u(1) = u(2) = u(3) = u(4) = 1, u(n+4)*(n+4) = u(n+3)*(n+3)+u(n+2)*(n+2)+u(n+1)*(n+1)+u(n)*n; sequence gives values of n such that u(n) is an integer.

The programs for A075832, there is no canonical definition to state claims against.
-/

/-! ## A075832.P7653809927475552198

`and(A010348(n+1), A023482(A103454(n)))`
-/

namespace A075832.P7653809927475552198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010348 (n + 1)) (A023482 (A103454 n).toNat)

end

end A075832.P7653809927475552198

/-! ## A075832.P12642491650640552212

`and(A010348(n+1), A029569(A109085(n)))`
-/

namespace A075832.P12642491650640552212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010348 (n + 1)) (A029569 (A109085 n).toNat)

end

end A075832.P12642491650640552212

/-! ## A075832.P14552417714059571582

`and(A023482(A103454(n)), A162225(n+2))`
-/

namespace A075832.P14552417714059571582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023482 (A103454 n).toNat) (A162225 (n + 2))

end

end A075832.P14552417714059571582

/-!
# A075834: Coefficients of power series A(x) such that n-th term of A(x)^n = n! x^(n-1) for n > 0.

The programs for A075834, there is no canonical definition to state claims against.
-/

/-! ## A075834.P11537321123548744898

`A091063(abs(∑[n+2]-3-n))`
-/

namespace A075834.P11537321123548744898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091063 |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3 - (n : ℤ)|.toNat

end

end A075834.P11537321123548744898

/-! ## A075834.P13919541885662408383

`floor((floor((A120090(n!)+3)/10)+3)/10)+1`
-/

namespace A075834.P13919541885662408383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A120090 (Nat.factorial n) + 3 : ℚ) / 10⌋ + 3 : ℚ) / 10⌋ + 1

end

end A075834.P13919541885662408383

/-! ## A075834.P11354908486176756049

`A184156(a(n-1))+n*a(n-1)-1` with `a(0)=1, a(1)=1`
-/

namespace A075834.P11354908486176756049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A184156 (a (n - 1)).toNat + (n : ℤ) * a (n - 1) - 1

end

end A075834.P11354908486176756049

/-!
# A075835: Numbers k such that 13*k^2 + 4 is a square.

The programs for A075835, the canonical program `A075835.P12090099342694085290` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075835 has offset 1).

The definition of A075835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075835.P12090099342694085290

`11*a(n-1)-a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075835

/-- `11*a(n-1)-a(n-2)` -/
def P12090099342694085290.Spec : Prop :=
  ∀ n, P12090099342694085290.a n = A075835 (n + 1)

theorem P12090099342694085290.correct : P12090099342694085290.Spec := by
  intro n
  simp only [A075835, Nat.add_sub_cancel]

end A075835

/-! ## A075835.P9974860678471758405

`A006190(2*n)`
-/

namespace A075835.P9974860678471758405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (2 * n)

end

end A075835.P9974860678471758405

namespace A075835

/-- `A006190(2*n)` -/
def P9974860678471758405.Spec : Prop :=
  ∀ n, P9974860678471758405.a n = A075835 (n + 1)

end A075835

/-! ## A075835.P3625819098680085876

`((11+3*sqrt(13))^n-(11-3*sqrt(13))^n)/(2^n*sqrt(13))`
-/

namespace A075835.P3625819098680085876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((11 + 3 * Real.sqrt (13 : ℝ)) ^ n - (11 - 3 * Real.sqrt (13 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (13 : ℝ))

end

end A075835.P3625819098680085876

namespace A075835

/-- `((11+3*sqrt(13))^n-(11-3*sqrt(13))^n)/(2^n*sqrt(13))` -/
def P3625819098680085876.Spec : Prop :=
  ∀ n, P3625819098680085876.a n = (A075835 (n + 1) : ℝ)

theorem P3625819098680085876.correct : P3625819098680085876.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A075835, Nat.add_sub_cancel, A075835.P3625819098680085876.a, A075835.P12090099342694085290.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A075835, Nat.add_sub_cancel, A075835.P3625819098680085876.a, A075835.P12090099342694085290.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A075835

/-! ## A075835.P8608579517940322906

`ogf(3x/(1-11x+x^2))`
-/

namespace A075835.P8608579517940322906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -11, 1] n

end

end A075835.P8608579517940322906

namespace A075835

/-- `ogf(3x/(1-11x+x^2))` -/
def P8608579517940322906.Spec : Prop :=
  ∀ n, P8608579517940322906.a n = A075835 (n + 1)

end A075835

/-! ## A075835.P11286226013498770607

`A305889(4*n)`
-/

namespace A075835.P11286226013498770607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (4 * n)

end

end A075835.P11286226013498770607

namespace A075835

/-- `A305889(4*n)` -/
def P11286226013498770607.Spec : Prop :=
  ∀ n, P11286226013498770607.a n = A075835 (n + 1)

end A075835

/-! ## A075835.P14165897825931323287

`A249579(8*n)`
-/

namespace A075835.P14165897825931323287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (8 * n)

end

end A075835.P14165897825931323287

namespace A075835

/-- `A249579(8*n)` -/
def P14165897825931323287.Spec : Prop :=
  ∀ n, P14165897825931323287.a n = A075835 (n + 1)

end A075835

/-! ## A075835.P17823605459893315901

`Δ[A092444(n)/2]`
-/

namespace A075835.P17823605459893315901
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092444 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075835.P17823605459893315901

namespace A075835

/-- `Δ[A092444(n)/2]` -/
def P17823605459893315901.Spec : Prop :=
  ∀ n, P17823605459893315901.a n = (A075835 (n + 1) : ℚ)

end A075835

/-! ## A075835.P13380537267905552776

`A107855(4*(n+1))`
-/

namespace A075835.P13380537267905552776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107855 (4 * (n + 1))

end

end A075835.P13380537267905552776

namespace A075835

/-- `A107855(4*(n+1))` -/
def P13380537267905552776.Spec : Prop :=
  ∀ n, P13380537267905552776.a n = A075835 (n + 1)

end A075835

/-! ## A075835.P16797916841185346890

`floor(A052906(2*n)/3)`
-/

namespace A075835.P16797916841185346890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052906 (2 * n) : ℚ) / 3⌋

end

end A075835.P16797916841185346890

namespace A075835

/-- `floor(A052906(2*n)/3)` -/
def P16797916841185346890.Spec : Prop :=
  ∀ n, P16797916841185346890.a n = A075835 (n + 1)

end A075835

/-! ## A075835.P487132363539840394

`record[A006190(A127366(n))]`
-/

namespace A075835.P487132363539840394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (A127366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075835.P487132363539840394

namespace A075835

/-- `record[A006190(A127366(n))]` -/
def P487132363539840394.Spec : Prop :=
  ∀ n, P487132363539840394.a n = A075835 (n + 1)

end A075835

/-!
# A075836: Numbers k such that 10*k^2 + 9 is a square.

The programs for A075836, there is no canonical definition to state claims against.
-/

/-! ## A075836.P3413154269576092451

`2*A075873(n+1)`
-/

namespace A075836.P3413154269576092451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075873 (n + 1)

end

end A075836.P3413154269576092451

/-! ## A075836.P15191224748541923713

`A075873(C(n+1, n))+A075873(n+1)`
-/

namespace A075836.P15191224748541923713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075873 (Nat.choose (n + 1) n) + A075873 (n + 1)

end

end A075836.P15191224748541923713

/-! ## A075836.P8738444955949942577

`A075873(A000027(n+1))+A075873(n+1)`
-/

namespace A075836.P8738444955949942577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075873 (A000027 (n + 1)).toNat + A075873 (n + 1)

end

end A075836.P8738444955949942577

/-! ## A075836.P3323387736599927154

`A075873(1-A001489(n))+A075873(n+1)`
-/

namespace A075836.P3323387736599927154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075873 (1 - A001489 n).toNat + A075873 (n + 1)

end

end A075836.P3323387736599927154

/-! ## A075836.P13830540413789922091

`A075873(n+1)/2^A008683(A020484(n))`
-/

namespace A075836.P13830540413789922091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075873 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ)

end

end A075836.P13830540413789922091

/-! ## A075836.P1784080127150552625

`A075873(n+1)+A075873(n+1)%A075841(n+1)`
-/

namespace A075836.P1784080127150552625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075873 (n + 1) + Int.tmod (A075873 (n + 1)) (A075841 (n + 1))

end

end A075836.P1784080127150552625

/-!
# A075837: Triangle T(n,k) = f(n,k,n-2), n >= 0, 0 <= k <= n, where f is given below.

The programs for A075837, there is no canonical definition to state claims against.
-/

/-! ## A075837.P15213983546537603114

`A087698(n)*A125749(A034801(n))`
-/

namespace A075837.P15213983546537603114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087698 n * A125749 (A034801 n).toNat

end

end A075837.P15213983546537603114

/-!
# A075839: Numbers k such that 11*k^2 - 2 is a square.

The programs for A075839, the canonical program `A075839.P14984835379399393705` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075839 has offset 1).

The definition of A075839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075839.P14984835379399393705

`20*a(n-1)-a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075839

/-- `20*a(n-1)-a(n-2)` -/
def P14984835379399393705.Spec : Prop :=
  ∀ n, P14984835379399393705.a n = A075839 (n + 1)

theorem P14984835379399393705.correct : P14984835379399393705.Spec := by
  intro n
  simp only [A075839, Nat.add_sub_cancel]

end A075839

/-! ## A075839.P10619597525997688250

`ogf((1-x)/(1-20x+x^2))`
-/

namespace A075839.P10619597525997688250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -20, 1] n

end

end A075839.P10619597525997688250

namespace A075839

/-- `ogf((1-x)/(1-20x+x^2))` -/
def P10619597525997688250.Spec : Prop :=
  ∀ n, P10619597525997688250.a n = A075839 (n + 1)

end A075839

/-! ## A075839.P4246990185818729959

`Δ[A075843(n)]`
-/

namespace A075839.P4246990185818729959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075839.P4246990185818729959

namespace A075839

/-- `Δ[A075843(n)]` -/
def P4246990185818729959.Spec : Prop :=
  ∀ n, P4246990185818729959.a n = A075839 (n + 1)

end A075839

/-! ## A075839.P9955471282411594181

`A041015(2*n)`
-/

namespace A075839.P9955471282411594181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041015 (2 * n)

end

end A075839.P9955471282411594181

namespace A075839

/-- `A041015(2*n)` -/
def P9955471282411594181.Spec : Prop :=
  ∀ n, P9955471282411594181.a n = A075839 (n + 1)

end A075839

/-! ## A075839.P13986450422417119479

`A041179(2*n)`
-/

namespace A075839.P13986450422417119479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041179 (2 * n)

end

end A075839.P13986450422417119479

namespace A075839

/-- `A041179(2*n)` -/
def P13986450422417119479.Spec : Prop :=
  ∀ n, P13986450422417119479.a n = A075839 (n + 1)

end A075839

/-! ## A075839.P7625054481517772833

`Δ[A001084(n)/3]`
-/

namespace A075839.P7625054481517772833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001084 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075839.P7625054481517772833

namespace A075839

/-- `Δ[A001084(n)/3]` -/
def P7625054481517772833.Spec : Prop :=
  ∀ n, P7625054481517772833.a n = (A075839 (n + 1) : ℚ)

end A075839

/-! ## A075839.P10507115726055861138

`A090728(n)-a(n-1)` with `a(0)=1`
-/

namespace A075839.P10507115726055861138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090728 n - a (n - 1)

end

end A075839.P10507115726055861138

namespace A075839

/-- `A090728(n)-a(n-1)` -/
def P10507115726055861138.Spec : Prop :=
  ∀ n, P10507115726055861138.a n = A075839 (n + 1)

end A075839

/-! ## A075839.P13520810762619343963

`A041075(A047451(n+1))`
-/

namespace A075839.P13520810762619343963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041075 (A047451 (n + 1)).toNat

end

end A075839.P13520810762619343963

namespace A075839

/-- `A041075(A047451(n+1))` -/
def P13520810762619343963.Spec : Prop :=
  ∀ n, P13520810762619343963.a n = A075839 (n + 1)

end A075839

/-! ## A075839.P2026699722876683951

`A099276(n+1)+A099276(n)`
-/

namespace A075839.P2026699722876683951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099276 (n + 1) + A099276 n

end

end A075839.P2026699722876683951

namespace A075839

/-- `A099276(n+1)+A099276(n)` -/
def P2026699722876683951.Spec : Prop :=
  ∀ n, P2026699722876683951.a n = A075839 (n + 1)

end A075839

/-! ## A075839.P11143080921799151820

`A075843(n+1)-A075843(n)`
-/

namespace A075839.P11143080921799151820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075843 (n + 1) - A075843 n

end

end A075839.P11143080921799151820

namespace A075839

/-- `A075843(n+1)-A075843(n)` -/
def P11143080921799151820.Spec : Prop :=
  ∀ n, P11143080921799151820.a n = A075839 (n + 1)

end A075839

/-!
# A075840: Primes of the form (2*n)!/(n!)^2+1.

The programs for A075840, there is no canonical definition to state claims against.
-/

/-! ## A075840.P2108261504466303889

`A359292(A066699(n+1))`
-/

namespace A075840.P2108261504466303889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359292 (A066699 (n + 1)).toNat

end

end A075840.P2108261504466303889

/-! ## A075840.P7391771916876740976

`∩[A323230(n), A359292(n)]`
-/

namespace A075840.P7391771916876740976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359292 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075840.P7391771916876740976

/-! ## A075840.P15030125761360219817

`∩[A163074(n+1), A323230(n)]`
-/

namespace A075840.P15030125761360219817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075840.P15030125761360219817

/-! ## A075840.P7119726963441020294

`∩[A163074(n+1), A359292(n)]`
-/

namespace A075840.P7119726963441020294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359292 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075840.P7119726963441020294

/-! ## A075840.P7025191962724027000

`∩[A163074(n+1), A000984(n)+1]`
-/

namespace A075840.P7025191962724027000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075840.P7025191962724027000

/-!
# A075841: Numbers k such that 2*k^2 - 9 is a square.

The programs for A075841, the canonical program `A075841.P17964964468433184022` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075841 has offset 1).

The definition of A075841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075841.P17964964468433184022

`6*a(n-1)-a(n-2)` with `a(0)=3, a(1)=15`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075841

/-- `6*a(n-1)-a(n-2)` -/
def P17964964468433184022.Spec : Prop :=
  ∀ n, P17964964468433184022.a n = A075841 (n + 1)

theorem P17964964468433184022.correct : P17964964468433184022.Spec := by
  intro n
  simp only [A075841, Nat.add_sub_cancel]

end A075841

/-! ## A075841.P17214489388863026357

`3*A001653(n+1)`
-/

namespace A075841.P17214489388863026357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001653 (n + 1)

end

end A075841.P17214489388863026357

namespace A075841

/-- `3*A001653(n+1)` -/
def P17214489388863026357.Spec : Prop :=
  ∀ n, P17214489388863026357.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P1808055501572567737

`ogf((3-3x)/(1-6x+x^2))`
-/

namespace A075841.P1808055501572567737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3] [1, -6, 1] n

end

end A075841.P1808055501572567737

namespace A075841

/-- `ogf((3-3x)/(1-6x+x^2))` -/
def P1808055501572567737.Spec : Prop :=
  ∀ n, P1808055501572567737.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P9421441604391355065

`floor(a(n-1)/(3-sqrt(8)))` with `a(0)=3, a(1)=15`
-/

namespace A075841.P9421441604391355065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 15] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

end

end A075841.P9421441604391355065

namespace A075841

/-- `floor(a(n-1)/(3-sqrt(8)))` -/
def P9421441604391355065.Spec : Prop :=
  ∀ n, P9421441604391355065.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P14379160287528236532

`record[a(n-2)-(a(n-1)+a(n-1))]` with `a(0)=3, a(1)=0`
-/

namespace A075841.P14379160287528236532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075841.P14379160287528236532

namespace A075841

/-- `record[a(n-2)-(a(n-1)+a(n-1))]` -/
def P14379160287528236532.Spec : Prop :=
  ∀ n, P14379160287528236532.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P5298689522883055998

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=3, a(1)=0`
-/

namespace A075841.P5298689522883055998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075841.P5298689522883055998

namespace A075841

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P5298689522883055998.Spec : Prop :=
  ∀ n, P5298689522883055998.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P15902835574205591780

`3*Δ[A001109(n)]`
-/

namespace A075841.P15902835574205591780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A075841.P15902835574205591780

namespace A075841

/-- `3*Δ[A001109(n)]` -/
def P15902835574205591780.Spec : Prop :=
  ∀ n, P15902835574205591780.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P16290681550150160607

`record[3*A077985(n)]`
-/

namespace A075841.P16290681550150160607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A077985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075841.P16290681550150160607

namespace A075841

/-- `record[3*A077985(n)]` -/
def P16290681550150160607.Spec : Prop :=
  ∀ n, P16290681550150160607.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P14630167574160490071

`A114689(2*n)+2`
-/

namespace A075841.P14630167574160490071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114689 (2 * n) + 2

end

end A075841.P14630167574160490071

namespace A075841

/-- `A114689(2*n)+2` -/
def P14630167574160490071.Spec : Prop :=
  ∀ n, P14630167574160490071.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P11000810019870910681

`3*(A182190(n)+1)`
-/

namespace A075841.P11000810019870910681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A182190 n + 1)

end

end A075841.P11000810019870910681

namespace A075841

/-- `3*(A182190(n)+1)` -/
def P11000810019870910681.Spec : Prop :=
  ∀ n, P11000810019870910681.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P12124780187643908035

`3*A041011(2*n)`
-/

namespace A075841.P12124780187643908035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A041011 (2 * n)

end

end A075841.P12124780187643908035

namespace A075841

/-- `3*A041011(2*n)` -/
def P12124780187643908035.Spec : Prop :=
  ∀ n, P12124780187643908035.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P18402079864012324697

`3*A077985(2*n)`
-/

namespace A075841.P18402079864012324697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A077985 (2 * n)

end

end A075841.P18402079864012324697

namespace A075841

/-- `3*A077985(2*n)` -/
def P18402079864012324697.Spec : Prop :=
  ∀ n, P18402079864012324697.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P9958999606456009111

`3*A104683(2*n)`
-/

namespace A075841.P9958999606456009111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A104683 (2 * n)

end

end A075841.P9958999606456009111

namespace A075841

/-- `3*A104683(2*n)` -/
def P9958999606456009111.Spec : Prop :=
  ∀ n, P9958999606456009111.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P3351724092384152349

`3*A117719(2*n)`
-/

namespace A075841.P3351724092384152349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A117719 (2 * n)

end

end A075841.P3351724092384152349

namespace A075841

/-- `3*A117719(2*n)` -/
def P3351724092384152349.Spec : Prop :=
  ∀ n, P3351724092384152349.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P3195074333469487202

`3*A000129(Δ[n²])`
-/

namespace A075841.P3195074333469487202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000129 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075841.P3195074333469487202

namespace A075841

/-- `3*A000129(Δ[n²])` -/
def P3195074333469487202.Spec : Prop :=
  ∀ n, P3195074333469487202.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P16117013708066264444

`3*A079496(Δ[n²])`
-/

namespace A075841.P16117013708066264444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A079496 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075841.P16117013708066264444

namespace A075841

/-- `3*A079496(Δ[n²])` -/
def P16117013708066264444.Spec : Prop :=
  ∀ n, P16117013708066264444.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P10321274673830422006

`3*A089499(Δ[n²])`
-/

namespace A075841.P10321274673830422006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A089499 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075841.P10321274673830422006

namespace A075841

/-- `3*A089499(Δ[n²])` -/
def P10321274673830422006.Spec : Prop :=
  ∀ n, P10321274673830422006.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P4665388389553436196

`3*A152118(Δ[n²])`
-/

namespace A075841.P4665388389553436196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A152118 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075841.P4665388389553436196

namespace A075841

/-- `3*A152118(Δ[n²])` -/
def P4665388389553436196.Spec : Prop :=
  ∀ n, P4665388389553436196.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P11675985470628516115

`3*A215928(Δ[n²])`
-/

namespace A075841.P11675985470628516115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A215928 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075841.P11675985470628516115

namespace A075841

/-- `3*A215928(Δ[n²])` -/
def P11675985470628516115.Spec : Prop :=
  ∀ n, P11675985470628516115.a n = A075841 (n + 1)

end A075841

/-! ## A075841.P1199443296682969180

`record[Δ[A126354(n+2)]]`
-/

namespace A075841.P1199443296682969180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075841.P1199443296682969180

namespace A075841

/-- `record[Δ[A126354(n+2)]]` -/
def P1199443296682969180.Spec : Prop :=
  ∀ n, P1199443296682969180.a n = A075841 (n + 1)

end A075841

/-!
# A075842: n 1's followed by n.

The programs for A075842, there is no canonical definition to state claims against.
-/

/-! ## A075842.P10625466460174338855

`A347346(n+1)+A105279(A083136(n+1))`
-/

namespace A075842.P10625466460174338855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347346 (n + 1) + A105279 (A083136 (n + 1)).toNat

end

end A075842.P10625466460174338855

/-! ## A075842.P17746148868246874425

`A347346(n+1)+A105279(A117057(n+1))`
-/

namespace A075842.P17746148868246874425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347346 (n + 1) + A105279 (A117057 (n + 1)).toNat

end

end A075842.P17746148868246874425

/-! ## A075842.P15790056143872642515

`record[A114397(n+2)]+n`
-/

namespace A075842.P15790056143872642515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114397 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A075842.P15790056143872642515

/-! ## A075842.P16100599921071200334

`record[A120449(n+2)]+n`
-/

namespace A075842.P16100599921071200334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120449 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A075842.P16100599921071200334

/-!
# A075843: Numbers k such that 99*k^2 + 1 is a square.

The programs for A075843, the canonical program `A075843.P2752168464053313940` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075843 has offset 0).

The definition of A075843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075843.P2752168464053313940

`20*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075843

/-- `20*a(n-1)-a(n-2)` -/
def P2752168464053313940.Spec : Prop :=
  ∀ n, P2752168464053313940.a n = A075843 n

theorem P2752168464053313940.correct : P2752168464053313940.Spec := by
  intro n
  simp only [A075843]

end A075843

/-! ## A075843.P963433353067636589

`((10+3*sqrt(11))^n-(10-3*sqrt(11))^n)/(6*sqrt(11))`
-/

namespace A075843.P963433353067636589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 + 3 * Real.sqrt (11 : ℝ)) ^ n - (10 - 3 * Real.sqrt (11 : ℝ)) ^ n) / (6 * Real.sqrt (11 : ℝ))

end

end A075843.P963433353067636589

namespace A075843

/-- `((10+3*sqrt(11))^n-(10-3*sqrt(11))^n)/(6*sqrt(11))` -/
def P963433353067636589.Spec : Prop :=
  ∀ n, P963433353067636589.a n = (A075843 n : ℝ)

theorem P963433353067636589.correct : P963433353067636589.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A075843, Nat.add_sub_cancel, A075843.P963433353067636589.a, A075843.P2752168464053313940.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A075843, Nat.add_sub_cancel, A075843.P963433353067636589.a, A075843.P2752168464053313940.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A075843

/-! ## A075843.P8185508066358145526

`sqrt((A001085(n)²-1)/99)`
-/

namespace A075843.P8185508066358145526
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A001085 n ^ 2 - 1 : ℚ) / 99 : ℝ)

end

end A075843.P8185508066358145526

namespace A075843

/-- `sqrt((A001085(n)²-1)/99)` -/
def P8185508066358145526.Spec : Prop :=
  ∀ n, P8185508066358145526.a n = (A075843 n : ℝ)

end A075843

/-! ## A075843.P9630972473735000651

`ogf(x/(1-20x+x^2))`
-/

namespace A075843.P9630972473735000651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -20, 1] n

end

end A075843.P9630972473735000651

namespace A075843

/-- `ogf(x/(1-20x+x^2))` -/
def P9630972473735000651.Spec : Prop :=
  ∀ n, P9630972473735000651.a n = A075843 n

end A075843

/-! ## A075843.P9356482740186294935

`record[and(1, n)*A041179(n)]`
-/

namespace A075843.P9356482740186294935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A041179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075843.P9356482740186294935

namespace A075843

/-- `record[and(1, n)*A041179(n)]` -/
def P9356482740186294935.Spec : Prop :=
  ∀ n, P9356482740186294935.a n = A075843 n

end A075843

/-! ## A075843.P607830661218445746

`A083043(n)-a(n-1)` with `a(0)=0`
-/

namespace A075843.P607830661218445746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A083043 n - a (n - 1)

end

end A075843.P607830661218445746

namespace A075843

/-- `A083043(n)-a(n-1)` -/
def P607830661218445746.Spec : Prop :=
  ∀ n, P607830661218445746.a n = A075843 n

end A075843

/-! ## A075843.P14707559659623881688

`record[A041179(n)%A041015(n)]`
-/

namespace A075843.P14707559659623881688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041179 n) (A041015 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075843.P14707559659623881688

namespace A075843

/-- `record[A041179(n)%A041015(n)]` -/
def P14707559659623881688.Spec : Prop :=
  ∀ n, P14707559659623881688.a n = A075843 n

end A075843

/-! ## A075843.P15640353949838707664

`∑[2*A099276(n)]-A099276(n)`
-/

namespace A075843.P15640353949838707664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099276 n

end

end A075843.P15640353949838707664

namespace A075843

/-- `∑[2*A099276(n)]-A099276(n)` -/
def P15640353949838707664.Spec : Prop :=
  ∀ n, P15640353949838707664.a n = A075843 n

end A075843

/-! ## A075843.P14360655067899394035

`∑[record[A041015(n)-A221762(n+1)]]`
-/

namespace A075843.P14360655067899394035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041015 n - A221762 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075843.P14360655067899394035

namespace A075843

/-- `∑[record[A041015(n)-A221762(n+1)]]` -/
def P14360655067899394035.Spec : Prop :=
  ∀ n, P14360655067899394035.a n = A075843 n

end A075843

/-! ## A075843.P530726764864904653

`A041179(2*n+1)-A041179(2*n)`
-/

namespace A075843.P530726764864904653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041179 (2 * n + 1) - A041179 (2 * n)

end

end A075843.P530726764864904653

namespace A075843

/-- `A041179(2*n+1)-A041179(2*n)` -/
def P530726764864904653.Spec : Prop :=
  ∀ n, P530726764864904653.a n = A075843 n

end A075843

/-!
# A075844: Numbers k such that 11*k^2 + 4 is a square.

The programs for A075844, the canonical program `A075844.P443373000850428851` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075844 has offset 0).

The definition of A075844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075844.P443373000850428851

`20*a(n-1)-a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075844

/-- `20*a(n-1)-a(n-2)` -/
def P443373000850428851.Spec : Prop :=
  ∀ n, P443373000850428851.a n = A075844 n

theorem P443373000850428851.correct : P443373000850428851.Spec := by
  intro n
  simp only [A075844]

end A075844

/-! ## A075844.P4334808199526227135

`6*A075843(n)`
-/

namespace A075844.P4334808199526227135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A075843 n

end

end A075844.P4334808199526227135

namespace A075844

/-- `6*A075843(n)` -/
def P4334808199526227135.Spec : Prop :=
  ∀ n, P4334808199526227135.a n = A075844 n

end A075844

/-! ## A075844.P9794720064649902357

`ogf(6x/(1-20x+x^2))`
-/

namespace A075844.P9794720064649902357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -20, 1] n

end

end A075844.P9794720064649902357

namespace A075844

/-- `ogf(6x/(1-20x+x^2))` -/
def P9794720064649902357.Spec : Prop :=
  ∀ n, P9794720064649902357.a n = A075844 n

end A075844

/-! ## A075844.P9489041048960458417

`2*A001084(n)`
-/

namespace A075844.P9489041048960458417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001084 n

end

end A075844.P9489041048960458417

namespace A075844

/-- `2*A001084(n)` -/
def P9489041048960458417.Spec : Prop :=
  ∀ n, P9489041048960458417.a n = A075844 n

end A075844

/-! ## A075844.P833014718734261700

`6*record[and(1, n)*A041179(n)]`
-/

namespace A075844.P833014718734261700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A041179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075844.P833014718734261700

namespace A075844

/-- `6*record[and(1, n)*A041179(n)]` -/
def P833014718734261700.Spec : Prop :=
  ∀ n, P833014718734261700.a n = A075844 n

end A075844

/-! ## A075844.P18183339384026496284

`record[2*A000035(n)*A041015(n)]`
-/

namespace A075844.P18183339384026496284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000035 n * A041015 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075844.P18183339384026496284

namespace A075844

/-- `record[2*A000035(n)*A041015(n)]` -/
def P18183339384026496284.Spec : Prop :=
  ∀ n, P18183339384026496284.a n = A075844 n

end A075844

/-! ## A075844.P1631408750786842029

`A221763(2*n+1)-A001085(n)`
-/

namespace A075844.P1631408750786842029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221763 (2 * n + 1) - A001085 n

end

end A075844.P1631408750786842029

namespace A075844

/-- `A221763(2*n+1)-A001085(n)` -/
def P1631408750786842029.Spec : Prop :=
  ∀ n, P1631408750786842029.a n = A075844 n

end A075844

/-! ## A075844.P13790742133193432539

`6*∑[record[A041015(n)-A221762(n+1)]]`
-/

namespace A075844.P13790742133193432539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041015 n - A221762 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075844.P13790742133193432539

namespace A075844

/-- `6*∑[record[A041015(n)-A221762(n+1)]]` -/
def P13790742133193432539.Spec : Prop :=
  ∀ n, P13790742133193432539.a n = A075844 n

end A075844

/-! ## A075844.P12727280576821833632

`2*(A221763(2*n+1)-A198947(2*n+1))`
-/

namespace A075844.P12727280576821833632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A221763 (2 * n + 1) - A198947 (2 * n + 1))

end

end A075844.P12727280576821833632

namespace A075844

/-- `2*(A221763(2*n+1)-A198947(2*n+1))` -/
def P12727280576821833632.Spec : Prop :=
  ∀ n, P12727280576821833632.a n = A075844 n

end A075844

/-! ## A075844.P14402519352844752453

`2*(A041015(A004273(n))-A000007(n))`
-/

namespace A075844.P14402519352844752453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041015 (A004273 n).toNat - A000007 n)

end

end A075844.P14402519352844752453

namespace A075844

/-- `2*(A041015(A004273(n))-A000007(n))` -/
def P14402519352844752453.Spec : Prop :=
  ∀ n, P14402519352844752453.a n = A075844 n

end A075844

/-!
# A075845: Associated to determinants of skew-symmetric matrices related to Catalan-numbers or central binomial coefficients.

The programs for A075845, there is no canonical definition to state claims against.
-/

/-! ## A075845.P15786091907673925034

`∏{p}[A353403(∑[n]+3)+1, #]`
-/

namespace A075845.P15786091907673925034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353403 (∑ j ∈ Finset.range (n + 1), f2 j + 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A075845.P15786091907673925034

/-!
# A075846: Numbers k such that sopf(k) = (1/2)*(sopf(k+1) + sopf(k-1)), where sopf(x) = sum of the distinct prime factors of x.

The programs for A075846, there is no canonical definition to state claims against.
-/

/-! ## A075846.P6930273675778005197

`A201650(A272080(n+1))`
-/

namespace A075846.P6930273675778005197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201650 (A272080 (n + 1)).toNat

end

end A075846.P6930273675778005197

/-!
# A075847: Difference between n^2 and the largest cube <= n^2.

The programs for A075847, the canonical program `A075847.P12306880056325021754` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075847 has offset 0).

The definition of A075847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075847.P12306880056325021754

`n²-floor(n^(2/3))^3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075847

/-- `n²-floor(n^(2/3))^3` -/
def P12306880056325021754.Spec : Prop :=
  ∀ n, P12306880056325021754.a n = A075847 n

theorem P12306880056325021754.correct : P12306880056325021754.Spec := by
  intro n
  simp only [A075847]

end A075847

/-! ## A075847.P7683644256040384059

`abs(n²-A100196(n)^3)`
-/

namespace A075847.P7683644256040384059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A100196 n ^ 3|

end

end A075847.P7683644256040384059

namespace A075847

/-- `abs(n²-A100196(n)^3)` -/
def P7683644256040384059.Spec : Prop :=
  ∀ n, P7683644256040384059.a n = A075847 n

end A075847

/-! ## A075847.P10002358576266725717

`abs(n²-A000578(A100196(n)))`
-/

namespace A075847.P10002358576266725717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000578 (A100196 n).toNat|

end

end A075847.P10002358576266725717

namespace A075847

/-- `abs(n²-A000578(A100196(n)))` -/
def P10002358576266725717.Spec : Prop :=
  ∀ n, P10002358576266725717.a n = A075847 n

end A075847

/-! ## A075847.P9014349101330621638

`abs(A000290(n)-abs((-A100196(n))^3))`
-/

namespace A075847.P9014349101330621638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000290 n - |(-A100196 n) ^ 3|)|

end

end A075847.P9014349101330621638

namespace A075847

/-- `abs(A000290(n)-abs((-A100196(n))^3))` -/
def P9014349101330621638.Spec : Prop :=
  ∀ n, P9014349101330621638.a n = A075847 n

end A075847

/-! ## A075847.P9206404275406356747

`abs(n²-A000093(A100196(n)²))`
-/

namespace A075847.P9206404275406356747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000093 (A100196 n ^ 2).toNat|

end

end A075847.P9206404275406356747

namespace A075847

/-- `abs(n²-A000093(A100196(n)²))` -/
def P9206404275406356747.Spec : Prop :=
  ∀ n, P9206404275406356747.a n = A075847 n

end A075847

/-! ## A075847.P1409780409420600773

`abs(n²-A048762(n²))`
-/

namespace A075847.P1409780409420600773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A048762 (n ^ 2)|

end

end A075847.P1409780409420600773

namespace A075847

/-- `abs(n²-A048762(n²))` -/
def P1409780409420600773.Spec : Prop :=
  ∀ n, P1409780409420600773.a n = A075847 n

end A075847

/-! ## A075847.P13664158841313093752

`(A048762(n²)-n²)*A057428(n)`
-/

namespace A075847.P13664158841313093752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048762 (n ^ 2) - (n ^ 2 : ℤ)) * A057428 n

end

end A075847.P13664158841313093752

namespace A075847

/-- `(A048762(n²)-n²)*A057428(n)` -/
def P13664158841313093752.Spec : Prop :=
  ∀ n, P13664158841313093752.a n = A075847 n

end A075847

/-! ## A075847.P14086262563228948631

`(A048762(n²)-n²)*A260196(n)`
-/

namespace A075847.P14086262563228948631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048762 (n ^ 2) - (n ^ 2 : ℤ)) * A260196 n

end

end A075847.P14086262563228948631

namespace A075847

/-- `(A048762(n²)-n²)*A260196(n)` -/
def P14086262563228948631.Spec : Prop :=
  ∀ n, P14086262563228948631.a n = A075847 n

end A075847

/-! ## A075847.P14926996205802511743

`-((A048762(n²)-n²)*A178334(n))`
-/

namespace A075847.P14926996205802511743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A048762 (n ^ 2) - (n ^ 2 : ℤ)) * A178334 n)

end

end A075847.P14926996205802511743

namespace A075847

/-- `-((A048762(n²)-n²)*A178334(n))` -/
def P14926996205802511743.Spec : Prop :=
  ∀ n, P14926996205802511743.a n = A075847 n

end A075847

/-! ## A075847.P6645450055325303960

`gcd(A048762(n²)-n², A000038(n+1))`
-/

namespace A075847.P6645450055325303960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048762 (n ^ 2) - (n ^ 2 : ℤ)) (A000038 (n + 1))

end

end A075847.P6645450055325303960

namespace A075847

/-- `gcd(A048762(n²)-n², A000038(n+1))` -/
def P6645450055325303960.Spec : Prop :=
  ∀ n, (P6645450055325303960.a n : ℤ) = A075847 n

end A075847

/-! ## A075847.P12223000360975542930

`lcm(A000007(n)+1, A048762(n²)-n²)`
-/

namespace A075847.P12223000360975542930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000007 n + 1) (A048762 (n ^ 2) - (n ^ 2 : ℤ))

end

end A075847.P12223000360975542930

namespace A075847

/-- `lcm(A000007(n)+1, A048762(n²)-n²)` -/
def P12223000360975542930.Spec : Prop :=
  ∀ n, (P12223000360975542930.a n : ℤ) = A075847 n

end A075847

/-! ## A075847.P10121666558789569079

`(n²-A048762(n²))%A000041(2*n)`
-/

namespace A075847.P10121666558789569079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - A048762 (n ^ 2)) (A000041 (2 * n))

end

end A075847.P10121666558789569079

namespace A075847

/-- `(n²-A048762(n²))%A000041(2*n)` -/
def P10121666558789569079.Spec : Prop :=
  ∀ n, P10121666558789569079.a n = A075847 n

end A075847

/-! ## A075847.P11237692266273464328

`-((A048762(n²)-n²)%A006094(n+1))`
-/

namespace A075847.P11237692266273464328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A048762 (n ^ 2) - (n ^ 2 : ℤ)) (A006094 (n + 1))

end

end A075847.P11237692266273464328

namespace A075847

/-- `-((A048762(n²)-n²)%A006094(n+1))` -/
def P11237692266273464328.Spec : Prop :=
  ∀ n, P11237692266273464328.a n = A075847 n

end A075847

/-! ## A075847.P1926647763961003753

`(n²-A048762(n²))/A014963(10*(n+1))`
-/

namespace A075847.P1926647763961003753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A048762 (n ^ 2) : ℚ) / (A014963 (10 * (n + 1)) : ℚ)

end

end A075847.P1926647763961003753

namespace A075847

/-- `(n²-A048762(n²))/A014963(10*(n+1))` -/
def P1926647763961003753.Spec : Prop :=
  ∀ n, P1926647763961003753.a n = (A075847 n : ℚ)

end A075847

/-! ## A075847.P10489643050580534147

`(A048762(n²)-n²)*-A000040(n+2)%2`
-/

namespace A075847.P10489643050580534147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048762 (n ^ 2) - (n ^ 2 : ℤ)) * Int.tmod (-A000040 (n + 2)) 2

end

end A075847.P10489643050580534147

namespace A075847

/-- `(A048762(n²)-n²)*-A000040(n+2)%2` -/
def P10489643050580534147.Spec : Prop :=
  ∀ n, P10489643050580534147.a n = A075847 n

end A075847

/-! ## A075847.P7772187863231720355

`(1-gcd(2, A000010(n+1)))*(A048762(n²)-n²)`
-/

namespace A075847.P7772187863231720355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Int.gcd 2 (A000010 (n + 1)) : ℤ)) * (A048762 (n ^ 2) - (n ^ 2 : ℤ))

end

end A075847.P7772187863231720355

namespace A075847

/-- `(1-gcd(2, A000010(n+1)))*(A048762(n²)-n²)` -/
def P7772187863231720355.Spec : Prop :=
  ∀ n, P7772187863231720355.a n = A075847 n

end A075847

/-! ## A075847.P4007736740127080579

`(A048762(n²)-n²)*A008683(record[A014963(n+2)])`
-/

namespace A075847.P4007736740127080579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048762 (n ^ 2) - (n ^ 2 : ℤ)) * A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075847.P4007736740127080579

namespace A075847

/-- `(A048762(n²)-n²)*A008683(record[A014963(n+2)])` -/
def P4007736740127080579.Spec : Prop :=
  ∀ n, P4007736740127080579.a n = A075847 n

end A075847

/-! ## A075847.P2037029428252175217

`A055400(n²)`
-/

namespace A075847.P2037029428252175217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (n ^ 2)

end

end A075847.P2037029428252175217

namespace A075847

/-- `A055400(n²)` -/
def P2037029428252175217.Spec : Prop :=
  ∀ n, P2037029428252175217.a n = A075847 n

end A075847

/-! ## A075847.P14606022804103054733

`A092282(n²+1)`
-/

namespace A075847.P14606022804103054733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092282 (n ^ 2 + 1)

end

end A075847.P14606022804103054733

namespace A075847

/-- `A092282(n²+1)` -/
def P14606022804103054733.Spec : Prop :=
  ∀ n, P14606022804103054733.a n = A075847 n

end A075847

/-!
# A075848: Numbers k such that 2*k^2 + 9 is a square.

The programs for A075848, the canonical program `A075848.P12689518413340884517` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075848 has offset 0).

The definition of A075848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075848.P12689518413340884517

`6*a(n-1)-a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075848

/-- `6*a(n-1)-a(n-2)` -/
def P12689518413340884517.Spec : Prop :=
  ∀ n, P12689518413340884517.a n = A075848 n

theorem P12689518413340884517.correct : P12689518413340884517.Spec := by
  intro n
  simp only [A075848]

end A075848

/-! ## A075848.P17299550233079262338

`6*A001109(n)`
-/

namespace A075848.P17299550233079262338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001109 n

end

end A075848.P17299550233079262338

namespace A075848

/-- `6*A001109(n)` -/
def P17299550233079262338.Spec : Prop :=
  ∀ n, P17299550233079262338.a n = A075848 n

end A075848

/-! ## A075848.P8492267942216296597

`ogf(6x/(1-6x+x^2))`
-/

namespace A075848.P8492267942216296597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -6, 1] n

end

end A075848.P8492267942216296597

namespace A075848

/-- `ogf(6x/(1-6x+x^2))` -/
def P8492267942216296597.Spec : Prop :=
  ∀ n, P8492267942216296597.a n = A075848 n

end A075848

/-! ## A075848.P7726199452674698538

`((3+2*sqrt(2))^n-(3-2*sqrt(2))^n)*3/(2*sqrt(2))`
-/

namespace A075848.P7726199452674698538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (2 : ℝ)) ^ n - (3 - 2 * Real.sqrt (2 : ℝ)) ^ n) * (3 / (2 * Real.sqrt (2 : ℝ)))

end

end A075848.P7726199452674698538

namespace A075848

/-- `((3+2*sqrt(2))^n-(3-2*sqrt(2))^n)*3/(2*sqrt(2))` -/
def P7726199452674698538.Spec : Prop :=
  ∀ n, P7726199452674698538.a n = (A075848 n : ℝ)

theorem P7726199452674698538.correct : P7726199452674698538.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A075848, Nat.add_sub_cancel, A075848.P7726199452674698538.a, A075848.P12689518413340884517.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A075848, Nat.add_sub_cancel, A075848.P7726199452674698538.a, A075848.P12689518413340884517.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A075848

/-! ## A075848.P1365137707489078926

`3*A182189(n)-3`
-/

namespace A075848.P1365137707489078926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A182189 n - 3

end

end A075848.P1365137707489078926

namespace A075848

/-- `3*A182189(n)-3` -/
def P1365137707489078926.Spec : Prop :=
  ∀ n, P1365137707489078926.a n = A075848 n

end A075848

/-! ## A075848.P12810716331988581277

`abs(2*A108931(2*n))`
-/

namespace A075848.P12810716331988581277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A108931 (2 * n)|

end

end A075848.P12810716331988581277

namespace A075848

/-- `abs(2*A108931(2*n))` -/
def P12810716331988581277.Spec : Prop :=
  ∀ n, P12810716331988581277.a n = A075848 n

end A075848

/-! ## A075848.P15213344899734503344

`4*A106328(n+1)/2`
-/

namespace A075848.P15213344899734503344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A106328 (n + 1) : ℚ) / 2

end

end A075848.P15213344899734503344

namespace A075848

/-- `4*A106328(n+1)/2` -/
def P15213344899734503344.Spec : Prop :=
  ∀ n, P15213344899734503344.a n = (A075848 n : ℚ)

end A075848

/-! ## A075848.P17212025823504960944

`ceil(6*A204512(2*n+3)/2)`
-/

namespace A075848.P17212025823504960944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈6 * ((A204512 (2 * n + 3) : ℚ) / 2)⌉

end

end A075848.P17212025823504960944

namespace A075848

/-- `ceil(6*A204512(2*n+3)/2)` -/
def P17212025823504960944.Spec : Prop :=
  ∀ n, P17212025823504960944.a n = A075848 n

end A075848

/-! ## A075848.P3136274447452761707

`A005319(n)+A001542(n)`
-/

namespace A075848.P3136274447452761707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n + A001542 n

end

end A075848.P3136274447452761707

namespace A075848

/-- `A005319(n)+A001542(n)` -/
def P3136274447452761707.Spec : Prop :=
  ∀ n, P3136274447452761707.a n = A075848 n

end A075848

/-! ## A075848.P11072698750478183722

`A038761(n)-A001541(n)`
-/

namespace A075848.P11072698750478183722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 n - A001541 n

end

end A075848.P11072698750478183722

namespace A075848

/-- `A038761(n)-A001541(n)` -/
def P11072698750478183722.Spec : Prop :=
  ∀ n, P11072698750478183722.a n = A075848 n

end A075848

/-! ## A075848.P8222177758189408296

`A054488(n)-A038725(n)`
-/

namespace A075848.P8222177758189408296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n - A038725 n

end

end A075848.P8222177758189408296

namespace A075848

/-- `A054488(n)-A038725(n)` -/
def P8222177758189408296.Spec : Prop :=
  ∀ n, P8222177758189408296.a n = A075848 n

end A075848

/-! ## A075848.P9258321886359279397

`A054489(n)-A038723(n)`
-/

namespace A075848.P9258321886359279397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054489 n - A038723 n

end

end A075848.P9258321886359279397

namespace A075848

/-- `A054489(n)-A038723(n)` -/
def P9258321886359279397.Spec : Prop :=
  ∀ n, P9258321886359279397.a n = A075848 n

end A075848

/-! ## A075848.P17672999749723190494

`A276598(n+1)+A001109(n)`
-/

namespace A075848.P17672999749723190494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276598 (n + 1) + A001109 n

end

end A075848.P17672999749723190494

namespace A075848

/-- `A276598(n+1)+A001109(n)` -/
def P17672999749723190494.Spec : Prop :=
  ∀ n, P17672999749723190494.a n = A075848 n

end A075848

/-! ## A075848.P12329729395871827286

`A001542(n+1)-A003499(n)`
-/

namespace A075848.P12329729395871827286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (n + 1) - A003499 n

end

end A075848.P12329729395871827286

namespace A075848

/-- `A001542(n+1)-A003499(n)` -/
def P12329729395871827286.Spec : Prop :=
  ∀ n, P12329729395871827286.a n = A075848 n

end A075848

/-! ## A075848.P10658159970832710617

`A054490(n)-A001653(n+1)`
-/

namespace A075848.P10658159970832710617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n - A001653 (n + 1)

end

end A075848.P10658159970832710617

namespace A075848

/-- `A054490(n)-A001653(n+1)` -/
def P10658159970832710617.Spec : Prop :=
  ∀ n, P10658159970832710617.a n = A075848 n

end A075848

/-! ## A075848.P804526965728899335

`A005319(n)+A000129(2*n)`
-/

namespace A075848.P804526965728899335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n + A000129 (2 * n)

end

end A075848.P804526965728899335

namespace A075848

/-- `A005319(n)+A000129(2*n)` -/
def P804526965728899335.Spec : Prop :=
  ∀ n, P804526965728899335.a n = A075848 n

end A075848

/-! ## A075848.P8675956812175745416

`A078343(2*n)+A001541(n)`
-/

namespace A075848.P8675956812175745416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (2 * n) + A001541 n

end

end A075848.P8675956812175745416

namespace A075848

/-- `A078343(2*n)+A001541(n)` -/
def P8675956812175745416.Spec : Prop :=
  ∀ n, P8675956812175745416.a n = A075848 n

end A075848

/-! ## A075848.P18007958497417523906

`A089499(2*n)+A001542(n)`
-/

namespace A075848.P18007958497417523906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089499 (2 * n) + A001542 n

end

end A075848.P18007958497417523906

namespace A075848

/-- `A089499(2*n)+A001542(n)` -/
def P18007958497417523906.Spec : Prop :=
  ∀ n, P18007958497417523906.a n = A075848 n

end A075848

/-! ## A075848.P6703311341132378863

`A143608(2*n)+A001542(n)`
-/

namespace A075848.P6703311341132378863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 (2 * n) + A001542 n

end

end A075848.P6703311341132378863

namespace A075848

/-- `A143608(2*n)+A001542(n)` -/
def P6703311341132378863.Spec : Prop :=
  ∀ n, P6703311341132378863.a n = A075848 n

end A075848

/-! ## A075848.P264147699118495359

`A077442(2*n)-A001541(n)`
-/

namespace A075848.P264147699118495359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 (2 * n) - A001541 n

end

end A075848.P264147699118495359

namespace A075848

/-- `A077442(2*n)-A001541(n)` -/
def P264147699118495359.Spec : Prop :=
  ∀ n, P264147699118495359.a n = A075848 n

end A075848

/-!
# A075849: a(1) = a(2) = 1; a(n) = a(n-1)! + a(n-2) for n > 2.

The programs for A075849, there is no canonical definition to state claims against.
-/

/-! ## A075849.P13265207123966929691

`floor(a(n-1)!+n/ϕ)` with `a(0)=1`
-/

namespace A075849.P13265207123966929691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Nat.factorial (a (n - 1)).toNat : ℝ) + (n : ℝ) / Real.goldenRatio⌋

end

end A075849.P13265207123966929691

/-!
# A075850: Greatest k such that f(k,1) divides f(k,n) where f(k,n) is the k-th term of the sequence: f(1,n)=1, f(2,n)=n, f(k+2,n)=f(k+1,n)+f(k,n).

The programs for A075850, there is no canonical definition to state claims against.
-/

/-! ## A075850.P8101824077468867690

`A049839(A054494(n+1))`
-/

namespace A075850.P8101824077468867690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049839 (A054494 (n + 1)).toNat

end

end A075850.P8101824077468867690

/-! ## A075850.P8548804103981819364

`A072649(2*A054494(n+1))`
-/

namespace A075850.P8548804103981819364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (2 * A054494 (n + 1)).toNat

end

end A075850.P8548804103981819364

/-! ## A075850.P12116965641556405276

`A130241(3*A054494(n+1))`
-/

namespace A075850.P12116965641556405276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (3 * A054494 (n + 1)).toNat

end

end A075850.P12116965641556405276

/-! ## A075850.P3953240802749281671

`A130233((n+1)/A054495(n+1))`
-/

namespace A075850.P3953240802749281671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A054495 (n + 1) : ℚ))).toNat

end

end A075850.P3953240802749281671

/-! ## A075850.P10286679491827854552

`A130239(A005093(n+1))`
-/

namespace A075850.P10286679491827854552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130239 (A005093 (n + 1)).toNat

end

end A075850.P10286679491827854552

/-! ## A075850.P506550122682894100

`A172005(A054494(n+1)+1)`
-/

namespace A075850.P506550122682894100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172005 (A054494 (n + 1) + 1).toNat

end

end A075850.P506550122682894100

/-!
# A075851: Number of permutations s of {1,2,...,n} such that |s(i)-i|>2 for each i=1,2,...,n.

The programs for A075851, there is no canonical definition to state claims against.
-/

/-! ## A075851.P172428900782351730

`A001883(n)-A397359(n)`
-/

namespace A075851.P172428900782351730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001883 n - A397359 n

end

end A075851.P172428900782351730

/-! ## A075851.P9436257865761593428

`A081594(C(2^ceil(n/2), ∑{d}[n+1, #]))`
-/

namespace A075851.P9436257865761593428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 (Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat (∑ d ∈ Nat.divisors (f1 n), d))

end

end A075851.P9436257865761593428

/-! ## A075851.P13769994426930989478

`A007954(A319763(n)^3)`
-/

namespace A075851.P13769994426930989478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A319763 n ^ 3).toNat

end

end A075851.P13769994426930989478

/-! ## A075851.P17990433791832338530

`A007305(A263361(n)^8)`
-/

namespace A075851.P17990433791832338530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A263361 n ^ 8).toNat

end

end A075851.P17990433791832338530

/-! ## A075851.P16149351750887699027

`∑{d}[A129408(A189389(n)), #]`
-/

namespace A075851.P16149351750887699027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129408 (A189389 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A075851.P16149351750887699027

/-!
# A075852: Number of permutations s of {1,2,...,n} such that |s(i)-i|>3 for each i=1,2,...,n.

The programs for A075852, there is no canonical definition to state claims against.
-/

/-! ## A075852.P11425666804901193855

`A095117(C(A068106(n+2), A230980(3*n+2)))`
-/

namespace A075852.P11425666804901193855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (Nat.choose (A068106 (n + 2)).toNat (A230980 (3 * n + 2)).toNat)

end

end A075852.P11425666804901193855

/-!
# A075853: G.f. satisfies A(x) = 1 + x (1+Sum_{n=0..inf} [xA(x)]^(2^n)).

The programs for A075853, there is no canonical definition to state claims against.
-/

/-! ## A075853.P15571843012914367152

`A001462(∑[A006343(n)]+1)-1`
-/

namespace A075853.P15571843012914367152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - 1

end

end A075853.P15571843012914367152

/-! ## A075853.P16861049126506061398

`A079262(n+1)+A054846(A120588(n))`
-/

namespace A075853.P16861049126506061398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (n + 1) + A054846 (A120588 n).toNat

end

end A075853.P16861049126506061398

/-! ## A075853.P2182852125900458115

`A257639(floor(sqrt(A245248(n))))`
-/

namespace A075853.P2182852125900458115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.sqrt (A245248 n)).toNat

end

end A075853.P2182852125900458115

/-! ## A075853.P6708703089147349807

`ceil(A332872(n)/A342528(n+1))`
-/

namespace A075853.P6708703089147349807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A332872 n : ℚ) / (A342528 (n + 1) : ℚ)⌉

end

end A075853.P6708703089147349807

/-! ## A075853.P11148159849102502650

`round(A221849(n)/A320088(n+1))`
-/

namespace A075853.P11148159849102502650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A221849 n : ℚ) / (A320088 (n + 1) : ℚ))

end

end A075853.P11148159849102502650

/-!
# A075855: Maximum number of black squares on an n X n chessboard (with a black square in at least one corner) that can be covered by a single path, traveling only to adjacent black squares.

The programs for A075855, the canonical program `A075855.P13663676767278272599` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075855 has offset 1).

The definition of A075855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075855.P13663676767278272599

`n*ceil(n/2)+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075855

/-- `n*ceil(n/2)+1` -/
def P13663676767278272599.Spec : Prop :=
  ∀ n, P13663676767278272599.a n = A075855 (n + 1)

theorem P13663676767278272599.correct : P13663676767278272599.Spec := by
  intro n
  simp only [A075855, Nat.add_sub_cancel]

end A075855

/-! ## A075855.P14601685926516941411

`(n*(n%2+n)+2)/2`
-/

namespace A075855.P14601685926516941411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n % 2 + n) + 2 : ℕ) : ℚ) / 2

end

end A075855.P14601685926516941411

namespace A075855

/-- `(n*(n%2+n)+2)/2` -/
def P14601685926516941411.Spec : Prop :=
  ∀ n, P14601685926516941411.a n = (A075855 (n + 1) : ℚ)

end A075855

/-! ## A075855.P6066502695133777837

`∑[lcm(2, n²)+1]/(n+1)`
-/

namespace A075855.P6066502695133777837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n ^ 2) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A075855.P6066502695133777837

namespace A075855

/-- `∑[lcm(2, n²)+1]/(n+1)` -/
def P6066502695133777837.Spec : Prop :=
  ∀ n, P6066502695133777837.a n = (A075855 (n + 1) : ℚ)

end A075855

/-! ## A075855.P10164676615923158928

`∪[A058331(n), A130883(n)]`
-/

namespace A075855.P10164676615923158928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075855.P10164676615923158928

namespace A075855

/-- `∪[A058331(n), A130883(n)]` -/
def P10164676615923158928.Spec : Prop :=
  ∀ n, (P10164676615923158928.a n : ℤ) = A075855 (n + 1)

end A075855

/-! ## A075855.P14126972226672603277

`∪[A334822(n+1), A249333(n+3)]`
-/

namespace A075855.P14126972226672603277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249333 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075855.P14126972226672603277

namespace A075855

/-- `∪[A334822(n+1), A249333(n+3)]` -/
def P14126972226672603277.Spec : Prop :=
  ∀ n, (P14126972226672603277.a n : ℤ) = A075855 (n + 1)

end A075855

/-! ## A075855.P946301942069753165

`A173254(A053438(n))`
-/

namespace A075855.P946301942069753165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173254 (A053438 n).toNat

end

end A075855.P946301942069753165

namespace A075855

/-- `A173254(A053438(n))` -/
def P946301942069753165.Spec : Prop :=
  ∀ n, P946301942069753165.a n = A075855 (n + 1)

end A075855

/-! ## A075855.P211629680360990872

`record[A110422(n+2)-n]`
-/

namespace A075855.P211629680360990872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110422 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075855.P211629680360990872

namespace A075855

/-- `record[A110422(n+2)-n]` -/
def P211629680360990872.Spec : Prop :=
  ∀ n, P211629680360990872.a n = A075855 (n + 1)

end A075855

/-! ## A075855.P16690159570242781082

`∑{digits}[10^ceil(n/2), gcd(n, #)]`
-/

namespace A075855.P16690159570242781082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => Nat.gcd n x).sum

end

end A075855.P16690159570242781082

namespace A075855

/-- `∑{digits}[10^ceil(n/2), gcd(n, #)]` -/
def P16690159570242781082.Spec : Prop :=
  ∀ n, (P16690159570242781082.a n : ℤ) = A075855 (n + 1)

end A075855

/-! ## A075855.P6612860088289487088

`A076110(A080827(n+1))`
-/

namespace A075855.P6612860088289487088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (A080827 (n + 1)).toNat

end

end A075855.P6612860088289487088

namespace A075855

/-- `A076110(A080827(n+1))` -/
def P6612860088289487088.Spec : Prop :=
  ∀ n, P6612860088289487088.a n = A075855 (n + 1)

end A075855

/-! ## A075855.P757423985738713786

`A081493(A080476(n+1))`
-/

namespace A075855.P757423985738713786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (A080476 (n + 1)).toNat

end

end A075855.P757423985738713786

namespace A075855

/-- `A081493(A080476(n+1))` -/
def P757423985738713786.Spec : Prop :=
  ∀ n, P757423985738713786.a n = A075855 (n + 1)

end A075855

/-! ## A075855.P16062151497824301795

`A122797(A031878(n+2))`
-/

namespace A075855.P16062151497824301795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A031878 (n + 2)).toNat

end

end A075855.P16062151497824301795

namespace A075855

/-- `A122797(A031878(n+2))` -/
def P16062151497824301795.Spec : Prop :=
  ∀ n, P16062151497824301795.a n = A075855 (n + 1)

end A075855

/-! ## A075855.P12389385031600091181

`A076110(A099392(n+2))`
-/

namespace A075855.P12389385031600091181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (A099392 (n + 2)).toNat

end

end A075855.P12389385031600091181

namespace A075855

/-- `A076110(A099392(n+2))` -/
def P12389385031600091181.Spec : Prop :=
  ∀ n, P12389385031600091181.a n = A075855 (n + 1)

end A075855

/-! ## A075855.P8988543780901811738

`A199855(A133263(n))`
-/

namespace A075855.P8988543780901811738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199855 (A133263 n).toNat

end

end A075855.P8988543780901811738

namespace A075855

/-- `A199855(A133263(n))` -/
def P8988543780901811738.Spec : Prop :=
  ∀ n, P8988543780901811738.a n = A075855 (n + 1)

end A075855

/-! ## A075855.P6779172517521508691

`A199855(A238531(n+1))`
-/

namespace A075855.P6779172517521508691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199855 (A238531 (n + 1)).toNat

end

end A075855.P6779172517521508691

namespace A075855

/-- `A199855(A238531(n+1))` -/
def P6779172517521508691.Spec : Prop :=
  ∀ n, P6779172517521508691.a n = A075855 (n + 1)

end A075855

/-! ## A075855.P6497858311457702310

`A026741(A228564(n+1)-n)`
-/

namespace A075855.P6497858311457702310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A228564 (n + 1) - (n : ℤ)).toNat

end

end A075855.P6497858311457702310

namespace A075855

/-- `A026741(A228564(n+1)-n)` -/
def P6497858311457702310.Spec : Prop :=
  ∀ n, P6497858311457702310.a n = A075855 (n + 1)

end A075855

/-! ## A075855.P13428075695954702125

`A008619(n*A052928(n+1))`
-/

namespace A075855.P13428075695954702125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A052928 (n + 1)).toNat

end

end A075855.P13428075695954702125

namespace A075855

/-- `A008619(n*A052928(n+1))` -/
def P13428075695954702125.Spec : Prop :=
  ∀ n, P13428075695954702125.a n = A075855 (n + 1)

end A075855

/-! ## A075855.P3614465371996722777

`A052938(n*A052928(n+1))`
-/

namespace A075855.P3614465371996722777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 ((n : ℤ) * A052928 (n + 1)).toNat

end

end A075855.P3614465371996722777

namespace A075855

/-- `A052938(n*A052928(n+1))` -/
def P3614465371996722777.Spec : Prop :=
  ∀ n, P3614465371996722777.a n = A075855 (n + 1)

end A075855

/-! ## A075855.P5727960448861088625

`A008619(n*A131055(n+1))`
-/

namespace A075855.P5727960448861088625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A131055 (n + 1)).toNat

end

end A075855.P5727960448861088625

namespace A075855

/-- `A008619(n*A131055(n+1))` -/
def P5727960448861088625.Spec : Prop :=
  ∀ n, P5727960448861088625.a n = A075855 (n + 1)

end A075855

/-! ## A075855.P11133358047439949451

`A008619(2*n*A065033(n))`
-/

namespace A075855.P11133358047439949451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((2 * n : ℤ) * A065033 n).toNat

end

end A075855.P11133358047439949451

namespace A075855

/-- `A008619(2*n*A065033(n))` -/
def P11133358047439949451.Spec : Prop :=
  ∀ n, P11133358047439949451.a n = A075855 (n + 1)

end A075855

/-! ## A075855.P924622954813691595

`A008619(2*n*A110654(n))`
-/

namespace A075855.P924622954813691595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((2 * n : ℤ) * A110654 n).toNat

end

end A075855.P924622954813691595

namespace A075855

/-- `A008619(2*n*A110654(n))` -/
def P924622954813691595.Spec : Prop :=
  ∀ n, P924622954813691595.a n = A075855 (n + 1)

end A075855

/-!
# A075856: Triangle formed from coefficients of the polynomials p(1)=x, p(n+1) = (n + x*(n+1))*p(n) + x*x*(d/dx)p(n).

The programs for A075856, the canonical program `A075856.P10520217250847486981` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075856 has offset 1).

The definition of A075856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1685 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075856.P10520217250847486981

`row(n)*T(n-1,k)+(row(n)+col(n)+1)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075856

/-- `row(n)*T(n-1,k)+(row(n)+col(n)+1)*T(n-1,k-1)` -/
def P10520217250847486981.Spec : Prop :=
  ∀ n, (P10520217250847486981.a n : ℤ) = A075856 (n + 1)

theorem P10520217250847486981.correct : P10520217250847486981.Spec := by
  intro n
  simp only [A075856, Nat.add_sub_cancel]

end A075856

/-! ## A075856.P14356627436488006837

`A239098(comp[∑[n]])`
-/

namespace A075856.P14356627436488006837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239098 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A075856.P14356627436488006837

namespace A075856

/-- `A239098(comp[∑[n]])` -/
def P14356627436488006837.Spec : Prop :=
  ∀ n, P14356627436488006837.a n = A075856 (n + 1)

end A075856

/-! ## A075856.P13340336186770355340

`or(char[1], A239098(A014132(n+1)))`
-/

namespace A075856.P13340336186770355340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A239098 (A014132 (n + 1)).toNat)

end

end A075856.P13340336186770355340

namespace A075856

/-- `or(char[1], A239098(A014132(n+1)))` -/
def P13340336186770355340.Spec : Prop :=
  ∀ n, P13340336186770355340.a n = A075856 (n + 1)

end A075856

/-! ## A075856.P3722941028708577850

`A185164(A056537(n+1)+1)`
-/

namespace A075856.P3722941028708577850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185164 (A056537 (n + 1) + 1).toNat

end

end A075856.P3722941028708577850

namespace A075856

/-- `A185164(A056537(n+1)+1)` -/
def P3722941028708577850.Spec : Prop :=
  ∀ n, P3722941028708577850.a n = A075856 (n + 1)

end A075856

/-! ## A075856.P7656334069658429450

`A239098(A014132(n+1))%A000045(n+4)`
-/

namespace A075856.P7656334069658429450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239098 (A014132 (n + 1)).toNat) (A000045 (n + 4))

end

end A075856.P7656334069658429450

namespace A075856

/-- `A239098(A014132(n+1))%A000045(n+4)` -/
def P7656334069658429450.Spec : Prop :=
  ∀ n, P7656334069658429450.a n = A075856 (n + 1)

end A075856

/-! ## A075856.P15373112109362371200

`A007318(∑[n])*A239098(A014132(n+1))`
-/

namespace A075856.P15373112109362371200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A239098 (A014132 (n + 1)).toNat

end

end A075856.P15373112109362371200

namespace A075856

/-- `A007318(∑[n])*A239098(A014132(n+1))` -/
def P15373112109362371200.Spec : Prop :=
  ∀ n, P15373112109362371200.a n = A075856 (n + 1)

end A075856

/-!
# A075857: Least common multiple of totient and cototient of n.

The programs for A075857, the canonical program `A075857.P13213587624051204763` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075857 has offset 1).

The definition of A075857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075857.P7163125867789802467

`lcm(A000010(n+1), n+1-A000010(n+1))`
-/

namespace A075857.P7163125867789802467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (n + 1)) ((n + 1 : ℤ) - A000010 (n + 1))

end

end A075857.P7163125867789802467

namespace A075857

/-- `lcm(A000010(n+1), n+1-A000010(n+1))` -/
def P7163125867789802467.Spec : Prop :=
  ∀ n, (P7163125867789802467.a n : ℤ) = A075857 (n + 1)

end A075857

/-! ## A075857.P13213587624051204763

`A000010(n+1)*A051953(n+1)/A009195(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A075857

/-- `A000010(n+1)*A051953(n+1)/A009195(n+1)` -/
def P13213587624051204763.Spec : Prop :=
  ∀ n, P13213587624051204763.a n = (A075857 (n + 1) : ℚ)

end A075857

/-! ## A075857.P13331263245958075853

`lcm(A219428(n+1)+1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A075857.P13331263245958075853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219428 (n + 1) + 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A075857.P13331263245958075853

namespace A075857

/-- `lcm(A219428(n+1)+1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P13331263245958075853.Spec : Prop :=
  ∀ n, (P13331263245958075853.a n : ℤ) = A075857 (n + 1)

end A075857

/-! ## A075857.P10981570399140645897

`Δ[A002088(n)]*A076511(n+1)`
-/

namespace A075857.P10981570399140645897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A076511 (n + 1)

end

end A075857.P10981570399140645897

namespace A075857

/-- `Δ[A002088(n)]*A076511(n+1)` -/
def P10981570399140645897.Spec : Prop :=
  ∀ n, P10981570399140645897.a n = A075857 (n + 1)

end A075857

/-! ## A075857.P12069092782441868753

`Δ[A005728(n)]*A076511(n+1)`
-/

namespace A075857.P12069092782441868753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A076511 (n + 1)

end

end A075857.P12069092782441868753

namespace A075857

/-- `Δ[A005728(n)]*A076511(n+1)` -/
def P12069092782441868753.Spec : Prop :=
  ∀ n, P12069092782441868753.a n = A075857 (n + 1)

end A075857

/-! ## A075857.P148329878346648407

`lcm(Δ[A002088(n)], A051953(n+1))`
-/

namespace A075857.P148329878346648407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A051953 (n + 1))

end

end A075857.P148329878346648407

namespace A075857

/-- `lcm(Δ[A002088(n)], A051953(n+1))` -/
def P148329878346648407.Spec : Prop :=
  ∀ n, (P148329878346648407.a n : ℤ) = A075857 (n + 1)

end A075857

/-! ## A075857.P11337657183774264999

`A000010(n+1)*A076511(n+1)`
-/

namespace A075857.P11337657183774264999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A076511 (n + 1)

end

end A075857.P11337657183774264999

namespace A075857

/-- `A000010(n+1)*A076511(n+1)` -/
def P11337657183774264999.Spec : Prop :=
  ∀ n, P11337657183774264999.a n = A075857 (n + 1)

end A075857

/-! ## A075857.P12605220370357218659

`A051953(n+1)*A076512(n+1)`
-/

namespace A075857.P12605220370357218659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) * A076512 (n + 1)

end

end A075857.P12605220370357218659

namespace A075857

/-- `A051953(n+1)*A076512(n+1)` -/
def P12605220370357218659.Spec : Prop :=
  ∀ n, P12605220370357218659.a n = A075857 (n + 1)

end A075857

/-! ## A075857.P548984931757903997

`A117295(n+1)/A009195(n+1)`
-/

namespace A075857.P548984931757903997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117295 (n + 1) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A075857.P548984931757903997

namespace A075857

/-- `A117295(n+1)/A009195(n+1)` -/
def P548984931757903997.Spec : Prop :=
  ∀ n, P548984931757903997.a n = (A075857 (n + 1) : ℚ)

end A075857

/-! ## A075857.P10879879072932848800

`A052100(n+1)/A109395(n+1)`
-/

namespace A075857.P10879879072932848800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052100 (n + 1) : ℚ) / (A109395 (n + 1) : ℚ)

end

end A075857.P10879879072932848800

namespace A075857

/-- `A052100(n+1)/A109395(n+1)` -/
def P10879879072932848800.Spec : Prop :=
  ∀ n, P10879879072932848800.a n = (A075857 (n + 1) : ℚ)

end A075857

/-! ## A075857.P11329960473509123045

`lcm(A109606(n+1)+1, A219428(n+1)+1)`
-/

namespace A075857.P11329960473509123045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109606 (n + 1) + 1) (A219428 (n + 1) + 1)

end

end A075857.P11329960473509123045

namespace A075857

/-- `lcm(A109606(n+1)+1, A219428(n+1)+1)` -/
def P11329960473509123045.Spec : Prop :=
  ∀ n, (P11329960473509123045.a n : ℤ) = A075857 (n + 1)

end A075857

/-! ## A075857.P12606735437450646078

`lcm(A039649(n+1)-1, A109606(n+1)-n)`
-/

namespace A075857.P12606735437450646078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039649 (n + 1) - 1) (A109606 (n + 1) - (n : ℤ))

end

end A075857.P12606735437450646078

namespace A075857

/-- `lcm(A039649(n+1)-1, A109606(n+1)-n)` -/
def P12606735437450646078.Spec : Prop :=
  ∀ n, (P12606735437450646078.a n : ℤ) = A075857 (n + 1)

end A075857

/-! ## A075857.P15541061013325247550

`lcm(A109606(n+1)+1, A051953(A000027(n+1)))`
-/

namespace A075857.P15541061013325247550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109606 (n + 1) + 1) (A051953 (A000027 (n + 1)).toNat)

end

end A075857.P15541061013325247550

namespace A075857

/-- `lcm(A109606(n+1)+1, A051953(A000027(n+1)))` -/
def P15541061013325247550.Spec : Prop :=
  ∀ n, (P15541061013325247550.a n : ℤ) = A075857 (n + 1)

end A075857

/-! ## A075857.P7933154230334373545

`(A109395(n+1)-A076512(n+1))*A000010(n+1)`
-/

namespace A075857.P7933154230334373545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109395 (n + 1) - A076512 (n + 1)) * A000010 (n + 1)

end

end A075857.P7933154230334373545

namespace A075857

/-- `(A109395(n+1)-A076512(n+1))*A000010(n+1)` -/
def P7933154230334373545.Spec : Prop :=
  ∀ n, P7933154230334373545.a n = A075857 (n + 1)

end A075857

/-! ## A075857.P15429740719642930343

`(A109395(n+1)-A076511(n+1))*A051953(n+1)`
-/

namespace A075857.P15429740719642930343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109395 (n + 1) - A076511 (n + 1)) * A051953 (n + 1)

end

end A075857.P15429740719642930343

namespace A075857

/-- `(A109395(n+1)-A076511(n+1))*A051953(n+1)` -/
def P15429740719642930343.Spec : Prop :=
  ∀ n, P15429740719642930343.a n = A075857 (n + 1)

end A075857

/-! ## A075857.P2326893682334883281

`(A107473(n+1)-A109395(n+1))*A051953(n+1)`
-/

namespace A075857.P2326893682334883281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107473 (n + 1) - A109395 (n + 1)) * A051953 (n + 1)

end

end A075857.P2326893682334883281

namespace A075857

/-- `(A107473(n+1)-A109395(n+1))*A051953(n+1)` -/
def P2326893682334883281.Spec : Prop :=
  ∀ n, P2326893682334883281.a n = A075857 (n + 1)

end A075857

/-! ## A075857.P5773108132212117308

`A009195(n+1)*A076511(n+1)*A076512(n+1)`
-/

namespace A075857.P5773108132212117308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1) * A076511 (n + 1) * A076512 (n + 1)

end

end A075857.P5773108132212117308

namespace A075857

/-- `A009195(n+1)*A076511(n+1)*A076512(n+1)` -/
def P5773108132212117308.Spec : Prop :=
  ∀ n, P5773108132212117308.a n = A075857 (n + 1)

end A075857

/-! ## A075857.P13037228187776767699

`A000010(n+1)/A009262(n+1)*A052100(n+1)`
-/

namespace A075857.P13037228187776767699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A009262 (n + 1) : ℚ) * (A052100 (n + 1) : ℚ)

end

end A075857.P13037228187776767699

namespace A075857

/-- `A000010(n+1)/A009262(n+1)*A052100(n+1)` -/
def P13037228187776767699.Spec : Prop :=
  ∀ n, P13037228187776767699.a n = (A075857 (n + 1) : ℚ)

end A075857

/-! ## A075857.P1551090514405789015

`A052106(n+1)*A076512(n+1)/A109395(n+1)`
-/

namespace A075857.P1551090514405789015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052106 (n + 1) * A076512 (n + 1) : ℚ) / (A109395 (n + 1) : ℚ)

end

end A075857.P1551090514405789015

namespace A075857

/-- `A052106(n+1)*A076512(n+1)/A109395(n+1)` -/
def P1551090514405789015.Spec : Prop :=
  ∀ n, P1551090514405789015.a n = (A075857 (n + 1) : ℚ)

end A075857

/-! ## A075857.P9149809108883518498

`A009262(n+1)-A009262(n+1)²/A050399(n+1)`
-/

namespace A075857.P9149809108883518498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009262 (n + 1) : ℚ) - (A009262 (n + 1) ^ 2 : ℚ) / (A050399 (n + 1) : ℚ)

end

end A075857.P9149809108883518498

namespace A075857

/-- `A009262(n+1)-A009262(n+1)²/A050399(n+1)` -/
def P9149809108883518498.Spec : Prop :=
  ∀ n, P9149809108883518498.a n = (A075857 (n + 1) : ℚ)

end A075857

/-!
# A075858: n followed by n 1's.

The programs for A075858, the canonical program `A075858.P14559431489095620478` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075858 has offset 1).

The definition of A075858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075858.P14559431489095620478

`(n+1)*10^(n+1)+(10^(n+1)-1)/9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075858

/-- `(n+1)*10^(n+1)+(10^(n+1)-1)/9` -/
def P14559431489095620478.Spec : Prop :=
  ∀ n, P14559431489095620478.a n = (A075858 (n + 1) : ℚ)

end A075858

/-! ## A075858.P7882675264016656984

`Δ[n*∑[10*a(n-1)]]/2` with `a(0)=2`
-/

namespace A075858.P7882675264016656984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2

end

end A075858.P7882675264016656984

namespace A075858

/-- `Δ[n*∑[10*a(n-1)]]/2` -/
def P7882675264016656984.Spec : Prop :=
  ∀ n, P7882675264016656984.a n = (A075858 (n + 1) : ℚ)

end A075858

/-! ## A075858.P6998296796265413570

`Δ[n*A000042(n+1)]`
-/

namespace A075858.P6998296796265413570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075858.P6998296796265413570

namespace A075858

/-- `Δ[n*A000042(n+1)]` -/
def P6998296796265413570.Spec : Prop :=
  ∀ n, P6998296796265413570.a n = A075858 (n + 1)

end A075858

/-! ## A075858.P2385514947482066101

`A056967(A100846(n+1))`
-/

namespace A075858.P2385514947482066101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A100846 (n + 1)).toNat

end

end A075858.P2385514947482066101

namespace A075858

/-- `A056967(A100846(n+1))` -/
def P2385514947482066101.Spec : Prop :=
  ∀ n, P2385514947482066101.a n = A075858 (n + 1)

end A075858

/-!
# A075859: a(n) = n concatenated with n 1's and n.

The programs for A075859, there is no canonical definition to state claims against.
-/

/-! ## A075859.P9969117749764094599

`Δ[n*record[Δ[A120449(n+1)]]+n+1]+n`
-/

namespace A075859.P9969117749764094599
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A075859.P9969117749764094599

/-! ## A075859.P9909484112520984257

`Δ[A267327(A032559(n+1))]+n`
-/

namespace A075859.P9909484112520984257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267327 (A032559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A075859.P9909484112520984257

/-! ## A075859.P2705808353978555104

`Δ[A267327(A128290(n+1))]+n`
-/

namespace A075859.P2705808353978555104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267327 (A128290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A075859.P2705808353978555104

/-! ## A075859.P11458664527757659721

`A000005(5^n)+10*Δ[n*A000042(n+1)]`
-/

namespace A075859.P11458664527757659721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 ^ n) + 10 * (f1 (n + 1) - f1 n)

end

end A075859.P11458664527757659721

/-!
# A075860: a(n) is the fixed point reached when the map x -> A008472(x) is iterated, starting from x = n, with the convention a(1)=0.

The programs for A075860, there is no canonical definition to state claims against.
-/

/-! ## A075860.P12099002795885836138

`1-A375535(n+1)+n`
-/

namespace A075860.P12099002795885836138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A375535 (n + 1) + (n : ℤ)

end

end A075860.P12099002795885836138

/-! ## A075860.P8094186421673832166

`∑{p}[∑{p}[∑{p}[A133900(n+1), #], #], #]`
-/

namespace A075860.P8094186421673832166
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133900 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A075860.P8094186421673832166

/-! ## A075860.P470987223116862720

`∑{p}[∑{p}[∑{p}[A225004(n+1), #], #], #]`
-/

namespace A075860.P470987223116862720
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225004 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A075860.P470987223116862720

/-! ## A075860.P4693301754321644208

`∑{p}[∑{p}[∑{p}[n+1, #], #], A095168(#)]`
-/

namespace A075860.P4693301754321644208
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A095168 p

end

end A075860.P4693301754321644208

/-! ## A075860.P18306363317090217641

`∑{p}[A088865(A088865(n+1)), #]`
-/

namespace A075860.P18306363317090217641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088865 (A088865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A075860.P18306363317090217641

/-!
# A075861: Least k such that (n-k) divides (n+k).

The programs for A075861, there is no canonical definition to state claims against.
-/

/-! ## A075861.P7357354350976767421

`2-A184727(n+3)+n`
-/

namespace A075861.P7357354350976767421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A184727 (n + 3) + (n : ℤ)

end

end A075861.P7357354350976767421

/-! ## A075861.P8784669554849971339

`A193829(A022821(n+2)+1)`
-/

namespace A075861.P8784669554849971339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193829 (A022821 (n + 2) + 1).toNat

end

end A075861.P8784669554849971339

/-! ## A075861.P9102341561826118194

`A193829(A006218(2*(n+2))-2*(n+2))`
-/

namespace A075861.P9102341561826118194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193829 (A006218 (2 * (n + 2)) - (2 * (n + 2) : ℤ)).toNat

end

end A075861.P9102341561826118194

/-! ## A075861.P76375088069591051

`n+2-A027751(A339217(n+2))`
-/

namespace A075861.P76375088069591051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A027751 (A339217 (n + 2)).toNat

end

end A075861.P76375088069591051

/-! ## A075861.P16202866953794977526

`n+2-A027751(A002541(2*(n+2)))`
-/

namespace A075861.P16202866953794977526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A027751 (A002541 (2 * (n + 2))).toNat

end

end A075861.P16202866953794977526

/-! ## A075861.P7130656648906919620

`A004736(A184727(n+3)+A000124(n+1))`
-/

namespace A075861.P7130656648906919620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A184727 (n + 3) + A000124 (n + 1)).toNat

end

end A075861.P7130656648906919620

/-!
# A075862: Numbers m such that the least k such that (m-k) divides (m+k) is prime.

The programs for A075862, the canonical program `A075862.P2855623362781383321` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075862 has offset 1).

The definition of A075862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075862.P2855623362781383321

`∪[A006512(n+1), A253106(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A075862

/-- `∪[A006512(n+1), A253106(n+1)]` -/
def P2855623362781383321.Spec : Prop :=
  ∀ n, (P2855623362781383321.a n : ℤ) = A075862 (n + 1)

theorem P2855623362781383321.correct : P2855623362781383321.Spec := by
  intro n
  simp only [A075862, Nat.add_sub_cancel]

end A075862

/-! ## A075862.P9782924362411987217

`eq[A007918(A075861(n+2)), A075861(n+2)]+2`
-/

namespace A075862.P9782924362411987217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A075861 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A075862.P9782924362411987217

namespace A075862

/-- `eq[A007918(A075861(n+2)), A075861(n+2)]+2` -/
def P9782924362411987217.Spec : Prop :=
  ∀ n, (P9782924362411987217.a n : ℤ) = A075862 (n + 1)

end A075862

/-!
# A075863: Numbers k such that phi(phi(k)) = sum of prime factors of k.

The programs for A075863, there is no canonical definition to state claims against.
-/

/-! ## A075863.P6397684177910128517

`eq[A000010(A000010(n+1)), A008472(n+1)]+1`
-/

namespace A075863.P6397684177910128517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A075863.P6397684177910128517

/-! ## A075863.P10980732226027744989

`eq[A008472(n+1), A010554(n+1)]+1`
-/

namespace A075863.P10980732226027744989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A075863.P10980732226027744989

/-!
# A075864: G.f. satisfies A(x) = 1 + Sum_{n>=0} (x*A(x))^(2^n).

The programs for A075864, there is no canonical definition to state claims against.
-/

/-! ## A075864.P16497945924243613707

`A135052(n)-A004526(A087432(n))`
-/

namespace A075864.P16497945924243613707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135052 n - A004526 (A087432 n).toNat

end

end A075864.P16497945924243613707

/-! ## A075864.P2529518925042856724

`A127757(A242347(n+1))`
-/

namespace A075864.P2529518925042856724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A242347 (n + 1)).toNat

end

end A075864.P2529518925042856724

/-! ## A075864.P9321472835994153282

`A004526(A309861(n)+A087432(n))`
-/

namespace A075864.P9321472835994153282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A309861 n + A087432 n).toNat

end

end A075864.P9321472835994153282

/-! ## A075864.P378954297429739511

`A049145(n+1)-A068106(A309861(n))`
-/

namespace A075864.P378954297429739511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049145 (n + 1) - A068106 (A309861 n).toNat

end

end A075864.P378954297429739511

/-! ## A075864.P8476241486205237358

`A154835(n+1)-A046094(A309861(n))`
-/

namespace A075864.P8476241486205237358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154835 (n + 1) - A046094 (A309861 n).toNat

end

end A075864.P8476241486205237358

/-!
# A075866: Number of permutations s of {1,2,...,n} such that |s(i)-i| for i=1,2,...,n are all distinct.

The programs for A075866, there is no canonical definition to state claims against.
-/

/-! ## A075866.P10733424235056440036

`A125183(∑[n]+floor(acot(n)))`
-/

namespace A075866.P10733424235056440036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125183 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A075866.P10733424235056440036

/-! ## A075866.P14664669547140539388

`A125183(gcd(C(n, n²), ∑[n]))`
-/

namespace A075866.P14664669547140539388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125183 (Nat.gcd (Nat.choose n (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A075866.P14664669547140539388

/-! ## A075866.P7133385381135596183

`A125183(or(C(n, n²), ∑[n]))`
-/

namespace A075866.P7133385381135596183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125183 (Nat.lor (Nat.choose n (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A075866.P7133385381135596183

/-! ## A075866.P9102723043449556339

`A125183(∑[n]+C(2, n+2))`
-/

namespace A075866.P9102723043449556339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125183 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 2))

end

end A075866.P9102723043449556339

/-! ## A075866.P7380650544198369480

`A125183(C(round(sqrt(n²+1))+1, 2))`
-/

namespace A075866.P7380650544198369480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125183 (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat 2)

end

end A075866.P7380650544198369480

/-!
# A075867: Numbers k such that tau(k) = sigma(sopf(k)).

The programs for A075867, there is no canonical definition to state claims against.
-/

/-! ## A075867.P6893334156114514858

`A325234(n+1)*A370221(A080954(n))`
-/

namespace A075867.P6893334156114514858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325234 (n + 1) * A370221 (A080954 n).toNat

end

end A075867.P6893334156114514858

/-! ## A075867.P18225763736208598144

`A317144(A148288(n))*A325234(n+1)`
-/

namespace A075867.P18225763736208598144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317144 (A148288 n).toNat * A325234 (n + 1)

end

end A075867.P18225763736208598144

/-!
# A075869: Numbers k such that 5*k^2 - 9 is a square.

The programs for A075869, the canonical program `A075869.P16680653665782209222` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075869 has offset 1).

The definition of A075869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075869.P16680653665782209222

`18*a(n-1)-a(n-2)` with `a(0)=3, a(1)=51`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075869

/-- `18*a(n-1)-a(n-2)` -/
def P16680653665782209222.Spec : Prop :=
  ∀ n, P16680653665782209222.a n = A075869 (n + 1)

theorem P16680653665782209222.correct : P16680653665782209222.Spec := by
  intro n
  simp only [A075869, Nat.add_sub_cancel]

end A075869

/-! ## A075869.P13879901458833236305

`ogf((3-3x)/(1-18x+x^2))`
-/

namespace A075869.P13879901458833236305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3] [1, -18, 1] n

end

end A075869.P13879901458833236305

namespace A075869

/-- `ogf((3-3x)/(1-18x+x^2))` -/
def P13879901458833236305.Spec : Prop :=
  ∀ n, P13879901458833236305.a n = A075869 (n + 1)

end A075869

/-! ## A075869.P4705891527126773310

`3*A007805(n)`
-/

namespace A075869.P4705891527126773310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007805 n

end

end A075869.P4705891527126773310

namespace A075869

/-- `3*A007805(n)` -/
def P4705891527126773310.Spec : Prop :=
  ∀ n, P4705891527126773310.a n = A075869 (n + 1)

end A075869

/-! ## A075869.P1851709420084896007

`A155179(Δ[n²])`
-/

namespace A075869.P1851709420084896007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155179 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075869.P1851709420084896007

namespace A075869

/-- `A155179(Δ[n²])` -/
def P1851709420084896007.Spec : Prop :=
  ∀ n, P1851709420084896007.a n = A075869 (n + 1)

end A075869

/-! ## A075869.P8970908943813129512

`Δ[3*A049660(n)]`
-/

namespace A075869.P8970908943813129512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075869.P8970908943813129512

namespace A075869

/-- `Δ[3*A049660(n)]` -/
def P8970908943813129512.Spec : Prop :=
  ∀ n, P8970908943813129512.a n = A075869 (n + 1)

end A075869

/-! ## A075869.P7659749104869338558

`3*A041031(2*n)`
-/

namespace A075869.P7659749104869338558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A041031 (2 * n)

end

end A075869.P7659749104869338558

namespace A075869

/-- `3*A041031(2*n)` -/
def P7659749104869338558.Spec : Prop :=
  ∀ n, P7659749104869338558.a n = A075869 (n + 1)

end A075869

/-! ## A075869.P13327240697695372087

`3*A041143(2*n)`
-/

namespace A075869.P13327240697695372087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A041143 (2 * n)

end

end A075869.P13327240697695372087

namespace A075869

/-- `3*A041143(2*n)` -/
def P13327240697695372087.Spec : Prop :=
  ∀ n, P13327240697695372087.a n = A075869 (n + 1)

end A075869

/-! ## A075869.P11618900085589021317

`3*A153315(2*n)`
-/

namespace A075869.P11618900085589021317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153315 (2 * n)

end

end A075869.P11618900085589021317

namespace A075869

/-- `3*A153315(2*n)` -/
def P11618900085589021317.Spec : Prop :=
  ∀ n, P11618900085589021317.a n = A075869 (n + 1)

end A075869

/-! ## A075869.P1336785892184334639

`3*A099511(3*n)`
-/

namespace A075869.P1336785892184334639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A099511 (3 * n)

end

end A075869.P1336785892184334639

namespace A075869

/-- `3*A099511(3*n)` -/
def P1336785892184334639.Spec : Prop :=
  ∀ n, P1336785892184334639.a n = A075869 (n + 1)

end A075869

/-! ## A075869.P16855556241814721650

`3/2*A134495(n)`
-/

namespace A075869.P16855556241814721650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A134495 n : ℚ)

end

end A075869.P16855556241814721650

namespace A075869

/-- `3/2*A134495(n)` -/
def P16855556241814721650.Spec : Prop :=
  ∀ n, P16855556241814721650.a n = (A075869 (n + 1) : ℚ)

end A075869

/-!
# A075870: Numbers k such that 2*k^2 - 4 is a square.

The programs for A075870, the canonical program `A075870.P348426227771511766` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075870 has offset 1).

The definition of A075870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075870.P348426227771511766

`6*a(n-1)-a(n-2)` with `a(0)=2, a(1)=10`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075870

/-- `6*a(n-1)-a(n-2)` -/
def P348426227771511766.Spec : Prop :=
  ∀ n, P348426227771511766.a n = A075870 (n + 1)

theorem P348426227771511766.correct : P348426227771511766.Spec := by
  intro n
  simp only [A075870, Nat.add_sub_cancel]

end A075870

/-! ## A075870.P8971640277288245618

`2*A001653(n+1)`
-/

namespace A075870.P8971640277288245618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001653 (n + 1)

end

end A075870.P8971640277288245618

namespace A075870

/-- `2*A001653(n+1)` -/
def P8971640277288245618.Spec : Prop :=
  ∀ n, P8971640277288245618.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P16326440425570050025

`2*A000129(2*(n+1)-1)`
-/

namespace A075870.P16326440425570050025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 (2 * (n + 1) - 1)

end

end A075870.P16326440425570050025

namespace A075870

/-- `2*A000129(2*(n+1)-1)` -/
def P16326440425570050025.Spec : Prop :=
  ∀ n, P16326440425570050025.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P6262891925386545225

`ogf((2-2x)/(1-6x+x^2))`
-/

namespace A075870.P6262891925386545225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2] [1, -6, 1] n

end

end A075870.P6262891925386545225

namespace A075870

/-- `ogf((2-2x)/(1-6x+x^2))` -/
def P6262891925386545225.Spec : Prop :=
  ∀ n, P6262891925386545225.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P17827734517347060653

`floor(a(n-1)/(3-sqrt(8)))` with `a(0)=2, a(1)=10`
-/

namespace A075870.P17827734517347060653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

end

end A075870.P17827734517347060653

namespace A075870

/-- `floor(a(n-1)/(3-sqrt(8)))` -/
def P17827734517347060653.Spec : Prop :=
  ∀ n, P17827734517347060653.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P12943620810371463156

`round(a(n-1)/(3-sqrt(8)))` with `a(0)=2, a(1)=10`
-/

namespace A075870.P12943620810371463156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

end

end A075870.P12943620810371463156

namespace A075870

/-- `round(a(n-1)/(3-sqrt(8)))` -/
def P12943620810371463156.Spec : Prop :=
  ∀ n, P12943620810371463156.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P1418419525598103467

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=2, a(1)=0`
-/

namespace A075870.P1418419525598103467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075870.P1418419525598103467

namespace A075870

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P1418419525598103467.Spec : Prop :=
  ∀ n, P1418419525598103467.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P16146346471395094641

`(1-1/sqrt(2))*(3-2*sqrt(2))^n+(1+1/sqrt(2))*(3+2*sqrt(2))^n`
-/

namespace A075870.P16146346471395094641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - 1 / Real.sqrt (2 : ℝ)) * (3 - 2 * Real.sqrt (2 : ℝ)) ^ n + (1 + 1 / Real.sqrt (2 : ℝ)) * (3 + 2 * Real.sqrt (2 : ℝ)) ^ n

end

end A075870.P16146346471395094641

namespace A075870

/-- `(1-1/sqrt(2))*(3-2*sqrt(2))^n+(1+1/sqrt(2))*(3+2*sqrt(2))^n` -/
def P16146346471395094641.Spec : Prop :=
  ∀ n, P16146346471395094641.a n = (A075870 (n + 1) : ℝ)

theorem P16146346471395094641.correct : P16146346471395094641.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A075870, Nat.add_sub_cancel, A075870.P16146346471395094641.a, A075870.P348426227771511766.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A075870, Nat.add_sub_cancel, A075870.P16146346471395094641.a, A075870.P348426227771511766.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A075870

/-! ## A075870.P11917623398032693653

`Δ[A001542(n)]`
-/

namespace A075870.P11917623398032693653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075870.P11917623398032693653

namespace A075870

/-- `Δ[A001542(n)]` -/
def P11917623398032693653.Spec : Prop :=
  ∀ n, P11917623398032693653.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P6208209583890181218

`Δ[A182189(n)]`
-/

namespace A075870.P6208209583890181218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075870.P6208209583890181218

namespace A075870

/-- `Δ[A182189(n)]` -/
def P6208209583890181218.Spec : Prop :=
  ∀ n, P6208209583890181218.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P17130484714034809798

`A249577(6*n)`
-/

namespace A075870.P17130484714034809798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249577 (6 * n)

end

end A075870.P17130484714034809798

namespace A075870

/-- `A249577(6*n)` -/
def P17130484714034809798.Spec : Prop :=
  ∀ n, P17130484714034809798.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P781135394277271562

`abs(Δ[A182188(n)])`
-/

namespace A075870.P781135394277271562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075870.P781135394277271562

namespace A075870

/-- `abs(Δ[A182188(n)])` -/
def P781135394277271562.Spec : Prop :=
  ∀ n, P781135394277271562.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P10509720049591490384

`A052542(Δ[n²])`
-/

namespace A075870.P10509720049591490384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075870.P10509720049591490384

namespace A075870

/-- `A052542(Δ[n²])` -/
def P10509720049591490384.Spec : Prop :=
  ∀ n, P10509720049591490384.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P12997011543781013836

`A143609(Δ[n²])`
-/

namespace A075870.P12997011543781013836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143609 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075870.P12997011543781013836

namespace A075870

/-- `A143609(Δ[n²])` -/
def P12997011543781013836.Spec : Prop :=
  ∀ n, P12997011543781013836.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P17036482303191475536

`Δ[A000129(2*n)]`
-/

namespace A075870.P17036482303191475536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075870.P17036482303191475536

namespace A075870

/-- `Δ[A000129(2*n)]` -/
def P17036482303191475536.Spec : Prop :=
  ∀ n, P17036482303191475536.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P6698269167863246614

`Δ[2*A001109(n)]`
-/

namespace A075870.P6698269167863246614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075870.P6698269167863246614

namespace A075870

/-- `Δ[2*A001109(n)]` -/
def P6698269167863246614.Spec : Prop :=
  ∀ n, P6698269167863246614.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P4159008073962731577

`Δ[A111954(2*n)]`
-/

namespace A075870.P4159008073962731577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075870.P4159008073962731577

namespace A075870

/-- `Δ[A111954(2*n)]` -/
def P4159008073962731577.Spec : Prop :=
  ∀ n, P4159008073962731577.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P2528412028895534640

`Δ[A174191(2*n)]`
-/

namespace A075870.P2528412028895534640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075870.P2528412028895534640

namespace A075870

/-- `Δ[A174191(2*n)]` -/
def P2528412028895534640.Spec : Prop :=
  ∀ n, P2528412028895534640.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P14850733606332098160

`Δ[A002965(4*n)]`
-/

namespace A075870.P14850733606332098160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075870.P14850733606332098160

namespace A075870

/-- `Δ[A002965(4*n)]` -/
def P14850733606332098160.Spec : Prop :=
  ∀ n, P14850733606332098160.a n = A075870 (n + 1)

end A075870

/-! ## A075870.P4289364484066690154

`Δ[A135153(4*n)]`
-/

namespace A075870.P4289364484066690154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075870.P4289364484066690154

namespace A075870

/-- `Δ[A135153(4*n)]` -/
def P4289364484066690154.Spec : Prop :=
  ∀ n, P4289364484066690154.a n = A075870 (n + 1)

end A075870

/-!
# A075871: Numbers k such that 13*k^2 + 1 is a square.

The programs for A075871, the canonical program `A075871.P14679226241769718750` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075871 has offset 1).

The definition of A075871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075871.P14679226241769718750

`((649+180*sqrt(13))^n-(649-180*sqrt(13))^n)/(2*sqrt(13))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075871

/-- `((649+180*sqrt(13))^n-(649-180*sqrt(13))^n)/(2*sqrt(13))` -/
def P14679226241769718750.Spec : Prop :=
  ∀ n, P14679226241769718750.a n = (A075871 (n + 1) : ℝ)

end A075871

/-!
# A075872: a(n) = binomial(prime(n),n)/prime(n) where prime(n) = n-th prime.

The programs for A075872, the canonical program `A075872.P5560417521258274242` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075872 has offset 1).

The definition of A075872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075872.P5560417521258274242

`A060604(n+1)/A000040(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075872

/-- `A060604(n+1)/A000040(n+1)` -/
def P5560417521258274242.Spec : Prop :=
  ∀ n, P5560417521258274242.a n = (A075872 (n + 1) : ℚ)

end A075872

/-! ## A075872.P12572359236659284755

`C(A000040(n+1), n+1)/A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075872.P12572359236659284755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000040 (n + 1)).toNat (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A075872.P12572359236659284755

namespace A075872

/-- `C(A000040(n+1), n+1)/A000040(n+1)` -/
def P12572359236659284755.Spec : Prop :=
  ∀ n, P12572359236659284755.a n = (A075872 (n + 1) : ℚ)

end A075872

/-! ## A075872.P14060568500666841352

`A104861(n+1)/(n+1)`
-/

namespace A075872.P14060568500666841352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104861 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075872.P14060568500666841352

namespace A075872

/-- `A104861(n+1)/(n+1)` -/
def P14060568500666841352.Spec : Prop :=
  ∀ n, P14060568500666841352.a n = (A075872 (n + 1) : ℚ)

end A075872

/-! ## A075872.P16209944779244021512

`A037031(A006093(n+1))/(n+1)`
-/

namespace A075872.P16209944779244021512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037031 (A006093 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A075872.P16209944779244021512

namespace A075872

/-- `A037031(A006093(n+1))/(n+1)` -/
def P16209944779244021512.Spec : Prop :=
  ∀ n, P16209944779244021512.a n = (A075872 (n + 1) : ℚ)

end A075872

/-! ## A075872.P151009552992186272

`A037031(A008578(n+2))/A008578(n+2)`
-/

namespace A075872.P151009552992186272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037031 (A008578 (n + 2)).toNat : ℚ) / (A008578 (n + 2) : ℚ)

end

end A075872.P151009552992186272

namespace A075872

/-- `A037031(A008578(n+2))/A008578(n+2)` -/
def P151009552992186272.Spec : Prop :=
  ∀ n, P151009552992186272.a n = (A075872 (n + 1) : ℚ)

end A075872

/-! ## A075872.P8878003635134832873

`C(record[A000010(n+1)], n)/(n+1)`
-/

namespace A075872.P8878003635134832873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat n : ℚ) / (n + 1 : ℚ)

end

end A075872.P8878003635134832873

namespace A075872

/-- `C(record[A000010(n+1)], n)/(n+1)` -/
def P8878003635134832873.Spec : Prop :=
  ∀ n, P8878003635134832873.a n = (A075872 (n + 1) : ℚ)

end A075872

/-! ## A075872.P4528103166691094116

`C(eq[1, A001222(n+1)], n)/(n+1)`
-/

namespace A075872.P4528103166691094116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) n : ℚ) / (n + 1 : ℚ)

end

end A075872.P4528103166691094116

namespace A075872

/-- `C(eq[1, A001222(n+1)], n)/(n+1)` -/
def P4528103166691094116.Spec : Prop :=
  ∀ n, P4528103166691094116.a n = (A075872 (n + 1) : ℚ)

end A075872

/-! ## A075872.P2915170628848955940

`C(eq[2, A000005(n+1)], n)/(n+1)`
-/

namespace A075872.P2915170628848955940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) n : ℚ) / (n + 1 : ℚ)

end

end A075872.P2915170628848955940

namespace A075872

/-- `C(eq[2, A000005(n+1)], n)/(n+1)` -/
def P2915170628848955940.Spec : Prop :=
  ∀ n, P2915170628848955940.a n = (A075872 (n + 1) : ℚ)

end A075872

/-! ## A075872.P15635264698369893194

`C(eq[n+2, A000203(n+1)], n)/(n+1)`
-/

namespace A075872.P15635264698369893194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) n : ℚ) / (n + 1 : ℚ)

end

end A075872.P15635264698369893194

namespace A075872

/-- `C(eq[n+2, A000203(n+1)], n)/(n+1)` -/
def P15635264698369893194.Spec : Prop :=
  ∀ n, P15635264698369893194.a n = (A075872 (n + 1) : ℚ)

end A075872

/-!
# A075873: 40*n^2 + 9 is a square.

The programs for A075873, there is no canonical definition to state claims against.
-/

/-! ## A075873.P8122488803846091161

`A075836(n+1)/2`
-/

namespace A075873.P8122488803846091161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075836 (n + 1) : ℚ) / 2

end

end A075873.P8122488803846091161

/-! ## A075873.P12494849410282347955

`record[A075836(A193592(n))/2]`
-/

namespace A075873.P12494849410282347955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075836 (A193592 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075873.P12494849410282347955

/-! ## A075873.P856278318019697230

`record[A075836(A075825(n))/2]`
-/

namespace A075873.P856278318019697230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075836 (A075825 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075873.P856278318019697230

/-! ## A075873.P3332708831153613695

`(A075836(n+1)*A254332(n+1))%A221874(n+1)`
-/

namespace A075873.P3332708831153613695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075836 (n + 1) * A254332 (n + 1)) (A221874 (n + 1))

end

end A075873.P3332708831153613695

/-! ## A075873.P8988882486648628317

`sqrt(A023114(n+1))/2`
-/

namespace A075873.P8988882486648628317
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A023114 (n + 1) : ℝ) / 2

end

end A075873.P8988882486648628317

/-!
# A075874: Pi = Sum_{n >= 1} a(n)/n!, with largest possible a(n).

The programs for A075874, there is no canonical definition to state claims against.
-/

/-! ## A075874.P11967961716819957773

`A007514((n+1)%(2*n+1))`
-/

namespace A075874.P11967961716819957773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007514 ((n + 1) % (2 * n + 1))

end

end A075874.P11967961716819957773

/-! ## A075874.P9625123559786742416

`A007514(C(n+1, C(2, C(2, n))))`
-/

namespace A075874.P9625123559786742416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007514 (Nat.choose (n + 1) (Nat.choose 2 (Nat.choose 2 n)))

end

end A075874.P9625123559786742416

/-! ## A075874.P18339986393293552590

`A007514(n+1-floor(1/(n+1)))`
-/

namespace A075874.P18339986393293552590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007514 ((n + 1 : ℤ) - ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A075874.P18339986393293552590

/-! ## A075874.P8443607515975030810

`A007514(n+1)+3-3%(n+3)`
-/

namespace A075874.P8443607515975030810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007514 (n + 1) + (3 - ((3 % (n + 3) : ℕ) : ℤ))

end

end A075874.P8443607515975030810

/-! ## A075874.P10803727014996779063

`A007514(n+1)+A007514(n²%(n+1))`
-/

namespace A075874.P10803727014996779063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007514 (n + 1) + A007514 (n ^ 2 % (n + 1))

end

end A075874.P10803727014996779063

/-!
# A075875: Triangular numbers that are 3-almost primes.

The programs for A075875, the canonical program `A075875.P16800868637644229346` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075875 has offset 1).

The definition of A075875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075875.P7267795785007664708

`A000217(A108815(n+1))`
-/

namespace A075875.P7267795785007664708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A108815 (n + 1)).toNat

end

end A075875.P7267795785007664708

namespace A075875

/-- `A000217(A108815(n+1))` -/
def P7267795785007664708.Spec : Prop :=
  ∀ n, P7267795785007664708.a n = A075875 (n + 1)

end A075875

/-! ## A075875.P16800868637644229346

`A000217(eq[3, A069904(n+1)]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075875

/-- `A000217(eq[3, A069904(n+1)]+1)` -/
def P16800868637644229346.Spec : Prop :=
  ∀ n, P16800868637644229346.a n = A075875 (n + 1)

theorem P16800868637644229346.correct : P16800868637644229346.Spec := by
  intro n
  simp only [A075875, Nat.add_sub_cancel]

end A075875

/-! ## A075875.P17090334008985584493

`A161680(A108815(n+1)+1)`
-/

namespace A075875.P17090334008985584493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A108815 (n + 1) + 1).toNat

end

end A075875.P17090334008985584493

namespace A075875

/-- `A161680(A108815(n+1)+1)` -/
def P17090334008985584493.Spec : Prop :=
  ∀ n, P17090334008985584493.a n = A075875 (n + 1)

end A075875

/-! ## A075875.P3083829421687926990

`A253145(eq[3, A069904(n+1)])`
-/

namespace A075875.P3083829421687926990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075875.P3083829421687926990

namespace A075875

/-- `A253145(eq[3, A069904(n+1)])` -/
def P3083829421687926990.Spec : Prop :=
  ∀ n, P3083829421687926990.a n = A075875 (n + 1)

end A075875

/-! ## A075875.P14294118214604655040

`A000096(A108815(n+1)-1)+1`
-/

namespace A075875.P14294118214604655040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A108815 (n + 1) - 1).toNat + 1

end

end A075875.P14294118214604655040

namespace A075875

/-- `A000096(A108815(n+1)-1)+1` -/
def P14294118214604655040.Spec : Prop :=
  ∀ n, P14294118214604655040.a n = A075875 (n + 1)

end A075875

/-! ## A075875.P13453463719729001533

`A167614(A108815(n+1)-1)-3`
-/

namespace A075875.P13453463719729001533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (A108815 (n + 1) - 1).toNat - 3

end

end A075875.P13453463719729001533

namespace A075875

/-- `A167614(A108815(n+1)-1)-3` -/
def P13453463719729001533.Spec : Prop :=
  ∀ n, P13453463719729001533.a n = A075875 (n + 1)

end A075875

/-! ## A075875.P99266278786860660

`A000096(eq[3, A069904(n+1)])+1`
-/

namespace A075875.P99266278786860660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A075875.P99266278786860660

namespace A075875

/-- `A000096(eq[3, A069904(n+1)])+1` -/
def P99266278786860660.Spec : Prop :=
  ∀ n, P99266278786860660.a n = A075875 (n + 1)

theorem P99266278786860660.correct : P99266278786860660.Spec := by
  intro n
  simp only [A075875, Nat.add_sub_cancel, A075875.P99266278786860660.f1, A075875.P99266278786860660.f2, A075875.P99266278786860660.a, A075875.P16800868637644229346.f1, A075875.P16800868637644229346.f2, A075875.P16800868637644229346.a, A000096, A000096.P6925830517264718723.a, A000217, A000217.P10269402890581615239.a, A069904, A069904.P2434558843873151070.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A075875

/-! ## A075875.P12378181708582668328

`∪[A128896(n+1), A292989(n+1)]`
-/

namespace A075875.P12378181708582668328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075875.P12378181708582668328

namespace A075875

/-- `∪[A128896(n+1), A292989(n+1)]` -/
def P12378181708582668328.Spec : Prop :=
  ∀ n, (P12378181708582668328.a n : ℤ) = A075875 (n + 1)

end A075875

/-! ## A075875.P14030222451817974232

`A000217(eq[3, A001222(∑[n+1])]+1)`
-/

namespace A075875.P14030222451817974232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075875.P14030222451817974232

namespace A075875

/-- `A000217(eq[3, A001222(∑[n+1])]+1)` -/
def P14030222451817974232.Spec : Prop :=
  ∀ n, P14030222451817974232.a n = A075875 (n + 1)

end A075875

/-! ## A075875.P2415052321509669459

`filter[A144581(n+1), A340369(#)]`
-/

namespace A075875.P2415052321509669459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A075875.P2415052321509669459

namespace A075875

/-- `filter[A144581(n+1), A340369(#)]` -/
def P2415052321509669459.Spec : Prop :=
  ∀ n, P2415052321509669459.a n = A075875 (n + 1)

end A075875

/-!
# A075876: Values of m for which A075825(m) = 1.

The programs for A075876, there is no canonical definition to state claims against.
-/

/-! ## A075876.P14290959121908853707

`ogf((2x-6x^2+8x^4)/(1-5x+4x^2))`
-/

namespace A075876.P14290959121908853707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -6, 0, 8] [1, -5, 4] n

end

end A075876.P14290959121908853707

/-! ## A075876.P14014744651388807810

`4*(a(n-1)+1)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=12`
-/

namespace A075876.P14014744651388807810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 12] fun n a =>
  4 * (a (n - 1) + 1)

end

end A075876.P14014744651388807810

/-! ## A075876.P17933510668812035750

`record[lcm(4, a(n-1)+1)]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=2`
-/

namespace A075876.P17933510668812035750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 2] fun n f1 =>
  Nat.lcm 4 (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075876.P17933510668812035750

/-! ## A075876.P276603565654161906

`record[xor(4, 4*a(n-1))]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=4, a(4)=0, a(5)=2`
-/

namespace A075876.P276603565654161906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 4, 0, 2] fun n f1 =>
  Nat.xor 4 (4 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075876.P276603565654161906

/-! ## A075876.P9974478874936691529

`a(n-1)/(1/2)²+4` with `a(0)=0, a(1)=2, a(2)=4, a(3)=12`
-/

namespace A075876.P9974478874936691529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 4, 12] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 + 4

end

end A075876.P9974478874936691529

/-!
# A075878: Sum of coefficients of (x1)^(2i(1))*(x2)^(2i(2))*(x3)^(2i(3))*(x4)^(2i(4)) for {(i1),(i2),(i3),(i4)}=0,1,2,... : sum(i)=2n in the expansion of (x1+x2+x3+x4)^(2n) where n >= 1.

The programs for A075878, there is no canonical definition to state claims against.
-/

/-! ## A075878.P4084730747939722778

`4*C(4^n+1, 2)`
-/

namespace A075878.P4084730747939722778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (4 ^ n + 1) 2

end

end A075878.P4084730747939722778

/-! ## A075878.P3121729693732534111

`2*(4^n+16^n)`
-/

namespace A075878.P3121729693732534111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (4 ^ n + 16 ^ n)

end

end A075878.P3121729693732534111

/-! ## A075878.P9539146809015204031

`16*a(n-1)-6*4^n` with `a(0)=4`
-/

namespace A075878.P9539146809015204031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  16 * a (n - 1) - (6 * 4 ^ n : ℤ)

end

end A075878.P9539146809015204031

/-! ## A075878.P11358780853385205

`(record[or(1, 2^xor(1, n))]²-1)/2`
-/

namespace A075878.P11358780853385205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ Nat.xor 1 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 : ℤ) - 1 : ℚ) / 2

end

end A075878.P11358780853385205

/-! ## A075878.P10000709160358310669

`A092812(n+1)`
-/

namespace A075878.P10000709160358310669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092812 (n + 1)

end

end A075878.P10000709160358310669

/-! ## A075878.P4114540791530813523

`A028403(Δ[n²])`
-/

namespace A075878.P4114540791530813523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028403 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075878.P4114540791530813523

/-! ## A075878.P6487422428721648756

`A032121(Δ[n²])`
-/

namespace A075878.P6487422428721648756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075878.P6487422428721648756

/-! ## A075878.P1531174647467290595

`A281482(2*n)+1`
-/

namespace A075878.P1531174647467290595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281482 (2 * n) + 1

end

end A075878.P1531174647467290595

/-! ## A075878.P7111560411821327965

`A085601(2*n)-1`
-/

namespace A075878.P7111560411821327965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085601 (2 * n) - 1

end

end A075878.P7111560411821327965

/-!
# A075879: The (10^n)-th odd-digit number.

The programs for A075879, there is no canonical definition to state claims against.
-/

/-! ## A075879.P2492542017105647734

`A014261(10^n)`
-/

namespace A075879.P2492542017105647734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (10 ^ n)

end

end A075879.P2492542017105647734

/-!
# A075880: Position of the circles around (0,0) that contain record numbers of lattice points in the list of all circles around (0,0) that pass through lattice points, ordered by increasing radius.

The programs for A075880, there is no canonical definition to state claims against.
-/

/-! ## A075880.P15655148330048284633

`A003462(n)-A322387(A194595(n))`
-/

namespace A075880.P15655148330048284633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - A322387 (A194595 n).toNat

end

end A075880.P15655148330048284633

/-! ## A075880.P18410094171245329444

`A007051(n)-A195825(A240460(n+1))`
-/

namespace A075880.P18410094171245329444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A195825 (A240460 (n + 1)).toNat

end

end A075880.P18410094171245329444

/-!
# A075881: a(n) = the sum of the prime factors of Sum_{i=1..n} prime(i).

The programs for A075881, the canonical program `A075881.P5081293527233532591` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075881 has offset 1).

The definition of A075881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075881.P5081293527233532591

`A008472(A007504(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075881

/-- `A008472(A007504(n+1))` -/
def P5081293527233532591.Spec : Prop :=
  ∀ n, P5081293527233532591.a n = A075881 (n + 1)

theorem P5081293527233532591.correct : P5081293527233532591.Spec := by
  intro n
  simp only [A075881, Nat.add_sub_cancel]

end A075881

/-! ## A075881.P2670765387011975184

`∑{p}[∑[A000040(n+1)], #]`
-/

namespace A075881.P2670765387011975184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A075881.P2670765387011975184

namespace A075881

/-- `∑{p}[∑[A000040(n+1)], #]` -/
def P2670765387011975184.Spec : Prop :=
  ∀ n, (P2670765387011975184.a n : ℤ) = A075881 (n + 1)

end A075881

/-! ## A075881.P4653138891543886257

`∑{p}[∑[A008578(n+2)], #]`
-/

namespace A075881.P4653138891543886257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A075881.P4653138891543886257

namespace A075881

/-- `∑{p}[∑[A008578(n+2)], #]` -/
def P4653138891543886257.Spec : Prop :=
  ∀ n, (P4653138891543886257.a n : ℤ) = A075881 (n + 1)

end A075881

/-! ## A075881.P10150058582282878823

`∑{p}[A160793(2*(n+1)), #]`
-/

namespace A075881.P10150058582282878823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A075881.P10150058582282878823

namespace A075881

/-- `∑{p}[A160793(2*(n+1)), #]` -/
def P10150058582282878823.Spec : Prop :=
  ∀ n, (P10150058582282878823.a n : ℤ) = A075881 (n + 1)

end A075881

/-! ## A075881.P6168394685473215931

`∑{p}[∑[record[A051664(n+1)]], #]`
-/

namespace A075881.P6168394685473215931
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A075881.P6168394685473215931

namespace A075881

/-- `∑{p}[∑[record[A051664(n+1)]], #]` -/
def P6168394685473215931.Spec : Prop :=
  ∀ n, (P6168394685473215931.a n : ℤ) = A075881 (n + 1)

end A075881

/-! ## A075881.P13226150430172286749

`∑{p}[∑[record[A093074(n+1)]], #]`
-/

namespace A075881.P13226150430172286749
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A075881.P13226150430172286749

namespace A075881

/-- `∑{p}[∑[record[A093074(n+1)]], #]` -/
def P13226150430172286749.Spec : Prop :=
  ∀ n, (P13226150430172286749.a n : ℤ) = A075881 (n + 1)

end A075881

/-! ## A075881.P15480907896763774141

`∑{p}[∑[record[A006530(n+2)]], #]`
-/

namespace A075881.P15480907896763774141
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A075881.P15480907896763774141

namespace A075881

/-- `∑{p}[∑[record[A006530(n+2)]], #]` -/
def P15480907896763774141.Spec : Prop :=
  ∀ n, (P15480907896763774141.a n : ℤ) = A075881 (n + 1)

end A075881

/-! ## A075881.P11669901874466488869

`∑{p}[∑[record[A014963(n+2)]], #]`
-/

namespace A075881.P11669901874466488869
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A075881.P11669901874466488869

namespace A075881

/-- `∑{p}[∑[record[A014963(n+2)]], #]` -/
def P11669901874466488869.Spec : Prop :=
  ∀ n, (P11669901874466488869.a n : ℤ) = A075881 (n + 1)

end A075881

/-! ## A075881.P712920080020702018

`∑{p}[∑[record[A020639(n+2)]], #]`
-/

namespace A075881.P712920080020702018
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A075881.P712920080020702018

namespace A075881

/-- `∑{p}[∑[record[A020639(n+2)]], #]` -/
def P712920080020702018.Spec : Prop :=
  ∀ n, (P712920080020702018.a n : ℤ) = A075881 (n + 1)

end A075881

/-! ## A075881.P6357745416460548862

`∑{p}[∑[comp[A018252(n+1)-1]+1], #]`
-/

namespace A075881.P6357745416460548862
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A075881.P6357745416460548862

namespace A075881

/-- `∑{p}[∑[comp[A018252(n+1)-1]+1], #]` -/
def P6357745416460548862.Spec : Prop :=
  ∀ n, (P6357745416460548862.a n : ℤ) = A075881 (n + 1)

end A075881

/-! ## A075881.P14778411453533725332

`∑{p}[∑[eq[n+2, A000203(n+1)]+1], #]`
-/

namespace A075881.P14778411453533725332
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A075881.P14778411453533725332

namespace A075881

/-- `∑{p}[∑[eq[n+2, A000203(n+1)]+1], #]` -/
def P14778411453533725332.Spec : Prop :=
  ∀ n, (P14778411453533725332.a n : ℤ) = A075881 (n + 1)

end A075881

/-! ## A075881.P2348071508359678221

`A008472(∑[A000040(n+1)])`
-/

namespace A075881.P2348071508359678221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075881.P2348071508359678221

namespace A075881

/-- `A008472(∑[A000040(n+1)])` -/
def P2348071508359678221.Spec : Prop :=
  ∀ n, P2348071508359678221.a n = A075881 (n + 1)

end A075881

/-! ## A075881.P8313123834497932829

`A008472(∑[A008578(n+2)])`
-/

namespace A075881.P8313123834497932829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075881.P8313123834497932829

namespace A075881

/-- `A008472(∑[A008578(n+2)])` -/
def P8313123834497932829.Spec : Prop :=
  ∀ n, P8313123834497932829.a n = A075881 (n + 1)

end A075881

/-! ## A075881.P14205252212070781962

`A008472(A014284(n+2)-1)`
-/

namespace A075881.P14205252212070781962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A014284 (n + 2) - 1).toNat

end

end A075881.P14205252212070781962

namespace A075881

/-- `A008472(A014284(n+2)-1)` -/
def P14205252212070781962.Spec : Prop :=
  ∀ n, P14205252212070781962.a n = A075881 (n + 1)

theorem P14205252212070781962.correct : P14205252212070781962.Spec := by
  intro n
  simp only [A075881, Nat.add_sub_cancel, A075881.P14205252212070781962.a, A075881.P5081293527233532591.a, A007504, A007504.P14310834286015847203.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075881

/-! ## A075881.P11675782915559721221

`A008472(A036439(n+2)-2)`
-/

namespace A075881.P11675782915559721221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A036439 (n + 2) - 2).toNat

end

end A075881.P11675782915559721221

namespace A075881

/-- `A008472(A036439(n+2)-2)` -/
def P11675782915559721221.Spec : Prop :=
  ∀ n, P11675782915559721221.a n = A075881 (n + 1)

end A075881

/-! ## A075881.P14644144557295368305

`A008472(A160793(2*(n+1)))`
-/

namespace A075881.P14644144557295368305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A160793 (2 * (n + 1))).toNat

end

end A075881.P14644144557295368305

namespace A075881

/-- `A008472(A160793(2*(n+1)))` -/
def P14644144557295368305.Spec : Prop :=
  ∀ n, P14644144557295368305.a n = A075881 (n + 1)

end A075881

/-! ## A075881.P13635860568846458207

`A008472(∑[record[A008472(n+2)]])`
-/

namespace A075881.P13635860568846458207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075881.P13635860568846458207

namespace A075881

/-- `A008472(∑[record[A008472(n+2)]])` -/
def P13635860568846458207.Spec : Prop :=
  ∀ n, P13635860568846458207.a n = A075881 (n + 1)

end A075881

/-! ## A075881.P2259631333771406033

`A008472(A101301(n+1)+1+n)`
-/

namespace A075881.P2259631333771406033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A101301 (n + 1) + 1 + (n : ℤ)).toNat

end

end A075881.P2259631333771406033

namespace A075881

/-- `A008472(A101301(n+1)+1+n)` -/
def P2259631333771406033.Spec : Prop :=
  ∀ n, P2259631333771406033.a n = A075881 (n + 1)

theorem P2259631333771406033.correct : P2259631333771406033.Spec := by
  intro n
  simp only [A075881, Nat.add_sub_cancel, A075881.P2259631333771406033.a, A075881.P5081293527233532591.a, A007504, A007504.P14310834286015847203.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A101301, A101301.P12618163721935666644.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075881

/-! ## A075881.P5994525838968310641

`A008472(A060939(n+1)-(n+1))`
-/

namespace A075881.P5994525838968310641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A060939 (n + 1) - (n + 1 : ℤ)).toNat

end

end A075881.P5994525838968310641

namespace A075881

/-- `A008472(A060939(n+1)-(n+1))` -/
def P5994525838968310641.Spec : Prop :=
  ∀ n, P5994525838968310641.a n = A075881 (n + 1)

theorem P5994525838968310641.correct : P5994525838968310641.Spec := by
  intro n
  simp only [A075881, Nat.add_sub_cancel, A075881.P5994525838968310641.a, A075881.P5081293527233532591.a, A007504, A007504.P14310834286015847203.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A060939, A060939.P1241768612471461444.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075881

/-!
# A075882: a(n) = phi(Sum_{i=1..n} prime(i)).

The programs for A075882, the canonical program `A075882.P17629495467896949930` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075882 has offset 1).

The definition of A075882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075882.P17629495467896949930

`A000010(A007504(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075882

/-- `A000010(A007504(n+1))` -/
def P17629495467896949930.Spec : Prop :=
  ∀ n, P17629495467896949930.a n = A075882 (n + 1)

theorem P17629495467896949930.correct : P17629495467896949930.Spec := by
  intro n
  simp only [A075882, Nat.add_sub_cancel]

end A075882

/-! ## A075882.P11919184134018696670

`A000010(∑[p?[comp[n²]]])`
-/

namespace A075882.P11919184134018696670
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075882.P11919184134018696670

namespace A075882

/-- `A000010(∑[p?[comp[n²]]])` -/
def P11919184134018696670.Spec : Prop :=
  ∀ n, P11919184134018696670.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P5666725492503868813

`A000010(∑[record[∑{p}[n+2, #]]])`
-/

namespace A075882.P5666725492503868813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075882.P5666725492503868813

namespace A075882

/-- `A000010(∑[record[∑{p}[n+2, #]]])` -/
def P5666725492503868813.Spec : Prop :=
  ∀ n, P5666725492503868813.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P6960432543748684298

`A000010(∑[3*p?[round(8*n/7)]]/3)`
-/

namespace A075882.P6960432543748684298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3)).toNat

end

end A075882.P6960432543748684298

namespace A075882

/-- `A000010(∑[3*p?[round(8*n/7)]]/3)` -/
def P6960432543748684298.Spec : Prop :=
  ∀ n, P6960432543748684298.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P5809263853250232715

`A000010(∑[p?[xor(1, n)+1]%(11*n+7)])`
-/

namespace A075882.P5809263853250232715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) % (11 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075882.P5809263853250232715

namespace A075882

/-- `A000010(∑[p?[xor(1, n)+1]%(11*n+7)])` -/
def P5809263853250232715.Spec : Prop :=
  ∀ n, P5809263853250232715.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P9255921681069581754

`A000010(∑[record[A051698(n)]])`
-/

namespace A075882.P9255921681069581754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075882.P9255921681069581754

namespace A075882

/-- `A000010(∑[record[A051698(n)]])` -/
def P9255921681069581754.Spec : Prop :=
  ∀ n, P9255921681069581754.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P6207384983859607026

`A000010(∑[comp[A277494(n)]])`
-/

namespace A075882.P6207384983859607026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277494 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075882.P6207384983859607026

namespace A075882

/-- `A000010(∑[comp[A277494(n)]])` -/
def P6207384983859607026.Spec : Prop :=
  ∀ n, P6207384983859607026.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P2052206513174486155

`A000010(∑[A000040(n+1)])`
-/

namespace A075882.P2052206513174486155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075882.P2052206513174486155

namespace A075882

/-- `A000010(∑[A000040(n+1)])` -/
def P2052206513174486155.Spec : Prop :=
  ∀ n, P2052206513174486155.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P9774170175215629526

`A000010(∑[A008578(n+2)])`
-/

namespace A075882.P9774170175215629526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075882.P9774170175215629526

namespace A075882

/-- `A000010(∑[A008578(n+2)])` -/
def P9774170175215629526.Spec : Prop :=
  ∀ n, P9774170175215629526.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P2402651301421158888

`A000010(∑[A182986(n+2)])`
-/

namespace A075882.P2402651301421158888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075882.P2402651301421158888

namespace A075882

/-- `A000010(∑[A182986(n+2)])` -/
def P2402651301421158888.Spec : Prop :=
  ∀ n, P2402651301421158888.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P15399624918556497295

`A000010(∑[A006093(n+1)+1])`
-/

namespace A075882.P15399624918556497295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075882.P15399624918556497295

namespace A075882

/-- `A000010(∑[A006093(n+1)+1])` -/
def P15399624918556497295.Spec : Prop :=
  ∀ n, P15399624918556497295.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P10997462262848312054

`A000010(∑[A040976(n+1)+2])`
-/

namespace A075882.P10997462262848312054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075882.P10997462262848312054

namespace A075882

/-- `A000010(∑[A040976(n+1)+2])` -/
def P10997462262848312054.Spec : Prop :=
  ∀ n, P10997462262848312054.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P11199986592855663799

`A000010(∑[A067747(2*n+1)])`
-/

namespace A075882.P11199986592855663799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075882.P11199986592855663799

namespace A075882

/-- `A000010(∑[A067747(2*n+1)])` -/
def P11199986592855663799.Spec : Prop :=
  ∀ n, P11199986592855663799.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P5167816861331603608

`A000010(∑[A082500(2*(n+1))])`
-/

namespace A075882.P5167816861331603608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075882.P5167816861331603608

namespace A075882

/-- `A000010(∑[A082500(2*(n+1))])` -/
def P5167816861331603608.Spec : Prop :=
  ∀ n, P5167816861331603608.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P16612385721518140266

`A000010(∑[A129767(2*n+1)])`
-/

namespace A075882.P16612385721518140266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075882.P16612385721518140266

namespace A075882

/-- `A000010(∑[A129767(2*n+1)])` -/
def P16612385721518140266.Spec : Prop :=
  ∀ n, P16612385721518140266.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P14638866754227457760

`A000010(∑[A134735(2*n+1)])`
-/

namespace A075882.P14638866754227457760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075882.P14638866754227457760

namespace A075882

/-- `A000010(∑[A134735(2*n+1)])` -/
def P14638866754227457760.Spec : Prop :=
  ∀ n, P14638866754227457760.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P8975532480968138939

`A000010(∑[A100484(n+1)/2])`
-/

namespace A075882.P8975532480968138939
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A075882.P8975532480968138939

namespace A075882

/-- `A000010(∑[A100484(n+1)/2])` -/
def P8975532480968138939.Spec : Prop :=
  ∀ n, P8975532480968138939.a n = A075882 (n + 1)

end A075882

/-! ## A075882.P6771668259710425216

`A000010(A101301(n+1)+n+1)`
-/

namespace A075882.P6771668259710425216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A101301 (n + 1) + (n + 1 : ℤ)).toNat

end

end A075882.P6771668259710425216

namespace A075882

/-- `A000010(A101301(n+1)+n+1)` -/
def P6771668259710425216.Spec : Prop :=
  ∀ n, P6771668259710425216.a n = A075882 (n + 1)

theorem P6771668259710425216.correct : P6771668259710425216.Spec := by
  intro n
  simp only [A075882, Nat.add_sub_cancel, A075882.P6771668259710425216.a, A075882.P17629495467896949930.a, A000010, A000010.P4673923239450215316.a, A007504, A007504.P14310834286015847203.a, A101301, A101301.P12618163721935666644.a, A003557, A003557.P6364735403900941810.a, A014284, A014284.P18183547548072881472.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075882

/-! ## A075882.P13407008189894954714

`A000010(A143215(n+1)/A000040(n+1))`
-/

namespace A075882.P13407008189894954714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A143215 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A075882.P13407008189894954714

namespace A075882

/-- `A000010(A143215(n+1)/A000040(n+1))` -/
def P13407008189894954714.Spec : Prop :=
  ∀ n, P13407008189894954714.a n = A075882 (n + 1)

end A075882

/-!
# A075883: a(1) = a(2) = 1; a(n) = a(n-1) + a(n-2)! for n > 2.

The programs for A075883, the canonical program `A075883.P14429194949120728537` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075883 has offset 1).

The definition of A075883 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)!` (program `A075883.P14429194949120728537`, by `A075883.P14429194949120728537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A075883.P14429194949120728537

`a(n-1)+a(n-2)!` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075883

/-- `a(n-1)+a(n-2)!` -/
def P14429194949120728537.Spec : Prop :=
  ∀ n, (P14429194949120728537.a n : ℤ) = A075883 (n + 1)

theorem P14429194949120728537.correct : P14429194949120728537.Spec := by
  intro n
  simp only [A075883, Nat.add_sub_cancel]

end A075883

/-! ## A075883.P17097685581144091039

`a(n-2)!-floor(-a(n-1))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A075883.P17097685581144091039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.factorial (a (n - 2)).toNat : ℤ) - (-a (n - 1))

end

end A075883.P17097685581144091039

namespace A075883

/-- `a(n-2)!-floor(-a(n-1))` -/
def P17097685581144091039.Spec : Prop :=
  ∀ n, P17097685581144091039.a n = A075883 (n + 1)

end A075883

/-! ## A075883.P379272890555320802

`a(n-2)!-ceil(-a(n-1))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A075883.P379272890555320802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.factorial (a (n - 2)).toNat : ℤ) - (-a (n - 1))

end

end A075883.P379272890555320802

namespace A075883

/-- `a(n-2)!-ceil(-a(n-1))` -/
def P379272890555320802.Spec : Prop :=
  ∀ n, P379272890555320802.a n = A075883 (n + 1)

end A075883

/-!
# A075884: Image of n at the second step of the 3x+1 algorithm.

The programs for A075884, the canonical program `A075884.P5545103686581921278` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075884 has offset 1).

The definition of A075884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075884.P5545103686581921278

`2*a(n-4)-a(n-8)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=1, a(4)=8, a(5)=10, a(6)=11, a(7)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075884

/-- `2*a(n-4)-a(n-8)` -/
def P5545103686581921278.Spec : Prop :=
  ∀ n, P5545103686581921278.a n = A075884 (n + 1)

theorem P5545103686581921278.correct : P5545103686581921278.Spec := by
  intro n
  simp only [A075884, Nat.add_sub_cancel]

end A075884

/-! ## A075884.P7848490129569195678

`A214394(∑[∑[n+1]%2+1])`
-/

namespace A075884.P7848490129569195678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075884.P7848490129569195678

namespace A075884

/-- `A214394(∑[∑[n+1]%2+1])` -/
def P7848490129569195678.Spec : Prop :=
  ∀ n, P7848490129569195678.a n = A075884 (n + 1)

end A075884

/-! ## A075884.P12359784918584015972

`A214394(∑[and(1, ∑[n+1])+1])`
-/

namespace A075884.P12359784918584015972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075884.P12359784918584015972

namespace A075884

/-- `A214394(∑[and(1, ∑[n+1])+1])` -/
def P12359784918584015972.Spec : Prop :=
  ∀ n, P12359784918584015972.a n = A075884 (n + 1)

end A075884

/-! ## A075884.P10031303539982435467

`A214394(A047262(n+2))`
-/

namespace A075884.P10031303539982435467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (A047262 (n + 2)).toNat

end

end A075884.P10031303539982435467

namespace A075884

/-- `A214394(A047262(n+2))` -/
def P10031303539982435467.Spec : Prop :=
  ∀ n, P10031303539982435467.a n = A075884 (n + 1)

end A075884

/-! ## A075884.P4754816116061093706

`A076536(2*(n+1))`
-/

namespace A075884.P4754816116061093706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076536 (2 * (n + 1))

end

end A075884.P4754816116061093706

namespace A075884

/-- `A076536(2*(n+1))` -/
def P4754816116061093706.Spec : Prop :=
  ∀ n, P4754816116061093706.a n = A075884 (n + 1)

end A075884

/-! ## A075884.P18096018317494593597

`A006370(A006370(n+1))`
-/

namespace A075884.P18096018317494593597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A006370 (n + 1)).toNat

end

end A075884.P18096018317494593597

namespace A075884

/-- `A006370(A006370(n+1))` -/
def P18096018317494593597.Spec : Prop :=
  ∀ n, P18096018317494593597.a n = A075884 (n + 1)

end A075884

/-! ## A075884.P11828734175801742450

`A288251(∑[n+2])`
-/

namespace A075884.P11828734175801742450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288251 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075884.P11828734175801742450

namespace A075884

/-- `A288251(∑[n+2])` -/
def P11828734175801742450.Spec : Prop :=
  ∀ n, P11828734175801742450.a n = A075884 (n + 1)

end A075884

/-! ## A075884.P7257925957344243635

`A347270(A167614(n+1))`
-/

namespace A075884.P7257925957344243635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (A167614 (n + 1)).toNat

end

end A075884.P7257925957344243635

namespace A075884

/-- `A347270(A167614(n+1))` -/
def P7257925957344243635.Spec : Prop :=
  ∀ n, P7257925957344243635.a n = A075884 (n + 1)

end A075884

/-! ## A075884.P295132908728822429

`A156552(A341515(A341515(A005940(n+2))))`
-/

namespace A075884.P295132908728822429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A341515 (A341515 (A005940 (n + 2)).toNat).toNat).toNat

end

end A075884.P295132908728822429

namespace A075884

/-- `A156552(A341515(A341515(A005940(n+2))))` -/
def P295132908728822429.Spec : Prop :=
  ∀ n, P295132908728822429.a n = A075884 (n + 1)

end A075884

/-!
# A075885: a(n) = 1 + n + n*[n/2] + n*[n/2]*[n/3] + n*[n/2]*[n/3]*[n/4] +... where [x]=floor(x).

The programs for A075885, there is no canonical definition to state claims against.
-/

/-! ## A075885.P9325377903916214176

`∑[A226040(p?[A049920(n+1)])]`
-/

namespace A075885.P9325377903916214176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049920 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226040 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075885.P9325377903916214176

/-! ## A075885.P802966712429690911

`A131909(∑[A131930(n+1)+A131901(n+1)])`
-/

namespace A075885.P802966712429690911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131930 (n + 1) + A131901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131909 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075885.P802966712429690911

/-!
# A075886: Number of cubes at generation n when building fractal cube with edge ratio of 1/2.

The programs for A075886, the canonical program `A075886.P347097443712730284` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075886 has offset 1).

The definition of A075886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075886.P347097443712730284

`5*a(n-1)+4*a(n-2)-24*a(n-3)` with `a(0)=1, a(1)=6, a(2)=30`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075886

/-- `5*a(n-1)+4*a(n-2)-24*a(n-3)` -/
def P347097443712730284.Spec : Prop :=
  ∀ n, P347097443712730284.a n = A075886 (n + 1)

theorem P347097443712730284.correct : P347097443712730284.Spec := by
  intro n
  simp only [A075886, Nat.add_sub_cancel]

end A075886

/-! ## A075886.P10119146852612166473

`A339629(A339609(n+1))+A157519(n)`
-/

namespace A075886.P10119146852612166473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339629 (A339609 (n + 1)).toNat + A157519 n

end

end A075886.P10119146852612166473

namespace A075886

/-- `A339629(A339609(n+1))+A157519(n)` -/
def P10119146852612166473.Spec : Prop :=
  ∀ n, P10119146852612166473.a n = A075886 (n + 1)

end A075886

/-!
# A075887: a(n) = 1 + n + n[n/2] + n[n/2][n/3] +... + n[n/2][n/3]...[n/n], where [x]=ceiling(x).

The programs for A075887, there is no canonical definition to state claims against.
-/

/-! ## A075887.P4324808253687843455

`A001055(Δ[∏[round(acot(n)+n)]])`
-/

namespace A075887.P4324808253687843455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (f1 (n + 1) - f1 n).toNat

end

end A075887.P4324808253687843455

/-! ## A075887.P5129722575564968062

`A001055(Δ[n*a(n-1)])` with `a(0)=1, a(1)=4`
-/

namespace A075887.P5129722575564968062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075887.P5129722575564968062

/-!
# A075888: Difference of successive primes squared divided by 24, (prime(n+1)^2 - prime(n)^2)/24.

The programs for A075888, the canonical program `A075888.P13966252635621325754` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075888 has offset 3).

The definition of A075888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075888.P13966252635621325754

`A069482(n+3)/24`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075888

/-- `A069482(n+3)/24` -/
def P13966252635621325754.Spec : Prop :=
  ∀ n, P13966252635621325754.a n = (A075888 (n + 3) : ℚ)

end A075888

/-! ## A075888.P3228288043192423392

`(A000040(n+4)²-A000040(n+3)²)/24`
-/

namespace A075888.P3228288043192423392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 4) ^ 2 - A000040 (n + 3) ^ 2 : ℚ) / 24

end

end A075888.P3228288043192423392

namespace A075888

/-- `(A000040(n+4)²-A000040(n+3)²)/24` -/
def P3228288043192423392.Spec : Prop :=
  ∀ n, P3228288043192423392.a n = (A075888 (n + 3) : ℚ)

end A075888

/-! ## A075888.P8447996010011742291

`Δ[A024702(n+3)]`
-/

namespace A075888.P8447996010011742291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075888.P8447996010011742291

namespace A075888

/-- `Δ[A024702(n+3)]` -/
def P8447996010011742291.Spec : Prop :=
  ∀ n, P8447996010011742291.a n = A075888 (n + 3)

end A075888

/-! ## A075888.P13377643312105680276

`A267896(n+3)/3`
-/

namespace A075888.P13377643312105680276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267896 (n + 3) : ℚ) / 3

end

end A075888.P13377643312105680276

namespace A075888

/-- `A267896(n+3)/3` -/
def P13377643312105680276.Spec : Prop :=
  ∀ n, P13377643312105680276.a n = (A075888 (n + 3) : ℚ)

end A075888

/-! ## A075888.P9631893932219209535

`Δ[A081115(n+3)/2]`
-/

namespace A075888.P9631893932219209535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081115 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075888.P9631893932219209535

namespace A075888

/-- `Δ[A081115(n+3)/2]` -/
def P9631893932219209535.Spec : Prop :=
  ∀ n, P9631893932219209535.a n = (A075888 (n + 3) : ℚ)

end A075888

/-! ## A075888.P5045686390550948880

`Δ[A084922(n+3)/4]`
-/

namespace A075888.P5045686390550948880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084922 (n + 3) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075888.P5045686390550948880

namespace A075888

/-- `Δ[A084922(n+3)/4]` -/
def P5045686390550948880.Spec : Prop :=
  ∀ n, P5045686390550948880.a n = (A075888 (n + 3) : ℚ)

end A075888

/-! ## A075888.P3887909886232468043

`Δ[A024700(n+1)/8]`
-/

namespace A075888.P3887909886232468043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024700 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075888.P3887909886232468043

namespace A075888

/-- `Δ[A024700(n+1)/8]` -/
def P3887909886232468043.Spec : Prop :=
  ∀ n, P3887909886232468043.a n = (A075888 (n + 3) : ℚ)

end A075888

/-! ## A075888.P1892403924226534838

`A024702(n+4)-A024702(n+3)`
-/

namespace A075888.P1892403924226534838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (n + 4) - A024702 (n + 3)

end

end A075888.P1892403924226534838

namespace A075888

/-- `A024702(n+4)-A024702(n+3)` -/
def P1892403924226534838.Spec : Prop :=
  ∀ n, P1892403924226534838.a n = A075888 (n + 3)

end A075888

/-! ## A075888.P7153300590968200045

`A062046(n+3)/6`
-/

namespace A075888.P7153300590968200045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062046 (n + 3) : ℚ) / 6

end

end A075888.P7153300590968200045

namespace A075888

/-- `A062046(n+3)/6` -/
def P7153300590968200045.Spec : Prop :=
  ∀ n, P7153300590968200045.a n = (A075888 (n + 3) : ℚ)

end A075888

/-! ## A075888.P15196823236938329912

`Δ[A061066(n+3)/3]`
-/

namespace A075888.P15196823236938329912
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061066 (n + 3) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075888.P15196823236938329912

namespace A075888

/-- `Δ[A061066(n+3)/3]` -/
def P15196823236938329912.Spec : Prop :=
  ∀ n, P15196823236938329912.a n = (A075888 (n + 3) : ℚ)

end A075888

/-! ## A075888.P3814253565061233544

`Δ[A001248(n+3)/24]`
-/

namespace A075888.P3814253565061233544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 3) : ℚ) / 24

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075888.P3814253565061233544

namespace A075888

/-- `Δ[A001248(n+3)/24]` -/
def P3814253565061233544.Spec : Prop :=
  ∀ n, P3814253565061233544.a n = (A075888 (n + 3) : ℚ)

end A075888

/-! ## A075888.P1714279884184741373

`Δ[A000040(n+3)²/24]`
-/

namespace A075888.P1714279884184741373
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 3) ^ 2 : ℚ) / 24

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075888.P1714279884184741373

namespace A075888

/-- `Δ[A000040(n+3)²/24]` -/
def P1714279884184741373.Spec : Prop :=
  ∀ n, P1714279884184741373.a n = (A075888 (n + 3) : ℚ)

end A075888

/-! ## A075888.P7593358313016573181

`Δ[A027626(A089038(n+1))]`
-/

namespace A075888.P7593358313016573181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 (A089038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075888.P7593358313016573181

namespace A075888

/-- `Δ[A027626(A089038(n+1))]` -/
def P7593358313016573181.Spec : Prop :=
  ∀ n, P7593358313016573181.a n = A075888 (n + 3)

end A075888

/-! ## A075888.P8934707011733746830

`Δ[A001840(A067076(n+2))]`
-/

namespace A075888.P8934707011733746830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A067076 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075888.P8934707011733746830

namespace A075888

/-- `Δ[A001840(A067076(n+2))]` -/
def P8934707011733746830.Spec : Prop :=
  ∀ n, P8934707011733746830.a n = A075888 (n + 3)

end A075888

/-! ## A075888.P4877486062360119168

`Δ[A007997(A089192(n+2))]`
-/

namespace A075888.P4877486062360119168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007997 (A089192 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075888.P4877486062360119168

namespace A075888

/-- `Δ[A007997(A089192(n+2))]` -/
def P4877486062360119168.Spec : Prop :=
  ∀ n, P4877486062360119168.a n = A075888 (n + 3)

end A075888

/-! ## A075888.P13310514093613176379

`Δ[A058212(A098090(n+2))]`
-/

namespace A075888.P13310514093613176379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (A098090 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075888.P13310514093613176379

namespace A075888

/-- `Δ[A058212(A098090(n+2))]` -/
def P13310514093613176379.Spec : Prop :=
  ∀ n, P13310514093613176379.a n = A075888 (n + 3)

end A075888

/-! ## A075888.P2660077757940395447

`Δ[A008742(A000040(n+3))]`
-/

namespace A075888.P2660077757940395447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (A000040 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075888.P2660077757940395447

namespace A075888

/-- `Δ[A008742(A000040(n+3))]` -/
def P2660077757940395447.Spec : Prop :=
  ∀ n, P2660077757940395447.a n = A075888 (n + 3)

end A075888

/-! ## A075888.P10389294551267675620

`Δ[A171140(n+1)/4]`
-/

namespace A075888.P10389294551267675620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171140 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075888.P10389294551267675620

namespace A075888

/-- `Δ[A171140(n+1)/4]` -/
def P10389294551267675620.Spec : Prop :=
  ∀ n, P10389294551267675620.a n = (A075888 (n + 3) : ℚ)

end A075888

/-! ## A075888.P17125671446095564674

`A117358(Δ[A024700(n+1)])`
-/

namespace A075888.P17125671446095564674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (f1 (n + 1) - f1 n).toNat

end

end A075888.P17125671446095564674

namespace A075888

/-- `A117358(Δ[A024700(n+1)])` -/
def P17125671446095564674.Spec : Prop :=
  ∀ n, P17125671446095564674.a n = A075888 (n + 3)

end A075888

/-!
# A075889: Primes in A075888, as they appear.

The programs for A075889, the canonical program `A075889.P5019387259858198594` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075889 has offset 1).

The definition of A075889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 570 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075889.P5019387259858198594

`p?[A075888(n+3)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075889

/-- `p?[A075888(n+3)]` -/
def P5019387259858198594.Spec : Prop :=
  ∀ n, P5019387259858198594.a n = A075889 (n + 1)

theorem P5019387259858198594.correct : P5019387259858198594.Spec := by
  intro n
  simp only [A075889, Nat.add_sub_cancel]

end A075889

/-! ## A075889.P4254223698501171462

`p?[Δ[A024702(n+3)]]`
-/

namespace A075889.P4254223698501171462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075889.P4254223698501171462

namespace A075889

/-- `p?[Δ[A024702(n+3)]]` -/
def P4254223698501171462.Spec : Prop :=
  ∀ n, P4254223698501171462.a n = A075889 (n + 1)

end A075889

/-! ## A075889.P6606110252591774271

`p?[A024702(n+4)-A024702(n+3)]`
-/

namespace A075889.P6606110252591774271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (n + 4) - A024702 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075889.P6606110252591774271

namespace A075889

/-- `p?[A024702(n+4)-A024702(n+3)]` -/
def P6606110252591774271.Spec : Prop :=
  ∀ n, P6606110252591774271.a n = A075889 (n + 1)

end A075889

/-! ## A075889.P15181326405361451816

`p?[floor(A247396(n)/12)]`
-/

namespace A075889.P15181326405361451816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247396 n : ℚ) / 12⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075889.P15181326405361451816

namespace A075889

/-- `p?[floor(A247396(n)/12)]` -/
def P15181326405361451816.Spec : Prop :=
  ∀ n, P15181326405361451816.a n = A075889 (n + 1)

end A075889

/-! ## A075889.P13406759952204809409

`filter[A075888(n+3), A010051(#)]`
-/

namespace A075889.P13406759952204809409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075888 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A075889.P13406759952204809409

namespace A075889

/-- `filter[A075888(n+3), A010051(#)]` -/
def P13406759952204809409.Spec : Prop :=
  ∀ n, P13406759952204809409.a n = A075889 (n + 1)

end A075889

/-! ## A075889.P9698046843535331297

`filter[A075888(n+4), A080339(#)]`
-/

namespace A075889.P9698046843535331297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075888 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A075889.P9698046843535331297

namespace A075889

/-- `filter[A075888(n+4), A080339(#)]` -/
def P9698046843535331297.Spec : Prop :=
  ∀ n, P9698046843535331297.a n = A075889 (n + 1)

end A075889

/-!
# A075890: Largest term in the prime(n)-th row of Pascal's triangle, prime(n) being the n-th prime.

The programs for A075890, the canonical program `A075890.P14480984473195964195` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075890 has offset 1).

The definition of A075890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075890.P14480984473195964195

`A001405(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075890

/-- `A001405(A000040(n+1))` -/
def P14480984473195964195.Spec : Prop :=
  ∀ n, P14480984473195964195.a n = A075890 (n + 1)

theorem P14480984473195964195.correct : P14480984473195964195.Spec := by
  intro n
  simp only [A075890, Nat.add_sub_cancel]

end A075890

/-! ## A075890.P14131103225797020126

`A001405(p?[comp[n²]])`
-/

namespace A075890.P14131103225797020126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A075890.P14131103225797020126

namespace A075890

/-- `A001405(p?[comp[n²]])` -/
def P14131103225797020126.Spec : Prop :=
  ∀ n, P14131103225797020126.a n = A075890 (n + 1)

end A075890

/-! ## A075890.P1245384640879433002

`A002661(p?[xor(1, n)+1])`
-/

namespace A075890.P1245384640879433002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002661 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A075890.P1245384640879433002

namespace A075890

/-- `A002661(p?[xor(1, n)+1])` -/
def P1245384640879433002.Spec : Prop :=
  ∀ n, P1245384640879433002.a n = A075890 (n + 1)

end A075890

/-! ## A075890.P7971184346880151100

`A210736(p?[comp[n²]]+1)`
-/

namespace A075890.P7971184346880151100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A075890.P7971184346880151100

namespace A075890

/-- `A210736(p?[comp[n²]]+1)` -/
def P7971184346880151100.Spec : Prop :=
  ∀ n, P7971184346880151100.a n = A075890 (n + 1)

end A075890

/-! ## A075890.P17669455793507936360

`abs(A126930(p?[xor(1, n)+1]))`
-/

namespace A075890.P17669455793507936360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))|

end

end A075890.P17669455793507936360

namespace A075890

/-- `abs(A126930(p?[xor(1, n)+1]))` -/
def P17669455793507936360.Spec : Prop :=
  ∀ n, P17669455793507936360.a n = A075890 (n + 1)

end A075890

/-! ## A075890.P14769634576332198924

`A201686(p?[n%3+n])+2`
-/

namespace A075890.P14769634576332198924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 2

end

end A075890.P14769634576332198924

namespace A075890

/-- `A201686(p?[n%3+n])+2` -/
def P14769634576332198924.Spec : Prop :=
  ∀ n, P14769634576332198924.a n = A075890 (n + 1)

end A075890

/-! ## A075890.P5923220910321807168

`A210736(A028815(n+1))`
-/

namespace A075890.P5923220910321807168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (A028815 (n + 1)).toNat

end

end A075890.P5923220910321807168

namespace A075890

/-- `A210736(A028815(n+1))` -/
def P5923220910321807168.Spec : Prop :=
  ∀ n, P5923220910321807168.a n = A075890 (n + 1)

end A075890

/-! ## A075890.P3903808250802166256

`A001405(A008578(n+2))`
-/

namespace A075890.P3903808250802166256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A008578 (n + 2)).toNat

end

end A075890.P3903808250802166256

namespace A075890

/-- `A001405(A008578(n+2))` -/
def P3903808250802166256.Spec : Prop :=
  ∀ n, P3903808250802166256.a n = A075890 (n + 1)

end A075890

/-! ## A075890.P6006738399822092653

`A210736(A000040(n+1)+1)`
-/

namespace A075890.P6006738399822092653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (A000040 (n + 1) + 1).toNat

end

end A075890.P6006738399822092653

namespace A075890

/-- `A210736(A000040(n+1)+1)` -/
def P6006738399822092653.Spec : Prop :=
  ∀ n, P6006738399822092653.a n = A075890 (n + 1)

end A075890

/-!
# A075891: Quotient C[p(n),{p(n)+-1}/2]/p(n), where p(n)=n-th prime.

The programs for A075891, the canonical program `A075891.P10980130095552009349` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075891 has offset 2).

The definition of A075891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075891.P10980130095552009349

`A000108((A000040(n+2)-1)/2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075891

/-- `A000108((A000040(n+2)-1)/2)` -/
def P10980130095552009349.Spec : Prop :=
  ∀ n, P10980130095552009349.a n = A075891 (n + 2)

theorem P10980130095552009349.correct : P10980130095552009349.Spec := by
  intro n
  simp only [A075891, Nat.add_sub_cancel]

end A075891

/-! ## A075891.P1643446742232611247

`A063786(p?[2*n+1])`
-/

namespace A075891.P1643446742232611247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063786 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A075891.P1643446742232611247

namespace A075891

/-- `A063786(p?[2*n+1])` -/
def P1643446742232611247.Spec : Prop :=
  ∀ n, P1643446742232611247.a n = A075891 (n + 2)

end A075891

/-! ## A075891.P1747400307490836375

`A089408(p?[2*n+1])`
-/

namespace A075891.P1747400307490836375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A075891.P1747400307490836375

namespace A075891

/-- `A089408(p?[2*n+1])` -/
def P1747400307490836375.Spec : Prop :=
  ∀ n, P1747400307490836375.a n = A075891 (n + 2)

end A075891

/-! ## A075891.P9623679378403543859

`A089849(p?[2*n+1])`
-/

namespace A075891.P9623679378403543859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A075891.P9623679378403543859

namespace A075891

/-- `A089849(p?[2*n+1])` -/
def P9623679378403543859.Spec : Prop :=
  ∀ n, P9623679378403543859.a n = A075891 (n + 2)

end A075891

/-! ## A075891.P5375046651808895431

`A097331(p?[2*n+1])`
-/

namespace A075891.P5375046651808895431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A075891.P5375046651808895431

namespace A075891

/-- `A097331(p?[2*n+1])` -/
def P5375046651808895431.Spec : Prop :=
  ∀ n, P5375046651808895431.a n = A075891 (n + 2)

end A075891

/-! ## A075891.P8363702203165118421

`abs(A090192(p?[2*n+1]))`
-/

namespace A075891.P8363702203165118421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))|

end

end A075891.P8363702203165118421

namespace A075891

/-- `abs(A090192(p?[2*n+1]))` -/
def P8363702203165118421.Spec : Prop :=
  ∀ n, P8363702203165118421.a n = A075891 (n + 2)

end A075891

/-! ## A075891.P16080738729591943016

`abs(A105523(p?[2*n+1]))`
-/

namespace A075891.P16080738729591943016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105523 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))|

end

end A075891.P16080738729591943016

namespace A075891

/-- `abs(A105523(p?[2*n+1]))` -/
def P16080738729591943016.Spec : Prop :=
  ∀ n, P16080738729591943016.a n = A075891 (n + 2)

end A075891

/-! ## A075891.P3882380315681704414

`abs(A106181(p?[2*n+1]))`
-/

namespace A075891.P3882380315681704414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106181 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))|

end

end A075891.P3882380315681704414

namespace A075891

/-- `abs(A106181(p?[2*n+1]))` -/
def P3882380315681704414.Spec : Prop :=
  ∀ n, P3882380315681704414.a n = A075891 (n + 2)

end A075891

/-! ## A075891.P16778773297278247720

`abs(A210628(p?[2*n+1]))`
-/

namespace A075891.P16778773297278247720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210628 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))|

end

end A075891.P16778773297278247720

namespace A075891

/-- `abs(A210628(p?[2*n+1]))` -/
def P16778773297278247720.Spec : Prop :=
  ∀ n, P16778773297278247720.a n = A075891 (n + 2)

end A075891

/-! ## A075891.P3271631898012912232

`A000108(A005097(n+1))`
-/

namespace A075891.P3271631898012912232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A005097 (n + 1)).toNat

end

end A075891.P3271631898012912232

namespace A075891

/-- `A000108(A005097(n+1))` -/
def P3271631898012912232.Spec : Prop :=
  ∀ n, P3271631898012912232.a n = A075891 (n + 2)

end A075891

/-!
# A075892: Average of squares of successive primes: a(n) = (prime(n+1)^2 + prime(n)^2)/2, with n >= 2.

The programs for A075892, the canonical program `A075892.P13878828951575898725` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075892 has offset 2).

The definition of A075892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075892.P13878828951575898725

`(A000040(n+3)²+A000040(n+2)²)/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075892

/-- `(A000040(n+3)²+A000040(n+2)²)/2` -/
def P13878828951575898725.Spec : Prop :=
  ∀ n, P13878828951575898725.a n = (A075892 (n + 2) : ℚ)

end A075892

/-! ## A075892.P1160273885937011368

`(A133529(n+1)-A001248(n+1))/2`
-/

namespace A075892.P1160273885937011368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133529 (n + 1) - A001248 (n + 1) : ℚ) / 2

end

end A075892.P1160273885937011368

namespace A075892

/-- `(A133529(n+1)-A001248(n+1))/2` -/
def P1160273885937011368.Spec : Prop :=
  ∀ n, P1160273885937011368.a n = (A075892 (n + 2) : ℚ)

end A075892

/-! ## A075892.P14339571462834104975

`A024675(n+1)²+A028334(n+2)²`
-/

namespace A075892.P14339571462834104975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) ^ 2 + A028334 (n + 2) ^ 2

end

end A075892.P14339571462834104975

namespace A075892

/-- `A024675(n+1)²+A028334(n+2)²` -/
def P14339571462834104975.Spec : Prop :=
  ∀ n, P14339571462834104975.a n = A075892 (n + 2)

end A075892

/-! ## A075892.P8174723408052287504

`(A133529(n+1)-A000040(n+1)²)/2`
-/

namespace A075892.P8174723408052287504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133529 (n + 1) - A000040 (n + 1) ^ 2 : ℚ) / 2

end

end A075892.P8174723408052287504

namespace A075892

/-- `(A133529(n+1)-A000040(n+1)²)/2` -/
def P8174723408052287504.Spec : Prop :=
  ∀ n, P8174723408052287504.a n = (A075892 (n + 2) : ℚ)

end A075892

/-! ## A075892.P4449079582201641487

`A069484(n+2)/2`
-/

namespace A075892.P4449079582201641487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069484 (n + 2) : ℚ) / 2

end

end A075892.P4449079582201641487

namespace A075892

/-- `A069484(n+2)/2` -/
def P4449079582201641487.Spec : Prop :=
  ∀ n, P4449079582201641487.a n = (A075892 (n + 2) : ℚ)

end A075892

/-! ## A075892.P2582476714427563263

`A124434(n+2)+A001248(n+2)`
-/

namespace A075892.P2582476714427563263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124434 (n + 2) + A001248 (n + 2)

end

end A075892.P2582476714427563263

namespace A075892

/-- `A124434(n+2)+A001248(n+2)` -/
def P2582476714427563263.Spec : Prop :=
  ∀ n, P2582476714427563263.a n = A075892 (n + 2)

end A075892

/-! ## A075892.P632960439464072309

`A076621(n+2)+A074927(n+2)`
-/

namespace A075892.P632960439464072309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076621 (n + 2) + A074927 (n + 2)

end

end A075892.P632960439464072309

namespace A075892

/-- `A076621(n+2)+A074927(n+2)` -/
def P632960439464072309.Spec : Prop :=
  ∀ n, P632960439464072309.a n = A075892 (n + 2)

end A075892

/-! ## A075892.P1006208851643513508

`A084921(n+2)+A066885(n+3)`
-/

namespace A075892.P1006208851643513508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (n + 2) + A066885 (n + 3)

end

end A075892.P1006208851643513508

namespace A075892

/-- `A084921(n+2)+A066885(n+3)` -/
def P1006208851643513508.Spec : Prop :=
  ∀ n, P1006208851643513508.a n = A075892 (n + 2)

end A075892

/-! ## A075892.P11785737494917188912

`A216244(n+2)+A066885(n+3)`
-/

namespace A075892.P11785737494917188912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216244 (n + 2) + A066885 (n + 3)

end

end A075892.P11785737494917188912

namespace A075892

/-- `A216244(n+2)+A066885(n+3)` -/
def P11785737494917188912.Spec : Prop :=
  ∀ n, P11785737494917188912.a n = A075892 (n + 2)

end A075892

/-! ## A075892.P798331319632142728

`A074927(n+2)+A024675(n+1)²`
-/

namespace A075892.P798331319632142728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074927 (n + 2) + A024675 (n + 1) ^ 2

end

end A075892.P798331319632142728

namespace A075892

/-- `A074927(n+2)+A024675(n+1)²` -/
def P798331319632142728.Spec : Prop :=
  ∀ n, P798331319632142728.a n = A075892 (n + 2)

end A075892

/-! ## A075892.P648717521016222243

`A124434(n+2)+A000040(n+2)²`
-/

namespace A075892.P648717521016222243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124434 (n + 2) + A000040 (n + 2) ^ 2

end

end A075892.P648717521016222243

namespace A075892

/-- `A124434(n+2)+A000040(n+2)²` -/
def P648717521016222243.Spec : Prop :=
  ∀ n, P648717521016222243.a n = A075892 (n + 2)

end A075892

/-! ## A075892.P8108642200412082766

`A110494(n+2)+A066885(n+3)-1`
-/

namespace A075892.P8108642200412082766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 2) + (A066885 (n + 3) - 1)

end

end A075892.P8108642200412082766

namespace A075892

/-- `A110494(n+2)+A066885(n+3)-1` -/
def P8108642200412082766.Spec : Prop :=
  ∀ n, P8108642200412082766.a n = A075892 (n + 2)

end A075892

/-! ## A075892.P4702749733533222278

`A001248(n+2)+2*A062046(n+2)`
-/

namespace A075892.P4702749733533222278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) + 2 * A062046 (n + 2)

end

end A075892.P4702749733533222278

namespace A075892

/-- `A001248(n+2)+2*A062046(n+2)` -/
def P4702749733533222278.Spec : Prop :=
  ∀ n, P4702749733533222278.a n = A075892 (n + 2)

end A075892

/-! ## A075892.P123220098814833998

`A006094(n+2)+2*A074927(n+2)`
-/

namespace A075892.P123220098814833998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2) + 2 * A074927 (n + 2)

end

end A075892.P123220098814833998

namespace A075892

/-- `A006094(n+2)+2*A074927(n+2)` -/
def P123220098814833998.Spec : Prop :=
  ∀ n, P123220098814833998.a n = A075892 (n + 2)

end A075892

/-! ## A075892.P6829515813302142255

`A001248(n+2)+A069482(n+2)/2`
-/

namespace A075892.P6829515813302142255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 2) : ℚ) + (A069482 (n + 2) : ℚ) / 2

end

end A075892.P6829515813302142255

namespace A075892

/-- `A001248(n+2)+A069482(n+2)/2` -/
def P6829515813302142255.Spec : Prop :=
  ∀ n, P6829515813302142255.a n = (A075892 (n + 2) : ℚ)

end A075892

/-! ## A075892.P4362626556851349926

`(A079704(n+2)+A069482(n+2))/2`
-/

namespace A075892.P4362626556851349926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 2) + A069482 (n + 2) : ℚ) / 2

end

end A075892.P4362626556851349926

namespace A075892

/-- `(A079704(n+2)+A069482(n+2))/2` -/
def P4362626556851349926.Spec : Prop :=
  ∀ n, P4362626556851349926.a n = (A075892 (n + 2) : ℚ)

end A075892

/-! ## A075892.P17496202185724852006

`(A349660(n+2)+A036689(n+2))/2`
-/

namespace A075892.P17496202185724852006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349660 (n + 2) + A036689 (n + 2) : ℚ) / 2

end

end A075892.P17496202185724852006

namespace A075892

/-- `(A349660(n+2)+A036689(n+2))/2` -/
def P17496202185724852006.Spec : Prop :=
  ∀ n, P17496202185724852006.a n = (A075892 (n + 2) : ℚ)

end A075892

/-! ## A075892.P2857994553200550958

`A066885(n+3)+A084920(n+2)/2`
-/

namespace A075892.P2857994553200550958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066885 (n + 3) : ℚ) + (A084920 (n + 2) : ℚ) / 2

end

end A075892.P2857994553200550958

namespace A075892

/-- `A066885(n+3)+A084920(n+2)/2` -/
def P2857994553200550958.Spec : Prop :=
  ∀ n, P2857994553200550958.a n = (A075892 (n + 2) : ℚ)

end A075892

/-! ## A075892.P17872778466369592422

`A024701(n+1)+A066885(n+3)+A024701(n+1)`
-/

namespace A075892.P17872778466369592422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024701 (n + 1) + (A066885 (n + 3) + A024701 (n + 1))

end

end A075892.P17872778466369592422

namespace A075892

/-- `A024701(n+1)+A066885(n+3)+A024701(n+1)` -/
def P17872778466369592422.Spec : Prop :=
  ∀ n, P17872778466369592422.a n = A075892 (n + 2)

end A075892

/-! ## A075892.P12033621846674562731

`A076621(n+2)+A076621(n+2)-A006094(n+2)`
-/

namespace A075892.P12033621846674562731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076621 (n + 2) + (A076621 (n + 2) - A006094 (n + 2))

end

end A075892.P12033621846674562731

namespace A075892

/-- `A076621(n+2)+A076621(n+2)-A006094(n+2)` -/
def P12033621846674562731.Spec : Prop :=
  ∀ n, P12033621846674562731.a n = A075892 (n + 2)

end A075892

/-!
# A075893: Average of three successive primes squared, (prime(n)^2+prime(n+1)^2+prime(n+2)^2)/3, n>=3.

The programs for A075893, the canonical program `A075893.P10670309908242978729` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075893 has offset 3).

The definition of A075893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075893.P10670309908242978729

`(A000040(n+3)²+A000040(n+4)²+A000040(n+5)²)/3`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075893

/-- `(A000040(n+3)²+A000040(n+4)²+A000040(n+5)²)/3` -/
def P10670309908242978729.Spec : Prop :=
  ∀ n, P10670309908242978729.a n = (A075893 (n + 3) : ℚ)

end A075893

/-! ## A075893.P13894536752048670216

`(A131686(n+1)-A069484(n+1))/3`
-/

namespace A075893.P13894536752048670216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131686 (n + 1) - A069484 (n + 1) : ℚ) / 3

end

end A075893.P13894536752048670216

namespace A075893

/-- `(A131686(n+1)-A069484(n+1))/3` -/
def P13894536752048670216.Spec : Prop :=
  ∀ n, P13894536752048670216.a n = (A075893 (n + 3) : ℚ)

end A075893

/-! ## A075893.P7861322626374593597

`(A133524(n+2)-A001248(n+2))/3`
-/

namespace A075893.P7861322626374593597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133524 (n + 2) - A001248 (n + 2) : ℚ) / 3

end

end A075893.P7861322626374593597

namespace A075893

/-- `(A133524(n+2)-A001248(n+2))/3` -/
def P7861322626374593597.Spec : Prop :=
  ∀ n, P7861322626374593597.a n = (A075893 (n + 3) : ℚ)

end A075893

/-! ## A075893.P3721067692427620242

`A133529(n+3)/3`
-/

namespace A075893.P3721067692427620242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133529 (n + 3) : ℚ) / 3

end

end A075893.P3721067692427620242

namespace A075893

/-- `A133529(n+3)/3` -/
def P3721067692427620242.Spec : Prop :=
  ∀ n, P3721067692427620242.a n = (A075893 (n + 3) : ℚ)

end A075893

/-! ## A075893.P17536386722833629117

`(A133547(n+4)-A133547(n+1))/3`
-/

namespace A075893.P17536386722833629117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133547 (n + 4) - A133547 (n + 1) : ℚ) / 3

end

end A075893.P17536386722833629117

namespace A075893

/-- `(A133547(n+4)-A133547(n+1))/3` -/
def P17536386722833629117.Spec : Prop :=
  ∀ n, P17536386722833629117.a n = (A075893 (n + 3) : ℚ)

end A075893

/-!
# A075894: Average of four successive primes squared, (prime(n)^2 + prime(n+1)^2 + prime(n+2)^2 + prime(n+3)^2)/4, n>=2.

The programs for A075894, the canonical program `A075894.P16944394099306899603` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075894 has offset 2).

The definition of A075894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075894.P16944394099306899603

`(A000040(n+2)²+A000040(n+3)²+A000040(n+4)²+A000040(n+5)²)/4`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075894

/-- `(A000040(n+2)²+A000040(n+3)²+A000040(n+4)²+A000040(n+5)²)/4` -/
def P16944394099306899603.Spec : Prop :=
  ∀ n, P16944394099306899603.a n = (A075894 (n + 2) : ℚ)

end A075894

/-! ## A075894.P14700299347206667314

`(A131686(n+1)-A001248(n+1))/4`
-/

namespace A075894.P14700299347206667314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131686 (n + 1) - A001248 (n + 1) : ℚ) / 4

end

end A075894.P14700299347206667314

namespace A075894

/-- `(A131686(n+1)-A001248(n+1))/4` -/
def P14700299347206667314.Spec : Prop :=
  ∀ n, P14700299347206667314.a n = (A075894 (n + 2) : ℚ)

end A075894

/-! ## A075894.P16007791241871646815

`A133524(n+2)/4`
-/

namespace A075894.P16007791241871646815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133524 (n + 2) : ℚ) / 4

end

end A075894.P16007791241871646815

namespace A075894

/-- `A133524(n+2)/4` -/
def P16007791241871646815.Spec : Prop :=
  ∀ n, P16007791241871646815.a n = (A075894 (n + 2) : ℚ)

end A075894

/-! ## A075894.P12765621246356810364

`(2^A008683(A007918(n)))²*A133524(n+2)`
-/

namespace A075894.P12765621246356810364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A008683 (A007918 n).toNat : ℤ)) ^ 2 * (A133524 (n + 2) : ℚ)

end

end A075894.P12765621246356810364

namespace A075894

/-- `(2^A008683(A007918(n)))²*A133524(n+2)` -/
def P12765621246356810364.Spec : Prop :=
  ∀ n, P12765621246356810364.a n = (A075894 (n + 2) : ℚ)

end A075894

/-! ## A075894.P12466443581441555896

`(A075892(n+2)+A075892(n+4))/2`
-/

namespace A075894.P12466443581441555896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075892 (n + 2) + A075892 (n + 4) : ℚ) / 2

end

end A075894.P12466443581441555896

namespace A075894

/-- `(A075892(n+2)+A075892(n+4))/2` -/
def P12466443581441555896.Spec : Prop :=
  ∀ n, P12466443581441555896.a n = (A075894 (n + 2) : ℚ)

end A075894

/-! ## A075894.P5221755324662912735

`(A024450(n+5)-A024450(n+1))/4`
-/

namespace A075894.P5221755324662912735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024450 (n + 5) - A024450 (n + 1) : ℚ) / 4

end

end A075894.P5221755324662912735

namespace A075894

/-- `(A024450(n+5)-A024450(n+1))/4` -/
def P5221755324662912735.Spec : Prop :=
  ∀ n, P5221755324662912735.a n = (A075894 (n + 2) : ℚ)

end A075894

/-! ## A075894.P1596775521635913499

`4^A008683(A078721(n))*A133524(n+2)`
-/

namespace A075894.P1596775521635913499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A008683 (A078721 n).toNat : ℤ) * (A133524 (n + 2) : ℚ)

end

end A075894.P1596775521635913499

namespace A075894

/-- `4^A008683(A078721(n))*A133524(n+2)` -/
def P1596775521635913499.Spec : Prop :=
  ∀ n, P1596775521635913499.a n = (A075894 (n + 2) : ℚ)

end A075894

/-!
# A075895: Rounded sum of first n odd integers squared divided by n-th prime.

The programs for A075895, the canonical program `A075895.P13687500531108840947` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075895 has offset 1).

The definition of A075895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075895.P13687500531108840947

`round((A000447(n+1)-1)/A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075895

/-- `round((A000447(n+1)-1)/A000040(n+1))` -/
def P13687500531108840947.Spec : Prop :=
  ∀ n, P13687500531108840947.a n = A075895 (n + 1)

theorem P13687500531108840947.correct : P13687500531108840947.Spec := by
  intro n
  simp only [A075895, Nat.add_sub_cancel]

end A075895

/-! ## A075895.P2120606601726959901

`round(record[A216414(n+3)]/A000040(n+1))`
-/

namespace A075895.P2120606601726959901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216414 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000040 (n + 1) : ℚ))

end

end A075895.P2120606601726959901

namespace A075895

/-- `round(record[A216414(n+3)]/A000040(n+1))` -/
def P2120606601726959901.Spec : Prop :=
  ∀ n, P2120606601726959901.a n = A075895 (n + 1)

end A075895

/-! ## A075895.P13623553175267771905

`round((A000292(2*n+1)-1)/A000040(n+1))`
-/

namespace A075895.P13623553175267771905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000292 (2 * n + 1) - 1 : ℚ) / (A000040 (n + 1) : ℚ))

end

end A075895.P13623553175267771905

namespace A075895

/-- `round((A000292(2*n+1)-1)/A000040(n+1))` -/
def P13623553175267771905.Spec : Prop :=
  ∀ n, P13623553175267771905.a n = A075895 (n + 1)

end A075895

/-! ## A075895.P9800713790404318217

`A006161(A006075(2*n+5))-3`
-/

namespace A075895.P9800713790404318217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (A006075 (2 * n + 5)).toNat - 3

end

end A075895.P9800713790404318217

namespace A075895

/-- `A006161(A006075(2*n+5))-3` -/
def P9800713790404318217.Spec : Prop :=
  ∀ n, P9800713790404318217.a n = A075895 (n + 1)

end A075895

/-! ## A075895.P4316979095292396579

`A373811(A283733(n+1)*A373811(2*n))`
-/

namespace A075895.P4316979095292396579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A283733 (n + 1) * A373811 (2 * n)).toNat

end

end A075895.P4316979095292396579

namespace A075895

/-- `A373811(A283733(n+1)*A373811(2*n))` -/
def P4316979095292396579.Spec : Prop :=
  ∀ n, P4316979095292396579.a n = A075895 (n + 1)

end A075895

/-!
# A075896: Primes of the form 2^k - k^2.

The programs for A075896, there is no canonical definition to state claims against.
-/

/-! ## A075896.P15552903695501332706

`A024012(A072180(n+1))`
-/

namespace A075896.P15552903695501332706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024012 (A072180 (n + 1)).toNat

end

end A075896.P15552903695501332706

/-! ## A075896.P16271881894560619067

`∩[A024012(2*n+3), A123206(n+1)]`
-/

namespace A075896.P16271881894560619067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024012 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075896.P16271881894560619067

/-!
# A075897: 1 if binary weight of n is 1 or 2, otherwise 0.

The programs for A075897, the canonical program `A075897.P8597218280166842261` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075897 has offset 0).

The definition of A075897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075897.P16973494235366538981

`char[and(n+1, xor(n, n+1)-n)]`
-/

namespace A075897.P16973494235366538981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.xor n (n + 1) : ℤ) - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075897.P16973494235366538981

namespace A075897

/-- `char[and(n+1, xor(n, n+1)-n)]` -/
def P16973494235366538981.Spec : Prop :=
  ∀ n, (P16973494235366538981.a n : ℤ) = A075897 n

end A075897

/-! ## A075897.P8848147214470037940

`char[lt[a(floor(n/2))+n%2, 2]]` with `a(0)=2, a(1)=0`
-/

namespace A075897.P8848147214470037940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A075897.P8848147214470037940

namespace A075897

/-- `char[lt[a(floor(n/2))+n%2, 2]]` -/
def P8848147214470037940.Spec : Prop :=
  ∀ n, (P8848147214470037940.a n : ℤ) = A075897 n

end A075897

/-! ## A075897.P17165373000248385822

`(a(∑[n]%n)-char[or(1, 2^n)])²` with `a(0)=0`
-/

namespace A075897.P17165373000248385822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a ((∑ j ∈ Finset.range (n + 1), f1 j) % n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A075897.P17165373000248385822

namespace A075897

/-- `(a(∑[n]%n)-char[or(1, 2^n)])²` -/
def P17165373000248385822.Spec : Prop :=
  ∀ n, P17165373000248385822.a n = A075897 n

end A075897

/-! ## A075897.P7748179373358998848

`char[and(n+1, n+1-2*and(n, n+1))]`
-/

namespace A075897.P7748179373358998848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n + 1 : ℤ) - (2 * Nat.land n (n + 1) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075897.P7748179373358998848

namespace A075897

/-- `char[and(n+1, n+1-2*and(n, n+1))]` -/
def P7748179373358998848.Spec : Prop :=
  ∀ n, (P7748179373358998848.a n : ℤ) = A075897 n

end A075897

/-! ## A075897.P7402231624816797269

`char[or(2^(n-C(∑[char[∑[n]]], 2)), ∏[char[∑[n+1]]+1])]`
-/

namespace A075897.P7402231624816797269
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f6 j = n then 1 else 0) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) : ℤ))) ((∏ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075897.P7402231624816797269

namespace A075897

/-- `char[or(2^(n-C(∑[char[∑[n]]], 2)), ∏[char[∑[n+1]]+1])]` -/
def P7402231624816797269.Spec : Prop :=
  ∀ n, (P7402231624816797269.a n : ℤ) = A075897 n

end A075897

/-! ## A075897.P8138068344476311042

`a(A073267(n))` with `a(0)=0, a(1)=1`
-/

namespace A075897.P8138068344476311042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A073267 n).toNat

end

end A075897.P8138068344476311042

namespace A075897

/-- `a(A073267(n))` -/
def P8138068344476311042.Spec : Prop :=
  ∀ n, (P8138068344476311042.a n : ℤ) = A075897 n

end A075897

/-! ## A075897.P13465687724888446606

`char[A048645(n+1)]`
-/

namespace A075897.P13465687724888446606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075897.P13465687724888446606

namespace A075897

/-- `char[A048645(n+1)]` -/
def P13465687724888446606.Spec : Prop :=
  ∀ n, (P13465687724888446606.a n : ℤ) = A075897 n

end A075897

/-! ## A075897.P8597218280166842261

`C(C(3, A000120(n)), 3)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075897

/-- `C(C(3, A000120(n)), 3)` -/
def P8597218280166842261.Spec : Prop :=
  ∀ n, (P8597218280166842261.a n : ℤ) = A075897 n

theorem P8597218280166842261.correct : P8597218280166842261.Spec := by
  intro n
  simp only [A075897]

end A075897

/-! ## A075897.P6417700798600738164

`char[record[A385818(n+1)]]`
-/

namespace A075897.P6417700798600738164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075897.P6417700798600738164

namespace A075897

/-- `char[record[A385818(n+1)]]` -/
def P6417700798600738164.Spec : Prop :=
  ∀ n, (P6417700798600738164.a n : ℤ) = A075897 n

end A075897

/-! ## A075897.P16978025561195343890

`char[record[A350603(n+2)]]`
-/

namespace A075897.P16978025561195343890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350603 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075897.P16978025561195343890

namespace A075897

/-- `char[record[A350603(n+2)]]` -/
def P16978025561195343890.Spec : Prop :=
  ∀ n, (P16978025561195343890.a n : ℤ) = A075897 n

end A075897

/-! ## A075897.P7456205559695787104

`char[1]+char[A173786(n)]`
-/

namespace A075897.P7456205559695787104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A075897.P7456205559695787104

namespace A075897

/-- `char[1]+char[A173786(n)]` -/
def P7456205559695787104.Spec : Prop :=
  ∀ n, (P7456205559695787104.a n : ℤ) = A075897 n

end A075897

/-! ## A075897.P7306434820072328620

`char[1]+char[A271709(n)]`
-/

namespace A075897.P7306434820072328620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A075897.P7306434820072328620

namespace A075897

/-- `char[1]+char[A271709(n)]` -/
def P7306434820072328620.Spec : Prop :=
  ∀ n, (P7306434820072328620.a n : ℤ) = A075897 n

end A075897

/-! ## A075897.P17024186919474675682

`char[A126441(2*n)-n]`
-/

namespace A075897.P17024186919474675682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 (2 * n) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075897.P17024186919474675682

namespace A075897

/-- `char[A126441(2*n)-n]` -/
def P17024186919474675682.Spec : Prop :=
  ∀ n, (P17024186919474675682.a n : ℤ) = A075897 n

end A075897

/-! ## A075897.P18195744702401265114

`and(2, A151787(n+1))/2`
-/

namespace A075897.P18195744702401265114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A151787 (n + 1)) : ℚ) / 2

end

end A075897.P18195744702401265114

namespace A075897

/-- `and(2, A151787(n+1))/2` -/
def P18195744702401265114.Spec : Prop :=
  ∀ n, P18195744702401265114.a n = (A075897 n : ℚ)

end A075897

/-! ## A075897.P17049268910072503646

`A101040(A071044(n))`
-/

namespace A075897.P17049268910072503646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (A071044 n).toNat

end

end A075897.P17049268910072503646

namespace A075897

/-- `A101040(A071044(n))` -/
def P17049268910072503646.Spec : Prop :=
  ∀ n, P17049268910072503646.a n = A075897 n

end A075897

/-! ## A075897.P17578528434531402473

`A105348(A001316(n)+1)`
-/

namespace A075897.P17578528434531402473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (A001316 n + 1).toNat

end

end A075897.P17578528434531402473

namespace A075897

/-- `A105348(A001316(n)+1)` -/
def P17578528434531402473.Spec : Prop :=
  ∀ n, P17578528434531402473.a n = A075897 n

end A075897

/-! ## A075897.P17563863350990937028

`A185907(A001316(n)+1)`
-/

namespace A075897.P17563863350990937028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185907 (A001316 n + 1).toNat

end

end A075897.P17563863350990937028

namespace A075897

/-- `A185907(A001316(n)+1)` -/
def P17563863350990937028.Spec : Prop :=
  ∀ n, P17563863350990937028.a n = A075897 n

end A075897

/-! ## A075897.P3996719498339526390

`A105348(A102396(n))-1`
-/

namespace A075897.P3996719498339526390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (A102396 n).toNat - 1

end

end A075897.P3996719498339526390

namespace A075897

/-- `A105348(A102396(n))-1` -/
def P3996719498339526390.Spec : Prop :=
  ∀ n, P3996719498339526390.a n = A075897 n

end A075897

/-! ## A075897.P13897371202125295748

`1-A267587(A267592(n))`
-/

namespace A075897.P13897371202125295748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267587 (A267592 n).toNat

end

end A075897.P13897371202125295748

namespace A075897

/-- `1-A267587(A267592(n))` -/
def P13897371202125295748.Spec : Prop :=
  ∀ n, P13897371202125295748.a n = A075897 n

end A075897

/-! ## A075897.P1700751107482244089

`A209229(n)+A151774(n)`
-/

namespace A075897.P1700751107482244089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n + A151774 n

end

end A075897.P1700751107482244089

namespace A075897

/-- `A209229(n)+A151774(n)` -/
def P1700751107482244089.Spec : Prop :=
  ∀ n, P1700751107482244089.a n = A075897 n

end A075897

/-!
# A075898: Numbers k such that 3^k + k^2 is prime.

The programs for A075898, there is no canonical definition to state claims against.
-/

/-! ## A075898.P5160440050100145061

`A029518(A029501(n+1))+1`
-/

namespace A075898.P5160440050100145061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029518 (A029501 (n + 1)).toNat + 1

end

end A075898.P5160440050100145061

/-! ## A075898.P15171574615866305435

`record[gcd(A098600(3*n+2), A111127(2*n+3))]`
-/

namespace A075898.P15171574615866305435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098600 (3 * n + 2)) (A111127 (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075898.P15171574615866305435

