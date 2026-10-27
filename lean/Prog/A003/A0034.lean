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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
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
import Seq.B009.C000
import Seq.B010.C000
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
# A003400: Number of asymmetric (not necessarily connected) graphs with n nodes.

The programs for A003400, there is no canonical definition to state claims against.
-/

/-! ## A003400.P5065239545091177088

`A124059(n+1)+A275867(n+1)`
-/

namespace A003400.P5065239545091177088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124059 (n + 1) + A275867 (n + 1)

end

end A003400.P5065239545091177088

/-! ## A003400.P15948673291782851574

`A330343(n+1)/(n+1)!`
-/

namespace A003400.P15948673291782851574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330343 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A003400.P15948673291782851574

/-! ## A003400.P2954351222722336689

`A330343(n+1)/∏[A077168(n)]`
-/

namespace A003400.P2954351222722336689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330343 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A003400.P2954351222722336689

/-! ## A003400.P11769817871479729421

`A330343(n+1)/record[A084938(n)]`
-/

namespace A003400.P11769817871479729421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330343 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A003400.P11769817871479729421

/-! ## A003400.P5991669854228003934

`A330343(n+1)/record[A093659(n)]`
-/

namespace A003400.P5991669854228003934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330343 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A003400.P5991669854228003934

/-!
# A003401: Numbers of edges of regular polygons constructible with ruler (or, more precisely, an unmarked straightedge) and compass.

The programs for A003401, there is no canonical definition to state claims against.
-/

/-! ## A003401.P13607356008036071554

`record[ceil(A058213(n)/2)]`
-/

namespace A003401.P13607356008036071554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A058213 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003401.P13607356008036071554

/-! ## A003401.P12102180604329245700

`record[round(A058213(n)/2)]^A000038(n)!`
-/

namespace A003401.P12102180604329245700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058213 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ Nat.factorial (A000038 n).toNat

end

end A003401.P12102180604329245700

/-! ## A003401.P7437625482449935020

`A000007(n+1)+record[round(A058213(n)/2)]`
-/

namespace A003401.P7437625482449935020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058213 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003401.P7437625482449935020

/-! ## A003401.P12760785257706995839

`A000038(n+1)+record[round(A058213(n)/2)]`
-/

namespace A003401.P12760785257706995839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058213 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003401.P12760785257706995839

/-! ## A003401.P14087930898668222441

`record[round(A058213(n)/2)]*A057427(n+1)`
-/

namespace A003401.P14087930898668222441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058213 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A057427 (n + 1)

end

end A003401.P14087930898668222441

/-! ## A003401.P9912653727174265570

`A309873(n+1)²*record[round(A058213(n)/2)]`
-/

namespace A003401.P9912653727174265570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058213 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003401.P9912653727174265570

/-! ## A003401.P4003497953776837151

`(A157142(n)%2)²*record[round(A058213(n)/2)]`
-/

namespace A003401.P4003497953776837151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058213 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157142 n) 2 ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003401.P4003497953776837151

/-! ## A003401.P461446998772699572

`(A000005(n+1)%2)!*record[round(A058213(n)/2)]`
-/

namespace A003401.P461446998772699572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058213 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000005 (n + 1)) 2).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003401.P461446998772699572

/-! ## A003401.P7859630336515455214

`∩[A143513(n+1), A339879(n+1)]`
-/

namespace A003401.P7859630336515455214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003401.P7859630336515455214

/-! ## A003401.P12506310919128374514

`filter[A122254(n+1), A336477(#)]`
-/

namespace A003401.P12506310919128374514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A003401.P12506310919128374514

/-! ## A003401.P7225769339156620312

`filter[A122260(n+1), A336477(#)]`
-/

namespace A003401.P7225769339156620312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A003401.P7225769339156620312

/-! ## A003401.P7146382171823007767

`filter[A143513(n+1), A336477(#)]`
-/

namespace A003401.P7146382171823007767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A003401.P7146382171823007767

/-! ## A003401.P7100025140917267911

`filter[A143513(n+1), A353627(#)]`
-/

namespace A003401.P7100025140917267911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A003401.P7100025140917267911

/-! ## A003401.P1823057215760116460

`filter[A161604(n+1), A336477(#)]`
-/

namespace A003401.P1823057215760116460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A003401.P1823057215760116460

/-! ## A003401.P8744956340398698548

`filter[A164707(n+1), A336477(#)]`
-/

namespace A003401.P8744956340398698548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A003401.P8744956340398698548

/-! ## A003401.P12975392352181944472

`filter[A331206(n+1), A336477(#)]`
-/

namespace A003401.P12975392352181944472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A003401.P12975392352181944472

/-! ## A003401.P4776362795052940832

`filter[A339879(n+1), A336477(#)]`
-/

namespace A003401.P4776362795052940832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A003401.P4776362795052940832

/-! ## A003401.P12457312381039087997

`filter[A396553(n+1), A336477(#)]`
-/

namespace A003401.P12457312381039087997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A003401.P12457312381039087997

/-!
# A003402: G.f.: 1/((1-x)*(1-x^2)*(1-x^3)^2*(1-x^4)*(1-x^5)).

The programs for A003402, the canonical program `A003402.P1085761914811690435` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003402 has offset 0).

The definition of A003402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003402.P1085761914811690435

`A001401(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003402

/-- `A001401(n)+a(n-3)` -/
def P1085761914811690435.Spec : Prop :=
  ∀ n, P1085761914811690435.a n = A003402 n

theorem P1085761914811690435.correct : P1085761914811690435.Spec := by
  intro n
  simp only [A003402]

end A003402

/-! ## A003402.P17981361139068529358

`∑[A008667(n)+a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A003402.P17981361139068529358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  A008667 n + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003402.P17981361139068529358

namespace A003402

/-- `∑[A008667(n)+a(n-3)]` -/
def P17981361139068529358.Spec : Prop :=
  ∀ n, P17981361139068529358.a n = A003402 n

end A003402

/-! ## A003402.P629728998479534830

`∑[2*A037145(n)-A029171(n)]`
-/

namespace A003402.P629728998479534830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037145 n - A029171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003402.P629728998479534830

namespace A003402

/-- `∑[2*A037145(n)-A029171(n)]` -/
def P629728998479534830.Spec : Prop :=
  ∀ n, P629728998479534830.a n = A003402 n

end A003402

/-! ## A003402.P1932539836494030432

`A001402(n)+A396144(n)+A395257(n)`
-/

namespace A003402.P1932539836494030432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n + (A396144 n + A395257 n)

end

end A003402.P1932539836494030432

namespace A003402

/-- `A001402(n)+A396144(n)+A395257(n)` -/
def P1932539836494030432.Spec : Prop :=
  ∀ n, P1932539836494030432.a n = A003402 n

end A003402

/-! ## A003402.P14436088917127815938

`A026812(n+3)+A001402(n)`
-/

namespace A003402.P14436088917127815938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 3) + A001402 n

end

end A003402.P14436088917127815938

namespace A003402

/-- `A026812(n+3)+A001402(n)` -/
def P14436088917127815938.Spec : Prop :=
  ∀ n, P14436088917127815938.a n = A003402 n

end A003402

/-! ## A003402.P8351442260322293418

`A026812(n+3)+A026812(n+6)`
-/

namespace A003402.P8351442260322293418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 3) + A026812 (n + 6)

end

end A003402.P8351442260322293418

namespace A003402

/-- `A026812(n+3)+A026812(n+6)` -/
def P8351442260322293418.Spec : Prop :=
  ∀ n, P8351442260322293418.a n = A003402 n

end A003402

/-! ## A003402.P1093361013557617760

`record[A266768(n+1)]+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A003402.P1093361013557617760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 3)

end

end A003402.P1093361013557617760

namespace A003402

/-- `record[A266768(n+1)]+a(n-3)` -/
def P1093361013557617760.Spec : Prop :=
  ∀ n, P1093361013557617760.a n = A003402 n

end A003402

/-! ## A003402.P12211617709733735070

`A029320(2*n)+∑[∑[A029320(2*n+1)]]`
-/

namespace A003402.P12211617709733735070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029320 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029320 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003402.P12211617709733735070

namespace A003402

/-- `A029320(2*n)+∑[∑[A029320(2*n+1)]]` -/
def P12211617709733735070.Spec : Prop :=
  ∀ n, P12211617709733735070.a n = A003402 n

end A003402

/-! ## A003402.P9718207016235404586

`∑[A029386(2*n)+∑[A029386(2*n+1)]]`
-/

namespace A003402.P9718207016235404586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003402.P9718207016235404586

namespace A003402

/-- `∑[A029386(2*n)+∑[A029386(2*n+1)]]` -/
def P9718207016235404586.Spec : Prop :=
  ∀ n, P9718207016235404586.a n = A003402 n

end A003402

/-! ## A003402.P3731002896293734503

`A001401(n)+A001993(n)-A001994(n)`
-/

namespace A003402.P3731002896293734503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n + (A001993 n - A001994 n)

end

end A003402.P3731002896293734503

namespace A003402

/-- `A001401(n)+A001993(n)-A001994(n)` -/
def P3731002896293734503.Spec : Prop :=
  ∀ n, P3731002896293734503.a n = A003402 n

end A003402

/-! ## A003402.P17885072886151720902

`A001993(n+3)-A001994(n+3)`
-/

namespace A003402.P17885072886151720902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001993 (n + 3) - A001994 (n + 3)

end

end A003402.P17885072886151720902

namespace A003402

/-- `A001993(n+3)-A001994(n+3)` -/
def P17885072886151720902.Spec : Prop :=
  ∀ n, P17885072886151720902.a n = A003402 n

end A003402

/-!
# A003403: G.f.: (1 + x^3 + x^4 + ... + x^12 + x^15)/Product_{i=1..10} (1 - x^i).

The programs for A003403, there is no canonical definition to state claims against.
-/

/-! ## A003403.P7969316755303311025

`A100617(A277974(n)+1)`
-/

namespace A003403.P7969316755303311025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A277974 n + 1).toNat

end

end A003403.P7969316755303311025

/-! ## A003403.P5662031751282336978

`A100617(or(1, A277974(n)))`
-/

namespace A003403.P5662031751282336978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (Int.lor 1 (A277974 n)).toNat

end

end A003403.P5662031751282336978

/-! ## A003403.P17582618071992194779

`∑[A325343(n+1)%A345687(3*(n+1))]`
-/

namespace A003403.P17582618071992194779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325343 (n + 1)) (A345687 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003403.P17582618071992194779

/-! ## A003403.P2859882161195094988

`A000194(A005117(n+1)*A243085(n))`
-/

namespace A003403.P2859882161195094988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A005117 (n + 1) * A243085 n).toNat

end

end A003403.P2859882161195094988

/-! ## A003403.P7959468951700997543

`A085501(A105865(n))`
-/

namespace A003403.P7959468951700997543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085501 (A105865 n).toNat

end

end A003403.P7959468951700997543

/-!
# A003404: Number of solid partitions of n supported on graph of cube.

The programs for A003404, there is no canonical definition to state claims against.
-/

/-! ## A003404.P6981729249112379388

`A320829(A070559(n)-1)`
-/

namespace A003404.P6981729249112379388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320829 (A070559 n - 1).toNat

end

end A003404.P6981729249112379388

/-! ## A003404.P12200147665427272579

`A320829(A320788(n+3)-1)`
-/

namespace A003404.P12200147665427272579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320829 (A320788 (n + 3) - 1).toNat

end

end A003404.P12200147665427272579

/-! ## A003404.P13456850369798216474

`A027633(n)+A003056(A001788(n))`
-/

namespace A003404.P13456850369798216474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027633 n + A003056 (A001788 n).toNat

end

end A003404.P13456850369798216474

/-!
# A003405: G.f.: (1 + x^4 + x^7 + 2*x^8 + x^9 + x^12 + x^16)/Product_{i=1..8} (1 - x^i).

The programs for A003405, there is no canonical definition to state claims against.
-/

/-! ## A003405.P5690965504580903758

`A390364(A085642(n+2))`
-/

namespace A003405.P5690965504580903758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390364 (A085642 (n + 2)).toNat

end

end A003405.P5690965504580903758

/-! ## A003405.P6032309273038516454

`A133137(A004101(n))`
-/

namespace A003405.P6032309273038516454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A004101 n).toNat

end

end A003405.P6032309273038516454

/-! ## A003405.P5790647593666214245

`A102800(A285472(n))`
-/

namespace A003405.P5790647593666214245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A285472 n).toNat

end

end A003405.P5790647593666214245

/-! ## A003405.P2467363412985091049

`∑[A240574(A068634(n+1))]`
-/

namespace A003405.P2467363412985091049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240574 (A068634 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003405.P2467363412985091049

/-! ## A003405.P2834424513078544027

`∑[A240574(A239218(n+1))]`
-/

namespace A003405.P2834424513078544027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240574 (A239218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003405.P2834424513078544027

/-!
# A003407: Number of permutations of [n] with no 3-term arithmetic progression.

The programs for A003407, there is no canonical definition to state claims against.
-/

/-! ## A003407.P4154232840396493600

`A339941(∑[abs(1-(char[2]+n))])`
-/

namespace A003407.P4154232840396493600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339941 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003407.P4154232840396493600

/-! ## A003407.P8289502018576075500

`A283877(n)+A160127(A000992(n+1))`
-/

namespace A003407.P8289502018576075500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283877 n + A160127 (A000992 (n + 1)).toNat

end

end A003407.P8289502018576075500

/-! ## A003407.P12335060762268278213

`A336488(A026643(n))`
-/

namespace A003407.P12335060762268278213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336488 (A026643 n).toNat

end

end A003407.P12335060762268278213

/-! ## A003407.P16144041567507983580

`A372971(A149753(n))`
-/

namespace A003407.P16144041567507983580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372971 (A149753 n).toNat

end

end A003407.P16144041567507983580

/-!
# A003408: a(n) = binomial(3n+6, n).

The programs for A003408, the canonical program `A003408.P11729543111417487810` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003408 has offset 0).

The definition of A003408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*n+6, n)` (program `A003408.P11729543111417487810`, by `A003408.P11729543111417487810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003408.P6965031708562706132

`A013698(n+1)*3*(n+2)/(2*(n+3))`
-/

namespace A003408.P6965031708562706132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013698 (n + 1) * 3 * (n + 2 : ℤ) : ℚ) / (2 * (n + 3) : ℚ)

end

end A003408.P6965031708562706132

namespace A003408

/-- `A013698(n+1)*3*(n+2)/(2*(n+3))` -/
def P6965031708562706132.Spec : Prop :=
  ∀ n, P6965031708562706132.a n = (A003408 n : ℚ)

end A003408

/-! ## A003408.P11729543111417487810

`C(3*n+6, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003408

/-- `C(3*n+6, n)` -/
def P11729543111417487810.Spec : Prop :=
  ∀ n, (P11729543111417487810.a n : ℤ) = A003408 n

theorem P11729543111417487810.correct : P11729543111417487810.Spec := by
  intro n
  simp only [A003408]

end A003408

/-! ## A003408.P4145065221052689292

`A236194(n+2)-A004319(n+2)`
-/

namespace A003408.P4145065221052689292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236194 (n + 2) - A004319 (n + 2)

end

end A003408.P4145065221052689292

namespace A003408

/-- `A236194(n+2)-A004319(n+2)` -/
def P4145065221052689292.Spec : Prop :=
  ∀ n, P4145065221052689292.a n = A003408 n

end A003408

/-! ## A003408.P1928852667462190505

`A274969(n+2)-A001764(n+2)`
-/

namespace A003408.P1928852667462190505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274969 (n + 2) - A001764 (n + 2)

end

end A003408.P1928852667462190505

namespace A003408

/-- `A274969(n+2)-A001764(n+2)` -/
def P1928852667462190505.Spec : Prop :=
  ∀ n, P1928852667462190505.a n = A003408 n

end A003408

/-! ## A003408.P11820976402057515113

`A236194(n+2)-A127040(2*n+3)`
-/

namespace A003408.P11820976402057515113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236194 (n + 2) - A127040 (2 * n + 3)

end

end A003408.P11820976402057515113

namespace A003408

/-- `A236194(n+2)-A127040(2*n+3)` -/
def P11820976402057515113.Spec : Prop :=
  ∀ n, P11820976402057515113.a n = A003408 n

end A003408

/-! ## A003408.P12285930113979252490

`A119301(A167614(n+2))`
-/

namespace A003408.P12285930113979252490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 (A167614 (n + 2)).toNat

end

end A003408.P12285930113979252490

namespace A003408

/-- `A119301(A167614(n+2))` -/
def P12285930113979252490.Spec : Prop :=
  ∀ n, P12285930113979252490.a n = A003408 n

end A003408

/-! ## A003408.P8823882570522735797

`A264772(A000096(n+5)+7)`
-/

namespace A003408.P8823882570522735797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (A000096 (n + 5) + 7).toNat

end

end A003408.P8823882570522735797

namespace A003408

/-- `A264772(A000096(n+5)+7)` -/
def P8823882570522735797.Spec : Prop :=
  ∀ n, P8823882570522735797.a n = A003408 n

end A003408

/-! ## A003408.P5164376262384768872

`A173020(∑[n+2])`
-/

namespace A003408.P5164376262384768872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003408.P5164376262384768872

namespace A003408

/-- `A173020(∑[n+2])` -/
def P5164376262384768872.Spec : Prop :=
  ∀ n, P5164376262384768872.a n = A003408 n

end A003408

/-! ## A003408.P5663601467248875706

`A089434(∑[n+1]+3)`
-/

namespace A003408.P5663601467248875706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089434 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A003408.P5663601467248875706

namespace A003408

/-- `A089434(∑[n+1]+3)` -/
def P5663601467248875706.Spec : Prop :=
  ∀ n, P5663601467248875706.a n = A003408 n

end A003408

/-! ## A003408.P15996457467651325750

`A116089((n+1)²+(n+2)²)`
-/

namespace A003408.P15996457467651325750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116089 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A003408.P15996457467651325750

namespace A003408

/-- `A116089((n+1)²+(n+2)²)` -/
def P15996457467651325750.Spec : Prop :=
  ∀ n, P15996457467651325750.a n = A003408 n

end A003408

/-!
# A003409: a(n) = 3*binomial(2n-1,n).

The programs for A003409, the canonical program `A003409.P14280900282895762854` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003409 has offset 1).

The definition of A003409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*C(2*(n+1)-1, n+1)` (program `A003409.P14280900282895762854`, by `A003409.P14280900282895762854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003409.P14280900282895762854

`3*C(2*(n+1)-1, n+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003409

/-- `3*C(2*(n+1)-1, n+1)` -/
def P14280900282895762854.Spec : Prop :=
  ∀ n, (P14280900282895762854.a n : ℤ) = A003409 (n + 1)

theorem P14280900282895762854.correct : P14280900282895762854.Spec := by
  intro n
  simp only [A003409, Nat.add_sub_cancel]

end A003409

/-! ## A003409.P286411520793591800

`3*∏[4-2/(n+1)]/2`
-/

namespace A003409.P286411520793591800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((∏ j ∈ Finset.range (n + 1), f1 j) / 2)

end

end A003409.P286411520793591800

namespace A003409

/-- `3*∏[4-2/(n+1)]/2` -/
def P286411520793591800.Spec : Prop :=
  ∀ n, P286411520793591800.a n = (A003409 (n + 1) : ℚ)

end A003409

/-! ## A003409.P12766581848957417042

`floor((4-n/∑[n])*a(n-1))` with `a(0)=3`
-/

namespace A003409.P12766581848957417042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * (a (n - 1) : ℚ)⌋

end

end A003409.P12766581848957417042

namespace A003409

/-- `floor((4-n/∑[n])*a(n-1))` -/
def P12766581848957417042.Spec : Prop :=
  ∀ n, P12766581848957417042.a n = A003409 (n + 1)

end A003409

/-! ## A003409.P148550647501897202

`ceil((4-n/∑[n])*a(n-1))` with `a(0)=3`
-/

namespace A003409.P148550647501897202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈(4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * (a (n - 1) : ℚ)⌉

end

end A003409.P148550647501897202

namespace A003409

/-- `ceil((4-n/∑[n])*a(n-1))` -/
def P148550647501897202.Spec : Prop :=
  ∀ n, P148550647501897202.a n = A003409 (n + 1)

end A003409

/-! ## A003409.P15565791483576525246

`round((4-n/∑[n])*a(n-1))` with `a(0)=3`
-/

namespace A003409.P15565791483576525246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway ((4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * (a (n - 1) : ℚ))

end

end A003409.P15565791483576525246

namespace A003409

/-- `round((4-n/∑[n])*a(n-1))` -/
def P15565791483576525246.Spec : Prop :=
  ∀ n, P15565791483576525246.a n = A003409 (n + 1)

end A003409

/-! ## A003409.P4101036808146702438

`record[(4-4/n)*a(n-2)]` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A003409.P4101036808146702438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 0, 3] fun n f1 =>
  (4 - 4 / (n : ℚ)) * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003409.P4101036808146702438

namespace A003409

/-- `record[(4-4/n)*a(n-2)]` -/
def P4101036808146702438.Spec : Prop :=
  ∀ n, P4101036808146702438.a n = (A003409 (n + 1) : ℚ)

end A003409

/-! ## A003409.P7886883470705207229

`lcm(3, (4-n/∑[n])*a(n-1))` with `a(0)=3`
-/

namespace A003409.P7886883470705207229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm 3 (SequenceMachineLib.roundAway ((4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * (a (n - 1) : ℚ)))

end

end A003409.P7886883470705207229

namespace A003409

/-- `lcm(3, (4-n/∑[n])*a(n-1))` -/
def P7886883470705207229.Spec : Prop :=
  ∀ n, (P7886883470705207229.a n : ℤ) = A003409 (n + 1)

end A003409

/-! ## A003409.P2196997163524277971

`abs((2-1/(n+1))*2*a(n-1))` with `a(0)=3`
-/

namespace A003409.P2196997163524277971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  |(2 - 1 / (n + 1 : ℚ)) * (2 * a (n - 1))|

end

end A003409.P2196997163524277971

namespace A003409

/-- `abs((2-1/(n+1))*2*a(n-1))` -/
def P2196997163524277971.Spec : Prop :=
  ∀ n, P2196997163524277971.a n = (A003409 (n + 1) : ℚ)

end A003409

/-! ## A003409.P10349444838309135464

`floor((2-1/(n+1))*2*a(n-1))` with `a(0)=3`
-/

namespace A003409.P10349444838309135464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(2 - 1 / (n + 1 : ℚ)) * (2 * a (n - 1) : ℚ)⌋

end

end A003409.P10349444838309135464

namespace A003409

/-- `floor((2-1/(n+1))*2*a(n-1))` -/
def P10349444838309135464.Spec : Prop :=
  ∀ n, P10349444838309135464.a n = A003409 (n + 1)

end A003409

/-! ## A003409.P15133246526418204013

`record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=3, a(1)=3`
-/

namespace A003409.P15133246526418204013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003409.P15133246526418204013

namespace A003409

/-- `record[a(n-1)/(floor(n/2)/n-1)]` -/
def P15133246526418204013.Spec : Prop :=
  ∀ n, P15133246526418204013.a n = (A003409 (n + 1) : ℚ)

end A003409

/-! ## A003409.P6969464085509412203

`a(n-1)+(3-2/(n+1))*a(n-1)` with `a(0)=3`
-/

namespace A003409.P6969464085509412203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (3 - 2 / (n + 1 : ℚ)) * a (n - 1)

end

end A003409.P6969464085509412203

namespace A003409

/-- `a(n-1)+(3-2/(n+1))*a(n-1)` -/
def P6969464085509412203.Spec : Prop :=
  ∀ n, P6969464085509412203.a n = (A003409 (n + 1) : ℚ)

end A003409

/-! ## A003409.P14492121430704816107

`A029651(n+1)`
-/

namespace A003409.P14492121430704816107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 (n + 1)

end

end A003409.P14492121430704816107

namespace A003409

/-- `A029651(n+1)` -/
def P14492121430704816107.Spec : Prop :=
  ∀ n, P14492121430704816107.a n = A003409 (n + 1)

end A003409

/-! ## A003409.P16813578950540180744

`record[3*A057977(n)]`
-/

namespace A003409.P16813578950540180744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A057977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003409.P16813578950540180744

namespace A003409

/-- `record[3*A057977(n)]` -/
def P16813578950540180744.Spec : Prop :=
  ∀ n, P16813578950540180744.a n = A003409 (n + 1)

end A003409

/-! ## A003409.P13419740671169907525

`A370487(n+1)+2`
-/

namespace A003409.P13419740671169907525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370487 (n + 1) + 2

end

end A003409.P13419740671169907525

namespace A003409

/-- `A370487(n+1)+2` -/
def P13419740671169907525.Spec : Prop :=
  ∀ n, P13419740671169907525.a n = A003409 (n + 1)

end A003409

/-! ## A003409.P3863314360948893523

`A050168(2*(n+1))`
-/

namespace A003409.P3863314360948893523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (2 * (n + 1))

end

end A003409.P3863314360948893523

namespace A003409

/-- `A050168(2*(n+1))` -/
def P3863314360948893523.Spec : Prop :=
  ∀ n, P3863314360948893523.a n = A003409 (n + 1)

end A003409

/-! ## A003409.P2619892412195320287

`A200770(3*n+2)`
-/

namespace A003409.P2619892412195320287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200770 (3 * n + 2)

end

end A003409.P2619892412195320287

namespace A003409

/-- `A200770(3*n+2)` -/
def P2619892412195320287.Spec : Prop :=
  ∀ n, P2619892412195320287.a n = A003409 (n + 1)

end A003409

/-! ## A003409.P6177909541296234166

`A208976(Δ[n²])+1`
-/

namespace A003409.P6177909541296234166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A003409.P6177909541296234166

namespace A003409

/-- `A208976(Δ[n²])+1` -/
def P6177909541296234166.Spec : Prop :=
  ∀ n, P6177909541296234166.a n = A003409 (n + 1)

end A003409

/-! ## A003409.P1511041491326214799

`record[A029651(abs(1-n))]`
-/

namespace A003409.P1511041491326214799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003409.P1511041491326214799

namespace A003409

/-- `record[A029651(abs(1-n))]` -/
def P1511041491326214799.Spec : Prop :=
  ∀ n, P1511041491326214799.a n = A003409 (n + 1)

end A003409

/-! ## A003409.P11023832127071147873

`record[Δ[A126930(n+1)]]`
-/

namespace A003409.P11023832127071147873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003409.P11023832127071147873

namespace A003409

/-- `record[Δ[A126930(n+1)]]` -/
def P11023832127071147873.Spec : Prop :=
  ∀ n, P11023832127071147873.a n = A003409 (n + 1)

end A003409

/-! ## A003409.P5276700955327331852

`∏[A004277(n)/(n+1)+2]`
-/

namespace A003409.P5276700955327331852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n : ℚ) / (n + 1 : ℚ) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003409.P5276700955327331852

namespace A003409

/-- `∏[A004277(n)/(n+1)+2]` -/
def P5276700955327331852.Spec : Prop :=
  ∀ n, P5276700955327331852.a n = (A003409 (n + 1) : ℚ)

end A003409

/-!
# A003410: Expansion of (1+x)(1+x^2)/(1-x-x^3).

The programs for A003410, the canonical program `A003410.P14524727469238702388` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003410 has offset 0).

The definition of A003410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2+x^3)/(1-x-x^3))` (program `A003410.P14524727469238702388`, by `A003410.P14524727469238702388.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003410.P14524727469238702388

`ogf((1+x+x^2+x^3)/(1-x-x^3))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003410

/-- `ogf((1+x+x^2+x^3)/(1-x-x^3))` -/
def P14524727469238702388.Spec : Prop :=
  ∀ n, P14524727469238702388.a n = A003410 n

theorem P14524727469238702388.correct : P14524727469238702388.Spec := by
  intro n
  simp only [A003410]

end A003410

/-! ## A003410.P10408026201395431423

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A003410.P10408026201395431423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  a (n - 1) + a (n - 3)

end

end A003410.P10408026201395431423

namespace A003410

/-- `a(n-1)+a(n-3)` -/
def P10408026201395431423.Spec : Prop :=
  ∀ n, (P10408026201395431423.a n : ℤ) = A003410 n

end A003410

/-! ## A003410.P12371153584579458224

`a(n-1)-(a(n-2)%a(n-3)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A003410.P12371153584579458224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 2)) (a (n - 3)) - a (n - 2))

end

end A003410.P12371153584579458224

namespace A003410

/-- `a(n-1)-(a(n-2)%a(n-3)-a(n-2))` -/
def P12371153584579458224.Spec : Prop :=
  ∀ n, P12371153584579458224.a n = A003410 n

end A003410

/-! ## A003410.P18162421715600585260

`record[A058278(n)]`
-/

namespace A003410.P18162421715600585260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003410.P18162421715600585260

namespace A003410

/-- `record[A058278(n)]` -/
def P18162421715600585260.Spec : Prop :=
  ∀ n, P18162421715600585260.a n = A003410 n

end A003410

/-! ## A003410.P9724982297699629

`record[A226916(n+4)]`
-/

namespace A003410.P9724982297699629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003410.P9724982297699629

namespace A003410

/-- `record[A226916(n+4)]` -/
def P9724982297699629.Spec : Prop :=
  ∀ n, P9724982297699629.a n = A003410 n

end A003410

/-! ## A003410.P7989635317388392287

`A097333(n+1)-floor(acot(n))`
-/

namespace A003410.P7989635317388392287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A003410.P7989635317388392287

namespace A003410

/-- `A097333(n+1)-floor(acot(n))` -/
def P7989635317388392287.Spec : Prop :=
  ∀ n, P7989635317388392287.a n = A003410 n

end A003410

/-! ## A003410.P13857228579803453948

`A097333((n+1)%(2*n+1))`
-/

namespace A003410.P13857228579803453948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 ((n + 1) % (2 * n + 1))

end

end A003410.P13857228579803453948

namespace A003410

/-- `A097333((n+1)%(2*n+1))` -/
def P13857228579803453948.Spec : Prop :=
  ∀ n, P13857228579803453948.a n = A003410 n

end A003410

/-! ## A003410.P1227848000346950391

`A058278(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A003410.P1227848000346950391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A058278 (n + 1) + a (n - 1)

end

end A003410.P1227848000346950391

namespace A003410

/-- `A058278(n+1)+a(n-1)` -/
def P1227848000346950391.Spec : Prop :=
  ∀ n, P1227848000346950391.a n = A003410 n

end A003410

/-! ## A003410.P9205599903892996110

`A097333(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A003410.P9205599903892996110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A097333 (n - 2) + a (n - 1)

end

end A003410.P9205599903892996110

namespace A003410

/-- `A097333(n-2)+a(n-1)` -/
def P9205599903892996110.Spec : Prop :=
  ∀ n, P9205599903892996110.a n = A003410 n

end A003410

/-! ## A003410.P15863195061163799365

`A226275(A326178(n))`
-/

namespace A003410.P15863195061163799365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226275 (A326178 n).toNat

end

end A003410.P15863195061163799365

namespace A003410

/-- `A226275(A326178(n))` -/
def P15863195061163799365.Spec : Prop :=
  ∀ n, P15863195061163799365.a n = A003410 n

end A003410

/-! ## A003410.P3919613437777689624

`A058278(A009005(n+1))`
-/

namespace A003410.P3919613437777689624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (A009005 (n + 1)).toNat

end

end A003410.P3919613437777689624

namespace A003410

/-- `A058278(A009005(n+1))` -/
def P3919613437777689624.Spec : Prop :=
  ∀ n, P3919613437777689624.a n = A003410 n

end A003410

/-! ## A003410.P13003625992954423541

`A058278(A074764(n+1))`
-/

namespace A003410.P13003625992954423541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (A074764 (n + 1)).toNat

end

end A003410.P13003625992954423541

namespace A003410

/-- `A058278(A074764(n+1))` -/
def P13003625992954423541.Spec : Prop :=
  ∀ n, P13003625992954423541.a n = A003410 n

end A003410

/-! ## A003410.P7850694399182644000

`A097333(A087156(n+1))`
-/

namespace A003410.P7850694399182644000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (A087156 (n + 1)).toNat

end

end A003410.P7850694399182644000

namespace A003410

/-- `A097333(A087156(n+1))` -/
def P7850694399182644000.Spec : Prop :=
  ∀ n, P7850694399182644000.a n = A003410 n

end A003410

/-! ## A003410.P5804827871492054080

`A097333(A184985(n+1))`
-/

namespace A003410.P5804827871492054080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (A184985 (n + 1)).toNat

end

end A003410.P5804827871492054080

namespace A003410

/-- `A097333(A184985(n+1))` -/
def P5804827871492054080.Spec : Prop :=
  ∀ n, P5804827871492054080.a n = A003410 n

end A003410

/-! ## A003410.P17929538736432186922

`A097333(A199969(n+2))`
-/

namespace A003410.P17929538736432186922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (A199969 (n + 2)).toNat

end

end A003410.P17929538736432186922

namespace A003410

/-- `A097333(A199969(n+2))` -/
def P17929538736432186922.Spec : Prop :=
  ∀ n, P17929538736432186922.a n = A003410 n

end A003410

/-! ## A003410.P5457715941042624929

`A097333(A057427(n)+n)`
-/

namespace A003410.P5457715941042624929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (A057427 n + (n : ℤ)).toNat

end

end A003410.P5457715941042624929

namespace A003410

/-- `A097333(A057427(n)+n)` -/
def P5457715941042624929.Spec : Prop :=
  ∀ n, P5457715941042624929.a n = A003410 n

end A003410

/-! ## A003410.P95593987333979246

`record[gcd(A097333(n), A226275(n))]`
-/

namespace A003410.P95593987333979246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097333 n) (A226275 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003410.P95593987333979246

namespace A003410

/-- `record[gcd(A097333(n), A226275(n))]` -/
def P95593987333979246.Spec : Prop :=
  ∀ n, (P95593987333979246.a n : ℤ) = A003410 n

end A003410

/-! ## A003410.P5456067661127675969

`A057427(n)+A038718(n+1)`
-/

namespace A003410.P5456067661127675969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A038718 (n + 1)

end

end A003410.P5456067661127675969

namespace A003410

/-- `A057427(n)+A038718(n+1)` -/
def P5456067661127675969.Spec : Prop :=
  ∀ n, P5456067661127675969.a n = A003410 n

end A003410

/-! ## A003410.P5359710301181182166

`A038718(n+1)-A057428(n)`
-/

namespace A003410.P5359710301181182166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038718 (n + 1) - A057428 n

end

end A003410.P5359710301181182166

namespace A003410

/-- `A038718(n+1)-A057428(n)` -/
def P5359710301181182166.Spec : Prop :=
  ∀ n, P5359710301181182166.a n = A003410 n

end A003410

/-! ## A003410.P11923795691540129626

`A097333(1-A000007(n)+n)`
-/

namespace A003410.P11923795691540129626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (1 - A000007 n + (n : ℤ)).toNat

end

end A003410.P11923795691540129626

namespace A003410

/-- `A097333(1-A000007(n)+n)` -/
def P11923795691540129626.Spec : Prop :=
  ∀ n, P11923795691540129626.a n = A003410 n

end A003410

/-!
# A003411: Losing initial positions in game: two players alternate in removing >= 1 stones; last player wins; first player may not remove all stones; each move <= 3 times previous move.

The programs for A003411, the canonical program `A003411.P8090656511001667154` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003411 has offset 0).

The definition of A003411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003411.P8090656511001667154

`a(n-1)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003411

/-- `a(n-1)+a(n-4)` -/
def P8090656511001667154.Spec : Prop :=
  ∀ n, (P8090656511001667154.a n : ℤ) = A003411 n

theorem P8090656511001667154.correct : P8090656511001667154.Spec := by
  intro n
  simp only [A003411]

end A003411

/-! ## A003411.P15299717326049907600

`record[A103632(n)]`
-/

namespace A003411.P15299717326049907600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003411.P15299717326049907600

namespace A003411

/-- `record[A103632(n)]` -/
def P15299717326049907600.Spec : Prop :=
  ∀ n, P15299717326049907600.a n = A003411 n

end A003411

/-! ## A003411.P17138413180115392704

`record[A226517(n+6)]`
-/

namespace A003411.P17138413180115392704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003411.P17138413180115392704

namespace A003411

/-- `record[A226517(n+6)]` -/
def P17138413180115392704.Spec : Prop :=
  ∀ n, P17138413180115392704.a n = A003411 n

end A003411

/-! ## A003411.P1489602231564280053

`∑[A103632(char[1]+n)]`
-/

namespace A003411.P1489602231564280053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003411.P1489602231564280053

namespace A003411

/-- `∑[A103632(char[1]+n)]` -/
def P1489602231564280053.Spec : Prop :=
  ∀ n, P1489602231564280053.a n = A003411 n

end A003411

/-! ## A003411.P4568626058320267773

`A103632(A009005(n+1))`
-/

namespace A003411.P4568626058320267773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (A009005 (n + 1)).toNat

end

end A003411.P4568626058320267773

namespace A003411

/-- `A103632(A009005(n+1))` -/
def P4568626058320267773.Spec : Prop :=
  ∀ n, P4568626058320267773.a n = A003411 n

end A003411

/-! ## A003411.P5309134956750865131

`record[A017898(n+2)+A017898(n)]`
-/

namespace A003411.P5309134956750865131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 2) + A017898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003411.P5309134956750865131

namespace A003411

/-- `record[A017898(n+2)+A017898(n)]` -/
def P5309134956750865131.Spec : Prop :=
  ∀ n, P5309134956750865131.a n = A003411 n

end A003411

/-! ## A003411.P16608421361582322235

`A103632(A163300(n+1)+2-n)`
-/

namespace A003411.P16608421361582322235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (A163300 (n + 1) + (2 - (n : ℤ))).toNat

end

end A003411.P16608421361582322235

namespace A003411

/-- `A103632(A163300(n+1)+2-n)` -/
def P16608421361582322235.Spec : Prop :=
  ∀ n, P16608421361582322235.a n = A003411 n

end A003411

/-! ## A003411.P2377161426205006265

`Δ[A048590(n)]`
-/

namespace A003411.P2377161426205006265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003411.P2377161426205006265

namespace A003411

/-- `Δ[A048590(n)]` -/
def P2377161426205006265.Spec : Prop :=
  ∀ n, P2377161426205006265.a n = A003411 n

end A003411

/-! ## A003411.P3542288298208750713

`Δ[A048592(n)]`
-/

namespace A003411.P3542288298208750713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003411.P3542288298208750713

namespace A003411

/-- `Δ[A048592(n)]` -/
def P3542288298208750713.Spec : Prop :=
  ∀ n, P3542288298208750713.a n = A003411 n

end A003411

/-! ## A003411.P13948165065789675004

`A048590(n+1)-A048590(n)`
-/

namespace A003411.P13948165065789675004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048590 (n + 1) - A048590 n

end

end A003411.P13948165065789675004

namespace A003411

/-- `A048590(n+1)-A048590(n)` -/
def P13948165065789675004.Spec : Prop :=
  ∀ n, P13948165065789675004.a n = A003411 n

end A003411

/-! ## A003411.P17909873753095695739

`A048592(n+1)-A048592(n)`
-/

namespace A003411.P17909873753095695739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048592 (n + 1) - A048592 n

end

end A003411.P17909873753095695739

namespace A003411

/-- `A048592(n+1)-A048592(n)` -/
def P17909873753095695739.Spec : Prop :=
  ∀ n, P17909873753095695739.a n = A003411 n

end A003411

/-!
# A003412: From a nim-like game.

The programs for A003412, there is no canonical definition to state claims against.
-/

/-! ## A003412.P5988279863140800858

`floor(∑[root(A077622(n+1), 10)])`
-/

namespace A003412.P5988279863140800858
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077622 (n + 1) : ℝ) ^ (1 / (10 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A003412.P5988279863140800858

/-! ## A003412.P8421307790823799499

`A092982(2*(a(n-1)+1))` with `a(0)=1`
-/

namespace A003412.P8421307790823799499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092982 (2 * (a (n - 1) + 1)).toNat

end

end A003412.P8421307790823799499

/-! ## A003412.P3674095064703056570

`A092982(a(n-1)+a(n-1)+2)` with `a(0)=1`
-/

namespace A003412.P3674095064703056570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092982 (a (n - 1) + (a (n - 1) + 2)).toNat

end

end A003412.P3674095064703056570

/-! ## A003412.P839026761812923577

`A056556(A032027(n+1))+n`
-/

namespace A003412.P839026761812923577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A032027 (n + 1)).toNat + (n : ℤ)

end

end A003412.P839026761812923577

/-! ## A003412.P1503542903649901361

`A082527(A193449(n))`
-/

namespace A003412.P1503542903649901361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082527 (A193449 n).toNat

end

end A003412.P1503542903649901361

/-!
# A003413: From a nim-like game.

The programs for A003413, the canonical program `A003413.P5090303596452237598` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003413 has offset 0).

The definition of A003413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003413.P5090303596452237598

`a(n-1)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=7, a(6)=9, a(7)=12`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003413

/-- `a(n-1)+a(n-6)` -/
def P5090303596452237598.Spec : Prop :=
  ∀ n, (P5090303596452237598.a n : ℤ) = A003413 n

theorem P5090303596452237598.correct : P5090303596452237598.Spec := by
  intro n
  simp only [A003413]

end A003413

/-! ## A003413.P8997978694496619668

`record[A005708(n)-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A003413.P8997978694496619668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A005708 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003413.P8997978694496619668

namespace A003413

/-- `record[A005708(n)-a(n-1)]` -/
def P8997978694496619668.Spec : Prop :=
  ∀ n, P8997978694496619668.a n = A003413 n

end A003413

/-! ## A003413.P11287896561262534034

`∑[A110656(A194439(n+1)+n)]`
-/

namespace A003413.P11287896561262534034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A194439 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003413.P11287896561262534034

namespace A003413

/-- `∑[A110656(A194439(n+1)+n)]` -/
def P11287896561262534034.Spec : Prop :=
  ∀ n, P11287896561262534034.a n = A003413 n

end A003413

/-! ## A003413.P10967700695148494787

`∑[A000196(A295540(A018910(n)))]`
-/

namespace A003413.P10967700695148494787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A295540 (A018910 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003413.P10967700695148494787

namespace A003413

/-- `∑[A000196(A295540(A018910(n)))]` -/
def P10967700695148494787.Spec : Prop :=
  ∀ n, P10967700695148494787.a n = A003413 n

end A003413

/-! ## A003413.P12000241245055602210

`A002024(A197056(n+1))`
-/

namespace A003413.P12000241245055602210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A197056 (n + 1)).toNat

end

end A003413.P12000241245055602210

namespace A003413

/-- `A002024(A197056(n+1))` -/
def P12000241245055602210.Spec : Prop :=
  ∀ n, P12000241245055602210.a n = A003413 n

end A003413

/-!
# A003414: a(n) = floor( Bernoulli(2*n)/(-4*n) ).

The programs for A003414, there is no canonical definition to state claims against.
-/

/-! ## A003414.P1475550763084700576

`A003457(n+1)-1`
-/

namespace A003414.P1475550763084700576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003457 (n + 1) - 1

end

end A003414.P1475550763084700576

/-! ## A003414.P15169285922933190521

`A340142(p?[2*n+1])+A003457(n+1)`
-/

namespace A003414.P15169285922933190521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340142 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A003457 (n + 1)

end

end A003414.P15169285922933190521

/-! ## A003414.P12384457182260487680

`A087960(A273330(n))+A003457(n+1)`
-/

namespace A003414.P12384457182260487680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A273330 n).toNat + A003457 (n + 1)

end

end A003414.P12384457182260487680

/-! ## A003414.P18355746395399838415

`A008836(A000705(n+1))+A003457(n+1)`
-/

namespace A003414.P18355746395399838415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000705 (n + 1)).toNat + A003457 (n + 1)

end

end A003414.P18355746395399838415

/-! ## A003414.P7404645150046189886

`A286707(A002260(n+1))+A003457(n+1)`
-/

namespace A003414.P7404645150046189886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286707 (A002260 (n + 1)).toNat + A003457 (n + 1)

end

end A003414.P7404645150046189886

/-! ## A003414.P9482360128449220563

`A087960(A016933(2*n))+A003457(n+1)`
-/

namespace A003414.P9482360128449220563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A016933 (2 * n)).toNat + A003457 (n + 1)

end

end A003414.P9482360128449220563

/-! ## A003414.P13857255388273205769

`A286707(A286707(n+1)+2)+A003457(n+1)`
-/

namespace A003414.P13857255388273205769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286707 (A286707 (n + 1) + 2).toNat + A003457 (n + 1)

end

end A003414.P13857255388273205769

/-!
# A003415: a(n) = n' = arithmetic derivative of n: a(0) = a(1) = 0, a(prime) = 1, a(m*n) = m*a(n) + n*a(m).

The programs for A003415, the canonical program `A003415.P9326043729983995739` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003415 has offset 0).

The definition of A003415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003415.P13415814702317834968

`a(A032742(n))*A020639(n)+A032742(n)` with `a(0)=0, a(1)=0`
-/

namespace A003415.P13415814702317834968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A032742 n).toNat * A020639 n + A032742 n

end

end A003415.P13415814702317834968

namespace A003415

/-- `a(A032742(n))*A020639(n)+A032742(n)` -/
def P13415814702317834968.Spec : Prop :=
  ∀ n, P13415814702317834968.a n = A003415 n

end A003415

/-! ## A003415.P1379186584829372210

`n+A168036(n)`
-/

namespace A003415.P1379186584829372210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A168036 n

end

end A003415.P1379186584829372210

namespace A003415

/-- `n+A168036(n)` -/
def P1379186584829372210.Spec : Prop :=
  ∀ n, P1379186584829372210.a n = A003415 n

end A003415

/-! ## A003415.P5804662137059720313

`A129283(n)-n`
-/

namespace A003415.P5804662137059720313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n - (n : ℤ)

end

end A003415.P5804662137059720313

namespace A003415

/-- `A129283(n)-n` -/
def P5804662137059720313.Spec : Prop :=
  ∀ n, P5804662137059720313.a n = A003415 n

end A003415

/-! ## A003415.P9326043729983995739

`∑{d}[n, A300251(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A003415

/-- `∑{d}[n, A300251(#)]` -/
def P9326043729983995739.Spec : Prop :=
  ∀ n, P9326043729983995739.a n = A003415 n

theorem P9326043729983995739.correct : P9326043729983995739.Spec := by
  intro n
  simp only [A003415]

end A003415

/-! ## A003415.P10878511196761857349

`(n-A369052(n))/2`
-/

namespace A003415.P10878511196761857349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A369052 n : ℚ) / 2

end

end A003415.P10878511196761857349

namespace A003415

/-- `(n-A369052(n))/2` -/
def P10878511196761857349.Spec : Prop :=
  ∀ n, P10878511196761857349.a n = (A003415 n : ℚ)

end A003415

/-! ## A003415.P17636928885489339736

`∑{d}[n, A348976(#)]-n`
-/

namespace A003415.P17636928885489339736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A348976 d - (n : ℤ)

end

end A003415.P17636928885489339736

namespace A003415

/-- `∑{d}[n, A348976(#)]-n` -/
def P17636928885489339736.Spec : Prop :=
  ∀ n, P17636928885489339736.a n = A003415 n

end A003415

/-! ## A003415.P13821800857087108722

`A258057(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A003415.P13821800857087108722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A258057 (n - 1) + a (n - 1)

end

end A003415.P13821800857087108722

namespace A003415

/-- `A258057(n-1)+a(n-1)` -/
def P13821800857087108722.Spec : Prop :=
  ∀ n, P13821800857087108722.a n = A003415 n

end A003415

/-! ## A003415.P608395073815613000

`A368921(n)+A068346(n)`
-/

namespace A003415.P608395073815613000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368921 n + A068346 n

end

end A003415.P608395073815613000

namespace A003415

/-- `A368921(n)+A068346(n)` -/
def P608395073815613000.Spec : Prop :=
  ∀ n, P608395073815613000.a n = A003415 n

end A003415

/-! ## A003415.P5480348565172132819

`A168036(n)-A001489(n)`
-/

namespace A003415.P5480348565172132819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n - A001489 n

end

end A003415.P5480348565172132819

namespace A003415

/-- `A168036(n)-A001489(n)` -/
def P5480348565172132819.Spec : Prop :=
  ∀ n, P5480348565172132819.a n = A003415 n

end A003415

/-! ## A003415.P5708867949996839983

`A276086(n)-A373849(n)`
-/

namespace A003415.P5708867949996839983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A373849 n

end

end A003415.P5708867949996839983

namespace A003415

/-- `A276086(n)-A373849(n)` -/
def P5708867949996839983.Spec : Prop :=
  ∀ n, P5708867949996839983.a n = A003415 n

end A003415

/-! ## A003415.P8135973700316051291

`A327858(n)*A351230(n)`
-/

namespace A003415.P8135973700316051291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351230 n

end

end A003415.P8135973700316051291

namespace A003415

/-- `A327858(n)*A351230(n)` -/
def P8135973700316051291.Spec : Prop :=
  ∀ n, P8135973700316051291.a n = A003415 n

end A003415

/-! ## A003415.P13378631513264504343

`A358669(n)/A276086(n)`
-/

namespace A003415.P13378631513264504343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358669 n : ℚ) / (A276086 n : ℚ)

end

end A003415.P13378631513264504343

namespace A003415

/-- `A358669(n)/A276086(n)` -/
def P13378631513264504343.Spec : Prop :=
  ∀ n, P13378631513264504343.a n = (A003415 n : ℚ)

end A003415

/-! ## A003415.P11276611036739707158

`A359423(n)/A351231(n)`
-/

namespace A003415.P11276611036739707158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359423 n : ℚ) / (A351231 n : ℚ)

end

end A003415.P11276611036739707158

namespace A003415

/-- `A359423(n)/A351231(n)` -/
def P11276611036739707158.Spec : Prop :=
  ∀ n, P11276611036739707158.a n = (A003415 n : ℚ)

end A003415

/-! ## A003415.P13524186170035629644

`∑[A258057(A028310(n)-1)]`
-/

namespace A003415.P13524186170035629644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003415.P13524186170035629644

namespace A003415

/-- `∑[A258057(A028310(n)-1)]` -/
def P13524186170035629644.Spec : Prop :=
  ∀ n, P13524186170035629644.a n = A003415 n

end A003415

/-! ## A003415.P18437868712048155503

`∑[A258057(n)]-A258057(n)`
-/

namespace A003415.P18437868712048155503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A258057 n

end

end A003415.P18437868712048155503

namespace A003415

/-- `∑[A258057(n)]-A258057(n)` -/
def P18437868712048155503.Spec : Prop :=
  ∀ n, P18437868712048155503.a n = A003415 n

end A003415

/-! ## A003415.P7461220469305646932

`A368922(n)+2*A068346(n)`
-/

namespace A003415.P7461220469305646932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368922 n + 2 * A068346 n

end

end A003415.P7461220469305646932

namespace A003415

/-- `A368922(n)+2*A068346(n)` -/
def P7461220469305646932.Spec : Prop :=
  ∀ n, P7461220469305646932.a n = A003415 n

end A003415

/-! ## A003415.P14733633250095482976

`2*A368921(n)-A368922(n)`
-/

namespace A003415.P14733633250095482976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A368921 n - A368922 n

end

end A003415.P14733633250095482976

namespace A003415

/-- `2*A368921(n)-A368922(n)` -/
def P14733633250095482976.Spec : Prop :=
  ∀ n, P14733633250095482976.a n = A003415 n

end A003415

/-! ## A003415.P8752986560698897827

`A351225(n)+n-A373849(n)`
-/

namespace A003415.P8752986560698897827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n + ((n : ℤ) - A373849 n)

end

end A003415.P8752986560698897827

namespace A003415

/-- `A351225(n)+n-A373849(n)` -/
def P8752986560698897827.Spec : Prop :=
  ∀ n, P8752986560698897827.a n = A003415 n

end A003415

/-! ## A003415.P5359484966028072023

`A005843(n)-(n-A168036(n))`
-/

namespace A003415.P5359484966028072023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A168036 n)

end

end A003415.P5359484966028072023

namespace A003415

/-- `A005843(n)-(n-A168036(n))` -/
def P5359484966028072023.Spec : Prop :=
  ∀ n, P5359484966028072023.a n = A003415 n

end A003415

/-! ## A003415.P4048523785746650756

`A276086(n)*A351230(n)/A351231(n)`
-/

namespace A003415.P4048523785746650756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n * A351230 n : ℚ) / (A351231 n : ℚ)

end

end A003415.P4048523785746650756

namespace A003415

/-- `A276086(n)*A351230(n)/A351231(n)` -/
def P4048523785746650756.Spec : Prop :=
  ∀ n, P4048523785746650756.a n = (A003415 n : ℚ)

end A003415

/-!
# A003417: Continued fraction for e.

The programs for A003417, the canonical program `A003417.P4115517454563141565` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003417 has offset 0).

The definition of A003417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003417.P4115517454563141565

`2*a(n-3)-a(n-6)` with `a(0)=2, a(1)=1, a(2)=2, a(3)=1, a(4)=1, a(5)=4, a(6)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003417

/-- `2*a(n-3)-a(n-6)` -/
def P4115517454563141565.Spec : Prop :=
  ∀ n, P4115517454563141565.a n = A003417 n

theorem P4115517454563141565.correct : P4115517454563141565.Spec := by
  intro n
  simp only [A003417]

end A003417

/-! ## A003417.P16458787930028981109

`floor(1/(n+1))-(floor(n/3)-floor((n+1)/3))*(2*n-1)/3+1`
-/

namespace A003417.P16458787930028981109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊1 / (n + 1 : ℚ)⌋ : ℚ) - ((⌊(n : ℚ) / 3⌋ - ⌊(n + 1 : ℚ) / 3⌋) * ((2 * n : ℤ) - 1) : ℚ) / 3 + 1

end

end A003417.P16458787930028981109

namespace A003417

/-- `floor(1/(n+1))-(floor(n/3)-floor((n+1)/3))*(2*n-1)/3+1` -/
def P16458787930028981109.Spec : Prop :=
  ∀ n, P16458787930028981109.a n = (A003417 n : ℚ)

end A003417

/-! ## A003417.P14564324516990910595

`gcd(a(n-3)+2, (n+1)%3)` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A003417.P14564324516990910595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  Nat.gcd (a (n - 3) + 2) ((n + 1) % 3)

end

end A003417.P14564324516990910595

namespace A003417

/-- `gcd(a(n-3)+2, (n+1)%3)` -/
def P14564324516990910595.Spec : Prop :=
  ∀ n, (P14564324516990910595.a n : ℤ) = A003417 n

end A003417

/-! ## A003417.P16848028381291466149

`(a(n-3)+2)^(a(n-1)%a(n-3))` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A003417.P16848028381291466149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  (a (n - 3) + 2) ^ (a (n - 1) % a (n - 3))

end

end A003417.P16848028381291466149

namespace A003417

/-- `(a(n-3)+2)^(a(n-1)%a(n-3))` -/
def P16848028381291466149.Spec : Prop :=
  ∀ n, (P16848028381291466149.a n : ℤ) = A003417 n

end A003417

/-! ## A003417.P3597591771710987100

`∑[A120691(n)]`
-/

namespace A003417.P3597591771710987100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003417.P3597591771710987100

namespace A003417

/-- `∑[A120691(n)]` -/
def P3597591771710987100.Spec : Prop :=
  ∀ n, P3597591771710987100.a n = A003417 n

end A003417

/-! ## A003417.P12795367980886488995

`A097362(a(n-3))` with `a(0)=2, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A003417.P12795367980886488995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2, 1] fun n a =>
  A097362 (a (n - 3)).toNat

end

end A003417.P12795367980886488995

namespace A003417

/-- `A097362(a(n-3))` -/
def P12795367980886488995.Spec : Prop :=
  ∀ n, P12795367980886488995.a n = A003417 n

end A003417

/-! ## A003417.P2469135290778152412

`A110090(n)/a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A003417.P2469135290778152412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  (A110090 n : ℚ) / a (n - 1)

end

end A003417.P2469135290778152412

namespace A003417

/-- `A110090(n)/a(n-1)` -/
def P2469135290778152412.Spec : Prop :=
  ∀ n, P2469135290778152412.a n = (A003417 n : ℚ)

end A003417

/-! ## A003417.P768158396218088010

`A004277((C(n², 3)%(n+1))^n^Δ[ceil(n/3)])`
-/

namespace A003417.P768158396218088010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway (((Nat.choose (n ^ 2) 3 % (n + 1) : ℕ) : ℝ) ^ ((n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) : ℝ))).toNat

