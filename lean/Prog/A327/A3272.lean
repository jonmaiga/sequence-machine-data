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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
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
import Seq.B004.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A327200: Number of labeled graphs with n vertices and non-spanning edge-connectivity >= 2.

The programs for A327200, there is no canonical definition to state claims against.
-/

/-! ## A327200.P11386327054264983831

`A327078(n)-(A327231(n)+1)`
-/

namespace A327200.P11386327054264983831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327078 n - (A327231 n + 1)

end

end A327200.P11386327054264983831

/-! ## A327200.P17662472589872375389

`A056812(ceil((∑[n!]-n)/2)²)`
-/

namespace A327200.P17662472589872375389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056812 (⌈(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℚ) / 2⌉ ^ 2).toNat

end

end A327200.P17662472589872375389

/-!
# A327202: a(n) = [(2n+2)r] - [(n+2)r] - [nr], where [ ] = floor and r = (1+sqrt(5))/2.

The programs for A327202, the canonical program `A327202.P4862676345002138946` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327202 has offset 0).

The definition of A327202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327202.P11524855363848572780

`char[A327204(n+1)]`
-/

namespace A327202.P11524855363848572780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327202.P11524855363848572780

namespace A327202

/-- `char[A327204(n+1)]` -/
def P11524855363848572780.Spec : Prop :=
  ∀ n, (P11524855363848572780.a n : ℤ) = A327202 n

end A327202

/-! ## A327202.P4862676345002138946

`A096270(2*A089809(n+1)+n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327202

/-- `A096270(2*A089809(n+1)+n)` -/
def P4862676345002138946.Spec : Prop :=
  ∀ n, P4862676345002138946.a n = A327202 n

theorem P4862676345002138946.correct : P4862676345002138946.Spec := by
  intro n
  simp only [A327202]

end A327202

/-! ## A327202.P8011048304395450920

`A096270(A001965((n+1)*A096270(n)))`
-/

namespace A327202.P8011048304395450920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A001965 ((n + 1 : ℤ) * A096270 n).toNat).toNat

end

end A327202.P8011048304395450920

namespace A327202

/-- `A096270(A001965((n+1)*A096270(n)))` -/
def P8011048304395450920.Spec : Prop :=
  ∀ n, P8011048304395450920.a n = A327202 n

end A327202

/-! ## A327202.P16931405373751701193

`A096270(A214990(n+1))*A096270(n)`
-/

namespace A327202.P16931405373751701193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A214990 (n + 1)).toNat * A096270 n

end

end A327202.P16931405373751701193

namespace A327202

/-- `A096270(A214990(n+1))*A096270(n)` -/
def P16931405373751701193.Spec : Prop :=
  ∀ n, P16931405373751701193.a n = A327202 n

end A327202

/-! ## A327202.P10748959757477448013

`A096270(A089809(n+1)+A096270(n)+n)`
-/

namespace A327202.P10748959757477448013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A089809 (n + 1) + (A096270 n + (n : ℤ))).toNat

end

end A327202.P10748959757477448013

namespace A327202

/-- `A096270(A089809(n+1)+A096270(n)+n)` -/
def P10748959757477448013.Spec : Prop :=
  ∀ n, P10748959757477448013.a n = A327202 n

end A327202

/-! ## A327202.P13112162584419106438

`A096270(n)-A003849(n+1)*A339824(n)`
-/

namespace A327202.P13112162584419106438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n - A003849 (n + 1) * A339824 n

end

end A327202.P13112162584419106438

namespace A327202

/-- `A096270(n)-A003849(n+1)*A339824(n)` -/
def P13112162584419106438.Spec : Prop :=
  ∀ n, P13112162584419106438.a n = A327202 n

end A327202

/-! ## A327202.P17539335594569674074

`A004937(n+1)+A001468(n)-A003622(n+2)`
-/

namespace A327202.P17539335594569674074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (n + 1) + (A001468 n - A003622 (n + 2))

end

end A327202.P17539335594569674074

namespace A327202

/-- `A004937(n+1)+A001468(n)-A003622(n+2)` -/
def P17539335594569674074.Spec : Prop :=
  ∀ n, P17539335594569674074.a n = A327202 n

end A327202

/-! ## A327202.P699116043570608380

`Δ[floor(n/ϕ^3)]^Δ[A019446(n+1)]`
-/

namespace A327202.P699116043570608380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 3⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A327202.P699116043570608380

namespace A327202

/-- `Δ[floor(n/ϕ^3)]^Δ[A019446(n+1)]` -/
def P699116043570608380.Spec : Prop :=
  ∀ n, P699116043570608380.a n = (A327202 n : ℚ)

end A327202

/-! ## A327202.P11536099927297331962

`C(A001468(n), Δ[A022839(n+1)])`
-/

namespace A327202.P11536099927297331962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001468 n).toNat (f1 (n + 1) - f1 n).toNat

end

end A327202.P11536099927297331962

namespace A327202

/-- `C(A001468(n), Δ[A022839(n+1)])` -/
def P11536099927297331962.Spec : Prop :=
  ∀ n, (P11536099927297331962.a n : ℤ) = A327202 n

end A327202

/-! ## A327202.P16299047074033799460

`C(A001468(n), Δ[A190511(n+1)])`
-/

namespace A327202.P16299047074033799460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001468 n).toNat (f1 (n + 1) - f1 n).toNat

end

end A327202.P16299047074033799460

namespace A327202

/-- `C(A001468(n), Δ[A190511(n+1)])` -/
def P16299047074033799460.Spec : Prop :=
  ∀ n, (P16299047074033799460.a n : ℤ) = A327202 n

end A327202

/-! ## A327202.P4371613755109462995

`and(Δ[A089809(n+1)], A096270(n))`
-/

namespace A327202.P4371613755109462995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A096270 n)

end

end A327202.P4371613755109462995

namespace A327202

/-- `and(Δ[A089809(n+1)], A096270(n))` -/
def P4371613755109462995.Spec : Prop :=
  ∀ n, P4371613755109462995.a n = A327202 n

end A327202

/-! ## A327202.P12283699560971129930

`A078588(A078796(n+1)-A078588(n+1))`
-/

namespace A327202.P12283699560971129930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A078796 (n + 1) - A078588 (n + 1)).toNat

end

end A327202.P12283699560971129930

namespace A327202

/-- `A078588(A078796(n+1)-A078588(n+1))` -/
def P12283699560971129930.Spec : Prop :=
  ∀ n, P12283699560971129930.a n = A327202 n

end A327202

/-! ## A327202.P5121836860784941996

`A003849(n)+A078588(n+1)*A078588(n)`
-/

namespace A327202.P5121836860784941996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + A078588 (n + 1) * A078588 n

end

end A327202.P5121836860784941996

namespace A327202

/-- `A003849(n)+A078588(n+1)*A078588(n)` -/
def P5121836860784941996.Spec : Prop :=
  ∀ n, P5121836860784941996.a n = A327202 n

end A327202

/-! ## A327202.P11482327992657880490

`(A339825(n)+A339824(n+1))*A096270(n)`
-/

namespace A327202.P11482327992657880490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A339825 n + A339824 (n + 1)) * A096270 n

end

end A327202.P11482327992657880490

namespace A327202

/-- `(A339825(n)+A339824(n+1))*A096270(n)` -/
def P11482327992657880490.Spec : Prop :=
  ∀ n, P11482327992657880490.a n = A327202 n

end A327202

/-! ## A327202.P16900219378981801840

`A007067(n+1)+A003849(n)-A026355(n+1)`
-/

namespace A327202.P16900219378981801840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n + 1) + (A003849 n - A026355 (n + 1))

end

end A327202.P16900219378981801840

namespace A327202

/-- `A007067(n+1)+A003849(n)-A026355(n+1)` -/
def P16900219378981801840.Spec : Prop :=
  ∀ n, P16900219378981801840.a n = A327202 n

end A327202

/-! ## A327202.P7051561707913513891

`A007067(n+1)-(A066096(n)+A001468(n+1))`
-/

namespace A327202.P7051561707913513891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n + 1) - (A066096 n + A001468 (n + 1))

end

end A327202.P7051561707913513891

namespace A327202

/-- `A007067(n+1)-(A066096(n)+A001468(n+1))` -/
def P7051561707913513891.Spec : Prop :=
  ∀ n, P7051561707913513891.a n = A327202 n

end A327202

/-! ## A327202.P730733503501440555

`A007067(n+1)+A001468(n)-A000201(n+2)`
-/

namespace A327202.P730733503501440555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n + 1) + (A001468 n - A000201 (n + 2))

end

end A327202.P730733503501440555

namespace A327202

/-- `A007067(n+1)+A001468(n)-A000201(n+2)` -/
def P730733503501440555.Spec : Prop :=
  ∀ n, P730733503501440555.a n = A327202 n

end A327202

/-! ## A327202.P6142462804619246145

`A276867(n+1)+A368649(n+1)-A003231(n+2)`
-/

namespace A327202.P6142462804619246145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276867 (n + 1) + (A368649 (n + 1) - A003231 (n + 2))

end

end A327202.P6142462804619246145

namespace A327202

/-- `A276867(n+1)+A368649(n+1)-A003231(n+2)` -/
def P6142462804619246145.Spec : Prop :=
  ∀ n, P6142462804619246145.a n = A327202 n

end A327202

/-! ## A327202.P5049111933160918873

`A096270(A003622(2*(n+1))-A003622(n+2))`
-/

namespace A327202.P5049111933160918873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A003622 (2 * (n + 1)) - A003622 (n + 2)).toNat

end

end A327202.P5049111933160918873

namespace A327202

/-- `A096270(A003622(2*(n+1))-A003622(n+2))` -/
def P5049111933160918873.Spec : Prop :=
  ∀ n, P5049111933160918873.a n = A327202 n

end A327202

/-! ## A327202.P10182059286611495579

`A001468(n)-A003842(A007067(n+1))`
-/

namespace A327202.P10182059286611495579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n - A003842 (A007067 (n + 1)).toNat

end

end A327202.P10182059286611495579

namespace A327202

/-- `A001468(n)-A003842(A007067(n+1))` -/
def P10182059286611495579.Spec : Prop :=
  ∀ n, P10182059286611495579.a n = A327202 n

end A327202

/-!
# A327203: Positions of 0's in {A327202(n) : n > 0}.

The programs for A327203, the canonical program `A327203.P9862003509779695925` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327203 has offset 1).

The definition of A327203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7726 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327203.P827150113275084852

`A258590(Δ[A005653(n+1)])+A005653(n+1)`
-/

namespace A327203.P827150113275084852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258590 (f1 (n + 1) - f1 n).toNat + A005653 (n + 1)

end

end A327203.P827150113275084852

namespace A327203

/-- `A258590(Δ[A005653(n+1)])+A005653(n+1)` -/
def P827150113275084852.Spec : Prop :=
  ∀ n, P827150113275084852.a n = A327203 (n + 1)

end A327203

/-! ## A327203.P9862003509779695925

`A319433(A190430(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327203

/-- `A319433(A190430(n+1))` -/
def P9862003509779695925.Spec : Prop :=
  ∀ n, P9862003509779695925.a n = A327203 (n + 1)

theorem P9862003509779695925.correct : P9862003509779695925.Spec := by
  intro n
  simp only [A327203, Nat.add_sub_cancel]

end A327203

/-! ## A327203.P2991296431806790285

`∩[A022342(n+1), A188222(n+1)]`
-/

namespace A327203.P2991296431806790285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327203.P2991296431806790285

namespace A327203

/-- `∩[A022342(n+1), A188222(n+1)]` -/
def P2991296431806790285.Spec : Prop :=
  ∀ n, (P2991296431806790285.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P8631799114292652034

`A005206(A190430(n+1)+1)-1`
-/

namespace A327203.P8631799114292652034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A190430 (n + 1) + 1).toNat - 1

end

end A327203.P8631799114292652034

namespace A327203

/-- `A005206(A190430(n+1)+1)-1` -/
def P8631799114292652034.Spec : Prop :=
  ∀ n, P8631799114292652034.a n = A327203 (n + 1)

end A327203

/-! ## A327203.P12954305928173018616

`filter[A188222(n+1), A005614(#)]`
-/

namespace A327203.P12954305928173018616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005614 (f1 j).toNat = 1) n)

end

end A327203.P12954305928173018616

namespace A327203

/-- `filter[A188222(n+1), A005614(#)]` -/
def P12954305928173018616.Spec : Prop :=
  ∀ n, P12954305928173018616.a n = A327203 (n + 1)

end A327203

/-! ## A327203.P9290105018210005417

`A005653(n+1)-A003849(A005653(n+1))`
-/

namespace A327203.P9290105018210005417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1) - A003849 (A005653 (n + 1)).toNat

end

end A327203.P9290105018210005417

namespace A327203

/-- `A005653(n+1)-A003849(A005653(n+1))` -/
def P9290105018210005417.Spec : Prop :=
  ∀ n, P9290105018210005417.a n = A327203 (n + 1)

end A327203

/-! ## A327203.P889492971094700844

`lt[n*A327202(n), n]`
-/

namespace A327203.P889492971094700844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327202 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327203.P889492971094700844

namespace A327203