end

end A003417.P768158396218088010

namespace A003417

/-- `A004277((C(n², 3)%(n+1))^n^Δ[ceil(n/3)])` -/
def P768158396218088010.Spec : Prop :=
  ∀ n, P768158396218088010.a n = A003417 n

end A003417

/-! ## A003417.P15070348961479093300

`A004277(abs((2*C(n, 3)+1)%(n+1)-n)^n^(1-n²%3))`
-/

namespace A003417.P15070348961479093300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((|(((2 * Nat.choose n 3 + 1) % (n + 1) : ℕ) : ℤ) - (n : ℤ)| : ℝ) ^ ((n : ℚ) ^ (1 - ((n ^ 2 % 3 : ℕ) : ℤ) : ℤ) : ℝ))).toNat

end

end A003417.P15070348961479093300

namespace A003417

/-- `A004277(abs((2*C(n, 3)+1)%(n+1)-n)^n^(1-n²%3))` -/
def P15070348961479093300.Spec : Prop :=
  ∀ n, P15070348961479093300.a n = A003417 n

end A003417

/-! ## A003417.P10891190896559345027

`A292106(n)/A001203(n)`
-/

namespace A003417.P10891190896559345027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292106 n : ℚ) / (A001203 n : ℚ)

end

end A003417.P10891190896559345027

namespace A003417

/-- `A292106(n)/A001203(n)` -/
def P10891190896559345027.Spec : Prop :=
  ∀ n, P10891190896559345027.a n = (A003417 n : ℚ)

end A003417

/-! ## A003417.P17432532433057648276

`gcd(A026191(n+1), A110090(n))`
-/

namespace A003417.P17432532433057648276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026191 (n + 1)) (A110090 n)

end

end A003417.P17432532433057648276

namespace A003417

/-- `gcd(A026191(n+1), A110090(n))` -/
def P17432532433057648276.Spec : Prop :=
  ∀ n, (P17432532433057648276.a n : ℤ) = A003417 n

end A003417

/-! ## A003417.P5708274390202687195

`gcd(A166711(n), A184538(n+1))`
-/

namespace A003417.P5708274390202687195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166711 n) (A184538 (n + 1))

end

end A003417.P5708274390202687195

namespace A003417

/-- `gcd(A166711(n), A184538(n+1))` -/
def P5708274390202687195.Spec : Prop :=
  ∀ n, (P5708274390202687195.a n : ℤ) = A003417 n

end A003417

/-! ## A003417.P8048414730803348064

`A004277(C(ceil((n+1)/3), A347633(n+1)))`
-/

namespace A003417.P8048414730803348064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Nat.choose ⌈(n + 1 : ℚ) / 3⌉.toNat (A347633 (n + 1)).toNat)

end

end A003417.P8048414730803348064

namespace A003417

/-- `A004277(C(ceil((n+1)/3), A347633(n+1)))` -/
def P8048414730803348064.Spec : Prop :=
  ∀ n, P8048414730803348064.a n = A003417 n

end A003417

/-! ## A003417.P7315876128398067746

`A081750(A047266(n+2))`
-/

namespace A003417.P7315876128398067746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081750 (A047266 (n + 2)).toNat

end

end A003417.P7315876128398067746

namespace A003417

/-- `A081750(A047266(n+2))` -/
def P7315876128398067746.Spec : Prop :=
  ∀ n, P7315876128398067746.a n = A003417 n

end A003417

/-! ## A003417.P17604457597632519465

`A005131(n+2)^a(n-1)` with `a(0)=2`
-/

namespace A003417.P17604457597632519465
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  (A005131 (n + 2) : ℝ) ^ (a (n - 1))

end

end A003417.P17604457597632519465

namespace A003417

/-- `A005131(n+2)^a(n-1)` -/
def P17604457597632519465.Spec : Prop :=
  ∀ n, P17604457597632519465.a n = (A003417 n : ℝ)

end A003417

/-! ## A003417.P13081680279664278744

`A005131(2*A054977(n)+n)`
-/

namespace A003417.P13081680279664278744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (2 * A054977 n + (n : ℤ)).toNat

end

end A003417.P13081680279664278744

namespace A003417

/-- `A005131(2*A054977(n)+n)` -/
def P13081680279664278744.Spec : Prop :=
  ∀ n, P13081680279664278744.a n = A003417 n

end A003417

/-! ## A003417.P13910054218756045773

`gcd(2*(n+1), comp[or(2, A004277(n))])`
-/

namespace A003417.P13910054218756045773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A004277 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * (n + 1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A003417.P13910054218756045773

namespace A003417

/-- `gcd(2*(n+1), comp[or(2, A004277(n))])` -/
def P13910054218756045773.Spec : Prop :=
  ∀ n, (P13910054218756045773.a n : ℤ) = A003417 n

end A003417

/-! ## A003417.P10129907435983175095

`A270743(A144430(n+2))`
-/

namespace A003417.P10129907435983175095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270743 (A144430 (n + 2)).toNat

end

end A003417.P10129907435983175095

namespace A003417

/-- `A270743(A144430(n+2))` -/
def P10129907435983175095.Spec : Prop :=
  ∀ n, P10129907435983175095.a n = A003417 n

end A003417

/-! ## A003417.P16500855269719065910

`A100727(A047396(n+2))`
-/

namespace A003417.P16500855269719065910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A047396 (n + 2)).toNat

end

end A003417.P16500855269719065910

namespace A003417

/-- `A100727(A047396(n+2))` -/
def P16500855269719065910.Spec : Prop :=
  ∀ n, P16500855269719065910.a n = A003417 n

end A003417

/-!
# A003418: Least common multiple (or LCM) of {1, 2, ..., n} for n >= 1, a(0) = 1.

The programs for A003418, the canonical program `A003418.P6976248655893080794` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003418 has offset 0).

The definition of A003418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003418.P6976248655893080794

`lcm(n, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003418

/-- `lcm(n, a(n-1))` -/
def P6976248655893080794.Spec : Prop :=
  ∀ n, (P6976248655893080794.a n : ℤ) = A003418 n

theorem P6976248655893080794.correct : P6976248655893080794.Spec := by
  intro n
  simp only [A003418]

end A003418

/-! ## A003418.P13206236973493840749

`A000793(n)*A225558(n)`
-/

namespace A003418.P13206236973493840749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n * A225558 n

end

end A003418.P13206236973493840749

namespace A003418

/-- `A000793(n)*A225558(n)` -/
def P13206236973493840749.Spec : Prop :=
  ∀ n, P13206236973493840749.a n = A003418 n

end A003418

/-! ## A003418.P18275136701913374846

`n*a(n-1)/gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A003418.P18275136701913374846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ))

end

end A003418.P18275136701913374846

namespace A003418

/-- `n*a(n-1)/gcd(n, a(n-1))` -/
def P18275136701913374846.Spec : Prop :=
  ∀ n, P18275136701913374846.a n = (A003418 n : ℚ)

end A003418

/-! ## A003418.P12836805161882380120

`A075059(n)-1`
-/

namespace A003418.P12836805161882380120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 n - 1

end

end A003418.P12836805161882380120

namespace A003418

/-- `A075059(n)-1` -/
def P12836805161882380120.Spec : Prop :=
  ∀ n, P12836805161882380120.a n = A003418 n

theorem P12836805161882380120.correct : P12836805161882380120.Spec := by
  intro n
  simp only [A003418, Nat.add_sub_cancel, A003418.P12836805161882380120.a, A003418.P6976248655893080794.a, A075059, A075059.P13005941669399506084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003418

/-! ## A003418.P11877881478730559541

`A139550(2*n)`
-/

namespace A003418.P11877881478730559541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * n)

end

end A003418.P11877881478730559541

namespace A003418

/-- `A139550(2*n)` -/
def P11877881478730559541.Spec : Prop :=
  ∀ n, P11877881478730559541.a n = A003418 n

end A003418

/-! ## A003418.P15737489131566352863

`A139554(4*n)`
-/

namespace A003418.P15737489131566352863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139554 (4 * n)

end

end A003418.P15737489131566352863

namespace A003418

/-- `A139554(4*n)` -/
def P15737489131566352863.Spec : Prop :=
  ∀ n, P15737489131566352863.a n = A003418 n

end A003418

/-! ## A003418.P1356188760028869808

`∏[A014963(∏{p}[n, #])]`
-/

namespace A003418.P1356188760028869808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003418.P1356188760028869808

namespace A003418

/-- `∏[A014963(∏{p}[n, #])]` -/
def P1356188760028869808.Spec : Prop :=
  ∀ n, P1356188760028869808.a n = A003418 n

end A003418

/-! ## A003418.P16367708524816263209

`∑[A119944(abs(1-n))]`
-/

namespace A003418.P16367708524816263209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003418.P16367708524816263209

namespace A003418

/-- `∑[A119944(abs(1-n))]` -/
def P16367708524816263209.Spec : Prop :=
  ∀ n, P16367708524816263209.a n = A003418 n

end A003418

/-! ## A003418.P17132455225545629340

`∏[A014963(floor(acot(n)+n))]`
-/

namespace A003418.P17132455225545629340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003418.P17132455225545629340

namespace A003418

/-- `∏[A014963(floor(acot(n)+n))]` -/
def P17132455225545629340.Spec : Prop :=
  ∀ n, P17132455225545629340.a n = A003418 n

end A003418

/-! ## A003418.P3970166843338265264

`A195507(n+1)-(n+1)`
-/

namespace A003418.P3970166843338265264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (n + 1) - (n + 1 : ℤ)

end

end A003418.P3970166843338265264

namespace A003418

/-- `A195507(n+1)-(n+1)` -/
def P3970166843338265264.Spec : Prop :=
  ∀ n, P3970166843338265264.a n = A003418 n

theorem P3970166843338265264.correct : P3970166843338265264.Spec := by
  intro n
  simp only [A003418, Nat.add_sub_cancel, A003418.P3970166843338265264.a, A003418.P6976248655893080794.a, A195507, A195507.P13812271573965113829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003418

/-! ## A003418.P14655989215797812813

`a(n-1)*A014963(n)` with `a(0)=1`
-/

namespace A003418.P14655989215797812813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014963 n

end

end A003418.P14655989215797812813

namespace A003418

/-- `a(n-1)*A014963(n)` -/
def P14655989215797812813.Spec : Prop :=
  ∀ n, P14655989215797812813.a n = A003418 n

end A003418

/-! ## A003418.P1573475443373152257

`∏[A014963(round(sqrt(n²+1)))]`
-/

namespace A003418.P1573475443373152257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003418.P1573475443373152257

namespace A003418

/-- `∏[A014963(round(sqrt(n²+1)))]` -/
def P1573475443373152257.Spec : Prop :=
  ∀ n, P1573475443373152257.a n = A003418 n

end A003418

/-! ## A003418.P11848309926536923536

`a(n-1)*A020500(n)` with `a(0)=1, a(1)=1`
-/

namespace A003418.P11848309926536923536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A020500 n

end

end A003418.P11848309926536923536

namespace A003418

/-- `a(n-1)*A020500(n)` -/
def P11848309926536923536.Spec : Prop :=
  ∀ n, P11848309926536923536.a n = A003418 n

end A003418

/-! ## A003418.P575513655308039558

`round(∏[A014963(abs(1-n)+1)]/2)`
-/

namespace A003418.P575513655308039558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A003418.P575513655308039558

namespace A003418

/-- `round(∏[A014963(abs(1-n)+1)]/2)` -/
def P575513655308039558.Spec : Prop :=
  ∀ n, P575513655308039558.a n = A003418 n

end A003418

/-! ## A003418.P15503589347791092761

`A060357(n)-A060361(n)`
-/

namespace A003418.P15503589347791092761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 n - A060361 n

end

end A003418.P15503589347791092761

namespace A003418

/-- `A060357(n)-A060361(n)` -/
def P15503589347791092761.Spec : Prop :=
  ∀ n, P15503589347791092761.a n = A003418 n

theorem P15503589347791092761.correct : P15503589347791092761.Spec := by
  intro n
  simp only [A003418, Nat.add_sub_cancel, A003418.P15503589347791092761.a, A003418.P6976248655893080794.a, A060357, A060357.P5151139434586093012.a, A060361, A060361.P4009678370881410838.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003418

/-! ## A003418.P16592886885670383250

`A056040(n)*A180000(n)`
-/

namespace A003418.P16592886885670383250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n * A180000 n

end

end A003418.P16592886885670383250

namespace A003418

/-- `A056040(n)*A180000(n)` -/
def P16592886885670383250.Spec : Prop :=
  ∀ n, P16592886885670383250.a n = A003418 n

end A003418

/-! ## A003418.P3064559511128875503

`A001405(n)*A263673(n)`
-/

namespace A003418.P3064559511128875503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A263673 n

end

end A003418.P3064559511128875503

namespace A003418

/-- `A001405(n)*A263673(n)` -/
def P3064559511128875503.Spec : Prop :=
  ∀ n, P3064559511128875503.a n = A003418 n

end A003418

/-! ## A003418.P13526710086180609928

`∏[A089026(gcd(n, A034386(n)))]`
-/

namespace A003418.P13526710086180609928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (Int.gcd (n : ℤ) (A034386 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003418.P13526710086180609928

namespace A003418

/-- `∏[A089026(gcd(n, A034386(n)))]` -/
def P13526710086180609928.Spec : Prop :=
  ∀ n, P13526710086180609928.a n = A003418 n

end A003418

/-! ## A003418.P17528050965951825559

`∏[A089026(∏{d}[n, A089026(#)])]`
-/

namespace A003418.P17528050965951825559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (∏ d ∈ Nat.divisors (f2 n), A089026 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003418.P17528050965951825559

namespace A003418

/-- `∏[A089026(∏{d}[n, A089026(#)])]` -/
def P17528050965951825559.Spec : Prop :=
  ∀ n, P17528050965951825559.a n = A003418 n

end A003418

/-! ## A003418.P5965473940991618380

`A070198(A028310(n)-1)+1`
-/

namespace A003418.P5965473940991618380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 (A028310 n - 1).toNat + 1

end

end A003418.P5965473940991618380

namespace A003418

/-- `A070198(A028310(n)-1)+1` -/
def P5965473940991618380.Spec : Prop :=
  ∀ n, P5965473940991618380.a n = A003418 n

end A003418

/-!
# A003419: Values of m in the discriminant D = 4*m leading to a new minimum of the L-function of the Dirichlet series L(1) = Sum_{k>0} Kronecker(D,k)/k.

The programs for A003419, there is no canonical definition to state claims against.
-/

/-! ## A003419.P11584401462915743183

`A392732(A057298(n+1))`
-/

namespace A003419.P11584401462915743183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392732 (A057298 (n + 1)).toNat

end

end A003419.P11584401462915743183

/-!
# A003420: Values of m in the discriminant D = -4*m leading to a new maximum of the L-function of the Dirichlet series L(1) = Sum_{k=1..oo} Kronecker(D,k)/k.

The programs for A003420, there is no canonical definition to state claims against.
-/

/-! ## A003420.P9732857647515439642

`A331949(∑[A338210(n)!])`
-/

namespace A003420.P9732857647515439642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A338210 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331949 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003420.P9732857647515439642

/-! ## A003420.P4742826317063083171

`A331949(∑[A010893(2*n)!])`
-/

namespace A003420.P4742826317063083171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010893 (2 * n + 13)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331949 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003420.P4742826317063083171

/-! ## A003420.P15648234051426953104

`A331949(∑[A036373(A275281(n))])`
-/

namespace A003420.P15648234051426953104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036373 (A275281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003420.P15648234051426953104

/-! ## A003420.P13999614409338344162

`A331949(∑[A219866(n)!])`
-/

namespace A003420.P13999614409338344162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A219866 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331949 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003420.P13999614409338344162

/-!
# A003421: Nonsquare values of m in the discriminant D = 4*m leading to a new maximum of the L-function of the Dirichlet series L(1) = Sum_{k>0} Kronecker(D,k)/k.

The programs for A003421, there is no canonical definition to state claims against.
-/

/-! ## A003421.P4844128829792987452

`eq[2, A079574(A067752(2*n+5))]`
-/

namespace A003421.P4844128829792987452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079574 (A067752 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003421.P4844128829792987452

/-! ## A003421.P231724936625290473

`eq[3, A067752(2*n+5)%A000926(n+3)]`
-/

namespace A003421.P231724936625290473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067752 (2 * n + 5)) (A000926 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003421.P231724936625290473

/-! ## A003421.P9577947679985335507

`eq[A001222(A260475(n+1)), A182413(n+1)]`
-/

namespace A003421.P9577947679985335507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A260475 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003421.P9577947679985335507

/-!
# A003422: Left factorials: !n = Sum_{k=0..n-1} k!.

The programs for A003422, the canonical program `A003422.P8611016400917924119` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003422 has offset 0).

The definition of A003422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003422.P8611016400917924119

`a(n-1)+(n-1)!` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003422

/-- `a(n-1)+(n-1)!` -/
def P8611016400917924119.Spec : Prop :=
  ∀ n, (P8611016400917924119.a n : ℤ) = A003422 n

theorem P8611016400917924119.correct : P8611016400917924119.Spec := by
  intro n
  simp only [A003422]

end A003422

/-! ## A003422.P16826160214535801715

`n*a(n-1)-(n-1)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A003422.P16826160214535801715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * a (n - 1) - ((n : ℤ) - 1) * a (n - 2)

end

end A003422.P16826160214535801715

namespace A003422

/-- `n*a(n-1)-(n-1)*a(n-2)` -/
def P16826160214535801715.Spec : Prop :=
  ∀ n, P16826160214535801715.a n = A003422 n

end A003422

/-! ## A003422.P15137538482029691545

`∑[abs(1-n)!]-1`
-/

namespace A003422.P15137538482029691545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A003422.P15137538482029691545

namespace A003422

/-- `∑[abs(1-n)!]-1` -/
def P15137538482029691545.Spec : Prop :=
  ∀ n, P15137538482029691545.a n = A003422 n

end A003422

/-! ## A003422.P329551513004075655

`∑[∏[n-(char[1]+1)]]+1`
-/

namespace A003422.P329551513004075655
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((if ∃ j, f3 j = n then 1 else 0) + 1 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A003422.P329551513004075655

namespace A003422

/-- `∑[∏[n-(char[1]+1)]]+1` -/
def P329551513004075655.Spec : Prop :=
  ∀ n, P329551513004075655.a n = A003422 n

end A003422

/-! ## A003422.P2660311640283055001

`∑[(n-1)*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A003422.P2660311640283055001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003422.P2660311640283055001

namespace A003422

/-- `∑[(n-1)*a(n-1)]` -/
def P2660311640283055001.Spec : Prop :=
  ∀ n, P2660311640283055001.a n = A003422 n

end A003422

/-! ## A003422.P13948445447017832

`∑[∑{d}[n, (n-1)!*C(#, n)]]`
-/

namespace A003422.P13948445447017832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.factorial ((n : ℤ) - 1).toNat * Nat.choose d n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003422.P13948445447017832

namespace A003422

/-- `∑[∑{d}[n, (n-1)!*C(#, n)]]` -/
def P13948445447017832.Spec : Prop :=
  ∀ n, (P13948445447017832.a n : ℤ) = A003422 n

end A003422

/-! ## A003422.P11252468640769647992

`∑[((n-1)!/a(n-1))!]` with `a(0)=0, a(1)=1`
-/

namespace A003422.P11252468640769647992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.factorial (SequenceMachineLib.roundAway ((Nat.factorial ((n : ℤ) - 1).toNat : ℚ) / (f1 (n - 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003422.P11252468640769647992

namespace A003422

/-- `∑[((n-1)!/a(n-1))!]` -/
def P11252468640769647992.Spec : Prop :=
  ∀ n, (P11252468640769647992.a n : ℤ) = A003422 n

end A003422

/-! ## A003422.P685095455612373927

`∑[a(n-1)/(n-1)^(-1)]` with `a(0)=0, a(1)=1`
-/

namespace A003422.P685095455612373927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) / ((n : ℤ) - 1 : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003422.P685095455612373927

namespace A003422

/-- `∑[a(n-1)/(n-1)^(-1)]` -/
def P685095455612373927.Spec : Prop :=
  ∀ n, P685095455612373927.a n = (A003422 n : ℚ)

end A003422

/-! ## A003422.P2041460924061785174

`∑[A104150(n)]`
-/

namespace A003422.P2041460924061785174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003422.P2041460924061785174

namespace A003422

/-- `∑[A104150(n)]` -/
def P2041460924061785174.Spec : Prop :=
  ∀ n, P2041460924061785174.a n = A003422 n

end A003422

/-! ## A003422.P1753632822907429074

`Δ[Δ[A152689(n)]]`
-/

namespace A003422.P1753632822907429074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003422.P1753632822907429074

namespace A003422

/-- `Δ[Δ[A152689(n)]]` -/
def P1753632822907429074.Spec : Prop :=
  ∀ n, P1753632822907429074.a n = A003422 n

end A003422

/-!
# A003423: a(n) = a(n-1)^2 - 2, with a(0) = 6.

The programs for A003423, the canonical program `A003423.P16771452447998354265` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003423 has offset 0).

The definition of A003423 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-2` (program `A003423.P16771452447998354265`, by `A003423.P16771452447998354265.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003423.P16771452447998354265

`a(n-1)²-2` with `a(0)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003423

/-- `a(n-1)²-2` -/
def P16771452447998354265.Spec : Prop :=
  ∀ n, P16771452447998354265.a n = A003423 n

theorem P16771452447998354265.correct : P16771452447998354265.Spec := by
  intro n
  simp only [A003423]

end A003423

/-! ## A003423.P3256074717614858283

`(3+sqrt(8))^2^n+(3-sqrt(8))^2^n`
-/

namespace A003423.P3256074717614858283
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 + Real.sqrt (8 : ℝ)) ^ 2 ^ n + (3 - Real.sqrt (8 : ℝ)) ^ 2 ^ n

end

end A003423.P3256074717614858283

namespace A003423

/-- `(3+sqrt(8))^2^n+(3-sqrt(8))^2^n` -/
def P3256074717614858283.Spec : Prop :=
  ∀ n, P3256074717614858283.a n = (A003423 n : ℝ)

end A003423

/-! ## A003423.P9603704313218299736

`A003499(2^n)`
-/

namespace A003423.P9603704313218299736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 (2 ^ n)

end

end A003423.P9603704313218299736

namespace A003423

/-- `A003499(2^n)` -/
def P9603704313218299736.Spec : Prop :=
  ∀ n, P9603704313218299736.a n = A003423 n

end A003423

/-! ## A003423.P10081523487123858590

`abs(A228931(n+2))`
-/

namespace A003423.P10081523487123858590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A228931 (n + 2)|

end

end A003423.P10081523487123858590

namespace A003423

/-- `abs(A228931(n+2))` -/
def P10081523487123858590.Spec : Prop :=
  ∀ n, P10081523487123858590.a n = A003423 n

end A003423

/-!
# A003424: Primes of form (p^x - 1)/(p^y - 1), p prime.

The programs for A003424, there is no canonical definition to state claims against.
-/

/-! ## A003424.P15430253250693313130

`p?[A258777(n+1)]`
-/

namespace A003424.P15430253250693313130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003424.P15430253250693313130

/-! ## A003424.P2795420341637626530

`record[A020639(A258777(n+2))]`
-/

namespace A003424.P2795420341637626530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A258777 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003424.P2795420341637626530

/-! ## A003424.P5104203493168895500

`∩[A258777(n+1), A042990(n)]`
-/

namespace A003424.P5104203493168895500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003424.P5104203493168895500

/-! ## A003424.P17249799943848811499

`∩[A000040(n+1), A258777(n+1)]`
-/

namespace A003424.P17249799943848811499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003424.P17249799943848811499

/-! ## A003424.P5618156772066839964

`∩[A042986(n+1), A258777(n+1)]`
-/

namespace A003424.P5618156772066839964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003424.P5618156772066839964

/-!
# A003425: n! times number of posets with n elements.

The programs for A003425, there is no canonical definition to state claims against.
-/

/-! ## A003425.P3139973717860402381

`A000142(n)*A001035(n)`
-/

namespace A003425.P3139973717860402381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001035 n

end

end A003425.P3139973717860402381

/-! ## A003425.P3796244047174951438

`n!*A245767(∑[n])`
-/

namespace A003425.P3796244047174951438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A245767 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003425.P3796244047174951438

/-! ## A003425.P6184612609722203014

`A006059(n+1)/(n+1)*n!`
-/

namespace A003425.P6184612609722203014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006059 (n + 1) : ℚ) / (n + 1 : ℚ) * (Nat.factorial n : ℚ)

end

end A003425.P6184612609722203014

/-! ## A003425.P15620764826695859438

`abs(A001035(n)*A133942(n))`
-/

namespace A003425.P15620764826695859438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001035 n * A133942 n|

end

end A003425.P15620764826695859438

/-! ## A003425.P5782144082583009391

`sqrt(A001044(n))*A001035(n)`
-/

namespace A003425.P5782144082583009391
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001044 n : ℝ) * (A001035 n : ℝ)

end

end A003425.P5782144082583009391

/-!
# A003426: Number of stable trees with n nodes.

The programs for A003426, there is no canonical definition to state claims against.
-/

/-! ## A003426.P10587531040817237743

`A000055(n+1)-A002988(n+1)%A005195(n)`
-/

namespace A003426.P10587531040817237743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 1) - Int.tmod (A002988 (n + 1)) (A005195 n)

end

end A003426.P10587531040817237743

/-! ## A003426.P4541098661110549636

`A350969(round(sqrt(A287280(n))))`
-/

namespace A003426.P4541098661110549636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (SequenceMachineLib.roundAway (Real.sqrt (A287280 n : ℝ))).toNat

end

end A003426.P4541098661110549636

/-! ## A003426.P9890749174542642810

`A206915(floor(A000296(n)/2))`
-/

namespace A003426.P9890749174542642810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206915 ⌊(A000296 n : ℚ) / 2⌋.toNat

end

end A003426.P9890749174542642810

/-! ## A003426.P13570607647405761455

`A061375(floor(sqrt(A006397(n+2))))`
-/

namespace A003426.P13570607647405761455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (Int.sqrt (A006397 (n + 2))).toNat

end

end A003426.P13570607647405761455

/-! ## A003426.P10914292753124727170

`ceil(record[A128095(n+1)/5])`
-/

namespace A003426.P10914292753124727170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128095 (n + 1) : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A003426.P10914292753124727170

/-!
# A003427: Number of trees by stability index.

The programs for A003427, there is no canonical definition to state claims against.
-/

/-! ## A003427.P11990687147005225058

`A191291(A181926(n))`
-/

namespace A003427.P11990687147005225058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (A181926 n).toNat

end

end A003427.P11990687147005225058

/-! ## A003427.P1934478338959153163

`round(Δ[root(A079468(n+1), 5)])`
-/

namespace A003427.P1934478338959153163
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A079468 (n + 1) : ℝ) ^ (1 / (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A003427.P1934478338959153163

/-! ## A003427.P7390993931050777118

`A347520(∑[A251711(n)])`
-/

namespace A003427.P7390993931050777118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003427.P7390993931050777118

/-! ## A003427.P14695427922880139811

`round((∑[A076314(A014396(n)+1)]+1)/44)`
-/

namespace A003427.P14695427922880139811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A014396 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 44)

end

end A003427.P14695427922880139811

/-! ## A003427.P11106632786039875310

`A169778(A001591(n))-A085863(n)`
-/

namespace A003427.P11106632786039875310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169778 (A001591 n).toNat - A085863 n

end

end A003427.P11106632786039875310

/-!
# A003428: Number of trees by stability index.

The programs for A003428, there is no canonical definition to state claims against.
-/

/-! ## A003428.P16648767796567548089

`A320313(A004655(n)+1)`
-/

namespace A003428.P16648767796567548089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320313 (A004655 n + 1).toNat

end

end A003428.P16648767796567548089

/-! ## A003428.P11289236818100550574

`A320313(or(1, A004655(n)))`
-/

namespace A003428.P11289236818100550574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320313 (Int.lor 1 (A004655 n)).toNat

end

end A003428.P11289236818100550574

/-! ## A003428.P3589645282803209281

`A231238(floor(A050233(n+1)/(A231238(n+1)+1))+1)`
-/

namespace A003428.P3589645282803209281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231238 (⌊(A050233 (n + 1) : ℚ) / (A231238 (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A003428.P3589645282803209281

/-!
# A003429: Number of trees with stability index n.

The programs for A003429, there is no canonical definition to state claims against.
-/

/-! ## A003429.P1541709025426137545

`A003057(11*A150906(n))`
-/

namespace A003429.P1541709025426137545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (11 * A150906 n).toNat

end

end A003429.P1541709025426137545

/-! ## A003429.P11821881554069409453

`A365658(A060223(n))+A084214(n+2)`
-/

namespace A003429.P11821881554069409453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365658 (A060223 n).toNat + A084214 (n + 2)

end

end A003429.P11821881554069409453

/-!
# A003430: Number of unlabeled series-parallel posets (i.e., generated by unions and sums) with n nodes.

The programs for A003430, there is no canonical definition to state claims against.
-/

/-! ## A003430.P12937839708560072078

`A339228(C(n, 2)+1)`
-/

namespace A003430.P12937839708560072078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339228 (Nat.choose n 2 + 1)

end

end A003430.P12937839708560072078

/-! ## A003430.P14997830434084179103

`A339228(∑[abs(1-n)])`
-/

namespace A003430.P14997830434084179103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339228 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003430.P14997830434084179103

/-! ## A003430.P17323774079861376693

`A339228(A152947(n+1))+A054899(n)`
-/

namespace A003430.P17323774079861376693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339228 (A152947 (n + 1)).toNat + A054899 n

end

end A003430.P17323774079861376693

/-! ## A003430.P7696724873023066102

`A339228(A152947(n+1))+A084904(n)`
-/

namespace A003430.P7696724873023066102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339228 (A152947 (n + 1)).toNat + A084904 n

end

end A003430.P7696724873023066102

/-! ## A003430.P3598692395521532578

`A339228(A152947(n+1))+A178798(n)`
-/

namespace A003430.P3598692395521532578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339228 (A152947 (n + 1)).toNat + A178798 n

end

end A003430.P3598692395521532578

/-!
# A003431: Number of isomorphism classes of connected irreducible posets with n labeled points.

The programs for A003431, there is no canonical definition to state claims against.
-/

/-! ## A003431.P2404371463735893804

`A046907(n)-A349401(n)`
-/

namespace A003431.P2404371463735893804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046907 n - A349401 n

end

end A003431.P2404371463735893804

/-! ## A003431.P14341677659559424763

`A126205(A032109(n))`
-/

namespace A003431.P14341677659559424763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126205 (A032109 n).toNat

end

end A003431.P14341677659559424763

/-! ## A003431.P11742811738525296040

`A058151(A117220(n+2))`
-/

namespace A003431.P11742811738525296040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058151 (A117220 (n + 2)).toNat

end

end A003431.P11742811738525296040

/-!
# A003432: Hadamard maximal determinant problem: largest determinant of a (real) {0,1}-matrix of order n.

The programs for A003432, there is no canonical definition to state claims against.
-/

/-! ## A003432.P581706008677121317

`A003433(n+1)/2^n`
-/

namespace A003432.P581706008677121317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003433 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A003432.P581706008677121317

/-! ## A003432.P5664717358330585505

`abs(A003433(n+1)/A122803(n))`
-/

namespace A003432.P5664717358330585505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A003433 (n + 1) : ℚ) / (A122803 n : ℚ)|

end

end A003432.P5664717358330585505

/-! ## A003432.P17970028888921937592

`floor(A003433(n+1)/A000079(n))`
-/

namespace A003432.P17970028888921937592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003433 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A003432.P17970028888921937592

/-! ## A003432.P1119239006872202285

`ceil(A003433(n+1)/A171559(n))`
-/

namespace A003432.P1119239006872202285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003433 (n + 1) : ℚ) / (A171559 n : ℚ)⌉

end

end A003432.P1119239006872202285

/-! ## A003432.P7887745844444279159

`abs(A003433(n+1)/Δ[A000051(n)])`
-/

namespace A003432.P7887745844444279159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A003433 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)|

end

end A003432.P7887745844444279159

/-!
# A003433: Hadamard maximal determinant problem: largest determinant of (+1,-1)-matrix of order n.

The programs for A003433, there is no canonical definition to state claims against.
-/

/-! ## A003433.P3557076901132330954

`2^n*A003432(n)`
-/

namespace A003433.P3557076901132330954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A003432 n

end

end A003433.P3557076901132330954

/-! ## A003433.P16248677006821704038

`abs(A003432(n)*A122803(n))`
-/

namespace A003433.P16248677006821704038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003432 n * A122803 n|

end

end A003433.P16248677006821704038

/-! ## A003433.P9881349105524669092

`A003432(n)*A011782(n+1)`
-/

namespace A003433.P9881349105524669092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 n * A011782 (n + 1)

end

end A003433.P9881349105524669092

/-! ## A003433.P974992507411987188

`A003432(n)*A131577(n+1)`
-/

namespace A003433.P974992507411987188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 n * A131577 (n + 1)

end

end A003433.P974992507411987188

/-! ## A003433.P18018905758370696961

`A003432(n)*A016116(2*n)`
-/

namespace A003433.P18018905758370696961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 n * A016116 (2 * n)

end

end A003433.P18018905758370696961

/-!
# A003434: Number of iterations of phi(x) at n needed to reach 1.

The programs for A003434, the canonical program `A003434.P4346144669055339103` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003434 has offset 1).

The definition of A003434 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049108, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003434.P4346144669055339103

`A049108(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A003434

/-- `A049108(n+1)-1` -/
def P4346144669055339103.Spec : Prop :=
  ∀ n, P4346144669055339103.a n = A003434 (n + 1)

theorem P4346144669055339103.correct : P4346144669055339103.Spec := by
  intro n
  simp only [A003434, Nat.add_sub_cancel]

end A003434

/-! ## A003434.P16966088475018509661

`a(A000010(n+1)-1)+1` with `a(0)=0`
-/

namespace A003434.P16966088475018509661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A000010 (n + 1) - 1).toNat + 1

end

end A003434.P16966088475018509661

namespace A003434

/-- `a(A000010(n+1)-1)+1` -/
def P16966088475018509661.Spec : Prop :=
  ∀ n, (P16966088475018509661.a n : ℤ) = A003434 (n + 1)

end A003434

/-! ## A003434.P13836271184643035234

`a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1` with `a(0)=0`
-/

namespace A003434.P13836271184643035234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1)).toNat + 1

end

end A003434.P13836271184643035234

namespace A003434

/-- `a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1` -/
def P13836271184643035234.Spec : Prop :=
  ∀ n, (P13836271184643035234.a n : ℤ) = A003434 (n + 1)

end A003434

/-! ## A003434.P1422605017494151871

`∑[A334196(n+1)]`
-/

namespace A003434.P1422605017494151871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003434.P1422605017494151871

namespace A003434

/-- `∑[A334196(n+1)]` -/
def P1422605017494151871.Spec : Prop :=
  ∀ n, P1422605017494151871.a n = A003434 (n + 1)

end A003434

/-! ## A003434.P10480037743707280266

`a(A109606(n+1))+1` with `a(0)=0`
-/

namespace A003434.P10480037743707280266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A109606 (n + 1)).toNat + 1

end

end A003434.P10480037743707280266

namespace A003434

/-- `a(A109606(n+1))+1` -/
def P10480037743707280266.Spec : Prop :=
  ∀ n, (P10480037743707280266.a n : ℤ) = A003434 (n + 1)

end A003434

/-! ## A003434.P5709503045632999855

`a(Δ[A002088(n)]-1)+1` with `a(0)=0`
-/

namespace A003434.P5709503045632999855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (f1 (n + 1) - f1 n - 1).toNat + 1

end

end A003434.P5709503045632999855

namespace A003434

/-- `a(Δ[A002088(n)]-1)+1` -/
def P5709503045632999855.Spec : Prop :=
  ∀ n, (P5709503045632999855.a n : ℤ) = A003434 (n + 1)

end A003434

/-! ## A003434.P15170131561720843910

`a(n-A051953(n+1))+1` with `a(0)=0`
-/

namespace A003434.P15170131561720843910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A051953 (n + 1)).toNat + 1

end

end A003434.P15170131561720843910

namespace A003434

/-- `a(n-A051953(n+1))+1` -/
def P15170131561720843910.Spec : Prop :=
  ∀ n, (P15170131561720843910.a n : ℤ) = A003434 (n + 1)

end A003434

/-! ## A003434.P5308316459266590609

`a(A039649(n+1)-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A003434.P5308316459266590609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A039649 (n + 1) - 2).toNat + 1

end

end A003434.P5308316459266590609

namespace A003434

/-- `a(A039649(n+1)-2)+1` -/
def P5308316459266590609.Spec : Prop :=
  ∀ n, (P5308316459266590609.a n : ℤ) = A003434 (n + 1)

end A003434

/-! ## A003434.P16278826694571562193

`A023444(A049108(n+1)+1)`
-/

namespace A003434.P16278826694571562193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A049108 (n + 1) + 1).toNat

end

end A003434.P16278826694571562193

namespace A003434

/-- `A023444(A049108(n+1)+1)` -/
def P16278826694571562193.Spec : Prop :=
  ∀ n, P16278826694571562193.a n = A003434 (n + 1)

end A003434

/-! ## A003434.P4407027605096398545

`A064415(n+1)+A040001(n)-1`
-/

namespace A003434.P4407027605096398545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + (A040001 n - 1)

end

end A003434.P4407027605096398545

namespace A003434

/-- `A064415(n+1)+A040001(n)-1` -/
def P4407027605096398545.Spec : Prop :=
  ∀ n, P4407027605096398545.a n = A003434 (n + 1)

end A003434

/-! ## A003434.P10525225442858925861

`A054725(n+1)+A134451(n)-1`
-/

namespace A003434.P10525225442858925861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (n + 1) + (A134451 n - 1)

end

end A003434.P10525225442858925861

namespace A003434

/-- `A054725(n+1)+A134451(n)-1` -/
def P10525225442858925861.Spec : Prop :=
  ∀ n, P10525225442858925861.a n = A003434 (n + 1)

end A003434

/-! ## A003434.P14493898652676907885

`A049113(n+1)+A049115(n+1)-1`
-/

namespace A003434.P14493898652676907885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049113 (n + 1) + (A049115 (n + 1) - 1)

end

end A003434.P14493898652676907885

namespace A003434

/-- `A049113(n+1)+A049115(n+1)-1` -/
def P14493898652676907885.Spec : Prop :=
  ∀ n, P14493898652676907885.a n = A003434 (n + 1)

end A003434

/-! ## A003434.P18213546148857665272

`A049115(n+1)+A001222(A049116(n+1))`
-/

namespace A003434.P18213546148857665272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) + A001222 (A049116 (n + 1)).toNat

end

end A003434.P18213546148857665272

namespace A003434

/-- `A049115(n+1)+A001222(A049116(n+1))` -/
def P18213546148857665272.Spec : Prop :=
  ∀ n, P18213546148857665272.a n = A003434 (n + 1)

end A003434

/-! ## A003434.P14284259049281492014

`A049108(A353643(n+1)*A353644(n+1))%A049108(n+1)`
-/

namespace A003434.P14284259049281492014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049108 (A353643 (n + 1) * A353644 (n + 1)).toNat) (A049108 (n + 1))

end

end A003434.P14284259049281492014

namespace A003434

/-- `A049108(A353643(n+1)*A353644(n+1))%A049108(n+1)` -/
def P14284259049281492014.Spec : Prop :=
  ∀ n, P14284259049281492014.a n = A003434 (n + 1)

end A003434

/-! ## A003434.P9465009765844692883

`A064415(A140434(n+1))`
-/

namespace A003434.P9465009765844692883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A140434 (n + 1)).toNat

end

end A003434.P9465009765844692883

namespace A003434

/-- `A064415(A140434(n+1))` -/
def P9465009765844692883.Spec : Prop :=
  ∀ n, P9465009765844692883.a n = A003434 (n + 1)

end A003434

/-! ## A003434.P7532382759537088737

`A064415(A066043(n+1))`
-/

namespace A003434.P7532382759537088737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A066043 (n + 1)).toNat

end

end A003434.P7532382759537088737

namespace A003434

/-- `A064415(A066043(n+1))` -/
def P7532382759537088737.Spec : Prop :=
  ∀ n, P7532382759537088737.a n = A003434 (n + 1)

end A003434

/-! ## A003434.P17137308444859077873

`A064415((n+1)*A040001(n))`
-/

namespace A003434.P17137308444859077873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 ((n + 1 : ℤ) * A040001 n).toNat

end

end A003434.P17137308444859077873

namespace A003434

/-- `A064415((n+1)*A040001(n))` -/
def P17137308444859077873.Spec : Prop :=
  ∀ n, P17137308444859077873.a n = A003434 (n + 1)

end A003434

/-! ## A003434.P904105135269287996

`A054725(A002246(n+1))-1`
-/

namespace A003434.P904105135269287996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A002246 (n + 1)).toNat - 1

end

end A003434.P904105135269287996

namespace A003434

/-- `A054725(A002246(n+1))-1` -/
def P904105135269287996.Spec : Prop :=
  ∀ n, P904105135269287996.a n = A003434 (n + 1)

end A003434

/-! ## A003434.P10196402411136878113

`A094267(4*n+1)+A049108(n+1)`
-/

namespace A003434.P10196402411136878113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (4 * n + 1) + A049108 (n + 1)

end

end A003434.P10196402411136878113

namespace A003434

/-- `A094267(4*n+1)+A049108(n+1)` -/
def P10196402411136878113.Spec : Prop :=
  ∀ n, P10196402411136878113.a n = A003434 (n + 1)

end A003434

/-! ## A003434.P6208098379085174114

`A032358(A168101(n+1))-1`
-/

namespace A003434.P6208098379085174114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032358 (A168101 (n + 1)).toNat - 1

end

end A003434.P6208098379085174114

namespace A003434

/-- `A032358(A168101(n+1))-1` -/
def P6208098379085174114.Spec : Prop :=
  ∀ n, P6208098379085174114.a n = A003434 (n + 1)

end A003434

/-!
# A003435: Number of directed Hamiltonian circuits on n-octahedron with a marked starting node.

The programs for A003435, there is no canonical definition to state claims against.
-/

/-! ## A003435.P7594090462495031608

`A129348(n+2)*2*(n+2)`
-/

namespace A003435.P7594090462495031608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129348 (n + 2) * (2 * (n + 2) : ℤ)

end

end A003435.P7594090462495031608

/-! ## A003435.P16861666958226685248

`record[A003436(n)]*A000165(n+2)`
-/

namespace A003435.P16861666958226685248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000165 (n + 2)

end

end A003435.P16861666958226685248

/-! ## A003435.P926404052460267556

`A000165(n+2)*A003436(n+2)`
-/

namespace A003435.P926404052460267556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (n + 2) * A003436 (n + 2)

end

end A003435.P926404052460267556

/-! ## A003435.P16647451300178767648

`record[A003436(n)]*A006882(2*(n+2))`
-/

namespace A003435.P16647451300178767648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A006882 (2 * (n + 2))

end

end A003435.P16647451300178767648

/-! ## A003435.P5601808566438482606

`Δ[A007060(n+2)]%A129348(n+3)`
-/

namespace A003435.P5601808566438482606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007060 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A129348 (n + 3))

end

end A003435.P5601808566438482606

/-!
# A003436: Number of inequivalent labeled Hamiltonian circuits on n-octahedron. Interlacing chords joining 2n points on circle.

The programs for A003436, the canonical program `A003436.P3072430367328676949` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003436 has offset 0).

The definition of A003436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003436.P3072430367328676949

`2*n*a(n-1)-2*(n-3)*a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4, a(4)=31`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003436

/-- `2*n*a(n-1)-2*(n-3)*a(n-2)-a(n-3)` -/
def P3072430367328676949.Spec : Prop :=
  ∀ n, P3072430367328676949.a n = A003436 n

theorem P3072430367328676949.correct : P3072430367328676949.Spec := by
  intro n
  simp only [A003436]

end A003436

/-! ## A003436.P1029926594380558020

`abs(A231622(n))-char[A324434(n)]`
-/

namespace A003436.P1029926594380558020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324434 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A231622 n| - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A003436.P1029926594380558020

namespace A003436

/-- `abs(A231622(n))-char[A324434(n)]` -/
def P1029926594380558020.Spec : Prop :=
  ∀ n, P1029926594380558020.a n = A003436 n

end A003436

/-! ## A003436.P7252635444942827295

`A231622(A254667(n))-char[A031136(n)]`
-/

namespace A003436.P7252635444942827295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031136 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231622 (A254667 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A003436.P7252635444942827295

namespace A003436

/-- `A231622(A254667(n))-char[A031136(n)]` -/
def P7252635444942827295.Spec : Prop :=
  ∀ n, P7252635444942827295.a n = A003436 n

end A003436

/-! ## A003436.P4572054537105860504

`A231622(A254667(n))-char[A031137(n)]`
-/

namespace A003436.P4572054537105860504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031137 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231622 (A254667 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A003436.P4572054537105860504

namespace A003436

/-- `A231622(A254667(n))-char[A031137(n)]` -/
def P4572054537105860504.Spec : Prop :=
  ∀ n, P4572054537105860504.a n = A003436 n

end A003436

/-! ## A003436.P15441409417794255810

`A231622(n)+A254667(n)-A028310(n)`
-/

namespace A003436.P15441409417794255810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231622 n + (A254667 n - A028310 n)

end

end A003436.P15441409417794255810

namespace A003436

/-- `A231622(n)+A254667(n)-A028310(n)` -/
def P15441409417794255810.Spec : Prop :=
  ∀ n, P15441409417794255810.a n = A003436 n

end A003436

/-! ## A003436.P3306798149443358266

`A231622(A233583(n+1))%∑[A231622(n)]`
-/

namespace A003436.P3306798149443358266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231622 (A233583 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003436.P3306798149443358266

namespace A003436

/-- `A231622(A233583(n+1))%∑[A231622(n)]` -/
def P3306798149443358266.Spec : Prop :=
  ∀ n, P3306798149443358266.a n = A003436 n

end A003436

/-! ## A003436.P2601663421237922295

`A278990(n)-A278990(A233583(n+1)-1)`
-/

namespace A003436.P2601663421237922295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278990 n - A278990 (A233583 (n + 1) - 1).toNat

end

end A003436.P2601663421237922295

namespace A003436

/-- `A278990(n)-A278990(A233583(n+1)-1)` -/
def P2601663421237922295.Spec : Prop :=
  ∀ n, P2601663421237922295.a n = A003436 n

end A003436

/-!
# A003437: Number of unlabeled Hamiltonian circuits on n-octahedron (cross polytope); also number of circular chord diagrams with n chords, modulo symmetries.

The programs for A003437, there is no canonical definition to state claims against.
-/

/-! ## A003437.P410467830748733895

`A127723(a(n-1)+1)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A003437.P410467830748733895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A127723 (a (n - 1) + 1).toNat + a (n - 3)

end

end A003437.P410467830748733895

/-! ## A003437.P10838737870908434638

`A089576(A277463(n))`
-/

namespace A003437.P10838737870908434638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089576 (A277463 n).toNat

end

end A003437.P10838737870908434638

/-!
# A003438: Number of 5 X 5 matrices with nonnegative integer entries and row and column sums equal to n.

The programs for A003438, there is no canonical definition to state claims against.
-/

/-! ## A003438.P8943730426305746781

`A257493(eq[5, A002262(n)])`
-/

namespace A003438.P8943730426305746781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003438.P8943730426305746781

/-! ## A003438.P11916771251842873927

`A257493(eq[5, A141169(n)])`
-/

namespace A003438.P11916771251842873927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003438.P11916771251842873927

/-! ## A003438.P15420562348122302895

`A257493(eq[32, A059268(n)])`
-/

namespace A003438.P15420562348122302895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003438.P15420562348122302895

/-! ## A003438.P11102503396753533566

`A257493(A052905(n+2)+10)`
-/

namespace A003438.P11102503396753533566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (A052905 (n + 2) + 10).toNat

end

end A003438.P11102503396753533566

/-! ## A003438.P16864602133575597485

`A257493(eq[6, A002260(n+1)])`
-/

namespace A003438.P16864602133575597485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003438.P16864602133575597485

/-!
# A003439: Number of 6 X 6 stochastic matrices of integers: all rows and columns sum to n.

The programs for A003439, there is no canonical definition to state claims against.
-/

/-! ## A003439.P9590963984563734388

`A257493(eq[6, A002262(n)])`
-/

namespace A003439.P9590963984563734388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003439.P9590963984563734388

/-! ## A003439.P17634846931956087424

`A257493(eq[8, A141169(n)])`
-/

namespace A003439.P17634846931956087424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003439.P17634846931956087424

/-! ## A003439.P6167721104990674519

`A257493(eq[64, A059268(n)])`
-/

namespace A003439.P6167721104990674519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003439.P6167721104990674519

/-! ## A003439.P10608057917826176142

`A257493(A000217(n+6)+6)`
-/

namespace A003439.P10608057917826176142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (A000217 (n + 6) + 6).toNat

end

end A003439.P10608057917826176142

/-! ## A003439.P13969759209500751608

`A257493(eq[7, A002260(n+1)])`
-/

namespace A003439.P13969759209500751608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003439.P13969759209500751608

/-!
# A003440: Number of binary vectors with restricted repetitions.

The programs for A003440, there is no canonical definition to state claims against.
-/

/-! ## A003440.P974801746697031860

`A091964(round(sqrt(n²+1)))-A004148(n)`
-/

namespace A003440.P974801746697031860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091964 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A004148 n

end

end A003440.P974801746697031860

/-! ## A003440.P3133282849402852093

`A000007(n)+A091964(n)-A004148(n)`
-/

namespace A003440.P3133282849402852093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A091964 n - A004148 n)

end

end A003440.P3133282849402852093

/-! ## A003440.P17348123740192693963

`ceil(A177790(n)/2)`
-/

namespace A003440.P17348123740192693963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177790 n : ℚ) / 2⌉

end

end A003440.P17348123740192693963

/-! ## A003440.P1652300279843644471

`Δ[Δ[A088518(A004273(n))]]`
-/

namespace A003440.P1652300279843644471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (A004273 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003440.P1652300279843644471

/-! ## A003440.P6840026016052757131

`A177790(n)/A036453(n+1)`
-/

namespace A003440.P6840026016052757131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177790 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A003440.P6840026016052757131

/-! ## A003440.P11155235518946319174

`A177790(n)/gcd(2, A131924(n))`
-/

namespace A003440.P11155235518946319174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177790 n : ℚ) / (Int.gcd 2 (A131924 n) : ℚ)

end

end A003440.P11155235518946319174

/-! ## A003440.P15059561748823225173

`Δ[Δ[A088518(A004280(n+1))]]`
-/

namespace A003440.P15059561748823225173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (A004280 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003440.P15059561748823225173

/-! ## A003440.P17265239524373178870

`Δ[A088518(2*n)%A088518(2*n+1)]`
-/

namespace A003440.P17265239524373178870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088518 (2 * n)) (A088518 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003440.P17265239524373178870

/-! ## A003440.P3450322460741289965

`A177790(n)/A034444(A034444(n+1))`
-/

namespace A003440.P3450322460741289965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177790 n : ℚ) / (A034444 (A034444 (n + 1)).toNat : ℚ)

end

end A003440.P3450322460741289965

/-! ## A003440.P787427160462607046

`Δ[Δ[A132893(A002620(n))]]`
-/

namespace A003440.P787427160462607046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132893 (A002620 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003440.P787427160462607046

/-! ## A003440.P4364204293746341502

`Δ[A088518(2*n)%A095121(2*n)]`
-/

namespace A003440.P4364204293746341502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088518 (2 * n)) (A095121 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003440.P4364204293746341502

/-!
# A003441: Number of nonequivalent dissections of a polygon into n triangles by nonintersecting diagonals rooted at a cell up to rotation.

The programs for A003441, there is no canonical definition to state claims against.
-/

/-! ## A003441.P6707225350674673180

`A275206(n+1)+A001683(n+3)`
-/

namespace A003441.P6707225350674673180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275206 (n + 1) + A001683 (n + 3)

end

end A003441.P6707225350674673180

/-! ## A003441.P18373372710553577029

`A132892(A001844(n)+1)`
-/

namespace A003441.P18373372710553577029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A001844 n + 1).toNat

end

end A003441.P18373372710553577029

/-! ## A003441.P4865349221843101227

`A132892(A051890(n+1))`
-/

namespace A003441.P4865349221843101227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A051890 (n + 1)).toNat

end

end A003441.P4865349221843101227

/-! ## A003441.P6626597169959462121

`A132892(A000982(2*n+1)+1)`
-/

namespace A003441.P6626597169959462121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A000982 (2 * n + 1) + 1).toNat

end

end A003441.P6626597169959462121

/-! ## A003441.P13532703453546036465

`A132892(A080827(2*n+1)+1)`
-/

namespace A003441.P13532703453546036465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A080827 (2 * n + 1) + 1).toNat

end

end A003441.P13532703453546036465

/-! ## A003441.P13283264449515560133

`A132892(A099392(2*(n+1))+1)`
-/

namespace A003441.P13283264449515560133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A099392 (2 * (n + 1)) + 1).toNat

end

end A003441.P13283264449515560133

/-! ## A003441.P1050508925132541818

`A132892(A007590(2*n+1)+2)`
-/

namespace A003441.P1050508925132541818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A007590 (2 * n + 1) + 2).toNat

end

end A003441.P1050508925132541818

/-! ## A003441.P11029932816852882142

`A132892(A058331(n)+2*n+1)`
-/