/-- `lt[n*A327202(n), n]` -/
def P889492971094700844.Spec : Prop :=
  ∀ n, (P889492971094700844.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P4881950839883325469

`lt[A327202(n+1), 1]+1`
-/

namespace A327203.P4881950839883325469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327203.P4881950839883325469

namespace A327203

/-- `lt[A327202(n+1), 1]+1` -/
def P4881950839883325469.Spec : Prop :=
  ∀ n, (P4881950839883325469.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P16854324461398751710

`eq[A000038(n), A327202(n)]`
-/

namespace A327203.P16854324461398751710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327203.P16854324461398751710

namespace A327203

/-- `eq[A000038(n), A327202(n)]` -/
def P16854324461398751710.Spec : Prop :=
  ∀ n, (P16854324461398751710.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P16811532811499441862

`eq[A000007(n), A327202(n)]`
-/

namespace A327203.P16811532811499441862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327203.P16811532811499441862

namespace A327203

/-- `eq[A000007(n), A327202(n)]` -/
def P16811532811499441862.Spec : Prop :=
  ∀ n, (P16811532811499441862.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P3675227227166508342

`eq[A130706(n), A327202(n)]`
-/

namespace A327203.P3675227227166508342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327203.P3675227227166508342

namespace A327203

/-- `eq[A130706(n), A327202(n)]` -/
def P3675227227166508342.Spec : Prop :=
  ∀ n, (P3675227227166508342.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P4700673951642497044

`eq[A169585(n), A327202(n)]`
-/

namespace A327203.P4700673951642497044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327203.P4700673951642497044

namespace A327203

/-- `eq[A169585(n), A327202(n)]` -/
def P4700673951642497044.Spec : Prop :=
  ∀ n, (P4700673951642497044.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P13365740807792206049

`eq[1, A327202(n)+A054977(n)]`
-/

namespace A327203.P13365740807792206049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n + A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327203.P13365740807792206049

namespace A327203

/-- `eq[1, A327202(n)+A054977(n)]` -/
def P13365740807792206049.Spec : Prop :=
  ∀ n, (P13365740807792206049.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P7668583833488070395

`eq[A154955(n+1), A327202(n)]`
-/

namespace A327203.P7668583833488070395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327203.P7668583833488070395

namespace A327203

/-- `eq[A154955(n+1), A327202(n)]` -/
def P7668583833488070395.Spec : Prop :=
  ∀ n, (P7668583833488070395.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P10852740680511739270

`eq[1, A327202(n)+A158388(n)]`
-/

namespace A327203.P10852740680511739270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n + A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327203.P10852740680511739270

namespace A327203

/-- `eq[1, A327202(n)+A158388(n)]` -/
def P10852740680511739270.Spec : Prop :=
  ∀ n, (P10852740680511739270.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P12748040362409036606

`lt[A114986(n), Δ[A001961(n+1)]]`
-/

namespace A327203.P12748040362409036606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327203.P12748040362409036606

namespace A327203

/-- `lt[A114986(n), Δ[A001961(n+1)]]` -/
def P12748040362409036606.Spec : Prop :=
  ∀ n, (P12748040362409036606.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P12223519396110245454

`lt[Δ[A007067(n)], A083368(n+2)]`
-/

namespace A327203.P12223519396110245454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A327203.P12223519396110245454

namespace A327203

/-- `lt[Δ[A007067(n)], A083368(n+2)]` -/
def P12223519396110245454.Spec : Prop :=
  ∀ n, (P12223519396110245454.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P12026696044121160339

`lt[A114986(n), ratio[A276863(n+1)]]`
-/

namespace A327203.P12026696044121160339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A327203.P12026696044121160339

namespace A327203

/-- `lt[A114986(n), ratio[A276863(n+1)]]` -/
def P12026696044121160339.Spec : Prop :=
  ∀ n, (P12026696044121160339.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P17349004265663595614

`lt[A076662(n+1), A276863(n+2)]`
-/

namespace A327203.P17349004265663595614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327203.P17349004265663595614

namespace A327203

/-- `lt[A076662(n+1), A276863(n+2)]` -/
def P17349004265663595614.Spec : Prop :=
  ∀ n, (P17349004265663595614.a n : ℤ) = A327203 (n + 1)

end A327203

/-! ## A327203.P8958797675687198878

`lt[Δ[A188432(n+1)], A089809(n+1)]`
-/

namespace A327203.P8958797675687198878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A327203.P8958797675687198878

namespace A327203

/-- `lt[Δ[A188432(n+1)], A089809(n+1)]` -/
def P8958797675687198878.Spec : Prop :=
  ∀ n, (P8958797675687198878.a n : ℤ) = A327203 (n + 1)

end A327203

/-!
# A327204: Positions of 1's in {A327202(n) : n > 0}.

The programs for A327204, the canonical program `A327204.P13706687149448486667` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327204 has offset 1).

The definition of A327204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327204.P2987239888971607677

`A318921(Δ[A005652(n+1)])+A005652(n+1)`
-/

namespace A327204.P2987239888971607677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (f1 (n + 1) - f1 n).toNat + A005652 (n + 1)

end

end A327204.P2987239888971607677

namespace A327204

/-- `A318921(Δ[A005652(n+1)])+A005652(n+1)` -/
def P2987239888971607677.Spec : Prop :=
  ∀ n, P2987239888971607677.a n = A327204 (n + 1)

end A327204

/-! ## A327204.P13706687149448486667

`lt[0, A327202(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327204

/-- `lt[0, A327202(n)]` -/
def P13706687149448486667.Spec : Prop :=
  ∀ n, (P13706687149448486667.a n : ℤ) = A327204 (n + 1)

theorem P13706687149448486667.correct : P13706687149448486667.Spec := by
  intro n
  simp only [A327204, Nat.add_sub_cancel]

end A327204

/-! ## A327204.P4610410773660671883

`record[(n+1)*A327202(n+1)]`
-/

namespace A327204.P4610410773660671883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327204.P4610410773660671883

namespace A327204

/-- `record[(n+1)*A327202(n+1)]` -/
def P4610410773660671883.Spec : Prop :=
  ∀ n, P4610410773660671883.a n = A327204 (n + 1)

end A327204

/-! ## A327204.P9148893946168575348

`filter[A001965(n), A327202(#)]`
-/

namespace A327204.P9148893946168575348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327202 (f1 j).toNat = 1) n)

end

end A327204.P9148893946168575348

namespace A327204

/-- `filter[A001965(n), A327202(#)]` -/
def P9148893946168575348.Spec : Prop :=
  ∀ n, P9148893946168575348.a n = A327204 (n + 1)

end A327204

/-! ## A327204.P14792205700279221961

`filter[A066096(n), A327202(#)]`
-/

namespace A327204.P14792205700279221961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327202 (f1 j).toNat = 1) n)

end

end A327204.P14792205700279221961

namespace A327204

/-- `filter[A066096(n), A327202(#)]` -/
def P14792205700279221961.Spec : Prop :=
  ∀ n, P14792205700279221961.a n = A327204 (n + 1)

end A327204

/-! ## A327204.P14809989253025554169

`eq[A054977(n), A327202(n)]`
-/

namespace A327204.P14809989253025554169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327204.P14809989253025554169

namespace A327204

/-- `eq[A054977(n), A327202(n)]` -/
def P14809989253025554169.Spec : Prop :=
  ∀ n, (P14809989253025554169.a n : ℤ) = A327204 (n + 1)

end A327204

/-! ## A327204.P13377568912230860440

`eq[A158388(n), A327202(n)]`
-/

namespace A327204.P13377568912230860440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327204.P13377568912230860440

namespace A327204

/-- `eq[A158388(n), A327202(n)]` -/
def P13377568912230860440.Spec : Prop :=
  ∀ n, (P13377568912230860440.a n : ℤ) = A327204 (n + 1)

end A327204

/-! ## A327204.P14532918579472446775

`eq[A327202(n), A329684(n)]`
-/

namespace A327204.P14532918579472446775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327204.P14532918579472446775

namespace A327204

/-- `eq[A327202(n), A329684(n)]` -/
def P14532918579472446775.Spec : Prop :=
  ∀ n, (P14532918579472446775.a n : ℤ) = A327204 (n + 1)

end A327204

/-! ## A327204.P14361399795093747732

`filter[A000201(n+1), A327202(#)]`
-/

namespace A327204.P14361399795093747732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327202 (f1 j).toNat = 1) n)

end

end A327204.P14361399795093747732

namespace A327204

/-- `filter[A000201(n+1), A327202(#)]` -/
def P14361399795093747732.Spec : Prop :=
  ∀ n, P14361399795093747732.a n = A327204 (n + 1)

end A327204

/-! ## A327204.P17844080822966571760

`eq[A283149(n+1), A327202(n)]`
-/

namespace A327204.P17844080822966571760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327204.P17844080822966571760

namespace A327204

/-- `eq[A283149(n+1), A327202(n)]` -/
def P17844080822966571760.Spec : Prop :=
  ∀ n, (P17844080822966571760.a n : ℤ) = A327204 (n + 1)

end A327204

/-! ## A327204.P17787420121538242210

`eq[1, A327202(n*A327202(n))]`
-/

namespace A327204.P17787420121538242210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 ((n : ℤ) * A327202 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327204.P17787420121538242210

namespace A327204

/-- `eq[1, A327202(n*A327202(n))]` -/
def P17787420121538242210.Spec : Prop :=
  ∀ n, (P17787420121538242210.a n : ℤ) = A327204 (n + 1)

end A327204

/-! ## A327204.P2211620928359509756

`eq[(A000038(n)-1)², A327202(n)]`
-/

namespace A327204.P2211620928359509756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327204.P2211620928359509756

namespace A327204

/-- `eq[(A000038(n)-1)², A327202(n)]` -/
def P2211620928359509756.Spec : Prop :=
  ∀ n, (P2211620928359509756.a n : ℤ) = A327204 (n + 1)

end A327204

/-! ## A327204.P4859524529854029497

`eq[(1-A063667(n))², A327202(n)]`
-/

namespace A327204.P4859524529854029497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A063667 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327204.P4859524529854029497

namespace A327204

/-- `eq[(1-A063667(n))², A327202(n)]` -/
def P4859524529854029497.Spec : Prop :=
  ∀ n, (P4859524529854029497.a n : ℤ) = A327204 (n + 1)

end A327204

/-! ## A327204.P701704408696116097

`A005652(n+2)-(A089809(A005652(n+1)+1)+1)`
-/

namespace A327204.P701704408696116097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 2) - (A089809 (A005652 (n + 1) + 1).toNat + 1)

end

end A327204.P701704408696116097

namespace A327204

/-- `A005652(n+2)-(A089809(A005652(n+1)+1)+1)` -/
def P701704408696116097.Spec : Prop :=
  ∀ n, P701704408696116097.a n = A327204 (n + 1)

end A327204

/-! ## A327204.P18181586422965280379

`A120613(A005652(n+2))`
-/

namespace A327204.P18181586422965280379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (A005652 (n + 2)).toNat

end

end A327204.P18181586422965280379

namespace A327204

/-- `A120613(A005652(n+2))` -/
def P18181586422965280379.Spec : Prop :=
  ∀ n, P18181586422965280379.a n = A327204 (n + 1)

end A327204

/-! ## A327204.P2529583945936052702

`A120613(A279934(n+2)-1)`
-/

namespace A327204.P2529583945936052702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (A279934 (n + 2) - 1).toNat

end

end A327204.P2529583945936052702

namespace A327204

/-- `A120613(A279934(n+2)-1)` -/
def P2529583945936052702.Spec : Prop :=
  ∀ n, P2529583945936052702.a n = A327204 (n + 1)

end A327204

/-! ## A327204.P17430097632316545464

`lt[A076662(n+2), A276863(n+1)]`
-/

namespace A327204.P17430097632316545464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076662 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327204.P17430097632316545464

namespace A327204

/-- `lt[A076662(n+2), A276863(n+1)]` -/
def P17430097632316545464.Spec : Prop :=
  ∀ n, (P17430097632316545464.a n : ℤ) = A327204 (n + 1)

end A327204

/-! ## A327204.P1340063878096668619

`lt[A276863(n+2), A276867(n+1)]`
-/

namespace A327204.P1340063878096668619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327204.P1340063878096668619

namespace A327204

/-- `lt[A276863(n+2), A276867(n+1)]` -/
def P1340063878096668619.Spec : Prop :=
  ∀ n, (P1340063878096668619.a n : ℤ) = A327204 (n + 1)

end A327204

/-! ## A327204.P3968964689036738490

`eq[Δ[A005206(2*n+1)], A096270(n)]`
-/

namespace A327204.P3968964689036738490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A327204.P3968964689036738490

namespace A327204

/-- `eq[Δ[A005206(2*n+1)], A096270(n)]` -/
def P3968964689036738490.Spec : Prop :=
  ∀ n, (P3968964689036738490.a n : ℤ) = A327204 (n + 1)

end A327204

/-! ## A327204.P13334572411075284546

`lt[ratio[A276863(n+1)+A114986(n)], 1]`
-/

namespace A327204.P13334572411075284546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (n + 1) + A114986 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A327204.P13334572411075284546

namespace A327204

/-- `lt[ratio[A276863(n+1)+A114986(n)], 1]` -/
def P13334572411075284546.Spec : Prop :=
  ∀ n, (P13334572411075284546.a n : ℤ) = A327204 (n + 1)

end A327204

/-!
# A327205: a(n) = [(2n+2)r] - [(n+2)r] - [nr], where [ ] = floor and r = sqrt(2).

The programs for A327205, the canonical program `A327205.P854694592881596088` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327205 has offset 0).

The definition of A327205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327205.P5262120496994619286

`char[A327207(n+1)]`
-/

namespace A327205.P5262120496994619286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327205.P5262120496994619286

namespace A327205

/-- `char[A327207(n+1)]` -/
def P5262120496994619286.Spec : Prop :=
  ∀ n, (P5262120496994619286.a n : ℤ) = A327205 n

end A327205

/-! ## A327205.P854694592881596088

`A022842(n+1)-A191406(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327205

/-- `A022842(n+1)-A191406(n)` -/
def P854694592881596088.Spec : Prop :=
  ∀ n, P854694592881596088.a n = A327205 n

theorem P854694592881596088.correct : P854694592881596088.Spec := by
  intro n
  simp only [A327205]

end A327205

/-! ## A327205.P5754883763771299413

`A018245(n+1)%A080763(n+1)`
-/

namespace A327205.P5754883763771299413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018245 (n + 1)) (A080763 (n + 1))

end

end A327205.P5754883763771299413

namespace A327205

/-- `A018245(n+1)%A080763(n+1)` -/
def P5754883763771299413.Spec : Prop :=
  ∀ n, P5754883763771299413.a n = A327205 n

end A327205

/-! ## A327205.P16527236373484695033

`A276858(n+1)%A080763(n+1)`
-/

namespace A327205.P16527236373484695033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276858 (n + 1)) (A080763 (n + 1))

end

end A327205.P16527236373484695033

namespace A327205

/-- `A276858(n+1)%A080763(n+1)` -/
def P16527236373484695033.Spec : Prop :=
  ∀ n, P16527236373484695033.a n = A327205 n

end A327205

/-! ## A327205.P7842046716519620576

`and(A006337(n+1), A018245(n+1))`
-/

namespace A327205.P7842046716519620576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006337 (n + 1)) (A018245 (n + 1))

end

end A327205.P7842046716519620576

namespace A327205

/-- `and(A006337(n+1), A018245(n+1))` -/
def P7842046716519620576.Spec : Prop :=
  ∀ n, P7842046716519620576.a n = A327205 n

end A327205

/-! ## A327205.P7021402682031872209

`and(A018245(n+1), A144611(n+1))`
-/

namespace A327205.P7021402682031872209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018245 (n + 1)) (A144611 (n + 1))

end

end A327205.P7021402682031872209

namespace A327205

/-- `and(A018245(n+1), A144611(n+1))` -/
def P7021402682031872209.Spec : Prop :=
  ∀ n, P7021402682031872209.a n = A327205 n

end A327205

/-! ## A327205.P3095719467277341286

`A022846(n+1)-(A006337(n+1)+A001951(n))`
-/

namespace A327205.P3095719467277341286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 1) - (A006337 (n + 1) + A001951 n)

end

end A327205.P3095719467277341286

namespace A327205

/-- `A022846(n+1)-(A006337(n+1)+A001951(n))` -/
def P3095719467277341286.Spec : Prop :=
  ∀ n, P3095719467277341286.a n = A327205 n

end A327205

/-! ## A327205.P5317608980882164285

`and(A188038(2*(n+1)), A276864(n+2))`
-/

namespace A327205.P5317608980882164285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188038 (2 * (n + 1))) (A276864 (n + 2))

end

end A327205.P5317608980882164285

namespace A327205

/-- `and(A188038(2*(n+1)), A276864(n+2))` -/
def P5317608980882164285.Spec : Prop :=
  ∀ n, P5317608980882164285.a n = A327205 n

end A327205

/-! ## A327205.P1234870666940461679

`Δ[A195119(n+1)]*A188038(2*(n+1))`
-/

namespace A327205.P1234870666940461679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A188038 (2 * (n + 1))

end

end A327205.P1234870666940461679

namespace A327205

/-- `Δ[A195119(n+1)]*A188038(2*(n+1))` -/
def P1234870666940461679.Spec : Prop :=
  ∀ n, P1234870666940461679.a n = A327205 n

end A327205

/-! ## A327205.P6510075302919780603

`and(Δ[A001951(n+1)], A188038(2*(n+1)))`
-/

namespace A327205.P6510075302919780603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A188038 (2 * (n + 1)))

end

end A327205.P6510075302919780603

namespace A327205

/-- `and(Δ[A001951(n+1)], A188038(2*(n+1)))` -/
def P6510075302919780603.Spec : Prop :=
  ∀ n, P6510075302919780603.a n = A327205 n

end A327205

/-! ## A327205.P12211865040460317938

`(1-A188037(n+2))*A188038(2*(n+1))`
-/

namespace A327205.P12211865040460317938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A188037 (n + 2)) * A188038 (2 * (n + 1))

end

end A327205.P12211865040460317938

namespace A327205

/-- `(1-A188037(n+2))*A188038(2*(n+1))` -/
def P12211865040460317938.Spec : Prop :=
  ∀ n, P12211865040460317938.a n = A327205 n

end A327205

/-! ## A327205.P8476119028048633889

`A049472(Δ[A001951(2*n)-A001951(n+1)])`
-/

namespace A327205.P8476119028048633889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n) - A001951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (f1 (n + 1) - f1 n).toNat

end

end A327205.P8476119028048633889

namespace A327205

/-- `A049472(Δ[A001951(2*n)-A001951(n+1)])` -/
def P8476119028048633889.Spec : Prop :=
  ∀ n, P8476119028048633889.a n = A327205 n

end A327205

/-! ## A327205.P8862074978637550634

`A188038(2*(n+1))*A188038(Δ[A001951(n+1)])`
-/

namespace A327205.P8862074978637550634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (2 * (n + 1)) * A188038 (f1 (n + 1) - f1 n).toNat

end

end A327205.P8862074978637550634

namespace A327205

/-- `A188038(2*(n+1))*A188038(Δ[A001951(n+1)])` -/
def P8862074978637550634.Spec : Prop :=
  ∀ n, P8862074978637550634.a n = A327205 n

end A327205

/-! ## A327205.P4782539763231254009

`A087057(2*(n+1))-(A087057(n+2)+A049472(2*n))`
-/

namespace A327205.P4782539763231254009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (2 * (n + 1)) - (A087057 (n + 2) + A049472 (2 * n))

end

end A327205.P4782539763231254009

namespace A327205

/-- `A087057(2*(n+1))-(A087057(n+2)+A049472(2*n))` -/
def P4782539763231254009.Spec : Prop :=
  ∀ n, P4782539763231254009.a n = A327205 n

end A327205

/-! ## A327205.P8755463028100843368

`(A188037(2*n+1)+A188037(2*(n+1)))*A187972(n+2)`
-/

namespace A327205.P8755463028100843368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A188037 (2 * n + 1) + A188037 (2 * (n + 1))) * A187972 (n + 2)

end

end A327205.P8755463028100843368

namespace A327205

/-- `(A188037(2*n+1)+A188037(2*(n+1)))*A187972(n+2)` -/
def P8755463028100843368.Spec : Prop :=
  ∀ n, P8755463028100843368.a n = A327205 n

end A327205

/-! ## A327205.P8162881655677085567

`A144611(A003151(2*(n+1))-A003151(n+2))`
-/

namespace A327205.P8162881655677085567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A003151 (2 * (n + 1)) - A003151 (n + 2)).toNat

end

end A327205.P8162881655677085567

namespace A327205

/-- `A144611(A003151(2*(n+1))-A003151(n+2))` -/
def P8162881655677085567.Spec : Prop :=
  ∀ n, P8162881655677085567.a n = A327205 n

end A327205

/-! ## A327205.P12805131769313391829

`A144611(A286666(2*(n+1))-A286666(n+2))`
-/

namespace A327205.P12805131769313391829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A286666 (2 * (n + 1)) - A286666 (n + 2)).toNat

end

end A327205.P12805131769313391829

namespace A327205

/-- `A144611(A286666(2*(n+1))-A286666(n+2))` -/
def P12805131769313391829.Spec : Prop :=
  ∀ n, P12805131769313391829.a n = A327205 n

end A327205

/-! ## A327205.P9957354732204289020

`A188038(2*(n+1))*A188038(A003151(n+2))`
-/

namespace A327205.P9957354732204289020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (2 * (n + 1)) * A188038 (A003151 (n + 2)).toNat

end

end A327205.P9957354732204289020

namespace A327205

/-- `A188038(2*(n+1))*A188038(A003151(n+2))` -/
def P9957354732204289020.Spec : Prop :=
  ∀ n, P9957354732204289020.a n = A327205 n

end A327205

/-! ## A327205.P11053613852288223064

`A188038(2*(n+1))*A188038(A003153(n+2))`
-/

namespace A327205.P11053613852288223064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (2 * (n + 1)) * A188038 (A003153 (n + 2)).toNat

end

end A327205.P11053613852288223064

namespace A327205

/-- `A188038(2*(n+1))*A188038(A003153(n+2))` -/
def P11053613852288223064.Spec : Prop :=
  ∀ n, P11053613852288223064.a n = A327205 n

end A327205

/-! ## A327205.P1436886071902491701

`A188038(2*(n+1))*A188038(A026252(n+2))`
-/

namespace A327205.P1436886071902491701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (2 * (n + 1)) * A188038 (A026252 (n + 2)).toNat

end

end A327205.P1436886071902491701

namespace A327205

/-- `A188038(2*(n+1))*A188038(A026252(n+2))` -/
def P1436886071902491701.Spec : Prop :=
  ∀ n, P1436886071902491701.a n = A327205 n

end A327205

/-!
# A327206: Positions of 0's in {A327205(n) : n > 0}.

The programs for A327206, the canonical program `A327206.P13737605688350455278` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327206 has offset 1).

The definition of A327206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327206.P13737605688350455278

`∪[A190337(n+1), A286666(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A327206

/-- `∪[A190337(n+1), A286666(n+1)]` -/
def P13737605688350455278.Spec : Prop :=
  ∀ n, (P13737605688350455278.a n : ℤ) = A327206 (n + 1)

theorem P13737605688350455278.correct : P13737605688350455278.Spec := by
  intro n
  simp only [A327206, Nat.add_sub_cancel]

end A327206

/-! ## A327206.P4675081316693499306

`lt[n*A327205(n), n]`
-/

namespace A327206.P4675081316693499306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327205 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327206.P4675081316693499306

namespace A327206

/-- `lt[n*A327205(n), n]` -/
def P4675081316693499306.Spec : Prop :=
  ∀ n, (P4675081316693499306.a n : ℤ) = A327206 (n + 1)

end A327206

/-! ## A327206.P17986106716247447099

`lt[A327205(n+1), 1]+1`
-/

namespace A327206.P17986106716247447099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327206.P17986106716247447099

namespace A327206

/-- `lt[A327205(n+1), 1]+1` -/
def P17986106716247447099.Spec : Prop :=
  ∀ n, (P17986106716247447099.a n : ℤ) = A327206 (n + 1)

end A327206

/-! ## A327206.P4227250741733912597

`eq[A000007(n), A327205(n)]`
-/

namespace A327206.P4227250741733912597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327206.P4227250741733912597

namespace A327206

/-- `eq[A000007(n), A327205(n)]` -/
def P4227250741733912597.Spec : Prop :=
  ∀ n, (P4227250741733912597.a n : ℤ) = A327206 (n + 1)

end A327206

/-! ## A327206.P11408928537896385677

`eq[A000038(n), A327205(n)]`
-/

namespace A327206.P11408928537896385677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327206.P11408928537896385677

namespace A327206

/-- `eq[A000038(n), A327205(n)]` -/
def P11408928537896385677.Spec : Prop :=
  ∀ n, (P11408928537896385677.a n : ℤ) = A327206 (n + 1)

end A327206

/-! ## A327206.P17091640036512991542

`eq[1, A327205(n)+A054977(n)]`
-/

namespace A327206.P17091640036512991542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n + A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327206.P17091640036512991542

namespace A327206

/-- `eq[1, A327205(n)+A054977(n)]` -/
def P17091640036512991542.Spec : Prop :=
  ∀ n, (P17091640036512991542.a n : ℤ) = A327206 (n + 1)

end A327206

/-! ## A327206.P11078066635229103389

`eq[1, A327205(n)+A158388(n)]`
-/

namespace A327206.P11078066635229103389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n + A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327206.P11078066635229103389

namespace A327206

/-- `eq[1, A327205(n)+A158388(n)]` -/
def P11078066635229103389.Spec : Prop :=
  ∀ n, (P11078066635229103389.a n : ℤ) = A327206 (n + 1)

end A327206

/-! ## A327206.P7406004265657758067

`eq[A327205(round(2/(n+1))), A327205(n)]`
-/

namespace A327206.P7406004265657758067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 (SequenceMachineLib.roundAway (2 / (n + 1 : ℚ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327206.P7406004265657758067

namespace A327206

/-- `eq[A327205(round(2/(n+1))), A327205(n)]` -/
def P7406004265657758067.Spec : Prop :=
  ∀ n, (P7406004265657758067.a n : ℤ) = A327206 (n + 1)

end A327206

/-! ## A327206.P6098525601517711234

`record[Δ[A327222(n)]+1-A327222(n)+n]`
-/

namespace A327206.P6098525601517711234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (1 - A327222 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327206.P6098525601517711234

namespace A327206

/-- `record[Δ[A327222(n)]+1-A327222(n)+n]` -/
def P6098525601517711234.Spec : Prop :=
  ∀ n, P6098525601517711234.a n = A327206 (n + 1)

end A327206

/-! ## A327206.P13249297172987660512

`record[n+1-A000005(n+1)*A327205(n+1)]`
-/

namespace A327206.P13249297172987660512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1) * A327205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327206.P13249297172987660512

namespace A327206

/-- `record[n+1-A000005(n+1)*A327205(n+1)]` -/
def P13249297172987660512.Spec : Prop :=
  ∀ n, P13249297172987660512.a n = A327206 (n + 1)

end A327206

/-! ## A327206.P13787286304388279580

`record[n+1-A000040(n+1)*A327205(n+1)]`
-/

namespace A327206.P13787286304388279580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A327205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327206.P13787286304388279580

namespace A327206

/-- `record[n+1-A000040(n+1)*A327205(n+1)]` -/
def P13787286304388279580.Spec : Prop :=
  ∀ n, P13787286304388279580.a n = A327206 (n + 1)

end A327206

/-! ## A327206.P16476569458236702095

`record[A327222(n+1)+(n+1)*(1-A327222(n))]`
-/

namespace A327206.P16476569458236702095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 (n + 1) + (n + 1 : ℤ) * (1 - A327222 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327206.P16476569458236702095

namespace A327206

/-- `record[A327222(n+1)+(n+1)*(1-A327222(n))]` -/
def P16476569458236702095.Spec : Prop :=
  ∀ n, P16476569458236702095.a n = A327206 (n + 1)

end A327206

/-! ## A327206.P11071312754526503448

`lt[Δ[A289036(2*(n+1))], A276864(n+2)]`
-/

namespace A327206.P11071312754526503448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A327206.P11071312754526503448

namespace A327206

/-- `lt[Δ[A289036(2*(n+1))], A276864(n+2)]` -/
def P11071312754526503448.Spec : Prop :=
  ∀ n, (P11071312754526503448.a n : ℤ) = A327206 (n + 1)

end A327206

/-! ## A327206.P15721831322966686281

`lt[A188038(A004277(n)+2), A006337(n+1)]`
-/

namespace A327206.P15721831322966686281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (A004277 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327206.P15721831322966686281

namespace A327206

/-- `lt[A188038(A004277(n)+2), A006337(n+1)]` -/
def P15721831322966686281.Spec : Prop :=
  ∀ n, (P15721831322966686281.a n : ℤ) = A327206 (n + 1)

end A327206

/-! ## A327206.P14030914201844866157

`eq[A144611(2*n)*A324772(2*n+1), A144611(n+1)]`
-/

namespace A327206.P14030914201844866157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (2 * n) * A324772 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327206.P14030914201844866157

namespace A327206

/-- `eq[A144611(2*n)*A324772(2*n+1), A144611(n+1)]` -/
def P14030914201844866157.Spec : Prop :=
  ∀ n, (P14030914201844866157.a n : ℤ) = A327206 (n + 1)

end A327206

/-!
# A327207: Positions of 1's in {A327205(n) : n > 0}.

The programs for A327207, the canonical program `A327207.P10451738580629158760` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327207 has offset 1).

The definition of A327207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327207.P8581292800260519525

`A327224(n+1)+A327222(record[(n+1)*A327222(n)])`
-/

namespace A327207.P8581292800260519525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327224 (n + 1) + A327222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327207.P8581292800260519525

namespace A327207

/-- `A327224(n+1)+A327222(record[(n+1)*A327222(n)])` -/
def P8581292800260519525.Spec : Prop :=
  ∀ n, P8581292800260519525.a n = A327207 (n + 1)

end A327207

/-! ## A327207.P10451738580629158760

`lt[0, A327205(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327207

/-- `lt[0, A327205(n)]` -/
def P10451738580629158760.Spec : Prop :=
  ∀ n, (P10451738580629158760.a n : ℤ) = A327207 (n + 1)

theorem P10451738580629158760.correct : P10451738580629158760.Spec := by
  intro n
  simp only [A327207, Nat.add_sub_cancel]

end A327207

/-! ## A327207.P5751883748116225903

`eq[1, A327205(n+1)]+1`
-/

namespace A327207.P5751883748116225903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327207.P5751883748116225903

namespace A327207

/-- `eq[1, A327205(n+1)]+1` -/
def P5751883748116225903.Spec : Prop :=
  ∀ n, (P5751883748116225903.a n : ℤ) = A327207 (n + 1)

end A327207

/-! ## A327207.P8777232889426001782

`eq[A000038(n)!, A327205(n)]`
-/

namespace A327207.P8777232889426001782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327207.P8777232889426001782

namespace A327207

/-- `eq[A000038(n)!, A327205(n)]` -/
def P8777232889426001782.Spec : Prop :=
  ∀ n, (P8777232889426001782.a n : ℤ) = A327207 (n + 1)

end A327207

/-! ## A327207.P16810682378481803983

`eq[1, A327205(n*A327205(n))]`
-/

namespace A327207.P16810682378481803983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 ((n : ℤ) * A327205 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327207.P16810682378481803983

namespace A327207

/-- `eq[1, A327205(n*A327205(n))]` -/
def P16810682378481803983.Spec : Prop :=
  ∀ n, (P16810682378481803983.a n : ℤ) = A327207 (n + 1)

end A327207

/-! ## A327207.P9695434867354063804

`A327224(n+1)+A327222(A327224(n+1)-1)`
-/

namespace A327207.P9695434867354063804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327224 (n + 1) + A327222 (A327224 (n + 1) - 1).toNat

end

end A327207.P9695434867354063804

namespace A327207

/-- `A327224(n+1)+A327222(A327224(n+1)-1)` -/
def P9695434867354063804.Spec : Prop :=
  ∀ n, P9695434867354063804.a n = A327207 (n + 1)

end A327207

/-! ## A327207.P5717108771533560040

`A327224(n+1)+A327222(eq[1, A327222(n+1)])`
-/

namespace A327207.P5717108771533560040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327224 (n + 1) + A327222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327207.P5717108771533560040

namespace A327207

/-- `A327224(n+1)+A327222(eq[1, A327222(n+1)])` -/
def P5717108771533560040.Spec : Prop :=
  ∀ n, P5717108771533560040.a n = A327207 (n + 1)

end A327207

/-! ## A327207.P15138310945420183153

`lt[n*char[A327206(n+1)], n]`
-/

namespace A327207.P15138310945420183153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327206 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A327207.P15138310945420183153

namespace A327207

/-- `lt[n*char[A327206(n+1)], n]` -/
def P15138310945420183153.Spec : Prop :=
  ∀ n, (P15138310945420183153.a n : ℤ) = A327207 (n + 1)

end A327207

/-! ## A327207.P9427000791394853841

`eq[A054977(n), A327205(n)]`
-/

namespace A327207.P9427000791394853841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327207.P9427000791394853841

namespace A327207

/-- `eq[A054977(n), A327205(n)]` -/
def P9427000791394853841.Spec : Prop :=
  ∀ n, (P9427000791394853841.a n : ℤ) = A327207 (n + 1)

end A327207

/-! ## A327207.P14022782300587145577

`eq[A141044(n), A327205(n)]`
-/

namespace A327207.P14022782300587145577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327207.P14022782300587145577

namespace A327207

/-- `eq[A141044(n), A327205(n)]` -/
def P14022782300587145577.Spec : Prop :=
  ∀ n, (P14022782300587145577.a n : ℤ) = A327207 (n + 1)

end A327207

/-! ## A327207.P1105448756312260339

`eq[A158388(n), A327205(n)]`
-/

namespace A327207.P1105448756312260339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327207.P1105448756312260339

namespace A327207

/-- `eq[A158388(n), A327205(n)]` -/
def P1105448756312260339.Spec : Prop :=
  ∀ n, (P1105448756312260339.a n : ℤ) = A327207 (n + 1)

end A327207

/-! ## A327207.P7671917650147077356

`eq[A327205(n), A373565(n)]`
-/

namespace A327207.P7671917650147077356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327207.P7671917650147077356

namespace A327207

/-- `eq[A327205(n), A373565(n)]` -/
def P7671917650147077356.Spec : Prop :=
  ∀ n, (P7671917650147077356.a n : ℤ) = A327207 (n + 1)

end A327207

/-! ## A327207.P7087481278540417364

`eq[A006337(n+1), A327205(n)]`
-/

namespace A327207.P7087481278540417364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327207.P7087481278540417364

namespace A327207

/-- `eq[A006337(n+1), A327205(n)]` -/
def P7087481278540417364.Spec : Prop :=
  ∀ n, (P7087481278540417364.a n : ℤ) = A327207 (n + 1)

end A327207

/-! ## A327207.P11435565443311775398

`eq[A121273(n+1), A327205(n)]`
-/

namespace A327207.P11435565443311775398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327207.P11435565443311775398

namespace A327207

/-- `eq[A121273(n+1), A327205(n)]` -/
def P11435565443311775398.Spec : Prop :=
  ∀ n, (P11435565443311775398.a n : ℤ) = A327207 (n + 1)

end A327207

/-! ## A327207.P13315546489142632092

`eq[A138330(n+1), A327205(n)]`
-/

namespace A327207.P13315546489142632092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327207.P13315546489142632092

namespace A327207

/-- `eq[A138330(n+1), A327205(n)]` -/
def P13315546489142632092.Spec : Prop :=
  ∀ n, (P13315546489142632092.a n : ℤ) = A327207 (n + 1)

end A327207

/-! ## A327207.P8857099682750385340

`eq[A327205(n), A352177(n+1)]`
-/

namespace A327207.P8857099682750385340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327207.P8857099682750385340

namespace A327207

/-- `eq[A327205(n), A352177(n+1)]` -/
def P8857099682750385340.Spec : Prop :=
  ∀ n, (P8857099682750385340.a n : ℤ) = A327207 (n + 1)

end A327207

/-! ## A327207.P9162320462882077075

`filter[A173517(n), A327205(#)]`
-/

namespace A327207.P9162320462882077075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327205 (f1 j).toNat = 1) n)

end

end A327207.P9162320462882077075

namespace A327207

/-- `filter[A173517(n), A327205(#)]` -/
def P9162320462882077075.Spec : Prop :=
  ∀ n, P9162320462882077075.a n = A327207 (n + 1)

end A327207

/-! ## A327207.P14944713358769047128

`filter[A261094(n), A327205(#)]`
-/

namespace A327207.P14944713358769047128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327205 (f1 j).toNat = 1) n)

end

end A327207.P14944713358769047128

namespace A327207

/-- `filter[A261094(n), A327205(#)]` -/
def P14944713358769047128.Spec : Prop :=
  ∀ n, P14944713358769047128.a n = A327207 (n + 1)

end A327207

/-! ## A327207.P4029897972223363062

`filter[A092942(n), A327205(#)]`
-/

namespace A327207.P4029897972223363062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327205 (f1 j).toNat = 1) n)

end

end A327207.P4029897972223363062

namespace A327207

/-- `filter[A092942(n), A327205(#)]` -/
def P4029897972223363062.Spec : Prop :=
  ∀ n, P4029897972223363062.a n = A327207 (n + 1)

end A327207

/-! ## A327207.P4508415796024184015

`filter[A117909(n), A327205(#)]`
-/

namespace A327207.P4508415796024184015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327205 (f1 j).toNat = 1) n)

end

end A327207.P4508415796024184015

namespace A327207

/-- `filter[A117909(n), A327205(#)]` -/
def P4508415796024184015.Spec : Prop :=
  ∀ n, P4508415796024184015.a n = A327207 (n + 1)

end A327207

/-!
# A327208: a(n) = [(2n+2)r] - [(n+2)r] - [nr], where [ ] = floor and r = sqrt(3).

The programs for A327208, the canonical program `A327208.P1730275716523796910` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327208 has offset 0).

The definition of A327208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327208.P15082030526776645257

`char[A327210(n+1)]`
-/

namespace A327208.P15082030526776645257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327208.P15082030526776645257

namespace A327208

/-- `char[A327210(n+1)]` -/
def P15082030526776645257.Spec : Prop :=
  ∀ n, (P15082030526776645257.a n : ℤ) = A327208 n

end A327208

/-! ## A327208.P1730275716523796910

`A190669(abs(2*A190669(n+1)-(n+1))+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327208

/-- `A190669(abs(2*A190669(n+1)-(n+1))+1)` -/
def P1730275716523796910.Spec : Prop :=
  ∀ n, P1730275716523796910.a n = A327208 n

theorem P1730275716523796910.correct : P1730275716523796910.Spec := by
  intro n
  simp only [A327208]

end A327208

/-! ## A327208.P8942099647545676802

`and(Δ[A194028(n+1)], A188068(n+1))`
-/

namespace A327208.P8942099647545676802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A188068 (n + 1))

end

end A327208.P8942099647545676802

namespace A327208

/-- `and(Δ[A194028(n+1)], A188068(n+1))` -/
def P8942099647545676802.Spec : Prop :=
  ∀ n, P8942099647545676802.a n = A327208 n

end A327208

/-! ## A327208.P14094223901638680299

`A188068(n+1)*A188068(Δ[A194028(n+1)])`
-/

namespace A327208.P14094223901638680299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1) * A188068 (f1 (n + 1) - f1 n).toNat

end

end A327208.P14094223901638680299

namespace A327208

/-- `A188068(n+1)*A188068(Δ[A194028(n+1)])` -/
def P14094223901638680299.Spec : Prop :=
  ∀ n, P14094223901638680299.a n = A327208 n

end A327208

/-! ## A327208.P4479715115773431203

`A022838(2*(n+1))-(A172475(2*n)+A022838(n+2))`
-/

namespace A327208.P4479715115773431203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (2 * (n + 1)) - (A172475 (2 * n) + A022838 (n + 2))

end

end A327208.P4479715115773431203

namespace A327208

/-- `A022838(2*(n+1))-(A172475(2*n)+A022838(n+2))` -/
def P4479715115773431203.Spec : Prop :=
  ∀ n, P4479715115773431203.a n = A327208 n

end A327208

/-! ## A327208.P12559725804712534921

`A275855(A188069(n+1)+A188069(n+3))`
-/

namespace A327208.P12559725804712534921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (A188069 (n + 1) + A188069 (n + 3)).toNat

end

end A327208.P12559725804712534921

namespace A327208

/-- `A275855(A188069(n+1)+A188069(n+3))` -/
def P12559725804712534921.Spec : Prop :=
  ∀ n, P12559725804712534921.a n = A327208 n

end A327208

/-! ## A327208.P3948943310702782950

`A127001(A106232(n+1))`
-/

namespace A327208.P3948943310702782950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127001 (A106232 (n + 1)).toNat

end

end A327208.P3948943310702782950

namespace A327208

/-- `A127001(A106232(n+1))` -/
def P3948943310702782950.Spec : Prop :=
  ∀ n, P3948943310702782950.a n = A327208 n

end A327208

/-!
# A327209: Positions of 0's in {A327208(n) : n > 0}.

The programs for A327209, the canonical program `A327209.P6425017503248329216` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327209 has offset 1).

The definition of A327209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327209.P6425017503248329216

`A190670(n+1)-A010052(Δ[A190670(n+1)])`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327209

/-- `A190670(n+1)-A010052(Δ[A190670(n+1)])` -/
def P6425017503248329216.Spec : Prop :=
  ∀ n, P6425017503248329216.a n = A327209 (n + 1)

theorem P6425017503248329216.correct : P6425017503248329216.Spec := by
  intro n
  simp only [A327209, Nat.add_sub_cancel]

end A327209

/-! ## A327209.P7513806852277219512

`A190670(n+1)-A190669(Δ[A190670(n+1)])`
-/

namespace A327209.P7513806852277219512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190670 (n + 1) - A190669 (f1 (n + 1) - f1 n).toNat

end

end A327209.P7513806852277219512

namespace A327209

/-- `A190670(n+1)-A190669(Δ[A190670(n+1)])` -/
def P7513806852277219512.Spec : Prop :=
  ∀ n, P7513806852277219512.a n = A327209 (n + 1)

end A327209

/-! ## A327209.P11357923957581214384

`lt[n*A327208(n), n]`
-/

namespace A327209.P11357923957581214384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327208 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327209.P11357923957581214384

namespace A327209

/-- `lt[n*A327208(n), n]` -/
def P11357923957581214384.Spec : Prop :=
  ∀ n, (P11357923957581214384.a n : ℤ) = A327209 (n + 1)

end A327209

/-! ## A327209.P1469126350282878101

`lt[A327208(n+1), 1]+1`
-/

namespace A327209.P1469126350282878101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327209.P1469126350282878101

namespace A327209

/-- `lt[A327208(n+1), 1]+1` -/
def P1469126350282878101.Spec : Prop :=
  ∀ n, (P1469126350282878101.a n : ℤ) = A327209 (n + 1)

end A327209

/-! ## A327209.P3338299196764063807

`eq[A000007(n), A327208(n)]`
-/

namespace A327209.P3338299196764063807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327209.P3338299196764063807

namespace A327209

/-- `eq[A000007(n), A327208(n)]` -/
def P3338299196764063807.Spec : Prop :=
  ∀ n, (P3338299196764063807.a n : ℤ) = A327209 (n + 1)

end A327209

/-! ## A327209.P13165345593587357703

`eq[A000038(n), A327208(n)]`
-/

namespace A327209.P13165345593587357703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327209.P13165345593587357703

namespace A327209

/-- `eq[A000038(n), A327208(n)]` -/
def P13165345593587357703.Spec : Prop :=
  ∀ n, (P13165345593587357703.a n : ℤ) = A327209 (n + 1)

end A327209

/-! ## A327209.P10920196641745940714

`eq[1, A327208(n)+A054977(n)]`
-/

namespace A327209.P10920196641745940714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 n + A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327209.P10920196641745940714

namespace A327209

/-- `eq[1, A327208(n)+A054977(n)]` -/
def P10920196641745940714.Spec : Prop :=
  ∀ n, (P10920196641745940714.a n : ℤ) = A327209 (n + 1)

end A327209

/-! ## A327209.P1057393628694769237

`eq[1, A327208(n)+A158388(n)]`
-/

namespace A327209.P1057393628694769237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 n + A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327209.P1057393628694769237

namespace A327209

/-- `eq[1, A327208(n)+A158388(n)]` -/
def P1057393628694769237.Spec : Prop :=
  ∀ n, (P1057393628694769237.a n : ℤ) = A327209 (n + 1)

end A327209

/-! ## A327209.P6512672460275990623

`eq[and(1, A031131(n+1)), A327208(n)]`
-/

namespace A327209.P6512672460275990623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A031131 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327209.P6512672460275990623

namespace A327209

/-- `eq[and(1, A031131(n+1)), A327208(n)]` -/
def P6512672460275990623.Spec : Prop :=
  ∀ n, (P6512672460275990623.a n : ℤ) = A327209 (n + 1)

end A327209

/-! ## A327209.P2385319897087924337

`lt[2*A120864(n+2), A120864(2*(n+1))]`
-/

namespace A327209.P2385319897087924337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120864 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120864 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327209.P2385319897087924337

namespace A327209

/-- `lt[2*A120864(n+2), A120864(2*(n+1))]` -/
def P2385319897087924337.Spec : Prop :=
  ∀ n, (P2385319897087924337.a n : ℤ) = A327209 (n + 1)

end A327209

/-! ## A327209.P1155838437760674327

`eq[A275855(n+2)+A188082(2*n+1), A275855(2*n+1)]`
-/

namespace A327209.P1155838437760674327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (n + 2) + A188082 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327209.P1155838437760674327

namespace A327209

/-- `eq[A275855(n+2)+A188082(2*n+1), A275855(2*n+1)]` -/
def P1155838437760674327.Spec : Prop :=
  ∀ n, (P1155838437760674327.a n : ℤ) = A327209 (n + 1)

end A327209

/-! ## A327209.P17566517291747618149

`lt[A188068(2*(n+1)), A275855(2*n+1)+A188068(n+2)]`
-/

namespace A327209.P17566517291747618149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (2 * n + 1) + A188068 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327209.P17566517291747618149

namespace A327209

/-- `lt[A188068(2*(n+1)), A275855(2*n+1)+A188068(n+2)]` -/
def P17566517291747618149.Spec : Prop :=
  ∀ n, (P17566517291747618149.a n : ℤ) = A327209 (n + 1)

end A327209

/-! ## A327209.P10916935791853840658

`lt[A275855(n+2), A275855(2*n+1)+A275855(2*(n+1))]`
-/

namespace A327209.P10916935791853840658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (2 * n + 1) + A275855 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327209.P10916935791853840658

namespace A327209

/-- `lt[A275855(n+2), A275855(2*n+1)+A275855(2*(n+1))]` -/
def P10916935791853840658.Spec : Prop :=
  ∀ n, (P10916935791853840658.a n : ℤ) = A327209 (n + 1)

end A327209

/-! ## A327209.P15969155923090573708

`eq[and(1, A281702(n+1)), A327208(n)]`
-/

namespace A327209.P15969155923090573708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A281702 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327209.P15969155923090573708

namespace A327209

/-- `eq[and(1, A281702(n+1)), A327208(n)]` -/
def P15969155923090573708.Spec : Prop :=
  ∀ n, (P15969155923090573708.a n : ℤ) = A327209 (n + 1)

end A327209

/-! ## A327209.P15449112716644668610

`eq[and(2, A195744(n)), A327208(n)]`
-/

namespace A327209.P15449112716644668610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A195744 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327209.P15449112716644668610

namespace A327209

/-- `eq[and(2, A195744(n)), A327208(n)]` -/
def P15449112716644668610.Spec : Prop :=
  ∀ n, (P15449112716644668610.a n : ℤ) = A327209 (n + 1)

end A327209

/-!
# A327210: Positions of 1's in {A327208(n) : n > 0}.

The programs for A327210, the canonical program `A327210.P13644412801249598343` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327210 has offset 1).

The definition of A327210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327210.P4062289023656766557

`A190671(n+1)+A002372(Δ[A190671(n+1)])`
-/

namespace A327210.P4062289023656766557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1) + A002372 (f1 (n + 1) - f1 n).toNat

end

end A327210.P4062289023656766557

namespace A327210

/-- `A190671(n+1)+A002372(Δ[A190671(n+1)])` -/
def P4062289023656766557.Spec : Prop :=
  ∀ n, P4062289023656766557.a n = A327210 (n + 1)

end A327210

/-! ## A327210.P13644412801249598343

`A190671(n+1)+A005087(Δ[A190671(n+1)])`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327210

/-- `A190671(n+1)+A005087(Δ[A190671(n+1)])` -/
def P13644412801249598343.Spec : Prop :=
  ∀ n, P13644412801249598343.a n = A327210 (n + 1)

theorem P13644412801249598343.correct : P13644412801249598343.Spec := by
  intro n
  simp only [A327210, Nat.add_sub_cancel]

end A327210

/-! ## A327210.P5647331402998513116

`A190671(n+1)+A038189(Δ[A190671(n+1)])`
-/

namespace A327210.P5647331402998513116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1) + A038189 (f1 (n + 1) - f1 n).toNat

end

end A327210.P5647331402998513116

namespace A327210

/-- `A190671(n+1)+A038189(Δ[A190671(n+1)])` -/
def P5647331402998513116.Spec : Prop :=
  ∀ n, P5647331402998513116.a n = A327210 (n + 1)

end A327210

/-! ## A327210.P18312816618639716912

`A190671(n+1)+A113405(Δ[A190671(n+1)])`
-/

namespace A327210.P18312816618639716912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1) + A113405 (f1 (n + 1) - f1 n).toNat

end

end A327210.P18312816618639716912

namespace A327210

/-- `A190671(n+1)+A113405(Δ[A190671(n+1)])` -/
def P18312816618639716912.Spec : Prop :=
  ∀ n, P18312816618639716912.a n = A327210 (n + 1)

end A327210

/-! ## A327210.P12603334147580474588

`A190671(n+1)+A178455(Δ[A190671(n+1)])`
-/

namespace A327210.P12603334147580474588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1) + A178455 (f1 (n + 1) - f1 n).toNat

end

end A327210.P12603334147580474588

namespace A327210

/-- `A190671(n+1)+A178455(Δ[A190671(n+1)])` -/
def P12603334147580474588.Spec : Prop :=
  ∀ n, P12603334147580474588.a n = A327210 (n + 1)

end A327210

/-! ## A327210.P5829963696483952438

`lt[0, A327208(n)]`
-/

namespace A327210.P5829963696483952438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327210.P5829963696483952438

namespace A327210

/-- `lt[0, A327208(n)]` -/
def P5829963696483952438.Spec : Prop :=
  ∀ n, (P5829963696483952438.a n : ℤ) = A327210 (n + 1)

end A327210

/-! ## A327210.P2026313747055486146

`1+eq[1, A327208(n+1)]`
-/

namespace A327210.P2026313747055486146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327210.P2026313747055486146

namespace A327210

/-- `1+eq[1, A327208(n+1)]` -/
def P2026313747055486146.Spec : Prop :=
  ∀ n, (P2026313747055486146.a n : ℤ) = A327210 (n + 1)

end A327210

/-! ## A327210.P15650710338418234666

`eq[A054977(n), A327208(n)]`
-/

namespace A327210.P15650710338418234666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327210.P15650710338418234666

namespace A327210

/-- `eq[A054977(n), A327208(n)]` -/
def P15650710338418234666.Spec : Prop :=
  ∀ n, (P15650710338418234666.a n : ℤ) = A327210 (n + 1)

end A327210

/-! ## A327210.P6504577937865544488

`eq[A141044(n), A327208(n)]`
-/

namespace A327210.P6504577937865544488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327210.P6504577937865544488

namespace A327210

/-- `eq[A141044(n), A327208(n)]` -/
def P6504577937865544488.Spec : Prop :=
  ∀ n, (P6504577937865544488.a n : ℤ) = A327210 (n + 1)

end A327210

/-! ## A327210.P17427246074501148671

`eq[A158388(n), A327208(n)]`
-/

namespace A327210.P17427246074501148671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327210.P17427246074501148671

namespace A327210

/-- `eq[A158388(n), A327208(n)]` -/
def P17427246074501148671.Spec : Prop :=
  ∀ n, (P17427246074501148671.a n : ℤ) = A327210 (n + 1)

end A327210

/-! ## A327210.P7495241555602463986

`eq[A327208(n), A373565(n)]`
-/

namespace A327210.P7495241555602463986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327210.P7495241555602463986

namespace A327210

/-- `eq[A327208(n), A373565(n)]` -/
def P7495241555602463986.Spec : Prop :=
  ∀ n, (P7495241555602463986.a n : ℤ) = A327210 (n + 1)

end A327210

/-! ## A327210.P15060147349573472296

`eq[A121273(n+1), A327208(n)]`
-/

namespace A327210.P15060147349573472296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327210.P15060147349573472296

namespace A327210

/-- `eq[A121273(n+1), A327208(n)]` -/
def P15060147349573472296.Spec : Prop :=
  ∀ n, (P15060147349573472296.a n : ℤ) = A327210 (n + 1)

end A327210

/-! ## A327210.P14461583965418705927

`filter[A173517(n), A327208(#)]`
-/

namespace A327210.P14461583965418705927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327208 (f1 j).toNat = 1) n)

end

end A327210.P14461583965418705927

namespace A327210

/-- `filter[A173517(n), A327208(#)]` -/
def P14461583965418705927.Spec : Prop :=
  ∀ n, P14461583965418705927.a n = A327210 (n + 1)

end A327210

/-! ## A327210.P9360116737505493684

`filter[A092942(n), A327208(#)]`
-/

namespace A327210.P9360116737505493684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327208 (f1 j).toNat = 1) n)

end

end A327210.P9360116737505493684

namespace A327210

/-- `filter[A092942(n), A327208(#)]` -/
def P9360116737505493684.Spec : Prop :=
  ∀ n, P9360116737505493684.a n = A327210 (n + 1)

end A327210

/-! ## A327210.P12868883778741316696

`filter[A117909(n), A327208(#)]`
-/

namespace A327210.P12868883778741316696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327208 (f1 j).toNat = 1) n)

end

end A327210.P12868883778741316696

namespace A327210

/-- `filter[A117909(n), A327208(#)]` -/
def P12868883778741316696.Spec : Prop :=
  ∀ n, P12868883778741316696.a n = A327210 (n + 1)

end A327210

/-! ## A327210.P13153580752745691622

`filter[A083926(n), A327208(#)]`
-/

namespace A327210.P13153580752745691622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327208 (f1 j).toNat = 1) n)

end

end A327210.P13153580752745691622

namespace A327210

/-- `filter[A083926(n), A327208(#)]` -/
def P13153580752745691622.Spec : Prop :=
  ∀ n, P13153580752745691622.a n = A327210 (n + 1)

end A327210

/-! ## A327210.P1406892538732186551

`filter[A102390(n), A327208(#)]`
-/

namespace A327210.P1406892538732186551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327208 (f1 j).toNat = 1) n)

end

end A327210.P1406892538732186551

namespace A327210

/-- `filter[A102390(n), A327208(#)]` -/
def P1406892538732186551.Spec : Prop :=
  ∀ n, P1406892538732186551.a n = A327210 (n + 1)

end A327210

/-! ## A327210.P11905947268759317913

`filter[A027656(n), A327208(#)]`
-/

namespace A327210.P11905947268759317913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327208 (f1 j).toNat = 1) n)

end

end A327210.P11905947268759317913

namespace A327210

/-- `filter[A027656(n), A327208(#)]` -/
def P11905947268759317913.Spec : Prop :=
  ∀ n, P11905947268759317913.a n = A327210 (n + 1)

end A327210

/-! ## A327210.P160168421891680609

`filter[A057979(n), A327208(#)]`
-/

namespace A327210.P160168421891680609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327208 (f1 j).toNat = 1) n)

end

end A327210.P160168421891680609

namespace A327210

/-- `filter[A057979(n), A327208(#)]` -/
def P160168421891680609.Spec : Prop :=
  ∀ n, P160168421891680609.a n = A327210 (n + 1)

end A327210

/-! ## A327210.P14454215351212958336

`filter[A102389(n), A327208(#)]`
-/

namespace A327210.P14454215351212958336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327208 (f1 j).toNat = 1) n)

end

end A327210.P14454215351212958336

namespace A327210

/-- `filter[A102389(n), A327208(#)]` -/
def P14454215351212958336.Spec : Prop :=
  ∀ n, P14454215351212958336.a n = A327210 (n + 1)

end A327210

/-!
# A327211: a(n) = [(2n+2)e] - [(n+2)e] - [ne], where [ ] = floor.

The programs for A327211, the canonical program `A327211.P3704459302626108215` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327211 has offset 0).

The definition of A327211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327211.P8107337296496892642

`char[A327213(n+1)]`
-/

namespace A327211.P8107337296496892642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327211.P8107337296496892642

namespace A327211

/-- `char[A327213(n+1)]` -/
def P8107337296496892642.Spec : Prop :=
  ∀ n, (P8107337296496892642.a n : ℤ) = A327211 n

end A327211

/-! ## A327211.P10536390130407629604

`A001221(A034444(n+1))-char[A327212(n+1)]`
-/

namespace A327211.P10536390130407629604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327212 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A034444 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327211.P10536390130407629604

namespace A327211

/-- `A001221(A034444(n+1))-char[A327212(n+1)]` -/
def P10536390130407629604.Spec : Prop :=
  ∀ n, P10536390130407629604.a n = A327211 n

end A327211

/-! ## A327211.P3704459302626108215

`A190843(A190843(n+2)+a(n-1)+n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327211

/-- `A190843(A190843(n+2)+a(n-1)+n+1)` -/
def P3704459302626108215.Spec : Prop :=
  ∀ n, P3704459302626108215.a n = A327211 n

theorem P3704459302626108215.correct : P3704459302626108215.Spec := by
  intro n
  simp only [A327211]

end A327211

/-! ## A327211.P3971466493107032056

`A022852(n+1)-(A276859(n+2)+A022843(n))`
-/

namespace A327211.P3971466493107032056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022852 (n + 1) - (A276859 (n + 2) + A022843 n)

end

end A327211.P3971466493107032056

namespace A327211

/-- `A022852(n+1)-(A276859(n+2)+A022843(n))` -/
def P3971466493107032056.Spec : Prop :=
  ∀ n, P3971466493107032056.a n = A327211 n

end A327211

/-! ## A327211.P10353129224314398251

`1-char[n*char[A327212(n+1)]]`
-/

namespace A327211.P10353129224314398251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327212 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A327211.P10353129224314398251

namespace A327211

/-- `1-char[n*char[A327212(n+1)]]` -/
def P10353129224314398251.Spec : Prop :=
  ∀ n, P10353129224314398251.a n = A327211 n

end A327211

/-!
# A327212: Positions of 0's in {A327211(n) : n > 0}.

The programs for A327212, the canonical program `A327212.P15442459545766502823` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327212 has offset 1).

The definition of A327212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327212.P15442459545766502823

`lt[n*A327211(n), n]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A327212

/-- `lt[n*A327211(n), n]` -/
def P15442459545766502823.Spec : Prop :=
  ∀ n, (P15442459545766502823.a n : ℤ) = A327212 (n + 1)

theorem P15442459545766502823.correct : P15442459545766502823.Spec := by
  intro n
  simp only [A327212, Nat.add_sub_cancel]

end A327212

/-! ## A327212.P1235122040304488933

`eq[1, A327211(n+1)+1]+1`
-/

namespace A327212.P1235122040304488933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327211 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327212.P1235122040304488933

namespace A327212

/-- `eq[1, A327211(n+1)+1]+1` -/
def P1235122040304488933.Spec : Prop :=
  ∀ n, (P1235122040304488933.a n : ℤ) = A327212 (n + 1)

end A327212

/-! ## A327212.P10751852318384524523

`lt[A327211(n), char[A327162(n+1)]]`
-/

namespace A327212.P10751852318384524523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327211 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327162 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327212.P10751852318384524523

namespace A327212

/-- `lt[A327211(n), char[A327162(n+1)]]` -/
def P10751852318384524523.Spec : Prop :=
  ∀ n, (P10751852318384524523.a n : ℤ) = A327212 (n + 1)

end A327212

/-! ## A327212.P16878259168435639595

`record[n+1-A003714(n*A327211(n+1))]`
-/

namespace A327212.P16878259168435639595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003714 ((n : ℤ) * A327211 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327212.P16878259168435639595

namespace A327212

/-- `record[n+1-A003714(n*A327211(n+1))]` -/
def P16878259168435639595.Spec : Prop :=
  ∀ n, P16878259168435639595.a n = A327212 (n + 1)

end A327212

/-! ## A327212.P4914074905253023661

`record[n+1-A003152(n+1)*A327211(n+1)]`
-/

namespace A327212.P4914074905253023661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003152 (n + 1) * A327211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327212.P4914074905253023661

namespace A327212

/-- `record[n+1-A003152(n+1)*A327211(n+1)]` -/
def P4914074905253023661.Spec : Prop :=
  ∀ n, P4914074905253023661.a n = A327212 (n + 1)

end A327212

/-! ## A327212.P9002827911394778478

`record[n+1-A142760(n+1)*A327211(n+1)]`
-/

namespace A327212.P9002827911394778478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A142760 (n + 1) * A327211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327212.P9002827911394778478

namespace A327212

/-- `record[n+1-A142760(n+1)*A327211(n+1)]` -/
def P9002827911394778478.Spec : Prop :=
  ∀ n, P9002827911394778478.a n = A327212 (n + 1)

end A327212

/-! ## A327212.P8083193098809560132

`record[n+1-A287361(n+1)*A327211(n+1)]`
-/

namespace A327212.P8083193098809560132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A287361 (n + 1) * A327211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327212.P8083193098809560132

namespace A327212

/-- `record[n+1-A287361(n+1)*A327211(n+1)]` -/
def P8083193098809560132.Spec : Prop :=
  ∀ n, P8083193098809560132.a n = A327212 (n + 1)

end A327212

/-! ## A327212.P1639320097693177357

`lt[A327211(n), A001221(A076272(n+1))]`
-/

namespace A327212.P1639320097693177357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327211 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A076272 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327212.P1639320097693177357

namespace A327212

/-- `lt[A327211(n), A001221(A076272(n+1))]` -/
def P1639320097693177357.Spec : Prop :=
  ∀ n, (P1639320097693177357.a n : ℤ) = A327212 (n + 1)

end A327212

/-!
# A327213: Positions of 1's in {A327211(n) : n > 0}.

The programs for A327213, the canonical program `A327213.P10077086823454871899` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327213 has offset 1).

The definition of A327213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327213.P10077086823454871899

`eq[A327211(n), 1]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A327213

/-- `eq[A327211(n), 1]` -/
def P10077086823454871899.Spec : Prop :=
  ∀ n, (P10077086823454871899.a n : ℤ) = A327213 (n + 1)

theorem P10077086823454871899.correct : P10077086823454871899.Spec := by
  intro n
  simp only [A327213, Nat.add_sub_cancel]

end A327213

/-! ## A327213.P6319268383426255444

`lt[1/A002326(n), A327211(n)]`
-/

namespace A327213.P6319268383426255444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A002326 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A327213.P6319268383426255444

namespace A327213

/-- `lt[1/A002326(n), A327211(n)]` -/
def P6319268383426255444.Spec : Prop :=
  ∀ n, (P6319268383426255444.a n : ℤ) = A327213 (n + 1)

end A327213

/-! ## A327213.P1457329505376132978

`lt[2, A002326(n*A327211(n))]`
-/

namespace A327213.P1457329505376132978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 ((n : ℤ) * A327211 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327213.P1457329505376132978

namespace A327213

/-- `lt[2, A002326(n*A327211(n))]` -/
def P1457329505376132978.Spec : Prop :=
  ∀ n, (P1457329505376132978.a n : ℤ) = A327213 (n + 1)

end A327213

/-! ## A327213.P16846626150010204720

`lt[1/A327162(n+1), A327211(n)]`
-/

namespace A327213.P16846626150010204720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A327162 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A327213.P16846626150010204720

namespace A327213

/-- `lt[1/A327162(n+1), A327211(n)]` -/
def P16846626150010204720.Spec : Prop :=
  ∀ n, (P16846626150010204720.a n : ℤ) = A327213 (n + 1)

end A327213

/-! ## A327213.P9940680916831244171

`lt[A001221(n+1), A327211(n)+A001221(n+1)]`
-/

namespace A327213.P9940680916831244171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327211 n + A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327213.P9940680916831244171

namespace A327213

/-- `lt[A001221(n+1), A327211(n)+A001221(n+1)]` -/
def P9940680916831244171.Spec : Prop :=
  ∀ n, (P9940680916831244171.a n : ℤ) = A327213 (n + 1)

end A327213

/-! ## A327213.P7009930797492390457

`lt[A327211(n)/A076272(n+1), A327211(n)]`
-/

namespace A327213.P7009930797492390457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327211 n : ℚ) / (A076272 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A327213.P7009930797492390457

namespace A327213

/-- `lt[A327211(n)/A076272(n+1), A327211(n)]` -/
def P7009930797492390457.Spec : Prop :=
  ∀ n, (P7009930797492390457.a n : ℤ) = A327213 (n + 1)

end A327213

/-! ## A327213.P12917652701429349544

`filter[A173517(n), A327211(#)]`
-/

namespace A327213.P12917652701429349544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P12917652701429349544

namespace A327213

/-- `filter[A173517(n), A327211(#)]` -/
def P12917652701429349544.Spec : Prop :=
  ∀ n, P12917652701429349544.a n = A327213 (n + 1)

end A327213

/-! ## A327213.P9936752711997162420

`filter[A117909(n), A327211(#)]`
-/

namespace A327213.P9936752711997162420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P9936752711997162420

namespace A327213

/-- `filter[A117909(n), A327211(#)]` -/
def P9936752711997162420.Spec : Prop :=
  ∀ n, P9936752711997162420.a n = A327213 (n + 1)

end A327213

/-! ## A327213.P5276961323690864359

`filter[A092942(n), A327211(#)]`
-/

namespace A327213.P5276961323690864359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P5276961323690864359

namespace A327213

/-- `filter[A092942(n), A327211(#)]` -/
def P5276961323690864359.Spec : Prop :=
  ∀ n, P5276961323690864359.a n = A327213 (n + 1)

end A327213

/-! ## A327213.P12729760293035864708

`filter[A083926(n), A327211(#)]`
-/

namespace A327213.P12729760293035864708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P12729760293035864708

namespace A327213

/-- `filter[A083926(n), A327211(#)]` -/
def P12729760293035864708.Spec : Prop :=
  ∀ n, P12729760293035864708.a n = A327213 (n + 1)

end A327213

/-! ## A327213.P8611754593774629820

`filter[A230414(n), A327211(#)]`
-/

namespace A327213.P8611754593774629820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P8611754593774629820

namespace A327213

/-- `filter[A230414(n), A327211(#)]` -/
def P8611754593774629820.Spec : Prop :=
  ∀ n, P8611754593774629820.a n = A327213 (n + 1)

end A327213

/-! ## A327213.P12958534094549561166

`filter[A027656(n), A327211(#)]`
-/

namespace A327213.P12958534094549561166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P12958534094549561166

namespace A327213

/-- `filter[A027656(n), A327211(#)]` -/
def P12958534094549561166.Spec : Prop :=
  ∀ n, P12958534094549561166.a n = A327213 (n + 1)

end A327213

/-! ## A327213.P15220830740872822114

`filter[A102389(n), A327211(#)]`
-/

namespace A327213.P15220830740872822114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P15220830740872822114

namespace A327213

/-- `filter[A102389(n), A327211(#)]` -/
def P15220830740872822114.Spec : Prop :=
  ∀ n, P15220830740872822114.a n = A327213 (n + 1)

end A327213

/-! ## A327213.P4309865707244851871

`filter[A102390(n), A327211(#)]`
-/

namespace A327213.P4309865707244851871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P4309865707244851871

namespace A327213

/-- `filter[A102390(n), A327211(#)]` -/
def P4309865707244851871.Spec : Prop :=
  ∀ n, P4309865707244851871.a n = A327213 (n + 1)

end A327213

/-! ## A327213.P12344990764815842655

`filter[A152271(n), A327211(#)]`
-/

namespace A327213.P12344990764815842655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P12344990764815842655

namespace A327213

/-- `filter[A152271(n), A327211(#)]` -/
def P12344990764815842655.Spec : Prop :=
  ∀ n, P12344990764815842655.a n = A327213 (n + 1)

end A327213

/-! ## A327213.P11906741387647880315

`filter[A158416(n), A327211(#)]`
-/

namespace A327213.P11906741387647880315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P11906741387647880315

namespace A327213

/-- `filter[A158416(n), A327211(#)]` -/
def P11906741387647880315.Spec : Prop :=
  ∀ n, P11906741387647880315.a n = A327213 (n + 1)

end A327213

/-! ## A327213.P6183494860662950438

`filter[A057979(n), A327211(#)]`
-/

namespace A327213.P6183494860662950438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P6183494860662950438

namespace A327213

/-- `filter[A057979(n), A327211(#)]` -/
def P6183494860662950438.Spec : Prop :=
  ∀ n, P6183494860662950438.a n = A327213 (n + 1)

end A327213

/-! ## A327213.P8186786229447671781

`filter[A131360(n), A327211(#)]`
-/

namespace A327213.P8186786229447671781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P8186786229447671781

namespace A327213

/-- `filter[A131360(n), A327211(#)]` -/
def P8186786229447671781.Spec : Prop :=
  ∀ n, P8186786229447671781.a n = A327213 (n + 1)

end A327213

/-! ## A327213.P12483129664558835416

`filter[A142150(n), A327211(#)]`
-/

namespace A327213.P12483129664558835416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P12483129664558835416

namespace A327213

/-- `filter[A142150(n), A327211(#)]` -/
def P12483129664558835416.Spec : Prop :=
  ∀ n, P12483129664558835416.a n = A327213 (n + 1)

end A327213

/-! ## A327213.P12089159093511412185

`filter[A166514(n), A327211(#)]`
-/

namespace A327213.P12089159093511412185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327211 (f1 j).toNat = 1) n)

end

end A327213.P12089159093511412185

namespace A327213

/-- `filter[A166514(n), A327211(#)]` -/
def P12089159093511412185.Spec : Prop :=
  ∀ n, P12089159093511412185.a n = A327213 (n + 1)

end A327213

/-!
# A327214: Self-convolution of A270913.

The programs for A327214, there is no canonical definition to state claims against.
-/

/-! ## A327214.P9482881670105261932

`A187182(A289779(n))`
-/

namespace A327214.P9482881670105261932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187182 (A289779 n).toNat

end

end A327214.P9482881670105261932

/-! ## A327214.P815620496295514456

`A343609(10*A052961(n))`
-/

namespace A327214.P815620496295514456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (10 * A052961 n).toNat

end

end A327214.P815620496295514456

/-!
# A327215: Self-convolution of A008485.

The programs for A327215, there is no canonical definition to state claims against.
-/

/-! ## A327215.P2749298392926909835

`A128059(n)+A001281(A005058(n))`
-/

namespace A327215.P2749298392926909835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n + A001281 (A005058 n).toNat

end

end A327215.P2749298392926909835

/-! ## A327215.P16103455544570113642

`A189663(A087130(n)+A082043(n))`
-/

namespace A327215.P16103455544570113642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A087130 n + A082043 n).toNat

end

end A327215.P16103455544570113642

/-!
# A327216: a(n) = [(2n+3)r] - [(n+3)r] - [nr], where [ ] = floor and r = (1+sqrt(5))/2.

The programs for A327216, the canonical program `A327216.P5007103424748823424` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327216 has offset 0).

The definition of A327216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327216.P652131000346585259

`char[A327218(n+1)]`
-/

namespace A327216.P652131000346585259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327216.P652131000346585259

namespace A327216

/-- `char[A327218(n+1)]` -/
def P652131000346585259.Spec : Prop :=
  ∀ n, (P652131000346585259.a n : ℤ) = A327216 n

end A327216

/-! ## A327216.P5007103424748823424

`A327174(2*A327174(n+1)+n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327216

/-- `A327174(2*A327174(n+1)+n)` -/
def P5007103424748823424.Spec : Prop :=
  ∀ n, P5007103424748823424.a n = A327216 n

theorem P5007103424748823424.correct : P5007103424748823424.Spec := by
  intro n
  simp only [A327216]

end A327216

/-! ## A327216.P13124891224728959950

`A078588(xor(1, A190427(n+1))+n)`
-/

namespace A327216.P13124891224728959950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (Int.xor 1 (A190427 (n + 1)) + (n : ℤ)).toNat

end

end A327216.P13124891224728959950

namespace A327216

/-- `A078588(xor(1, A190427(n+1))+n)` -/
def P13124891224728959950.Spec : Prop :=
  ∀ n, P13124891224728959950.a n = A327216 n

end A327216

/-! ## A327216.P16799325687759739374

`A003849(A000201(2*n+3)-(floor(ϕ*n)+1))`
-/

namespace A327216.P16799325687759739374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A000201 (2 * n + 3) - (⌊Real.goldenRatio * (n : ℝ)⌋ + 1)).toNat

end

end A327216.P16799325687759739374

namespace A327216

/-- `A003849(A000201(2*n+3)-(floor(ϕ*n)+1))` -/
def P16799325687759739374.Spec : Prop :=
  ∀ n, P16799325687759739374.a n = A327216 n

end A327216

/-! ## A327216.P3664430387719468740

`A096270(A026352(2*n+3)-A026352(n))`
-/

namespace A327216.P3664430387719468740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A026352 (2 * n + 3) - A026352 n).toNat

end

end A327216.P3664430387719468740

namespace A327216

/-- `A096270(A026352(2*n+3)-A026352(n))` -/
def P3664430387719468740.Spec : Prop :=
  ∀ n, P3664430387719468740.a n = A327216 n

end A327216

/-! ## A327216.P17291497391190773011

`A078588(A001966(n+1)-A001950(n+3))`
-/

namespace A327216.P17291497391190773011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A001966 (n + 1) - A001950 (n + 3)).toNat

end

end A327216.P17291497391190773011

namespace A327216

/-- `A078588(A001966(n+1)-A001950(n+3))` -/
def P17291497391190773011.Spec : Prop :=
  ∀ n, P17291497391190773011.a n = A327216 n

end A327216

/-! ## A327216.P10395162086625530513

`A188432(A026352(2*n+3)-A026352(n))`
-/

namespace A327216.P10395162086625530513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (A026352 (2 * n + 3) - A026352 n).toNat

end

end A327216.P10395162086625530513

namespace A327216

/-- `A188432(A026352(2*n+3)-A026352(n))` -/
def P10395162086625530513.Spec : Prop :=
  ∀ n, P10395162086625530513.a n = A327216 n

end A327216

/-! ## A327216.P10739055072980926920

`A188467(A026352(2*n+3)-A026352(n))`
-/

namespace A327216.P10739055072980926920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (A026352 (2 * n + 3) - A026352 n).toNat

end

end A327216.P10739055072980926920

namespace A327216

/-- `A188467(A026352(2*n+3)-A026352(n))` -/
def P10739055072980926920.Spec : Prop :=
  ∀ n, P10739055072980926920.a n = A327216 n

end A327216

/-! ## A327216.P4772834800869518242

`A284387(A134860(2*n+3)-A284395(n+1))`
-/

namespace A327216.P4772834800869518242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284387 (A134860 (2 * n + 3) - A284395 (n + 1)).toNat

end

end A327216.P4772834800869518242

namespace A327216

/-- `A284387(A134860(2*n+3)-A284395(n+1))` -/
def P4772834800869518242.Spec : Prop :=
  ∀ n, P4772834800869518242.a n = A327216 n

end A327216

/-! ## A327216.P4726377748408315332

`A284387(A214971(n+1)+A003231(n+3))`
-/

namespace A327216.P4726377748408315332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284387 (A214971 (n + 1) + A003231 (n + 3)).toNat

end

end A327216.P4726377748408315332

namespace A327216

/-- `A284387(A214971(n+1)+A003231(n+3))` -/
def P4726377748408315332.Spec : Prop :=
  ∀ n, P4726377748408315332.a n = A327216 n

end A327216

/-! ## A327216.P6298843031537024436

`A188009(A188434(n+1)+A101868(n+3))`
-/

namespace A327216.P6298843031537024436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188009 (A188434 (n + 1) + A101868 (n + 3)).toNat

end

end A327216.P6298843031537024436

namespace A327216

/-- `A188009(A188434(n+1)+A101868(n+3))` -/
def P6298843031537024436.Spec : Prop :=
  ∀ n, P6298843031537024436.a n = A327216 n

end A327216

/-! ## A327216.P8192683680250759125

`A287769(A276855(n+3)+A276855(n))`
-/

namespace A327216.P8192683680250759125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287769 (A276855 (n + 3) + A276855 n).toNat

end

end A327216.P8192683680250759125

namespace A327216

/-- `A287769(A276855(n+3)+A276855(n))` -/
def P8192683680250759125.Spec : Prop :=
  ∀ n, P8192683680250759125.a n = A327216 n

end A327216

/-! ## A327216.P13293711006152970507

`A284749(A214971(2*(n+2))-A214971(n+1)+1)`
-/

namespace A327216.P13293711006152970507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (A214971 (2 * (n + 2)) - A214971 (n + 1) + 1).toNat

end

end A327216.P13293711006152970507

namespace A327216

/-- `A284749(A214971(2*(n+2))-A214971(n+1)+1)` -/
def P13293711006152970507.Spec : Prop :=
  ∀ n, P13293711006152970507.a n = A327216 n

end A327216

/-! ## A327216.P11707866938330767768

`A285680(A285682(n+1)+A285682(n+4))`
-/

namespace A327216.P11707866938330767768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285680 (A285682 (n + 1) + A285682 (n + 4)).toNat

end

end A327216.P11707866938330767768

namespace A327216

/-- `A285680(A285682(n+1)+A285682(n+4))` -/
def P11707866938330767768.Spec : Prop :=
  ∀ n, P11707866938330767768.a n = A327216 n

end A327216

/-! ## A327216.P14458722307575635050

`A188011(A188012(n+1)+A101864(n+3))`
-/

namespace A327216.P14458722307575635050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188011 (A188012 (n + 1) + A101864 (n + 3)).toNat

end

end A327216.P14458722307575635050

namespace A327216

/-- `A188011(A188012(n+1)+A101864(n+3))` -/
def P14458722307575635050.Spec : Prop :=
  ∀ n, P14458722307575635050.a n = A327216 n

end A327216

/-! ## A327216.P8265476532789095875

`A188436(A188438(n+3)+A188012(n+1))`
-/

namespace A327216.P8265476532789095875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188436 (A188438 (n + 3) + A188012 (n + 1)).toNat

end

end A327216.P8265476532789095875

namespace A327216

/-- `A188436(A188438(n+3)+A188012(n+1))` -/
def P8265476532789095875.Spec : Prop :=
  ∀ n, P8265476532789095875.a n = A327216 n

end A327216

/-! ## A327216.P15614602816549145866

`A194661(∑[n+3])`
-/

namespace A327216.P15614602816549145866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194661 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327216.P15614602816549145866

namespace A327216

/-- `A194661(∑[n+3])` -/
def P15614602816549145866.Spec : Prop :=
  ∀ n, P15614602816549145866.a n = A327216 n

end A327216

/-!
# A327217: Positions of 0's in {A327216(n) : n > 0}.

The programs for A327217, the canonical program `A327217.P245651097107119372` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327217 has offset 1).

The definition of A327217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327217.P245651097107119372

`lt[n*A327216(n), n]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A327217

/-- `lt[n*A327216(n), n]` -/
def P245651097107119372.Spec : Prop :=
  ∀ n, (P245651097107119372.a n : ℤ) = A327217 (n + 1)

theorem P245651097107119372.correct : P245651097107119372.Spec := by
  intro n
  simp only [A327217, Nat.add_sub_cancel]

end A327217

/-! ## A327217.P875883189024610325

`lt[A327216(n+1), 1]+1`
-/

namespace A327217.P875883189024610325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327217.P875883189024610325

namespace A327217

/-- `lt[A327216(n+1), 1]+1` -/
def P875883189024610325.Spec : Prop :=
  ∀ n, (P875883189024610325.a n : ℤ) = A327217 (n + 1)

end A327217

/-! ## A327217.P8030391951073804587

`eq[A000038(n), A327216(n)]`
-/

namespace A327217.P8030391951073804587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327217.P8030391951073804587

namespace A327217

/-- `eq[A000038(n), A327216(n)]` -/
def P8030391951073804587.Spec : Prop :=
  ∀ n, (P8030391951073804587.a n : ℤ) = A327217 (n + 1)

end A327217

/-! ## A327217.P5066776600352389968

`eq[n, A028310(n)-A327216(n)]`
-/

namespace A327217.P5066776600352389968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327217.P5066776600352389968

namespace A327217

/-- `eq[n, A028310(n)-A327216(n)]` -/
def P5066776600352389968.Spec : Prop :=
  ∀ n, (P5066776600352389968.a n : ℤ) = A327217 (n + 1)

end A327217

/-! ## A327217.P11015335326946896444

`eq[A010051(2*(n+1)), A327216(n)]`
-/

namespace A327217.P11015335326946896444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327217.P11015335326946896444

namespace A327217

/-- `eq[A010051(2*(n+1)), A327216(n)]` -/
def P11015335326946896444.Spec : Prop :=
  ∀ n, (P11015335326946896444.a n : ℤ) = A327217 (n + 1)

end A327217

/-! ## A327217.P1396541498970476327

`eq[1, A019565(a(n-1)*A327216(n))]` with `a(0)=2`
-/

namespace A327217.P1396541498970476327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A019565 (f2 (n - 1) * A327216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327217.P1396541498970476327

namespace A327217

/-- `eq[1, A019565(a(n-1)*A327216(n))]` -/
def P1396541498970476327.Spec : Prop :=
  ∀ n, (P1396541498970476327.a n : ℤ) = A327217 (n + 1)

end A327217

/-! ## A327217.P14003228288229914750

`eq[1, A328612(a(n-1))-A327216(n)]` with `a(0)=4`
-/

namespace A327217.P14003228288229914750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A328612 (f2 (n - 1)).toNat - A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327217.P14003228288229914750

namespace A327217

/-- `eq[1, A328612(a(n-1))-A327216(n)]` -/
def P14003228288229914750.Spec : Prop :=
  ∀ n, (P14003228288229914750.a n : ℤ) = A327217 (n + 1)

end A327217

/-! ## A327217.P3702416632547489510

`eq[A000007(n), A327216(n)]`
-/

namespace A327217.P3702416632547489510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327217.P3702416632547489510

namespace A327217

/-- `eq[A000007(n), A327216(n)]` -/
def P3702416632547489510.Spec : Prop :=
  ∀ n, (P3702416632547489510.a n : ℤ) = A327217 (n + 1)

end A327217

/-! ## A327217.P12804527026725806279

`eq[A130706(n), A327216(n)]`
-/

namespace A327217.P12804527026725806279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327217.P12804527026725806279

namespace A327217

/-- `eq[A130706(n), A327216(n)]` -/
def P12804527026725806279.Spec : Prop :=
  ∀ n, (P12804527026725806279.a n : ℤ) = A327217 (n + 1)

end A327217

/-! ## A327217.P5658475098158278126

`eq[A169585(n), A327216(n)]`
-/

namespace A327217.P5658475098158278126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327217.P5658475098158278126

namespace A327217

/-- `eq[A169585(n), A327216(n)]` -/
def P5658475098158278126.Spec : Prop :=
  ∀ n, (P5658475098158278126.a n : ℤ) = A327217 (n + 1)

end A327217

/-! ## A327217.P15301998164828964440

`eq[1, A327216(n)+A054977(n)]`
-/

namespace A327217.P15301998164828964440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n + A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327217.P15301998164828964440

namespace A327217

/-- `eq[1, A327216(n)+A054977(n)]` -/
def P15301998164828964440.Spec : Prop :=
  ∀ n, (P15301998164828964440.a n : ℤ) = A327217 (n + 1)

end A327217

/-! ## A327217.P9626571913913433680

`eq[A154955(n+1), A327216(n)]`
-/

namespace A327217.P9626571913913433680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327217.P9626571913913433680

namespace A327217

/-- `eq[A154955(n+1), A327216(n)]` -/
def P9626571913913433680.Spec : Prop :=
  ∀ n, (P9626571913913433680.a n : ℤ) = A327217 (n + 1)

end A327217

/-! ## A327217.P1952138915213139475

`eq[1, A327216(n)+A158388(n)]`
-/

namespace A327217.P1952138915213139475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n + A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327217.P1952138915213139475

namespace A327217

/-- `eq[1, A327216(n)+A158388(n)]` -/
def P1952138915213139475.Spec : Prop :=
  ∀ n, (P1952138915213139475.a n : ℤ) = A327217 (n + 1)

end A327217

/-! ## A327217.P15082863069404216865

`eq[A285476(n), A327216(n)]`
-/

namespace A327217.P15082863069404216865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327217.P15082863069404216865

namespace A327217

/-- `eq[A285476(n), A327216(n)]` -/
def P15082863069404216865.Spec : Prop :=
  ∀ n, (P15082863069404216865.a n : ℤ) = A327217 (n + 1)

end A327217

/-!
# A327218: Positions of 1's in {A327216(n) : n > 0}.

The programs for A327218, the canonical program `A327218.P13898235747039253329` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327218 has offset 1).

The definition of A327218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327218.P13898235747039253329

`A327176(n+1)-A327174(A327176(n+1)+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A327218

/-- `A327176(n+1)-A327174(A327176(n+1)+1)` -/
def P13898235747039253329.Spec : Prop :=
  ∀ n, P13898235747039253329.a n = A327218 (n + 1)

theorem P13898235747039253329.correct : P13898235747039253329.Spec := by
  intro n
  simp only [A327218, Nat.add_sub_cancel]

end A327218

/-! ## A327218.P9041514593435093118

`eq[1, A327174(A327174(n+1)+A327174(n+1)+n)]`
-/

namespace A327218.P9041514593435093118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (A327174 (n + 1) + (A327174 (n + 1) + (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327218.P9041514593435093118

namespace A327218

/-- `eq[1, A327174(A327174(n+1)+A327174(n+1)+n)]` -/
def P9041514593435093118.Spec : Prop :=
  ∀ n, (P9041514593435093118.a n : ℤ) = A327218 (n + 1)

end A327218

/-! ## A327218.P13306234489019240066

`lt[0, A327216(n)]`
-/

namespace A327218.P13306234489019240066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327218.P13306234489019240066

namespace A327218

/-- `lt[0, A327216(n)]` -/
def P13306234489019240066.Spec : Prop :=
  ∀ n, (P13306234489019240066.a n : ℤ) = A327218 (n + 1)

end A327218

/-! ## A327218.P4960609925181711826

`record[(n+1)*A327216(n+1)]`
-/

namespace A327218.P4960609925181711826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327218.P4960609925181711826

namespace A327218

/-- `record[(n+1)*A327216(n+1)]` -/
def P4960609925181711826.Spec : Prop :=
  ∀ n, P4960609925181711826.a n = A327218 (n + 1)

end A327218

/-! ## A327218.P17832900562647609104

`A028310(eq[1, A327216(n)])`
-/

namespace A327218.P17832900562647609104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327218.P17832900562647609104

namespace A327218

/-- `A028310(eq[1, A327216(n)])` -/
def P17832900562647609104.Spec : Prop :=
  ∀ n, P17832900562647609104.a n = A327218 (n + 1)

end A327218

/-! ## A327218.P16857518717429145148

`filter[A058065(n), A327216(#)]`
-/

namespace A327218.P16857518717429145148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327216 (f1 j).toNat = 1) n)

end

end A327218.P16857518717429145148

namespace A327218

/-- `filter[A058065(n), A327216(#)]` -/
def P16857518717429145148.Spec : Prop :=
  ∀ n, P16857518717429145148.a n = A327218 (n + 1)

end A327218

/-! ## A327218.P16316404543197772622

`filter[A382116(n), A327216(#)]`
-/

namespace A327218.P16316404543197772622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327216 (f1 j).toNat = 1) n)

end

end A327218.P16316404543197772622

namespace A327218

/-- `filter[A382116(n), A327216(#)]` -/
def P16316404543197772622.Spec : Prop :=
  ∀ n, P16316404543197772622.a n = A327218 (n + 1)

end A327218

/-! ## A327218.P5276109161977489767

`eq[A054977(n), A327216(n)]`
-/

namespace A327218.P5276109161977489767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327218.P5276109161977489767

namespace A327218

/-- `eq[A054977(n), A327216(n)]` -/
def P5276109161977489767.Spec : Prop :=
  ∀ n, (P5276109161977489767.a n : ℤ) = A327218 (n + 1)

end A327218

/-! ## A327218.P9819628685295655088

`eq[A129761(n), A327216(n)]`
-/

namespace A327218.P9819628685295655088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327218.P9819628685295655088

namespace A327218

/-- `eq[A129761(n), A327216(n)]` -/
def P9819628685295655088.Spec : Prop :=
  ∀ n, (P9819628685295655088.a n : ℤ) = A327218 (n + 1)

end A327218

/-! ## A327218.P8813852344578960493

`eq[A158388(n), A327216(n)]`
-/

namespace A327218.P8813852344578960493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327218.P8813852344578960493

namespace A327218

/-- `eq[A158388(n), A327216(n)]` -/
def P8813852344578960493.Spec : Prop :=
  ∀ n, (P8813852344578960493.a n : ℤ) = A327218 (n + 1)

end A327218

/-! ## A327218.P15485778439480329390

`eq[A261095(n), A327216(n)]`
-/

namespace A327218.P15485778439480329390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327218.P15485778439480329390

namespace A327218

/-- `eq[A261095(n), A327216(n)]` -/
def P15485778439480329390.Spec : Prop :=
  ∀ n, (P15485778439480329390.a n : ℤ) = A327218 (n + 1)

end A327218

/-! ## A327218.P11303097949041091476

`eq[A327216(n), A329684(n)]`
-/

namespace A327218.P11303097949041091476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327218.P11303097949041091476

namespace A327218

/-- `eq[A327216(n), A329684(n)]` -/
def P11303097949041091476.Spec : Prop :=
  ∀ n, (P11303097949041091476.a n : ℤ) = A327218 (n + 1)

end A327218

/-! ## A327218.P7209720181367530374

`eq[A085407(n+1), A327216(n)]`
-/

namespace A327218.P7209720181367530374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327218.P7209720181367530374

namespace A327218

/-- `eq[A085407(n+1), A327216(n)]` -/
def P7209720181367530374.Spec : Prop :=
  ∀ n, (P7209720181367530374.a n : ℤ) = A327218 (n + 1)

end A327218

/-! ## A327218.P5244094728932181298

`eq[1, A327216(n*A327216(n))]`
-/

namespace A327218.P5244094728932181298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 ((n : ℤ) * A327216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327218.P5244094728932181298

namespace A327218

/-- `eq[1, A327216(n*A327216(n))]` -/
def P5244094728932181298.Spec : Prop :=
  ∀ n, (P5244094728932181298.a n : ℤ) = A327218 (n + 1)

end A327218

/-! ## A327218.P18015688985647662228

`eq[(A000038(n)-1)², A327216(n)]`
-/

namespace A327218.P18015688985647662228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327218.P18015688985647662228

namespace A327218

/-- `eq[(A000038(n)-1)², A327216(n)]` -/
def P18015688985647662228.Spec : Prop :=
  ∀ n, (P18015688985647662228.a n : ℤ) = A327218 (n + 1)

end A327218

/-! ## A327218.P1318623720713412558

`eq[1, A078588(xor(1, A190427(n+1))+n)]`
-/

namespace A327218.P1318623720713412558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (Int.xor 1 (A190427 (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327218.P1318623720713412558

namespace A327218

/-- `eq[1, A078588(xor(1, A190427(n+1))+n)]` -/
def P1318623720713412558.Spec : Prop :=
  ∀ n, (P1318623720713412558.a n : ℤ) = A327218 (n + 1)

end A327218

/-! ## A327218.P13374523467977223235

`filter[A173517(n), A327216(#)]`
-/

namespace A327218.P13374523467977223235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327216 (f1 j).toNat = 1) n)

end

end A327218.P13374523467977223235

namespace A327218

/-- `filter[A173517(n), A327216(#)]` -/
def P13374523467977223235.Spec : Prop :=
  ∀ n, P13374523467977223235.a n = A327218 (n + 1)

end A327218

/-! ## A327218.P3935894885264218852

`filter[A271439(n), A327216(#)]`
-/

namespace A327218.P3935894885264218852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327216 (f1 j).toNat = 1) n)

end

end A327218.P3935894885264218852

namespace A327218

/-- `filter[A271439(n), A327216(#)]` -/
def P3935894885264218852.Spec : Prop :=
  ∀ n, P3935894885264218852.a n = A327218 (n + 1)

end A327218

/-! ## A327218.P13133344240353395829

`filter[A261094(n), A327216(#)]`
-/

namespace A327218.P13133344240353395829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327216 (f1 j).toNat = 1) n)

end

end A327218.P13133344240353395829

namespace A327218

/-- `filter[A261094(n), A327216(#)]` -/
def P13133344240353395829.Spec : Prop :=
  ∀ n, P13133344240353395829.a n = A327218 (n + 1)

end A327218

/-! ## A327218.P3567891536692080961

`filter[A117909(n), A327216(#)]`
-/

namespace A327218.P3567891536692080961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327216 (f1 j).toNat = 1) n)

end

end A327218.P3567891536692080961

namespace A327218

/-- `filter[A117909(n), A327216(#)]` -/
def P3567891536692080961.Spec : Prop :=
  ∀ n, P3567891536692080961.a n = A327218 (n + 1)

end A327218

/-!
# A327219: a(n) = [(2n+4)r] - [(n+4)r] - [nr], where [ ] = floor and r = (1+sqrt(5))/2.

The programs for A327219, the canonical program `A327219.P7524261116864899285` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327219 has offset 0).

The definition of A327219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327219.P7524261116864899285