namespace A003441.P11029932816852882142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A058331 n + (2 * n + 1 : ℤ)).toNat

end

end A003441.P11029932816852882142

/-! ## A003441.P5015933718809208322

`A037306(A090288(n)+1)`
-/

namespace A003441.P5015933718809208322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A090288 n + 1).toNat

end

end A003441.P5015933718809208322

/-! ## A003441.P18383918794884973866

`A037306(A132209(n+1))`
-/

namespace A003441.P18383918794884973866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A132209 (n + 1)).toNat

end

end A003441.P18383918794884973866

/-!
# A003442: Number of nonequivalent dissections of an n-gon into (n-3) polygons by nonintersecting diagonals rooted at a cell up to rotation.

The programs for A003442, there is no canonical definition to state claims against.
-/

/-! ## A003442.P7240275977623012711

`A220881(n+4)+Δ[A371963(n+2)]`
-/

namespace A003442.P7240275977623012711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220881 (n + 4) + (f1 (n + 1) - f1 n)

end

end A003442.P7240275977623012711

/-! ## A003442.P12975301232464537819

`A220881(n+4)+A037956(2*n+3)`
-/

namespace A003442.P12975301232464537819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220881 (n + 4) + A037956 (2 * n + 3)

end

end A003442.P12975301232464537819

/-! ## A003442.P12388337970383779288

`A220881(n+4)+A037953(A130773(n+1))`
-/

namespace A003442.P12388337970383779288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220881 (n + 4) + A037953 (A130773 (n + 1)).toNat

end

end A003442.P12388337970383779288

/-!
# A003443: Number of nonequivalent dissections of an n-gon into n-4 polygons by nonintersecting diagonals rooted at a cell up to rotation.

The programs for A003443, there is no canonical definition to state claims against.
-/

/-! ## A003443.P15116342358653979724

`A098162(A089830(n))`
-/

namespace A003443.P15116342358653979724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098162 (A089830 n).toNat

end

end A003443.P15116342358653979724

/-!
# A003444: Number of dissections of a polygon.

The programs for A003444, there is no canonical definition to state claims against.
-/

/-! ## A003444.P7277957945588970528

`A220881(n+5)`
-/

namespace A003444.P7277957945588970528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220881 (n + 5)

end

end A003444.P7277957945588970528

/-! ## A003444.P8806266186762577637

`A072506(A034856(n+2))`
-/

namespace A003444.P8806266186762577637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072506 (A034856 (n + 2)).toNat

end

end A003444.P8806266186762577637

/-! ## A003444.P18161326023820344821

`A132892(A005893(n+2))`
-/

namespace A003444.P18161326023820344821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A005893 (n + 2)).toNat

end

end A003444.P18161326023820344821

/-! ## A003444.P9472075189797593414

`A132892(A058331(n+2)+1)`
-/

namespace A003444.P9472075189797593414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A058331 (n + 2) + 1).toNat

end

end A003444.P9472075189797593414

/-! ## A003444.P15377473074216694473

`A037306((n+4)*2*(n+2))`
-/

namespace A003444.P15377473074216694473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 ((n + 4) * (2 * (n + 2)))

end

end A003444.P15377473074216694473

/-! ## A003444.P14260867169733165767

`A047996(A090288(n+2))`
-/

namespace A003444.P14260867169733165767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A090288 (n + 2)).toNat

end

end A003444.P14260867169733165767

/-! ## A003444.P2772182233595532684

`record[A037306(A005893(A008624(n)))]`
-/

namespace A003444.P2772182233595532684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A005893 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003444.P2772182233595532684

/-!
# A003445: Number of nonequivalent dissections of an n-gon into n-4 polygons by nonintersecting diagonals up to rotation.

The programs for A003445, there is no canonical definition to state claims against.
-/

/-! ## A003445.P18211235867647460439

`A295633(∑[n+3]+3)`
-/

namespace A003445.P18211235867647460439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295633 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A003445.P18211235867647460439

/-! ## A003445.P8426938562416114693

`and(-1, A295633(A117142(2*n+5)))`
-/

namespace A003445.P8426938562416114693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A295633 (A117142 (2 * n + 5)).toNat)

end

end A003445.P8426938562416114693

/-! ## A003445.P2945200271485708221

`record[root(A295633(n+3), A033282(n+6))]`
-/

namespace A003445.P2945200271485708221
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295633 (n + 3) : ℝ) ^ (1 / (A033282 (n + 6) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003445.P2945200271485708221

/-! ## A003445.P15031074145008774271

`A295633(A117142(2*n+5))%A001576(n)`
-/

namespace A003445.P15031074145008774271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295633 (A117142 (2 * n + 5)).toNat) (A001576 n)

end

end A003445.P15031074145008774271

/-! ## A003445.P10946682121482549254

`record[A295633(n+3)/A295633(n+6)]`
-/

namespace A003445.P10946682121482549254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295633 (n + 3) : ℚ) / (A295633 (n + 6) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003445.P10946682121482549254

/-!
# A003446: Number of nonequivalent dissections of a polygon into n triangles by nonintersecting diagonals rooted at a cell up to rotation and reflection.

The programs for A003446, there is no canonical definition to state claims against.
-/

/-! ## A003446.P16327961707917010646

`A295259(A179865(n+1))-A000007(n)`
-/

namespace A003446.P16327961707917010646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295259 (A179865 (n + 1)).toNat - A000007 n

end

end A003446.P16327961707917010646

/-! ## A003446.P13333710588195322372

`A295259(A179865(n+1))-A151878(n)`
-/

namespace A003446.P13333710588195322372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295259 (A179865 (n + 1)).toNat - A151878 n

end

end A003446.P13333710588195322372

/-! ## A003446.P1827090392873645326

`A178334(n)*A295259(A179865(n+1))`
-/

namespace A003446.P1827090392873645326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A295259 (A179865 (n + 1)).toNat

end

end A003446.P1827090392873645326

/-! ## A003446.P13384661030622197047

`A178489(n)*A295259(A179865(n+1))`
-/

namespace A003446.P13384661030622197047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A295259 (A179865 (n + 1)).toNat

end

end A003446.P13384661030622197047

/-! ## A003446.P15586334691807998040

`A295259(A179865(n+1))%A001558(n)`
-/

namespace A003446.P15586334691807998040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295259 (A179865 (n + 1)).toNat) (A001558 n)

end

end A003446.P15586334691807998040

/-! ## A003446.P6878925467034092427

`A211666(n+1)*A295259(A179865(n+1))`
-/

namespace A003446.P6878925467034092427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1) * A295259 (A179865 (n + 1)).toNat

end

end A003446.P6878925467034092427

/-!
# A003447: Number of nonequivalent dissections of an n-gon into n-3 polygons by nonintersecting diagonals rooted at a cell up to rotation and reflection.

The programs for A003447, there is no canonical definition to state claims against.
-/

/-! ## A003447.P15019814923676960372

`A117534(A026528(n+1)-A307719(n))`
-/

namespace A003447.P15019814923676960372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117534 (A026528 (n + 1) - A307719 n).toNat

end

end A003447.P15019814923676960372

/-! ## A003447.P9850944148687925659

`A054846(A000124(n)+7^n-6^n)`
-/

namespace A003447.P9850944148687925659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A000124 n + ((7 ^ n : ℤ) - (6 ^ n : ℤ))).toNat

end

end A003447.P9850944148687925659

/-!
# A003448: Number of nonequivalent dissections of an n-gon into n-4 polygons by nonintersecting diagonals rooted at a cell up to rotation and reflection.

The programs for A003448, there is no canonical definition to state claims against.
-/

/-! ## A003448.P15998237171576289780

`A064429(A111966(n))-A319350(n+1)`
-/

namespace A003448.P15998237171576289780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A111966 n).toNat - A319350 (n + 1)

end

end A003448.P15998237171576289780

/-!
# A003449: Number of nonequivalent dissections of an n-gon into n-3 polygons by nonintersecting diagonals up to rotation and reflection.

The programs for A003449, there is no canonical definition to state claims against.
-/

/-! ## A003449.P11444028090041046968

`A295634(∑[n+2]+2)`
-/

namespace A003449.P11444028090041046968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295634 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A003449.P11444028090041046968

/-! ## A003449.P5044556724879788311

`A380362(A255843(n+1))`
-/

namespace A003449.P5044556724879788311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380362 (A255843 (n + 1)).toNat

end

end A003449.P5044556724879788311

/-! ## A003449.P7668650455458383847

`A380362(A002522(n+2)+A002522(n))`
-/

namespace A003449.P7668650455458383847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380362 (A002522 (n + 2) + A002522 n).toNat

end

end A003449.P7668650455458383847

/-! ## A003449.P1400802082326671866

`A127757(A150352(n))`
-/

namespace A003449.P1400802082326671866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A150352 n).toNat

end

end A003449.P1400802082326671866

/-!
# A003450: Number of nonequivalent dissections of an n-gon into n-4 polygons by nonintersecting diagonals up to rotation and reflection.

The programs for A003450, there is no canonical definition to state claims against.
-/

/-! ## A003450.P15165570138216769933

`A295634(∑[n+3]+3)`
-/

namespace A003450.P15165570138216769933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295634 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A003450.P15165570138216769933

/-! ## A003450.P7874997756062476414

`and(-1, A295634(A117142(2*n+5)))`
-/

namespace A003450.P7874997756062476414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A295634 (A117142 (2 * n + 5)).toNat)

end

end A003450.P7874997756062476414

/-! ## A003450.P4711682305293557437

`A295634(A117142(2*n+5))%A001576(n)`
-/

namespace A003450.P4711682305293557437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295634 (A117142 (2 * n + 5)).toNat) (A001576 n)

end

end A003450.P4711682305293557437

/-! ## A003450.P16211378241579624730

`gcd(A151878(n), A295634(A117142(2*n+5)))`
-/

namespace A003450.P16211378241579624730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A295634 (A117142 (2 * n + 5)).toNat)

end

end A003450.P16211378241579624730

/-! ## A003450.P12641987956333990517

`lcm(A033999(n), A295634(A117142(2*n+5)))`
-/

namespace A003450.P12641987956333990517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A295634 (A117142 (2 * n + 5)).toNat)

end

end A003450.P12641987956333990517

/-!
# A003451: Number of nonequivalent dissections of an n-gon into 3 polygons by nonintersecting diagonals up to rotation.

The programs for A003451, the canonical program `A003451.P6940275346258853187` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003451 has offset 5).

The definition of A003451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003451.P13899828715383244466

`(n+1)*(2*(n+5)²-4*(n+5)-3*(1-(-1)^(n+5)))/24`
-/

namespace A003451.P13899828715383244466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((2 * (n + 5) ^ 2 : ℤ) - (4 * (n + 5) : ℤ) - 3 * (1 - (-1) ^ (n + 5))) : ℚ) / 24

end

end A003451.P13899828715383244466

namespace A003451

/-- `(n+1)*(2*(n+5)²-4*(n+5)-3*(1-(-1)^(n+5)))/24` -/
def P13899828715383244466.Spec : Prop :=
  ∀ n, P13899828715383244466.a n = (A003451 (n + 5) : ℚ)

end A003451

/-! ## A003451.P6940275346258853187

`A006584(n+3)-A027656(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A003451

/-- `A006584(n+3)-A027656(n)` -/
def P6940275346258853187.Spec : Prop :=
  ∀ n, P6940275346258853187.a n = A003451 (n + 5)

theorem P6940275346258853187.correct : P6940275346258853187.Spec := by
  intro n
  simp only [A003451, Nat.add_sub_cancel]

end A003451

/-! ## A003451.P8496275863091007243

`∑[∑[n*n%2+1]]`
-/

namespace A003451.P8496275863091007243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003451.P8496275863091007243

namespace A003451

/-- `∑[∑[n*n%2+1]]` -/
def P8496275863091007243.Spec : Prop :=
  ∀ n, (P8496275863091007243.a n : ℤ) = A003451 (n + 5)

end A003451

/-! ## A003451.P3657964498490872394

`∑[∑[lcm(2, n)+1-n]]`
-/

namespace A003451.P3657964498490872394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) + (1 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003451.P3657964498490872394

namespace A003451

/-- `∑[∑[lcm(2, n)+1-n]]` -/
def P3657964498490872394.Spec : Prop :=
  ∀ n, P3657964498490872394.a n = A003451 (n + 5)

end A003451

/-! ## A003451.P14833225950927909270

`∑[∑[n*and(1, n)+1]]`
-/

namespace A003451.P14833225950927909270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003451.P14833225950927909270

namespace A003451

/-- `∑[∑[n*and(1, n)+1]]` -/
def P14833225950927909270.Spec : Prop :=
  ∀ n, (P14833225950927909270.a n : ℤ) = A003451 (n + 5)

end A003451

/-! ## A003451.P3708273943654936586

`∑[∑[(n+1)^and(1, n)]]`
-/

namespace A003451.P3708273943654936586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003451.P3708273943654936586

namespace A003451

/-- `∑[∑[(n+1)^and(1, n)]]` -/
def P3708273943654936586.Spec : Prop :=
  ∀ n, (P3708273943654936586.a n : ℤ) = A003451 (n + 5)

end A003451

/-! ## A003451.P10392069578585085101

`∑[∑[C(n+1, and(1, n))]]`
-/

namespace A003451.P10392069578585085101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.land 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003451.P10392069578585085101

namespace A003451

/-- `∑[∑[C(n+1, and(1, n))]]` -/
def P10392069578585085101.Spec : Prop :=
  ∀ n, (P10392069578585085101.a n : ℤ) = A003451 (n + 5)

end A003451

/-! ## A003451.P3223503069220270811

`∑[∑[C(n+1, or(1, n))]]`
-/

namespace A003451.P3223503069220270811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.lor 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003451.P3223503069220270811

namespace A003451

/-- `∑[∑[C(n+1, or(1, n))]]` -/
def P3223503069220270811.Spec : Prop :=
  ∀ n, (P3223503069220270811.a n : ℤ) = A003451 (n + 5)

end A003451

/-! ## A003451.P6775575538551372876

`∑[∑[or(1, n+1)]]-a(n-1)` with `a(0)=1`
-/

namespace A003451.P6775575538551372876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A003451.P6775575538551372876

namespace A003451

/-- `∑[∑[or(1, n+1)]]-a(n-1)` -/
def P6775575538551372876.Spec : Prop :=
  ∀ n, P6775575538551372876.a n = A003451 (n + 5)

end A003451

/-! ## A003451.P6044842112569731583

`∑[∑[floor((n+1)/a(n-1))]]+1` with `a(0)=0, a(1)=3`
-/

namespace A003451.P6044842112569731583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  ⌊(n + 1 : ℚ) / (f2 (n - 1) : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A003451.P6044842112569731583

namespace A003451

/-- `∑[∑[floor((n+1)/a(n-1))]]+1` -/
def P6044842112569731583.Spec : Prop :=
  ∀ n, P6044842112569731583.a n = A003451 (n + 5)

end A003451

/-! ## A003451.P17887502731266965452

`floor(∑[∑[1-a(n-1)]²+n+1])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A003451.P17887502731266965452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003451.P17887502731266965452

namespace A003451

/-- `floor(∑[∑[1-a(n-1)]²+n+1])` -/
def P17887502731266965452.Spec : Prop :=
  ∀ n, P17887502731266965452.a n = A003451 (n + 5)

end A003451

/-! ## A003451.P8711679853882468664

`∑[∑[1-a(n-1)]²]+∑[n+1]` with `a(0)=0`
-/

namespace A003451.P8711679853882468664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A003451.P8711679853882468664

namespace A003451

/-- `∑[∑[1-a(n-1)]²]+∑[n+1]` -/
def P8711679853882468664.Spec : Prop :=
  ∀ n, P8711679853882468664.a n = A003451 (n + 5)

end A003451

/-! ## A003451.P5725453338830134913

`floor(∑[∑[(n+1)^floor(a(n-1)^(-1))]])` with `a(0)=1`
-/

namespace A003451.P5725453338830134913
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1 : ℚ) ^ (⌊f2 (n - 1) ^ (-1 : ℤ)⌋ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A003451.P5725453338830134913

namespace A003451

/-- `floor(∑[∑[(n+1)^floor(a(n-1)^(-1))]])` -/
def P5725453338830134913.Spec : Prop :=
  ∀ n, P5725453338830134913.a n = A003451 (n + 5)

end A003451

/-! ## A003451.P12067411095045895310

`floor(∑[∑[a(n-2)+2]-a(n-1)])` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A003451.P12067411095045895310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003451.P12067411095045895310

namespace A003451

/-- `floor(∑[∑[a(n-2)+2]-a(n-1)])` -/
def P12067411095045895310.Spec : Prop :=
  ∀ n, P12067411095045895310.a n = A003451 (n + 5)

end A003451

/-! ## A003451.P3297590746774416391

`floor((n+1)/2)²+a(n-1)+n+1` with `a(0)=1`
-/

namespace A003451.P3297590746774416391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 1 : ℚ) / 2⌋ ^ 2 + (a (n - 1) + (n + 1 : ℤ))

end

end A003451.P3297590746774416391

namespace A003451

/-- `floor((n+1)/2)²+a(n-1)+n+1` -/
def P3297590746774416391.Spec : Prop :=
  ∀ n, P3297590746774416391.a n = A003451 (n + 5)

end A003451

/-! ## A003451.P5407418746463893262

`∑[a(n-2)+2*(n+1)]-a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A003451.P5407418746463893262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + 2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A003451.P5407418746463893262

namespace A003451

/-- `∑[a(n-2)+2*(n+1)]-a(n-1)` -/
def P5407418746463893262.Spec : Prop :=
  ∀ n, P5407418746463893262.a n = A003451 (n + 5)

end A003451

/-! ## A003451.P2843351252603782558

`∑[A001057(n)²+n+1]`
-/

namespace A003451.P2843351252603782558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2 + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003451.P2843351252603782558

namespace A003451

/-- `∑[A001057(n)²+n+1]` -/
def P2843351252603782558.Spec : Prop :=
  ∀ n, P2843351252603782558.a n = A003451 (n + 5)

end A003451

/-! ## A003451.P14204836421928006680

`∑[A110654(n)²+n+1]`
-/

namespace A003451.P14204836421928006680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n ^ 2 + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003451.P14204836421928006680

namespace A003451

/-- `∑[A110654(n)²+n+1]` -/
def P14204836421928006680.Spec : Prop :=
  ∀ n, P14204836421928006680.a n = A003451 (n + 5)

end A003451

/-! ## A003451.P16924247661368895671

`∑[A130472(n)²+n+1]`
-/

namespace A003451.P16924247661368895671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n ^ 2 + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003451.P16924247661368895671

namespace A003451

/-- `∑[A130472(n)²+n+1]` -/
def P16924247661368895671.Spec : Prop :=
  ∀ n, P16924247661368895671.a n = A003451 (n + 5)

end A003451

/-! ## A003451.P6677218907780874001

`∑[A298950(n+1)-n²]`
-/

namespace A003451.P6677218907780874001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003451.P6677218907780874001

namespace A003451

/-- `∑[A298950(n+1)-n²]` -/
def P6677218907780874001.Spec : Prop :=
  ∀ n, P6677218907780874001.a n = A003451 (n + 5)

end A003451

/-!
# A003452: Number of nonequivalent dissections of an n-gon into 3 polygons by nonintersecting diagonals rooted at a cell up to rotation and reflection.

The programs for A003452, the canonical program `A003452.P1314730164798550450` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003452 has offset 5).

The definition of A003452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 639 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003452.P1314730164798550450

`∑[∑[gcd(n, ∑[n])+2]]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003452

/-- `∑[∑[gcd(n, ∑[n])+2]]` -/
def P1314730164798550450.Spec : Prop :=
  ∀ n, (P1314730164798550450.a n : ℤ) = A003452 (n + 5)

theorem P1314730164798550450.correct : P1314730164798550450.Spec := by
  intro n
  simp only [A003452, Nat.add_sub_cancel]

end A003452

/-! ## A003452.P156096209996251167

`∑[∑[lcm(2, n)/2+2]]`
-/

namespace A003452.P156096209996251167
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2 + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003452.P156096209996251167

namespace A003452

/-- `∑[∑[lcm(2, n)/2+2]]` -/
def P156096209996251167.Spec : Prop :=
  ∀ n, P156096209996251167.a n = (A003452 (n + 5) : ℚ)

end A003452

/-! ## A003452.P8930050102760409510

`∑[∑[A026741(n)+2]]`
-/

namespace A003452.P8930050102760409510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003452.P8930050102760409510

namespace A003452

/-- `∑[∑[A026741(n)+2]]` -/
def P8930050102760409510.Spec : Prop :=
  ∀ n, P8930050102760409510.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P11618777900196543924

`∑[∑[A029579(n+2)]]`
-/

namespace A003452.P11618777900196543924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003452.P11618777900196543924

namespace A003452

/-- `∑[∑[A029579(n+2)]]` -/
def P11618777900196543924.Spec : Prop :=
  ∀ n, P11618777900196543924.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P8820681764765629973

`∑[A258087(n+3)-1]`
-/

namespace A003452.P8820681764765629973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258087 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003452.P8820681764765629973

namespace A003452

/-- `∑[A258087(n+3)-1]` -/
def P8820681764765629973.Spec : Prop :=
  ∀ n, P8820681764765629973.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P13456172024057413069

`∑[∑[abs(A176447(n))+2]]`
-/

namespace A003452.P13456172024057413069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176447 n| + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003452.P13456172024057413069

namespace A003452

/-- `∑[∑[abs(A176447(n))+2]]` -/
def P13456172024057413069.Spec : Prop :=
  ∀ n, P13456172024057413069.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P17368681445572233272

`∑[∑[sqrt(A168077(n))+2]]`
-/

namespace A003452.P17368681445572233272
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A168077 n : ℝ) + 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003452.P17368681445572233272

namespace A003452

/-- `∑[∑[sqrt(A168077(n))+2]]` -/
def P17368681445572233272.Spec : Prop :=
  ∀ n, P17368681445572233272.a n = (A003452 (n + 5) : ℝ)

end A003452

/-! ## A003452.P12592154960308926666

`∑[∑[A030065(2*n)+2]]`
-/

namespace A003452.P12592154960308926666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (2 * n) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003452.P12592154960308926666

namespace A003452

/-- `∑[∑[A030065(2*n)+2]]` -/
def P12592154960308926666.Spec : Prop :=
  ∀ n, P12592154960308926666.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P10100633068285144582

`∑[∑[A173234(2*n)+2]]`
-/

namespace A003452.P10100633068285144582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173234 (2 * n) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003452.P10100633068285144582

namespace A003452

/-- `∑[∑[A173234(2*n)+2]]` -/
def P10100633068285144582.Spec : Prop :=
  ∀ n, P10100633068285144582.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P17574908874087969510

`∑[∑[A106609(4*n)+2]]`
-/

namespace A003452.P17574908874087969510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (4 * n) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003452.P17574908874087969510

namespace A003452

/-- `∑[∑[A106609(4*n)+2]]` -/
def P17574908874087969510.Spec : Prop :=
  ∀ n, P17574908874087969510.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P8497431414232944154

`∑[A319390(n)]+(n+1)²`
-/

namespace A003452.P8497431414232944154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A003452.P8497431414232944154

namespace A003452

/-- `∑[A319390(n)]+(n+1)²` -/
def P8497431414232944154.Spec : Prop :=
  ∀ n, P8497431414232944154.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P5872953919479392070

`A111384(n+3)+∑[n+1]`
-/

namespace A003452.P5872953919479392070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A003452.P5872953919479392070

namespace A003452

/-- `A111384(n+3)+∑[n+1]` -/
def P5872953919479392070.Spec : Prop :=
  ∀ n, P5872953919479392070.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P4258062135516212052

`∑[A001318(n)+2*(n+1)]`
-/

namespace A003452.P4258062135516212052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003452.P4258062135516212052

namespace A003452

/-- `∑[A001318(n)+2*(n+1)]` -/
def P4258062135516212052.Spec : Prop :=
  ∀ n, P4258062135516212052.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P11061373674852790879

`∑[∑[abs(n-A064680(n))+2]]`
-/

namespace A003452.P11061373674852790879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A064680 n| + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003452.P11061373674852790879

namespace A003452

/-- `∑[∑[abs(n-A064680(n))+2]]` -/
def P11061373674852790879.Spec : Prop :=
  ∀ n, P11061373674852790879.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P10013285268065410671

`(n+1)/2*A014616(n+2)`
-/

namespace A003452.P10013285268065410671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A014616 (n + 2) : ℚ)

end

end A003452.P10013285268065410671

namespace A003452

/-- `(n+1)/2*A014616(n+2)` -/
def P10013285268065410671.Spec : Prop :=
  ∀ n, P10013285268065410671.a n = (A003452 (n + 5) : ℚ)

end A003452

/-! ## A003452.P14414769739895346922

`(n+1)/2*A184674(n+3)`
-/

namespace A003452.P14414769739895346922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A184674 (n + 3) : ℚ)

end

end A003452.P14414769739895346922

namespace A003452

/-- `(n+1)/2*A184674(n+3)` -/
def P14414769739895346922.Spec : Prop :=
  ∀ n, P14414769739895346922.a n = (A003452 (n + 5) : ℚ)

end A003452

/-! ## A003452.P12696342223648878113

`∑[∑[A029906(2*n+1)+1]]`
-/

namespace A003452.P12696342223648878113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029906 (2 * n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003452.P12696342223648878113

namespace A003452

/-- `∑[∑[A029906(2*n+1)+1]]` -/
def P12696342223648878113.Spec : Prop :=
  ∀ n, P12696342223648878113.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P11764647155970745407

`∑[∑[A130845(2*n+1)+2]]`
-/

namespace A003452.P11764647155970745407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 (2 * n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003452.P11764647155970745407

namespace A003452

/-- `∑[∑[A130845(2*n+1)+2]]` -/
def P11764647155970745407.Spec : Prop :=
  ∀ n, P11764647155970745407.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P1078238960009943825

`A109900(n)+(n+1)*(n+2)`
-/

namespace A003452.P1078238960009943825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n + ((n + 1) * (n + 2) : ℤ)

end

end A003452.P1078238960009943825

namespace A003452

/-- `A109900(n)+(n+1)*(n+2)` -/
def P1078238960009943825.Spec : Prop :=
  ∀ n, P1078238960009943825.a n = A003452 (n + 5)

end A003452

/-! ## A003452.P9470201241309699704

`A034828(n+1)+(n+1)*(n+2)`
-/

namespace A003452.P9470201241309699704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 1) + ((n + 1) * (n + 2) : ℤ)

end

end A003452.P9470201241309699704

namespace A003452

/-- `A034828(n+1)+(n+1)*(n+2)` -/
def P9470201241309699704.Spec : Prop :=
  ∀ n, P9470201241309699704.a n = A003452 (n + 5)

end A003452

/-!
# A003453: Number of nonequivalent dissections of an n-gon into 3 polygons by nonintersecting diagonals up to rotation and reflection.

The programs for A003453, the canonical program `A003453.P12709643605451284176` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003453 has offset 5).

The definition of A003453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003453.P12709643605451284176

`(2*(n+5)^3-6*(n+5)²-23*(n+5)+63+3*n*(-1)^(n+5))/48`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003453

/-- `(2*(n+5)^3-6*(n+5)²-23*(n+5)+63+3*n*(-1)^(n+5))/48` -/
def P12709643605451284176.Spec : Prop :=
  ∀ n, P12709643605451284176.a n = (A003453 (n + 5) : ℚ)

end A003453

/-! ## A003453.P7180333367323268999

`∑[∑[gcd(xor(1, n²), ∑[n])]]`
-/

namespace A003453.P7180333367323268999
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P7180333367323268999

namespace A003453

/-- `∑[∑[gcd(xor(1, n²), ∑[n])]]` -/
def P7180333367323268999.Spec : Prop :=
  ∀ n, (P7180333367323268999.a n : ℤ) = A003453 (n + 5)

end A003453

/-! ## A003453.P16834874872294191585

`∑[∑[gcd(n+1, ceil(n/2))]]`
-/

namespace A003453.P16834874872294191585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P16834874872294191585

namespace A003453

/-- `∑[∑[gcd(n+1, ceil(n/2))]]` -/
def P16834874872294191585.Spec : Prop :=
  ∀ n, (P16834874872294191585.a n : ℤ) = A003453 (n + 5)

end A003453

/-! ## A003453.P1606261516571235134

`∑[∑[ceil(n/2)^(n%2)]]`
-/

namespace A003453.P1606261516571235134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P1606261516571235134

namespace A003453

/-- `∑[∑[ceil(n/2)^(n%2)]]` -/
def P1606261516571235134.Spec : Prop :=
  ∀ n, P1606261516571235134.a n = A003453 (n + 5)

end A003453

/-! ## A003453.P5926641483013948403

`∑[∪[∑[n+1], ∑[n+2]]]`
-/

namespace A003453.P5926641483013948403
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P5926641483013948403

namespace A003453

/-- `∑[∪[∑[n+1], ∑[n+2]]]` -/
def P5926641483013948403.Spec : Prop :=
  ∀ n, (P5926641483013948403.a n : ℤ) = A003453 (n + 5)

end A003453

/-! ## A003453.P7646300864615742444

`∑[C(ceil(n/2), 2)+n+1]`
-/

namespace A003453.P7646300864615742444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P7646300864615742444

namespace A003453

/-- `∑[C(ceil(n/2), 2)+n+1]` -/
def P7646300864615742444.Spec : Prop :=
  ∀ n, (P7646300864615742444.a n : ℤ) = A003453 (n + 5)

end A003453

/-! ## A003453.P2406309637078889092

`∑[∑[a(n-2)+and(1, n)]]` with `a(0)=1, a(1)=1`
-/

namespace A003453.P2406309637078889092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 2) + Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P2406309637078889092

namespace A003453

/-- `∑[∑[a(n-2)+and(1, n)]]` -/
def P2406309637078889092.Spec : Prop :=
  ∀ n, (P2406309637078889092.a n : ℤ) = A003453 (n + 5)

end A003453

/-! ## A003453.P15398740048332411591

`∑[∑[∑[∑[ogf((1+x-x^2)/(1+2x+x^2))]]]]`
-/

namespace A003453.P15398740048332411591
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 2, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P15398740048332411591

namespace A003453

/-- `∑[∑[∑[∑[ogf((1+x-x^2)/(1+2x+x^2))]]]]` -/
def P15398740048332411591.Spec : Prop :=
  ∀ n, P15398740048332411591.a n = A003453 (n + 5)

end A003453

/-! ## A003453.P6447997414916379156

`∑[∑[floor(∑[n]/(n*a(n-1)))]]` with `a(0)=1`
-/

namespace A003453.P6447997414916379156
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ⌊((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ) / ((n : ℤ) * f2 (n - 1) : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P6447997414916379156

namespace A003453

/-- `∑[∑[floor(∑[n]/(n*a(n-1)))]]` -/
def P6447997414916379156.Spec : Prop :=
  ∀ n, P6447997414916379156.a n = A003453 (n + 5)

end A003453

/-! ## A003453.P10186718625760999991

`∑[∑[floor(∑[n]/n)/a(n-1)]]` with `a(0)=1`
-/

namespace A003453.P10186718625760999991
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (⌊((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ) / (n : ℚ)⌋ : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P10186718625760999991

namespace A003453

/-- `∑[∑[floor(∑[n]/n)/a(n-1)]]` -/
def P10186718625760999991.Spec : Prop :=
  ∀ n, P10186718625760999991.a n = (A003453 (n + 5) : ℚ)

end A003453

/-! ## A003453.P3346540348663978879

`∑[∑[∑[a(n-2)-(-1)^n]]]` with `a(0)=1, a(1)=0`
-/

namespace A003453.P3346540348663978879
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  f3 (n - 2) - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P3346540348663978879

namespace A003453

/-- `∑[∑[∑[a(n-2)-(-1)^n]]]` -/
def P3346540348663978879.Spec : Prop :=
  ∀ n, P3346540348663978879.a n = A003453 (n + 5)

end A003453

/-! ## A003453.P15330044618969854160

`∑[∑[a(n-2)+1]-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A003453.P15330044618969854160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P15330044618969854160

namespace A003453

/-- `∑[∑[a(n-2)+1]-a(n-1)]` -/
def P15330044618969854160.Spec : Prop :=
  ∀ n, P15330044618969854160.a n = A003453 (n + 5)

end A003453

/-! ## A003453.P8532176627724524517

`∑[∑[n/a(n-1)-a(n-2)]]` with `a(0)=1, a(1)=1`
-/

namespace A003453.P8532176627724524517
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (n : ℚ) / f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P8532176627724524517

namespace A003453

/-- `∑[∑[n/a(n-1)-a(n-2)]]` -/
def P8532176627724524517.Spec : Prop :=
  ∀ n, P8532176627724524517.a n = (A003453 (n + 5) : ℚ)

end A003453

/-! ## A003453.P12862627768041105910

`∑[∑[∑[1-a(n-1)]-a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A003453.P12862627768041105910
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  1 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  ∑ j ∈ Finset.range (n + 1), f3 j - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P12862627768041105910

namespace A003453

/-- `∑[∑[∑[1-a(n-1)]-a(n-1)]]` -/
def P12862627768041105910.Spec : Prop :=
  ∀ n, P12862627768041105910.a n = A003453 (n + 5)

end A003453

/-! ## A003453.P13437502616563419454

`∑[∑[A152271(n)]]`
-/

namespace A003453.P13437502616563419454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P13437502616563419454

namespace A003453

/-- `∑[∑[A152271(n)]]` -/
def P13437502616563419454.Spec : Prop :=
  ∀ n, P13437502616563419454.a n = A003453 (n + 5)

end A003453

/-! ## A003453.P12337766051710560869

`∑[∑[A133265(n)/2]]`
-/

namespace A003453.P12337766051710560869
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133265 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P12337766051710560869

namespace A003453

/-- `∑[∑[A133265(n)/2]]` -/
def P12337766051710560869.Spec : Prop :=
  ∀ n, P12337766051710560869.a n = (A003453 (n + 5) : ℚ)

end A003453

/-! ## A003453.P503563171871146125

`∑[∑[round(A093178(n)/2)]]`
-/

namespace A003453.P503563171871146125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A093178 n : ℚ) / 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P503563171871146125

namespace A003453

/-- `∑[∑[round(A093178(n)/2)]]` -/
def P503563171871146125.Spec : Prop :=
  ∀ n, P503563171871146125.a n = A003453 (n + 5)

end A003453

/-! ## A003453.P4784005826621530388

`∑[∑[A063914(n+1)-n]]`
-/

namespace A003453.P4784005826621530388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063914 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003453.P4784005826621530388

namespace A003453

/-- `∑[∑[A063914(n+1)-n]]` -/
def P4784005826621530388.Spec : Prop :=
  ∀ n, P4784005826621530388.a n = A003453 (n + 5)

end A003453

/-! ## A003453.P12592602780859078468

`∑[∑[A319701(n+1)]]-n²`
-/

namespace A003453.P12592602780859078468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A003453.P12592602780859078468

namespace A003453

/-- `∑[∑[A319701(n+1)]]-n²` -/
def P12592602780859078468.Spec : Prop :=
  ∀ n, P12592602780859078468.a n = A003453 (n + 5)

end A003453

/-! ## A003453.P3700366590754610985

`A014125(n)-A008763(n)`
-/

namespace A003453.P3700366590754610985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n - A008763 n

end

end A003453.P3700366590754610985

namespace A003453

/-- `A014125(n)-A008763(n)` -/
def P3700366590754610985.Spec : Prop :=
  ∀ n, P3700366590754610985.a n = A003453 (n + 5)

end A003453

/-!
# A003454: Number of nonequivalent dissections of an n-gon by nonintersecting diagonals rooted at a cell up to rotation.

The programs for A003454, there is no canonical definition to state claims against.
-/

/-! ## A003454.P5945753599050866146

`A220658(2*A219197(n))`
-/

namespace A003454.P5945753599050866146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (2 * A219197 n).toNat

end

end A003454.P5945753599050866146

/-! ## A003454.P13449443662651121676

`A360566(A350921(n))+n`
-/

namespace A003454.P13449443662651121676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360566 (A350921 n).toNat + (n : ℤ)

end

end A003454.P13449443662651121676

/-!
# A003455: Number of nonequivalent dissections of an n-gon by nonintersecting diagonals up to rotation.

The programs for A003455, there is no canonical definition to state claims against.
-/

/-! ## A003455.P746296970954316788

`or((gcd(4, n)+1)%4, A157271(A214821(n+1)))`
-/

namespace A003455.P746296970954316788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((Nat.gcd 4 n + 1) % 4 : ℕ) : ℤ) (A157271 (A214821 (n + 1)).toNat)

end

end A003455.P746296970954316788

/-! ## A003455.P1771999124050222467

`A137578(∑[6*n])+n!`
-/

namespace A003455.P1771999124050222467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137578 (∑ j ∈ Finset.range (n + 1), f1 j) + (Nat.factorial n : ℤ)

end

end A003455.P1771999124050222467

/-!
# A003456: Number of nonequivalent dissections of an n-gon by nonintersecting diagonals rooted at a cell up to rotation and reflection.

The programs for A003456, there is no canonical definition to state claims against.
-/

/-! ## A003456.P18218696316701975561

`∑[A022290(A006153(n))]`
-/

namespace A003456.P18218696316701975561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A006153 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003456.P18218696316701975561

/-! ## A003456.P2361925755050401098

`record[A008676(A231200(n))]`
-/

namespace A003456.P2361925755050401098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A231200 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003456.P2361925755050401098

/-!
# A003457: a(n) = ceiling(Bernoulli(2n)/(-4n)).

The programs for A003457, there is no canonical definition to state claims against.
-/

/-! ## A003457.P14420315399128632466

`A003414(n+1)+1`
-/

namespace A003457.P14420315399128632466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003414 (n + 1) + 1

end

end A003457.P14420315399128632466

/-!
# A003458: Erdős-Selfridge function: a(n) is the least number m > n+1 such that the least prime factor of binomial(m, n) is > n.

The programs for A003458, there is no canonical definition to state claims against.
-/

/-! ## A003458.P10355365746064090648

`or(A007947(n+1), A274640(A048779(n+1)))`
-/

namespace A003458.P10355365746064090648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007947 (n + 1)) (A274640 (A048779 (n + 1)).toNat)

end

end A003458.P10355365746064090648

/-! ## A003458.P9507830641248574423

`or(A035428(n+1), A067539(A327975(n+1)))`
-/

namespace A003458.P9507830641248574423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035428 (n + 1)) (A067539 (A327975 (n + 1)).toNat)

end

end A003458.P9507830641248574423

/-! ## A003458.P16752716213679315357

`A274640(or(A000172(n), A381402(3*n+2)))`
-/

namespace A003458.P16752716213679315357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (Int.lor (A000172 n) (A381402 (3 * n + 2))).toNat

end

end A003458.P16752716213679315357

/-!
# A003459: Absolute primes (or permutable primes): every permutation of the digits is a prime.

The programs for A003459, there is no canonical definition to state claims against.
-/

/-! ## A003459.P5150973043392687465

`p?[A091897(n+1)]`
-/

namespace A003459.P5150973043392687465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003459.P5150973043392687465

/-! ## A003459.P3549262586103575643

`lt[A086150(n+1), 1]+1`
-/

namespace A003459.P3549262586103575643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086150 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A003459.P3549262586103575643

/-! ## A003459.P8404983557415336466

`eq[0, A086150(A028310(n))]`
-/

namespace A003459.P8404983557415336466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086150 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003459.P8404983557415336466

/-! ## A003459.P15444976042861652071

`A058977(eq[0, A086150(n+1)])`
-/

namespace A003459.P15444976042861652071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003459.P15444976042861652071

/-! ## A003459.P13483474931773025146

`filter[A091897(n+1), A010051(#)]`
-/

namespace A003459.P13483474931773025146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A003459.P13483474931773025146

/-!
# A003461: Bode numbers multiplied by 10: 4 + 3*floor(2^(n-1)).

The programs for A003461, the canonical program `A003461.P8766074635030395026` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003461 has offset 0).

The definition of A003461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4+3*floor(2^(n-1))` (program `A003461.P8766074635030395026`, by `A003461.P8766074635030395026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003461.P7911656080948504610

`2*a(n-1)-4` with `a(0)=4, a(1)=7`
-/

namespace A003461.P7911656080948504610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 7] fun n a =>
  2 * a (n - 1) - 4

end

end A003461.P7911656080948504610

namespace A003461

/-- `2*a(n-1)-4` -/
def P7911656080948504610.Spec : Prop :=
  ∀ n, P7911656080948504610.a n = A003461 n

end A003461

/-! ## A003461.P8766074635030395026

`4+3*floor(2^(n-1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003461

/-- `4+3*floor(2^(n-1))` -/
def P8766074635030395026.Spec : Prop :=
  ∀ n, P8766074635030395026.a n = A003461 n

theorem P8766074635030395026.correct : P8766074635030395026.Spec := by
  intro n
  simp only [A003461]

end A003461

/-! ## A003461.P2472914551617347259

`∑[ogf((-4+5x+3x^2)/(-1+2x))]`
-/

namespace A003461.P2472914551617347259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5, -3] [1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003461.P2472914551617347259

namespace A003461

/-- `∑[ogf((-4+5x+3x^2)/(-1+2x))]` -/
def P2472914551617347259.Spec : Prop :=
  ∀ n, P2472914551617347259.a n = A003461 n

end A003461

/-! ## A003461.P12541414258720480890

`ogf((4-5x-3x^2)/(1-3x+2x^2))`
-/

namespace A003461.P12541414258720480890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5, -3] [1, -3, 2] n

end

end A003461.P12541414258720480890

namespace A003461

/-- `ogf((4-5x-3x^2)/(1-3x+2x^2))` -/
def P12541414258720480890.Spec : Prop :=
  ∀ n, P12541414258720480890.a n = A003461 n

end A003461

/-! ## A003461.P13160183719901564326

`∑[a(n-1)+a(n-1)]` with `a(0)=4, a(1)=3, a(2)=3`
-/

namespace A003461.P13160183719901564326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 3, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003461.P13160183719901564326

namespace A003461

/-- `∑[a(n-1)+a(n-1)]` -/
def P13160183719901564326.Spec : Prop :=
  ∀ n, (P13160183719901564326.a n : ℤ) = A003461 n

end A003461

/-! ## A003461.P5030766869730278188

`floor(a(n-1)+a(n-1)-4%(1-a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A003461.P5030766869730278188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) - Int.tmod 4 (1 - a (n - 1)))

end

end A003461.P5030766869730278188

namespace A003461

/-- `floor(a(n-1)+a(n-1)-4%(1-a(n-1)))` -/
def P5030766869730278188.Spec : Prop :=
  ∀ n, P5030766869730278188.a n = A003461 n

end A003461

/-! ## A003461.P1459343319433076550

`xor(1, A082505(n)+5)`
-/

namespace A003461.P1459343319433076550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082505 n + 5)

end

end A003461.P1459343319433076550

namespace A003461

/-- `xor(1, A082505(n)+5)` -/
def P1459343319433076550.Spec : Prop :=
  ∀ n, P1459343319433076550.a n = A003461 n

end A003461

/-! ## A003461.P5233288009514968005

`∑[lcm(a(n-1), A034008(n))]` with `a(0)=4, a(1)=3`
-/

namespace A003461.P5233288009514968005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A034008 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003461.P5233288009514968005

namespace A003461

/-- `∑[lcm(a(n-1), A034008(n))]` -/
def P5233288009514968005.Spec : Prop :=
  ∀ n, (P5233288009514968005.a n : ℤ) = A003461 n

end A003461

/-! ## A003461.P15812154293576230323

`xor(A003945(n)+4, A000007(n))`
-/

namespace A003461.P15812154293576230323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003945 n + 4) (A000007 n)

end

end A003461.P15812154293576230323

namespace A003461

/-- `xor(A003945(n)+4, A000007(n))` -/
def P15812154293576230323.Spec : Prop :=
  ∀ n, P15812154293576230323.a n = A003461 n

end A003461

/-! ## A003461.P5531237772717208611

`Δ[A042950(n)+A008574(n)]`
-/

namespace A003461.P5531237772717208611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n + A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003461.P5531237772717208611

namespace A003461

/-- `Δ[A042950(n)+A008574(n)]` -/
def P5531237772717208611.Spec : Prop :=
  ∀ n, P5531237772717208611.a n = A003461 n

end A003461

/-! ## A003461.P8207518555785434623

`Δ[A083329(n)+A008574(n)]`
-/

namespace A003461.P8207518555785434623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n + A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003461.P8207518555785434623

namespace A003461

/-- `Δ[A083329(n)+A008574(n)]` -/
def P8207518555785434623.Spec : Prop :=
  ∀ n, P8207518555785434623.a n = A003461 n

end A003461

/-! ## A003461.P16096346001538834808

`Δ[A130824(n)+A003945(n)]`
-/

namespace A003461.P16096346001538834808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003461.P16096346001538834808

namespace A003461

/-- `Δ[A130824(n)+A003945(n)]` -/
def P16096346001538834808.Spec : Prop :=
  ∀ n, P16096346001538834808.a n = A003461 n

end A003461

/-! ## A003461.P9796551024167317292

`Δ[A131098(n+1)+A003945(n)]`
-/

namespace A003461.P9796551024167317292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1) + A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003461.P9796551024167317292

namespace A003461

/-- `Δ[A131098(n+1)+A003945(n)]` -/
def P9796551024167317292.Spec : Prop :=
  ∀ n, P9796551024167317292.a n = A003461 n

end A003461

/-! ## A003461.P11985146790008060592

`Δ[A036561(A000124(n))+A008574(n)]`
-/

namespace A003461.P11985146790008060592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A000124 n).toNat + A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003461.P11985146790008060592

namespace A003461

/-- `Δ[A036561(A000124(n))+A008574(n)]` -/
def P11985146790008060592.Spec : Prop :=
  ∀ n, P11985146790008060592.a n = A003461 n

end A003461

/-! ## A003461.P6340614965309905682

`∑[a(n-1)²/a(n-2)]` with `a(0)=4, a(1)=3, a(2)=3, a(3)=6`
-/

namespace A003461.P6340614965309905682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 3, 3, 6] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003461.P6340614965309905682

namespace A003461

/-- `∑[a(n-1)²/a(n-2)]` -/
def P6340614965309905682.Spec : Prop :=
  ∀ n, P6340614965309905682.a n = (A003461 n : ℚ)

end A003461

/-!
# A003462: a(n) = (3^n - 1)/2.

The programs for A003462, the canonical program `A003462.P13985754852886705544` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003462 has offset 0).

The definition of A003462 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n-1)/2` (program `A003462.P7729905666149790829`, by `A003462.P7729905666149790829.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003462.P13985754852886705544

`3*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003462

/-- `3*a(n-1)+1` -/
def P13985754852886705544.Spec : Prop :=
  ∀ n, (P13985754852886705544.a n : ℤ) = A003462 n

theorem P13985754852886705544.correct : P13985754852886705544.Spec := by
  intro n
  simp only [A003462]

end A003462

/-! ## A003462.P2588090936501581308

`A007051(n)-1`
-/

namespace A003462.P2588090936501581308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - 1

end

end A003462.P2588090936501581308

namespace A003462

/-- `A007051(n)-1` -/
def P2588090936501581308.Spec : Prop :=
  ∀ n, P2588090936501581308.a n = A003462 n

end A003462

/-! ## A003462.P7729905666149790829

`(3^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003462.P7729905666149790829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - 1 : ℚ) / 2

end

end A003462.P7729905666149790829

namespace A003462

/-- `(3^n-1)/2` -/
def P7729905666149790829.Spec : Prop :=
  ∀ n, P7729905666149790829.a n = (A003462 n : ℚ)

theorem P7729905666149790829.correct : P7729905666149790829.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A003462, Nat.add_sub_cancel, A003462.P7729905666149790829.a, A003462.P13985754852886705544.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A003462, Nat.add_sub_cancel, A003462.P7729905666149790829.a, A003462.P13985754852886705544.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A003462

/-! ## A003462.P17408920816678253178

`A001065(3^n)`
-/

namespace A003462.P17408920816678253178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (3 ^ n)

end

end A003462.P17408920816678253178

namespace A003462

/-- `A001065(3^n)` -/
def P17408920816678253178.Spec : Prop :=
  ∀ n, P17408920816678253178.a n = A003462 n

end A003462

/-! ## A003462.P11301542716159378038

`ogf(x/(1-4x+3x^2))`
-/

namespace A003462.P11301542716159378038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 3] n

end

end A003462.P11301542716159378038

namespace A003462

/-- `ogf(x/(1-4x+3x^2))` -/
def P11301542716159378038.Spec : Prop :=
  ∀ n, P11301542716159378038.a n = A003462 n

end A003462

/-! ## A003462.P12880017619935490272

`lcm(3, a(n-1))+1` with `a(0)=0`
-/

namespace A003462.P12880017619935490272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 3 (a (n - 1)) + 1

end

end A003462.P12880017619935490272

namespace A003462

/-- `lcm(3, a(n-1))+1` -/
def P12880017619935490272.Spec : Prop :=
  ∀ n, (P12880017619935490272.a n : ℤ) = A003462 n

end A003462

/-! ## A003462.P14761193250703021940

`∑[3*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A003462.P14761193250703021940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003462.P14761193250703021940

namespace A003462

/-- `∑[3*a(n-1)]` -/
def P14761193250703021940.Spec : Prop :=
  ∀ n, (P14761193250703021940.a n : ℤ) = A003462 n

end A003462

/-! ## A003462.P13239428991965068805

`4-3*(1-a(n-1))` with `a(0)=0`
-/

namespace A003462.P13239428991965068805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 - 3 * (1 - a (n - 1))

end

end A003462.P13239428991965068805

namespace A003462

/-- `4-3*(1-a(n-1))` -/
def P13239428991965068805.Spec : Prop :=
  ∀ n, P13239428991965068805.a n = A003462 n

end A003462

/-! ## A003462.P8569080457054231150

`3^(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A003462.P8569080457054231150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A003462.P8569080457054231150

namespace A003462

/-- `3^(n-1)+a(n-1)` -/
def P8569080457054231150.Spec : Prop :=
  ∀ n, P8569080457054231150.a n = (A003462 n : ℚ)

end A003462

/-! ## A003462.P10424001410501995527

`round(∑[3^((n-1)%(n+2))])`
-/

namespace A003462.P10424001410501995527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003462.P10424001410501995527

namespace A003462

/-- `round(∑[3^((n-1)%(n+2))])` -/
def P10424001410501995527.Spec : Prop :=
  ∀ n, P10424001410501995527.a n = A003462 n

end A003462

/-! ## A003462.P7759269834591230669

`a(n-1)/(1-2/3)+1` with `a(0)=0`
-/

namespace A003462.P7759269834591230669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (1 - (2 : ℚ) / 3) + 1

end

end A003462.P7759269834591230669

namespace A003462

/-- `a(n-1)/(1-2/3)+1` -/
def P7759269834591230669.Spec : Prop :=
  ∀ n, P7759269834591230669.a n = (A003462 n : ℚ)

end A003462

/-! ## A003462.P9472834472750078502

`1-a(n-1)/(2/3-1)` with `a(0)=0`
-/

namespace A003462.P9472834472750078502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) / ((2 : ℚ) / 3 - 1)

end

end A003462.P9472834472750078502

namespace A003462

/-- `1-a(n-1)/(2/3-1)` -/
def P9472834472750078502.Spec : Prop :=
  ∀ n, P9472834472750078502.a n = (A003462 n : ℚ)

end A003462

/-! ## A003462.P11548298902514446843

`3^(n-1)-floor(-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A003462.P11548298902514446843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌊-a (n - 1)⌋ : ℚ)

end

end A003462.P11548298902514446843

namespace A003462

/-- `3^(n-1)-floor(-a(n-1))` -/
def P11548298902514446843.Spec : Prop :=
  ∀ n, P11548298902514446843.a n = (A003462 n : ℚ)

end A003462

/-! ## A003462.P13122939075147991962

`3^(n-1)-ceil(-a(n-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A003462.P13122939075147991962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌈-a (n - 1)⌉ : ℚ)

end

end A003462.P13122939075147991962

namespace A003462

/-- `3^(n-1)-ceil(-a(n-1))` -/
def P13122939075147991962.Spec : Prop :=
  ∀ n, P13122939075147991962.a n = (A003462 n : ℚ)

end A003462

/-! ## A003462.P6334266098918908832

`3^(n-1)-round(-a(n-1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A003462.P6334266098918908832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (SequenceMachineLib.roundAway (-a (n - 1)) : ℚ)

end

end A003462.P6334266098918908832

namespace A003462

/-- `3^(n-1)-round(-a(n-1))` -/
def P6334266098918908832.Spec : Prop :=
  ∀ n, P6334266098918908832.a n = (A003462 n : ℚ)

end A003462

/-! ## A003462.P9319266690255871927

`a(n-1)+a(n-1)+a(n-1)+1` with `a(0)=0`
-/

namespace A003462.P9319266690255871927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 1))

end

end A003462.P9319266690255871927

namespace A003462

/-- `a(n-1)+a(n-1)+a(n-1)+1` -/
def P9319266690255871927.Spec : Prop :=
  ∀ n, (P9319266690255871927.a n : ℤ) = A003462 n

theorem P9319266690255871927.correct : P9319266690255871927.Spec := by
  intro n
  simp only [A003462, Nat.add_sub_cancel, A003462.P9319266690255871927.a, A003462.P13985754852886705544.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A003462

/-! ## A003462.P5119860200145857614

`2-floor(1-a(n-1)-a(n-1)-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A003462.P5119860200145857614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (1 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A003462.P5119860200145857614

namespace A003462

/-- `2-floor(1-a(n-1)-a(n-1)-a(n-1))` -/
def P5119860200145857614.Spec : Prop :=
  ∀ n, P5119860200145857614.a n = A003462 n

end A003462

/-! ## A003462.P5019386277101921812

`abs(A076040(n))`
-/

namespace A003462.P5019386277101921812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076040 n|

end

end A003462.P5019386277101921812

namespace A003462

/-- `abs(A076040(n))` -/
def P5019386277101921812.Spec : Prop :=
  ∀ n, P5019386277101921812.a n = A003462 n

end A003462

/-! ## A003462.P9373510048227236467

`∑[A140429(n)]`
-/

namespace A003462.P9373510048227236467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003462.P9373510048227236467

namespace A003462

/-- `∑[A140429(n)]` -/
def P9373510048227236467.Spec : Prop :=
  ∀ n, P9373510048227236467.a n = A003462 n

end A003462

/-! ## A003462.P15498636941189699229

`record[A255044(n)]`
-/

namespace A003462.P15498636941189699229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003462.P15498636941189699229

namespace A003462

/-- `record[A255044(n)]` -/
def P15498636941189699229.Spec : Prop :=
  ∀ n, P15498636941189699229.a n = A003462 n

end A003462

/-!
# A003463: a(n) = (5^n - 1)/4.

The programs for A003463, the canonical program `A003463.P9179413395597355560` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003463 has offset 0).

The definition of A003463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n-1)/4` (program `A003463.P2981015033608414761`, by `A003463.P2981015033608414761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003463.P2981015033608414761

`(5^n-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003463.P2981015033608414761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) - 1 : ℚ) / 4

end

end A003463.P2981015033608414761

namespace A003463

/-- `(5^n-1)/4` -/
def P2981015033608414761.Spec : Prop :=
  ∀ n, P2981015033608414761.a n = (A003463 n : ℚ)

theorem P2981015033608414761.correct : P2981015033608414761.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A003463, Nat.add_sub_cancel, A003463.P2981015033608414761.a, A003463.P9179413395597355560.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A003463, Nat.add_sub_cancel, A003463.P2981015033608414761.a, A003463.P9179413395597355560.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A003463

/-! ## A003463.P9179413395597355560

`5*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003463

/-- `5*a(n-1)+1` -/
def P9179413395597355560.Spec : Prop :=
  ∀ n, (P9179413395597355560.a n : ℤ) = A003463 n

theorem P9179413395597355560.correct : P9179413395597355560.Spec := by
  intro n
  simp only [A003463]

end A003463

/-! ## A003463.P1696352423062548716

`a(n-1)+A000351(n-1)` with `a(0)=0`
-/

namespace A003463.P1696352423062548716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000351 (n - 1)

end

end A003463.P1696352423062548716

namespace A003463

/-- `a(n-1)+A000351(n-1)` -/
def P1696352423062548716.Spec : Prop :=
  ∀ n, P1696352423062548716.a n = A003463 n

end A003463

/-! ## A003463.P8274141553192664686

`ogf(x/(1-6x+5x^2))`
-/

namespace A003463.P8274141553192664686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, 5] n

end

end A003463.P8274141553192664686

namespace A003463

/-- `ogf(x/(1-6x+5x^2))` -/
def P8274141553192664686.Spec : Prop :=
  ∀ n, P8274141553192664686.a n = A003463 n

end A003463

/-! ## A003463.P9270219452427733183

`round(or(1, 5^n)/4)`
-/

namespace A003463.P9270219452427733183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (5 ^ n) : ℚ) / 4)

end

end A003463.P9270219452427733183

namespace A003463

/-- `round(or(1, 5^n)/4)` -/
def P9270219452427733183.Spec : Prop :=
  ∀ n, P9270219452427733183.a n = A003463 n

end A003463

/-! ## A003463.P7564792151160727932

`lcm(5, a(n-1))+1` with `a(0)=0`
-/

namespace A003463.P7564792151160727932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 1

end

end A003463.P7564792151160727932

namespace A003463

/-- `lcm(5, a(n-1))+1` -/
def P7564792151160727932.Spec : Prop :=
  ∀ n, (P7564792151160727932.a n : ℤ) = A003463 n

end A003463

/-! ## A003463.P15913764878895850370

`∑[5*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A003463.P15913764878895850370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003463.P15913764878895850370

namespace A003463

/-- `∑[5*a(n-1)]` -/
def P15913764878895850370.Spec : Prop :=
  ∀ n, (P15913764878895850370.a n : ℤ) = A003463 n

end A003463

/-! ## A003463.P3715391532618316394

`round(5^gcd(n, 2*n)/4)`
-/

namespace A003463.P3715391532618316394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 ^ Nat.gcd n (2 * n) : ℚ) / 4)

end

end A003463.P3715391532618316394

namespace A003463

/-- `round(5^gcd(n, 2*n)/4)` -/
def P3715391532618316394.Spec : Prop :=
  ∀ n, P3715391532618316394.a n = A003463 n

end A003463

/-! ## A003463.P14644675289057877785

`6-5*(1-a(n-1))` with `a(0)=0`
-/

namespace A003463.P14644675289057877785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  6 - 5 * (1 - a (n - 1))

end

end A003463.P14644675289057877785

namespace A003463

/-- `6-5*(1-a(n-1))` -/
def P14644675289057877785.Spec : Prop :=
  ∀ n, P14644675289057877785.a n = A003463 n

end A003463

/-! ## A003463.P19346458724855509

`a(n-1)+5^(n-1)` with `a(0)=0`
-/

namespace A003463.P19346458724855509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A003463.P19346458724855509

namespace A003463

/-- `a(n-1)+5^(n-1)` -/
def P19346458724855509.Spec : Prop :=
  ∀ n, P19346458724855509.a n = (A003463 n : ℚ)

end A003463

/-! ## A003463.P6380473537425782545

`round(∑[5^((n-1)%(n+2))])`
-/

namespace A003463.P6380473537425782545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003463.P6380473537425782545

namespace A003463

/-- `round(∑[5^((n-1)%(n+2))])` -/
def P6380473537425782545.Spec : Prop :=
  ∀ n, P6380473537425782545.a n = A003463 n

end A003463

/-! ## A003463.P3858576650827613590

`a(n-1)/(1-4/5)+1` with `a(0)=0`
-/

namespace A003463.P3858576650827613590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) + 1

end

end A003463.P3858576650827613590

namespace A003463

/-- `a(n-1)/(1-4/5)+1` -/
def P3858576650827613590.Spec : Prop :=
  ∀ n, P3858576650827613590.a n = (A003463 n : ℚ)

end A003463

/-! ## A003463.P11582772253592995782

`1-a(n-1)/(4/5-1)` with `a(0)=0`
-/

namespace A003463.P11582772253592995782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) / ((4 : ℚ) / 5 - 1)

end

end A003463.P11582772253592995782

namespace A003463

/-- `1-a(n-1)/(4/5-1)` -/
def P11582772253592995782.Spec : Prop :=
  ∀ n, P11582772253592995782.a n = (A003463 n : ℚ)

end A003463

/-! ## A003463.P2013608832137544495

`∑[5^(n-a(n-1)%2)]` with `a(0)=0, a(1)=1`
-/

namespace A003463.P2013608832137544495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (5 : ℚ) ^ ((n : ℤ) - Int.tmod (SequenceMachineLib.roundAway (f1 (n - 1))) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003463.P2013608832137544495

namespace A003463

/-- `∑[5^(n-a(n-1)%2)]` -/
def P2013608832137544495.Spec : Prop :=
  ∀ n, P2013608832137544495.a n = (A003463 n : ℚ)

end A003463

/-! ## A003463.P5794583502939398135

`∑[5^(n-gcd(2, a(n-1)))]` with `a(0)=0, a(1)=1`
-/

namespace A003463.P5794583502939398135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (5 : ℚ) ^ ((n : ℤ) - (Int.gcd 2 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003463.P5794583502939398135

namespace A003463

/-- `∑[5^(n-gcd(2, a(n-1)))]` -/
def P5794583502939398135.Spec : Prop :=
  ∀ n, P5794583502939398135.a n = (A003463 n : ℚ)

end A003463

/-! ## A003463.P5975067127301193242

`5^(n-1)-floor(-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A003463.P5975067127301193242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌊-a (n - 1)⌋ : ℚ)

end

end A003463.P5975067127301193242

namespace A003463

/-- `5^(n-1)-floor(-a(n-1))` -/
def P5975067127301193242.Spec : Prop :=
  ∀ n, P5975067127301193242.a n = (A003463 n : ℚ)

end A003463

/-! ## A003463.P11959676086315822755

`5^(n-1)-ceil(-a(n-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A003463.P11959676086315822755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌈-a (n - 1)⌉ : ℚ)

end

end A003463.P11959676086315822755

namespace A003463

/-- `5^(n-1)-ceil(-a(n-1))` -/
def P11959676086315822755.Spec : Prop :=
  ∀ n, P11959676086315822755.a n = (A003463 n : ℚ)

end A003463

/-! ## A003463.P962848539862568065

`5^(n-1)-round(-a(n-1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A003463.P962848539862568065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (SequenceMachineLib.roundAway (-a (n - 1)) : ℚ)

end

end A003463.P962848539862568065

namespace A003463

/-- `5^(n-1)-round(-a(n-1))` -/
def P962848539862568065.Spec : Prop :=
  ∀ n, P962848539862568065.a n = (A003463 n : ℚ)

end A003463

/-! ## A003463.P14701476338363261884

`A047850(n)-1`
-/

namespace A003463.P14701476338363261884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n - 1

end

end A003463.P14701476338363261884

namespace A003463

/-- `A047850(n)-1` -/
def P14701476338363261884.Spec : Prop :=
  ∀ n, P14701476338363261884.a n = A003463 n

end A003463

/-! ## A003463.P8477921015480233289

`∑[record[A133337(n)]]`
-/

namespace A003463.P8477921015480233289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133337 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003463.P8477921015480233289

namespace A003463

/-- `∑[record[A133337(n)]]` -/
def P8477921015480233289.Spec : Prop :=
  ∀ n, P8477921015480233289.a n = A003463 n

end A003463

/-!
# A003464: a(n) = (6^n - 1)/5.

The programs for A003464, the canonical program `A003464.P5796604965084250752` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003464 has offset 0).

The definition of A003464 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n-1)/5` (program `A003464.P5382926463636087600`, by `A003464.P5382926463636087600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003464.P5796604965084250752

`6*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003464

/-- `6*a(n-1)+1` -/
def P5796604965084250752.Spec : Prop :=
  ∀ n, (P5796604965084250752.a n : ℤ) = A003464 n

theorem P5796604965084250752.correct : P5796604965084250752.Spec := by
  intro n
  simp only [A003464]

end A003464

/-! ## A003464.P5382926463636087600

`(6^n-1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003464.P5382926463636087600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n : ℤ) - 1 : ℚ) / 5

end

end A003464.P5382926463636087600

namespace A003464

/-- `(6^n-1)/5` -/
def P5382926463636087600.Spec : Prop :=
  ∀ n, P5382926463636087600.a n = (A003464 n : ℚ)

theorem P5382926463636087600.correct : P5382926463636087600.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A003464, Nat.add_sub_cancel, A003464.P5382926463636087600.a, A003464.P5796604965084250752.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A003464, Nat.add_sub_cancel, A003464.P5382926463636087600.a, A003464.P5796604965084250752.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A003464

/-! ## A003464.P2639371418499713997

`ogf(x/(1-7x+6x^2))`
-/

namespace A003464.P2639371418499713997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -7, 6] n

end

end A003464.P2639371418499713997

namespace A003464

/-- `ogf(x/(1-7x+6x^2))` -/
def P2639371418499713997.Spec : Prop :=
  ∀ n, P2639371418499713997.a n = A003464 n

end A003464

/-! ## A003464.P12969562154166032310

`lcm(6, a(n-1))+1` with `a(0)=0`
-/

namespace A003464.P12969562154166032310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 6 (a (n - 1)) + 1

end

end A003464.P12969562154166032310

namespace A003464

/-- `lcm(6, a(n-1))+1` -/
def P12969562154166032310.Spec : Prop :=
  ∀ n, (P12969562154166032310.a n : ℤ) = A003464 n

end A003464

/-! ## A003464.P1962519382778485830

`or(1, 6*a(n-1))` with `a(0)=0`
-/

namespace A003464.P1962519382778485830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (6 * a (n - 1))

end

end A003464.P1962519382778485830

namespace A003464

/-- `or(1, 6*a(n-1))` -/
def P1962519382778485830.Spec : Prop :=
  ∀ n, (P1962519382778485830.a n : ℤ) = A003464 n

end A003464

/-! ## A003464.P16344765353637328542

`xor(1, 6*a(n-1))` with `a(0)=0`
-/

namespace A003464.P16344765353637328542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (6 * a (n - 1))

end

end A003464.P16344765353637328542

namespace A003464

/-- `xor(1, 6*a(n-1))` -/
def P16344765353637328542.Spec : Prop :=
  ∀ n, (P16344765353637328542.a n : ℤ) = A003464 n

end A003464

/-! ## A003464.P985724760497304114

`∑[6*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A003464.P985724760497304114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003464.P985724760497304114

namespace A003464

/-- `∑[6*a(n-1)]` -/
def P985724760497304114.Spec : Prop :=
  ∀ n, (P985724760497304114.a n : ℤ) = A003464 n

end A003464

/-! ## A003464.P11407612760474351823

`7-6*(1-a(n-1))` with `a(0)=0`
-/

namespace A003464.P11407612760474351823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  7 - 6 * (1 - a (n - 1))

end

end A003464.P11407612760474351823

namespace A003464

/-- `7-6*(1-a(n-1))` -/
def P11407612760474351823.Spec : Prop :=
  ∀ n, P11407612760474351823.a n = A003464 n

end A003464

/-! ## A003464.P15642746520726560385

`a(n-1)+6^(n-1)` with `a(0)=0`
-/

namespace A003464.P15642746520726560385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A003464.P15642746520726560385

namespace A003464

/-- `a(n-1)+6^(n-1)` -/
def P15642746520726560385.Spec : Prop :=
  ∀ n, P15642746520726560385.a n = (A003464 n : ℚ)

end A003464

/-! ## A003464.P4736146584949349633

`round(∑[6^((n-1)%(n+2))])`
-/

namespace A003464.P4736146584949349633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003464.P4736146584949349633

namespace A003464

/-- `round(∑[6^((n-1)%(n+2))])` -/
def P4736146584949349633.Spec : Prop :=
  ∀ n, P4736146584949349633.a n = A003464 n

end A003464

/-! ## A003464.P8163823264491521863

`A047851(n)-1`
-/

namespace A003464.P8163823264491521863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047851 n - 1

end

end A003464.P8163823264491521863

namespace A003464

/-- `A047851(n)-1` -/
def P8163823264491521863.Spec : Prop :=
  ∀ n, P8163823264491521863.a n = A003464 n

end A003464

/-! ## A003464.P16429082310011785423

`A329114(Δ[n²])`
-/

namespace A003464.P16429082310011785423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329114 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003464.P16429082310011785423

namespace A003464

/-- `A329114(Δ[n²])` -/
def P16429082310011785423.Spec : Prop :=
  ∀ n, P16429082310011785423.a n = A003464 n

end A003464

/-! ## A003464.P13038661903326448060

`A329115(Δ[n²])`
-/

namespace A003464.P13038661903326448060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329115 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003464.P13038661903326448060

namespace A003464

/-- `A329115(Δ[n²])` -/
def P13038661903326448060.Spec : Prop :=
  ∀ n, P13038661903326448060.a n = A003464 n

end A003464

/-! ## A003464.P9246245452978924596

`∑[2*A015540(n)]-A015540(n)`
-/

namespace A003464.P9246245452978924596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015540 n

end

end A003464.P9246245452978924596

namespace A003464

/-- `∑[2*A015540(n)]-A015540(n)` -/
def P9246245452978924596.Spec : Prop :=
  ∀ n, P9246245452978924596.a n = A003464 n

end A003464

/-! ## A003464.P11840688034390849138

`A091056(n+1)+2*A091056(n)`
-/

namespace A003464.P11840688034390849138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091056 (n + 1) + 2 * A091056 n

end

end A003464.P11840688034390849138

namespace A003464

/-- `A091056(n+1)+2*A091056(n)` -/
def P11840688034390849138.Spec : Prop :=
  ∀ n, P11840688034390849138.a n = A003464 n

end A003464

/-! ## A003464.P9566123712184137717

`A329115(2*(n+1))-A329114(2*n+1)`
-/

namespace A003464.P9566123712184137717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329115 (2 * (n + 1)) - A329114 (2 * n + 1)

end

end A003464.P9566123712184137717

namespace A003464

/-- `A329115(2*(n+1))-A329114(2*n+1)` -/
def P9566123712184137717.Spec : Prop :=
  ∀ n, P9566123712184137717.a n = A003464 n

end A003464

/-! ## A003464.P5784033591881514784

`A329115(2*(n+1))-A329115(2*n+1)`
-/

namespace A003464.P5784033591881514784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329115 (2 * (n + 1)) - A329115 (2 * n + 1)

end

end A003464.P5784033591881514784

namespace A003464

/-- `A329115(2*(n+1))-A329115(2*n+1)` -/
def P5784033591881514784.Spec : Prop :=
  ∀ n, P5784033591881514784.a n = A003464 n

end A003464

/-!
# A003465: Number of ways to cover an n-set.

The programs for A003465, there is no canonical definition to state claims against.
-/

/-! ## A003465.P3763435227028826291

`A000371(n)/2`
-/

namespace A003465.P3763435227028826291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000371 n : ℚ) / 2

end

end A003465.P3763435227028826291

/-! ## A003465.P3261598773567428438

`floor(A318130(n)/2)`
-/

namespace A003465.P3261598773567428438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A318130 n : ℚ) / 2⌋

end

end A003465.P3261598773567428438

/-! ## A003465.P16359888907898193853

`A054244(or(1, 2^n-1))`
-/

namespace A003465.P16359888907898193853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054244 (Int.lor 1 ((2 ^ n : ℤ) - 1)).toNat

end

end A003465.P16359888907898193853

/-! ## A003465.P8548232385843229051

`A054244(∑[a(floor((n+1)/n))^n])` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A003465.P8548232385843229051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  f1 ⌊(n + 1 : ℚ) / (n : ℚ)⌋.toNat ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003465.P8548232385843229051

/-! ## A003465.P658673992106615435

`A054244(A255047(n))`
-/

namespace A003465.P658673992106615435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054244 (A255047 n).toNat

end

end A003465.P658673992106615435

/-!
# A003466: Number of minimal covers of an n-set that have exactly one point which appears in more than one set in the cover.

The programs for A003466, there is no canonical definition to state claims against.
-/

/-! ## A003466.P8556673504479744215

`(n+2)*(A001861(n+1)-A005493(n)-A000110(n+1))`
-/

namespace A003466.P8556673504479744215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A001861 (n + 1) - A005493 n - A000110 (n + 1))

end

end A003466.P8556673504479744215

/-! ## A003466.P10420055149561936812

`A057427(n)*A282575(A152950(n+1))`
-/

namespace A003466.P10420055149561936812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A282575 (A152950 (n + 1)).toNat

end

end A003466.P10420055149561936812

/-! ## A003466.P3793294299816778752

`A282575(A152950(n+1))%A100389(2*(n+1))`
-/

namespace A003466.P3793294299816778752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282575 (A152950 (n + 1)).toNat) (A100389 (2 * (n + 1)))

end

end A003466.P3793294299816778752

/-! ## A003466.P1326682297113422138

`A035347(∑[n+2])`
-/

namespace A003466.P1326682297113422138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035347 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003466.P1326682297113422138

/-! ## A003466.P13495645141301669836

`record[A010054(n+2)*A035347(n+1)]`
-/

namespace A003466.P13495645141301669836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2) * A035347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003466.P13495645141301669836

/-!
# A003467: Number of minimal covers of an n-set that cover exactly 3 points uniquely.

The programs for A003467, the canonical program `A003467.P10500411441833371577` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003467 has offset 3).

The definition of A003467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003467.P10500411441833371577

`(lcm(2, 4^n)+3)*A000292(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003467

/-- `(lcm(2, 4^n)+3)*A000292(n+1)` -/
def P10500411441833371577.Spec : Prop :=
  ∀ n, P10500411441833371577.a n = A003467 (n + 3)

theorem P10500411441833371577.correct : P10500411441833371577.Spec := by
  intro n
  simp only [A003467, Nat.add_sub_cancel]

end A003467

/-! ## A003467.P13167051740465890830

`A035347(∑[n+2]+4)`
-/

namespace A003467.P13167051740465890830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035347 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A003467.P13167051740465890830

namespace A003467

/-- `A035347(∑[n+2]+4)` -/
def P13167051740465890830.Spec : Prop :=
  ∀ n, P13167051740465890830.a n = A003467 (n + 3)

end A003467

/-! ## A003467.P7600647689929059940

`lcm(A033999(n), A035347(A167614(n+1)))`
-/

namespace A003467.P7600647689929059940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A035347 (A167614 (n + 1)).toNat)