`char[A327221(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327219

/-- `char[A327221(n+1)]` -/
def P7524261116864899285.Spec : Prop :=
  ∀ n, (P7524261116864899285.a n : ℤ) = A327219 n

theorem P7524261116864899285.correct : P7524261116864899285.Spec := by
  intro n
  simp only [A327219]

end A327219

/-! ## A327219.P18323703962086595034

`A078588(2*A190248(n+2)+n)`
-/

namespace A327219.P18323703962086595034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * A190248 (n + 2) + (n : ℤ)).toNat

end

end A327219.P18323703962086595034

namespace A327219

/-- `A078588(2*A190248(n+2)+n)` -/
def P18323703962086595034.Spec : Prop :=
  ∀ n, P18323703962086595034.a n = A327219 n

end A327219

/-! ## A327219.P15335129543910599514

`A078588(A190248(n+2)+A190248(n+2)+n)`
-/

namespace A327219.P15335129543910599514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A190248 (n + 2) + (A190248 (n + 2) + (n : ℤ))).toNat

end

end A327219.P15335129543910599514

namespace A327219

/-- `A078588(A190248(n+2)+A190248(n+2)+n)` -/
def P15335129543910599514.Spec : Prop :=
  ∀ n, P15335129543910599514.a n = A327219 n

end A327219

/-! ## A327219.P3565105266418624385

`A005713(n+1)-A005713(2*n+1)*A189661(n+2)`
-/

namespace A327219.P3565105266418624385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (n + 1) - A005713 (2 * n + 1) * A189661 (n + 2)

end

end A327219.P3565105266418624385

namespace A327219

/-- `A005713(n+1)-A005713(2*n+1)*A189661(n+2)` -/
def P3565105266418624385.Spec : Prop :=
  ∀ n, P3565105266418624385.a n = A327219 n

end A327219

/-! ## A327219.P11553020618269102498

`A096270(A026352(2*(n+2))-A026352(n))`
-/

namespace A327219.P11553020618269102498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A026352 (2 * (n + 2)) - A026352 n).toNat

end

end A327219.P11553020618269102498

namespace A327219

/-- `A096270(A026352(2*(n+2))-A026352(n))` -/
def P11553020618269102498.Spec : Prop :=
  ∀ n, P11553020618269102498.a n = A327219 n

end A327219

/-! ## A327219.P13107350125149641377

`A096270(A026356(2*n+5)-A026356(n+1))`
-/

namespace A327219.P13107350125149641377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A026356 (2 * n + 5) - A026356 (n + 1)).toNat

end

end A327219.P13107350125149641377

namespace A327219

/-- `A096270(A026356(2*n+5)-A026356(n+1))` -/
def P13107350125149641377.Spec : Prop :=
  ∀ n, P13107350125149641377.a n = A327219 n

end A327219

/-! ## A327219.P9834950497590882832

`A096270(A003622(n+4)+floor(ϕ*n+n+1))`
-/

namespace A327219.P9834950497590882832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A003622 (n + 4) + ⌊Real.goldenRatio * (n : ℝ) + (n + 1 : ℝ)⌋).toNat

end

end A327219.P9834950497590882832

namespace A327219

/-- `A096270(A003622(n+4)+floor(ϕ*n+n+1))` -/
def P9834950497590882832.Spec : Prop :=
  ∀ n, P9834950497590882832.a n = A327219 n

end A327219

/-! ## A327219.P13266516905631078479

`A114986(A066096(n)+A026351(n+4))`
-/

namespace A327219.P13266516905631078479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A066096 n + A026351 (n + 4)).toNat

end

end A327219.P13266516905631078479

namespace A327219

/-- `A114986(A066096(n)+A026351(n+4))` -/
def P13266516905631078479.Spec : Prop :=
  ∀ n, P13266516905631078479.a n = A327219 n

end A327219

/-! ## A327219.P14910830631326507964

`A189661(A026351(n+4)+A026351(n))`
-/

namespace A327219.P14910830631326507964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A026351 (n + 4) + A026351 n).toNat

end

end A327219.P14910830631326507964

namespace A327219

/-- `A189661(A026351(n+4)+A026351(n))` -/
def P14910830631326507964.Spec : Prop :=
  ∀ n, P14910830631326507964.a n = A327219 n

end A327219

/-! ## A327219.P13984264466730553743

`A189479(A060143(n)+A003622(n+4))`
-/

namespace A327219.P13984264466730553743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (A060143 n + A003622 (n + 4)).toNat

end

end A327219.P13984264466730553743

namespace A327219

/-- `A189479(A060143(n)+A003622(n+4))` -/
def P13984264466730553743.Spec : Prop :=
  ∀ n, P13984264466730553743.a n = A327219 n

end A327219

/-! ## A327219.P8060535758285402635

`A003849(A022413(2*(n+2))-A022414(n))`
-/

namespace A327219.P8060535758285402635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A022413 (2 * (n + 2)) - A022414 n).toNat

end

end A327219.P8060535758285402635

namespace A327219

/-- `A003849(A022413(2*(n+2))-A022414(n))` -/
def P8060535758285402635.Spec : Prop :=
  ∀ n, P8060535758285402635.a n = A327219 n

end A327219

/-! ## A327219.P2965047352228830423

`A188432(A026352(n+4)+A026352(n))`
-/

namespace A327219.P2965047352228830423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (A026352 (n + 4) + A026352 n).toNat

end

end A327219.P2965047352228830423

namespace A327219

/-- `A188432(A026352(n+4)+A026352(n))` -/
def P2965047352228830423.Spec : Prop :=
  ∀ n, P2965047352228830423.a n = A327219 n

end A327219

/-! ## A327219.P16475649896054966594

`A191269(A026352(n+4)+A026352(n))`
-/

namespace A327219.P16475649896054966594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191269 (A026352 (n + 4) + A026352 n).toNat

end

end A327219.P16475649896054966594

namespace A327219

/-- `A191269(A026352(n+4)+A026352(n))` -/
def P16475649896054966594.Spec : Prop :=
  ∀ n, P16475649896054966594.a n = A327219 n

end A327219

/-!
# A327220: Positions of 0's in {A327219(k) : n > 0}.

The programs for A327220, the canonical program `A327220.P13650656345071813810` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327220 has offset 1).

The definition of A327220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327220.P13650656345071813810

`lt[n*A327219(n), n]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327220

/-- `lt[n*A327219(n), n]` -/
def P13650656345071813810.Spec : Prop :=
  ∀ n, (P13650656345071813810.a n : ℤ) = A327220 (n + 1)

theorem P13650656345071813810.correct : P13650656345071813810.Spec := by
  intro n
  simp only [A327220, Nat.add_sub_cancel]

end A327220

/-! ## A327220.P2850005932954648682

`lt[A327219(n+1), 1]+1`
-/

namespace A327220.P2850005932954648682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327220.P2850005932954648682

namespace A327220

/-- `lt[A327219(n+1), 1]+1` -/
def P2850005932954648682.Spec : Prop :=
  ∀ n, (P2850005932954648682.a n : ℤ) = A327220 (n + 1)

end A327220

/-! ## A327220.P16986892000495635243

`eq[A000007(n), A327219(n)]`
-/

namespace A327220.P16986892000495635243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327220.P16986892000495635243

namespace A327220

/-- `eq[A000007(n), A327219(n)]` -/
def P16986892000495635243.Spec : Prop :=
  ∀ n, (P16986892000495635243.a n : ℤ) = A327220 (n + 1)

end A327220

/-! ## A327220.P6982626461633733078

`eq[A000038(n), A327219(n)]`
-/

namespace A327220.P6982626461633733078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327220.P6982626461633733078

namespace A327220

/-- `eq[A000038(n), A327219(n)]` -/
def P6982626461633733078.Spec : Prop :=
  ∀ n, (P6982626461633733078.a n : ℤ) = A327220 (n + 1)

end A327220

/-! ## A327220.P11993754774868202271

`eq[1, A327219(n)+A054977(n)]`
-/

namespace A327220.P11993754774868202271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n + A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327220.P11993754774868202271

namespace A327220

/-- `eq[1, A327219(n)+A054977(n)]` -/
def P11993754774868202271.Spec : Prop :=
  ∀ n, (P11993754774868202271.a n : ℤ) = A327220 (n + 1)

end A327220

/-! ## A327220.P2583307800622586407

`eq[1, A327219(n)+A158388(n)]`
-/

namespace A327220.P2583307800622586407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n + A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327220.P2583307800622586407

namespace A327220

/-- `eq[1, A327219(n)+A158388(n)]` -/
def P2583307800622586407.Spec : Prop :=
  ∀ n, (P2583307800622586407.a n : ℤ) = A327220 (n + 1)

end A327220

/-! ## A327220.P4297137493780623316

`lt[A327219(n), n/A215144(n)]`
-/

namespace A327220.P4297137493780623316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A215144 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A327220.P4297137493780623316

namespace A327220

/-- `lt[A327219(n), n/A215144(n)]` -/
def P4297137493780623316.Spec : Prop :=
  ∀ n, (P4297137493780623316.a n : ℤ) = A327220 (n + 1)

end A327220

/-! ## A327220.P16579640431662807374

`lt[A327219(n)/A000142(a(n-1)), 1]` with `a(0)=1`
-/

namespace A327220.P16579640431662807374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A327219 n : ℚ) / (A000142 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A327220.P16579640431662807374

namespace A327220

/-- `lt[A327219(n)/A000142(a(n-1)), 1]` -/
def P16579640431662807374.Spec : Prop :=
  ∀ n, (P16579640431662807374.a n : ℤ) = A327220 (n + 1)

end A327220

/-! ## A327220.P10643986430578597302

`record[n+1-A000452(n+1)*A327219(n+1)]`
-/

namespace A327220.P10643986430578597302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000452 (n + 1) * A327219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327220.P10643986430578597302

namespace A327220

/-- `record[n+1-A000452(n+1)*A327219(n+1)]` -/
def P10643986430578597302.Spec : Prop :=
  ∀ n, P10643986430578597302.a n = A327220 (n + 1)

end A327220

/-! ## A327220.P14983287757281792283

`lt[A003849(2*n+3), A287523(A005206(n+3))]`
-/

namespace A327220.P14983287757281792283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (A005206 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327220.P14983287757281792283

namespace A327220

/-- `lt[A003849(2*n+3), A287523(A005206(n+3))]` -/
def P14983287757281792283.Spec : Prop :=
  ∀ n, (P14983287757281792283.a n : ℤ) = A327220 (n + 1)

end A327220

/-! ## A327220.P3169795224172247753

`record[n+1-A296296(n)*A327219(n+1)]`
-/

namespace A327220.P3169795224172247753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A296296 n * A327219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327220.P3169795224172247753

namespace A327220

/-- `record[n+1-A296296(n)*A327219(n+1)]` -/
def P3169795224172247753.Spec : Prop :=
  ∀ n, P3169795224172247753.a n = A327220 (n + 1)

end A327220

/-! ## A327220.P10724745717261381914

`record[n+1-record[A292137(n)]*A327219(n+1)]`
-/

namespace A327220.P10724745717261381914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292137 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A327219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327220.P10724745717261381914

namespace A327220

/-- `record[n+1-record[A292137(n)]*A327219(n+1)]` -/
def P10724745717261381914.Spec : Prop :=
  ∀ n, P10724745717261381914.a n = A327220 (n + 1)

end A327220

/-!
# A327221: Positions of 1's in {A327219(k) : n > 0}.

The programs for A327221, the canonical program `A327221.P12789019894681935162` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327221 has offset 1).

The definition of A327221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327221.P12789019894681935162

`∪[A134860(n+1), A188259(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A327221

/-- `∪[A134860(n+1), A188259(n+1)]` -/
def P12789019894681935162.Spec : Prop :=
  ∀ n, (P12789019894681935162.a n : ℤ) = A327221 (n + 1)

theorem P12789019894681935162.correct : P12789019894681935162.Spec := by
  intro n
  simp only [A327221, Nat.add_sub_cancel]

end A327221

/-! ## A327221.P1176399247701407439

`lt[0, A327219(n)]`
-/

namespace A327221.P1176399247701407439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327221.P1176399247701407439

namespace A327221

/-- `lt[0, A327219(n)]` -/
def P1176399247701407439.Spec : Prop :=
  ∀ n, (P1176399247701407439.a n : ℤ) = A327221 (n + 1)

end A327221

/-! ## A327221.P3920909494567141135

`record[(n+3)*A327219(n+3)]`
-/

namespace A327221.P3920909494567141135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A327219 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327221.P3920909494567141135

namespace A327221

/-- `record[(n+3)*A327219(n+3)]` -/
def P3920909494567141135.Spec : Prop :=
  ∀ n, P3920909494567141135.a n = A327221 (n + 1)

end A327221

/-! ## A327221.P8362498016685592111

`eq[1, A327219(n*A327219(n))]`
-/

namespace A327221.P8362498016685592111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 ((n : ℤ) * A327219 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327221.P8362498016685592111

namespace A327221

/-- `eq[1, A327219(n*A327219(n))]` -/
def P8362498016685592111.Spec : Prop :=
  ∀ n, (P8362498016685592111.a n : ℤ) = A327221 (n + 1)

end A327221

/-! ## A327221.P925027018915828952

`eq[(A000038(n)-1)², A327219(n)]`
-/

namespace A327221.P925027018915828952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327221.P925027018915828952

namespace A327221

/-- `eq[(A000038(n)-1)², A327219(n)]` -/
def P925027018915828952.Spec : Prop :=
  ∀ n, (P925027018915828952.a n : ℤ) = A327221 (n + 1)

end A327221

/-! ## A327221.P10486731556616535410

`eq[A054977(n), A327219(n)]`
-/

namespace A327221.P10486731556616535410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327221.P10486731556616535410

namespace A327221

/-- `eq[A054977(n), A327219(n)]` -/
def P10486731556616535410.Spec : Prop :=
  ∀ n, (P10486731556616535410.a n : ℤ) = A327221 (n + 1)

end A327221

/-! ## A327221.P3709568159812383109

`eq[A141044(n), A327219(n)]`
-/

namespace A327221.P3709568159812383109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327221.P3709568159812383109

namespace A327221

/-- `eq[A141044(n), A327219(n)]` -/
def P3709568159812383109.Spec : Prop :=
  ∀ n, (P3709568159812383109.a n : ℤ) = A327221 (n + 1)

end A327221

/-! ## A327221.P8068074725667583697

`eq[A158388(n), A327219(n)]`
-/

namespace A327221.P8068074725667583697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327221.P8068074725667583697

namespace A327221

/-- `eq[A158388(n), A327219(n)]` -/
def P8068074725667583697.Spec : Prop :=
  ∀ n, (P8068074725667583697.a n : ℤ) = A327221 (n + 1)

end A327221

/-! ## A327221.P13492003844619486836

`eq[A261143(n), A327219(n)]`
-/

namespace A327221.P13492003844619486836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327221.P13492003844619486836

namespace A327221

/-- `eq[A261143(n), A327219(n)]` -/
def P13492003844619486836.Spec : Prop :=
  ∀ n, (P13492003844619486836.a n : ℤ) = A327221 (n + 1)

end A327221

/-! ## A327221.P14508106100703435322

`eq[A327219(n), A329684(n)]`
-/

namespace A327221.P14508106100703435322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327221.P14508106100703435322

namespace A327221

/-- `eq[A327219(n), A329684(n)]` -/
def P14508106100703435322.Spec : Prop :=
  ∀ n, (P14508106100703435322.a n : ℤ) = A327221 (n + 1)

end A327221

/-! ## A327221.P13922915635702004084

`eq[A327219(n), A373565(n)]`
-/

namespace A327221.P13922915635702004084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327221.P13922915635702004084

namespace A327221

/-- `eq[A327219(n), A373565(n)]` -/
def P13922915635702004084.Spec : Prop :=
  ∀ n, (P13922915635702004084.a n : ℤ) = A327221 (n + 1)

end A327221

/-! ## A327221.P15258640959356242176

`eq[A283149(n+1), A327219(n)]`
-/

namespace A327221.P15258640959356242176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327221.P15258640959356242176

namespace A327221

/-- `eq[A283149(n+1), A327219(n)]` -/
def P15258640959356242176.Spec : Prop :=
  ∀ n, (P15258640959356242176.a n : ℤ) = A327221 (n + 1)

end A327221

/-! ## A327221.P9205679769751667541

`lt[0, A078588(2*A190248(n+2)+n)]`
-/

namespace A327221.P9205679769751667541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * A190248 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327221.P9205679769751667541

namespace A327221

/-- `lt[0, A078588(2*A190248(n+2)+n)]` -/
def P9205679769751667541.Spec : Prop :=
  ∀ n, (P9205679769751667541.a n : ℤ) = A327221 (n + 1)

end A327221

/-! ## A327221.P6364107683977694742

`lt[0, A078588(A190248(n+2)+A190248(n+2)+n)]`
-/

namespace A327221.P6364107683977694742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A190248 (n + 2) + (A190248 (n + 2) + (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327221.P6364107683977694742

namespace A327221

/-- `lt[0, A078588(A190248(n+2)+A190248(n+2)+n)]` -/
def P6364107683977694742.Spec : Prop :=
  ∀ n, (P6364107683977694742.a n : ℤ) = A327221 (n + 1)

end A327221

/-! ## A327221.P10450233354023349695

`eq[A089809(n+2), A188014(n+4)]`
-/

namespace A327221.P10450233354023349695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327221.P10450233354023349695

namespace A327221

/-- `eq[A089809(n+2), A188014(n+4)]` -/
def P10450233354023349695.Spec : Prop :=
  ∀ n, (P10450233354023349695.a n : ℤ) = A327221 (n + 1)

end A327221

/-! ## A327221.P1569352175172014807

`filter[A173517(n), A327219(#)]`
-/

namespace A327221.P1569352175172014807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327219 (f1 j).toNat = 1) n)

end

end A327221.P1569352175172014807

namespace A327221

/-- `filter[A173517(n), A327219(#)]` -/
def P1569352175172014807.Spec : Prop :=
  ∀ n, P1569352175172014807.a n = A327221 (n + 1)

end A327221

/-! ## A327221.P15263986671925516313

`filter[A117909(n), A327219(#)]`
-/

namespace A327221.P15263986671925516313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327219 (f1 j).toNat = 1) n)

end

end A327221.P15263986671925516313

namespace A327221

/-- `filter[A117909(n), A327219(#)]` -/
def P15263986671925516313.Spec : Prop :=
  ∀ n, P15263986671925516313.a n = A327221 (n + 1)

end A327221

/-! ## A327221.P1112530982938492290

`filter[A092942(n), A327219(#)]`
-/

namespace A327221.P1112530982938492290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327219 (f1 j).toNat = 1) n)

end

end A327221.P1112530982938492290

namespace A327221

/-- `filter[A092942(n), A327219(#)]` -/
def P1112530982938492290.Spec : Prop :=
  ∀ n, P1112530982938492290.a n = A327221 (n + 1)

end A327221

/-! ## A327221.P18376057766585995994

`filter[A083926(n), A327219(#)]`
-/

namespace A327221.P18376057766585995994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327219 (f1 j).toNat = 1) n)

end

end A327221.P18376057766585995994

namespace A327221

/-- `filter[A083926(n), A327219(#)]` -/
def P18376057766585995994.Spec : Prop :=
  ∀ n, P18376057766585995994.a n = A327221 (n + 1)

end A327221

/-! ## A327221.P13189850090743509097

`filter[A230414(n), A327219(#)]`
-/

namespace A327221.P13189850090743509097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327219 (f1 j).toNat = 1) n)

end

end A327221.P13189850090743509097

namespace A327221

/-- `filter[A230414(n), A327219(#)]` -/
def P13189850090743509097.Spec : Prop :=
  ∀ n, P13189850090743509097.a n = A327221 (n + 1)

end A327221

/-!
# A327222: a(n) = [(2n+4)r] - [nr+4r] - [nr], where [ ] = floor and r = sqrt(2).

The programs for A327222, the canonical program `A327222.P12522913140232998755` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327222 has offset 0).

The definition of A327222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327222.P12522913140232998755

`char[A327224(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A327222

/-- `char[A327224(n+1)]` -/
def P12522913140232998755.Spec : Prop :=
  ∀ n, (P12522913140232998755.a n : ℤ) = A327222 n

theorem P12522913140232998755.correct : P12522913140232998755.Spec := by
  intro n
  simp only [A327222]

end A327222

/-! ## A327222.P1819819021869891482

`A057427(n)-char[A327223(n+1)]`
-/

namespace A327222.P1819819021869891482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327223 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327222.P1819819021869891482

namespace A327222

/-- `A057427(n)-char[A327223(n+1)]` -/
def P1819819021869891482.Spec : Prop :=
  ∀ n, P1819819021869891482.a n = A327222 n

end A327222

/-! ## A327222.P18150165216278924497

`A010059(A004016(n)+char[A327223(n+1)])`
-/

namespace A327222.P18150165216278924497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327223 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A004016 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A327222.P18150165216278924497

namespace A327222

/-- `A010059(A004016(n)+char[A327223(n+1)])` -/
def P18150165216278924497.Spec : Prop :=
  ∀ n, P18150165216278924497.a n = A327222 n

end A327222

/-! ## A327222.P11033492753237331079

`A122854(n*char[A327223(n+1)])%A122854(n)`
-/

namespace A327222.P11033492753237331079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327223 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122854 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))) (A122854 n)

end

end A327222.P11033492753237331079

namespace A327222

/-- `A122854(n*char[A327223(n+1)])%A122854(n)` -/
def P11033492753237331079.Spec : Prop :=
  ∀ n, P11033492753237331079.a n = A327222 n

end A327222

/-! ## A327222.P13635405583485166738

`A083035(A001951(n+4)+A001951(n)+1)`
-/

namespace A327222.P13635405583485166738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (A001951 (n + 4) + A001951 n + 1).toNat

end

end A327222.P13635405583485166738

namespace A327222

/-- `A083035(A001951(n+4)+A001951(n)+1)` -/
def P13635405583485166738.Spec : Prop :=
  ∀ n, P13635405583485166738.a n = A327222 n

end A327222

/-! ## A327222.P2435827152841640117

`A285076(A289037(2*n+5)-A083051(n))`
-/

namespace A327222.P2435827152841640117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (A289037 (2 * n + 5) - A083051 n).toNat

end

end A327222.P2435827152841640117

namespace A327222

/-- `A285076(A289037(2*n+5)-A083051(n))` -/
def P2435827152841640117.Spec : Prop :=
  ∀ n, P2435827152841640117.a n = A327222 n

end A327222

/-! ## A327222.P17249501397330903923

`A289035(A289037(2*n+5)-A083051(n))`
-/

namespace A327222.P17249501397330903923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289035 (A289037 (2 * n + 5) - A083051 n).toNat

end

end A327222.P17249501397330903923

namespace A327222

/-- `A289035(A289037(2*n+5)-A083051(n))` -/
def P17249501397330903923.Spec : Prop :=
  ∀ n, P17249501397330903923.a n = A327222 n

end A327222

/-! ## A327222.P12485105892797377678

`A194664(∑[n+4]+2)`
-/

namespace A327222.P12485105892797377678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194664 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A327222.P12485105892797377678

namespace A327222

/-- `A194664(∑[n+4]+2)` -/
def P12485105892797377678.Spec : Prop :=
  ∀ n, P12485105892797377678.a n = A327222 n

end A327222

/-!
# A327223: Positions of 0's in {A327222(k) : n > 0}.

The programs for A327223, the canonical program `A327223.P9849619397842507375` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327223 has offset 1).

The definition of A327223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327223.P9849619397842507375

`lt[n*A327222(n), n]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A327223

/-- `lt[n*A327222(n), n]` -/
def P9849619397842507375.Spec : Prop :=
  ∀ n, (P9849619397842507375.a n : ℤ) = A327223 (n + 1)

theorem P9849619397842507375.correct : P9849619397842507375.Spec := by
  intro n
  simp only [A327223, Nat.add_sub_cancel]

end A327223

/-! ## A327223.P17696020516794920542

`lt[A327222(n+1), 1]+1`
-/

namespace A327223.P17696020516794920542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327223.P17696020516794920542

namespace A327223

/-- `lt[A327222(n+1), 1]+1` -/
def P17696020516794920542.Spec : Prop :=
  ∀ n, (P17696020516794920542.a n : ℤ) = A327223 (n + 1)

end A327223

/-! ## A327223.P2616349744862367693

`eq[A000038(n), A327222(n)]`
-/

namespace A327223.P2616349744862367693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327223.P2616349744862367693

namespace A327223

/-- `eq[A000038(n), A327222(n)]` -/
def P2616349744862367693.Spec : Prop :=
  ∀ n, (P2616349744862367693.a n : ℤ) = A327223 (n + 1)

end A327223

/-! ## A327223.P16349424251966076738

`record[n+1-A006530(n+1)*A327222(n+1)]`
-/

namespace A327223.P16349424251966076738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006530 (n + 1) * A327222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327223.P16349424251966076738

namespace A327223

/-- `record[n+1-A006530(n+1)*A327222(n+1)]` -/
def P16349424251966076738.Spec : Prop :=
  ∀ n, P16349424251966076738.a n = A327223 (n + 1)

end A327223

/-! ## A327223.P9205684288036686700

`record[n+1-(A327222(n)+2)*A327222(n+1)]`
-/

namespace A327223.P9205684288036686700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A327222 n + 2) * A327222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327223.P9205684288036686700

namespace A327223

/-- `record[n+1-(A327222(n)+2)*A327222(n+1)]` -/
def P9205684288036686700.Spec : Prop :=
  ∀ n, P9205684288036686700.a n = A327223 (n + 1)

end A327223

/-! ## A327223.P9288505971284366747

`eq[1, A327222(n)+A178334(A178334(n))]`
-/

namespace A327223.P9288505971284366747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n + A178334 (A178334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327223.P9288505971284366747

namespace A327223

/-- `eq[1, A327222(n)+A178334(A178334(n))]` -/
def P9288505971284366747.Spec : Prop :=
  ∀ n, (P9288505971284366747.a n : ℤ) = A327223 (n + 1)

end A327223

/-! ## A327223.P17750838717750850655

`eq[A000007(n), A327222(n)]`
-/

namespace A327223.P17750838717750850655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327223.P17750838717750850655

namespace A327223

/-- `eq[A000007(n), A327222(n)]` -/
def P17750838717750850655.Spec : Prop :=
  ∀ n, (P17750838717750850655.a n : ℤ) = A327223 (n + 1)

end A327223

/-! ## A327223.P15390354194951402577

`lt[A327222(n), A057427(n)]`
-/

namespace A327223.P15390354194951402577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327223.P15390354194951402577

namespace A327223

/-- `lt[A327222(n), A057427(n)]` -/
def P15390354194951402577.Spec : Prop :=
  ∀ n, (P15390354194951402577.a n : ℤ) = A327223 (n + 1)

end A327223

/-! ## A327223.P847495305371921104

`eq[1, A327222(n)+A054977(n)]`
-/

namespace A327223.P847495305371921104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n + A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327223.P847495305371921104

namespace A327223

/-- `eq[1, A327222(n)+A054977(n)]` -/
def P847495305371921104.Spec : Prop :=
  ∀ n, (P847495305371921104.a n : ℤ) = A327223 (n + 1)

end A327223

/-! ## A327223.P12566418101876690009

`eq[1, A327222(n)+A158388(n)]`
-/

namespace A327223.P12566418101876690009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n + A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327223.P12566418101876690009

namespace A327223

/-- `eq[1, A327222(n)+A158388(n)]` -/
def P12566418101876690009.Spec : Prop :=
  ∀ n, (P12566418101876690009.a n : ℤ) = A327223 (n + 1)

end A327223

/-! ## A327223.P11238524727276580820

`eq[A008683(A278225(n))², A327222(n)]`
-/

namespace A327223.P11238524727276580820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278225 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327223.P11238524727276580820

namespace A327223

/-- `eq[A008683(A278225(n))², A327222(n)]` -/
def P11238524727276580820.Spec : Prop :=
  ∀ n, (P11238524727276580820.a n : ℤ) = A327223 (n + 1)

end A327223

/-! ## A327223.P613843698425431469

`eq[A008683(A278225(n)+4), A327222(n)]`
-/

namespace A327223.P613843698425431469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278225 n + 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327223.P613843698425431469

namespace A327223

/-- `eq[A008683(A278225(n)+4), A327222(n)]` -/
def P613843698425431469.Spec : Prop :=
  ∀ n, (P613843698425431469.a n : ℤ) = A327223 (n + 1)

end A327223

/-! ## A327223.P7924569835693153021

`A049084(p?[A327222(n)+A008578(n+1)])`
-/

namespace A327223.P7924569835693153021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n + A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A327223.P7924569835693153021

namespace A327223

/-- `A049084(p?[A327222(n)+A008578(n+1)])` -/
def P7924569835693153021.Spec : Prop :=
  ∀ n, P7924569835693153021.a n = A327223 (n + 1)

end A327223

/-! ## A327223.P18195230902913122276

`eq[A008683((n+1)²), A327222(n)]`
-/

namespace A327223.P18195230902913122276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327223.P18195230902913122276

namespace A327223

/-- `eq[A008683((n+1)²), A327222(n)]` -/
def P18195230902913122276.Spec : Prop :=
  ∀ n, (P18195230902913122276.a n : ℤ) = A327223 (n + 1)

end A327223

/-! ## A327223.P15183833502713804263

`eq[1-A327222(n), A178334(A083219(n))]`
-/

namespace A327223.P15183833502713804263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A327222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A083219 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327223.P15183833502713804263

namespace A327223

/-- `eq[1-A327222(n), A178334(A083219(n))]` -/
def P15183833502713804263.Spec : Prop :=
  ∀ n, (P15183833502713804263.a n : ℤ) = A327223 (n + 1)

end A327223

/-!
# A327224: Positions of 1's in {A327222(k) : n > 0}.

The programs for A327224, the canonical program `A327224.P10926925885471084677` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327224 has offset 1).

The definition of A327224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327224.P11178974263882075549

`lt[0, A327222(n)]`
-/

namespace A327224.P11178974263882075549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327224.P11178974263882075549

namespace A327224

/-- `lt[0, A327222(n)]` -/
def P11178974263882075549.Spec : Prop :=
  ∀ n, (P11178974263882075549.a n : ℤ) = A327224 (n + 1)

end A327224

/-! ## A327224.P8474999519880393994

`record[(n+2)*A327222(n+2)]`
-/

namespace A327224.P8474999519880393994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A327222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327224.P8474999519880393994

namespace A327224

/-- `record[(n+2)*A327222(n+2)]` -/
def P8474999519880393994.Spec : Prop :=
  ∀ n, P8474999519880393994.a n = A327224 (n + 1)

end A327224

/-! ## A327224.P14491257714411078329

`eq[A054977(n), A327222(n)]`
-/

namespace A327224.P14491257714411078329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327224.P14491257714411078329

namespace A327224

/-- `eq[A054977(n), A327222(n)]` -/
def P14491257714411078329.Spec : Prop :=
  ∀ n, (P14491257714411078329.a n : ℤ) = A327224 (n + 1)

end A327224

/-! ## A327224.P10884438395720341081

`eq[A141044(n), A327222(n)]`
-/

namespace A327224.P10884438395720341081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327224.P10884438395720341081

namespace A327224

/-- `eq[A141044(n), A327222(n)]` -/
def P10884438395720341081.Spec : Prop :=
  ∀ n, (P10884438395720341081.a n : ℤ) = A327224 (n + 1)

end A327224

/-! ## A327224.P15475045910604494384

`eq[A158388(n), A327222(n)]`
-/

namespace A327224.P15475045910604494384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327224.P15475045910604494384

namespace A327224

/-- `eq[A158388(n), A327222(n)]` -/
def P15475045910604494384.Spec : Prop :=
  ∀ n, (P15475045910604494384.a n : ℤ) = A327224 (n + 1)

end A327224

/-! ## A327224.P15842847584394848072

`eq[A327222(n), A373565(n)]`
-/

namespace A327224.P15842847584394848072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327224.P15842847584394848072

namespace A327224

/-- `eq[A327222(n), A373565(n)]` -/
def P15842847584394848072.Spec : Prop :=
  ∀ n, (P15842847584394848072.a n : ℤ) = A327224 (n + 1)

end A327224

/-! ## A327224.P9918760001188126524

`eq[1, A327222(n*A327222(n))]`
-/

namespace A327224.P9918760001188126524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 ((n : ℤ) * A327222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327224.P9918760001188126524

namespace A327224

/-- `eq[1, A327222(n*A327222(n))]` -/
def P9918760001188126524.Spec : Prop :=
  ∀ n, (P9918760001188126524.a n : ℤ) = A327224 (n + 1)

end A327224

/-! ## A327224.P331419690107179573

`eq[(A000038(n)-1)², A327222(n)]`
-/

namespace A327224.P331419690107179573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327224.P331419690107179573

namespace A327224

/-- `eq[(A000038(n)-1)², A327222(n)]` -/
def P331419690107179573.Spec : Prop :=
  ∀ n, (P331419690107179573.a n : ℤ) = A327224 (n + 1)

end A327224

/-! ## A327224.P10926925885471084677

`A327207(n+1)-A327205(A327207(n+2)-3)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A327224

/-- `A327207(n+1)-A327205(A327207(n+2)-3)` -/
def P10926925885471084677.Spec : Prop :=
  ∀ n, P10926925885471084677.a n = A327224 (n + 1)

theorem P10926925885471084677.correct : P10926925885471084677.Spec := by
  intro n
  simp only [A327224, Nat.add_sub_cancel]

end A327224

/-! ## A327224.P3105922400455581513

`filter[A173517(n), A327222(#)]`
-/

namespace A327224.P3105922400455581513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327222 (f1 j).toNat = 1) n)

end

end A327224.P3105922400455581513

namespace A327224

/-- `filter[A173517(n), A327222(#)]` -/
def P3105922400455581513.Spec : Prop :=
  ∀ n, P3105922400455581513.a n = A327224 (n + 1)

end A327224

/-! ## A327224.P8109846723461920928

`filter[A261094(n), A327222(#)]`
-/

namespace A327224.P8109846723461920928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327222 (f1 j).toNat = 1) n)

end

end A327224.P8109846723461920928

namespace A327224

/-- `filter[A261094(n), A327222(#)]` -/
def P8109846723461920928.Spec : Prop :=
  ∀ n, P8109846723461920928.a n = A327224 (n + 1)

end A327224

/-! ## A327224.P4725035444709474117

`filter[A092942(n), A327222(#)]`
-/

namespace A327224.P4725035444709474117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327222 (f1 j).toNat = 1) n)

end

end A327224.P4725035444709474117

namespace A327224

/-- `filter[A092942(n), A327222(#)]` -/
def P4725035444709474117.Spec : Prop :=
  ∀ n, P4725035444709474117.a n = A327224 (n + 1)

end A327224

/-! ## A327224.P18385707925151531008

`filter[A117909(n), A327222(#)]`
-/

namespace A327224.P18385707925151531008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327222 (f1 j).toNat = 1) n)

end

end A327224.P18385707925151531008

namespace A327224

/-- `filter[A117909(n), A327222(#)]` -/
def P18385707925151531008.Spec : Prop :=
  ∀ n, P18385707925151531008.a n = A327224 (n + 1)

end A327224

/-! ## A327224.P8143212621421638069

`filter[A083926(n), A327222(#)]`
-/

namespace A327224.P8143212621421638069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327222 (f1 j).toNat = 1) n)

end

end A327224.P8143212621421638069

namespace A327224

/-- `filter[A083926(n), A327222(#)]` -/
def P8143212621421638069.Spec : Prop :=
  ∀ n, P8143212621421638069.a n = A327224 (n + 1)

end A327224

/-! ## A327224.P14681086977666005239

`filter[A230414(n), A327222(#)]`
-/

namespace A327224.P14681086977666005239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327222 (f1 j).toNat = 1) n)

end

end A327224.P14681086977666005239

namespace A327224

/-- `filter[A230414(n), A327222(#)]` -/
def P14681086977666005239.Spec : Prop :=
  ∀ n, P14681086977666005239.a n = A327224 (n + 1)

end A327224

/-! ## A327224.P13609048420432786958

`filter[A027656(n), A327222(#)]`
-/

namespace A327224.P13609048420432786958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327222 (f1 j).toNat = 1) n)

end

end A327224.P13609048420432786958

namespace A327224

/-- `filter[A027656(n), A327222(#)]` -/
def P13609048420432786958.Spec : Prop :=
  ∀ n, P13609048420432786958.a n = A327224 (n + 1)