end

end A003467.P7600647689929059940

namespace A003467

/-- `lcm(A033999(n), A035347(A167614(n+1)))` -/
def P7600647689929059940.Spec : Prop :=
  ∀ n, (P7600647689929059940.a n : ℤ) = A003467 (n + 3)

end A003467

/-! ## A003467.P9143777899489220964

`or(A000007(n), A035347(A167614(n+1)))`
-/

namespace A003467.P9143777899489220964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A035347 (A167614 (n + 1)).toNat)

end

end A003467.P9143777899489220964

namespace A003467

/-- `or(A000007(n), A035347(A167614(n+1)))` -/
def P9143777899489220964.Spec : Prop :=
  ∀ n, P9143777899489220964.a n = A003467 (n + 3)

end A003467

/-! ## A003467.P14147412089568918450

`A035347(A167614(n+1))%A180737(n+1)`
-/

namespace A003467.P14147412089568918450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035347 (A167614 (n + 1)).toNat) (A180737 (n + 1))

end

end A003467.P14147412089568918450

namespace A003467

/-- `A035347(A167614(n+1))%A180737(n+1)` -/
def P14147412089568918450.Spec : Prop :=
  ∀ n, P14147412089568918450.a n = A003467 (n + 3)

end A003467

/-!
# A003468: Number of minimal 3-covers of a labeled n-set.

The programs for A003468, the canonical program `A003468.P16757615480391825925` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003468 has offset 3).

The definition of A003468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003468.P16757615480391825925

`7^(n+3)/6-6^(n+3)/2+5^(n+3)/2-4^(n+3)/6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003468

/-- `7^(n+3)/6-6^(n+3)/2+5^(n+3)/2-4^(n+3)/6` -/
def P16757615480391825925.Spec : Prop :=
  ∀ n, P16757615480391825925.a n = (A003468 (n + 3) : ℚ)

end A003468

/-! ## A003468.P1649577982686509901

`Δ[A021754(n)-A021744(n)]`
-/

namespace A003468.P1649577982686509901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021754 n - A021744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003468.P1649577982686509901

namespace A003468

/-- `Δ[A021754(n)-A021744(n)]` -/
def P1649577982686509901.Spec : Prop :=
  ∀ n, P1649577982686509901.a n = A003468 (n + 3)

end A003468

/-! ## A003468.P2420241472748858878

`Δ[A021804(n)-A021754(n)]`
-/

namespace A003468.P2420241472748858878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021804 n - A021754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003468.P2420241472748858878

namespace A003468

/-- `Δ[A021804(n)-A021754(n)]` -/
def P2420241472748858878.Spec : Prop :=
  ∀ n, P2420241472748858878.a n = A003468 (n + 3)

end A003468

/-! ## A003468.P14591932073533038807

`A143496(A166136(n+2)+1)`
-/

namespace A003468.P14591932073533038807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143496 (A166136 (n + 2) + 1).toNat

end

end A003468.P14591932073533038807

namespace A003468

/-- `A143496(A166136(n+2)+1)` -/
def P14591932073533038807.Spec : Prop :=
  ∀ n, P14591932073533038807.a n = A003468 (n + 3)

end A003468

/-! ## A003468.P9270228302861903532

`A035348(A167614(n+1))`
-/

namespace A003468.P9270228302861903532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (A167614 (n + 1)).toNat

end

end A003468.P9270228302861903532

namespace A003468

/-- `A035348(A167614(n+1))` -/
def P9270228302861903532.Spec : Prop :=
  ∀ n, P9270228302861903532.a n = A003468 (n + 3)

end A003468

/-!
# A003469: Number of minimal covers of an (n + 1)-set by a collection of n nonempty subsets, a(n) = A035348(n,n-1).

The programs for A003469, the canonical program `A003469.P16994800398514118972` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003469 has offset 1).

The definition of A003469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003469.P16994800398514118972

`(n+2)*(2^(n+1)-(n+1)/2-1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003469

/-- `(n+2)*(2^(n+1)-(n+1)/2-1)` -/
def P16994800398514118972.Spec : Prop :=
  ∀ n, P16994800398514118972.a n = (A003469 (n + 1) : ℚ)

end A003469

/-! ## A003469.P10041138497817499118

`(n+2)*A000295(n+2)/2`
-/

namespace A003469.P10041138497817499118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A000295 (n + 2) : ℚ) / 2

end

end A003469.P10041138497817499118

namespace A003469

/-- `(n+2)*A000295(n+2)/2` -/
def P10041138497817499118.Spec : Prop :=
  ∀ n, P10041138497817499118.a n = (A003469 (n + 1) : ℚ)

end A003469

/-! ## A003469.P4758029831236581173

`∑[∑[∑[ogf((1-x-x^2)/(1-4x+4x^2))]]]`
-/

namespace A003469.P4758029831236581173
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -4, 4] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003469.P4758029831236581173

namespace A003469

/-- `∑[∑[∑[ogf((1-x-x^2)/(1-4x+4x^2))]]]` -/
def P4758029831236581173.Spec : Prop :=
  ∀ n, P4758029831236581173.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P6082323582273445021

`∑[∑[A047859(n)]]`
-/

namespace A003469.P6082323582273445021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003469.P6082323582273445021

namespace A003469

/-- `∑[∑[A047859(n)]]` -/
def P6082323582273445021.Spec : Prop :=
  ∀ n, P6082323582273445021.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P5007155369602635044

`∑[A053221(n+1)]`
-/

namespace A003469.P5007155369602635044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003469.P5007155369602635044

namespace A003469

/-- `∑[A053221(n+1)]` -/
def P5007155369602635044.Spec : Prop :=
  ∀ n, P5007155369602635044.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P2693990401359884092

`∑[A066368(n+1)+n]`
-/

namespace A003469.P2693990401359884092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066368 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003469.P2693990401359884092

namespace A003469

/-- `∑[A066368(n+1)+n]` -/
def P2693990401359884092.Spec : Prop :=
  ∀ n, P2693990401359884092.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P502217130465790486

`A092442(n+1)+∑[n]`
-/

namespace A003469.P502217130465790486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092442 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A003469.P502217130465790486

namespace A003469

/-- `A092442(n+1)+∑[n]` -/
def P502217130465790486.Spec : Prop :=
  ∀ n, P502217130465790486.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P4020775638286398203

`A213569(n+1)-∑[n]`
-/

namespace A003469.P4020775638286398203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213569 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A003469.P4020775638286398203

namespace A003469

/-- `A213569(n+1)-∑[n]` -/
def P4020775638286398203.Spec : Prop :=
  ∀ n, P4020775638286398203.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P8200290756593326530

`∑[A328890(n+1)-n]`
-/

namespace A003469.P8200290756593326530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328890 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003469.P8200290756593326530

namespace A003469

/-- `∑[A328890(n+1)-n]` -/
def P8200290756593326530.Spec : Prop :=
  ∀ n, P8200290756593326530.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P6467423520310817693

`∑[∑[∑[A045891(n+1)]]]`
-/

namespace A003469.P6467423520310817693
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003469.P6467423520310817693

namespace A003469

/-- `∑[∑[∑[A045891(n+1)]]]` -/
def P6467423520310817693.Spec : Prop :=
  ∀ n, P6467423520310817693.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P3505606708142545594

`A048470(n+1)-(n+2)`
-/

namespace A003469.P3505606708142545594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048470 (n + 1) - (n + 2 : ℤ)

end

end A003469.P3505606708142545594

namespace A003469

/-- `A048470(n+1)-(n+2)` -/
def P3505606708142545594.Spec : Prop :=
  ∀ n, P3505606708142545594.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P3966144363300786483

`∑[∑[A045623(n+1)-1]]`
-/

namespace A003469.P3966144363300786483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003469.P3966144363300786483

namespace A003469

/-- `∑[∑[A045623(n+1)-1]]` -/
def P3966144363300786483.Spec : Prop :=
  ∀ n, P3966144363300786483.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P9660782783535284803

`∑[A269059(n+1)]-n²`
-/

namespace A003469.P9660782783535284803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A003469.P9660782783535284803

namespace A003469

/-- `∑[A269059(n+1)]-n²` -/
def P9660782783535284803.Spec : Prop :=
  ∀ n, P9660782783535284803.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P8326077233926421694

`∑[A001792(n+1)-(n+2)]`
-/

namespace A003469.P8326077233926421694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003469.P8326077233926421694

namespace A003469

/-- `∑[A001792(n+1)-(n+2)]` -/
def P8326077233926421694.Spec : Prop :=
  ∀ n, P8326077233926421694.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P15011361384509727311

`A058877(n+2)-∑[n+1]`
-/

namespace A003469.P15011361384509727311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058877 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A003469.P15011361384509727311

namespace A003469

/-- `A058877(n+2)-∑[n+1]` -/
def P15011361384509727311.Spec : Prop :=
  ∀ n, P15011361384509727311.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P2311842607183579181

`A087323(n+1)-∑[n+2]`
-/

namespace A003469.P2311842607183579181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A003469.P2311842607183579181

namespace A003469

/-- `A087323(n+1)-∑[n+2]` -/
def P2311842607183579181.Spec : Prop :=
  ∀ n, P2311842607183579181.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P12721789854574986264

`∑[A132750(n+1)-(n+3)]`
-/

namespace A003469.P12721789854574986264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132750 (n + 1) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003469.P12721789854574986264

namespace A003469

/-- `∑[A132750(n+1)-(n+3)]` -/
def P12721789854574986264.Spec : Prop :=
  ∀ n, P12721789854574986264.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P18437522736787722325

`∑[(n+3)*A000225(n)+1]`
-/

namespace A003469.P18437522736787722325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000225 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003469.P18437522736787722325

namespace A003469

/-- `∑[(n+3)*A000225(n)+1]` -/
def P18437522736787722325.Spec : Prop :=
  ∀ n, P18437522736787722325.a n = A003469 (n + 1)

end A003469

/-! ## A003469.P9992900458481886747

`∑[A049610(n+3)-(n+2)]`
-/

namespace A003469.P9992900458481886747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 3) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003469.P9992900458481886747

namespace A003469

/-- `∑[A049610(n+3)-(n+2)]` -/
def P9992900458481886747.Spec : Prop :=
  ∀ n, P9992900458481886747.a n = A003469 (n + 1)

end A003469

/-!
# A003470: a(n) = n*a(n-1) - a(n-2) + 1 + (-1)^n.

The programs for A003470, the canonical program `A003470.P248807645275884279` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003470 has offset 0).

The definition of A003470 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)-a(n-2)+1+(-1)^n` (program `A003470.P248807645275884279`, by `A003470.P248807645275884279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003470.P248807645275884279

`n*a(n-1)-a(n-2)+1+(-1)^n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003470

/-- `n*a(n-1)-a(n-2)+1+(-1)^n` -/
def P248807645275884279.Spec : Prop :=
  ∀ n, P248807645275884279.a n = A003470 n

theorem P248807645275884279.correct : P248807645275884279.Spec := by
  intro n
  simp only [A003470]

end A003470

/-! ## A003470.P1863558651491639637

`A276080(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A003470.P1863558651491639637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A276080 n + a (n - 2)

end

end A003470.P1863558651491639637

namespace A003470

/-- `A276080(n)+a(n-2)` -/
def P1863558651491639637.Spec : Prop :=
  ∀ n, P1863558651491639637.a n = A003470 n

end A003470

/-! ## A003470.P10223362211736614907

`A259859(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A003470.P10223362211736614907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259859 n + (1 - a (n - 1))

end

end A003470.P10223362211736614907

namespace A003470

/-- `A259859(n)+1-a(n-1)` -/
def P10223362211736614907.Spec : Prop :=
  ∀ n, P10223362211736614907.a n = A003470 n

end A003470

/-! ## A003470.P17339071802746228562

`A193464(A028310(n))+1`
-/

namespace A003470.P17339071802746228562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193464 (A028310 n).toNat + 1

end

end A003470.P17339071802746228562

namespace A003470

/-- `A193464(A028310(n))+1` -/
def P17339071802746228562.Spec : Prop :=
  ∀ n, P17339071802746228562.a n = A003470 n

end A003470

/-! ## A003470.P4450734020950980219

`a(n-1)+A193463(n)+A033999(n)` with `a(0)=1`
-/

namespace A003470.P4450734020950980219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A193463 n + A033999 n)

end

end A003470.P4450734020950980219

namespace A003470

/-- `a(n-1)+A193463(n)+A033999(n)` -/
def P4450734020950980219.Spec : Prop :=
  ∀ n, P4450734020950980219.a n = A003470 n

end A003470

/-! ## A003470.P9544710860607078282

`∑[A193463(n+1)+A033999(n)]-A193463(n+1)`
-/

namespace A003470.P9544710860607078282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193463 (n + 1) + A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A193463 (n + 1)

end

end A003470.P9544710860607078282

namespace A003470

/-- `∑[A193463(n+1)+A033999(n)]-A193463(n+1)` -/
def P9544710860607078282.Spec : Prop :=
  ∀ n, P9544710860607078282.a n = A003470 n

end A003470

/-!
# A003471: Number of permutations with no hits on 2 main diagonals.

The programs for A003471, there is no canonical definition to state claims against.
-/

/-! ## A003471.P9141780424330867459

`A335872(∑[n])`
-/

namespace A003471.P9141780424330867459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335872 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003471.P9141780424330867459

/-! ## A003471.P5563171551069656115

`and(-3, A335872(A000217(n)))`
-/

namespace A003471.P5563171551069656115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A335872 (A000217 n).toNat)

end

end A003471.P5563171551069656115

/-! ## A003471.P7755728692456299379

`A335872(A000217(n))+A011737(n)`
-/

namespace A003471.P7755728692456299379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335872 (A000217 n).toNat + A011737 n

end

end A003471.P7755728692456299379

/-! ## A003471.P3344607014028242466

`A335872(A000217(n))^A178334(n)`
-/

namespace A003471.P3344607014028242466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335872 (A000217 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A003471.P3344607014028242466

/-! ## A003471.P13199577141314979647

`lcm(A000034(n), A335872(A000217(n)))`
-/

namespace A003471.P13199577141314979647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A335872 (A000217 n).toNat)

end

end A003471.P13199577141314979647

/-!
# A003472: a(n) = 2^(n-4)*C(n,4).

The programs for A003472, the canonical program `A003472.P4705505189328772541` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003472 has offset 4).

The definition of A003472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*C(n+4, 4)` (program `A003472.P4705505189328772541`, by `A003472.P4705505189328772541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003472.P4705505189328772541

`2^n*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003472

/-- `2^n*C(n+4, 4)` -/
def P4705505189328772541.Spec : Prop :=
  ∀ n, (P4705505189328772541.a n : ℤ) = A003472 (n + 4)

theorem P4705505189328772541.correct : P4705505189328772541.Spec := by
  intro n
  simp only [A003472, Nat.add_sub_cancel]

end A003472

/-! ## A003472.P12697755017936657175

`2*a(n-1)+A001789(n+3)` with `a(0)=1`
-/

namespace A003472.P12697755017936657175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A001789 (n + 3)

end

end A003472.P12697755017936657175

namespace A003472

/-- `2*a(n-1)+A001789(n+3)` -/
def P12697755017936657175.Spec : Prop :=
  ∀ n, P12697755017936657175.a n = A003472 (n + 4)

end A003472

/-! ## A003472.P7891395533926667435

`2^n*∑[∑[∑[n+1]]]`
-/

namespace A003472.P7891395533926667435
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003472.P7891395533926667435

namespace A003472

/-- `2^n*∑[∑[∑[n+1]]]` -/
def P7891395533926667435.Spec : Prop :=
  ∀ n, (P7891395533926667435.a n : ℤ) = A003472 (n + 4)

end A003472

/-! ## A003472.P8109356621113155890

`floor(2*(n+4)*a(n-1)/n)` with `a(0)=1`
-/

namespace A003472.P8109356621113155890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * ((n + 4 : ℚ) * ((a (n - 1) : ℚ) / (n : ℚ)))⌋

end

end A003472.P8109356621113155890

namespace A003472

/-- `floor(2*(n+4)*a(n-1)/n)` -/
def P8109356621113155890.Spec : Prop :=
  ∀ n, P8109356621113155890.a n = A003472 (n + 4)

end A003472

/-! ## A003472.P15020878465591003749

`∑[A006974(n)]`
-/

namespace A003472.P15020878465591003749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003472.P15020878465591003749

namespace A003472

/-- `∑[A006974(n)]` -/
def P15020878465591003749.Spec : Prop :=
  ∀ n, P15020878465591003749.a n = A003472 (n + 4)

end A003472

/-! ## A003472.P1883106319169502325

`ceil(sqrt(A288876(n))*2^n)`
-/

namespace A003472.P1883106319169502325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A288876 n : ℝ) * (2 ^ n : ℝ)⌉

end

end A003472.P1883106319169502325

namespace A003472

/-- `ceil(sqrt(A288876(n))*2^n)` -/
def P1883106319169502325.Spec : Prop :=
  ∀ n, P1883106319169502325.a n = A003472 (n + 4)

end A003472

/-! ## A003472.P1249233277855762563

`floor(sqrt(A288876(n))*A000079(n))`
-/

namespace A003472.P1249233277855762563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A288876 n : ℝ) * (A000079 n : ℝ)⌋

end

end A003472.P1249233277855762563

namespace A003472

/-- `floor(sqrt(A288876(n))*A000079(n))` -/
def P1249233277855762563.Spec : Prop :=
  ∀ n, P1249233277855762563.a n = A003472 (n + 4)

end A003472

/-! ## A003472.P9327993457671106170

`∑[A082138(n)+A080951(n)]-1`
-/

namespace A003472.P9327993457671106170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082138 n + A080951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A003472.P9327993457671106170

namespace A003472

/-- `∑[A082138(n)+A080951(n)]-1` -/
def P9327993457671106170.Spec : Prop :=
  ∀ n, P9327993457671106170.a n = A003472 (n + 4)

end A003472

/-! ## A003472.P799020646803179650

`A080951(n+1)-A082138(n+1)`
-/

namespace A003472.P799020646803179650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080951 (n + 1) - A082138 (n + 1)

end

end A003472.P799020646803179650

namespace A003472

/-- `A080951(n+1)-A082138(n+1)` -/
def P799020646803179650.Spec : Prop :=
  ∀ n, P799020646803179650.a n = A003472 (n + 4)

end A003472

/-! ## A003472.P13465449268832265054

`A006974(n+1)-A001789(n+4)`
-/

namespace A003472.P13465449268832265054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006974 (n + 1) - A001789 (n + 4)

end

end A003472.P13465449268832265054

namespace A003472

/-- `A006974(n+1)-A001789(n+4)` -/
def P13465449268832265054.Spec : Prop :=
  ∀ n, P13465449268832265054.a n = A003472 (n + 4)

end A003472

/-! ## A003472.P5536642387993806627

`A213432(n+3)+A001789(n+3)`
-/

namespace A003472.P5536642387993806627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213432 (n + 3) + A001789 (n + 3)

end

end A003472.P5536642387993806627

namespace A003472

/-- `A213432(n+3)+A001789(n+3)` -/
def P5536642387993806627.Spec : Prop :=
  ∀ n, P5536642387993806627.a n = A003472 (n + 4)

end A003472

/-! ## A003472.P3380092879049934576

`A080951(n+1)-A001789(n+4)/2`
-/

namespace A003472.P3380092879049934576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080951 (n + 1) : ℚ) - (A001789 (n + 4) : ℚ) / 2

end

end A003472.P3380092879049934576

namespace A003472

/-- `A080951(n+1)-A001789(n+4)/2` -/
def P3380092879049934576.Spec : Prop :=
  ∀ n, P3380092879049934576.a n = (A003472 (n + 4) : ℚ)

end A003472

/-! ## A003472.P853697636994559145

`A344564(n)/3`
-/

namespace A003472.P853697636994559145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344564 n : ℚ) / 3

end

end A003472.P853697636994559145

namespace A003472

/-- `A344564(n)/3` -/
def P853697636994559145.Spec : Prop :=
  ∀ n, P853697636994559145.a n = (A003472 (n + 4) : ℚ)

end A003472

/-! ## A003472.P708057211326073443

`Δ[A277935(n+1)]*A000079(n)/2`
-/

namespace A003472.P708057211326073443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A000079 n : ℚ) / 2

end

end A003472.P708057211326073443

namespace A003472

/-- `Δ[A277935(n+1)]*A000079(n)/2` -/
def P708057211326073443.Spec : Prop :=
  ∀ n, P708057211326073443.a n = (A003472 (n + 4) : ℚ)

theorem P708057211326073443.correct : P708057211326073443.Spec := by
  intro n
  simp only [A003472, Nat.add_sub_cancel, A003472.P708057211326073443.f1, A003472.P708057211326073443.a, A003472.P4705505189328772541.a, A000079, A000079.P10855139691139572931.a, A277935, A277935.P11391963306517879859.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003472

/-! ## A003472.P14484163486383868941

`A001816(n)/12`
-/

namespace A003472.P14484163486383868941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001816 n : ℚ) / 12

end

end A003472.P14484163486383868941

namespace A003472

/-- `A001816(n)/12` -/
def P14484163486383868941.Spec : Prop :=
  ∀ n, P14484163486383868941.a n = (A003472 (n + 4) : ℚ)

theorem P14484163486383868941.correct : P14484163486383868941.Spec := by
  intro n
  simp only [A003472, Nat.add_sub_cancel, A003472.P14484163486383868941.a, A003472.P4705505189328772541.a, A001816, A001816.P881623879304099309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003472

/-! ## A003472.P10487736248253344023

`2*A006975(n)-∑[A006975(n)]`
-/

namespace A003472.P10487736248253344023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006975 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003472.P10487736248253344023

namespace A003472

/-- `2*A006975(n)-∑[A006975(n)]` -/
def P10487736248253344023.Spec : Prop :=
  ∀ n, P10487736248253344023.a n = A003472 (n + 4)

end A003472

/-! ## A003472.P2434442764703455691

`2*A006975(n)-A054849(n+5)`
-/

namespace A003472.P2434442764703455691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006975 n - A054849 (n + 5)

end

end A003472.P2434442764703455691

namespace A003472

/-- `2*A006975(n)-A054849(n+5)` -/
def P2434442764703455691.Spec : Prop :=
  ∀ n, P2434442764703455691.a n = A003472 (n + 4)

end A003472

/-! ## A003472.P2131774245497217458

`2*(n+4)*a(n-1)/n` with `a(0)=1`
-/

namespace A003472.P2131774245497217458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * (n + 4) : ℚ) * a (n - 1) / (n : ℚ)

end

end A003472.P2131774245497217458

namespace A003472

/-- `2*(n+4)*a(n-1)/n` -/
def P2131774245497217458.Spec : Prop :=
  ∀ n, P2131774245497217458.a n = (A003472 (n + 4) : ℚ)

end A003472

/-! ## A003472.P13227208684809570094

`A000079(n)*A051880(n)/(2*n+1)`
-/

namespace A003472.P13227208684809570094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A051880 n : ℚ) / (2 * n + 1 : ℚ)

end

end A003472.P13227208684809570094

namespace A003472

/-- `A000079(n)*A051880(n)/(2*n+1)` -/
def P13227208684809570094.Spec : Prop :=
  ∀ n, P13227208684809570094.a n = (A003472 (n + 4) : ℚ)

end A003472

/-! ## A003472.P2118918290470494844

`A020714(n)*A034263(n)/A016813(n+1)`
-/

namespace A003472.P2118918290470494844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020714 n * A034263 n : ℚ) / (A016813 (n + 1) : ℚ)

end

end A003472.P2118918290470494844

namespace A003472

/-- `A020714(n)*A034263(n)/A016813(n+1)` -/
def P2118918290470494844.Spec : Prop :=
  ∀ n, P2118918290470494844.a n = (A003472 (n + 4) : ℚ)

theorem P2118918290470494844.correct : P2118918290470494844.Spec := by
  intro n
  simp only [A003472, Nat.add_sub_cancel, A003472.P2118918290470494844.a, A003472.P4705505189328772541.a, A016813, A016813.P15626904835145642280.a, A020714, A020714.P4672987561035728998.a, A034263, A034263.P5868129197671622568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003472

/-!
# A003473: Generalized Euler phi function (for p=2).

The programs for A003473, there is no canonical definition to state claims against.
-/

/-! ## A003473.P6365941258713850489

`(n+1)*A027362(n+1)`
-/

namespace A003473.P6365941258713850489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027362 (n + 1)

end

end A003473.P6365941258713850489

/-! ## A003473.P14486157954354218600

`2^(n+1)-A086324(n+1)`
-/

namespace A003473.P14486157954354218600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A086324 (n + 1)

end

end A003473.P14486157954354218600

/-! ## A003473.P9549615840985328297

`and(-A086324(n+1), A126646(n))`
-/

namespace A003473.P9549615840985328297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A086324 (n + 1)) (A126646 n)

end

end A003473.P9549615840985328297

/-! ## A003473.P9780529989091293680

`A005803(n)+A100314(n)-A086324(n+1)`
-/

namespace A003473.P9780529989091293680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 n + (A100314 n - A086324 (n + 1))

end

end A003473.P9780529989091293680

/-! ## A003473.P14522895398043317395

`A005009(n)-xor(A005009(n), A086324(n+1))`
-/

namespace A003473.P14522895398043317395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n - Int.xor (A005009 n) (A086324 (n + 1))

end

end A003473.P14522895398043317395

/-!
# A003474: Generalized Euler phi function (for p=3).

The programs for A003474, there is no canonical definition to state claims against.
-/

/-! ## A003474.P257789160633700633

`(n+1)*A094678(n+1)`
-/

namespace A003474.P257789160633700633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A094678 (n + 1)

end

end A003474.P257789160633700633

/-! ## A003474.P3061862117906388548

`A192513(n+1)/2^A028310(n)*(n+1)`
-/

namespace A003474.P3061862117906388548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192513 (n + 1) : ℚ) / (2 : ℚ) ^ (A028310 n : ℤ) * (n + 1 : ℚ)

end

end A003474.P3061862117906388548

/-! ## A003474.P7515989171814822642

`(n+1)*A192513(n+1)/A000079(A028310(n))`
-/

namespace A003474.P7515989171814822642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A192513 (n + 1) : ℚ) / (A000079 (A028310 n).toNat : ℚ))

end

end A003474.P7515989171814822642

/-! ## A003474.P14203778018691493394

`(n+1)*A192513(n+1)/A060546(A004277(n))`
-/

namespace A003474.P14203778018691493394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A192513 (n + 1) : ℚ) / (A060546 (A004277 n).toNat : ℚ))

end

end A003474.P14203778018691493394

/-! ## A003474.P14191534473418685044

`record[A033930(n)*A094678(A033930(n))]`
-/

namespace A003474.P14191534473418685044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 n * A094678 (A033930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003474.P14191534473418685044

/-!
# A003475: Expansion of Sum_{k>0} (-1)^(k+1) q^(k^2) / ((1-q)(1-q^3)(1-q^5)...(1-q^(2k-1))).

The programs for A003475, there is no canonical definition to state claims against.
-/

/-! ## A003475.P1455787342616675129

`A053251(n+1)-2*A192262(n+1)`
-/

namespace A003475.P1455787342616675129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 (n + 1) - 2 * A192262 (n + 1)

end

end A003475.P1455787342616675129

/-! ## A003475.P1956656595659996151

`A056594(A214650(n+1)%A003680(n+1))`
-/

namespace A003475.P1956656595659996151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Int.tmod (A214650 (n + 1)) (A003680 (n + 1))).toNat

end

end A003475.P1956656595659996151

/-! ## A003475.P5105998233758287873

`A016011(A214963(A004468(n))%A315452(n))`
-/

namespace A003475.P5105998233758287873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016011 (Int.tmod (A214963 (A004468 n).toNat) (A315452 n)).toNat

end

end A003475.P5105998233758287873

/-! ## A003475.P1718148827439455126

`A008683(A118113(n)*A347625(A309353(n+1)))`
-/

namespace A003475.P1718148827439455126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A118113 n * A347625 (A309353 (n + 1)).toNat).toNat

end

end A003475.P1718148827439455126

/-!
# A003476: a(n) = a(n-1) + 2*a(n-3).

The programs for A003476, the canonical program `A003476.P2292513190132847327` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003476 has offset 1).

The definition of A003476 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-3)` (program `A003476.P2292513190132847327`, by `A003476.P2292513190132847327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003476.P2292513190132847327

`a(n-1)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003476

/-- `a(n-1)+2*a(n-3)` -/
def P2292513190132847327.Spec : Prop :=
  ∀ n, (P2292513190132847327.a n : ℤ) = A003476 (n + 1)

theorem P2292513190132847327.correct : P2292513190132847327.Spec := by
  intro n
  simp only [A003476, Nat.add_sub_cancel]

end A003476

/-! ## A003476.P8173061351553028757

`1/4*abs(A078044(n+3))`
-/

namespace A003476.P8173061351553028757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (|A078044 (n + 3)| : ℚ)

end

end A003476.P8173061351553028757

namespace A003476

/-- `1/4*abs(A078044(n+3))` -/
def P8173061351553028757.Spec : Prop :=
  ∀ n, P8173061351553028757.a n = (A003476 (n + 1) : ℚ)

end A003476

/-! ## A003476.P11250928833118332364

`ogf((1+x+x^2)/(1-x-2x^3))`
-/

namespace A003476.P11250928833118332364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, 0, -2] n

end

end A003476.P11250928833118332364

namespace A003476

/-- `ogf((1+x+x^2)/(1-x-2x^3))` -/
def P11250928833118332364.Spec : Prop :=
  ∀ n, P11250928833118332364.a n = A003476 (n + 1)

end A003476

/-! ## A003476.P1643963477758710787

`a(n-3)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A003476.P1643963477758710787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) + (a (n - 1) + a (n - 3))

end

end A003476.P1643963477758710787

namespace A003476

/-- `a(n-3)+a(n-1)+a(n-3)` -/
def P1643963477758710787.Spec : Prop :=
  ∀ n, (P1643963477758710787.a n : ℤ) = A003476 (n + 1)

end A003476

/-! ## A003476.P11155504716914193540

`3*a(n-3)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A003476.P11155504716914193540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 1))

end

end A003476.P11155504716914193540

namespace A003476

/-- `3*a(n-3)-(a(n-3)-a(n-1))` -/
def P11155504716914193540.Spec : Prop :=
  ∀ n, P11155504716914193540.a n = A003476 (n + 1)

end A003476

/-! ## A003476.P10924251088285204969

`A203175(n)+a(n-1)` with `a(0)=1`
-/

namespace A003476.P10924251088285204969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A203175 n + a (n - 1)

end

end A003476.P10924251088285204969

namespace A003476

/-- `A203175(n)+a(n-1)` -/
def P10924251088285204969.Spec : Prop :=
  ∀ n, P10924251088285204969.a n = A003476 (n + 1)

end A003476

/-! ## A003476.P6373488181438367905

`A303714(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A003476.P6373488181438367905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A303714 (n + 1) - a (n - 1)

end

end A003476.P6373488181438367905

namespace A003476

/-- `A303714(n+1)-a(n-1)` -/
def P6373488181438367905.Spec : Prop :=
  ∀ n, P6373488181438367905.a n = A003476 (n + 1)

end A003476

/-! ## A003476.P16692457814797127657

`A203175(n+2)-A052537(n+1)/2`
-/

namespace A003476.P16692457814797127657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203175 (n + 2) : ℚ) - (A052537 (n + 1) : ℚ) / 2

end

end A003476.P16692457814797127657

namespace A003476

/-- `A203175(n+2)-A052537(n+1)/2` -/
def P16692457814797127657.Spec : Prop :=
  ∀ n, P16692457814797127657.a n = (A003476 (n + 1) : ℚ)

end A003476

/-! ## A003476.P10022758884492121307

`A003229(n+1)+A052537(n)-A203175(n+1)`
-/

namespace A003476.P10022758884492121307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 (n + 1) + (A052537 n - A203175 (n + 1))

end

end A003476.P10022758884492121307

namespace A003476

/-- `A003229(n+1)+A052537(n)-A203175(n+1)` -/
def P10022758884492121307.Spec : Prop :=
  ∀ n, P10022758884492121307.a n = A003476 (n + 1)

end A003476

/-! ## A003476.P15860162764991463178

`A203175(n+1)+A203175(n+2)-A003229(n)`
-/

namespace A003476.P15860162764991463178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203175 (n + 1) + (A203175 (n + 2) - A003229 n)

end

end A003476.P15860162764991463178

namespace A003476

/-- `A203175(n+1)+A203175(n+2)-A003229(n)` -/
def P15860162764991463178.Spec : Prop :=
  ∀ n, P15860162764991463178.a n = A003476 (n + 1)

end A003476

/-! ## A003476.P8032700336344894878

`A203175(n+2)+A077949(n)-A203175(n+1)`
-/

namespace A003476.P8032700336344894878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203175 (n + 2) + (A077949 n - A203175 (n + 1))

end

end A003476.P8032700336344894878

namespace A003476

/-- `A203175(n+2)+A077949(n)-A203175(n+1)` -/
def P8032700336344894878.Spec : Prop :=
  ∀ n, P8032700336344894878.a n = A003476 (n + 1)

end A003476

/-! ## A003476.P4476129101501001259

`A203175(n+3)/2`
-/

namespace A003476.P4476129101501001259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203175 (n + 3) : ℚ) / 2

end

end A003476.P4476129101501001259

namespace A003476

/-- `A203175(n+3)/2` -/
def P4476129101501001259.Spec : Prop :=
  ∀ n, P4476129101501001259.a n = (A003476 (n + 1) : ℚ)

end A003476

/-! ## A003476.P12978161712593416915

`Δ[A164395(n+1)/2]`
-/

namespace A003476.P12978161712593416915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164395 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003476.P12978161712593416915

namespace A003476

/-- `Δ[A164395(n+1)/2]` -/
def P12978161712593416915.Spec : Prop :=
  ∀ n, P12978161712593416915.a n = (A003476 (n + 1) : ℚ)

end A003476

/-! ## A003476.P6392933104283160117

`Δ[A227036(n+1)/4]`
-/

namespace A003476.P6392933104283160117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227036 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003476.P6392933104283160117

namespace A003476

/-- `Δ[A227036(n+1)/4]` -/
def P6392933104283160117.Spec : Prop :=
  ∀ n, P6392933104283160117.a n = (A003476 (n + 1) : ℚ)

end A003476

/-!
# A003477: Expansion of 1/((1-2x)(1+x^2)(1-x-2x^3)).

The programs for A003477, the canonical program `A003477.P6665306960733024757` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003477 has offset 0).

The definition of A003477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2-5x^3+6x^4-2x^5+4x^6))` (program `A003477.P6665306960733024757`, by `A003477.P6665306960733024757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003477.P6665306960733024757

`ogf(1/(1-3x+3x^2-5x^3+6x^4-2x^5+4x^6))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003477

/-- `ogf(1/(1-3x+3x^2-5x^3+6x^4-2x^5+4x^6))` -/
def P6665306960733024757.Spec : Prop :=
  ∀ n, P6665306960733024757.a n = A003477 n

theorem P6665306960733024757.correct : P6665306960733024757.Spec := by
  intro n
  simp only [A003477]

end A003477

/-! ## A003477.P6212863884085015014

`A003478(n)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A003477.P6212863884085015014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A003478 n - a (n - 2)

end

end A003477.P6212863884085015014

namespace A003477

/-- `A003478(n)-a(n-2)` -/
def P6212863884085015014.Spec : Prop :=
  ∀ n, P6212863884085015014.a n = A003477 n

end A003477

/-! ## A003477.P11158735837685853929

`∑[Δ[A077854(n)]-A003229(n)]`
-/

namespace A003477.P11158735837685853929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A003229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003477.P11158735837685853929

namespace A003477

/-- `∑[Δ[A077854(n)]-A003229(n)]` -/
def P11158735837685853929.Spec : Prop :=
  ∀ n, P11158735837685853929.a n = A003477 n

end A003477

/-! ## A003477.P12366204024598619754

`∑[A007910(n+1)-A003229(n)]`
-/

namespace A003477.P12366204024598619754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (n + 1) - A003229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003477.P12366204024598619754

namespace A003477

/-- `∑[A007910(n+1)-A003229(n)]` -/
def P12366204024598619754.Spec : Prop :=
  ∀ n, P12366204024598619754.a n = A003477 n

end A003477

/-! ## A003477.P3177510957264786970

`A077854(n+1)-A003479(n+1)`
-/

namespace A003477.P3177510957264786970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 (n + 1) - A003479 (n + 1)

end

end A003477.P3177510957264786970

namespace A003477

/-- `A077854(n+1)-A003479(n+1)` -/
def P3177510957264786970.Spec : Prop :=
  ∀ n, P3177510957264786970.a n = A003477 n

end A003477

/-! ## A003477.P2021865962105574285

`∑[Δ[A077854(n)]-A077949(n+1)]`
-/

namespace A003477.P2021865962105574285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A077949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003477.P2021865962105574285

namespace A003477

/-- `∑[Δ[A077854(n)]-A077949(n+1)]` -/
def P2021865962105574285.Spec : Prop :=
  ∀ n, P2021865962105574285.a n = A003477 n

end A003477

/-! ## A003477.P7273523776077339002

`∑[A007910(n+1)-A077949(n+1)]`
-/

namespace A003477.P7273523776077339002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (n + 1) - A077949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003477.P7273523776077339002

namespace A003477

/-- `∑[A007910(n+1)-A077949(n+1)]` -/
def P7273523776077339002.Spec : Prop :=
  ∀ n, P7273523776077339002.a n = A003477 n

end A003477

/-!
# A003478: Expansion of 1/((1-2*x)*(1-x-2*x^3)).

The programs for A003478, the canonical program `A003478.P3715067962244705285` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003478 has offset 0).

The definition of A003478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+2x^2-2x^3+4x^4))` (program `A003478.P3715067962244705285`, by `A003478.P3715067962244705285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003478.P3715067962244705285