end A327224

/-! ## A327224.P2735161054938298432

`filter[A057979(n), A327222(#)]`
-/

namespace A327224.P2735161054938298432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327222 (f1 j).toNat = 1) n)

end

end A327224.P2735161054938298432

namespace A327224

/-- `filter[A057979(n), A327222(#)]` -/
def P2735161054938298432.Spec : Prop :=
  ∀ n, P2735161054938298432.a n = A327224 (n + 1)

end A327224

/-! ## A327224.P13470179126852958305

`filter[A102389(n), A327222(#)]`
-/

namespace A327224.P13470179126852958305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327222 (f1 j).toNat = 1) n)

end

end A327224.P13470179126852958305

namespace A327224

/-- `filter[A102389(n), A327222(#)]` -/
def P13470179126852958305.Spec : Prop :=
  ∀ n, P13470179126852958305.a n = A327224 (n + 1)

end A327224

/-! ## A327224.P1685978135108470197

`filter[A102390(n), A327222(#)]`
-/

namespace A327224.P1685978135108470197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327222 (f1 j).toNat = 1) n)

end

end A327224.P1685978135108470197

namespace A327224

/-- `filter[A102390(n), A327222(#)]` -/
def P1685978135108470197.Spec : Prop :=
  ∀ n, P1685978135108470197.a n = A327224 (n + 1)

end A327224

/-! ## A327224.P1568157633452117100

`filter[A131360(n), A327222(#)]`
-/

namespace A327224.P1568157633452117100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327222 (f1 j).toNat = 1) n)

end

end A327224.P1568157633452117100

namespace A327224

/-- `filter[A131360(n), A327222(#)]` -/
def P1568157633452117100.Spec : Prop :=
  ∀ n, P1568157633452117100.a n = A327224 (n + 1)

end A327224

/-!
# A327227: Number of labeled simple graphs covering n vertices with at least one endpoint/leaf.

The programs for A327227, there is no canonical definition to state claims against.
-/

/-! ## A327227.P13722118390038438166

`A006129(n)-A100743(n)`
-/

namespace A327227.P13722118390038438166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 n - A100743 n

end

end A327227.P13722118390038438166

/-! ## A327227.P6901682876584448958

`2^C(n, 2)-A327367(n)-A100743(n)`
-/

namespace A327227.P6901682876584448958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A327367 n - A100743 n

end

end A327227.P6901682876584448958

/-! ## A327227.P15376573216828153460

`A006129(n)-A327377(A000217(n))`
-/

namespace A327227.P15376573216828153460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 n - A327377 (A000217 n).toNat

end

end A327227.P15376573216828153460

/-! ## A327227.P10139094633983602822

`A006125(n)-(A327367(n)+A100743(n))`
-/

namespace A327227.P10139094633983602822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - (A327367 n + A100743 n)

end

end A327227.P10139094633983602822

/-! ## A327227.P843076826472636040

`∏[A011782(n)]-(A327367(n)+A100743(n))`
-/

namespace A327227.P843076826472636040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A327367 n + A100743 n)

end

end A327227.P843076826472636040

/-!
# A327228: Number of set-systems with n vertices and at least one endpoint/leaf.

The programs for A327228, there is no canonical definition to state claims against.
-/

/-! ## A327228.P10165947872861622473

`A058891(n+1)-A330059(n)`
-/

namespace A327228.P10165947872861622473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058891 (n + 1) - A330059 n

end

end A327228.P10165947872861622473

/-! ## A327228.P14637733024175917947

`A000079(A000225(n))-A330059(n)`
-/

namespace A327228.P14637733024175917947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000225 n).toNat - A330059 n

end

end A327228.P14637733024175917947

/-! ## A327228.P11489886473029358390

`A011782(A000079(n))-A330059(n)`
-/

namespace A327228.P11489886473029358390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000079 n).toNat - A330059 n

end

end A327228.P11489886473029358390

/-! ## A327228.P15467210373567101387

`A011782(A086066(n))-A330059(n)`
-/

namespace A327228.P15467210373567101387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A086066 n).toNat - A330059 n

end

end A327228.P15467210373567101387

/-! ## A327228.P695300062591494320

`A011782(A011782(n+1))-A330059(n)`
-/

namespace A327228.P695300062591494320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A011782 (n + 1)).toNat - A330059 n

end

end A327228.P695300062591494320

/-!
# A327229: Number of set-systems covering n vertices with at least one endpoint/leaf.

The programs for A327229, there is no canonical definition to state claims against.
-/

/-! ## A327229.P9632173856036855406

`A007716(n)*A090396(A129661(n))`
-/

namespace A327229.P9632173856036855406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 n * A090396 (A129661 n).toNat

end

end A327229.P9632173856036855406

/-!
# A327230: Number of non-isomorphic set-systems covering n vertices with at least one endpoint/leaf.

The programs for A327230, there is no canonical definition to state claims against.
-/

/-! ## A327230.P8428572762418405931

`a(n-1)²+2` with `a(0)=0, a(1)=1, a(2)=3, a(3)=14`
-/

namespace A327230.P8428572762418405931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 14] fun n a =>
  a (n - 1) ^ 2 + 2

end

end A327230.P8428572762418405931

/-!
# A327231: Number of labeled simple connected graphs covering a subset of {1..n} with at least one non-endpoint bridge (non-spanning edge-connectivity 1).

The programs for A327231, there is no canonical definition to state claims against.
-/

/-! ## A327231.P5289066540853661435

`A182100(n)-n-(A327200(n)+1)`
-/

namespace A327231.P5289066540853661435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182100 n - (n : ℤ) - (A327200 n + 1)

end

end A327231.P5289066540853661435

/-! ## A327231.P15794765079956440732

`A008611(A327354(n))`
-/

namespace A327231.P15794765079956440732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A327354 n).toNat

end

end A327231.P15794765079956440732

/-!
# A327234: Smallest BII-number of a set-system with cut-connectivity n.

The programs for A327234, there is no canonical definition to state claims against.
-/

/-! ## A327234.P16956370071933601318

`A327373(n)+char[5]`
-/

namespace A327234.P16956370071933601318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327373 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A327234.P16956370071933601318

/-!
# A327235: Number of unlabeled simple graphs with n vertices whose edge-set is not connected.

The programs for A327235, there is no canonical definition to state claims against.
-/

/-! ## A327235.P11789841459172994855

`∑[A327075(n)]`
-/

namespace A327235.P11789841459172994855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327235.P11789841459172994855

/-! ## A327235.P15004714866184511754

`A327075(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A327235.P15004714866184511754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A327075 n + a (A023443 n).toNat

end

end A327235.P15004714866184511754

/-! ## A327235.P3046331226991345856

`∑[A002494(n)%A001349(n)]+1`
-/

namespace A327235.P3046331226991345856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002494 n) (A001349 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A327235.P3046331226991345856

/-! ## A327235.P7264699622018014727

`∑[A002494(n)-A001349(n)%A000088(n)]`
-/

namespace A327235.P7264699622018014727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n - Int.tmod (A001349 n) (A000088 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327235.P7264699622018014727

/-! ## A327235.P1124586903576473435

`A000088(n)+∑[A019590(n+1)-A001349(n)]`
-/

namespace A327235.P1124586903576473435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) - A001349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327235.P1124586903576473435

/-!
# A327238: Expansion of Sum_{k>=1} ((1 + k * x^k)^k - 1).

The programs for A327238, the canonical program `A327238.P15941004980753009954` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327238 has offset 1).

The definition of A327238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327238.P15941004980753009954

`∑{d}[n+1, ((n+1)/#)^#*C((n+1)/#, #)]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327238

/-- `∑{d}[n+1, ((n+1)/#)^#*C((n+1)/#, #)]` -/
def P15941004980753009954.Spec : Prop :=
  ∀ n, P15941004980753009954.a n = (A327238 (n + 1) : ℚ)

end A327238

/-!
# A327239: For n >= 1, a(n) = b(n+1) - b(n) where b is A013947.

The programs for A327239, the canonical program `A327239.P9428732686515301854` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327239 has offset 1).

The definition of A327239 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327239.P9428732686515301854

`A013947(n+2)-A013947(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A327239

/-- `A013947(n+2)-A013947(n+1)` -/
def P9428732686515301854.Spec : Prop :=
  ∀ n, P9428732686515301854.a n = A327239 (n + 1)

theorem P9428732686515301854.correct : P9428732686515301854.Spec := by
  intro n
  simp only [A327239, Nat.add_sub_cancel]

end A327239

/-! ## A327239.P6079760855489580079

`Δ[A013947(n+1)]`
-/

namespace A327239.P6079760855489580079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327239.P6079760855489580079

namespace A327239

/-- `Δ[A013947(n+1)]` -/
def P6079760855489580079.Spec : Prop :=
  ∀ n, P6079760855489580079.a n = A327239 (n + 1)

theorem P6079760855489580079.correct : P6079760855489580079.Spec := by
  intro n
  simp only [A327239, Nat.add_sub_cancel, A327239.P6079760855489580079.f1, A327239.P6079760855489580079.a, A327239.P9428732686515301854.a, SequenceMachineLib.memo_apply]

end A327239

/-! ## A327239.P7684789548720903687

`Δ[eq[1, A000002(n+1)]]`
-/

namespace A327239.P7684789548720903687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A327239.P7684789548720903687

namespace A327239

/-- `Δ[eq[1, A000002(n+1)]]` -/
def P7684789548720903687.Spec : Prop :=
  ∀ n, P7684789548720903687.a n = A327239 (n + 1)

end A327239

/-! ## A327239.P3966089121519902879

`A248806(n+1)+1`
-/

namespace A327239.P3966089121519902879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248806 (n + 1) + 1

end

end A327239.P3966089121519902879

namespace A327239

/-- `A248806(n+1)+1` -/
def P3966089121519902879.Spec : Prop :=
  ∀ n, P3966089121519902879.a n = A327239 (n + 1)

end A327239

/-! ## A327239.P12878320970579745493

`Δ[eq[2, A049705(n+1)]]`
-/

namespace A327239.P12878320970579745493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A327239.P12878320970579745493

namespace A327239

/-- `Δ[eq[2, A049705(n+1)]]` -/
def P12878320970579745493.Spec : Prop :=
  ∀ n, P12878320970579745493.a n = A327239 (n + 1)

end A327239

/-! ## A327239.P4274705868847701580

`Δ[A306229(A013948(n+1))]`
-/

namespace A327239.P4274705868847701580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (A013948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327239.P4274705868847701580

namespace A327239

/-- `Δ[A306229(A013948(n+1))]` -/
def P4274705868847701580.Spec : Prop :=
  ∀ n, P4274705868847701580.a n = A327239 (n + 1)

end A327239

/-! ## A327239.P5407446953989691711

`Δ[eq[0, A123594(n+1)]]`
-/

namespace A327239.P5407446953989691711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A327239.P5407446953989691711

namespace A327239

/-- `Δ[eq[0, A123594(n+1)]]` -/
def P5407446953989691711.Spec : Prop :=
  ∀ n, P5407446953989691711.a n = A327239 (n + 1)

end A327239

/-!
# A327240: 3-smooth numbers k such that k-1 and (k-2)/2 are prime.

The programs for A327240, there is no canonical definition to state claims against.
-/

/-! ## A327240.P18085907049670094783

`∩[A003586(n+1), A005385(n+1)+1]`
-/

namespace A327240.P18085907049670094783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327240.P18085907049670094783

/-! ## A327240.P17370461727882117431

`∩[A003586(n+1), A077065(n+1)+2]`
-/

namespace A327240.P17370461727882117431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327240.P17370461727882117431

/-! ## A327240.P4937749098166261091

`p?[A005408(A086983(n+1))]+1`
-/

namespace A327240.P4937749098166261091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A086983 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A327240.P4937749098166261091

/-! ## A327240.P13582342968464156621

`p?[A144396(A005105(n+1))]+1`
-/

namespace A327240.P13582342968464156621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A005105 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A327240.P13582342968464156621

/-! ## A327240.P15216044680972510977

`eq[A065330(n+1), A156659(n)]+1`
-/

namespace A327240.P15216044680972510977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A327240.P15216044680972510977

/-!
# A327242: Expansion of Sum_{k>=1} tau(k) * x^k / (1 + x^k)^2, where tau = A000005.

The programs for A327242, the canonical program `A327242.P18303068211175146886` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327242 has offset 1).

The definition of A327242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327242.P18303068211175146886

`∑{d}[n+1, A002129(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327242

/-- `∑{d}[n+1, A002129(#)]` -/
def P18303068211175146886.Spec : Prop :=
  ∀ n, P18303068211175146886.a n = A327242 (n + 1)

theorem P18303068211175146886.correct : P18303068211175146886.Spec := by
  intro n
  simp only [A327242, Nat.add_sub_cancel]

end A327242

/-! ## A327242.P12605478087888788468

`∑{d}[n+1, (-1)^(#+1)*#*A000005((n+1)/#)]`
-/

namespace A327242.P12605478087888788468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1) ^ (d + 1) * (d : ℤ) * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327242.P12605478087888788468

namespace A327242

/-- `∑{d}[n+1, (-1)^(#+1)*#*A000005((n+1)/#)]` -/
def P12605478087888788468.Spec : Prop :=
  ∀ n, P12605478087888788468.a n = A327242 (n + 1)

end A327242

/-! ## A327242.P17790670065769911566

`2*A288417(n+1)-A007429(n+1)`
-/

namespace A327242.P17790670065769911566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288417 (n + 1) - A007429 (n + 1)

end

end A327242.P17790670065769911566

namespace A327242

/-- `2*A288417(n+1)-A007429(n+1)` -/
def P17790670065769911566.Spec : Prop :=
  ∀ n, P17790670065769911566.a n = A327242 (n + 1)

end A327242

/-! ## A327242.P3639755968240283341

`∑{d}[n+1, A038712(#)*A109506((n+1)/#)]`
-/

namespace A327242.P3639755968240283341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A109506 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327242.P3639755968240283341

namespace A327242

/-- `∑{d}[n+1, A038712(#)*A109506((n+1)/#)]` -/
def P3639755968240283341.Spec : Prop :=
  ∀ n, P3639755968240283341.a n = A327242 (n + 1)

end A327242

/-! ## A327242.P5461804652158230810

`∑{d}[n+1, A001511(#)*A186690((n+1)/#)]`
-/

namespace A327242.P5461804652158230810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A186690 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327242.P5461804652158230810

namespace A327242

/-- `∑{d}[n+1, A001511(#)*A186690((n+1)/#)]` -/
def P5461804652158230810.Spec : Prop :=
  ∀ n, P5461804652158230810.a n = A327242 (n + 1)

end A327242

/-! ## A327242.P15564209172531255307

`∑{d}[n+1, A080278(#)*A131947((n+1)/#)]`
-/

namespace A327242.P15564209172531255307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080278 d * A131947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327242.P15564209172531255307

namespace A327242

/-- `∑{d}[n+1, A080278(#)*A131947((n+1)/#)]` -/
def P15564209172531255307.Spec : Prop :=
  ∀ n, P15564209172531255307.a n = A327242 (n + 1)

end A327242

/-! ## A327242.P5907705817052842127

`∑{d}[n+1, A129628(#)*A186111((n+1)/#)]`
-/

namespace A327242.P5907705817052842127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A186111 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327242.P5907705817052842127

namespace A327242

/-- `∑{d}[n+1, A129628(#)*A186111((n+1)/#)]` -/
def P5907705817052842127.Spec : Prop :=
  ∀ n, P5907705817052842127.a n = A327242 (n + 1)

end A327242

/-! ## A327242.P14204786057421606851

`∑{d}[n+1, A001227(#)*A328154((n+1)/#)]`
-/

namespace A327242.P14204786057421606851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A328154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327242.P14204786057421606851

namespace A327242

/-- `∑{d}[n+1, A001227(#)*A328154((n+1)/#)]` -/
def P14204786057421606851.Spec : Prop :=
  ∀ n, P14204786057421606851.a n = A327242 (n + 1)

end A327242

/-! ## A327242.P17440462973576020410

`∑{d}[n+1, A007425(#)*A325596((n+1)/#)]`
-/

namespace A327242.P17440462973576020410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327242.P17440462973576020410

namespace A327242

/-- `∑{d}[n+1, A007425(#)*A325596((n+1)/#)]` -/
def P17440462973576020410.Spec : Prop :=
  ∀ n, P17440462973576020410.a n = A327242 (n + 1)

end A327242

/-! ## A327242.P3186399685452839505

`∑{d}[n+1, A118827(#)*A264740((n+1)/#)]`
-/

namespace A327242.P3186399685452839505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A118827 d * A264740 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327242.P3186399685452839505

namespace A327242

/-- `∑{d}[n+1, A118827(#)*A264740((n+1)/#)]` -/
def P3186399685452839505.Spec : Prop :=
  ∀ n, P3186399685452839505.a n = A327242 (n + 1)

end A327242

/-! ## A327242.P6784071382626457241

`A007429(n+1)+A327096(n+1)-A145396(n+1)`
-/

namespace A327242.P6784071382626457241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) + (A327096 (n + 1) - A145396 (n + 1))

end

end A327242.P6784071382626457241

namespace A327242

/-- `A007429(n+1)+A327096(n+1)-A145396(n+1)` -/
def P6784071382626457241.Spec : Prop :=
  ∀ n, P6784071382626457241.a n = A327242 (n + 1)

end A327242

/-! ## A327242.P4031311903106157127

`A007429(2*(n+1))-A145398(2*(n+1))`
-/

namespace A327242.P4031311903106157127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (2 * (n + 1)) - A145398 (2 * (n + 1))

end

end A327242.P4031311903106157127

namespace A327242

/-- `A007429(2*(n+1))-A145398(2*(n+1))` -/
def P4031311903106157127.Spec : Prop :=
  ∀ n, P4031311903106157127.a n = A327242 (n + 1)

end A327242

/-! ## A327242.P8426175584930815658

`A327096(2*(n+1))-A145378(2*(n+1))`
-/

namespace A327242.P8426175584930815658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327096 (2 * (n + 1)) - A145378 (2 * (n + 1))

end

end A327242.P8426175584930815658

namespace A327242

/-- `A327096(2*(n+1))-A145378(2*(n+1))` -/
def P8426175584930815658.Spec : Prop :=
  ∀ n, P8426175584930815658.a n = A327242 (n + 1)

end A327242

/-!
# A327243: a(n) = n! * Sum_{d|n} (-1)^(n - d) / (n/d)!.

The programs for A327243, the canonical program `A327243.P1581111939415025881` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327243 has offset 1).

The definition of A327243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327243.P1581111939415025881

`(n+1)!*∑{d}[n+1, (-1)^(n+1-#)/((n+1)/#)!]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327243

/-- `(n+1)!*∑{d}[n+1, (-1)^(n+1-#)/((n+1)/#)!]` -/
def P1581111939415025881.Spec : Prop :=
  ∀ n, P1581111939415025881.a n = (A327243 (n + 1) : ℚ)

end A327243

/-! ## A327243.P14020250698760198839

`A132958(n+1)+A004013(A132958(n+1))`
-/

namespace A327243.P14020250698760198839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132958 (n + 1) + A004013 (A132958 (n + 1)).toNat

end

end A327243.P14020250698760198839

namespace A327243

/-- `A132958(n+1)+A004013(A132958(n+1))` -/
def P14020250698760198839.Spec : Prop :=
  ∀ n, P14020250698760198839.a n = A327243 (n + 1)

end A327243

/-!
# A327244: Number T(n,k) of colored compositions of n using all colors of a k-set such that all parts have different color patterns and the patterns for parts i are sorted and have i colors in (weakly) increasing order; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A327244, there is no canonical definition to state claims against.
-/

/-! ## A327244.P12791794786668310337

`or(A014473(n), A335330(A062279(n)))`
-/

namespace A327244.P12791794786668310337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014473 n) (A335330 (A062279 n).toNat)

end

end A327244.P12791794786668310337

/-! ## A327244.P13524418817194733019

`or(A062275(n), A335330(A062279(n)))`
-/

namespace A327244.P13524418817194733019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062275 n) (A335330 (A062279 n).toNat)

end

end A327244.P13524418817194733019

/-! ## A327244.P6126760027138686530

`or(A107846(A022174(n)), A335330(n))`
-/

namespace A327244.P6126760027138686530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 (A022174 n).toNat) (A335330 n)

end

end A327244.P6126760027138686530

/-! ## A327244.P11856420193188131943

`or(A335330(n), A342001(A156581(n)))`
-/

namespace A327244.P11856420193188131943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A335330 n) (A342001 (A156581 n).toNat)

end

end A327244.P11856420193188131943

/-!
# A327245: Number T(n,k) of colored compositions of n using all colors of a k-set such that all parts have different color patterns and the patterns for parts i have i colors in (weakly) increasing order; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A327245, there is no canonical definition to state claims against.
-/

/-! ## A327245.P11429078494873661212

`∑{e}[A000165(A319498(n)), #]`
-/

namespace A327245.P11429078494873661212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (A319498 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A327245.P11429078494873661212

/-! ## A327245.P9516078450122701580

`A319498(n)+A001222(A319498(n)!)`
-/

namespace A327245.P9516078450122701580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319498 n + A001222 (Nat.factorial (A319498 n).toNat)

end

end A327245.P9516078450122701580

/-! ## A327245.P6136140282503880396

`A317239(A261959(n))+A231516(2^A327244(n))`
-/

namespace A327245.P6136140282503880396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317239 (A261959 n).toNat + A231516 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A327244 n : ℤ))).toNat

end

end A327245.P6136140282503880396

/-!
# A327247: Number of odd prime powers <= n (with exponents > 0).

The programs for A327247, the canonical program `A327247.P2442435851943604029` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327247 has offset 1).

The definition of A327247 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327247.P2442435851943604029

`A025528(n+1)-A000523(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A327247

/-- `A025528(n+1)-A000523(n+1)` -/
def P2442435851943604029.Spec : Prop :=
  ∀ n, P2442435851943604029.a n = A327247 (n + 1)

theorem P2442435851943604029.correct : P2442435851943604029.Spec := by
  intro n
  simp only [A327247, Nat.add_sub_cancel]

end A327247

/-! ## A327247.P10009572552259489771

`∑[A174275(n+1)]`
-/

namespace A327247.P10009572552259489771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327247.P10009572552259489771

namespace A327247

/-- `∑[A174275(n+1)]` -/
def P10009572552259489771.Spec : Prop :=
  ∀ n, P10009572552259489771.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P11971130663555072911

`A025548(∑[char[2*n]])`
-/

namespace A327247.P11971130663555072911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025548 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327247.P11971130663555072911

namespace A327247

/-- `A025548(∑[char[2*n]])` -/
def P11971130663555072911.Spec : Prop :=
  ∀ n, P11971130663555072911.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P11914881460696346281

`∑[A354981(2*(n+1))]`
-/

namespace A327247.P11914881460696346281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354981 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327247.P11914881460696346281

namespace A327247

/-- `∑[A354981(2*(n+1))]` -/
def P11914881460696346281.Spec : Prop :=
  ∀ n, P11914881460696346281.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P2245913950735781438

`∑[A074639(n+1)%2]`
-/

namespace A327247.P2245913950735781438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074639 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327247.P2245913950735781438

namespace A327247

/-- `∑[A074639(n+1)%2]` -/
def P2245913950735781438.Spec : Prop :=
  ∀ n, P2245913950735781438.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P10819509301795126956

`∑[A120007(n+1)%2]`
-/

namespace A327247.P10819509301795126956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120007 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327247.P10819509301795126956

namespace A327247

/-- `∑[A120007(n+1)%2]` -/
def P10819509301795126956.Spec : Prop :=
  ∀ n, P10819509301795126956.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P14071358142814490383

`∑[n²%A014963(or(1, n))]`
-/

namespace A327247.P14071358142814490383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A014963 (Nat.lor 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327247.P14071358142814490383

namespace A327247

/-- `∑[n²%A014963(or(1, n))]` -/
def P14071358142814490383.Spec : Prop :=
  ∀ n, P14071358142814490383.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P7379274143228476092

`∑[1-A354108(2*(n+1))]`
-/

namespace A327247.P7379274143228476092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A354108 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327247.P7379274143228476092

namespace A327247

/-- `∑[1-A354108(2*(n+1))]` -/
def P7379274143228476092.Spec : Prop :=
  ∀ n, P7379274143228476092.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P16313999300196236108

`∑[C(C(2, A089631(n+1)), 2)]`
-/

namespace A327247.P16313999300196236108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A089631 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327247.P16313999300196236108

namespace A327247

/-- `∑[C(C(2, A089631(n+1)), 2)]` -/
def P16313999300196236108.Spec : Prop :=
  ∀ n, (P16313999300196236108.a n : ℤ) = A327247 (n + 1)

end A327247

/-! ## A327247.P17437125228414689319

`∑[and(n+1, A069513(n+1))]`
-/

namespace A327247.P17437125228414689319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A069513 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327247.P17437125228414689319

namespace A327247

/-- `∑[and(n+1, A069513(n+1))]` -/
def P17437125228414689319.Spec : Prop :=
  ∀ n, P17437125228414689319.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P7532231942019265379

`∑[A005087(A014963(n+1))]`
-/

namespace A327247.P7532231942019265379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327247.P7532231942019265379

namespace A327247

/-- `∑[A005087(A014963(n+1))]` -/
def P7532231942019265379.Spec : Prop :=
  ∀ n, P7532231942019265379.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P15185522891401352006

`A025532(n)-A339893(n+1)`
-/

namespace A327247.P15185522891401352006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025532 n - A339893 (n + 1)

end

end A327247.P15185522891401352006

namespace A327247

/-- `A025532(n)-A339893(n+1)` -/
def P15185522891401352006.Spec : Prop :=
  ∀ n, P15185522891401352006.a n = A327247 (n + 1)

theorem P15185522891401352006.correct : P15185522891401352006.Spec := by
  intro n
  simp only [A327247, Nat.add_sub_cancel, A327247.P15185522891401352006.a, A327247.P2442435851943604029.a, A000523, A000523.P3314682526375882520.a, A025528, A025528.P16801658268274976616.f1, A025528.P16801658268274976616.a, A025532, A025532.P16291911250862818187.a, A339893, A339893.P4828235221648378328.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A002321, A002321.P574617781515155943.f2, A002321.P574617781515155943.f3, A002321.P574617781515155943.f1, A002321.P574617781515155943.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327247

/-! ## A327247.P7854495400043981975

`∑[A178226(A014963(n+1)-1)]`
-/

namespace A327247.P7854495400043981975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A014963 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327247.P7854495400043981975

namespace A327247

/-- `∑[A178226(A014963(n+1)-1)]` -/
def P7854495400043981975.Spec : Prop :=
  ∀ n, P7854495400043981975.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P2155562615406761685

`∑[A001222(A014963(C(or(1, n), n)))]`
-/

namespace A327247.P2155562615406761685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014963 (Nat.choose (Nat.lor 1 n) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327247.P2155562615406761685

namespace A327247

/-- `∑[A001222(A014963(C(or(1, n), n)))]` -/
def P2155562615406761685.Spec : Prop :=
  ∀ n, P2155562615406761685.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P5243473424140652404

`A081063(n+1)-A069924(n+1)`
-/

namespace A327247.P5243473424140652404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081063 (n + 1) - A069924 (n + 1)

end

end A327247.P5243473424140652404

namespace A327247

/-- `A081063(n+1)-A069924(n+1)` -/
def P5243473424140652404.Spec : Prop :=
  ∀ n, P5243473424140652404.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P1732125507995439388

`A065515(n+1)-A113473(n+1)`
-/

namespace A327247.P1732125507995439388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - A113473 (n + 1)

end

end A327247.P1732125507995439388

namespace A327247

/-- `A065515(n+1)-A113473(n+1)` -/
def P1732125507995439388.Spec : Prop :=
  ∀ n, P1732125507995439388.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P12505381391886687760

`∑[A001221(2*A014963(n+1))-1]`
-/

namespace A327247.P12505381391886687760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A014963 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327247.P12505381391886687760

namespace A327247

/-- `∑[A001221(2*A014963(n+1))-1]` -/
def P12505381391886687760.Spec : Prop :=
  ∀ n, P12505381391886687760.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P3931898255069206086

`A062153(n+1)+A081063(n+1)-A071521(n+1)`
-/

namespace A327247.P3931898255069206086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1) + (A081063 (n + 1) - A071521 (n + 1))

end

end A327247.P3931898255069206086

namespace A327247

/-- `A062153(n+1)+A081063(n+1)-A071521(n+1)` -/
def P3931898255069206086.Spec : Prop :=
  ∀ n, P3931898255069206086.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P8393062573669646379

`A378500(A131055(n+2))`
-/

namespace A327247.P8393062573669646379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378500 (A131055 (n + 2)).toNat

end

end A327247.P8393062573669646379

namespace A327247

/-- `A378500(A131055(n+2))` -/
def P8393062573669646379.Spec : Prop :=
  ∀ n, P8393062573669646379.a n = A327247 (n + 1)

end A327247

/-! ## A327247.P2863408441604626167

`∑[char[eq[2, A304182(n+1)]]]`
-/

namespace A327247.P2863408441604626167
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304182 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327247.P2863408441604626167

namespace A327247

/-- `∑[char[eq[2, A304182(n+1)]]]` -/
def P2863408441604626167.Spec : Prop :=
  ∀ n, (P2863408441604626167.a n : ℤ) = A327247 (n + 1)

end A327247

/-!
# A327248: Squarefree part of A078522(n+1).

The programs for A327248, there is no canonical definition to state claims against.
-/

/-! ## A327248.P18205355418028460867

`A068310(A001653(n+2))`
-/

namespace A327248.P18205355418028460867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068310 (A001653 (n + 2)).toNat

end

end A327248.P18205355418028460867

/-!
# A327249: Expansion of Sum_{k>=1} x^k * (1 + k * x^k)^k.

The programs for A327249, the canonical program `A327249.P13314618724788189148` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327249 has offset 1).

The definition of A327249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327249.P13314618724788189148

`∑{d}[n+1, ((n+1)/#)^(#-1)*C((n+1)/#, #-1)]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327249

/-- `∑{d}[n+1, ((n+1)/#)^(#-1)*C((n+1)/#, #-1)]` -/
def P13314618724788189148.Spec : Prop :=
  ∀ n, P13314618724788189148.a n = (A327249 (n + 1) : ℚ)

end A327249

/-!
# A327251: Expansion of Sum_{k>=1} psi(k) * x^k / (1 - x^k)^2, where psi = A001615.

The programs for A327251, the canonical program `A327251.P13631091954083186129` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327251 has offset 1).

The definition of A327251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327251.P13631091954083186129

`∑{d}[n+1, A322577(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A327251

/-- `∑{d}[n+1, A322577(#)]` -/
def P13631091954083186129.Spec : Prop :=
  ∀ n, P13631091954083186129.a n = A327251 (n + 1)

theorem P13631091954083186129.correct : P13631091954083186129.Spec := by
  intro n
  simp only [A327251, Nat.add_sub_cancel]

end A327251

/-! ## A327251.P6173732173495598041

`∑{d}[n+1, #*A001615((n+1)/#)]`
-/

namespace A327251.P6173732173495598041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P6173732173495598041

namespace A327251

/-- `∑{d}[n+1, #*A001615((n+1)/#)]` -/
def P6173732173495598041.Spec : Prop :=
  ∀ n, P6173732173495598041.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P17121284850053139193

`A349132(n+1)+A348982(n+1)`
-/

namespace A327251.P17121284850053139193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349132 (n + 1) + A348982 (n + 1)

end

end A327251.P17121284850053139193

namespace A327251

/-- `A349132(n+1)+A348982(n+1)` -/
def P17121284850053139193.Spec : Prop :=
  ∀ n, P17121284850053139193.a n = A327251 (n + 1)

theorem P17121284850053139193.correct : P17121284850053139193.Spec := by
  intro n
  simp only [A327251, Nat.add_sub_cancel, A327251.P17121284850053139193.a, A327251.P13631091954083186129.f1, A327251.P13631091954083186129.a, A322577, A322577.P2466038700097355167.f1, A322577.P2466038700097355167.a, A348982, A348982.P3645871020152581300.f1, A348982.P3645871020152581300.a, A349132, A349132.P869711925521774844.a, A001615, A001615.P12078511981713404634.a, A063659, A063659.P17976112420004081821.a, A322582, A322582.P8560399753878851377.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003958, A003958.P196685604458257440.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A063658, A063658.P2835377320300210005.f1, A063658.P2835377320300210005.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327251

/-! ## A327251.P8946934600525644288

`A349172(n+1)-A349142(n+1)`
-/

namespace A327251.P8946934600525644288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349172 (n + 1) - A349142 (n + 1)

end

end A327251.P8946934600525644288

namespace A327251

/-- `A349172(n+1)-A349142(n+1)` -/
def P8946934600525644288.Spec : Prop :=
  ∀ n, P8946934600525644288.a n = A327251 (n + 1)

theorem P8946934600525644288.correct : P8946934600525644288.Spec := by
  intro n
  simp only [A327251, Nat.add_sub_cancel, A327251.P8946934600525644288.a, A327251.P13631091954083186129.f1, A327251.P13631091954083186129.a, A322577, A322577.P2466038700097355167.f1, A322577.P2466038700097355167.a, A349142, A349142.P2043599666543959663.f1, A349142.P2043599666543959663.a, A349172, A349172.P9409775987477653705.a, A001615, A001615.P12078511981713404634.a, A063659, A063659.P17976112420004081821.a, A348507, A348507.P8468116905144779811.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003959, A003959.P4118819690015594160.f1, A003959.P4118819690015594160.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A063658, A063658.P2835377320300210005.f1, A063658.P2835377320300210005.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A014963, A014963.P5975177236000282614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327251

/-! ## A327251.P9332883181276514086

`A003557(n+1)*A347127(n+1)`
-/

namespace A327251.P9332883181276514086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A347127 (n + 1)

end

end A327251.P9332883181276514086

namespace A327251

/-- `A003557(n+1)*A347127(n+1)` -/
def P9332883181276514086.Spec : Prop :=
  ∀ n, P9332883181276514086.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P17751128653423474215

`∑{d}[n+1, A008966(#)*A038040((n+1)/#)]`
-/

namespace A327251.P17751128653423474215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P17751128653423474215

namespace A327251

/-- `∑{d}[n+1, A008966(#)*A038040((n+1)/#)]` -/
def P17751128653423474215.Spec : Prop :=
  ∀ n, P17751128653423474215.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P17971261032820354957

`∑{d}[n+1, A018804(#)*A034444((n+1)/#)]`
-/

namespace A327251.P17971261032820354957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P17971261032820354957

namespace A327251

/-- `∑{d}[n+1, A018804(#)*A034444((n+1)/#)]` -/
def P17971261032820354957.Spec : Prop :=
  ∀ n, P17971261032820354957.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P11046998675537532726

`∑{d}[n+1, A000010(#)*A060648((n+1)/#)]`
-/

namespace A327251.P11046998675537532726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P11046998675537532726

namespace A327251

/-- `∑{d}[n+1, A000010(#)*A060648((n+1)/#)]` -/
def P11046998675537532726.Spec : Prop :=
  ∀ n, P11046998675537532726.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P4641433109197243256

`∑{d}[n+1, A000203(#)*A063659((n+1)/#)]`
-/

namespace A327251.P4641433109197243256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P4641433109197243256

namespace A327251

/-- `∑{d}[n+1, A000203(#)*A063659((n+1)/#)]` -/
def P4641433109197243256.Spec : Prop :=
  ∀ n, P4641433109197243256.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P14354275926558540294

`∑{d}[n+1, A007432(#)*A062369((n+1)/#)]`
-/

namespace A327251.P14354275926558540294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A062369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P14354275926558540294

namespace A327251

/-- `∑{d}[n+1, A007432(#)*A062369((n+1)/#)]` -/
def P14354275926558540294.Spec : Prop :=
  ∀ n, P14354275926558540294.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P1687265898318794698

`∑{d}[n+1, A029935(#)*A048691((n+1)/#)]`
-/

namespace A327251.P1687265898318794698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P1687265898318794698

namespace A327251

/-- `∑{d}[n+1, A029935(#)*A048691((n+1)/#)]` -/
def P1687265898318794698.Spec : Prop :=
  ∀ n, P1687265898318794698.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P8866896352546287292

`∑{d}[n+1, A007429(#)*A130107((n+1)/#)]`
-/

namespace A327251.P8866896352546287292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P8866896352546287292

namespace A327251

/-- `∑{d}[n+1, A007429(#)*A130107((n+1)/#)]` -/
def P8866896352546287292.Spec : Prop :=
  ∀ n, P8866896352546287292.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P12182982695671079798

`∑{d}[n+1, A068976(#)*A078439((n+1)/#)]`
-/

namespace A327251.P12182982695671079798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068976 d * A078439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P12182982695671079798

namespace A327251

/-- `∑{d}[n+1, A068976(#)*A078439((n+1)/#)]` -/
def P12182982695671079798.Spec : Prop :=
  ∀ n, P12182982695671079798.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P8205263621591986414

`∑{d}[n+1, A035116(#)*A143275((n+1)/#)]`
-/

namespace A327251.P8205263621591986414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P8205263621591986414

namespace A327251

/-- `∑{d}[n+1, A035116(#)*A143275((n+1)/#)]` -/
def P8205263621591986414.Spec : Prop :=
  ∀ n, P8205263621591986414.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P6019828284180910231

`∑{d}[n+1, A080512(#)*A159634((n+1)/#)]`
-/

namespace A327251.P6019828284180910231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080512 d * A159634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P6019828284180910231

namespace A327251

/-- `∑{d}[n+1, A080512(#)*A159634((n+1)/#)]` -/
def P6019828284180910231.Spec : Prop :=
  ∀ n, P6019828284180910231.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P340152427372200491

`∑{d}[n+1, A008836(#)*A306379((n+1)/#)]`
-/

namespace A327251.P340152427372200491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A306379 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P340152427372200491

namespace A327251

/-- `∑{d}[n+1, A008836(#)*A306379((n+1)/#)]` -/
def P340152427372200491.Spec : Prop :=
  ∀ n, P340152427372200491.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P11153199255614956821

`∑{d}[n+1, A060640(#)*A271102((n+1)/#)]`
-/

namespace A327251.P11153199255614956821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P11153199255614956821

namespace A327251

/-- `∑{d}[n+1, A060640(#)*A271102((n+1)/#)]` -/
def P11153199255614956821.Spec : Prop :=
  ∀ n, P11153199255614956821.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P10957600952454244501

`∑{d}[n+1, A034761(#)*A307445((n+1)/#)]`
-/

namespace A327251.P10957600952454244501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P10957600952454244501

namespace A327251

/-- `∑{d}[n+1, A034761(#)*A307445((n+1)/#)]` -/
def P10957600952454244501.Spec : Prop :=
  ∀ n, P10957600952454244501.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P15471420427156028263

`∑{d}[n+1, A003557(#)*A349132((n+1)/#)]`
-/

namespace A327251.P15471420427156028263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d * A349132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P15471420427156028263

namespace A327251

/-- `∑{d}[n+1, A003557(#)*A349132((n+1)/#)]` -/
def P15471420427156028263.Spec : Prop :=
  ∀ n, P15471420427156028263.a n = A327251 (n + 1)

end A327251

/-! ## A327251.P13561042123130722602

`∑{d}[n+1, A034718(#)*A328729((n+1)/#)]`
-/

namespace A327251.P13561042123130722602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034718 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327251.P13561042123130722602

namespace A327251

/-- `∑{d}[n+1, A034718(#)*A328729((n+1)/#)]` -/
def P13561042123130722602.Spec : Prop :=
  ∀ n, P13561042123130722602.a n = A327251 (n + 1)

end A327251

/-!
# A327252: Balanced reversed ternary: Write n as ternary, reverse the order of the digits, then replace all 2's with (-1)'s.

The programs for A327252, there is no canonical definition to state claims against.
-/

/-! ## A327252.P2280586580679643537

`A117966(A030102(n))`
-/

namespace A327252.P2280586580679643537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A030102 n).toNat

end

end A327252.P2280586580679643537

/-! ## A327252.P12467150962050397959

`A117966(n-A055947(n))`
-/

namespace A327252.P12467150962050397959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 ((n : ℤ) - A055947 n).toNat

end

end A327252.P12467150962050397959

/-! ## A327252.P18171127173838259906

`A137305(n)-A030102(n)`
-/

namespace A327252.P18171127173838259906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 n - A030102 n

end

end A327252.P18171127173838259906

/-! ## A327252.P10042692321113976952

`A055947(n)+A137305(n)-n`
-/

namespace A327252.P10042692321113976952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n + (A137305 n - (n : ℤ))

end

end A327252.P10042692321113976952

/-! ## A327252.P8724454780269183232

`A030102(A004488(n))-A030102(n)`
-/

namespace A327252.P8724454780269183232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A004488 n).toNat - A030102 n

end

end A327252.P8724454780269183232

/-! ## A327252.P18201060776276499693

`A137305(n)-A137305(A004488(n))`
-/

namespace A327252.P18201060776276499693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 n - A137305 (A004488 n).toNat

end

end A327252.P18201060776276499693

/-! ## A327252.P10090948109246337440

`A284797(n)-A284797(A004488(n))`
-/

namespace A327252.P10090948109246337440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284797 n - A284797 (A004488 n).toNat

end

end A327252.P10090948109246337440

/-! ## A327252.P15842281732587014829

`A030102(A253586(∑[n]))-A030102(n)`
-/

namespace A327252.P15842281732587014829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A253586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A030102 n

end

end A327252.P15842281732587014829

/-! ## A327252.P3074038017582414686

`A030102(A253587(∑[n]))-A030102(n)`
-/

namespace A327252.P3074038017582414686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A253587 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A030102 n

end

end A327252.P3074038017582414686

/-!
# A327253: a(n) = floor(2*n*r) - 2*floor(n*r), where r = sqrt(6).

The programs for A327253, the canonical program `A327253.P1184631987087867014` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327253 has offset 0).

The definition of A327253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327253.P1184631987087867014

`floor(n*sqrt(24))%2`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327253

/-- `floor(n*sqrt(24))%2` -/
def P1184631987087867014.Spec : Prop :=
  ∀ n, P1184631987087867014.a n = A327253 n

theorem P1184631987087867014.correct : P1184631987087867014.Spec := by
  intro n
  simp only [A327253]

end A327253

/-! ## A327253.P4492424993156774547

`and(1, floor(n*sqrt(24)))`
-/

namespace A327253.P4492424993156774547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(n : ℝ) * Real.sqrt (24 : ℝ)⌋

end

end A327253.P4492424993156774547

namespace A327253

/-- `and(1, floor(n*sqrt(24)))` -/
def P4492424993156774547.Spec : Prop :=
  ∀ n, P4492424993156774547.a n = A327253 n

end A327253

/-! ## A327253.P8399334009433860638

`char[A327255(n+1)]`
-/

namespace A327253.P8399334009433860638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327253.P8399334009433860638

namespace A327253

/-- `char[A327255(n+1)]` -/
def P8399334009433860638.Spec : Prop :=
  ∀ n, (P8399334009433860638.a n : ℤ) = A327253 n

end A327253

/-! ## A327253.P10947351924719188133

`char[eq[1, A024559(n+1)]+1]`
-/

namespace A327253.P10947351924719188133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024559 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A327253.P10947351924719188133

namespace A327253

/-- `char[eq[1, A024559(n+1)]+1]` -/
def P10947351924719188133.Spec : Prop :=
  ∀ n, (P10947351924719188133.a n : ℤ) = A327253 n

end A327253

/-! ## A327253.P5582725738657379250

`A379801(2*n)-A379805(2*n)`
-/

namespace A327253.P5582725738657379250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379801 (2 * n) - A379805 (2 * n)

end

end A327253.P5582725738657379250

namespace A327253

/-- `A379801(2*n)-A379805(2*n)` -/
def P5582725738657379250.Spec : Prop :=
  ∀ n, P5582725738657379250.a n = A327253 n

end A327253

/-! ## A327253.P18180053757628251517

`A040001(A198083(2*n))-1`
-/

namespace A327253.P18180053757628251517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A198083 (2 * n)).toNat - 1

end

end A327253.P18180053757628251517

namespace A327253

/-- `A040001(A198083(2*n))-1` -/
def P18180053757628251517.Spec : Prop :=
  ∀ n, P18180053757628251517.a n = A327253 n

end A327253

/-! ## A327253.P11198020179733353022

`and(1, A184809(A008574(n)))²`
-/

namespace A327253.P11198020179733353022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A184809 (A008574 n).toNat) ^ 2

end

end A327253.P11198020179733353022

namespace A327253

/-- `and(1, A184809(A008574(n)))²` -/
def P11198020179733353022.Spec : Prop :=
  ∀ n, P11198020179733353022.a n = A327253 n

end A327253

/-! ## A327253.P6913260851536337833

`A000035(floor(2*n*sqrt(6)))`
-/

namespace A327253.P6913260851536337833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ⌊(2 * n : ℝ) * Real.sqrt (6 : ℝ)⌋.toNat

end

end A327253.P6913260851536337833

namespace A327253

/-- `A000035(floor(2*n*sqrt(6)))` -/
def P6913260851536337833.Spec : Prop :=
  ∀ n, P6913260851536337833.a n = A327253 n

end A327253

/-! ## A327253.P10114405560983206929

`A051904(A328580(floor(n*sqrt(24))))`
-/

namespace A327253.P10114405560983206929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A328580 ⌊(n : ℝ) * Real.sqrt (24 : ℝ)⌋.toNat).toNat

end

end A327253.P10114405560983206929

namespace A327253

/-- `A051904(A328580(floor(n*sqrt(24))))` -/
def P10114405560983206929.Spec : Prop :=
  ∀ n, P10114405560983206929.a n = A327253 n

end A327253

/-!
# A327254: Positions of 0's in {A327253(n) : n > 0}.

The programs for A327254, the canonical program `A327254.P3718613047144075079` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327254 has offset 1).

The definition of A327254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327254.P3718613047144075079

`comp[n*floor(n*sqrt(24))%2]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327254

/-- `comp[n*floor(n*sqrt(24))%2]` -/
def P3718613047144075079.Spec : Prop :=
  ∀ n, (P3718613047144075079.a n : ℤ) = A327254 (n + 1)

theorem P3718613047144075079.correct : P3718613047144075079.Spec := by
  intro n
  simp only [A327254, Nat.add_sub_cancel]

end A327254

/-! ## A327254.P6897054048065254464

`comp[A327255(n+1)-1]+1`
-/

namespace A327254.P6897054048065254464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327255 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A327254.P6897054048065254464

namespace A327254

/-- `comp[A327255(n+1)-1]+1` -/
def P6897054048065254464.Spec : Prop :=
  ∀ n, (P6897054048065254464.a n : ℤ) = A327254 (n + 1)

end A327254

/-! ## A327254.P12806282222363846549

`lt[n*A327253(n), n]`
-/

namespace A327254.P12806282222363846549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327253 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327254.P12806282222363846549

namespace A327254

/-- `lt[n*A327253(n), n]` -/
def P12806282222363846549.Spec : Prop :=
  ∀ n, (P12806282222363846549.a n : ℤ) = A327254 (n + 1)

end A327254

/-! ## A327254.P818613217453237370

`lt[A327253(n+1), 1]+1`
-/

namespace A327254.P818613217453237370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327254.P818613217453237370

namespace A327254

/-- `lt[A327253(n+1), 1]+1` -/
def P818613217453237370.Spec : Prop :=
  ∀ n, (P818613217453237370.a n : ℤ) = A327254 (n + 1)

end A327254

/-! ## A327254.P9309108913125043361

`eq[A000007(n), A327253(n)]`
-/

namespace A327254.P9309108913125043361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327254.P9309108913125043361

namespace A327254

/-- `eq[A000007(n), A327253(n)]` -/
def P9309108913125043361.Spec : Prop :=
  ∀ n, (P9309108913125043361.a n : ℤ) = A327254 (n + 1)

end A327254

/-! ## A327254.P7539105254355576419

`eq[A000038(n), A327253(n)]`
-/

namespace A327254.P7539105254355576419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327254.P7539105254355576419

namespace A327254

/-- `eq[A000038(n), A327253(n)]` -/
def P7539105254355576419.Spec : Prop :=
  ∀ n, (P7539105254355576419.a n : ℤ) = A327254 (n + 1)

end A327254

/-! ## A327254.P4047467171981410690

`eq[1, A198083(n)-A022849(n)]`
-/

namespace A327254.P4047467171981410690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 n - A022849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327254.P4047467171981410690

namespace A327254

/-- `eq[1, A198083(n)-A022849(n)]` -/
def P4047467171981410690.Spec : Prop :=
  ∀ n, (P4047467171981410690.a n : ℤ) = A327254 (n + 1)

end A327254

/-! ## A327254.P11098867622287326620

`eq[and(1, A008574(n)), A327253(n)]`
-/

namespace A327254.P11098867622287326620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008574 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327254.P11098867622287326620

namespace A327254

/-- `eq[and(1, A008574(n)), A327253(n)]` -/
def P11098867622287326620.Spec : Prop :=
  ∀ n, (P11098867622287326620.a n : ℤ) = A327254 (n + 1)

end A327254

/-! ## A327254.P17089078736380587642

`eq[and(1, A033496(n+1)), A327253(n)]`
-/

namespace A327254.P17089078736380587642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A033496 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327254.P17089078736380587642

namespace A327254

/-- `eq[and(1, A033496(n+1)), A327253(n)]` -/
def P17089078736380587642.Spec : Prop :=
  ∀ n, (P17089078736380587642.a n : ℤ) = A327254 (n + 1)

end A327254

/-!
# A327255: Positions of 1's in {A327253(n) : n > 0}.

The programs for A327255, the canonical program `A327255.P10994982625670652327` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327255 has offset 1).

The definition of A327255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327255.P10994982625670652327

`lt[0, A327253(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327255

/-- `lt[0, A327253(n)]` -/
def P10994982625670652327.Spec : Prop :=
  ∀ n, (P10994982625670652327.a n : ℤ) = A327255 (n + 1)

theorem P10994982625670652327.correct : P10994982625670652327.Spec := by
  intro n
  simp only [A327255, Nat.add_sub_cancel]

end A327255

/-! ## A327255.P16793617405095768173

`eq[1, A024559(n+1)]+1`
-/

namespace A327255.P16793617405095768173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327255.P16793617405095768173

namespace A327255

/-- `eq[1, A024559(n+1)]+1` -/
def P16793617405095768173.Spec : Prop :=
  ∀ n, (P16793617405095768173.a n : ℤ) = A327255 (n + 1)

end A327255

/-! ## A327255.P7816521613223254248

`A000027(eq[1, A327253(n)])`
-/

namespace A327255.P7816521613223254248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327255.P7816521613223254248

namespace A327255

/-- `A000027(eq[1, A327253(n)])` -/
def P7816521613223254248.Spec : Prop :=
  ∀ n, P7816521613223254248.a n = A327255 (n + 1)

end A327255

/-! ## A327255.P10757109312952322349

`eq[abs(A106400(n)), A327253(n)]`
-/

namespace A327255.P10757109312952322349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106400 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327255.P10757109312952322349

namespace A327255

/-- `eq[abs(A106400(n)), A327253(n)]` -/
def P10757109312952322349.Spec : Prop :=
  ∀ n, (P10757109312952322349.a n : ℤ) = A327255 (n + 1)

end A327255

/-! ## A327255.P5331224374405392472

`eq[1, A327253(n*A327253(n))]`
-/

namespace A327255.P5331224374405392472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 ((n : ℤ) * A327253 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327255.P5331224374405392472

namespace A327255

/-- `eq[1, A327253(n*A327253(n))]` -/
def P5331224374405392472.Spec : Prop :=
  ∀ n, (P5331224374405392472.a n : ℤ) = A327255 (n + 1)

end A327255

/-! ## A327255.P17455070357082619882

`eq[A057427(A327226(n)), A327253(n)]`
-/

namespace A327255.P17455070357082619882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A327226 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327255.P17455070357082619882

namespace A327255

/-- `eq[A057427(A327226(n)), A327253(n)]` -/
def P17455070357082619882.Spec : Prop :=
  ∀ n, (P17455070357082619882.a n : ℤ) = A327255 (n + 1)

end A327255

/-! ## A327255.P195765654349055992

`eq[2-A019425(A019425(n)), A327253(n)]`
-/

namespace A327255.P195765654349055992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A019425 (A019425 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327255.P195765654349055992

namespace A327255

/-- `eq[2-A019425(A019425(n)), A327253(n)]` -/
def P195765654349055992.Spec : Prop :=
  ∀ n, (P195765654349055992.a n : ℤ) = A327255 (n + 1)

end A327255

/-! ## A327255.P8334968383033723235

`eq[A054977(n), A327253(n)]`
-/

namespace A327255.P8334968383033723235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327255.P8334968383033723235

namespace A327255

/-- `eq[A054977(n), A327253(n)]` -/
def P8334968383033723235.Spec : Prop :=
  ∀ n, (P8334968383033723235.a n : ℤ) = A327255 (n + 1)

end A327255

/-! ## A327255.P6095776964223225206

`eq[A141044(n), A327253(n)]`
-/

namespace A327255.P6095776964223225206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327255.P6095776964223225206

namespace A327255

/-- `eq[A141044(n), A327253(n)]` -/
def P6095776964223225206.Spec : Prop :=
  ∀ n, (P6095776964223225206.a n : ℤ) = A327255 (n + 1)

end A327255

/-! ## A327255.P11244130871368699980

`eq[A158388(n), A327253(n)]`
-/

namespace A327255.P11244130871368699980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327255.P11244130871368699980

namespace A327255

/-- `eq[A158388(n), A327253(n)]` -/
def P11244130871368699980.Spec : Prop :=
  ∀ n, (P11244130871368699980.a n : ℤ) = A327255 (n + 1)

end A327255

/-! ## A327255.P9119752136411766527

`eq[A327253(n), A373565(n)]`
-/

namespace A327255.P9119752136411766527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327255.P9119752136411766527

namespace A327255

/-- `eq[A327253(n), A373565(n)]` -/
def P9119752136411766527.Spec : Prop :=
  ∀ n, (P9119752136411766527.a n : ℤ) = A327255 (n + 1)

end A327255

/-! ## A327255.P14795538692927790575

`eq[A121273(n+1), A327253(n)]`
-/

namespace A327255.P14795538692927790575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327255.P14795538692927790575

namespace A327255

/-- `eq[A121273(n+1), A327253(n)]` -/
def P14795538692927790575.Spec : Prop :=
  ∀ n, (P14795538692927790575.a n : ℤ) = A327255 (n + 1)

end A327255

/-! ## A327255.P780553302101692202

`filter[A117909(n), A327253(#)]`
-/

namespace A327255.P780553302101692202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327253 (f1 j).toNat = 1) n)

end

end A327255.P780553302101692202

namespace A327255

/-- `filter[A117909(n), A327253(#)]` -/
def P780553302101692202.Spec : Prop :=
  ∀ n, P780553302101692202.a n = A327255 (n + 1)

end A327255

/-! ## A327255.P13104372168301476269

`filter[A092942(n), A327253(#)]`
-/

namespace A327255.P13104372168301476269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327253 (f1 j).toNat = 1) n)

end

end A327255.P13104372168301476269

namespace A327255

/-- `filter[A092942(n), A327253(#)]` -/
def P13104372168301476269.Spec : Prop :=
  ∀ n, P13104372168301476269.a n = A327255 (n + 1)

end A327255

/-! ## A327255.P1458797763824648455

`filter[A083926(n), A327253(#)]`
-/

namespace A327255.P1458797763824648455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327253 (f1 j).toNat = 1) n)

end

end A327255.P1458797763824648455

namespace A327255

/-- `filter[A083926(n), A327253(#)]` -/
def P1458797763824648455.Spec : Prop :=
  ∀ n, P1458797763824648455.a n = A327255 (n + 1)

end A327255

/-! ## A327255.P10763000959477672025

`filter[A102390(n), A327253(#)]`
-/

namespace A327255.P10763000959477672025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327253 (f1 j).toNat = 1) n)

end

end A327255.P10763000959477672025

namespace A327255

/-- `filter[A102390(n), A327253(#)]` -/
def P10763000959477672025.Spec : Prop :=
  ∀ n, P10763000959477672025.a n = A327255 (n + 1)

end A327255

/-! ## A327255.P16724540709185786811

`filter[A027656(n), A327253(#)]`
-/

namespace A327255.P16724540709185786811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327253 (f1 j).toNat = 1) n)

end

end A327255.P16724540709185786811

namespace A327255

/-- `filter[A027656(n), A327253(#)]` -/
def P16724540709185786811.Spec : Prop :=
  ∀ n, P16724540709185786811.a n = A327255 (n + 1)

end A327255

/-! ## A327255.P820022080888574896

`filter[A057979(n), A327253(#)]`
-/

namespace A327255.P820022080888574896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327253 (f1 j).toNat = 1) n)

end

end A327255.P820022080888574896

namespace A327255

/-- `filter[A057979(n), A327253(#)]` -/
def P820022080888574896.Spec : Prop :=
  ∀ n, P820022080888574896.a n = A327255 (n + 1)

end A327255

/-! ## A327255.P2775981873099694861

`filter[A102389(n), A327253(#)]`
-/

namespace A327255.P2775981873099694861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327253 (f1 j).toNat = 1) n)

end

end A327255.P2775981873099694861

namespace A327255

/-- `filter[A102389(n), A327253(#)]` -/
def P2775981873099694861.Spec : Prop :=
  ∀ n, P2775981873099694861.a n = A327255 (n + 1)

end A327255

/-! ## A327255.P14369683477599617377

`filter[A131360(n), A327253(#)]`
-/

namespace A327255.P14369683477599617377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327253 (f1 j).toNat = 1) n)

end

end A327255.P14369683477599617377

namespace A327255

/-- `filter[A131360(n), A327253(#)]` -/
def P14369683477599617377.Spec : Prop :=
  ∀ n, P14369683477599617377.a n = A327255 (n + 1)

end A327255

/-!
# A327256: a(n) = floor(2*n*r) - 2*floor(n*r), where r = sqrt(8).

The programs for A327256, the canonical program `A327256.P9624730471927104241` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327256 has offset 0).

The definition of A327256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327256.P9624730471927104241

`floor(4*n*sqrt(2))%2`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327256

/-- `floor(4*n*sqrt(2))%2` -/
def P9624730471927104241.Spec : Prop :=
  ∀ n, P9624730471927104241.a n = A327256 n

theorem P9624730471927104241.correct : P9624730471927104241.Spec := by
  intro n
  simp only [A327256]

end A327256

/-! ## A327256.P17835014582166418301

`and(1, -floor(4*n*sqrt(2)))`
-/

namespace A327256.P17835014582166418301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-⌊(4 * n : ℝ) * Real.sqrt (2 : ℝ)⌋)

end

end A327256.P17835014582166418301

namespace A327256

/-- `and(1, -floor(4*n*sqrt(2)))` -/
def P17835014582166418301.Spec : Prop :=
  ∀ n, P17835014582166418301.a n = A327256 n

end A327256

/-! ## A327256.P11200725263845242079

`and(1, floor(4*n*sqrt(2)))²`
-/

namespace A327256.P11200725263845242079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(4 * n : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ 2

end

end A327256.P11200725263845242079

namespace A327256

/-- `and(1, floor(4*n*sqrt(2)))²` -/
def P11200725263845242079.Spec : Prop :=
  ∀ n, P11200725263845242079.a n = A327256 n

end A327256

/-! ## A327256.P1220408441786180506

`and(1, floor(4*n*sqrt(2)))^7`
-/

namespace A327256.P1220408441786180506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(4 * n : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ 7

end

end A327256.P1220408441786180506

namespace A327256

/-- `and(1, floor(4*n*sqrt(2)))^7` -/
def P1220408441786180506.Spec : Prop :=
  ∀ n, P1220408441786180506.a n = A327256 n

end A327256

/-! ## A327256.P11391772148170342068

`char[A327258(n+1)]`
-/

namespace A327256.P11391772148170342068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327256.P11391772148170342068

namespace A327256

/-- `char[A327258(n+1)]` -/
def P11391772148170342068.Spec : Prop :=
  ∀ n, (P11391772148170342068.a n : ℤ) = A327256 n

end A327256

/-! ## A327256.P2542830638826912940

`A197879(A004277(n))`
-/

namespace A327256.P2542830638826912940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (A004277 n).toNat

end

end A327256.P2542830638826912940

namespace A327256

/-- `A197879(A004277(n))` -/
def P2542830638826912940.Spec : Prop :=
  ∀ n, P2542830638826912940.a n = A327256 n

end A327256

/-! ## A327256.P4178987102795512802

`A197879(A004275(n+1))`
-/

namespace A327256.P4178987102795512802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (A004275 (n + 1)).toNat

end

end A327256.P4178987102795512802

namespace A327256

/-- `A197879(A004275(n+1))` -/
def P4178987102795512802.Spec : Prop :=
  ∀ n, P4178987102795512802.a n = A327256 n

end A327256

/-! ## A327256.P7104707768977755045

`A000035(A195177(2*n))`
-/

namespace A327256.P7104707768977755045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195177 (2 * n)).toNat

end

end A327256.P7104707768977755045

namespace A327256

/-- `A000035(A195177(2*n))` -/
def P7104707768977755045.Spec : Prop :=
  ∀ n, P7104707768977755045.a n = A327256 n

end A327256

/-! ## A327256.P584907962907226598

`A022851(n)-A001951(2*n)`
-/

namespace A327256.P584907962907226598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022851 n - A001951 (2 * n)

end

end A327256.P584907962907226598

namespace A327256

/-- `A022851(n)-A001951(2*n)` -/
def P584907962907226598.Spec : Prop :=
  ∀ n, P584907962907226598.a n = A327256 n

end A327256

/-! ## A327256.P18310070643565630407

`A022846(2*n)-A001951(2*n)`
-/

namespace A327256.P18310070643565630407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (2 * n) - A001951 (2 * n)

end

end A327256.P18310070643565630407

namespace A327256

/-- `A022846(2*n)-A001951(2*n)` -/
def P18310070643565630407.Spec : Prop :=
  ∀ n, P18310070643565630407.a n = A327256 n

end A327256

/-! ## A327256.P10104014547844280039

`A195177(n)-A004526(A195177(2*n))`
-/

namespace A327256.P10104014547844280039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 n - A004526 (A195177 (2 * n)).toNat

end

end A327256.P10104014547844280039

namespace A327256

/-- `A195177(n)-A004526(A195177(2*n))` -/
def P10104014547844280039.Spec : Prop :=
  ∀ n, P10104014547844280039.a n = A327256 n

end A327256

/-! ## A327256.P7532980185563756819

`2*A195177(n)-A195177(A005843(n))`
-/

namespace A327256.P7532980185563756819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195177 n - A195177 (A005843 n).toNat

end

end A327256.P7532980185563756819

namespace A327256

/-- `2*A195177(n)-A195177(A005843(n))` -/
def P7532980185563756819.Spec : Prop :=
  ∀ n, P7532980185563756819.a n = A327256 n

end A327256

/-! ## A327256.P5227085550898976962

`2*A195179(n)-A195179(A005843(n))`
-/

namespace A327256.P5227085550898976962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195179 n - A195179 (A005843 n).toNat

end

end A327256.P5227085550898976962

namespace A327256

/-- `2*A195179(n)-A195179(A005843(n))` -/
def P5227085550898976962.Spec : Prop :=
  ∀ n, P5227085550898976962.a n = A327256 n

end A327256

/-! ## A327256.P8742642598511687399

`A005843(A195177(n))-A195177(A005843(n))`
-/

namespace A327256.P8742642598511687399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A195177 n).toNat - A195177 (A005843 n).toNat

end

end A327256.P8742642598511687399

namespace A327256

/-- `A005843(A195177(n))-A195177(A005843(n))` -/
def P8742642598511687399.Spec : Prop :=
  ∀ n, P8742642598511687399.a n = A327256 n

end A327256

/-! ## A327256.P5649358941979438905

`A005843(A195179(n))-A195179(A005843(n))`
-/

namespace A327256.P5649358941979438905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A195179 n).toNat - A195179 (A005843 n).toNat

end

end A327256.P5649358941979438905

namespace A327256

/-- `A005843(A195179(n))-A195179(A005843(n))` -/
def P5649358941979438905.Spec : Prop :=
  ∀ n, P5649358941979438905.a n = A327256 n

end A327256

/-! ## A327256.P7667437166246875795

`A000035(A195178(2*n))`
-/

namespace A327256.P7667437166246875795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195178 (2 * n)).toNat

end

end A327256.P7667437166246875795

namespace A327256

/-- `A000035(A195178(2*n))` -/
def P7667437166246875795.Spec : Prop :=
  ∀ n, P7667437166246875795.a n = A327256 n

end A327256

/-! ## A327256.P6714532197230643343

`A040001(A198263(2*n))-1`
-/

namespace A327256.P6714532197230643343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A198263 (2 * n)).toNat - 1

end

end A327256.P6714532197230643343

namespace A327256

/-- `A040001(A198263(2*n))-1` -/
def P6714532197230643343.Spec : Prop :=
  ∀ n, P6714532197230643343.a n = A327256 n

end A327256

/-! ## A327256.P2219518186932355241

`A197879(A172474(A001951(2*n))+n+1)`
-/

namespace A327256.P2219518186932355241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (A172474 (A001951 (2 * n)).toNat + (n + 1 : ℤ)).toNat

end

end A327256.P2219518186932355241

namespace A327256

/-- `A197879(A172474(A001951(2*n))+n+1)` -/
def P2219518186932355241.Spec : Prop :=
  ∀ n, P2219518186932355241.a n = A327256 n

end A327256

/-! ## A327256.P6191731227900192630

`A049473(4*n)-A001951(2*n)`
-/

namespace A327256.P6191731227900192630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (4 * n) - A001951 (2 * n)

end

end A327256.P6191731227900192630

namespace A327256

/-- `A049473(4*n)-A001951(2*n)` -/
def P6191731227900192630.Spec : Prop :=
  ∀ n, P6191731227900192630.a n = A327256 n

end A327256

/-! ## A327256.P15342866576424584070

`A001951(4*n)-A005843(A001951(A005843(n)))`
-/

namespace A327256.P15342866576424584070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (4 * n) - A005843 (A001951 (A005843 n).toNat).toNat

end

end A327256.P15342866576424584070

namespace A327256

/-- `A001951(4*n)-A005843(A001951(A005843(n)))` -/
def P15342866576424584070.Spec : Prop :=
  ∀ n, P15342866576424584070.a n = A327256 n

end A327256

/-!
# A327257: Positions of 0's in {A327256(n) : n > 0}.

The programs for A327257, the canonical program `A327257.P389082229316106677` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327257 has offset 1).

The definition of A327257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327257.P389082229316106677

`comp[n*floor(4*n*sqrt(2))%2]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327257

/-- `comp[n*floor(4*n*sqrt(2))%2]` -/
def P389082229316106677.Spec : Prop :=
  ∀ n, (P389082229316106677.a n : ℤ) = A327257 (n + 1)

theorem P389082229316106677.correct : P389082229316106677.Spec := by
  intro n
  simp only [A327257, Nat.add_sub_cancel]

end A327257

/-! ## A327257.P5998849329089108879

`∪[A190545(n+1), A190547(n+1)]`
-/

namespace A327257.P5998849329089108879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327257.P5998849329089108879

namespace A327257

/-- `∪[A190545(n+1), A190547(n+1)]` -/
def P5998849329089108879.Spec : Prop :=
  ∀ n, (P5998849329089108879.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P2706899387769158813

`lt[n*A327256(n), n]`
-/

namespace A327257.P2706899387769158813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327256 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327257.P2706899387769158813

namespace A327257

/-- `lt[n*A327256(n), n]` -/
def P2706899387769158813.Spec : Prop :=
  ∀ n, (P2706899387769158813.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P9001673711503760848

`eq[0, A327256(n+1)]+1`
-/

namespace A327257.P9001673711503760848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327257.P9001673711503760848

namespace A327257

/-- `eq[0, A327256(n+1)]+1` -/
def P9001673711503760848.Spec : Prop :=
  ∀ n, (P9001673711503760848.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P6059804255407954785

`eq[A000038(n), A327256(n)]`
-/

namespace A327257.P6059804255407954785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327257.P6059804255407954785

namespace A327257

/-- `eq[A000038(n), A327256(n)]` -/
def P6059804255407954785.Spec : Prop :=
  ∀ n, (P6059804255407954785.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P8912863311206634061

`eq[A147673(C(2, n)), A327256(n)]`
-/

namespace A327257.P8912863311206634061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147673 (Nat.choose 2 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327257.P8912863311206634061

namespace A327257

/-- `eq[A147673(C(2, n)), A327256(n)]` -/
def P8912863311206634061.Spec : Prop :=
  ∀ n, (P8912863311206634061.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P552319280293092849

`eq[n, A028310(n)-A327256(n)]`
-/

namespace A327257.P552319280293092849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327257.P552319280293092849

namespace A327257

/-- `eq[n, A028310(n)-A327256(n)]` -/
def P552319280293092849.Spec : Prop :=
  ∀ n, (P552319280293092849.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P9799126809091761125

`eq[A000007(n), A327256(n)]`
-/

namespace A327257.P9799126809091761125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327257.P9799126809091761125

namespace A327257

/-- `eq[A000007(n), A327256(n)]` -/
def P9799126809091761125.Spec : Prop :=
  ∀ n, (P9799126809091761125.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P4045757545158808637

`eq[A130706(n), A327256(n)]`
-/

namespace A327257.P4045757545158808637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327257.P4045757545158808637

namespace A327257

/-- `eq[A130706(n), A327256(n)]` -/
def P4045757545158808637.Spec : Prop :=
  ∀ n, (P4045757545158808637.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P13495989885423389537

`eq[A166926(n), A327256(n)]`
-/

namespace A327257.P13495989885423389537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327257.P13495989885423389537

namespace A327257

/-- `eq[A166926(n), A327256(n)]` -/
def P13495989885423389537.Spec : Prop :=
  ∀ n, (P13495989885423389537.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P10275492736034753199

`eq[A167891(n), A327256(n)]`
-/

namespace A327257.P10275492736034753199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327257.P10275492736034753199

namespace A327257

/-- `eq[A167891(n), A327256(n)]` -/
def P10275492736034753199.Spec : Prop :=
  ∀ n, (P10275492736034753199.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P11517669958847751546

`eq[A169585(n), A327256(n)]`
-/

namespace A327257.P11517669958847751546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327257.P11517669958847751546

namespace A327257

/-- `eq[A169585(n), A327256(n)]` -/
def P11517669958847751546.Spec : Prop :=
  ∀ n, (P11517669958847751546.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P5431841563039925115

`eq[1, A327256(n)+A054977(n)]`
-/

namespace A327257.P5431841563039925115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n + A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327257.P5431841563039925115

namespace A327257

/-- `eq[1, A327256(n)+A054977(n)]` -/
def P5431841563039925115.Spec : Prop :=
  ∀ n, (P5431841563039925115.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P16120985852010382053

`eq[A154955(n+1), A327256(n)]`
-/

namespace A327257.P16120985852010382053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327257.P16120985852010382053

namespace A327257

/-- `eq[A154955(n+1), A327256(n)]` -/
def P16120985852010382053.Spec : Prop :=
  ∀ n, (P16120985852010382053.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P11639003870365269384

`eq[1, A327256(n)+A158388(n)]`
-/

namespace A327257.P11639003870365269384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n + A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327257.P11639003870365269384

namespace A327257

/-- `eq[1, A327256(n)+A158388(n)]` -/
def P11639003870365269384.Spec : Prop :=
  ∀ n, (P11639003870365269384.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P8474515378274816439

`eq[A173012(n+1), A327256(n)]`
-/

namespace A327257.P8474515378274816439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327257.P8474515378274816439

namespace A327257

/-- `eq[A173012(n+1), A327256(n)]` -/
def P8474515378274816439.Spec : Prop :=
  ∀ n, (P8474515378274816439.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P1219997837933257113

`lt[A327256(n), n/∑[A123108(n)]]`
-/

namespace A327257.P1219997837933257113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A327257.P1219997837933257113

namespace A327257

/-- `lt[A327256(n), n/∑[A123108(n)]]` -/
def P1219997837933257113.Spec : Prop :=
  ∀ n, (P1219997837933257113.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P8413169426845112255

`eq[A285476(n), A327256(n)]`
-/

namespace A327257.P8413169426845112255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327257.P8413169426845112255

namespace A327257

/-- `eq[A285476(n), A327256(n)]` -/
def P8413169426845112255.Spec : Prop :=
  ∀ n, (P8413169426845112255.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P10088099667223285855

`eq[1, A198263(2*n)%2]`
-/

namespace A327257.P10088099667223285855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198263 (2 * n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327257.P10088099667223285855

namespace A327257

/-- `eq[1, A198263(2*n)%2]` -/
def P10088099667223285855.Spec : Prop :=
  ∀ n, (P10088099667223285855.a n : ℤ) = A327257 (n + 1)

end A327257

/-! ## A327257.P6845538359383576013

`lt[1, A024539(2*(n+1))]+1`
-/

namespace A327257.P6845538359383576013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A327257.P6845538359383576013

namespace A327257

/-- `lt[1, A024539(2*(n+1))]+1` -/
def P6845538359383576013.Spec : Prop :=
  ∀ n, (P6845538359383576013.a n : ℤ) = A327257 (n + 1)

end A327257

/-!
# A327258: Positions of 1's in {A327256(n) : n > 0}.

The programs for A327258, the canonical program `A327258.P17626085959736940248` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327258 has offset 1).

The definition of A327258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327258.P17626085959736940248

`eq[1, floor(4*n*sqrt(2))%2]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327258