`ogf(1/(1-3x+2x^2-2x^3+4x^4))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003478

/-- `ogf(1/(1-3x+2x^2-2x^3+4x^4))` -/
def P3715067962244705285.Spec : Prop :=
  ∀ n, P3715067962244705285.a n = A003478 n

theorem P3715067962244705285.correct : P3715067962244705285.Spec := by
  intro n
  simp only [A003478]

end A003478

/-! ## A003478.P8534970989444448014

`2^(n+2)-A003476(n+3)`
-/

namespace A003478.P8534970989444448014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A003476 (n + 3)

end

end A003478.P8534970989444448014

namespace A003478

/-- `2^(n+2)-A003476(n+3)` -/
def P8534970989444448014.Spec : Prop :=
  ∀ n, P8534970989444448014.a n = A003478 n

end A003478

/-! ## A003478.P7621971092986582590

`A077949(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A003478.P7621971092986582590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077949 n + 2 * a (n - 1)

end

end A003478.P7621971092986582590

namespace A003478

/-- `A077949(n)+2*a(n-1)` -/
def P7621971092986582590.Spec : Prop :=
  ∀ n, P7621971092986582590.a n = A003478 n

end A003478

/-! ## A003478.P3423512752492261076

`∑[2^(n+1)-A203175(n+2)]`
-/

namespace A003478.P3423512752492261076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A203175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003478.P3423512752492261076

namespace A003478

/-- `∑[2^(n+1)-A203175(n+2)]` -/
def P3423512752492261076.Spec : Prop :=
  ∀ n, P3423512752492261076.a n = A003478 n

end A003478

/-! ## A003478.P11274280619875016303

`∑[A052537(n)+a(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A003478.P11274280619875016303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A052537 n + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003478.P11274280619875016303

namespace A003478

/-- `∑[A052537(n)+a(n-1)+a(n-1)]` -/
def P11274280619875016303.Spec : Prop :=
  ∀ n, P11274280619875016303.a n = A003478 n

end A003478

/-! ## A003478.P1758973774489759783

`∑[A000079(n+1)-Δ[A164395(n)]]`
-/

namespace A003478.P1758973774489759783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164395 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003478.P1758973774489759783

namespace A003478

/-- `∑[A000079(n+1)-Δ[A164395(n)]]` -/
def P1758973774489759783.Spec : Prop :=
  ∀ n, P1758973774489759783.a n = A003478 n

end A003478

/-! ## A003478.P5857463308270973360

`xor(∑[A000079(n+1)], A003476(n+3))`
-/

namespace A003478.P5857463308270973360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A003476 (n + 3))

end

end A003478.P5857463308270973360

namespace A003478

/-- `xor(∑[A000079(n+1)], A003476(n+3))` -/
def P5857463308270973360.Spec : Prop :=
  ∀ n, P5857463308270973360.a n = A003478 n

end A003478

/-! ## A003478.P3893031971695675817

`A000079(n+2)-(A164395(n+1)+1)`
-/

namespace A003478.P3893031971695675817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - (A164395 (n + 1) + 1)

end

end A003478.P3893031971695675817

namespace A003478

/-- `A000079(n+2)-(A164395(n+1)+1)` -/
def P3893031971695675817.Spec : Prop :=
  ∀ n, P3893031971695675817.a n = A003478 n

end A003478

/-! ## A003478.P10481974527302046963

`∑[A000051(n+1)-(A203175(n+2)+1)]`
-/

namespace A003478.P10481974527302046963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A203175 (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003478.P10481974527302046963

namespace A003478

/-- `∑[A000051(n+1)-(A203175(n+2)+1)]` -/
def P10481974527302046963.Spec : Prop :=
  ∀ n, P10481974527302046963.a n = A003478 n

end A003478

/-!
# A003479: Expansion of 1/((1-x)*(1-x-2*x^3)).

The programs for A003479, the canonical program `A003479.P11900473487377295175` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003479 has offset 0).

The definition of A003479 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-2x^3+2x^4))` (program `A003479.P11900473487377295175`, by `A003479.P11900473487377295175.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003479.P11900473487377295175

`ogf(1/(1-2x+x^2-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003479

/-- `ogf(1/(1-2x+x^2-2x^3+2x^4))` -/
def P11900473487377295175.Spec : Prop :=
  ∀ n, P11900473487377295175.a n = A003479 n

theorem P11900473487377295175.correct : P11900473487377295175.Spec := by
  intro n
  simp only [A003479]

end A003479

/-! ## A003479.P7221362769631733412

`∑[a(n-1)+2*a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A003479.P7221362769631733412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003479.P7221362769631733412

namespace A003479

/-- `∑[a(n-1)+2*a(n-3)]` -/
def P7221362769631733412.Spec : Prop :=
  ∀ n, (P7221362769631733412.a n : ℤ) = A003479 n

end A003479

/-! ## A003479.P12628485210434842439

`∑[a(n-1)+lcm(2, a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A003479.P12628485210434842439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + Nat.lcm 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003479.P12628485210434842439

namespace A003479

/-- `∑[a(n-1)+lcm(2, a(n-3))]` -/
def P12628485210434842439.Spec : Prop :=
  ∀ n, (P12628485210434842439.a n : ℤ) = A003479 n

end A003479

/-! ## A003479.P6456150021435176309

`2*a(n-3)+a(n-1)+1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A003479.P6456150021435176309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * a (n - 3) + (a (n - 1) + 1)

end

end A003479.P6456150021435176309

namespace A003479

/-- `2*a(n-3)+a(n-1)+1` -/
def P6456150021435176309.Spec : Prop :=
  ∀ n, (P6456150021435176309.a n : ℤ) = A003479 n

end A003479

/-! ## A003479.P937576138974823349

`∑[a(n-3)+a(n-1)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A003479.P937576138974823349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 3) + (f1 (n - 1) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003479.P937576138974823349

namespace A003479

/-- `∑[a(n-3)+a(n-1)+a(n-3)]` -/
def P937576138974823349.Spec : Prop :=
  ∀ n, (P937576138974823349.a n : ℤ) = A003479 n

end A003479

/-! ## A003479.P14141976647257613582

`a(n-1)+a(n-3)+a(n-3)+1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A003479.P14141976647257613582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) + (a (n - 3) + (a (n - 3) + 1))

end

end A003479.P14141976647257613582

namespace A003479

/-- `a(n-1)+a(n-3)+a(n-3)+1` -/
def P14141976647257613582.Spec : Prop :=
  ∀ n, (P14141976647257613582.a n : ℤ) = A003479 n

end A003479

/-! ## A003479.P7813091479441380394

`∑[A077949(n)]`
-/

namespace A003479.P7813091479441380394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003479.P7813091479441380394

namespace A003479

/-- `∑[A077949(n)]` -/
def P7813091479441380394.Spec : Prop :=
  ∀ n, P7813091479441380394.a n = A003479 n

end A003479

/-! ## A003479.P6051776672288363215

`∑[∑[A052537(n)]]`
-/

namespace A003479.P6051776672288363215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003479.P6051776672288363215

namespace A003479

/-- `∑[∑[A052537(n)]]` -/
def P6051776672288363215.Spec : Prop :=
  ∀ n, P6051776672288363215.a n = A003479 n

end A003479

/-! ## A003479.P10397866852023119437

`∑[abs(∑[A078044(n)])]`
-/

namespace A003479.P10397866852023119437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003479.P10397866852023119437

namespace A003479

/-- `∑[abs(∑[A078044(n)])]` -/
def P10397866852023119437.Spec : Prop :=
  ∀ n, P10397866852023119437.a n = A003479 n

end A003479

/-! ## A003479.P9661792637092300867

`∑[A003229(abs(1-n))]`
-/

namespace A003479.P9661792637092300867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003479.P9661792637092300867

namespace A003479

/-- `∑[A003229(abs(1-n))]` -/
def P9661792637092300867.Spec : Prop :=
  ∀ n, P9661792637092300867.a n = A003479 n

end A003479

/-! ## A003479.P8869741387566931482

`A003229(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A003479.P8869741387566931482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003229 (n - 1) + a (n - 1)

end

end A003479.P8869741387566931482

namespace A003479

/-- `A003229(n-1)+a(n-1)` -/
def P8869741387566931482.Spec : Prop :=
  ∀ n, P8869741387566931482.a n = A003479 n

end A003479

/-! ## A003479.P13673123742717406221

`(A003229(n+2)-1)/2`
-/

namespace A003479.P13673123742717406221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003229 (n + 2) - 1 : ℚ) / 2

end

end A003479.P13673123742717406221

namespace A003479

/-- `(A003229(n+2)-1)/2` -/
def P13673123742717406221.Spec : Prop :=
  ∀ n, P13673123742717406221.a n = (A003479 n : ℚ)

end A003479

/-! ## A003479.P13689238464649339832

`(A077949(n+3)-1)/2`
-/

namespace A003479.P13689238464649339832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077949 (n + 3) - 1 : ℚ) / 2

end

end A003479.P13689238464649339832

namespace A003479

/-- `(A077949(n+3)-1)/2` -/
def P13689238464649339832.Spec : Prop :=
  ∀ n, P13689238464649339832.a n = (A003479 n : ℚ)

end A003479

/-! ## A003479.P8140153597131724708

`∑[Δ[A003229(n+1)]/2]`
-/

namespace A003479.P8140153597131724708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003479.P8140153597131724708

namespace A003479

/-- `∑[Δ[A003229(n+1)]/2]` -/
def P8140153597131724708.Spec : Prop :=
  ∀ n, P8140153597131724708.a n = (A003479 n : ℚ)

end A003479

/-! ## A003479.P10037035151781488293

`A164395(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A003479.P10037035151781488293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A164395 n - a (n - 2)

end

end A003479.P10037035151781488293

namespace A003479

/-- `A164395(n)-a(n-2)` -/
def P10037035151781488293.Spec : Prop :=
  ∀ n, P10037035151781488293.a n = A003479 n

end A003479

/-! ## A003479.P17408058026576032076

`∑[A003229(n)]+1-A003229(n)`
-/

namespace A003479.P17408058026576032076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A003229 n)

end

end A003479.P17408058026576032076

namespace A003479

/-- `∑[A003229(n)]+1-A003229(n)` -/
def P17408058026576032076.Spec : Prop :=
  ∀ n, P17408058026576032076.a n = A003479 n

end A003479

/-! ## A003479.P16937962567336519638

`∑[abs(A077974(n))]`
-/

namespace A003479.P16937962567336519638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077974 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003479.P16937962567336519638

namespace A003479

/-- `∑[abs(A077974(n))]` -/
def P16937962567336519638.Spec : Prop :=
  ∀ n, P16937962567336519638.a n = A003479 n

end A003479

/-! ## A003479.P17544715210651025354

`A227036(n)-∑[A003229(n)]`
-/

namespace A003479.P17544715210651025354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227036 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003479.P17544715210651025354

namespace A003479

/-- `A227036(n)-∑[A003229(n)]` -/
def P17544715210651025354.Spec : Prop :=
  ∀ n, P17544715210651025354.a n = A003479 n

end A003479

/-! ## A003479.P17944292867112517080

`∑[A003476(n+2)-Δ[A003476(n+2)]]`
-/

namespace A003479.P17944292867112517080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003479.P17944292867112517080

namespace A003479

/-- `∑[A003476(n+2)-Δ[A003476(n+2)]]` -/
def P17944292867112517080.Spec : Prop :=
  ∀ n, P17944292867112517080.a n = A003479 n

end A003479

/-! ## A003479.P8123588580537203513

`A164399(n+4)-A164410(n+4)`
-/

namespace A003479.P8123588580537203513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164399 (n + 4) - A164410 (n + 4)

end

end A003479.P8123588580537203513

namespace A003479

/-- `A164399(n+4)-A164410(n+4)` -/
def P8123588580537203513.Spec : Prop :=
  ∀ n, P8123588580537203513.a n = A003479 n

end A003479

/-!
# A003480: a(0) = 1, a(1) = 2, a(2) = 7, for n > 2, a(n) = 4*a(n-1) - 2*a(n-2).

The programs for A003480, the canonical program `A003480.P4618945227281260986` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003480 has offset 0).

The definition of A003480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-2*a(n-2)` (program `A003480.P4618945227281260986`, by `A003480.P4618945227281260986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003480.P4618945227281260986

`4*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003480

/-- `4*a(n-1)-2*a(n-2)` -/
def P4618945227281260986.Spec : Prop :=
  ∀ n, P4618945227281260986.a n = A003480 n

theorem P4618945227281260986.correct : P4618945227281260986.Spec := by
  intro n
  simp only [A003480]

end A003480

/-! ## A003480.P11602540672596978920

`ogf((1-2x+x^2)/(1-4x+2x^2))`
-/

namespace A003480.P11602540672596978920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -4, 2] n

end

end A003480.P11602540672596978920

namespace A003480

/-- `ogf((1-2x+x^2)/(1-4x+2x^2))` -/
def P11602540672596978920.Spec : Prop :=
  ∀ n, P11602540672596978920.a n = A003480 n

end A003480

/-! ## A003480.P16454707511567244955

`ceil((sqrt(2)+2)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A003480.P16454707511567244955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A003480.P16454707511567244955

namespace A003480

/-- `ceil((sqrt(2)+2)*a(n-1))` -/
def P16454707511567244955.Spec : Prop :=
  ∀ n, P16454707511567244955.a n = A003480 n

end A003480

/-! ## A003480.P3003046202729529412

`round((sqrt(2)+2)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A003480.P3003046202729529412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A003480.P3003046202729529412

namespace A003480

/-- `round((sqrt(2)+2)*a(n-1))` -/
def P3003046202729529412.Spec : Prop :=
  ∀ n, P3003046202729529412.a n = A003480 n

end A003480

/-! ## A003480.P15980474567233053314

`Δ[floor((sqrt(2)+2)*a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A003480.P15980474567233053314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003480.P15980474567233053314

namespace A003480

/-- `Δ[floor((sqrt(2)+2)*a(n-1))]` -/
def P15980474567233053314.Spec : Prop :=
  ∀ n, P15980474567233053314.a n = A003480 n

end A003480

/-! ## A003480.P8706602323899195381

`∑[floor((sqrt(2)+2)*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A003480.P8706602323899195381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003480.P8706602323899195381

namespace A003480

/-- `∑[floor((sqrt(2)+2)*a(n-1))]` -/
def P8706602323899195381.Spec : Prop :=
  ∀ n, P8706602323899195381.a n = A003480 n

end A003480

/-! ## A003480.P8124060848958889576

`Δ[floor(2*a(n-1)/(2-sqrt(2)))]` with `a(0)=0, a(1)=1`
-/

namespace A003480.P8124060848958889576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊(2 * f1 (n - 1) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003480.P8124060848958889576

namespace A003480

/-- `Δ[floor(2*a(n-1)/(2-sqrt(2)))]` -/
def P8124060848958889576.Spec : Prop :=
  ∀ n, P8124060848958889576.a n = A003480 n

end A003480

/-! ## A003480.P2304040416356144717

`ceil(A007070(n)/2)`
-/

namespace A003480.P2304040416356144717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007070 n : ℚ) / 2⌉

end

end A003480.P2304040416356144717

namespace A003480

/-- `ceil(A007070(n)/2)` -/
def P2304040416356144717.Spec : Prop :=
  ∀ n, P2304040416356144717.a n = A003480 n

end A003480

/-! ## A003480.P6585234079975096280

`round(A007052(n)/sqrt(2))`
-/

namespace A003480.P6585234079975096280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007052 n : ℝ) / Real.sqrt (2 : ℝ))

end

end A003480.P6585234079975096280

namespace A003480

/-- `round(A007052(n)/sqrt(2))` -/
def P6585234079975096280.Spec : Prop :=
  ∀ n, P6585234079975096280.a n = A003480 n

end A003480

/-! ## A003480.P13178395830223486282

`Δ[floor(A006012(n)/2)]`
-/

namespace A003480.P13178395830223486282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006012 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003480.P13178395830223486282

namespace A003480

/-- `Δ[floor(A006012(n)/2)]` -/
def P13178395830223486282.Spec : Prop :=
  ∀ n, P13178395830223486282.a n = A003480 n

end A003480

/-! ## A003480.P14308715976801571604

`ceil(A204089(n+1)/2)`
-/

namespace A003480.P14308715976801571604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204089 (n + 1) : ℚ) / 2⌉

end

end A003480.P14308715976801571604

namespace A003480

/-- `ceil(A204089(n+1)/2)` -/
def P14308715976801571604.Spec : Prop :=
  ∀ n, P14308715976801571604.a n = A003480 n

end A003480

/-! ## A003480.P17065606919524042773

`ceil(A068912(2*n)/2)`
-/

namespace A003480.P17065606919524042773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068912 (2 * n) : ℚ) / 2⌉

end

end A003480.P17065606919524042773

namespace A003480

/-- `ceil(A068912(2*n)/2)` -/
def P17065606919524042773.Spec : Prop :=
  ∀ n, P17065606919524042773.a n = A003480 n

end A003480

/-! ## A003480.P7337659118172176083

`A217730(comp[2*(n+1)])`
-/

namespace A003480.P7337659118172176083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217730 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A003480.P7337659118172176083

namespace A003480

/-- `A217730(comp[2*(n+1)])` -/
def P7337659118172176083.Spec : Prop :=
  ∀ n, P7337659118172176083.a n = A003480 n

end A003480

/-! ## A003480.P4330986539877981372

`round(A062113(2*n)/sqrt(2))`
-/

namespace A003480.P4330986539877981372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A062113 (2 * n) : ℝ) / Real.sqrt (2 : ℝ))

end

end A003480.P4330986539877981372

namespace A003480

/-- `round(A062113(2*n)/sqrt(2))` -/
def P4330986539877981372.Spec : Prop :=
  ∀ n, P4330986539877981372.a n = A003480 n

end A003480

/-! ## A003480.P5681743344754770226

`ceil(A007068(2*n+1)/2)`
-/

namespace A003480.P5681743344754770226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007068 (2 * n + 1) : ℚ) / 2⌉

end

end A003480.P5681743344754770226

namespace A003480

/-- `ceil(A007068(2*n+1)/2)` -/
def P5681743344754770226.Spec : Prop :=
  ∀ n, P5681743344754770226.a n = A003480 n

end A003480

/-! ## A003480.P6352322080106541044

`A010914(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A003480.P6352322080106541044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A010914 (n - 2) + a (n - 1)

end

end A003480.P6352322080106541044

namespace A003480

/-- `A010914(n-2)+a(n-1)` -/
def P6352322080106541044.Spec : Prop :=
  ∀ n, P6352322080106541044.a n = A003480 n

end A003480

/-! ## A003480.P8518621081398754820

`A094803(n+1)-floor(2^(n-1))`
-/

namespace A003480.P8518621081398754820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094803 (n + 1) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A003480.P8518621081398754820

namespace A003480

/-- `A094803(n+1)-floor(2^(n-1))` -/
def P8518621081398754820.Spec : Prop :=
  ∀ n, P8518621081398754820.a n = A003480 n

end A003480

/-! ## A003480.P16084764326273687967

`A062113(A004273(n))`
-/

namespace A003480.P16084764326273687967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (A004273 n).toNat

end

end A003480.P16084764326273687967

namespace A003480

/-- `A062113(A004273(n))` -/
def P16084764326273687967.Spec : Prop :=
  ∀ n, P16084764326273687967.a n = A003480 n

end A003480

/-! ## A003480.P13100018772685056682

`A062113(A014681(2*n))`
-/

namespace A003480.P13100018772685056682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (A014681 (2 * n)).toNat

end

end A003480.P13100018772685056682

namespace A003480

/-- `A062113(A014681(2*n))` -/
def P13100018772685056682.Spec : Prop :=
  ∀ n, P13100018772685056682.a n = A003480 n

end A003480

/-!
# A003481: a(n) = 7*a(n-1) - a(n-2) + 5.

The programs for A003481, the canonical program `A003481.P5574774721858176641` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003481 has offset 0).

The definition of A003481 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-a(n-2)+5` (program `A003481.P5574774721858176641`, by `A003481.P5574774721858176641.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003481.P5574774721858176641

`7*a(n-1)-a(n-2)+5` with `a(0)=2, a(1)=20`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003481

/-- `7*a(n-1)-a(n-2)+5` -/
def P5574774721858176641.Spec : Prop :=
  ∀ n, P5574774721858176641.a n = A003481 n

theorem P5574774721858176641.correct : P5574774721858176641.Spec := by
  intro n
  simp only [A003481]

end A003481

/-! ## A003481.P12427450088700865054

`A033888(n+1)-1`
-/

namespace A003481.P12427450088700865054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 (n + 1) - 1

end

end A003481.P12427450088700865054

namespace A003481

/-- `A033888(n+1)-1` -/
def P12427450088700865054.Spec : Prop :=
  ∀ n, P12427450088700865054.a n = A003481 n

end A003481

/-! ## A003481.P2560767774620132768

`A000045(4*(n+1))-1`
-/

namespace A003481.P2560767774620132768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (4 * (n + 1)) - 1

end

end A003481.P2560767774620132768

namespace A003481

/-- `A000045(4*(n+1))-1` -/
def P2560767774620132768.Spec : Prop :=
  ∀ n, P2560767774620132768.a n = A003481 n

end A003481

/-! ## A003481.P12406490496540355173

`∑[ogf((2+4x-x^2)/(1-7x+x^2))]`
-/

namespace A003481.P12406490496540355173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, -1] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003481.P12406490496540355173

namespace A003481

/-- `∑[ogf((2+4x-x^2)/(1-7x+x^2))]` -/
def P12406490496540355173.Spec : Prop :=
  ∀ n, P12406490496540355173.a n = A003481 n

end A003481

/-! ## A003481.P2219594011473972513

`ogf((2+4x-x^2)/(1-8x+8x^2-x^3))`
-/

namespace A003481.P2219594011473972513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, -1] [1, -8, 8, -1] n

end

end A003481.P2219594011473972513

namespace A003481

/-- `ogf((2+4x-x^2)/(1-8x+8x^2-x^3))` -/
def P2219594011473972513.Spec : Prop :=
  ∀ n, P2219594011473972513.a n = A003481 n

end A003481

/-! ## A003481.P7057284279151323925

`floor(∑[(ϕ^(2*n+1))²])`
-/

namespace A003481.P7057284279151323925
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio ^ (2 * n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A003481.P7057284279151323925

namespace A003481

/-- `floor(∑[(ϕ^(2*n+1))²])` -/
def P7057284279151323925.Spec : Prop :=
  ∀ n, P7057284279151323925.a n = A003481 n

end A003481

/-! ## A003481.P1259742484426334318

`A035508(Δ[n²])`
-/

namespace A003481.P1259742484426334318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003481.P1259742484426334318

namespace A003481

/-- `A035508(Δ[n²])` -/
def P1259742484426334318.Spec : Prop :=
  ∀ n, P1259742484426334318.a n = A003481 n

end A003481

/-! ## A003481.P6993209124515790524

`∑[A288219(4*n)]`
-/

namespace A003481.P6993209124515790524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003481.P6993209124515790524

namespace A003481

/-- `∑[A288219(4*n)]` -/
def P6993209124515790524.Spec : Prop :=
  ∀ n, P6993209124515790524.a n = A003481 n

end A003481

/-! ## A003481.P4283645370281948376

`A081074(n+1)+2`
-/

namespace A003481.P4283645370281948376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081074 (n + 1) + 2

end

end A003481.P4283645370281948376

namespace A003481

/-- `A081074(n+1)+2` -/
def P4283645370281948376.Spec : Prop :=
  ∀ n, P4283645370281948376.a n = A003481 n

end A003481

/-! ## A003481.P6511553788490758009

`A081002(n+1)-2`
-/

namespace A003481.P6511553788490758009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081002 (n + 1) - 2

end

end A003481.P6511553788490758009

namespace A003481

/-- `A081002(n+1)-2` -/
def P6511553788490758009.Spec : Prop :=
  ∀ n, P6511553788490758009.a n = A003481 n

end A003481

/-! ## A003481.P831910175210623794

`A081072(n+1)-4`
-/

namespace A003481.P831910175210623794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081072 (n + 1) - 4

end

end A003481.P831910175210623794

namespace A003481

/-- `A081072(n+1)-4` -/
def P831910175210623794.Spec : Prop :=
  ∀ n, P831910175210623794.a n = A003481 n

end A003481

/-! ## A003481.P16140931093671195406

`A000071(4*(n+1))`
-/

namespace A003481.P16140931093671195406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (4 * (n + 1))

end

end A003481.P16140931093671195406

namespace A003481

/-- `A000071(4*(n+1))` -/
def P16140931093671195406.Spec : Prop :=
  ∀ n, P16140931093671195406.a n = A003481 n

end A003481

/-! ## A003481.P7785551712978308841

`A007492(4*(n+1))`
-/

namespace A003481.P7785551712978308841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007492 (4 * (n + 1))

end

end A003481.P7785551712978308841

namespace A003481

/-- `A007492(4*(n+1))` -/
def P7785551712978308841.Spec : Prop :=
  ∀ n, P7785551712978308841.a n = A003481 n

end A003481

/-! ## A003481.P13585408321098575873

`A128535(2*n+3)`
-/

namespace A003481.P13585408321098575873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 (2 * n + 3)

end

end A003481.P13585408321098575873

namespace A003481

/-- `A128535(2*n+3)` -/
def P13585408321098575873.Spec : Prop :=
  ∀ n, P13585408321098575873.a n = A003481 n

end A003481

/-! ## A003481.P6192545714510282842

`A333599(4*n+2)`
-/

namespace A003481.P6192545714510282842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333599 (4 * n + 2)

end

end A003481.P6192545714510282842

namespace A003481

/-- `A333599(4*n+2)` -/
def P6192545714510282842.Spec : Prop :=
  ∀ n, P6192545714510282842.a n = A003481 n

end A003481

/-! ## A003481.P5260354015462189476

`A163227(8*n+4)`
-/

namespace A003481.P5260354015462189476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (8 * n + 4)

end

end A003481.P5260354015462189476

namespace A003481

/-- `A163227(8*n+4)` -/
def P5260354015462189476.Spec : Prop :=
  ∀ n, P5260354015462189476.a n = A003481 n

end A003481

/-! ## A003481.P4226039344933074736

`A339572(8*n+4)`
-/

namespace A003481.P4226039344933074736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (8 * n + 4)

end

end A003481.P4226039344933074736

namespace A003481

/-- `A339572(8*n+4)` -/
def P4226039344933074736.Spec : Prop :=
  ∀ n, P4226039344933074736.a n = A003481 n

end A003481

/-! ## A003481.P11649939114427124195

`A128533(Δ[n²])-2`
-/

namespace A003481.P11649939114427124195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128533 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A003481.P11649939114427124195

namespace A003481

/-- `A128533(Δ[n²])-2` -/
def P11649939114427124195.Spec : Prop :=
  ∀ n, P11649939114427124195.a n = A003481 n

end A003481

/-! ## A003481.P15407944898416196616

`∑[A215580(2*n)]+n`
-/

namespace A003481.P15407944898416196616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215580 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A003481.P15407944898416196616

namespace A003481

/-- `∑[A215580(2*n)]+n` -/
def P15407944898416196616.Spec : Prop :=
  ∀ n, P15407944898416196616.a n = A003481 n

end A003481

/-! ## A003481.P5422714054098205386

`A249450(2*(n+1))+1`
-/

namespace A003481.P5422714054098205386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 (2 * (n + 1)) + 1

end

end A003481.P5422714054098205386

namespace A003481

/-- `A249450(2*(n+1))+1` -/
def P5422714054098205386.Spec : Prop :=
  ∀ n, P5422714054098205386.a n = A003481 n

end A003481

/-!
# A003482: a(n) = 7*a(n-1) - a(n-2) + 4, with a(0) = 0, a(1) = 5.

The programs for A003482, the canonical program `A003482.P17346539252902838379` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003482 has offset 0).

The definition of A003482 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-a(n-2)+4` (program `A003482.P17346539252902838379`, by `A003482.P17346539252902838379.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003482.P17346539252902838379

`7*a(n-1)-a(n-2)+4` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003482

/-- `7*a(n-1)-a(n-2)+4` -/
def P17346539252902838379.Spec : Prop :=
  ∀ n, P17346539252902838379.a n = A003482 n

theorem P17346539252902838379.correct : P17346539252902838379.Spec := by
  intro n
  simp only [A003482]

end A003482

/-! ## A003482.P5280153111124757651

`A001654(2*n+1)-1`
-/

namespace A003482.P5280153111124757651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (2 * n + 1) - 1

end

end A003482.P5280153111124757651

namespace A003482

/-- `A001654(2*n+1)-1` -/
def P5280153111124757651.Spec : Prop :=
  ∀ n, P5280153111124757651.a n = A003482 n

end A003482

/-! ## A003482.P940172373790393767

`A000045(2*n)*A000045(2*n+3)`
-/

namespace A003482.P940172373790393767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A000045 (2 * n + 3)

end

end A003482.P940172373790393767

namespace A003482

/-- `A000045(2*n)*A000045(2*n+3)` -/
def P940172373790393767.Spec : Prop :=
  ∀ n, P940172373790393767.a n = A003482 n

end A003482

/-! ## A003482.P5279867326542589429

`∑[ogf((5x-x^2)/(1-7x+x^2))]`
-/

namespace A003482.P5279867326542589429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -1] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003482.P5279867326542589429

namespace A003482

/-- `∑[ogf((5x-x^2)/(1-7x+x^2))]` -/
def P5279867326542589429.Spec : Prop :=
  ∀ n, P5279867326542589429.a n = A003482 n

end A003482

/-! ## A003482.P1232128206345851431

`ogf((5x-x^2)/(1-8x+8x^2-x^3))`
-/

namespace A003482.P1232128206345851431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -1] [1, -8, 8, -1] n

end

end A003482.P1232128206345851431

namespace A003482

/-- `ogf((5x-x^2)/(1-8x+8x^2-x^3))` -/
def P1232128206345851431.Spec : Prop :=
  ∀ n, P1232128206345851431.a n = A003482 n

end A003482

/-! ## A003482.P89925836545380128

`4-(a(n-2)-7*a(n-1))` with `a(0)=0, a(1)=5`
-/

namespace A003482.P89925836545380128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  4 - (a (n - 2) - 7 * a (n - 1))

end

end A003482.P89925836545380128

namespace A003482

/-- `4-(a(n-2)-7*a(n-1))` -/
def P89925836545380128.Spec : Prop :=
  ∀ n, P89925836545380128.a n = A003482 n

end A003482

/-! ## A003482.P619981440586485943

`A081016(n)-1`
-/

namespace A003482.P619981440586485943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081016 n - 1

end

end A003482.P619981440586485943

namespace A003482

/-- `A081016(n)-1` -/
def P619981440586485943.Spec : Prop :=
  ∀ n, P619981440586485943.a n = A003482 n

end A003482

/-! ## A003482.P16142491766034867999

`A195971(4*n)`
-/

namespace A003482.P16142491766034867999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 (4 * n)

end

end A003482.P16142491766034867999

namespace A003482

/-- `A195971(4*n)` -/
def P16142491766034867999.Spec : Prop :=
  ∀ n, P16142491766034867999.a n = A003482 n

end A003482

/-! ## A003482.P80356786281967731

`∑[A033889(n)]-1`
-/

namespace A003482.P80356786281967731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A003482.P80356786281967731

namespace A003482

/-- `∑[A033889(n)]-1` -/
def P80356786281967731.Spec : Prop :=
  ∀ n, P80356786281967731.a n = A003482 n

end A003482

/-! ## A003482.P17225927509513428804

`Δ[A119283(2*n)]`
-/

namespace A003482.P17225927509513428804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119283 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003482.P17225927509513428804

namespace A003482

/-- `Δ[A119283(2*n)]` -/
def P17225927509513428804.Spec : Prop :=
  ∀ n, P17225927509513428804.a n = A003482 n

end A003482

/-! ## A003482.P3900831670740064359

`∑[A081007(n)]+n`
-/

namespace A003482.P3900831670740064359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A003482.P3900831670740064359

namespace A003482

/-- `∑[A081007(n)]+n` -/
def P3900831670740064359.Spec : Prop :=
  ∀ n, P3900831670740064359.a n = A003482 n

end A003482

/-! ## A003482.P5094541356419212930

`A059840(2*(n+1))`
-/

namespace A003482.P5094541356419212930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (2 * (n + 1))

end

end A003482.P5094541356419212930

namespace A003482

/-- `A059840(2*(n+1))` -/
def P5094541356419212930.Spec : Prop :=
  ∀ n, P5094541356419212930.a n = A003482 n

end A003482

/-! ## A003482.P16290306437166656885

`A226205(2*(n+1))`
-/

namespace A003482.P16290306437166656885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (2 * (n + 1))

end

end A003482.P16290306437166656885

namespace A003482

/-- `A226205(2*(n+1))` -/
def P16290306437166656885.Spec : Prop :=
  ∀ n, P16290306437166656885.a n = A003482 n

end A003482

/-! ## A003482.P11497108136805208219

`A166536(2*n)-1`
-/

namespace A003482.P11497108136805208219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166536 (2 * n) - 1

end

end A003482.P11497108136805208219

namespace A003482

/-- `A166536(2*n)-1` -/
def P11497108136805208219.Spec : Prop :=
  ∀ n, P11497108136805208219.a n = A003482 n

end A003482

/-! ## A003482.P17800866708455608259

`A192919(2*n)-3`
-/

namespace A003482.P17800866708455608259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192919 (2 * n) - 3

end

end A003482.P17800866708455608259

namespace A003482

/-- `A192919(2*n)-3` -/
def P17800866708455608259.Spec : Prop :=
  ∀ n, P17800866708455608259.a n = A003482 n

end A003482

/-! ## A003482.P10174246454787221701

`A080145(2*n)+n`
-/

namespace A003482.P10174246454787221701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080145 (2 * n) + (n : ℤ)

end

end A003482.P10174246454787221701

namespace A003482

/-- `A080145(2*n)+n` -/
def P10174246454787221701.Spec : Prop :=
  ∀ n, P10174246454787221701.a n = A003482 n

end A003482

/-! ## A003482.P14285620094255403218

`A260259(Δ[n²])-2`
-/

namespace A003482.P14285620094255403218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A003482.P14285620094255403218

namespace A003482

/-- `A260259(Δ[n²])-2` -/
def P14285620094255403218.Spec : Prop :=
  ∀ n, P14285620094255403218.a n = A003482 n

end A003482

/-! ## A003482.P5788706760938061934

`A121801(Δ[n²])/2`
-/

namespace A003482.P5788706760938061934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121801 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A003482.P5788706760938061934

namespace A003482

/-- `A121801(Δ[n²])/2` -/
def P5788706760938061934.Spec : Prop :=
  ∀ n, P5788706760938061934.a n = (A003482 n : ℚ)

end A003482

/-! ## A003482.P9959974256572863370

`∑[record[A099496(n)]]-1`
-/

namespace A003482.P9959974256572863370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A003482.P9959974256572863370

namespace A003482

/-- `∑[record[A099496(n)]]-1` -/
def P9959974256572863370.Spec : Prop :=
  ∀ n, P9959974256572863370.a n = A003482 n

end A003482

/-! ## A003482.P2651377808177425568

`∑[record[A178115(n)]]-1`
-/

namespace A003482.P2651377808177425568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A003482.P2651377808177425568

namespace A003482

/-- `∑[record[A178115(n)]]-1` -/
def P2651377808177425568.Spec : Prop :=
  ∀ n, P2651377808177425568.a n = A003482 n

end A003482

/-!
# A003483: Number of square permutations of n elements.

The programs for A003483, there is no canonical definition to state claims against.
-/

/-! ## A003483.P7820709251741916847

`A247005(∑[n+3])`
-/

namespace A003483.P7820709251741916847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003483.P7820709251741916847

/-! ## A003483.P3517623116190665176

`or(char[1], A247005(A027379(n+1)))`
-/

namespace A003483.P3517623116190665176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A247005 (A027379 (n + 1)).toNat)

end

end A003483.P3517623116190665176

/-! ## A003483.P14134019696171929035

`A033999(n)²*A247005(A027379(n+1))`
-/

namespace A003483.P14134019696171929035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A247005 (A027379 (n + 1)).toNat

end

end A003483.P14134019696171929035

/-! ## A003483.P14714443156325756301

`A247005(A027379(n+1))+A000007(n+1)`
-/

namespace A003483.P14714443156325756301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A003483.P14714443156325756301

/-! ## A003483.P18180766647069883439

`A001221(A007918(n))*A247005(A027379(n+1))`
-/

namespace A003483.P18180766647069883439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007918 n).toNat * A247005 (A027379 (n + 1)).toNat

end

end A003483.P18180766647069883439

/-! ## A003483.P11917018768894746644

`A001221(A002144(n+1))*A247005(A027379(n+1))`
-/

namespace A003483.P11917018768894746644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002144 (n + 1)).toNat * A247005 (A027379 (n + 1)).toNat

end

end A003483.P11917018768894746644

/-! ## A003483.P9004599030087264927

`A001221(A002313(n+1))*A247005(A027379(n+1))`
-/

namespace A003483.P9004599030087264927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002313 (n + 1)).toNat * A247005 (A027379 (n + 1)).toNat

end

end A003483.P9004599030087264927

/-! ## A003483.P5858833178988315308

`A001221(A002476(n+1))*A247005(A027379(n+1))`
-/

namespace A003483.P5858833178988315308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002476 (n + 1)).toNat * A247005 (A027379 (n + 1)).toNat

end

end A003483.P5858833178988315308

/-! ## A003483.P5896063109966209093

`A014963(A051230(n+1))*A247005(A027379(n+1))`
-/

namespace A003483.P5896063109966209093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A051230 (n + 1)).toNat * A247005 (A027379 (n + 1)).toNat

end

end A003483.P5896063109966209093

/-!
# A003484: Radon function, also called Hurwitz-Radon numbers.

The programs for A003484, the canonical program `A003484.P6209277204586873753` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003484 has offset 1).

The definition of A003484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003484.P6209277204586873753

`A003485(A007814(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A003484

/-- `A003485(A007814(n+1))` -/
def P6209277204586873753.Spec : Prop :=
  ∀ n, P6209277204586873753.a n = A003484 (n + 1)

theorem P6209277204586873753.correct : P6209277204586873753.Spec := by
  intro n
  simp only [A003484, Nat.add_sub_cancel]

end A003484

/-! ## A003484.P12274353669386657223

`A003485(val(n+1, 2))`
-/

namespace A003484.P12274353669386657223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (SequenceMachineLib.valuation (n + 1) 2)

end

end A003484.P12274353669386657223

namespace A003484

/-- `A003485(val(n+1, 2))` -/
def P12274353669386657223.Spec : Prop :=
  ∀ n, P12274353669386657223.a n = A003484 (n + 1)

end A003484

/-! ## A003484.P9862752073338925660

`A209675(∑[log2(gcd(2, n))])^(n%2)`
-/

namespace A003484.P9862752073338925660
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209675 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat ^ (n % 2)

end

end A003484.P9862752073338925660

namespace A003484

/-- `A209675(∑[log2(gcd(2, n))])^(n%2)` -/
def P9862752073338925660.Spec : Prop :=
  ∀ n, P9862752073338925660.a n = A003484 (n + 1)

end A003484

/-! ## A003484.P9435176525199595183

`A047466(A085058(n))`
-/

namespace A003484.P9435176525199595183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (A085058 n).toNat

end

end A003484.P9435176525199595183

namespace A003484

/-- `A047466(A085058(n))` -/
def P9435176525199595183.Spec : Prop :=
  ∀ n, P9435176525199595183.a n = A003484 (n + 1)

end A003484

/-! ## A003484.P15915124285540343098

`A047466(A089080(n+2))`
-/

namespace A003484.P15915124285540343098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (A089080 (n + 2)).toNat

end

end A003484.P15915124285540343098

namespace A003484

/-- `A047466(A089080(n+2))` -/
def P15915124285540343098.Spec : Prop :=
  ∀ n, P15915124285540343098.a n = A003484 (n + 1)

end A003484

/-! ## A003484.P8776115379469786089

`A003485(log2(A006519(n+1)))`
-/

namespace A003484.P8776115379469786089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (SequenceMachineLib.roundAway (Real.logb 2 (A006519 (n + 1) : ℝ))).toNat

end

end A003484.P8776115379469786089

namespace A003484

/-- `A003485(log2(A006519(n+1)))` -/
def P8776115379469786089.Spec : Prop :=
  ∀ n, P8776115379469786089.a n = A003484 (n + 1)

end A003484

/-! ## A003484.P5661092771995170277

`A047530(A001511(n+1))+1`
-/

namespace A003484.P5661092771995170277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047530 (A001511 (n + 1)).toNat + 1

end

end A003484.P5661092771995170277

namespace A003484

/-- `A047530(A001511(n+1))+1` -/
def P5661092771995170277.Spec : Prop :=
  ∀ n, P5661092771995170277.a n = A003484 (n + 1)

end A003484

/-! ## A003484.P12465496553971444280

`A003485(A001511(n+1)-1)`
-/

namespace A003484.P12465496553971444280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A001511 (n + 1) - 1).toNat

end

end A003484.P12465496553971444280

namespace A003484

/-- `A003485(A001511(n+1)-1)` -/
def P12465496553971444280.Spec : Prop :=
  ∀ n, P12465496553971444280.a n = A003484 (n + 1)

end A003484

/-! ## A003484.P5446579406425702960

`A047530(A085058(n)-1)+1`
-/

namespace A003484.P5446579406425702960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047530 (A085058 n - 1).toNat + 1

end

end A003484.P5446579406425702960

namespace A003484

/-- `A047530(A085058(n)-1)+1` -/
def P5446579406425702960.Spec : Prop :=
  ∀ n, P5446579406425702960.a n = A003484 (n + 1)

end A003484

/-! ## A003484.P11647559554094147979

`A047530(A007814(n+1)+1)+1`
-/

namespace A003484.P11647559554094147979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047530 (A007814 (n + 1) + 1).toNat + 1

end

end A003484.P11647559554094147979

namespace A003484

/-- `A047530(A007814(n+1)+1)+1` -/
def P11647559554094147979.Spec : Prop :=
  ∀ n, P11647559554094147979.a n = A003484 (n + 1)

end A003484

/-! ## A003484.P9116746256643634249

`A047466(A034584(A209675(n+1)))`
-/

namespace A003484.P9116746256643634249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (A034584 (A209675 (n + 1)).toNat).toNat

end

end A003484.P9116746256643634249

namespace A003484

/-- `A047466(A034584(A209675(n+1)))` -/
def P9116746256643634249.Spec : Prop :=
  ∀ n, P9116746256643634249.a n = A003484 (n + 1)

end A003484

/-! ## A003484.P1137094061537868093

`A047466(A034584(A053381(2*n+1)))`
-/

namespace A003484.P1137094061537868093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (A034584 (A053381 (2 * n + 1)).toNat).toNat

end

end A003484.P1137094061537868093

namespace A003484

/-- `A047466(A034584(A053381(2*n+1)))` -/
def P1137094061537868093.Spec : Prop :=
  ∀ n, P1137094061537868093.a n = A003484 (n + 1)

end A003484

/-! ## A003484.P16219606467862241426

`A209675(∑[n+1])^(n%2)`
-/

namespace A003484.P16219606467862241426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209675 (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n % 2)

end

end A003484.P16219606467862241426

namespace A003484

/-- `A209675(∑[n+1])^(n%2)` -/
def P16219606467862241426.Spec : Prop :=
  ∀ n, P16219606467862241426.a n = A003484 (n + 1)

end A003484

/-!
# A003485: Hurwitz-Radon function at powers of 2.

The programs for A003485, the canonical program `A003485.P11545397103152559337` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003485 has offset 0).

The definition of A003485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003485.P11545397103152559337

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=9`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003485

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P11545397103152559337.Spec : Prop :=
  ∀ n, P11545397103152559337.a n = A003485 n

theorem P11545397103152559337.correct : P11545397103152559337.Spec := by
  intro n
  simp only [A003485]

end A003485

/-! ## A003485.P13976162976616990995

`ceil((n+1)/4)+ceil(n/4)+2*ceil((n-1)/4)+4*ceil((n-2)/4)`
-/

namespace A003485.P13976162976616990995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 4⌉ + ⌈(n : ℚ) / 4⌉ + 2 * ⌈((n : ℤ) - 1 : ℚ) / 4⌉ + 4 * ⌈((n : ℤ) - 2 : ℚ) / 4⌉

end

end A003485.P13976162976616990995

namespace A003485

/-- `ceil((n+1)/4)+ceil(n/4)+2*ceil((n-1)/4)+4*ceil((n-2)/4)` -/
def P13976162976616990995.Spec : Prop :=
  ∀ n, P13976162976616990995.a n = A003485 n

end A003485

/-! ## A003485.P14062013023957334689

`∑[floor(ϕ^(n%4))]`
-/

namespace A003485.P14062013023957334689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (n % 4)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003485.P14062013023957334689

namespace A003485

/-- `∑[floor(ϕ^(n%4))]` -/
def P14062013023957334689.Spec : Prop :=
  ∀ n, P14062013023957334689.a n = A003485 n

end A003485

/-! ## A003485.P16110065737610874576

`∑[C(and(3, n), 2)+1]`
-/

namespace A003485.P16110065737610874576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 3 n) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003485.P16110065737610874576

namespace A003485

/-- `∑[C(and(3, n), 2)+1]` -/
def P16110065737610874576.Spec : Prop :=
  ∀ n, (P16110065737610874576.a n : ℤ) = A003485 n

end A003485

/-! ## A003485.P17258327225042288969

`record[and(n-3, xor(3, n))]`
-/

namespace A003485.P17258327225042288969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 3) (Nat.xor 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003485.P17258327225042288969

namespace A003485

/-- `record[and(n-3, xor(3, n))]` -/
def P17258327225042288969.Spec : Prop :=
  ∀ n, P17258327225042288969.a n = A003485 n

end A003485

/-! ## A003485.P9312276330214636582

`∑[gcd(4, ∑[1-n^3])]`
-/

namespace A003485.P9312276330214636582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 3 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003485.P9312276330214636582

namespace A003485

/-- `∑[gcd(4, ∑[1-n^3])]` -/
def P9312276330214636582.Spec : Prop :=
  ∀ n, (P9312276330214636582.a n : ℤ) = A003485 n

end A003485

/-! ## A003485.P5099287951653033196

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A003485.P5099287951653033196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003485.P5099287951653033196

namespace A003485

/-- `∑[abs(a(n-4))]` -/
def P5099287951653033196.Spec : Prop :=
  ∀ n, (P5099287951653033196.a n : ℤ) = A003485 n

end A003485

/-! ## A003485.P16231583828178874340

`∑[dr(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A003485.P16231583828178874340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003485.P16231583828178874340

namespace A003485

/-- `∑[dr(a(n-4))]` -/
def P16231583828178874340.Spec : Prop :=
  ∀ n, (P16231583828178874340.a n : ℤ) = A003485 n

end A003485

/-! ## A003485.P5702406157862002629

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A003485.P5702406157862002629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003485.P5702406157862002629

namespace A003485

/-- `∑[floor(a(n-4))]` -/
def P5702406157862002629.Spec : Prop :=
  ∀ n, (P5702406157862002629.a n : ℤ) = A003485 n

end A003485

/-! ## A003485.P13343457592737343440

`∑[2^(((n+3)%4)%3)]`
-/

namespace A003485.P13343457592737343440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((n + 3) % 4 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003485.P13343457592737343440

namespace A003485

/-- `∑[2^(((n+3)%4)%3)]` -/
def P13343457592737343440.Spec : Prop :=
  ∀ n, (P13343457592737343440.a n : ℤ) = A003485 n

end A003485

/-! ## A003485.P8039308357095172695

`∑[a(n-4)%5]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A003485.P8039308357095172695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003485.P8039308357095172695

namespace A003485

/-- `∑[a(n-4)%5]` -/
def P8039308357095172695.Spec : Prop :=
  ∀ n, (P8039308357095172695.a n : ℤ) = A003485 n

end A003485

/-! ## A003485.P2706072000771609395

`lt[(n-1)%8, xor(n, n-1)]`
-/

namespace A003485.P2706072000771609395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003485.P2706072000771609395

namespace A003485

/-- `lt[(n-1)%8, xor(n, n-1)]` -/
def P2706072000771609395.Spec : Prop :=
  ∀ n, (P2706072000771609395.a n : ℤ) = A003485 n

end A003485

/-! ## A003485.P2130859707479564582

`round(acot((n+1)%4)+2*n)`
-/

namespace A003485.P2130859707479564582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (((n + 1) % 4 : ℕ) : ℝ) + (2 * n : ℝ))

end

end A003485.P2130859707479564582

namespace A003485

/-- `round(acot((n+1)%4)+2*n)` -/
def P2130859707479564582.Spec : Prop :=
  ∀ n, P2130859707479564582.a n = A003485 n

end A003485

/-! ## A003485.P4115847036230325932

`∑[gcd(2, ∑[n+1])^gcd(2, ∑[n])]`
-/

namespace A003485.P4115847036230325932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) ^ Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003485.P4115847036230325932

namespace A003485

/-- `∑[gcd(2, ∑[n+1])^gcd(2, ∑[n])]` -/
def P4115847036230325932.Spec : Prop :=
  ∀ n, (P4115847036230325932.a n : ℤ) = A003485 n

end A003485

/-! ## A003485.P2011712595572839284

`∑[∑[ogf((1+x+2x^2+4x^3)/(1+x+x^2+x^3))]]`
-/

namespace A003485.P2011712595572839284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 4] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003485.P2011712595572839284

namespace A003485

/-- `∑[∑[ogf((1+x+2x^2+4x^3)/(1+x+x^2+x^3))]]` -/
def P2011712595572839284.Spec : Prop :=
  ∀ n, P2011712595572839284.a n = A003485 n

end A003485

/-! ## A003485.P12931272378827500962

`∑[(3-(-1)^n)/a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A003485.P12931272378827500962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (3 - (-1) ^ n : ℚ) / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003485.P12931272378827500962

namespace A003485

/-- `∑[(3-(-1)^n)/a(n-2)]` -/
def P12931272378827500962.Spec : Prop :=
  ∀ n, P12931272378827500962.a n = (A003485 n : ℚ)

end A003485

/-! ## A003485.P12368082668191124210

`∑[a(n-4)^a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A003485.P12368082668191124210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003485.P12368082668191124210

namespace A003485

/-- `∑[a(n-4)^a(n-2)]` -/
def P12368082668191124210.Spec : Prop :=
  ∀ n, (P12368082668191124210.a n : ℤ) = A003485 n

end A003485

/-! ## A003485.P13449858221145979112

`∑[2*a(n-4)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A003485.P13449858221145979112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  2 * f1 (n - 4) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003485.P13449858221145979112

namespace A003485

/-- `∑[2*a(n-4)-a(n-4)]` -/
def P13449858221145979112.Spec : Prop :=
  ∀ n, P13449858221145979112.a n = A003485 n

end A003485

/-! ## A003485.P17276413884746177545

`∪[A047465(n+1), A008574(n)]`
-/

namespace A003485.P17276413884746177545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003485.P17276413884746177545

namespace A003485

/-- `∪[A047465(n+1), A008574(n)]` -/
def P17276413884746177545.Spec : Prop :=
  ∀ n, (P17276413884746177545.a n : ℤ) = A003485 n

end A003485

/-! ## A003485.P5965654887573588525

`∪[A047468(n+1), A008574(n)]`
-/

namespace A003485.P5965654887573588525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003485.P5965654887573588525

namespace A003485

/-- `∪[A047468(n+1), A008574(n)]` -/
def P5965654887573588525.Spec : Prop :=
  ∀ n, (P5965654887573588525.a n : ℤ) = A003485 n

end A003485

/-!
# A003486: a(n) = (n^2 + 1)*3^n.

The programs for A003486, the canonical program `A003486.P14234554654453851185` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003486 has offset 0).

The definition of A003486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+1)*3^n` (program `A003486.P14234554654453851185`, by `A003486.P14234554654453851185.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003486.P14234554654453851185

`(n²+1)*3^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003486

/-- `(n²+1)*3^n` -/
def P14234554654453851185.Spec : Prop :=
  ∀ n, (P14234554654453851185.a n : ℤ) = A003486 n

theorem P14234554654453851185.correct : P14234554654453851185.Spec := by
  intro n
  simp only [A003486]

end A003486

/-! ## A003486.P17608360054024423194

`lcm(n²+1, 3^n)`
-/

namespace A003486.P17608360054024423194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n ^ 2 + 1) (3 ^ n)

end

end A003486.P17608360054024423194

namespace A003486

/-- `lcm(n²+1, 3^n)` -/
def P17608360054024423194.Spec : Prop :=
  ∀ n, (P17608360054024423194.a n : ℤ) = A003486 n

end A003486

/-! ## A003486.P12762472729764934372

`3^n/cos(atan(n))²`
-/

namespace A003486.P12762472729764934372
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℝ) / Real.cos (Real.arctan (n : ℝ)) ^ 2

end

end A003486.P12762472729764934372

namespace A003486

/-- `3^n/cos(atan(n))²` -/
def P12762472729764934372.Spec : Prop :=
  ∀ n, P12762472729764934372.a n = (A003486 n : ℝ)

end A003486

/-! ## A003486.P10973961494367165721

`3^n/sin(acot(n))²`
-/

namespace A003486.P10973961494367165721
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ)) ^ 2

end

end A003486.P10973961494367165721

namespace A003486

/-- `3^n/sin(acot(n))²` -/
def P10973961494367165721.Spec : Prop :=
  ∀ n, P10973961494367165721.a n = (A003486 n : ℝ)

end A003486

/-! ## A003486.P6648114134081901511

`floor(3^n*∑[a(n-1)+2])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A003486.P6648114134081901511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003486.P6648114134081901511

namespace A003486

/-- `floor(3^n*∑[a(n-1)+2])` -/
def P6648114134081901511.Spec : Prop :=
  ∀ n, (P6648114134081901511.a n : ℤ) = A003486 n

end A003486

/-! ## A003486.P14852812198520157358

`A127960(n)+3^n`
-/

namespace A003486.P14852812198520157358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127960 n + (3 ^ n : ℤ)

end

end A003486.P14852812198520157358

namespace A003486

/-- `A127960(n)+3^n` -/
def P14852812198520157358.Spec : Prop :=
  ∀ n, P14852812198520157358.a n = A003486 n

theorem P14852812198520157358.correct : P14852812198520157358.Spec := by
  intro n
  simp only [A003486, Nat.add_sub_cancel, A003486.P14852812198520157358.a, A003486.P14234554654453851185.a, A127960, A127960.P1454755808448748578.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003486

/-! ## A003486.P12005134984526430497

`A000244(n)+n*A036290(n)`
-/

namespace A003486.P12005134984526430497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (n : ℤ) * A036290 n

end

end A003486.P12005134984526430497

namespace A003486

/-- `A000244(n)+n*A036290(n)` -/
def P12005134984526430497.Spec : Prop :=
  ∀ n, P12005134984526430497.a n = A003486 n

theorem P12005134984526430497.correct : P12005134984526430497.Spec := by
  intro n
  simp only [A003486, Nat.add_sub_cancel, A003486.P12005134984526430497.a, A003486.P14234554654453851185.a, A000244, A000244.P17162167222172810417.a, A036290, A036290.P13464595081009669665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003486

/-! ## A003486.P4571536792213526702

`A000244(n)+A000244(n)*A000290(n)`
-/

namespace A003486.P4571536792213526702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + A000244 n * A000290 n

end

end A003486.P4571536792213526702

namespace A003486

/-- `A000244(n)+A000244(n)*A000290(n)` -/
def P4571536792213526702.Spec : Prop :=
  ∀ n, P4571536792213526702.a n = A003486 n

theorem P4571536792213526702.correct : P4571536792213526702.Spec := by
  intro n
  simp only [A003486, Nat.add_sub_cancel, A003486.P4571536792213526702.a, A003486.P14234554654453851185.a, A000244, A000244.P17162167222172810417.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003486

/-! ## A003486.P3641285448799909746

`A002522(n)+A002522(n)*A024023(n)`
-/

namespace A003486.P3641285448799909746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + A002522 n * A024023 n

end

end A003486.P3641285448799909746

namespace A003486

/-- `A002522(n)+A002522(n)*A024023(n)` -/
def P3641285448799909746.Spec : Prop :=
  ∀ n, P3641285448799909746.a n = A003486 n

theorem P3641285448799909746.correct : P3641285448799909746.Spec := by
  intro n
  simp only [A003486, Nat.add_sub_cancel, A003486.P3641285448799909746.a, A003486.P14234554654453851185.a, A002522, A002522.P3778392011853271743.a, A024023, A024023.P3457506902639293536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003486

/-! ## A003486.P16674224395515296132

`A002522(n)*A034472(n)-A002522(n)`
-/

namespace A003486.P16674224395515296132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A034472 n - A002522 n

end

end A003486.P16674224395515296132

namespace A003486

/-- `A002522(n)*A034472(n)-A002522(n)` -/
def P16674224395515296132.Spec : Prop :=
  ∀ n, P16674224395515296132.a n = A003486 n

theorem P16674224395515296132.correct : P16674224395515296132.Spec := by
  intro n
  simp only [A003486, Nat.add_sub_cancel, A003486.P16674224395515296132.a, A003486.P14234554654453851185.a, A002522, A002522.P3778392011853271743.a, A034472, A034472.P6935477064191477456.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003486

/-! ## A003486.P4370247939367173039

`(2*n*A000217(n)+n+1)*3^n/(n+1)`
-/

namespace A003486.P4370247939367173039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n : ℤ) * A000217 n + (n + 1 : ℤ)) * (3 ^ n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A003486.P4370247939367173039

namespace A003486

/-- `(2*n*A000217(n)+n+1)*3^n/(n+1)` -/
def P4370247939367173039.Spec : Prop :=
  ∀ n, P4370247939367173039.a n = (A003486 n : ℚ)

theorem P4370247939367173039.correct : P4370247939367173039.Spec := by
  intro n
  simp only [A003486, Nat.add_sub_cancel, A003486.P4370247939367173039.a, A003486.P14234554654453851185.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003486

/-! ## A003486.P4851234814331598030

`Δ[A007051(n)]+n²*sqrt(A001019(n))`
-/

namespace A003486.P4851234814331598030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) + (n ^ 2 : ℝ) * Real.sqrt (A001019 n : ℝ)

end

end A003486.P4851234814331598030

namespace A003486

/-- `Δ[A007051(n)]+n²*sqrt(A001019(n))` -/
def P4851234814331598030.Spec : Prop :=
  ∀ n, P4851234814331598030.a n = (A003486 n : ℝ)

end A003486

/-!
# A003487: a(n) = a(n-1)^2 - 2, with a(0) = 5.

The programs for A003487, the canonical program `A003487.P3827609079826404744` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003487 has offset 0).

The definition of A003487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-2` (program `A003487.P3827609079826404744`, by `A003487.P3827609079826404744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003487.P3827609079826404744

`a(n-1)²-2` with `a(0)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003487

/-- `a(n-1)²-2` -/
def P3827609079826404744.Spec : Prop :=
  ∀ n, P3827609079826404744.a n = A003487 n

theorem P3827609079826404744.correct : P3827609079826404744.Spec := by
  intro n
  simp only [A003487]

end A003487

/-! ## A003487.P373346166454958055

`((5+sqrt(21))/2)^2^n+((5-sqrt(21))/2)^2^n`
-/

namespace A003487.P373346166454958055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (21 : ℝ)) / 2) ^ 2 ^ n + ((5 - Real.sqrt (21 : ℝ)) / 2) ^ 2 ^ n

end

end A003487.P373346166454958055

namespace A003487

/-- `((5+sqrt(21))/2)^2^n+((5-sqrt(21))/2)^2^n` -/
def P373346166454958055.Spec : Prop :=
  ∀ n, P373346166454958055.a n = (A003487 n : ℝ)

end A003487

/-! ## A003487.P271305559688398757

`A003501(2^n)`
-/

namespace A003487.P271305559688398757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003501 (2 ^ n)

end

end A003487.P271305559688398757

namespace A003487

/-- `A003501(2^n)` -/
def P271305559688398757.Spec : Prop :=
  ∀ n, P271305559688398757.a n = A003487 n

end A003487

/-!
# A003489: High temperature series for spin-1/2 Ising surface susceptibility on square lattice.

The programs for A003489, there is no canonical definition to state claims against.
-/

/-! ## A003489.P12787300035119051389

`A028719(A113479(n+2))`
-/

namespace A003489.P12787300035119051389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028719 (A113479 (n + 2)).toNat

end

end A003489.P12787300035119051389

/-!
# A003490: High temperature series for spin-1/2 Ising surface susceptibility on 3-dimensional simple cubic lattice.

The programs for A003490, there is no canonical definition to state claims against.
-/

/-! ## A003490.P1281166093974497892

`A004275(A163470(n)-A047461(n+1))`
-/

namespace A003490.P1281166093974497892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A163470 n - A047461 (n + 1)).toNat

end

end A003490.P1281166093974497892

/-!
# A003493: High temperature series for spin-1/2 Ising surface susceptibility on square lattice.

The programs for A003493, there is no canonical definition to state claims against.
-/

/-! ## A003493.P6592113217805250400

`A050500(4*3^n*floor(2/acot(2*n)))`
-/

namespace A003493.P6592113217805250400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (4 * ((3 ^ n : ℤ) * ⌊2 / SequenceMachineLib.acot (2 * n : ℝ)⌋)).toNat

end

end A003493.P6592113217805250400

/-!
# A003494: High temperature series for susceptibility for spherical model on b.c.c. lattice.

The programs for A003494, there is no canonical definition to state claims against.
-/

/-! ## A003494.P664241673672034909

`A004773(A016137(n)-(5^n-2^n))`
-/

namespace A003494.P664241673672034909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A016137 n - ((5 ^ n : ℤ) - (2 ^ n : ℤ))).toNat

end

end A003494.P664241673672034909

/-!
# A003495: High temperature series for susceptibility for spherical model on f.c.c. lattice.

The programs for A003495, there is no canonical definition to state claims against.
-/

/-! ## A003495.P12387338934149104111

`A324947(n+1)-A271141(A092970(n+1))`
-/

namespace A003495.P12387338934149104111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324947 (n + 1) - A271141 (A092970 (n + 1)).toNat

end

end A003495.P12387338934149104111

/-!
# A003496: High temperature series for spherical model internal energy on 3-dimensional simple cubic lattice.

The programs for A003496, there is no canonical definition to state claims against.
-/

/-! ## A003496.P1942701863514700301

`A091014(A045695(n+1))`
-/

namespace A003496.P1942701863514700301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091014 (A045695 (n + 1)).toNat

end

end A003496.P1942701863514700301

/-!
# A003498: High temperature series for internal energy for spherical model on f.c.c. lattice.

The programs for A003498, there is no canonical definition to state claims against.
-/

/-! ## A003498.P9967335105340616532

`A206787(A147915(n+3)-2)`
-/

namespace A003498.P9967335105340616532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206787 (A147915 (n + 3) - 2).toNat

end

end A003498.P9967335105340616532

/-!
# A003499: a(n) = 6*a(n-1) - a(n-2), with a(0) = 2, a(1) = 6.

The programs for A003499, the canonical program `A003499.P14975825228902094244` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003499 has offset 0).

The definition of A003499 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A003499.P14975825228902094244`, by `A003499.P14975825228902094244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003499.P14975825228902094244

`6*a(n-1)-a(n-2)` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003499

/-- `6*a(n-1)-a(n-2)` -/
def P14975825228902094244.Spec : Prop :=
  ∀ n, P14975825228902094244.a n = A003499 n

theorem P14975825228902094244.correct : P14975825228902094244.Spec := by
  intro n
  simp only [A003499]

end A003499

/-! ## A003499.P81642713989805217

`2*A001541(n)`
-/

namespace A003499.P81642713989805217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001541 n

end

end A003499.P81642713989805217

namespace A003499

/-- `2*A001541(n)` -/
def P81642713989805217.Spec : Prop :=
  ∀ n, P81642713989805217.a n = A003499 n

end A003499

/-! ## A003499.P3460572994396060532

`ogf((2-6x)/(1-6x+x^2))`
-/

namespace A003499.P3460572994396060532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6] [1, -6, 1] n

end

end A003499.P3460572994396060532

namespace A003499

/-- `ogf((2-6x)/(1-6x+x^2))` -/
def P3460572994396060532.Spec : Prop :=
  ∀ n, P3460572994396060532.a n = A003499 n

end A003499

/-! ## A003499.P8952162555555479568

`floor(a(n-1)/(3-sqrt(8)))` with `a(0)=2, a(1)=6`
-/

namespace A003499.P8952162555555479568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

end

end A003499.P8952162555555479568

namespace A003499

/-- `floor(a(n-1)/(3-sqrt(8)))` -/
def P8952162555555479568.Spec : Prop :=
  ∀ n, P8952162555555479568.a n = A003499 n

end A003499

/-! ## A003499.P17491182085573479813

`(3+sqrt(8))^n+(3-sqrt(8))^n`
-/

namespace A003499.P17491182085573479813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 + Real.sqrt (8 : ℝ)) ^ n + (3 - Real.sqrt (8 : ℝ)) ^ n

end

end A003499.P17491182085573479813

namespace A003499

/-- `(3+sqrt(8))^n+(3-sqrt(8))^n` -/
def P17491182085573479813.Spec : Prop :=
  ∀ n, P17491182085573479813.a n = (A003499 n : ℝ)

theorem P17491182085573479813.correct : P17491182085573479813.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A003499, Nat.add_sub_cancel, A003499.P17491182085573479813.a, A003499.P14975825228902094244.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A003499, Nat.add_sub_cancel, A003499.P17491182085573479813.a, A003499.P14975825228902094244.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A003499

/-! ## A003499.P6792240487349248

`Δ[lcm(6, a(n-1))-a(n-2)]` with `a(0)=-1, a(1)=1`
-/

namespace A003499.P6792240487349248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  (Int.lcm 6 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003499.P6792240487349248

namespace A003499

/-- `Δ[lcm(6, a(n-1))-a(n-2)]` -/
def P6792240487349248.Spec : Prop :=
  ∀ n, P6792240487349248.a n = A003499 n

end A003499

/-! ## A003499.P15667516295883099800

`record[(-1)^n*lcm(2, round((sqrt(2)+1)^n))]`
-/

namespace A003499.P15667516295883099800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003499.P15667516295883099800

namespace A003499

/-- `record[(-1)^n*lcm(2, round((sqrt(2)+1)^n))]` -/
def P15667516295883099800.Spec : Prop :=
  ∀ n, P15667516295883099800.a n = A003499 n

end A003499

/-! ## A003499.P10735135462249389363

`record[a(n-2)-(a(n-1)+a(n-1))]` with `a(0)=2, a(1)=2`
-/

namespace A003499.P10735135462249389363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003499.P10735135462249389363

namespace A003499

/-- `record[a(n-2)-(a(n-1)+a(n-1))]` -/
def P10735135462249389363.Spec : Prop :=
  ∀ n, P10735135462249389363.a n = A003499 n

end A003499

/-! ## A003499.P1546808800582009202

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A003499.P1546808800582009202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003499.P1546808800582009202

namespace A003499

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P1546808800582009202.Spec : Prop :=
  ∀ n, P1546808800582009202.a n = A003499 n

end A003499

/-! ## A003499.P370974917406612030

`A002203(2*n)`
-/

namespace A003499.P370974917406612030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n)

end

end A003499.P370974917406612030

namespace A003499

/-- `A002203(2*n)` -/
def P370974917406612030.Spec : Prop :=
  ∀ n, P370974917406612030.a n = A003499 n

end A003499

/-! ## A003499.P2904241674850667167

`Δ[2*A182435(n)]`
-/

namespace A003499.P2904241674850667167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003499.P2904241674850667167

namespace A003499

/-- `Δ[2*A182435(n)]` -/
def P2904241674850667167.Spec : Prop :=
  ∀ n, P2904241674850667167.a n = A003499 n

end A003499

/-! ## A003499.P6236721114862854591

`record[2*A123335(n)]`
-/

namespace A003499.P6236721114862854591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003499.P6236721114862854591

namespace A003499

/-- `record[2*A123335(n)]` -/
def P6236721114862854591.Spec : Prop :=
  ∀ n, P6236721114862854591.a n = A003499 n

end A003499

/-! ## A003499.P18036044172302700140

`A204514(2*n+3)`
-/

namespace A003499.P18036044172302700140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204514 (2 * n + 3)

end

end A003499.P18036044172302700140

namespace A003499

/-- `A204514(2*n+3)` -/
def P18036044172302700140.Spec : Prop :=
  ∀ n, P18036044172302700140.a n = A003499 n

end A003499

/-! ## A003499.P5294668166964823785

`2*A001333(2*n)`
-/

namespace A003499.P5294668166964823785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001333 (2 * n)

end

end A003499.P5294668166964823785

namespace A003499

/-- `2*A001333(2*n)` -/
def P5294668166964823785.Spec : Prop :=
  ∀ n, P5294668166964823785.a n = A003499 n

end A003499

/-! ## A003499.P2845447065169310743

`2*A079496(2*n)`
-/

namespace A003499.P2845447065169310743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079496 (2 * n)

end

end A003499.P2845447065169310743

namespace A003499

/-- `2*A079496(2*n)` -/
def P2845447065169310743.Spec : Prop :=
  ∀ n, P2845447065169310743.a n = A003499 n

end A003499

/-! ## A003499.P4735926638198465632

`2*A123335(2*n)`
-/

namespace A003499.P4735926638198465632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123335 (2 * n)

end

end A003499.P4735926638198465632

namespace A003499

/-- `2*A123335(2*n)` -/
def P4735926638198465632.Spec : Prop :=
  ∀ n, P4735926638198465632.a n = A003499 n

end A003499

/-! ## A003499.P4246836305564405936

`lcm(2, A099425(2*n))`
-/

namespace A003499.P4246836305564405936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A099425 (2 * n))

end

end A003499.P4246836305564405936

namespace A003499

/-- `lcm(2, A099425(2*n))` -/
def P4246836305564405936.Spec : Prop :=
  ∀ n, (P4246836305564405936.a n : ℤ) = A003499 n

end A003499

/-! ## A003499.P4031087001481641148

`2*A126354(Δ[n²])`
-/

namespace A003499.P4031087001481641148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126354 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003499.P4031087001481641148

namespace A003499

/-- `2*A126354(Δ[n²])` -/
def P4031087001481641148.Spec : Prop :=
  ∀ n, P4031087001481641148.a n = A003499 n

end A003499

/-! ## A003499.P12183159210601143977

`record[2-Δ[A174504(n)]]`
-/

namespace A003499.P12183159210601143977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003499.P12183159210601143977

namespace A003499

/-- `record[2-Δ[A174504(n)]]` -/
def P12183159210601143977.Spec : Prop :=
  ∀ n, P12183159210601143977.a n = A003499 n

end A003499

/-! ## A003499.P16377004795803032047

`Δ[2*A111352(2*n)]`
-/

namespace A003499.P16377004795803032047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111352 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003499.P16377004795803032047

namespace A003499

/-- `Δ[2*A111352(2*n)]` -/
def P16377004795803032047.Spec : Prop :=
  ∀ n, P16377004795803032047.a n = A003499 n

end A003499