/-- `eq[1, floor(4*n*sqrt(2))%2]` -/
def P17626085959736940248.Spec : Prop :=
  ∀ n, (P17626085959736940248.a n : ℤ) = A327258 (n + 1)

theorem P17626085959736940248.correct : P17626085959736940248.Spec := by
  intro n
  simp only [A327258, Nat.add_sub_cancel]

end A327258

/-! ## A327258.P15618704168888139209

`∪[A190546(n+1), A190548(n+1)]`
-/

namespace A327258.P15618704168888139209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327258.P15618704168888139209

namespace A327258

/-- `∪[A190546(n+1), A190548(n+1)]` -/
def P15618704168888139209.Spec : Prop :=
  ∀ n, (P15618704168888139209.a n : ℤ) = A327258 (n + 1)

end A327258

/-! ## A327258.P2034729954655194240

`lt[0, A327256(n)]`
-/

namespace A327258.P2034729954655194240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327258.P2034729954655194240

namespace A327258

/-- `lt[0, A327256(n)]` -/
def P2034729954655194240.Spec : Prop :=
  ∀ n, (P2034729954655194240.a n : ℤ) = A327258 (n + 1)

end A327258

/-! ## A327258.P15673870233948597191

`record[(n+1)*A327256(n+1)]`
-/

namespace A327258.P15673870233948597191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327258.P15673870233948597191

namespace A327258

/-- `record[(n+1)*A327256(n+1)]` -/
def P15673870233948597191.Spec : Prop :=
  ∀ n, P15673870233948597191.a n = A327258 (n + 1)

end A327258

/-! ## A327258.P8769499037547579330

`A028310(eq[1, A327256(n)])`
-/

namespace A327258.P8769499037547579330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327258.P8769499037547579330

namespace A327258

/-- `A028310(eq[1, A327256(n)])` -/
def P8769499037547579330.Spec : Prop :=
  ∀ n, P8769499037547579330.a n = A327258 (n + 1)

end A327258

/-! ## A327258.P6887275266707843534

`eq[A054977(n), A327256(n)]`
-/

namespace A327258.P6887275266707843534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327258.P6887275266707843534

namespace A327258

/-- `eq[A054977(n), A327256(n)]` -/
def P6887275266707843534.Spec : Prop :=
  ∀ n, (P6887275266707843534.a n : ℤ) = A327258 (n + 1)

end A327258

/-! ## A327258.P7098516593743324870

`eq[A158388(n), A327256(n)]`
-/

namespace A327258.P7098516593743324870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327258.P7098516593743324870

namespace A327258

/-- `eq[A158388(n), A327256(n)]` -/
def P7098516593743324870.Spec : Prop :=
  ∀ n, (P7098516593743324870.a n : ℤ) = A327258 (n + 1)

end A327258

/-! ## A327258.P179883899191335389

`eq[1, A327256(n*A327256(n))]`
-/

namespace A327258.P179883899191335389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 ((n : ℤ) * A327256 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327258.P179883899191335389

namespace A327258

/-- `eq[1, A327256(n*A327256(n))]` -/
def P179883899191335389.Spec : Prop :=
  ∀ n, (P179883899191335389.a n : ℤ) = A327258 (n + 1)

end A327258

/-! ## A327258.P592037685170209560

`eq[(A000038(n)-1)², A327256(n)]`
-/

namespace A327258.P592037685170209560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327258.P592037685170209560

namespace A327258

/-- `eq[(A000038(n)-1)², A327256(n)]` -/
def P592037685170209560.Spec : Prop :=
  ∀ n, (P592037685170209560.a n : ℤ) = A327258 (n + 1)

end A327258

/-! ## A327258.P2846701901907287926

`filter[A173517(n), A327256(#)]`
-/

namespace A327258.P2846701901907287926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327256 (f1 j).toNat = 1) n)

end

end A327258.P2846701901907287926

namespace A327258

/-- `filter[A173517(n), A327256(#)]` -/
def P2846701901907287926.Spec : Prop :=
  ∀ n, P2846701901907287926.a n = A327258 (n + 1)

end A327258

/-! ## A327258.P14040145369344773011

`filter[A271439(n), A327256(#)]`
-/

namespace A327258.P14040145369344773011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327256 (f1 j).toNat = 1) n)

end

end A327258.P14040145369344773011

namespace A327258

/-- `filter[A271439(n), A327256(#)]` -/
def P14040145369344773011.Spec : Prop :=
  ∀ n, P14040145369344773011.a n = A327258 (n + 1)

end A327258

/-! ## A327258.P10917364959196655427

`filter[A261094(n), A327256(#)]`
-/

namespace A327258.P10917364959196655427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327256 (f1 j).toNat = 1) n)

end

end A327258.P10917364959196655427

namespace A327258

/-- `filter[A261094(n), A327256(#)]` -/
def P10917364959196655427.Spec : Prop :=
  ∀ n, P10917364959196655427.a n = A327258 (n + 1)

end A327258

/-! ## A327258.P3326539078811850382

`filter[A117909(n), A327256(#)]`
-/

namespace A327258.P3326539078811850382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327256 (f1 j).toNat = 1) n)

end

end A327258.P3326539078811850382

namespace A327258

/-- `filter[A117909(n), A327256(#)]` -/
def P3326539078811850382.Spec : Prop :=
  ∀ n, P3326539078811850382.a n = A327258 (n + 1)

end A327258

/-! ## A327258.P15613828800367887981

`filter[A083926(n), A327256(#)]`
-/

namespace A327258.P15613828800367887981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327256 (f1 j).toNat = 1) n)

end

end A327258.P15613828800367887981

namespace A327258

/-- `filter[A083926(n), A327256(#)]` -/
def P15613828800367887981.Spec : Prop :=
  ∀ n, P15613828800367887981.a n = A327258 (n + 1)

end A327258

/-! ## A327258.P5722440868474424546

`filter[A230414(n), A327256(#)]`
-/

namespace A327258.P5722440868474424546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327256 (f1 j).toNat = 1) n)

end

end A327258.P5722440868474424546

namespace A327258

/-- `filter[A230414(n), A327256(#)]` -/
def P5722440868474424546.Spec : Prop :=
  ∀ n, P5722440868474424546.a n = A327258 (n + 1)

end A327258

/-! ## A327258.P18182752754003570683

`filter[A102390(n), A327256(#)]`
-/

namespace A327258.P18182752754003570683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327256 (f1 j).toNat = 1) n)

end

end A327258.P18182752754003570683

namespace A327258

/-- `filter[A102390(n), A327256(#)]` -/
def P18182752754003570683.Spec : Prop :=
  ∀ n, P18182752754003570683.a n = A327258 (n + 1)

end A327258

/-! ## A327258.P2758701374084966047

`eq[1, A024539(2*(n+1))]+1`
-/

namespace A327258.P2758701374084966047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327258.P2758701374084966047

namespace A327258

/-- `eq[1, A024539(2*(n+1))]+1` -/
def P2758701374084966047.Spec : Prop :=
  ∀ n, (P2758701374084966047.a n : ℤ) = A327258 (n + 1)

end A327258

/-! ## A327258.P4976173727005017894

`eq[1, A197879(2*(n+1))]+1`
-/

namespace A327258.P4976173727005017894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327258.P4976173727005017894

namespace A327258

/-- `eq[1, A197879(2*(n+1))]+1` -/
def P4976173727005017894.Spec : Prop :=
  ∀ n, (P4976173727005017894.a n : ℤ) = A327258 (n + 1)

end A327258

/-! ## A327258.P1773023528196704382

`lt[1, A190544(2*(n+1))]+1`
-/

namespace A327258.P1773023528196704382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190544 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A327258.P1773023528196704382

namespace A327258

/-- `lt[1, A190544(2*(n+1))]+1` -/
def P1773023528196704382.Spec : Prop :=
  ∀ n, (P1773023528196704382.a n : ℤ) = A327258 (n + 1)

end A327258

/-! ## A327258.P7258102278762079265

`lt[A024539(2*n+2), 2]+1`
-/

namespace A327258.P7258102278762079265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327258.P7258102278762079265

namespace A327258

/-- `lt[A024539(2*n+2), 2]+1` -/
def P7258102278762079265.Spec : Prop :=
  ∀ n, (P7258102278762079265.a n : ℤ) = A327258 (n + 1)

end A327258

/-!
# A327259: Array T(n,k) = 2*n*k - A319929(n,k), n >= 1, k >= 1, read by antidiagonals.

The programs for A327259, the canonical program `A327259.P9875520771987652429` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327259 has offset 1).

The definition of A327259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327259.P12686604907618543690

`2*A003991(n+1)-A319929(n+1)`
-/

namespace A327259.P12686604907618543690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003991 (n + 1) - A319929 (n + 1)

end

end A327259.P12686604907618543690

namespace A327259

/-- `2*A003991(n+1)-A319929(n+1)` -/
def P12686604907618543690.Spec : Prop :=
  ∀ n, P12686604907618543690.a n = A327259 (n + 1)

end A327259

/-! ## A327259.P8860591519620148246

`2*A322744(n+1)-A003991(n+1)`
-/

namespace A327259.P8860591519620148246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322744 (n + 1) - A003991 (n + 1)

end

end A327259.P8860591519620148246

namespace A327259

/-- `2*A322744(n+1)-A003991(n+1)` -/
def P8860591519620148246.Spec : Prop :=
  ∀ n, P8860591519620148246.a n = A327259 (n + 1)

theorem P8860591519620148246.correct : P8860591519620148246.Spec := by
  intro n
  simp only [A327259, Nat.add_sub_cancel, A327259.P8860591519620148246.a, A327259.P9875520771987652429.a, A003991, A003991.P6365127437582401781.a, A322744, A322744.P7428208251532424710.a, A334922, A334922.P17964154798392453556.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P17842490002735257572.a, A334923, A334923.P17285238801038389709.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327259

/-! ## A327259.P8598097855615960946

`2*A334923(n+1)-A322630(n+1)`
-/

namespace A327259.P8598097855615960946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334923 (n + 1) - A322630 (n + 1)

end

end A327259.P8598097855615960946

namespace A327259

/-- `2*A334923(n+1)-A322630(n+1)` -/
def P8598097855615960946.Spec : Prop :=
  ∀ n, P8598097855615960946.a n = A327259 (n + 1)

end A327259

/-! ## A327259.P11830000292606353291

`A005843(A003991(n+1))-A319929(n+1)`
-/

namespace A327259.P11830000292606353291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A003991 (n + 1)).toNat - A319929 (n + 1)

end

end A327259.P11830000292606353291

namespace A327259

/-- `A005843(A003991(n+1))-A319929(n+1)` -/
def P11830000292606353291.Spec : Prop :=
  ∀ n, P11830000292606353291.a n = A327259 (n + 1)

end A327259

/-! ## A327259.P1420460283906454767

`A004277(A322744(n+1))-A003991(n+1)`
-/

namespace A327259.P1420460283906454767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A322744 (n + 1)).toNat - A003991 (n + 1)

end

end A327259.P1420460283906454767

namespace A327259

/-- `A004277(A322744(n+1))-A003991(n+1)` -/
def P1420460283906454767.Spec : Prop :=
  ∀ n, P1420460283906454767.a n = A327259 (n + 1)

end A327259

/-! ## A327259.P14843622829210771439

`A003991(n+1)+A322744(n+1)-A322630(n+1)`
-/

namespace A327259.P14843622829210771439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A322744 (n + 1) - A322630 (n + 1))

end

end A327259.P14843622829210771439

namespace A327259

/-- `A003991(n+1)+A322744(n+1)-A322630(n+1)` -/
def P14843622829210771439.Spec : Prop :=
  ∀ n, P14843622829210771439.a n = A327259 (n + 1)

end A327259

/-! ## A327259.P10095753337908284749

`A322630(n+1)+A322744(n+1)-A319929(n+1)`
-/

namespace A327259.P10095753337908284749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322630 (n + 1) + (A322744 (n + 1) - A319929 (n + 1))

end

end A327259.P10095753337908284749

namespace A327259

/-- `A322630(n+1)+A322744(n+1)-A319929(n+1)` -/
def P10095753337908284749.Spec : Prop :=
  ∀ n, P10095753337908284749.a n = A327259 (n + 1)

end A327259

/-! ## A327259.P18410224256882538996

`A334922(n+1)+A334923(n+1)-A319929(n+1)`
-/

namespace A327259.P18410224256882538996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334922 (n + 1) + (A334923 (n + 1) - A319929 (n + 1))

end

end A327259.P18410224256882538996

namespace A327259

/-- `A334922(n+1)+A334923(n+1)-A319929(n+1)` -/
def P18410224256882538996.Spec : Prop :=
  ∀ n, P18410224256882538996.a n = A327259 (n + 1)

end A327259

/-! ## A327259.P13236107982686975906

`A322744(n+1)+A334923(n+1)-A334922(n+1)`
-/

namespace A327259.P13236107982686975906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322744 (n + 1) + (A334923 (n + 1) - A334922 (n + 1))

end

end A327259.P13236107982686975906

namespace A327259

/-- `A322744(n+1)+A334923(n+1)-A334922(n+1)` -/
def P13236107982686975906.Spec : Prop :=
  ∀ n, P13236107982686975906.a n = A327259 (n + 1)

theorem P13236107982686975906.correct : P13236107982686975906.Spec := by
  intro n
  simp only [A327259, Nat.add_sub_cancel, A327259.P13236107982686975906.a, A327259.P9875520771987652429.a, A003991, A003991.P6365127437582401781.a, A322744, A322744.P7428208251532424710.a, A334922, A334922.P17964154798392453556.a, A334923, A334923.P17285238801038389709.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P17842490002735257572.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327259

/-! ## A327259.P9875520771987652429

`A003991(n+1)+4*(A003991(n+1)-A334922(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327259

/-- `A003991(n+1)+4*(A003991(n+1)-A334922(n+1))` -/
def P9875520771987652429.Spec : Prop :=
  ∀ n, P9875520771987652429.a n = A327259 (n + 1)

theorem P9875520771987652429.correct : P9875520771987652429.Spec := by
  intro n
  simp only [A327259, Nat.add_sub_cancel]

end A327259

/-! ## A327259.P8345843403621785087

`A003991(n+1)+4*(A334923(n+1)-A003991(n+1))`
-/

namespace A327259.P8345843403621785087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + 4 * (A334923 (n + 1) - A003991 (n + 1))

end

end A327259.P8345843403621785087

namespace A327259

/-- `A003991(n+1)+4*(A334923(n+1)-A003991(n+1))` -/
def P8345843403621785087.Spec : Prop :=
  ∀ n, P8345843403621785087.a n = A327259 (n + 1)

theorem P8345843403621785087.correct : P8345843403621785087.Spec := by
  intro n
  simp only [A327259, Nat.add_sub_cancel, A327259.P8345843403621785087.a, A327259.P9875520771987652429.a, A003991, A003991.P6365127437582401781.a, A334922, A334922.P17964154798392453556.a, A334923, A334923.P17285238801038389709.a, A143902, A143902.P5916339437029833280.a, A243866, A243866.P17842490002735257572.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327259

/-! ## A327259.P13086072596179494215

`A005408(A322744(n+1))-A008621(A098352(n+1))`
-/

namespace A327259.P13086072596179494215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A322744 (n + 1)).toNat - A008621 (A098352 (n + 1)).toNat

end

end A327259.P13086072596179494215

namespace A327259

/-- `A005408(A322744(n+1))-A008621(A098352(n+1))` -/
def P13086072596179494215.Spec : Prop :=
  ∀ n, P13086072596179494215.a n = A327259 (n + 1)

end A327259

/-! ## A327259.P15580222392443422045

`A005843(A322744(n+1)-A003991(n+1))+A003991(n+1)`
-/

namespace A327259.P15580222392443422045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A322744 (n + 1) - A003991 (n + 1)).toNat + A003991 (n + 1)

end

end A327259.P15580222392443422045

namespace A327259

/-- `A005843(A322744(n+1)-A003991(n+1))+A003991(n+1)` -/
def P15580222392443422045.Spec : Prop :=
  ∀ n, P15580222392443422045.a n = A327259 (n + 1)

end A327259

/-! ## A327259.P7683200175809690742

`A008586(A003991(n+1)-A334922(n+1))+A003991(n+1)`
-/

namespace A327259.P7683200175809690742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A003991 (n + 1) - A334922 (n + 1)).toNat + A003991 (n + 1)

end

end A327259.P7683200175809690742

namespace A327259

/-- `A008586(A003991(n+1)-A334922(n+1))+A003991(n+1)` -/
def P7683200175809690742.Spec : Prop :=
  ∀ n, P7683200175809690742.a n = A327259 (n + 1)

end A327259

/-!
# A327260: Odd numbers not of the form 2*n*k - n - k + 1 where n and k are odd numbers > 1.

The programs for A327260, the canonical program `A327260.P5995801857761508768` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327260 has offset 1).

The definition of A327260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327260.P3029940218022269450

`record[A026741(A327261(n+1))]`
-/

namespace A327260.P3029940218022269450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A327261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327260.P3029940218022269450

namespace A327260

/-- `record[A026741(A327261(n+1))]` -/
def P3029940218022269450.Spec : Prop :=
  ∀ n, P3029940218022269450.a n = A327260 (n + 1)

end A327260

/-! ## A327260.P9903702575386545144

`A109613(lt[A326049(2*n+1)², 2])`
-/

namespace A327260.P9903702575386545144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A327260.P9903702575386545144

namespace A327260

/-- `A109613(lt[A326049(2*n+1)², 2])` -/
def P9903702575386545144.Spec : Prop :=
  ∀ n, P9903702575386545144.a n = A327260 (n + 1)

end A327260

/-! ## A327260.P5995801857761508768

`record[gcd(n+1, A050460(2*n+1))]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327260

/-- `record[gcd(n+1, A050460(2*n+1))]` -/
def P5995801857761508768.Spec : Prop :=
  ∀ n, (P5995801857761508768.a n : ℤ) = A327260 (n + 1)

theorem P5995801857761508768.correct : P5995801857761508768.Spec := by
  intro n
  simp only [A327260, Nat.add_sub_cancel]

end A327260

/-! ## A327260.P8628089342720416682

`record[gcd(A050449(n+1), A129756(n))]`
-/

namespace A327260.P8628089342720416682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050449 (n + 1)) (A129756 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327260.P8628089342720416682

namespace A327260

/-- `record[gcd(A050449(n+1), A129756(n))]` -/
def P8628089342720416682.Spec : Prop :=
  ∀ n, (P8628089342720416682.a n : ℤ) = A327260 (n + 1)

end A327260

/-! ## A327260.P2166432883679917729

`A008619(eq[n+1, A140210(n+1)])`
-/

namespace A327260.P2166432883679917729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327260.P2166432883679917729

namespace A327260

/-- `A008619(eq[n+1, A140210(n+1)])` -/
def P2166432883679917729.Spec : Prop :=
  ∀ n, P2166432883679917729.a n = A327260 (n + 1)

end A327260

/-! ## A327260.P14163930166149190209

`record[A050449(n+1)/A001826(n+1)]`
-/

namespace A327260.P14163930166149190209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050449 (n + 1) : ℚ) / (A001826 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327260.P14163930166149190209

namespace A327260

/-- `record[A050449(n+1)/A001826(n+1)]` -/
def P14163930166149190209.Spec : Prop :=
  ∀ n, P14163930166149190209.a n = (A327260 (n + 1) : ℚ)

end A327260

/-! ## A327260.P1845495435330400518

`record[gcd(A227140(n+2), A293901(2*(n+1)))]`
-/

namespace A327260.P1845495435330400518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A227140 (n + 2)) (A293901 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327260.P1845495435330400518

namespace A327260

/-- `record[gcd(A227140(n+2), A293901(2*(n+1)))]` -/
def P1845495435330400518.Spec : Prop :=
  ∀ n, (P1845495435330400518.a n : ℤ) = A327260 (n + 1)

end A327260

/-!
# A327261: Numbers > 1 not of the form 2n*k - A319929(n,k) where n and k > 1.

The programs for A327261, there is no canonical definition to state claims against.
-/

/-! ## A327261.P17600553204188201260

`∑[A043278(A305105(n)+10)]`
-/

namespace A327261.P17600553204188201260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A305105 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327261.P17600553204188201260

/-! ## A327261.P11588375779602646693

`A328208(n+1)+A277674(A071062(n+3))`
-/

namespace A327261.P11588375779602646693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328208 (n + 1) + A277674 (A071062 (n + 3)).toNat

end

end A327261.P11588375779602646693

/-!
# A327262: a(n) is the sum of all parts of all partitions of n into consecutive parts that differ by 4.

The programs for A327262, there is no canonical definition to state claims against.
-/

/-! ## A327262.P7912484870426634658

`(n+1)*A334461(n+1)`
-/

namespace A327262.P7912484870426634658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334461 (n + 1)

end

end A327262.P7912484870426634658

/-! ## A327262.P8729337788550888211

`(n+1)*ceil(A340805(n+1)/2)`
-/

namespace A327262.P8729337788550888211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A340805 (n + 1) : ℚ) / 2⌉

end

end A327262.P8729337788550888211

/-! ## A327262.P16669144422079033362

`A075362(A334461(n+1)+∑[n])`
-/

namespace A327262.P16669144422079033362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A334461 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327262.P16669144422079033362

/-! ## A327262.P14345095532669694467

`(n+1)*A000006(A340805(n+1))`
-/

namespace A327262.P14345095532669694467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000006 (A340805 (n + 1)).toNat

end

end A327262.P14345095532669694467

/-! ## A327262.P16708825360418275667

`(n+1)*round(A340805(n+1)/A035214(∑[n]))`
-/

namespace A327262.P16708825360418275667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((A340805 (n + 1) : ℚ) / (A035214 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))

end

end A327262.P16708825360418275667

/-! ## A327262.P651312870797370334

`(n+1)*round(A340805(n+1)/A014963(A001316(n)))`
-/

namespace A327262.P651312870797370334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((A340805 (n + 1) : ℚ) / (A014963 (A001316 n).toNat : ℚ))

end

end A327262.P651312870797370334

/-! ## A327262.P14006451509622816055

`(n+1)*round(A340805(n+1)/A001221(2*A000040(n+1)))`
-/

namespace A327262.P14006451509622816055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((A340805 (n + 1) : ℚ) / (A001221 (2 * A000040 (n + 1)).toNat : ℚ))

end

end A327262.P14006451509622816055

/-!
# A327264: Numbers k with digit_sum(2*k) = digit_sum(2+k).

The programs for A327264, the canonical program `A327264.P13146634367397231510` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327264 has offset 1).

The definition of A327264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 635 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327264.P13146634367397231510

`eq[A004092(n), A007953(n+2)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327264

/-- `eq[A004092(n), A007953(n+2)]` -/
def P13146634367397231510.Spec : Prop :=
  ∀ n, (P13146634367397231510.a n : ℤ) = A327264 (n + 1)

theorem P13146634367397231510.correct : P13146634367397231510.Spec := by
  intro n
  simp only [A327264, Nat.add_sub_cancel]

end A327264

/-! ## A327264.P6920220442799631919

`eq[A007953(2*n), A007953(n+2)]`
-/

namespace A327264.P6920220442799631919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327264.P6920220442799631919

namespace A327264

/-- `eq[A007953(2*n), A007953(n+2)]` -/
def P6920220442799631919.Spec : Prop :=
  ∀ n, (P6920220442799631919.a n : ℤ) = A327264 (n + 1)

theorem P6920220442799631919.correct : P6920220442799631919.Spec := by
  intro n
  simp only [A327264, Nat.add_sub_cancel, A327264.P6920220442799631919.f1, A327264.P6920220442799631919.f2, A327264.P6920220442799631919.a, A327264.P13146634367397231510.f1, A327264.P13146634367397231510.f2, A327264.P13146634367397231510.a, A004092, A004092.P17027968154304682565.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327264

/-! ## A327264.P15066737353273658139

`eq[A118881(2*n), A118881(n+2)]`
-/

namespace A327264.P15066737353273658139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327264.P15066737353273658139

namespace A327264

/-- `eq[A118881(2*n), A118881(n+2)]` -/
def P15066737353273658139.Spec : Prop :=
  ∀ n, (P15066737353273658139.a n : ℤ) = A327264 (n + 1)

end A327264

/-! ## A327264.P12101556485477676491

`eq[A136614(n+2), A136614(A005843(n))]`
-/

namespace A327264.P12101556485477676491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 (A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327264.P12101556485477676491

namespace A327264

/-- `eq[A136614(n+2), A136614(A005843(n))]` -/
def P12101556485477676491.Spec : Prop :=
  ∀ n, (P12101556485477676491.a n : ℤ) = A327264 (n + 1)

end A327264

/-! ## A327264.P8653028326417208871

`eq[A169805(n+2), A169805(A004277(n))]`
-/

namespace A327264.P8653028326417208871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327264.P8653028326417208871

namespace A327264

/-- `eq[A169805(n+2), A169805(A004277(n))]` -/
def P8653028326417208871.Spec : Prop :=
  ∀ n, (P8653028326417208871.a n : ℤ) = A327264 (n + 1)

end A327264

/-! ## A327264.P14847754256861528657

`eq[A329562(n+2), A329562(A004277(n))]`
-/

namespace A327264.P14847754256861528657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327264.P14847754256861528657

namespace A327264

/-- `eq[A329562(n+2), A329562(A004277(n))]` -/
def P14847754256861528657.Spec : Prop :=
  ∀ n, (P14847754256861528657.a n : ℤ) = A327264 (n + 1)

end A327264

/-!
# A327267: Minimal determinant of a finite-dimensional integer lattice having an orthogonal basis containing a given vector with all entries positive.

The programs for A327267, there is no canonical definition to state claims against.
-/

/-! ## A327267.P15916281188559459505

`A328666(A153679(n+1))`
-/

namespace A327267.P15916281188559459505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328666 (A153679 (n + 1)).toNat

end

end A327267.P15916281188559459505

/-! ## A327267.P11154660993147009598

`and(A328666(n+1), A356877(n))`
-/

namespace A327267.P11154660993147009598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A328666 (n + 1)) (A356877 n)

end

end A327267.P11154660993147009598

/-! ## A327267.P15706673623723642177

`A328666(n+1)%A227293(n+3)`
-/

namespace A327267.P15706673623723642177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328666 (n + 1)) (A227293 (n + 3))

end

end A327267.P15706673623723642177

/-! ## A327267.P9281261970693475489

`and(A328666(n+1), A359085(n+1))`
-/

namespace A327267.P9281261970693475489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A328666 (n + 1)) (A359085 (n + 1))

end

end A327267.P9281261970693475489

/-! ## A327267.P7636920443755713420

`A328666(n+1)%A246701(A246719(n))`
-/

namespace A327267.P7636920443755713420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328666 (n + 1)) (A246701 (A246719 n).toNat)

end

end A327267.P7636920443755713420

/-!
# A327268: Dirichlet g.f.: 1 / (zeta(s) * zeta(s-1) * (1 - 2^(2 - s))).

The programs for A327268, the canonical program `A327268.P14934216175464162736` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327268 has offset 1).

The definition of A327268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327268.P14934216175464162736

`∑{d}[n+1, A008683(#)*A332793((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327268

/-- `∑{d}[n+1, A008683(#)*A332793((n+1)/#)]` -/
def P14934216175464162736.Spec : Prop :=
  ∀ n, P14934216175464162736.a n = A327268 (n + 1)

theorem P14934216175464162736.correct : P14934216175464162736.Spec := by
  intro n
  simp only [A327268, Nat.add_sub_cancel]

end A327268

/-! ## A327268.P1170039465262723424

`∑{d}[n+1, A087003(#)*A361985((n+1)/#)]`
-/

namespace A327268.P1170039465262723424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A361985 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327268.P1170039465262723424

namespace A327268

/-- `∑{d}[n+1, A087003(#)*A361985((n+1)/#)]` -/
def P1170039465262723424.Spec : Prop :=
  ∀ n, P1170039465262723424.a n = A327268 (n + 1)

end A327268

/-!
# A327269: Smallest modulus of any integer n X n determinant with top row 1,2,...,n and rows nonzero and pairwise orthogonal.

The programs for A327269, there is no canonical definition to state claims against.
-/

/-! ## A327269.P14825844078327808669

`A327267(Δ[A143293(n)])`
-/

namespace A327269.P14825844078327808669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327267 (f1 (n + 1) - f1 n).toNat

end

end A327269.P14825844078327808669

/-!
# A327271: Smallest modulus of any n X n integer determinant whose top row has all 1's and whose rows are pairwise orthogonal.

The programs for A327271, there is no canonical definition to state claims against.
-/

/-! ## A327271.P2732338897560901788

`A327267(2^(n+1))`
-/

namespace A327271.P2732338897560901788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327267 (2 ^ (n + 1))

end

end A327271.P2732338897560901788

/-! ## A327271.P16749933623715437293

`A327267(A000079(n+1))%A001340(n)`
-/

namespace A327271.P16749933623715437293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327267 (A000079 (n + 1)).toNat) (A001340 n)

end

end A327271.P16749933623715437293

/-! ## A327271.P13239048668447297486

`A327267(A016116(2*n+3))%A030078(n+1)`
-/

namespace A327271.P13239048668447297486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327267 (A016116 (2 * n + 3)).toNat) (A030078 (n + 1))

end

end A327271.P13239048668447297486

/-! ## A327271.P3810632436833569763

`A057427(2*(n+2))*A327267(A016116(2*n+3))`
-/

namespace A327271.P3810632436833569763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 2)) * A327267 (A016116 (2 * n + 3)).toNat

end

end A327271.P3810632436833569763

/-!
# A327272: Smallest modulus of any (n+1) X (n+1) integer determinant whose top row is 1,2,2^2,...,2^n and whose rows are pairwise orthogonal.

The programs for A327272, there is no canonical definition to state claims against.
-/

/-! ## A327272.P13372494476989418703

`A378543(A131577(2*(n+1))*A242520(n+1))`
-/

namespace A327272.P13372494476989418703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378543 (A131577 (2 * (n + 1)) * A242520 (n + 1)).toNat

end

end A327272.P13372494476989418703

/-!
# A327273: An upper bound sequence for A327272.

The programs for A327273, there is no canonical definition to state claims against.
-/

/-! ## A327273.P1704728293816155551

`∑{d}[A201561(n+1), A165825(#)]`
-/

namespace A327273.P1704728293816155551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A165825 d

end

end A327273.P1704728293816155551

/-!
# A327274: Dirichlet g.f.: 1 / (zeta(s)^2 * (1 - 2^(1 - s))).

The programs for A327274, the canonical program `A327274.P15841569813936490658` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327274 has offset 1).

The definition of A327274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067856, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327274.P15841569813936490658

`∑{d}[n+1, A008683((n+1)/#)*A067856(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327274

/-- `∑{d}[n+1, A008683((n+1)/#)*A067856(#)]` -/
def P15841569813936490658.Spec : Prop :=
  ∀ n, P15841569813936490658.a n = A327274 (n + 1)

theorem P15841569813936490658.correct : P15841569813936490658.Spec := by
  intro n
  simp only [A327274, Nat.add_sub_cancel]

end A327274

/-! ## A327274.P12245010080846323339

`∑{d}[n+1, A007428(#)*A038712((n+1)/#)]`
-/

namespace A327274.P12245010080846323339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A038712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327274.P12245010080846323339

namespace A327274

/-- `∑{d}[n+1, A007428(#)*A038712((n+1)/#)]` -/
def P12245010080846323339.Spec : Prop :=
  ∀ n, P12245010080846323339.a n = A327274 (n + 1)

end A327274

/-! ## A327274.P5280525382476587557

`∑{d}[n+1, A007427(#)*A048298((n+1)/#)]`
-/

namespace A327274.P5280525382476587557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A048298 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327274.P5280525382476587557

namespace A327274

/-- `∑{d}[n+1, A007427(#)*A048298((n+1)/#)]` -/
def P5280525382476587557.Spec : Prop :=
  ∀ n, P5280525382476587557.a n = A327274 (n + 1)

end A327274

/-! ## A327274.P16449955059939140062

`∑{d}[n+1, A046692(#)*A162728((n+1)/#)]`
-/

namespace A327274.P16449955059939140062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A162728 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327274.P16449955059939140062

namespace A327274

/-- `∑{d}[n+1, A046692(#)*A162728((n+1)/#)]` -/
def P16449955059939140062.Spec : Prop :=
  ∀ n, P16449955059939140062.a n = A327274 (n + 1)

end A327274

/-! ## A327274.P6992135884402501567

`∑{d}[n+1, A000010(#)*A327278((n+1)/#)]`
-/

namespace A327274.P6992135884402501567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327274.P6992135884402501567

namespace A327274

/-- `∑{d}[n+1, A000010(#)*A327278((n+1)/#)]` -/
def P6992135884402501567.Spec : Prop :=
  ∀ n, P6992135884402501567.a n = A327274 (n + 1)

end A327274

/-! ## A327274.P10750756506266275361

`∑{d}[n+1, A007431(#)*A349343((n+1)/#)]`
-/

namespace A327274.P10750756506266275361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327274.P10750756506266275361

namespace A327274

/-- `∑{d}[n+1, A007431(#)*A349343((n+1)/#)]` -/
def P10750756506266275361.Spec : Prop :=
  ∀ n, P10750756506266275361.a n = A327274 (n + 1)

end A327274

/-! ## A327274.P12317685831168840848

`∑{d}[n+1, A087003(#)*A361984((n+1)/#)]`
-/

namespace A327274.P12317685831168840848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327274.P12317685831168840848

namespace A327274

/-- `∑{d}[n+1, A087003(#)*A361984((n+1)/#)]` -/
def P12317685831168840848.Spec : Prop :=
  ∀ n, P12317685831168840848.a n = A327274 (n + 1)

end A327274

/-! ## A327274.P1778355682138491471

`∑{d}[n+1, A345082(#)*A379497((n+1)/#)]`
-/

namespace A327274.P1778355682138491471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A345082 d * A379497 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327274.P1778355682138491471

namespace A327274

/-- `∑{d}[n+1, A345082(#)*A379497((n+1)/#)]` -/
def P1778355682138491471.Spec : Prop :=
  ∀ n, P1778355682138491471.a n = A327274 (n + 1)

end A327274

/-! ## A327274.P10899699277112198706

`∑{d}[n+1, A007427(#)*A099894((n+1)/#-1)]`
-/

namespace A327274.P10899699277112198706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A099894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A327274.P10899699277112198706

namespace A327274

/-- `∑{d}[n+1, A007427(#)*A099894((n+1)/#-1)]` -/
def P10899699277112198706.Spec : Prop :=
  ∀ n, P10899699277112198706.a n = A327274 (n + 1)

end A327274

/-!
# A327276: a(n) = Sum_{d|n, d odd} mu(d) * mu(n/d).

The programs for A327276, the canonical program `A327276.P12566764913909175971` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327276 has offset 1).

The definition of A327276 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327276.P12566764913909175971

`∑{d}[n+1, A209229((n+1)/#)*A007427(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A327276

/-- `∑{d}[n+1, A209229((n+1)/#)*A007427(#)]` -/
def P12566764913909175971.Spec : Prop :=
  ∀ n, P12566764913909175971.a n = A327276 (n + 1)

theorem P12566764913909175971.correct : P12566764913909175971.Spec := by
  intro n
  simp only [A327276, Nat.add_sub_cancel]

end A327276

/-! ## A327276.P3290571534554554805

`A349913(n+1)-∑{d}[n+1, #%2]`
-/

namespace A327276.P3290571534554554805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349913 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A327276.P3290571534554554805

namespace A327276

/-- `A349913(n+1)-∑{d}[n+1, #%2]` -/
def P3290571534554554805.Spec : Prop :=
  ∀ n, P3290571534554554805.a n = A327276 (n + 1)

theorem P3290571534554554805.correct : P3290571534554554805.Spec := by
  intro n
  simp only [A327276, Nat.add_sub_cancel, A327276.P3290571534554554805.f1, A327276.P3290571534554554805.a, A327276.P12566764913909175971.f1, A327276.P12566764913909175971.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A209229, A209229.P14119267658822519212.f1, A209229.P14119267658822519212.a, A349913, A349913.P3840109067347682984.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327276

/-! ## A327276.P7377950610191088598

`A349913(n+1)-A001227(n+1)`
-/

namespace A327276.P7377950610191088598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349913 (n + 1) - A001227 (n + 1)

end

end A327276.P7377950610191088598

namespace A327276

/-- `A349913(n+1)-A001227(n+1)` -/
def P7377950610191088598.Spec : Prop :=
  ∀ n, P7377950610191088598.a n = A327276 (n + 1)

theorem P7377950610191088598.correct : P7377950610191088598.Spec := by
  intro n
  simp only [A327276, Nat.add_sub_cancel, A327276.P7377950610191088598.a, A327276.P12566764913909175971.f1, A327276.P12566764913909175971.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A209229, A209229.P14119267658822519212.f1, A209229.P14119267658822519212.a, A349913, A349913.P3840109067347682984.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327276

/-! ## A327276.P18405175139966627690

`A166486(n+1)*A355691(n+1)`
-/

namespace A327276.P18405175139966627690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (n + 1) * A355691 (n + 1)

end

end A327276.P18405175139966627690

namespace A327276

/-- `A166486(n+1)*A355691(n+1)` -/
def P18405175139966627690.Spec : Prop :=
  ∀ n, P18405175139966627690.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P10939277146609361619

`A355691(n+1)*A359550(n+1)`
-/

namespace A327276.P10939277146609361619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355691 (n + 1) * A359550 (n + 1)

end

end A327276.P10939277146609361619

namespace A327276

/-- `A355691(n+1)*A359550(n+1)` -/
def P10939277146609361619.Spec : Prop :=
  ∀ n, P10939277146609361619.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P14328579226589295256

`A053826(n+1)%A100008(n+1)`
-/

namespace A327276.P14328579226589295256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053826 (n + 1)) (A100008 (n + 1))

end

end A327276.P14328579226589295256

namespace A327276

/-- `A053826(n+1)%A100008(n+1)` -/
def P14328579226589295256.Spec : Prop :=
  ∀ n, P14328579226589295256.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P12166043673148181612

`∑{d}[n+1, A001511(#)*A007428((n+1)/#)]`
-/

namespace A327276.P12166043673148181612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A007428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327276.P12166043673148181612

namespace A327276

/-- `∑{d}[n+1, A001511(#)*A007428((n+1)/#)]` -/
def P12166043673148181612.Spec : Prop :=
  ∀ n, P12166043673148181612.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P15894082998793867021

`∑{d}[n+1, A008683(#)*A087003((n+1)/#)]`
-/

namespace A327276.P15894082998793867021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327276.P15894082998793867021

namespace A327276

/-- `∑{d}[n+1, A008683(#)*A087003((n+1)/#)]` -/
def P15894082998793867021.Spec : Prop :=
  ∀ n, P15894082998793867021.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P4101765102670204276

`∑{d}[n+1, A046692(#)*A062570((n+1)/#)]`
-/

namespace A327276.P4101765102670204276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327276.P4101765102670204276

namespace A327276

/-- `∑{d}[n+1, A046692(#)*A062570((n+1)/#)]` -/
def P4101765102670204276.Spec : Prop :=
  ∀ n, P4101765102670204276.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P11106617487828583019

`∑{d}[n+1, A092673(#)*A209635((n+1)/#)]`
-/

namespace A327276.P11106617487828583019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A209635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327276.P11106617487828583019

namespace A327276

/-- `∑{d}[n+1, A092673(#)*A209635((n+1)/#)]` -/
def P11106617487828583019.Spec : Prop :=
  ∀ n, P11106617487828583019.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P17839105081450821577

`∑{d}[n+1, A000010(#)*A326938((n+1)/#)]`
-/

namespace A327276.P17839105081450821577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327276.P17839105081450821577

namespace A327276

/-- `∑{d}[n+1, A000010(#)*A326938((n+1)/#)]` -/
def P17839105081450821577.Spec : Prop :=
  ∀ n, P17839105081450821577.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P16237790631136308190

`∑{d}[n+1, A129628(#)*A247343((n+1)/#)]`
-/

namespace A327276.P16237790631136308190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327276.P16237790631136308190

namespace A327276

/-- `∑{d}[n+1, A129628(#)*A247343((n+1)/#)]` -/
def P16237790631136308190.Spec : Prop :=
  ∀ n, P16237790631136308190.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P6935757813205210979

`∑{d}[n+1, A078461(#)*A326415((n+1)/#)]`
-/

namespace A327276.P6935757813205210979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078461 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327276.P6935757813205210979

namespace A327276

/-- `∑{d}[n+1, A078461(#)*A326415((n+1)/#)]` -/
def P6935757813205210979.Spec : Prop :=
  ∀ n, P6935757813205210979.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P7938388384736304735

`∑{d}[n+1, A092152(#)*A355690((n+1)/#)]`
-/

namespace A327276.P7938388384736304735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092152 d * A355690 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327276.P7938388384736304735

namespace A327276

/-- `∑{d}[n+1, A092152(#)*A355690((n+1)/#)]` -/
def P7938388384736304735.Spec : Prop :=
  ∀ n, P7938388384736304735.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P17972579384170324312

`∑{d}[n+1, A174725(#)*A378224((n+1)/#)]`
-/

namespace A327276.P17972579384170324312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174725 d * A378224 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327276.P17972579384170324312

namespace A327276

/-- `∑{d}[n+1, A174725(#)*A378224((n+1)/#)]` -/
def P17972579384170324312.Spec : Prop :=
  ∀ n, P17972579384170324312.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P15685752488774821724

`∑{d}[n+1, A327960(#)*A344372((n+1)/#)]`
-/

namespace A327276.P15685752488774821724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327960 d * A344372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327276.P15685752488774821724

namespace A327276

/-- `∑{d}[n+1, A327960(#)*A344372((n+1)/#)]` -/
def P15685752488774821724.Spec : Prop :=
  ∀ n, P15685752488774821724.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P13695571320911229510

`∑{d}[n+1, A349136(#)*A349915((n+1)/#)]`
-/

namespace A327276.P13695571320911229510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349136 d * A349915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327276.P13695571320911229510

namespace A327276

/-- `∑{d}[n+1, A349136(#)*A349915((n+1)/#)]` -/
def P13695571320911229510.Spec : Prop :=
  ∀ n, P13695571320911229510.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P11517051730816414421

`∑{d}[n+1, A355689(#)*A359591((n+1)/#)]`
-/

namespace A327276.P11517051730816414421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355689 d * A359591 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327276.P11517051730816414421

namespace A327276

/-- `∑{d}[n+1, A355689(#)*A359591((n+1)/#)]` -/
def P11517051730816414421.Spec : Prop :=
  ∀ n, P11517051730816414421.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P17482606399360959494

`∑{d}[n+1, A007427(#)*A036987((n+1)/#-1)]`
-/

namespace A327276.P17482606399360959494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A327276.P17482606399360959494

namespace A327276

/-- `∑{d}[n+1, A007427(#)*A036987((n+1)/#-1)]` -/
def P17482606399360959494.Spec : Prop :=
  ∀ n, P17482606399360959494.a n = A327276 (n + 1)

end A327276

/-! ## A327276.P780767717619978429

`A349913(n+1)-A000005((n+1)/and(n+1, -(n+1)))`
-/

namespace A327276.P780767717619978429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349913 (n + 1) - A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A327276.P780767717619978429

namespace A327276

/-- `A349913(n+1)-A000005((n+1)/and(n+1, -(n+1)))` -/
def P780767717619978429.Spec : Prop :=
  ∀ n, P780767717619978429.a n = A327276 (n + 1)

end A327276

/-!
# A327277: Irregular triangle read by rows in which row n lists the first prime(n) primes.

The programs for A327277, the canonical program `A327277.P14093476909524946840` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327277 has offset 1).

The definition of A327277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327277.P5445988697233898402

`A000040(A037125(n+1))`
-/

namespace A327277.P5445988697233898402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A037125 (n + 1)).toNat

end

end A327277.P5445988697233898402

namespace A327277

/-- `A000040(A037125(n+1))` -/
def P5445988697233898402.Spec : Prop :=
  ∀ n, P5445988697233898402.a n = A327277 (n + 1)

end A327277

/-! ## A327277.P16879150324580517029

`A008578(A037125(n+1)+1)`
-/

namespace A327277.P16879150324580517029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A037125 (n + 1) + 1).toNat

end

end A327277.P16879150324580517029

namespace A327277

/-- `A008578(A037125(n+1)+1)` -/
def P16879150324580517029.Spec : Prop :=
  ∀ n, P16879150324580517029.a n = A327277 (n + 1)

end A327277

/-! ## A327277.P18384507740742242692

`A182986(A037125(n+1)+1)`
-/

namespace A327277.P18384507740742242692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A037125 (n + 1) + 1).toNat

end

end A327277.P18384507740742242692

namespace A327277

/-- `A182986(A037125(n+1)+1)` -/
def P18384507740742242692.Spec : Prop :=
  ∀ n, P18384507740742242692.a n = A327277 (n + 1)

end A327277

/-! ## A327277.P3329576159629321835

`A324050(A037125(n+1)+1)`
-/

namespace A327277.P3329576159629321835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A037125 (n + 1) + 1).toNat

end

end A327277.P3329576159629321835

namespace A327277

/-- `A324050(A037125(n+1)+1)` -/
def P3329576159629321835.Spec : Prop :=
  ∀ n, P3329576159629321835.a n = A327277 (n + 1)

end A327277

/-! ## A327277.P14093476909524946840

`p?[A037126(n+1)*A143536(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A327277

/-- `p?[A037126(n+1)*A143536(n+1)]` -/
def P14093476909524946840.Spec : Prop :=
  ∀ n, P14093476909524946840.a n = A327277 (n + 1)

theorem P14093476909524946840.correct : P14093476909524946840.Spec := by
  intro n
  simp only [A327277, Nat.add_sub_cancel]

end A327277

/-! ## A327277.P7151732296128670279

`A000040(n+1-A007504(A350174(n)))`
-/

namespace A327277.P7151732296128670279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) - A007504 (A350174 n).toNat).toNat

end

end A327277.P7151732296128670279

namespace A327277

/-- `A000040(n+1-A007504(A350174(n)))` -/
def P7151732296128670279.Spec : Prop :=
  ∀ n, P7151732296128670279.a n = A327277 (n + 1)

end A327277

/-! ## A327277.P8293864378675697632

`p?[A013632(A003056(n))*A037126(n+1)]`
-/

namespace A327277.P8293864378675697632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A003056 n).toNat * A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327277.P8293864378675697632

namespace A327277

/-- `p?[A013632(A003056(n))*A037126(n+1)]` -/
def P8293864378675697632.Spec : Prop :=
  ∀ n, P8293864378675697632.a n = A327277 (n + 1)

end A327277

/-! ## A327277.P14123854804245037782

`p?[A001222(A002024(n+1))*A037126(n+1)]`
-/

namespace A327277.P14123854804245037782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002024 (n + 1)).toNat * A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327277.P14123854804245037782

namespace A327277

/-- `p?[A001222(A002024(n+1))*A037126(n+1)]` -/
def P14123854804245037782.Spec : Prop :=
  ∀ n, P14123854804245037782.a n = A327277 (n + 1)

end A327277

/-!
# A327278: a(n) = Sum_{d|n, d odd} d * mu(d) * mu(n/d).

The programs for A327278, the canonical program `A327278.P7234493301134579826` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327278 has offset 1).

The definition of A327278 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067856, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327278.P7234493301134579826

`∑{d}[n+1, A067856((n+1)/#)*A055615(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327278

/-- `∑{d}[n+1, A067856((n+1)/#)*A055615(#)]` -/
def P7234493301134579826.Spec : Prop :=
  ∀ n, P7234493301134579826.a n = A327278 (n + 1)

theorem P7234493301134579826.correct : P7234493301134579826.Spec := by
  intro n
  simp only [A327278, Nat.add_sub_cancel]

end A327278

/-! ## A327278.P14630669492715310902

`A326938(n+1)/A000034(n)`
-/

namespace A327278.P14630669492715310902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A327278.P14630669492715310902

namespace A327278

/-- `A326938(n+1)/A000034(n)` -/
def P14630669492715310902.Spec : Prop :=
  ∀ n, P14630669492715310902.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P6242869816589625080

`A326938(n+1)/A133186(n)`
-/

namespace A327278.P6242869816589625080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A133186 n : ℚ)

end

end A327278.P6242869816589625080

namespace A327278

/-- `A326938(n+1)/A133186(n)` -/
def P6242869816589625080.Spec : Prop :=
  ∀ n, P6242869816589625080.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P2739232766059937140

`A349914(n+1)-A000593(n+1)`
-/

namespace A327278.P2739232766059937140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349914 (n + 1) - A000593 (n + 1)

end

end A327278.P2739232766059937140

namespace A327278

/-- `A349914(n+1)-A000593(n+1)` -/
def P2739232766059937140.Spec : Prop :=
  ∀ n, P2739232766059937140.a n = A327278 (n + 1)

theorem P2739232766059937140.correct : P2739232766059937140.Spec := by
  intro n
  simp only [A327278, Nat.add_sub_cancel, A327278.P2739232766059937140.a, A327278.P7234493301134579826.f1, A327278.P7234493301134579826.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A055615, A055615.P8993130195977213181.a, A067856, A067856.P11218736261645060229.f1, A067856.P11218736261645060229.a, A349914, A349914.P5312422532609630114.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327278

/-! ## A327278.P654104692637938581

`A326938(n+1)/A001511(n+1)`
-/

namespace A327278.P654104692637938581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A327278.P654104692637938581

namespace A327278

/-- `A326938(n+1)/A001511(n+1)` -/
def P654104692637938581.Spec : Prop :=
  ∀ n, P654104692637938581.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P12713823365023488494

`A326938(n+1)/A003484(n+1)`
-/

namespace A327278.P12713823365023488494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A003484 (n + 1) : ℚ)

end

end A327278.P12713823365023488494

namespace A327278

/-- `A326938(n+1)/A003484(n+1)` -/
def P12713823365023488494.Spec : Prop :=
  ∀ n, P12713823365023488494.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P610323557283396716

`A326938(n+1)/A006519(n+1)`
-/

namespace A327278.P610323557283396716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A327278.P610323557283396716

namespace A327278

/-- `A326938(n+1)/A006519(n+1)` -/
def P610323557283396716.Spec : Prop :=
  ∀ n, P610323557283396716.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P5198521556403167376

`A326938(n+1)/A056832(n+1)`
-/

namespace A327278.P5198521556403167376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A056832 (n + 1) : ℚ)

end

end A327278.P5198521556403167376

namespace A327278

/-- `A326938(n+1)/A056832(n+1)` -/
def P5198521556403167376.Spec : Prop :=
  ∀ n, P5198521556403167376.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P10404043028022539374

`A326938(n+1)/A068057(n+1)`
-/

namespace A327278.P10404043028022539374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A068057 (n + 1) : ℚ)

end

end A327278.P10404043028022539374

namespace A327278

/-- `A326938(n+1)/A068057(n+1)` -/
def P10404043028022539374.Spec : Prop :=
  ∀ n, P10404043028022539374.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P13281796890407720637

`A326938(n+1)/A078734(n+1)`
-/

namespace A327278.P13281796890407720637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A078734 (n + 1) : ℚ)

end

end A327278.P13281796890407720637

namespace A327278

/-- `A326938(n+1)/A078734(n+1)` -/
def P13281796890407720637.Spec : Prop :=
  ∀ n, P13281796890407720637.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P2924379562684677411

`A326938(n+1)/A082388(n+1)`
-/

namespace A327278.P2924379562684677411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A082388 (n + 1) : ℚ)

end

end A327278.P2924379562684677411

namespace A327278

/-- `A326938(n+1)/A082388(n+1)` -/
def P2924379562684677411.Spec : Prop :=
  ∀ n, P2924379562684677411.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P4914988561656136534

`A326938(n+1)/A089242(n+1)`
-/

namespace A327278.P4914988561656136534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A089242 (n + 1) : ℚ)

end

end A327278.P4914988561656136534

namespace A327278

/-- `A326938(n+1)/A089242(n+1)` -/
def P4914988561656136534.Spec : Prop :=
  ∀ n, P4914988561656136534.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P3159403176584455626

`A326938(n+1)/A105931(n+1)`
-/

namespace A327278.P3159403176584455626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A105931 (n + 1) : ℚ)

end

end A327278.P3159403176584455626

namespace A327278

/-- `A326938(n+1)/A105931(n+1)` -/
def P3159403176584455626.Spec : Prop :=
  ∀ n, P3159403176584455626.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P15711147331840508131

`A326938(n+1)/A138191(n+1)`
-/

namespace A327278.P15711147331840508131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A138191 (n + 1) : ℚ)

end

end A327278.P15711147331840508131

namespace A327278

/-- `A326938(n+1)/A138191(n+1)` -/
def P15711147331840508131.Spec : Prop :=
  ∀ n, P15711147331840508131.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P12501457593945391489

`A326938(n+1)/A235726(n+1)`
-/

namespace A327278.P12501457593945391489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A235726 (n + 1) : ℚ)

end

end A327278.P12501457593945391489

namespace A327278

/-- `A326938(n+1)/A235726(n+1)` -/
def P12501457593945391489.Spec : Prop :=
  ∀ n, P12501457593945391489.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P4280015240682974694

`A326938(n+1)/A236313(n+1)`
-/

namespace A327278.P4280015240682974694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A236313 (n + 1) : ℚ)

end

end A327278.P4280015240682974694

namespace A327278

/-- `A326938(n+1)/A236313(n+1)` -/
def P4280015240682974694.Spec : Prop :=
  ∀ n, P4280015240682974694.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P14450834023908137340

`A326938(n+1)/A265331(n+1)`
-/

namespace A327278.P14450834023908137340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) : ℚ) / (A265331 (n + 1) : ℚ)

end

end A327278.P14450834023908137340

namespace A327278

/-- `A326938(n+1)/A265331(n+1)` -/
def P14450834023908137340.Spec : Prop :=
  ∀ n, P14450834023908137340.a n = (A327278 (n + 1) : ℚ)

end A327278

/-! ## A327278.P3002707333320768138

`∑{d}[n+1, A046692(#)*A048298((n+1)/#)]`
-/

namespace A327278.P3002707333320768138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A048298 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327278.P3002707333320768138

namespace A327278

/-- `∑{d}[n+1, A046692(#)*A048298((n+1)/#)]` -/
def P3002707333320768138.Spec : Prop :=
  ∀ n, P3002707333320768138.a n = A327278 (n + 1)

end A327278

/-! ## A327278.P3353664627645056895

`∑{d}[n+1, A053825(#)*A208895((n+1)/#)]`
-/

namespace A327278.P3353664627645056895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053825 d * A208895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327278.P3353664627645056895

namespace A327278

/-- `∑{d}[n+1, A053825(#)*A208895((n+1)/#)]` -/
def P3353664627645056895.Spec : Prop :=
  ∀ n, P3353664627645056895.a n = A327278 (n + 1)

end A327278

/-! ## A327278.P13013295326134672397

`∑{d}[n+1, A023900(#)*A327274((n+1)/#)]`
-/

namespace A327278.P13013295326134672397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327278.P13013295326134672397

namespace A327278

/-- `∑{d}[n+1, A023900(#)*A327274((n+1)/#)]` -/
def P13013295326134672397.Spec : Prop :=
  ∀ n, P13013295326134672397.a n = A327278 (n + 1)

end A327278

/-!
# A327285: Number of partitions of n into colored blocks of equal parts, such that all colors from a set of size two are used and the colors are introduced in increasing order.

The programs for A327285, there is no canonical definition to state claims against.
-/

/-! ## A327285.P14169825733836317126

`record[abs(A000041(n)-A014968(n))]`
-/

namespace A327285.P14169825733836317126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000041 n - A014968 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327285.P14169825733836317126

/-! ## A327285.P17615818230990500290

`A014968(n+3)-A000041(n+3)`
-/

namespace A327285.P17615818230990500290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014968 (n + 3) - A000041 (n + 3)

end

end A327285.P17615818230990500290

/-! ## A327285.P8175399263133990369

`record[A321878(A075349(n+1)+1)]`
-/

namespace A327285.P8175399263133990369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (A075349 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327285.P8175399263133990369

/-! ## A327285.P13144256300400576369

`A321878(eq[2, A237451(n+1)])`
-/

namespace A327285.P13144256300400576369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327285.P13144256300400576369

/-! ## A327285.P12010744293576780770

`record[gcd(A291895(n), A321878(n+2))]`
-/

namespace A327285.P12010744293576780770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A291895 n) (A321878 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327285.P12010744293576780770

/-!
# A327286: Number of partitions of n into colored blocks of equal parts, such that all colors from a set of size three are used and the colors are introduced in increasing order.

The programs for A327286, there is no canonical definition to state claims against.
-/

/-! ## A327286.P13844704313659889871

`A321878(eq[3, A237451(n+1)])`
-/

namespace A327286.P13844704313659889871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327286.P13844704313659889871

/-! ## A327286.P9123830590422790643

`A321878(eq[4, A121997(n+1)])`
-/

namespace A327286.P9123830590422790643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327286.P9123830590422790643

/-! ## A327286.P17119858190593833300

`A252459(A002805(n+1))+A000712(n)`
-/

namespace A327286.P17119858190593833300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A002805 (n + 1)).toNat + A000712 n

end

end A327286.P17119858190593833300

/-! ## A327286.P1644086623167968796

`A297155(A181813(n+1))+A000712(n)`
-/

namespace A327286.P1644086623167968796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A181813 (n + 1)).toNat + A000712 n

end

end A327286.P1644086623167968796

/-! ## A327286.P15279789575927391455

`A037830(A000244(n))+A000712(n)`
-/

namespace A327286.P15279789575927391455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A000244 n).toNat + A000712 n

end

end A327286.P15279789575927391455

/-!
# A327287: Number of partitions of n into colored blocks of equal parts, such that all colors from a set of size four are used and the colors are introduced in increasing order.

The programs for A327287, there is no canonical definition to state claims against.
-/

/-! ## A327287.P4471621290156726532

`A321878(eq[4, A237451(n+1)])`
-/

namespace A327287.P4471621290156726532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327287.P4471621290156726532

/-! ## A327287.P11622464420341930884

`A321878(eq[5, A121997(n+1)])`
-/

namespace A327287.P11622464420341930884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327287.P11622464420341930884

/-! ## A327287.P13521009518373056712

`A319564(2*n)-A281116(A001930(n))`
-/

namespace A327287.P13521009518373056712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319564 (2 * n) - A281116 (A001930 n).toNat

end

end A327287.P13521009518373056712

/-! ## A327287.P3532249884564365429

`A120246(A203534(n))`
-/

namespace A327287.P3532249884564365429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120246 (A203534 n).toNat

end

end A327287.P3532249884564365429

/-!
# A327288: Number of partitions of n into colored blocks of equal parts, such that all colors from a set of size five are used and the colors are introduced in increasing order.

The programs for A327288, there is no canonical definition to state claims against.
-/

/-! ## A327288.P3594270119856226466

`A321878(eq[5, A237451(n+1)])`
-/

namespace A327288.P3594270119856226466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327288.P3594270119856226466

/-! ## A327288.P11243979668012521938

`A321878(eq[6, A121997(n+1)])`
-/

namespace A327288.P11243979668012521938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327288.P11243979668012521938

/-! ## A327288.P4662908293953350590

`A292250(A130263(n))+A000712(n)`
-/

namespace A327288.P4662908293953350590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292250 (A130263 n).toNat + A000712 n

end

end A327288.P4662908293953350590

/-!
# A327289: Number of partitions of n into colored blocks of equal parts, such that all colors from a set of size six are used and the colors are introduced in increasing order.

The programs for A327289, there is no canonical definition to state claims against.
-/

/-! ## A327289.P3814220118731654233

`A321878(eq[6, A237451(n+1)])`
-/

namespace A327289.P3814220118731654233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327289.P3814220118731654233

/-! ## A327289.P1718644340615794686

`A184421(A130781(n)+n)`
-/

namespace A327289.P1718644340615794686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (A130781 n + (n : ℤ)).toNat

end

end A327289.P1718644340615794686

/-! ## A327289.P475437263179926810

`A003056(A319345(2^n)²)`
-/

namespace A327289.P475437263179926810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A319345 (2 ^ n) ^ 2).toNat

end

end A327289.P475437263179926810

/-! ## A327289.P15449744860539626551

`A000196(A174248(n))+∑[n]`
-/

namespace A327289.P15449744860539626551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A174248 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A327289.P15449744860539626551

/-!
# A327290: Number of partitions of n into colored blocks of equal parts, such that all colors from a set of size seven are used and the colors are introduced in increasing order.

The programs for A327290, there is no canonical definition to state claims against.
-/

/-! ## A327290.P14734608541347602099

`A321878(eq[7, A237451(n+1)])`
-/

namespace A327290.P14734608541347602099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327290.P14734608541347602099

/-! ## A327290.P17330088191671408625

`A137745(A137747(n))+A000712(n)`
-/

namespace A327290.P17330088191671408625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137745 (A137747 n).toNat + A000712 n

end

end A327290.P17330088191671408625

/-! ## A327290.P12231109850772819491

`A184946(A225394(n))+A000712(n)`
-/

namespace A327290.P12231109850772819491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184946 (A225394 n).toNat + A000712 n

end

end A327290.P12231109850772819491

/-! ## A327290.P8940870857478857401

`A184946(A089819(n+1))+A000712(n)`
-/

namespace A327290.P8940870857478857401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184946 (A089819 (n + 1)).toNat + A000712 n

end

end A327290.P8940870857478857401

/-!
# A327291: Number of partitions of n into colored blocks of equal parts, such that all colors from a set of size eight are used and the colors are introduced in increasing order.

The programs for A327291, there is no canonical definition to state claims against.
-/

/-! ## A327291.P5362510602471367259

`A363226(A255378(n))+A000712(n)`
-/

namespace A327291.P5362510602471367259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363226 (A255378 n).toNat + A000712 n

end

end A327291.P5362510602471367259

/-! ## A327291.P772398889703430729

`A259481(A006512(n+1))+A000712(n)`
-/

namespace A327291.P772398889703430729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A006512 (n + 1)).toNat + A000712 n

end

end A327291.P772398889703430729

/-!
# A327293: Number of partitions of n into colored blocks of equal parts, such that all colors from a set of size ten are used and the colors are introduced in increasing order.

The programs for A327293, there is no canonical definition to state claims against.
-/

/-! ## A327293.P13588247158103695397

`A025443(A022176(n))+A000712(n)`
-/

namespace A327293.P13588247158103695397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A022176 n).toNat + A000712 n

end

end A327293.P13588247158103695397

/-!
# A327297: Terms in A003656 that are not prime powers (A246655).

The programs for A327297, there is no canonical definition to state claims against.
-/

/-! ## A327297.P1638354018260293758

`record[A072438(A003656(n+3))]`
-/

namespace A327297.P1638354018260293758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A003656 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327297.P1638354018260293758

/-! ## A327297.P12560825661125355370

`filter[A003656(n+1), A143731(#)]`
-/

namespace A327297.P12560825661125355370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A327297.P12560825661125355370

/-! ## A327297.P8374526737880606914

`filter[A003656(n+1), A174898(#)]`
-/

namespace A327297.P8374526737880606914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A327297.P8374526737880606914

/-! ## A327297.P14734225316594634343

`filter[A003656(n+1), A202238(#)]`
-/

namespace A327297.P14734225316594634343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A327297.P14734225316594634343

/-! ## A327297.P10694844454193983346

`filter[A003656(n+1), A215480(#)]`
-/

namespace A327297.P10694844454193983346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A327297.P10694844454193983346

/-! ## A327297.P14620184616525895229

`filter[A003656(n+1), A359605(#)]`
-/

namespace A327297.P14620184616525895229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359605 (f1 j).toNat = 1) n)

end

end A327297.P14620184616525895229

/-! ## A327297.P2529849542442748666

`filter[A003656(n+1), A359768(#)]`
-/

namespace A327297.P2529849542442748666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A327297.P2529849542442748666

/-! ## A327297.P15488281295103084569

`filter[A003656(n+1), A359787(#)]`
-/

namespace A327297.P15488281295103084569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359787 (f1 j).toNat = 1) n)

end

end A327297.P15488281295103084569

/-! ## A327297.P18241767203452165219

`filter[A003656(n+3), A005171(#)]`
-/

namespace A327297.P18241767203452165219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A327297.P18241767203452165219

/-! ## A327297.P15684383156329726637

`filter[A003656(n+3), A066247(#)]`
-/

namespace A327297.P15684383156329726637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A327297.P15684383156329726637

/-!
# A327298: a(n) = floor(3*n*Pi) - 3*floor(n*Pi).

The programs for A327298, the canonical program `A327298.P9486742576202580979` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327298 has offset 0).

The definition of A327298 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*n*π)-3*floor(n*π)` (program `A327298.P9486742576202580979`, by `A327298.P9486742576202580979.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A327298.P9486742576202580979

`floor(3*n*π)-3*floor(n*π)`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A327298

/-- `floor(3*n*π)-3*floor(n*π)` -/
def P9486742576202580979.Spec : Prop :=
  ∀ n, P9486742576202580979.a n = A327298 n

theorem P9486742576202580979.correct : P9486742576202580979.Spec := by
  intro n
  simp only [A327298]

end A327298

/-!
# A327299: Positions of 0's in {A327298(n) : n > 0}.

The programs for A327299, the canonical program `A327299.P1872034155580248125` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327299 has offset 1).

The definition of A327299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327299.P1872034155580248125

`lt[n*A327298(n), n]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327299

/-- `lt[n*A327298(n), n]` -/
def P1872034155580248125.Spec : Prop :=
  ∀ n, (P1872034155580248125.a n : ℤ) = A327299 (n + 1)

theorem P1872034155580248125.correct : P1872034155580248125.Spec := by
  intro n
  simp only [A327299, Nat.add_sub_cancel]

end A327299

/-! ## A327299.P5892679549190060658

`eq[n*A327298(n), A000007(n)]`
-/

namespace A327299.P5892679549190060658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327299.P5892679549190060658

namespace A327299

/-- `eq[n*A327298(n), A000007(n)]` -/
def P5892679549190060658.Spec : Prop :=
  ∀ n, (P5892679549190060658.a n : ℤ) = A327299 (n + 1)

end A327299

/-! ## A327299.P13438276856300360728

`eq[A327298(n)/A017329(n), A000007(n)]`
-/

namespace A327299.P13438276856300360728
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327298 n : ℚ) / (A017329 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A327299.P13438276856300360728

namespace A327299

/-- `eq[A327298(n)/A017329(n), A000007(n)]` -/
def P13438276856300360728.Spec : Prop :=
  ∀ n, (P13438276856300360728.a n : ℤ) = A327299 (n + 1)

end A327299

/-! ## A327299.P8493705244626312760

`eq[A327298(n)/A025475(n+1), A000007(n)]`
-/

namespace A327299.P8493705244626312760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327298 n : ℚ) / (A025475 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A327299.P8493705244626312760

namespace A327299

/-- `eq[A327298(n)/A025475(n+1), A000007(n)]` -/
def P8493705244626312760.Spec : Prop :=
  ∀ n, (P8493705244626312760.a n : ℤ) = A327299 (n + 1)

end A327299

/-! ## A327299.P8080535758738366868

`eq[A327298(n)/A214092(n+1), A000007(n)]`
-/

namespace A327299.P8080535758738366868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327298 n : ℚ) / (A214092 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A327299.P8080535758738366868

namespace A327299

/-- `eq[A327298(n)/A214092(n+1), A000007(n)]` -/
def P8080535758738366868.Spec : Prop :=
  ∀ n, (P8080535758738366868.a n : ℤ) = A327299 (n + 1)

end A327299

/-! ## A327299.P2445331937164479730

`eq[A327298(n)/A325320(n+1), A000007(n)]`
-/

namespace A327299.P2445331937164479730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327298 n : ℚ) / (A325320 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A327299.P2445331937164479730

namespace A327299

/-- `eq[A327298(n)/A325320(n+1), A000007(n)]` -/
def P2445331937164479730.Spec : Prop :=
  ∀ n, (P2445331937164479730.a n : ℤ) = A327299 (n + 1)

end A327299

/-! ## A327299.P7031430217535962814

`eq[1, A327298(n)+A014963(A168101(n))]`
-/

namespace A327299.P7031430217535962814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n + A014963 (A168101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327299.P7031430217535962814

namespace A327299

/-- `eq[1, A327298(n)+A014963(A168101(n))]` -/
def P7031430217535962814.Spec : Prop :=
  ∀ n, (P7031430217535962814.a n : ℤ) = A327299 (n + 1)

end A327299

/-! ## A327299.P16621939290630826578

`eq[A209614(n+1), A327298(n)]`
-/

namespace A327299.P16621939290630826578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327299.P16621939290630826578

namespace A327299

/-- `eq[A209614(n+1), A327298(n)]` -/
def P16621939290630826578.Spec : Prop :=
  ∀ n, (P16621939290630826578.a n : ℤ) = A327299 (n + 1)

end A327299

/-! ## A327299.P13146152313050581526

`eq[A296688(n+1)*A327298(n), A015626(n)]`
-/

namespace A327299.P13146152313050581526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296688 (n + 1) * A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015626 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327299.P13146152313050581526

namespace A327299

/-- `eq[A296688(n+1)*A327298(n), A015626(n)]` -/
def P13146152313050581526.Spec : Prop :=
  ∀ n, (P13146152313050581526.a n : ℤ) = A327299 (n + 1)

end A327299

/-! ## A327299.P17317357057110307431

`eq[A000122(A153975(n+1)), A327298(n)]`
-/

namespace A327299.P17317357057110307431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A153975 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327299.P17317357057110307431

namespace A327299

/-- `eq[A000122(A153975(n+1)), A327298(n)]` -/
def P17317357057110307431.Spec : Prop :=
  ∀ n, (P17317357057110307431.a n : ℤ) = A327299 (n + 1)

end A327299

