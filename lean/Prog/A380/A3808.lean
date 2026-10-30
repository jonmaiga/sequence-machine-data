import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A380800: Expansion of e.g.f. ( (1/x) * Series_Reversion( x * exp(-x / (1 - x)^2) * (1 - x)^3 ) )^2.

The programs for A380800, the canonical program `A380800.P11564570221771668313` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380800 has offset 0).

The definition of A380800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380800.P11564570221771668313

`2*n!*∑{#}[n, (n+2)^(#-1)*C(4*n+#+5, n-#)/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380800

/-- `2*n!*∑{#}[n, (n+2)^(#-1)*C(4*n+#+5, n-#)/#!]` -/
def P11564570221771668313.Spec : Prop :=
  ∀ n, P11564570221771668313.a n = (A380800 n : ℚ)

end A380800

/-!
# A380802: a(n) = log_2(A053026(n)).

The programs for A380802, there is no canonical definition to state claims against.
-/

/-! ## A380802.P860811152007305448

`log2(A053026(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380802.P860811152007305448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A053026 (n + 1) : ℝ)

end

end A380802.P860811152007305448

/-! ## A380802.P4369420055083889847

`A001222(and(-1, A053026(n+1)))`
-/

namespace A380802.P4369420055083889847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-1) (A053026 (n + 1))).toNat

end

end A380802.P4369420055083889847

/-! ## A380802.P4500333415068128593

`A071575(A053026(2*n+1-n))`
-/

namespace A380802.P4500333415068128593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071575 (A053026 (2 * n + 1 - n)).toNat

end

end A380802.P4500333415068128593

/-! ## A380802.P13438335833279585952

`A032358(2*A053026(n+1))`
-/

namespace A380802.P13438335833279585952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032358 (2 * A053026 (n + 1)).toNat

end

end A380802.P13438335833279585952

/-! ## A380802.P3416281621696612508

`A007814(3*A053026(n+1))`
-/

namespace A380802.P3416281621696612508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (3 * A053026 (n + 1)).toNat

end

end A380802.P3416281621696612508

/-! ## A380802.P11389278204054814076

`A007814(lcm(3, A053026(n+1)))`
-/

namespace A380802.P11389278204054814076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lcm 3 (A053026 (n + 1)))

end

end A380802.P11389278204054814076

/-! ## A380802.P13998148544085298358

`A056239(2*A053026(n+1))-1`
-/

namespace A380802.P13998148544085298358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A053026 (n + 1)).toNat - 1

end

end A380802.P13998148544085298358

/-!
# A380803: a(n) is the least number k such that A380802(k) = n, or -1 if no such number exists.

The programs for A380803, there is no canonical definition to state claims against.
-/

/-! ## A380803.P5431756634449485559

`A060526(C(A167152(n+1), A003105(n)))`
-/

namespace A380803.P5431756634449485559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060526 (Nat.choose (A167152 (n + 1)).toNat (A003105 n).toNat)

end

end A380803.P5431756634449485559

/-! ## A380803.P17976284955615031991

`∑[A080023(n+3)%A101281(A001006(n))+1]`
-/

namespace A380803.P17976284955615031991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080023 (n + 3)) (A101281 (A001006 n).toNat) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380803.P17976284955615031991

/-!
# A380804: a(n) = floor(A001622*A007064(n)).

The programs for A380804, the canonical program `A380804.P3432496646295256472` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380804 has offset 1).

The definition of A380804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380804.P10767580168562394545

`floor(ϕ*comp[round(ϕ*n)])`
-/

namespace A380804.P10767580168562394545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ)⌋

end

end A380804.P10767580168562394545

namespace A380804

/-- `floor(ϕ*comp[round(ϕ*n)])` -/
def P10767580168562394545.Spec : Prop :=
  ∀ n, P10767580168562394545.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P17546732697263341962

`or(1, floor(ϕ*(2*n+1)))+n`
-/

namespace A380804.P17546732697263341962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊Real.goldenRatio * (2 * n + 1 : ℝ)⌋ + (n : ℤ)

end

end A380804.P17546732697263341962

namespace A380804

/-- `or(1, floor(ϕ*(2*n+1)))+n` -/
def P17546732697263341962.Spec : Prop :=
  ∀ n, P17546732697263341962.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P3432496646295256472

`2*A007064(n+1)-(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A380804

/-- `2*A007064(n+1)-(n+1)` -/
def P3432496646295256472.Spec : Prop :=
  ∀ n, P3432496646295256472.a n = A380804 (n + 1)

theorem P3432496646295256472.correct : P3432496646295256472.Spec := by
  intro n
  simp only [A380804, Nat.add_sub_cancel]

end A380804

/-! ## A380804.P12352233333548421926

`A035487(n+1)-A380151(n+1)`
-/

namespace A380804.P12352233333548421926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035487 (n + 1) - A380151 (n + 1)

end

end A380804.P12352233333548421926

namespace A380804

/-- `A035487(n+1)-A380151(n+1)` -/
def P12352233333548421926.Spec : Prop :=
  ∀ n, P12352233333548421926.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P3148728642850887524

`A035488(n)-(A380151(n+1)+A007064(n+1))`
-/

namespace A380804.P3148728642850887524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035488 n - (A380151 (n + 1) + A007064 (n + 1))

end

end A380804.P3148728642850887524

namespace A380804

/-- `A035488(n)-(A380151(n+1)+A007064(n+1))` -/
def P3148728642850887524.Spec : Prop :=
  ∀ n, P3148728642850887524.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P3172360254664831415

`A141105(Δ[n²])-(n+1)`
-/

namespace A380804.P3172360254664831415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141105 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A380804.P3172360254664831415

namespace A380804

/-- `A141105(Δ[n²])-(n+1)` -/
def P3172360254664831415.Spec : Prop :=
  ∀ n, P3172360254664831415.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P2025911834061252202

`∩[A327218(n+1), A387349(n+1)]`
-/

namespace A380804.P2025911834061252202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380804.P2025911834061252202

namespace A380804

/-- `∩[A327218(n+1), A387349(n+1)]` -/
def P2025911834061252202.Spec : Prop :=
  ∀ n, (P2025911834061252202.a n : ℤ) = A380804 (n + 1)

end A380804

/-! ## A380804.P1904065750013162794

`A000201(comp[round(ϕ*n)])`
-/

namespace A380804.P1904065750013162794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A380804.P1904065750013162794

namespace A380804

/-- `A000201(comp[round(ϕ*n)])` -/
def P1904065750013162794.Spec : Prop :=
  ∀ n, P1904065750013162794.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P2369775352101541494

`A066096(A108598(2*n+1)-n)`
-/

namespace A380804.P2369775352101541494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A108598 (2 * n + 1) - (n : ℤ)).toNat

end

end A380804.P2369775352101541494

namespace A380804

/-- `A066096(A108598(2*n+1)-n)` -/
def P2369775352101541494.Spec : Prop :=
  ∀ n, P2369775352101541494.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P16822805105190017656

`A007067(A007064(n+1))-A380151(n+1)`
-/

namespace A380804.P16822805105190017656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A007064 (n + 1)).toNat - A380151 (n + 1)

end

end A380804.P16822805105190017656

namespace A380804

/-- `A007067(A007064(n+1))-A380151(n+1)` -/
def P16822805105190017656.Spec : Prop :=
  ∀ n, P16822805105190017656.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P9747392399473607928

`∩[A387349(n+1), A382116(n)]`
-/

namespace A380804.P9747392399473607928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382116 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380804.P9747392399473607928

namespace A380804

/-- `∩[A387349(n+1), A382116(n)]` -/
def P9747392399473607928.Spec : Prop :=
  ∀ n, (P9747392399473607928.a n : ℤ) = A380804 (n + 1)

end A380804

/-! ## A380804.P15089496383527444141

`A005206(A188261(2*n+1))`
-/

namespace A380804.P15089496383527444141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A188261 (2 * n + 1)).toNat

end

end A380804.P15089496383527444141

namespace A380804

/-- `A005206(A188261(2*n+1))` -/
def P15089496383527444141.Spec : Prop :=
  ∀ n, P15089496383527444141.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P9022692730394044666

`filter[A327218(n+1), A380151(#)]`
-/

namespace A380804.P9022692730394044666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A380804.P9022692730394044666

namespace A380804

/-- `filter[A327218(n+1), A380151(#)]` -/
def P9022692730394044666.Spec : Prop :=
  ∀ n, P9022692730394044666.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P12892036509991393409

`filter[A387349(n+1), A327216(#)]`
-/

namespace A380804.P12892036509991393409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327216 (f1 j).toNat = 1) n)

end

end A380804.P12892036509991393409

namespace A380804

/-- `filter[A387349(n+1), A327216(#)]` -/
def P12892036509991393409.Spec : Prop :=
  ∀ n, P12892036509991393409.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P7701017544624345536

`filter[A382116(n+1), A380151(#)]`
-/

namespace A380804.P7701017544624345536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A380804.P7701017544624345536

namespace A380804

/-- `filter[A382116(n+1), A380151(#)]` -/
def P7701017544624345536.Spec : Prop :=
  ∀ n, P7701017544624345536.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P4093730325431966097

`A078796(A000201(2*n+1)+n)`
-/

namespace A380804.P4093730325431966097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (A000201 (2 * n + 1) + (n : ℤ)).toNat

end

end A380804.P4093730325431966097

namespace A380804

/-- `A078796(A000201(2*n+1)+n)` -/
def P4093730325431966097.Spec : Prop :=
  ∀ n, P4093730325431966097.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P11809402477750243101

`A078796(A001950(2*n+1)-(n+1))`
-/

namespace A380804.P11809402477750243101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (A001950 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A380804.P11809402477750243101

namespace A380804

/-- `A078796(A001950(2*n+1)-(n+1))` -/
def P11809402477750243101.Spec : Prop :=
  ∀ n, P11809402477750243101.a n = A380804 (n + 1)

end A380804

/-! ## A380804.P11782533689963323127

`A054084(2*A007064(n+1))`
-/

namespace A380804.P11782533689963323127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (2 * A007064 (n + 1)).toNat

end

end A380804.P11782533689963323127

namespace A380804

/-- `A054084(2*A007064(n+1))` -/
def P11782533689963323127.Spec : Prop :=
  ∀ n, P11782533689963323127.a n = A380804 (n + 1)

end A380804

/-!
# A380806: Numbers not of form a*(b+1) + b*(c+1) + c*(a+1) for 1<=a<=b<=c.

The programs for A380806, there is no canonical definition to state claims against.
-/

/-! ## A380806.P6062282881845642029

`lt[A195852(A003961(n+3)), A003961(n+1)]`
-/

namespace A380806.P6062282881845642029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195852 (A003961 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380806.P6062282881845642029

/-! ## A380806.P9664421702661577424

`lt[A375003(n+1), A126864(A358458(2*(n+1))+1)]+1`
-/

namespace A380806.P9664421702661577424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126864 (A358458 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A380806.P9664421702661577424

/-! ## A380806.P6793757846894825263

`lt[A000700(A243501(n+3)), A165998(n)]`
-/

namespace A380806.P6793757846894825263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A243501 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380806.P6793757846894825263

/-! ## A380806.P12775994724551593852

`lt[A325676(A363731(n+3)), A276575(n)]`
-/

namespace A380806.P12775994724551593852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325676 (A363731 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380806.P12775994724551593852

/-! ## A380806.P12402671530205237589

`lt[A088756(A254981(n+3)), A254981(n+1)]`
-/

namespace A380806.P12402671530205237589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088756 (A254981 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254981 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380806.P12402671530205237589

/-!
# A380807: Numbers not of form a*(b+1) + b*(c+1) + c*(a+1) for 0<a<b<c.

The programs for A380807, there is no canonical definition to state claims against.
-/

/-! ## A380807.P11795263049532395041

`lt[A054440(n), A328618(A000695(3*n+1))]`
-/

namespace A380807.P11795263049532395041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054440 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328618 (A000695 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380807.P11795263049532395041

/-! ## A380807.P3285531904815375837

`lt[A300751(A304660(n+1)), A176743(n)]`
-/

namespace A380807.P3285531904815375837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300751 (A304660 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176743 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380807.P3285531904815375837

/-! ## A380807.P14008080280679897339

`lt[A005893(A157235(n+1)), A357260(2*n+1)]`
-/

namespace A380807.P14008080280679897339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A157235 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357260 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380807.P14008080280679897339

/-! ## A380807.P8733064200657006891

`lt[A306612(A345063(n+1)), A330772(2*n+5)]`
-/

namespace A380807.P8733064200657006891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306612 (A345063 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330772 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380807.P8733064200657006891

/-! ## A380807.P16779384422848367837

`lt[A133314(n)-A343740(2*n+1), 1]`
-/

namespace A380807.P16779384422848367837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133314 n - A343740 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A380807.P16779384422848367837

/-!
# A380808: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-2*x) / (1 + x*exp(-x)) ).

The programs for A380808, the canonical program `A380808.P6341164993897770402` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380808 has offset 0).

The definition of A380808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380808.P6341164993897770402

`n!*∑{#}[n, (n+#+2)^#*C(n, #)/(#+1)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380808

/-- `n!*∑{#}[n, (n+#+2)^#*C(n, #)/(#+1)!]` -/
def P6341164993897770402.Spec : Prop :=
  ∀ n, P6341164993897770402.a n = (A380808 n : ℚ)

end A380808

/-!
# A380811: Smallest composite number divisible by prime(n) which shares at least one decimal digit with prime(n).

The programs for A380811, there is no canonical definition to state claims against.
-/

/-! ## A380811.P7976691150635655979

`A087217(A091689(n+1))`
-/

namespace A380811.P7976691150635655979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087217 (A091689 (n + 1)).toNat

end

end A380811.P7976691150635655979

/-!
# A380813: Sequence of y-coordinates of the lexicographically earliest (according to the spiral numbering of the square grid; see comments) infinite Racetrack trajectory (using von Neumann neighborhood) on the square grid.

The programs for A380813, there is no canonical definition to state claims against.
-/

/-! ## A380813.P13537661563082413266

`A274923(A351043(n)+1)`
-/

namespace A380813.P13537661563082413266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A351043 n + 1).toNat

end

end A380813.P13537661563082413266

/-!
# A380814: Squared distance to the origin after the n-th step of the Racetrack trajectory in A380812 and A380813.

The programs for A380814, there is no canonical definition to state claims against.
-/

/-! ## A380814.P16085277591303543709

`A380812(n)²+A380813(n)²`
-/

namespace A380814.P16085277591303543709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380812 n ^ 2 + A380813 n ^ 2

end

end A380814.P16085277591303543709

/-!
# A380815: a(n) = A379343(A378684(n)).

The programs for A380815, the canonical program `A380815.P14242590571363670385` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380815 has offset 1).

The definition of A380815 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378684, A379343, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380815.P14242590571363670385

`A379343(A378684(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A380815

/-- `A379343(A378684(n+1))` -/
def P14242590571363670385.Spec : Prop :=
  ∀ n, P14242590571363670385.a n = A380815 (n + 1)

theorem P14242590571363670385.correct : P14242590571363670385.Spec := by
  intro n
  simp only [A380815, Nat.add_sub_cancel]

end A380815

/-! ## A380815.P8254423978768783654

`A378200(A056023(n+1))`
-/

namespace A380815.P8254423978768783654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A056023 (n + 1)).toNat

end

end A380815.P8254423978768783654

namespace A380815

/-- `A378200(A056023(n+1))` -/
def P8254423978768783654.Spec : Prop :=
  ∀ n, P8254423978768783654.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P4198995370419281780

`A380200(A376214(n+1))`
-/

namespace A380815.P4198995370419281780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A376214 (n + 1)).toNat

end

end A380815.P4198995370419281780

namespace A380815

/-- `A380200(A376214(n+1))` -/
def P4198995370419281780.Spec : Prop :=
  ∀ n, P4198995370419281780.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P18336372995620058726

`A376214(A380245(n+1))`
-/

namespace A380815.P18336372995620058726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A380245 (n + 1)).toNat

end

end A380815.P18336372995620058726

namespace A380815

/-- `A376214(A380245(n+1))` -/
def P18336372995620058726.Spec : Prop :=
  ∀ n, P18336372995620058726.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P2895542289294512560

`A379342(A380817(n+1))`
-/

namespace A380815.P2895542289294512560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A380817 (n + 1)).toNat

end

end A380815.P2895542289294512560

namespace A380815

/-- `A379342(A380817(n+1))` -/
def P2895542289294512560.Spec : Prop :=
  ∀ n, P2895542289294512560.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P3443791200405042469

`A378684(A381664(n+1))`
-/

namespace A380815.P3443791200405042469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A381664 (n + 1)).toNat

end

end A380815.P3443791200405042469

namespace A380815

/-- `A378684(A381664(n+1))` -/
def P3443791200405042469.Spec : Prop :=
  ∀ n, P3443791200405042469.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P9129219179526311533

`A381662(A379342(n+1))`
-/

namespace A380815.P9129219179526311533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (A379342 (n + 1)).toNat

end

end A380815.P9129219179526311533

namespace A380815

/-- `A381662(A379342(n+1))` -/
def P9129219179526311533.Spec : Prop :=
  ∀ n, P9129219179526311533.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P8863101561476068483

`A381664(A379343(n+1))`
-/

namespace A380815.P8863101561476068483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A379343 (n + 1)).toNat

end

end A380815.P8863101561476068483

namespace A380815

/-- `A381664(A379343(n+1))` -/
def P8863101561476068483.Spec : Prop :=
  ∀ n, P8863101561476068483.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P18089779075503658163

`A380817(A380200(n+1))`
-/

namespace A380815.P18089779075503658163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A380200 (n + 1)).toNat

end

end A380815.P18089779075503658163

namespace A380815

/-- `A380817(A380200(n+1))` -/
def P18089779075503658163.Spec : Prop :=
  ∀ n, P18089779075503658163.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P1777521737024942883

`A383589(A378200(n+1))`
-/

namespace A380815.P1777521737024942883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A378200 (n + 1)).toNat

end

end A380815.P1777521737024942883

namespace A380815

/-- `A383589(A378200(n+1))` -/
def P1777521737024942883.Spec : Prop :=
  ∀ n, P1777521737024942883.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P678642472170053620

`A380245(A381662(n+1))`
-/

namespace A380815.P678642472170053620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A381662 (n + 1)).toNat

end

end A380815.P678642472170053620

namespace A380815

/-- `A380245(A381662(n+1))` -/
def P678642472170053620.Spec : Prop :=
  ∀ n, P678642472170053620.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P3515451306578086635

`A381663(A381663(n+1))`
-/

namespace A380815.P3515451306578086635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381663 (A381663 (n + 1)).toNat

end

end A380815.P3515451306578086635

namespace A380815

/-- `A381663(A381663(n+1))` -/
def P3515451306578086635.Spec : Prop :=
  ∀ n, P3515451306578086635.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P4932616442480843159

`A056023(A380200(A378762(n+1)))`
-/

namespace A380815.P4932616442480843159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A380200 (A378762 (n + 1)).toNat).toNat

end

end A380815.P4932616442480843159

namespace A380815

/-- `A056023(A380200(A378762(n+1)))` -/
def P4932616442480843159.Spec : Prop :=
  ∀ n, P4932616442480843159.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P3927889406361707522

`A380245(A056023(A383723(n+1)))`
-/

namespace A380815.P3927889406361707522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A056023 (A383723 (n + 1)).toNat).toNat

end

end A380815.P3927889406361707522

namespace A380815

/-- `A380245(A056023(A383723(n+1)))` -/
def P3927889406361707522.Spec : Prop :=
  ∀ n, P3927889406361707522.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P6294227329039621291

`A378705(A376214(A378705(n+1)))`
-/

namespace A380815.P6294227329039621291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A376214 (A378705 (n + 1)).toNat).toNat

end

end A380815.P6294227329039621291

namespace A380815

/-- `A378705(A376214(A378705(n+1)))` -/
def P6294227329039621291.Spec : Prop :=
  ∀ n, P6294227329039621291.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P14467593262293099109

`A378705(A379343(A383589(n+1)))`
-/

namespace A380815.P14467593262293099109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A379343 (A383589 (n + 1)).toNat).toNat

end

end A380815.P14467593262293099109

namespace A380815

/-- `A378705(A379343(A383589(n+1)))` -/
def P14467593262293099109.Spec : Prop :=
  ∀ n, P14467593262293099109.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P5554631790132952235

`A381968(A378684(A382499(n+1)))`
-/

namespace A380815.P5554631790132952235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A378684 (A382499 (n + 1)).toNat).toNat

end

end A380815.P5554631790132952235

namespace A380815

/-- `A381968(A378684(A382499(n+1)))` -/
def P5554631790132952235.Spec : Prop :=
  ∀ n, P5554631790132952235.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P10283145138193142406

`A382680(A378684(A381968(n+1)))`
-/

namespace A380815.P10283145138193142406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A378684 (A381968 (n + 1)).toNat).toNat

end

end A380815.P10283145138193142406

namespace A380815

/-- `A382680(A378684(A381968(n+1)))` -/
def P10283145138193142406.Spec : Prop :=
  ∀ n, P10283145138193142406.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P10743072117430601627

`A382499(A378684(A382679(n+1)))`
-/

namespace A380815.P10743072117430601627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A378684 (A382679 (n + 1)).toNat).toNat

end

end A380815.P10743072117430601627

namespace A380815

/-- `A382499(A378684(A382679(n+1)))` -/
def P10743072117430601627.Spec : Prop :=
  ∀ n, P10743072117430601627.a n = A380815 (n + 1)

end A380815

/-! ## A380815.P5315435443484141198

`A382679(A378684(A382680(n+1)))`
-/

namespace A380815.P5315435443484141198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A378684 (A382680 (n + 1)).toNat).toNat

end

end A380815.P5315435443484141198

namespace A380815

/-- `A382679(A378684(A382680(n+1)))` -/
def P5315435443484141198.Spec : Prop :=
  ∀ n, P5315435443484141198.a n = A380815 (n + 1)

end A380815

/-!
# A380817: a(n) = A379343(A380245(n)).

The programs for A380817, the canonical program `A380817.P8151582687928580409` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380817 has offset 1).

The definition of A380817 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379343, A380245, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380817.P8151582687928580409

`A379343(A380245(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A380817

/-- `A379343(A380245(n+1))` -/
def P8151582687928580409.Spec : Prop :=
  ∀ n, P8151582687928580409.a n = A380817 (n + 1)

theorem P8151582687928580409.correct : P8151582687928580409.Spec := by
  intro n
  simp only [A380817, Nat.add_sub_cancel]

end A380817

/-! ## A380817.P2487747813023897277

`A378762(A056023(n+1))`
-/

namespace A380817.P2487747813023897277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378762 (A056023 (n + 1)).toNat

end

end A380817.P2487747813023897277

namespace A380817

/-- `A378762(A056023(n+1))` -/
def P2487747813023897277.Spec : Prop :=
  ∀ n, P2487747813023897277.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P6734268401150651808

`A381662(A376214(1+n))`
-/

namespace A380817.P6734268401150651808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (A376214 (1 + n)).toNat

end

end A380817.P6734268401150651808

namespace A380817

/-- `A381662(A376214(1+n))` -/
def P6734268401150651808.Spec : Prop :=
  ∀ n, P6734268401150651808.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P12853735564586287775

`A380245(A378684(n+1))`
-/

namespace A380817.P12853735564586287775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A378684 (n + 1)).toNat

end

end A380817.P12853735564586287775

namespace A380817

/-- `A380245(A378684(n+1))` -/
def P12853735564586287775.Spec : Prop :=
  ∀ n, P12853735564586287775.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P6263515828746976906

`A378684(A380815(n+1))`
-/

namespace A380817.P6263515828746976906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A380815 (n + 1)).toNat

end

end A380817.P6263515828746976906

namespace A380817

/-- `A378684(A380815(n+1))` -/
def P6263515828746976906.Spec : Prop :=
  ∀ n, P6263515828746976906.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P14949263325333429708

`A380815(A379343(n+1))`
-/

namespace A380817.P14949263325333429708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A379343 (n + 1)).toNat

end

end A380817.P14949263325333429708

namespace A380817

/-- `A380815(A379343(n+1))` -/
def P14949263325333429708.Spec : Prop :=
  ∀ n, P14949263325333429708.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P6009485289369908898

`A381663(A379342(n+1))`
-/

namespace A380817.P6009485289369908898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381663 (A379342 (n + 1)).toNat

end

end A380817.P6009485289369908898

namespace A380817

/-- `A381663(A379342(n+1))` -/
def P6009485289369908898.Spec : Prop :=
  ∀ n, P6009485289369908898.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P15228296180178893752

`A379342(A381664(n+1))`
-/

namespace A380817.P15228296180178893752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A381664 (n + 1)).toNat

end

end A380817.P15228296180178893752

namespace A380817

/-- `A379342(A381664(n+1))` -/
def P15228296180178893752.Spec : Prop :=
  ∀ n, P15228296180178893752.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P9454996397301461184

`A380200(A381663(n+1))`
-/

namespace A380817.P9454996397301461184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A381663 (n + 1)).toNat

end

end A380817.P9454996397301461184

namespace A380817

/-- `A380200(A381663(n+1))` -/
def P9454996397301461184.Spec : Prop :=
  ∀ n, P9454996397301461184.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P7272874363277024283

`A381664(A380200(n+1))`
-/

namespace A380817.P7272874363277024283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A380200 (n + 1)).toNat

end

end A380817.P7272874363277024283

namespace A380817

/-- `A381664(A380200(n+1))` -/
def P7272874363277024283.Spec : Prop :=
  ∀ n, P7272874363277024283.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P16313506666588829466

`A381968(A382679(n+1))`
-/

namespace A380817.P16313506666588829466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A382679 (n + 1)).toNat

end

end A380817.P16313506666588829466

namespace A380817

/-- `A381968(A382679(n+1))` -/
def P16313506666588829466.Spec : Prop :=
  ∀ n, P16313506666588829466.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P14955206819207113442

`A382680(A381968(n+1))`
-/

namespace A380817.P14955206819207113442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A381968 (n + 1)).toNat

end

end A380817.P14955206819207113442

namespace A380817

/-- `A382680(A381968(n+1))` -/
def P14955206819207113442.Spec : Prop :=
  ∀ n, P14955206819207113442.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P13730878943326693160

`A382679(A382499(n+1))`
-/

namespace A380817.P13730878943326693160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A382499 (n + 1)).toNat

end

end A380817.P13730878943326693160

namespace A380817

/-- `A382679(A382499(n+1))` -/
def P13730878943326693160.Spec : Prop :=
  ∀ n, P13730878943326693160.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P12355110478139108145

`A382499(A382680(n+1))`
-/

namespace A380817.P12355110478139108145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A382680 (n + 1)).toNat

end

end A380817.P12355110478139108145

namespace A380817

/-- `A382499(A382680(n+1))` -/
def P12355110478139108145.Spec : Prop :=
  ∀ n, P12355110478139108145.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P15802785273620539807

`A383722(A383419(n+1))`
-/

namespace A380817.P15802785273620539807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383722 (A383419 (n + 1)).toNat

end

end A380817.P15802785273620539807

namespace A380817

/-- `A383722(A383419(n+1))` -/
def P15802785273620539807.Spec : Prop :=
  ∀ n, P15802785273620539807.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P1799082751133325088

`A383419(A383724(n+1))`
-/

namespace A380817.P1799082751133325088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A383724 (n + 1)).toNat

end

end A380817.P1799082751133325088

namespace A380817

/-- `A383419(A383724(n+1))` -/
def P1799082751133325088.Spec : Prop :=
  ∀ n, P1799082751133325088.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P949571615233000372

`A383723(A383589(n+1))`
-/

namespace A380817.P949571615233000372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A383589 (n + 1)).toNat

end

end A380817.P949571615233000372

namespace A380817

/-- `A383723(A383589(n+1))` -/
def P949571615233000372.Spec : Prop :=
  ∀ n, P949571615233000372.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P18264038253338066370

`A383590(A383722(n+1))`
-/

namespace A380817.P18264038253338066370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383590 (A383722 (n + 1)).toNat

end

end A380817.P18264038253338066370

namespace A380817

/-- `A383590(A383722(n+1))` -/
def P18264038253338066370.Spec : Prop :=
  ∀ n, P18264038253338066370.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P1052368968422302980

`A383724(A383590(n+1))`
-/

namespace A380817.P1052368968422302980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A383590 (n + 1)).toNat

end

end A380817.P1052368968422302980

namespace A380817

/-- `A383724(A383590(n+1))` -/
def P1052368968422302980.Spec : Prop :=
  ∀ n, P1052368968422302980.a n = A380817 (n + 1)

end A380817

/-! ## A380817.P18227373409789398270

`A376214(A056023(A383723(n+1)))`
-/

namespace A380817.P18227373409789398270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A056023 (A383723 (n + 1)).toNat).toNat

end

end A380817.P18227373409789398270

namespace A380817

/-- `A376214(A056023(A383723(n+1)))` -/
def P18227373409789398270.Spec : Prop :=
  ∀ n, P18227373409789398270.a n = A380817 (n + 1)

end A380817

/-!
# A380818: Numbers k such that the Diophantine equation d_r*x^r + ... + d_0*x^0 = 0 has an integer solution. k = (d_r .. d_0) in decimal notation, d_i are the digits of k.

The programs for A380818, there is no canonical definition to state claims against.
-/

/-! ## A380818.P10249369642829332045

`eq[n, lcm(n, A054899(n))]`
-/

namespace A380818.P10249369642829332045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A054899 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380818.P10249369642829332045

/-!
# A380819: Triangle read by rows where row n lists "weak" divisors d | n (i.e., d in A052485) such that rad(d)^2 does not divide d, where rad = A007947.

The programs for A380819, there is no canonical definition to state claims against.
-/

/-! ## A380819.P15637445447165048555

`filter[A027750(n+1), A051904(#)]`
-/

namespace A380819.P15637445447165048555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051904 (f1 j).toNat = 1) n)

end

end A380819.P15637445447165048555

/-! ## A380819.P15158185592352829624

`A000188(A003598(n+5)-n)+1`
-/

namespace A380819.P15158185592352829624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A003598 (n + 5) - (n : ℤ)).toNat + 1

end

end A380819.P15158185592352829624

/-!
# A380820: a(0) = 0, a(1) = 1, and for n >= 2, a(n) = a(n-1) + a(n-2) if a(n-1) < n, otherwise a(n-1) - n.

The programs for A380820, the canonical program `A380820.P1959966200863480418` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380820 has offset 0).

The definition of A380820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380820.P1959966200863480418

`(a(n-1)+a(n-2))%(a(n-2)+n)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380820

/-- `(a(n-1)+a(n-2))%(a(n-2)+n)` -/
def P1959966200863480418.Spec : Prop :=
  ∀ n, (P1959966200863480418.a n : ℤ) = A380820 n

theorem P1959966200863480418.correct : P1959966200863480418.Spec := by
  intro n
  simp only [A380820]

end A380820

/-!
# A380821: Length of the short leg in the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A380821, the canonical program `A380821.P10996316985306517664` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380821 has offset 0).

The definition of A380821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380821.P15375904644678117874

`ogf((5-7x+x^2)/(1-2x+x^3))`
-/

namespace A380821.P15375904644678117874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -7, 1] [1, -2, 0, 1] n

end

end A380821.P15375904644678117874

namespace A380821

/-- `ogf((5-7x+x^2)/(1-2x+x^3))` -/
def P15375904644678117874.Spec : Prop :=
  ∀ n, P15375904644678117874.a n = A380821 n

end A380821

/-! ## A380821.P10996316985306517664

`2*A000032(n)+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A380821

/-- `2*A000032(n)+1` -/
def P10996316985306517664.Spec : Prop :=
  ∀ n, P10996316985306517664.a n = A380821 n

theorem P10996316985306517664.correct : P10996316985306517664.Spec := by
  intro n
  simp only [A380821]

end A380821

/-! ## A380821.P9899587664855503422

`a(n-1)+a(n-2)-1` with `a(0)=5, a(1)=3`
-/

namespace A380821.P9899587664855503422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 3] fun n a =>
  a (n - 1) + (a (n - 2) - 1)

end

end A380821.P9899587664855503422

namespace A380821

/-- `a(n-1)+a(n-2)-1` -/
def P9899587664855503422.Spec : Prop :=
  ∀ n, P9899587664855503422.a n = A380821 n

end A380821

/-! ## A380821.P12397764263826351463

`a(n-1)-(1-a(n-2))` with `a(0)=5, a(1)=3`
-/

namespace A380821.P12397764263826351463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 3] fun n a =>
  a (n - 1) - (1 - a (n - 2))

end

end A380821.P12397764263826351463

namespace A380821

/-- `a(n-1)-(1-a(n-2))` -/
def P12397764263826351463.Spec : Prop :=
  ∀ n, P12397764263826351463.a n = A380821 n

end A380821

/-! ## A380821.P4032404576753906941

`1+2*A000032(n)`
-/

namespace A380821.P4032404576753906941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A000032 n

end

end A380821.P4032404576753906941

namespace A380821

/-- `1+2*A000032(n)` -/
def P4032404576753906941.Spec : Prop :=
  ∀ n, P4032404576753906941.a n = A380821 n

theorem P4032404576753906941.correct : P4032404576753906941.Spec := by
  intro n
  simp only [A380821, Nat.add_sub_cancel, A380821.P4032404576753906941.a, A380821.P10996316985306517664.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A380821

/-! ## A380821.P13619381587338444935

`2*A001612(n)-1`
-/

namespace A380821.P13619381587338444935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001612 n - 1

end

end A380821.P13619381587338444935

namespace A380821

/-- `2*A001612(n)-1` -/
def P13619381587338444935.Spec : Prop :=
  ∀ n, P13619381587338444935.a n = A380821 n

end A380821

/-! ## A380821.P11011815845621934985

`2*A000211(n)-3`
-/

namespace A380821.P11011815845621934985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000211 n - 3

end

end A380821.P11011815845621934985

namespace A380821

/-- `2*A000211(n)-3` -/
def P11011815845621934985.Spec : Prop :=
  ∀ n, P11011815845621934985.a n = A380821 n

end A380821

/-! ## A380821.P10218266783353033096

`A001612(n)+A000032(n)`
-/

namespace A380821.P10218266783353033096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + A000032 n

end

end A380821.P10218266783353033096

namespace A380821

/-- `A001612(n)+A000032(n)` -/
def P10218266783353033096.Spec : Prop :=
  ∀ n, P10218266783353033096.a n = A380821 n

end A380821

/-! ## A380821.P11800730990464020388

`A099925(n)+A020878(n)`
-/

namespace A380821.P11800730990464020388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099925 n + A020878 n

end

end A380821.P11800730990464020388

namespace A380821

/-- `A099925(n)+A020878(n)` -/
def P11800730990464020388.Spec : Prop :=
  ∀ n, P11800730990464020388.a n = A380821 n

end A380821

/-! ## A380821.P22864194326158943

`A054977(n+1)+A000032(n)+A000032(n)`
-/

namespace A380821.P22864194326158943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) + (A000032 n + A000032 n)

end

end A380821.P22864194326158943

namespace A380821

/-- `A054977(n+1)+A000032(n)+A000032(n)` -/
def P22864194326158943.Spec : Prop :=
  ∀ n, P22864194326158943.a n = A380821 n

end A380821

/-! ## A380821.P8144158897196291394

`A057427(n+1)+A000032(n)+A000032(n)`
-/

namespace A380821.P8144158897196291394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + (A000032 n + A000032 n)

end

end A380821.P8144158897196291394

namespace A380821

/-- `A057427(n+1)+A000032(n)+A000032(n)` -/
def P8144158897196291394.Spec : Prop :=
  ∀ n, P8144158897196291394.a n = A380821 n

end A380821

/-! ## A380821.P7145672167973521649

`A000032(n)+A013655(n)-A000071(n+1)`
-/

namespace A380821.P7145672167973521649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A013655 n - A000071 (n + 1))

end

end A380821.P7145672167973521649

namespace A380821

/-- `A000032(n)+A013655(n)-A000071(n+1)` -/
def P7145672167973521649.Spec : Prop :=
  ∀ n, P7145672167973521649.a n = A380821 n

end A380821

/-! ## A380821.P1890757172516999484

`A001588(n+1)+A001588(n+1)-A001588(n)`
-/

namespace A380821.P1890757172516999484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 (n + 1) + (A001588 (n + 1) - A001588 n)

end

end A380821.P1890757172516999484

namespace A380821

/-- `A001588(n+1)+A001588(n+1)-A001588(n)` -/
def P1890757172516999484.Spec : Prop :=
  ∀ n, P1890757172516999484.a n = A380821 n

end A380821

/-! ## A380821.P10835449876997822275

`A048584(n)-A187890(n+1)`
-/

namespace A380821.P10835449876997822275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n - A187890 (n + 1)

end

end A380821.P10835449876997822275

namespace A380821

/-- `A048584(n)-A187890(n+1)` -/
def P10835449876997822275.Spec : Prop :=
  ∀ n, P10835449876997822275.a n = A380821 n

end A380821

/-! ## A380821.P6218574353822736636

`A187891(n+1)+A187891(n)-A187892(n)`
-/

namespace A380821.P6218574353822736636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 (n + 1) + (A187891 n - A187892 n)

end

end A380821.P6218574353822736636

namespace A380821

/-- `A187891(n+1)+A187891(n)-A187892(n)` -/
def P6218574353822736636.Spec : Prop :=
  ∀ n, P6218574353822736636.a n = A380821 n

end A380821

/-! ## A380821.P7503734948849369996

`A187892(n+1)-(A001611(n)+A000071(n+1))`
-/

namespace A380821.P7503734948849369996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 (n + 1) - (A001611 n + A000071 (n + 1))

end

end A380821.P7503734948849369996

namespace A380821

/-- `A187892(n+1)-(A001611(n)+A000071(n+1))` -/
def P7503734948849369996.Spec : Prop :=
  ∀ n, P7503734948849369996.a n = A380821 n

end A380821

/-! ## A380821.P14044025197048306953

`A187892(n+1)+A001611(n)-A001612(n+1)`
-/

namespace A380821.P14044025197048306953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 (n + 1) + (A001611 n - A001612 (n + 1))

end

end A380821.P14044025197048306953

namespace A380821

/-- `A187892(n+1)+A001611(n)-A001612(n+1)` -/
def P14044025197048306953.Spec : Prop :=
  ∀ n, P14044025197048306953.a n = A380821 n

end A380821

/-! ## A380821.P12865402798118602845

`A187893(n+1)+A210673(n+1)-A065220(n)`
-/

namespace A380821.P12865402798118602845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 (n + 1) + (A210673 (n + 1) - A065220 n)

end

end A380821.P12865402798118602845

namespace A380821

/-- `A187893(n+1)+A210673(n+1)-A065220(n)` -/
def P12865402798118602845.Spec : Prop :=
  ∀ n, P12865402798118602845.a n = A380821 n

end A380821

/-! ## A380821.P10210696353474218402

`Δ[A022112(n)]+1`
-/

namespace A380821.P10210696353474218402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A380821.P10210696353474218402

namespace A380821

/-- `Δ[A022112(n)]+1` -/
def P10210696353474218402.Spec : Prop :=
  ∀ n, P10210696353474218402.a n = A380821 n

end A380821

/-! ## A380821.P1001201336680481616

`Δ[A022319(n)]+1`
-/

namespace A380821.P1001201336680481616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A380821.P1001201336680481616

namespace A380821

/-- `Δ[A022319(n)]+1` -/
def P1001201336680481616.Spec : Prop :=
  ∀ n, P1001201336680481616.a n = A380821 n

end A380821

/-!
# A380822: Triangle read by rows: T(n,k) is the number of compositions of n with k pairs of equal adjacent parts and all parts in standard order.

The programs for A380822, there is no canonical definition to state claims against.
-/

/-! ## A380822.P13853334909154296093

`A360672(lt[A090868(n+5), A250120(3*n)])`
-/

namespace A380822.P13853334909154296093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090868 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360672 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A380822.P13853334909154296093

/-! ## A380822.P14654915577090932676

`A335433(n+1)%A299701(A276075(2*(n+2)))`
-/

namespace A380822.P14654915577090932676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335433 (n + 1)) (A299701 (A276075 (2 * (n + 2))).toNat)

end

end A380822.P14654915577090932676

/-! ## A380822.P7808205932617715929

`A108731(A356988(3*n+5)+A019575(n+1))`
-/

namespace A380822.P7808205932617715929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108731 (A356988 (3 * n + 5) + A019575 (n + 1)).toNat

end

end A380822.P7808205932617715929

/-! ## A380822.P5536559537658170307

`A007949(A154430(n+1))*A086597(A190501(n)+5)`
-/

namespace A380822.P5536559537658170307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A154430 (n + 1)).toNat * A086597 (A190501 n + 5).toNat

end

end A380822.P5536559537658170307

/-! ## A380822.P11964296267837456986

`A116433(A152148(n))`
-/

namespace A380822.P11964296267837456986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 (A152148 n).toNat

end

end A380822.P11964296267837456986

/-!
# A380823: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A380823, the canonical program `A380823.P15923719920850826478` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380823 has offset 0).

The definition of A380823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380823.P10455150142429912836

`ogf((15-54x+34x^2+35x^3-28x^4)/(1-4x+2x^2+6x^3-4x^4-2x^5+x^6))`
-/

namespace A380823.P10455150142429912836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, -54, 34, 35, -28] [1, -4, 2, 6, -4, -2, 1] n

end

end A380823.P10455150142429912836

namespace A380823

/-- `ogf((15-54x+34x^2+35x^3-28x^4)/(1-4x+2x^2+6x^3-4x^4-2x^5+x^6))` -/
def P10455150142429912836.Spec : Prop :=
  ∀ n, P10455150142429912836.a n = A380823 n

end A380823

/-! ## A380823.P15923719920850826478

`(A000032(n)+1)*(2*A000032(n)+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A380823

/-- `(A000032(n)+1)*(2*A000032(n)+1)` -/
def P15923719920850826478.Spec : Prop :=
  ∀ n, P15923719920850826478.a n = A380823 n

theorem P15923719920850826478.correct : P15923719920850826478.Spec := by
  intro n
  simp only [A380823]

end A380823

/-! ## A380823.P10578015409537836465

`A386201(n)+A001612(n)`
-/

namespace A380823.P10578015409537836465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386201 n + A001612 n

end

end A380823.P10578015409537836465

namespace A380823

/-- `A386201(n)+A001612(n)` -/
def P10578015409537836465.Spec : Prop :=
  ∀ n, P10578015409537836465.a n = A380823 n

end A380823

/-! ## A380823.P7871293511167671418

`A381721(n)-A000032(n)`
-/

namespace A380823.P7871293511167671418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381721 n - A000032 n

end

end A380823.P7871293511167671418

namespace A380823

/-- `A381721(n)-A000032(n)` -/
def P7871293511167671418.Spec : Prop :=
  ∀ n, P7871293511167671418.a n = A380823 n

theorem P7871293511167671418.correct : P7871293511167671418.Spec := by
  intro n
  simp only [A380823, Nat.add_sub_cancel, A380823.P7871293511167671418.a, A380823.P15923719920850826478.a, A000032, A000032.P8352177345629330861.a, A381721, A381721.P9195889644798697899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380823

/-! ## A380823.P18200144894649502116

`A001612(n)*A380821(n)`
-/

namespace A380823.P18200144894649502116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n * A380821 n

end

end A380823.P18200144894649502116

namespace A380823

/-- `A001612(n)*A380821(n)` -/
def P18200144894649502116.Spec : Prop :=
  ∀ n, P18200144894649502116.a n = A380823 n

end A380823

/-! ## A380823.P2553312968525485499

`A381721(n)-A329723(n+2)`
-/

namespace A380823.P2553312968525485499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381721 n - A329723 (n + 2)

end

end A380823.P2553312968525485499

namespace A380823

/-- `A381721(n)-A329723(n+2)` -/
def P2553312968525485499.Spec : Prop :=
  ∀ n, P2553312968525485499.a n = A380823 n

end A380823

/-! ## A380823.P8947126202574145723

`A381721(n)-A127218(2*n)`
-/

namespace A380823.P8947126202574145723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381721 n - A127218 (2 * n)

end

end A380823.P8947126202574145723

namespace A380823

/-- `A381721(n)-A127218(2*n)` -/
def P8947126202574145723.Spec : Prop :=
  ∀ n, P8947126202574145723.a n = A380823 n

end A380823

/-! ## A380823.P6903833444205221305

`A380821(n)+A386201(n)-A000032(n)`
-/

namespace A380823.P6903833444205221305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380821 n + (A386201 n - A000032 n)

end

end A380823.P6903833444205221305

namespace A380823

/-- `A380821(n)+A386201(n)-A000032(n)` -/
def P6903833444205221305.Spec : Prop :=
  ∀ n, P6903833444205221305.a n = A380823 n

theorem P6903833444205221305.correct : P6903833444205221305.Spec := by
  intro n
  simp only [A380823, Nat.add_sub_cancel, A380823.P6903833444205221305.a, A380823.P15923719920850826478.a, A000032, A000032.P8352177345629330861.a, A380821, A380821.P10996316985306517664.a, A386201, A386201.P11856909807172330877.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380823

/-! ## A380823.P15437206054522528106

`(A001612(n)+A000032(n))*A001612(n)`
-/

namespace A380823.P15437206054522528106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001612 n + A000032 n) * A001612 n

end

end A380823.P15437206054522528106

namespace A380823

/-- `(A001612(n)+A000032(n))*A001612(n)` -/
def P15437206054522528106.Spec : Prop :=
  ∀ n, P15437206054522528106.a n = A380823 n

end A380823

/-! ## A380823.P5680594133272058962

`C(2*(Δ[A001610(n)]+1), 2)`
-/

namespace A380823.P5680594133272058962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (f1 (n + 1) - f1 n + 1)).toNat 2

end

end A380823.P5680594133272058962

namespace A380823

/-- `C(2*(Δ[A001610(n)]+1), 2)` -/
def P5680594133272058962.Spec : Prop :=
  ∀ n, (P5680594133272058962.a n : ℤ) = A380823 n

end A380823

/-! ## A380823.P17427482177259695833

`C(2*(Δ[A000204(n+1)]+1), 2)`
-/

namespace A380823.P17427482177259695833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (f1 (n + 1) - f1 n + 1)).toNat 2

end

end A380823.P17427482177259695833

namespace A380823

/-- `C(2*(Δ[A000204(n+1)]+1), 2)` -/
def P17427482177259695833.Spec : Prop :=
  ∀ n, (P17427482177259695833.a n : ℤ) = A380823 n

end A380823

/-! ## A380823.P9071162166069732281

`A380824(n)/A000032(n)`
-/

namespace A380823.P9071162166069732281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380824 n : ℚ) / (A000032 n : ℚ)

end

end A380823.P9071162166069732281

namespace A380823

/-- `A380824(n)/A000032(n)` -/
def P9071162166069732281.Spec : Prop :=
  ∀ n, P9071162166069732281.a n = (A380823 n : ℚ)

end A380823

/-! ## A380823.P10508989116090027734

`A380824(n)/A329723(n+2)`
-/

namespace A380823.P10508989116090027734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380824 n : ℚ) / (A329723 (n + 2) : ℚ)

end

end A380823.P10508989116090027734

namespace A380823

/-- `A380824(n)/A329723(n+2)` -/
def P10508989116090027734.Spec : Prop :=
  ∀ n, P10508989116090027734.a n = (A380823 n : ℚ)

end A380823

/-! ## A380823.P1381450719359017322

`A380824(n)/A127218(2*n)`
-/

namespace A380823.P1381450719359017322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380824 n : ℚ) / (A127218 (2 * n) : ℚ)

end

end A380823.P1381450719359017322

namespace A380823

/-- `A380824(n)/A127218(2*n)` -/
def P1381450719359017322.Spec : Prop :=
  ∀ n, P1381450719359017322.a n = (A380823 n : ℚ)

end A380823

/-!
# A380824: Area of the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A380824, the canonical program `A380824.P12530804268031175926` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380824 has offset 0).

The definition of A380824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380824.P12530804268031175926

`A000032(n)*(A000032(n)+1)*(2*A000032(n)+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A380824

/-- `A000032(n)*(A000032(n)+1)*(2*A000032(n)+1)` -/
def P12530804268031175926.Spec : Prop :=
  ∀ n, P12530804268031175926.a n = A380824 n

theorem P12530804268031175926.correct : P12530804268031175926.Spec := by
  intro n
  simp only [A380824]

end A380824

/-! ## A380824.P13615658694511402789

`A000032(n)*A380823(n)`
-/

namespace A380824.P13615658694511402789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A380823 n

end

end A380824.P13615658694511402789

namespace A380824

/-- `A000032(n)*A380823(n)` -/
def P13615658694511402789.Spec : Prop :=
  ∀ n, P13615658694511402789.a n = A380824 n

theorem P13615658694511402789.correct : P13615658694511402789.Spec := by
  intro n
  simp only [A380824, Nat.add_sub_cancel, A380824.P13615658694511402789.a, A380824.P12530804268031175926.a, A000032, A000032.P8352177345629330861.a, A380823, A380823.P15923719920850826478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380824

/-! ## A380824.P11903052415538050395

`A329723(n+2)*A380823(n)`
-/

namespace A380824.P11903052415538050395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 2) * A380823 n

end

end A380824.P11903052415538050395

namespace A380824

/-- `A329723(n+2)*A380823(n)` -/
def P11903052415538050395.Spec : Prop :=
  ∀ n, P11903052415538050395.a n = A380824 n

end A380824

/-! ## A380824.P18268189769371611840

`A127218(2*n)*A380823(n)`
-/

namespace A380824.P18268189769371611840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n) * A380823 n

end

end A380824.P18268189769371611840

namespace A380824

/-- `A127218(2*n)*A380823(n)` -/
def P18268189769371611840.Spec : Prop :=
  ∀ n, P18268189769371611840.a n = A380824 n

end A380824

/-! ## A380824.P10863358140119847587

`C(2*A001612(n), 2)*A000032(n)`
-/

namespace A380824.P10863358140119847587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * A001612 n).toNat 2 : ℤ) * A000032 n

end

end A380824.P10863358140119847587

namespace A380824

/-- `C(2*A001612(n), 2)*A000032(n)` -/
def P10863358140119847587.Spec : Prop :=
  ∀ n, P10863358140119847587.a n = A380824 n

end A380824

/-! ## A380824.P551014469276000065

`C(2*A001612(n), 2)*A329723(n+2)`
-/

namespace A380824.P551014469276000065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * A001612 n).toNat 2 : ℤ) * A329723 (n + 2)

end

end A380824.P551014469276000065

namespace A380824

/-- `C(2*A001612(n), 2)*A329723(n+2)` -/
def P551014469276000065.Spec : Prop :=
  ∀ n, P551014469276000065.a n = A380824 n

end A380824

/-! ## A380824.P1797543757029297407

`(A000211(n)-2)*C(2*A001612(n), 2)`
-/

namespace A380824.P1797543757029297407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000211 n - 2) * (Nat.choose (2 * A001612 n).toNat 2 : ℤ)

end

end A380824.P1797543757029297407

namespace A380824

/-- `(A000211(n)-2)*C(2*A001612(n), 2)` -/
def P1797543757029297407.Spec : Prop :=
  ∀ n, P1797543757029297407.a n = A380824 n

end A380824

/-! ## A380824.P14495921814474745511

`C(2*A001612(n), 2)*A303427(2*n)`
-/

namespace A380824.P14495921814474745511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * A001612 n).toNat 2 : ℤ) * A303427 (2 * n)

end

end A380824.P14495921814474745511

namespace A380824

/-- `C(2*A001612(n), 2)*A303427(2*n)` -/
def P14495921814474745511.Spec : Prop :=
  ∀ n, P14495921814474745511.a n = A380824 n

end A380824

/-! ## A380824.P6879930698712121623

`(A381721(n)-A000032(n))*A000032(n)`
-/

namespace A380824.P6879930698712121623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A381721 n - A000032 n) * A000032 n

end

end A380824.P6879930698712121623

namespace A380824

/-- `(A381721(n)-A000032(n))*A000032(n)` -/
def P6879930698712121623.Spec : Prop :=
  ∀ n, P6879930698712121623.a n = A380824 n

theorem P6879930698712121623.correct : P6879930698712121623.Spec := by
  intro n
  simp only [A380824, Nat.add_sub_cancel, A380824.P6879930698712121623.a, A380824.P12530804268031175926.a, A000032, A000032.P8352177345629330861.a, A381721, A381721.P9195889644798697899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380824

/-! ## A380824.P12731032058629077844

`(A381721(n)-A380823(n))*A380823(n)`
-/

namespace A380824.P12731032058629077844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A381721 n - A380823 n) * A380823 n

end

end A380824.P12731032058629077844

namespace A380824

/-- `(A381721(n)-A380823(n))*A380823(n)` -/
def P12731032058629077844.Spec : Prop :=
  ∀ n, P12731032058629077844.a n = A380824 n

theorem P12731032058629077844.correct : P12731032058629077844.Spec := by
  intro n
  simp only [A380824, Nat.add_sub_cancel, A380824.P12731032058629077844.a, A380824.P12530804268031175926.a, A000032, A000032.P8352177345629330861.a, A380823, A380823.P15923719920850826478.a, A381721, A381721.P9195889644798697899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380824

/-!
# A380825: Indices of triangular numbers that are the products of triangular numbers larger than 1.

The programs for A380825, there is no canonical definition to state claims against.
-/

/-! ## A380825.P16155821054385101738

`A003056(A068143(n+1))`
-/

namespace A380825.P16155821054385101738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A068143 (n + 1)).toNat

end

end A380825.P16155821054385101738

/-! ## A380825.P8025027961702881897

`row(A068143(n+1))`
-/

namespace A380825.P8025027961702881897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A068143 (n + 1)).toNat

end

end A380825.P8025027961702881897

/-! ## A380825.P248079480409882198

`col(A068143(n+1)-A158388(2*(n+1)))+1`
-/

namespace A380825.P248079480409882198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A068143 (n + 1) - A158388 (2 * (n + 1))).toNat + 1

end

end A380825.P248079480409882198

/-! ## A380825.P17617890788000026818

`A127648(A068143(n+1)-1)`
-/

namespace A380825.P17617890788000026818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (A068143 (n + 1) - 1).toNat

end

end A380825.P17617890788000026818

/-! ## A380825.P6153518378629921676

`A007318(A068143(n+1)+1)`
-/

namespace A380825.P6153518378629921676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A068143 (n + 1) + 1).toNat

end

end A380825.P6153518378629921676

/-!
# A380826: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-3*x) / (1 + x*exp(-2*x)) ).

The programs for A380826, the canonical program `A380826.P10925852177803957979` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380826 has offset 0).

The definition of A380826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380826.P10925852177803957979

`n!*∑{#}[n, (n+2*#+3)^#*C(n, #)/(#+1)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380826

/-- `n!*∑{#}[n, (n+2*#+3)^#*C(n, #)/(#+1)!]` -/
def P10925852177803957979.Spec : Prop :=
  ∀ n, P10925852177803957979.a n = (A380826 n : ℚ)

end A380826

/-!
# A380827: Least integer k such that the multiplicative group modulo n is a subgroup of the symmetric group S_k.

The programs for A380827, there is no canonical definition to state claims against.
-/

/-! ## A380827.P9868398513378217351

`A071578(A066781(n+1))`
-/

namespace A380827.P9868398513378217351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071578 (A066781 (n + 1)).toNat

end

end A380827.P9868398513378217351

/-! ## A380827.P6822419195315405584

`A084556(A100371(n+1))`
-/

namespace A380827.P6822419195315405584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A100371 (n + 1)).toNat

end

end A380827.P6822419195315405584

/-! ## A380827.P8752737854618252414

`A084556(A243306(n+1))`
-/

namespace A380827.P8752737854618252414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A243306 (n + 1)).toNat

end

end A380827.P8752737854618252414

/-! ## A380827.P10040997231063902752

`A173419(A192495(n+1))`
-/

namespace A380827.P10040997231063902752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173419 (A192495 (n + 1)).toNat

end

end A380827.P10040997231063902752

/-! ## A380827.P7933022271706643639

`A071578(A100371(n+1)+1)`
-/

namespace A380827.P7933022271706643639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071578 (A100371 (n + 1) + 1).toNat

end

end A380827.P7933022271706643639

/-!
# A380828: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-2*x) / (1 + x) ).

The programs for A380828, there is no canonical definition to state claims against.
-/

/-! ## A380828.P1674901962364281874

`A376093(n+1)/(n+1)`
-/

namespace A380828.P1674901962364281874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376093 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A380828.P1674901962364281874

/-!
# A380829: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-3*x) / (1 + x*exp(-x)) ).

The programs for A380829, the canonical program `A380829.P17023728981725224350` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380829 has offset 0).

The definition of A380829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380829.P17023728981725224350

`n!*∑{#}[n, (2*n+#+3)^#*C(n, #)/(#+1)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380829

/-- `n!*∑{#}[n, (2*n+#+3)^#*C(n, #)/(#+1)!]` -/
def P17023728981725224350.Spec : Prop :=
  ∀ n, P17023728981725224350.a n = (A380829 n : ℚ)

end A380829

/-!
# A380830: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-3*x) / (1 + x) ).

The programs for A380830, the canonical program `A380830.P5843545493053087822` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380830 has offset 0).

The definition of A380830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380830.P5843545493053087822

`n!*∑{#}[n, (3*n+3)^#*C(n, #)/(#+1)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380830

/-- `n!*∑{#}[n, (3*n+3)^#*C(n, #)/(#+1)!]` -/
def P5843545493053087822.Spec : Prop :=
  ∀ n, P5843545493053087822.a n = (A380830 n : ℚ)

end A380830

/-! ## A380830.P160091206739527144

`A376094(n+1)/(n+1)`
-/

namespace A380830.P160091206739527144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376094 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A380830.P160091206739527144

namespace A380830

/-- `A376094(n+1)/(n+1)` -/
def P160091206739527144.Spec : Prop :=
  ∀ n, P160091206739527144.a n = (A380830 n : ℚ)

end A380830

/-!
# A380832: Number of points in Z^4 of norm <= n where the sum of the four entries is even.

The programs for A380832, there is no canonical definition to state claims against.
-/

/-! ## A380832.P8401410987067579798

`A046949(A007590(n))`
-/

namespace A380832.P8401410987067579798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046949 (A007590 n).toNat

end

end A380832.P8401410987067579798

/-! ## A380832.P11500953875216884348

`A046949(A004526(n²))`
-/

namespace A380832.P11500953875216884348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046949 (A004526 (n ^ 2)).toNat

end

end A380832.P11500953875216884348

/-! ## A380832.P12681848856000989490

`A046949(2*A002620(n))`
-/

namespace A380832.P12681848856000989490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046949 (2 * A002620 n).toNat

end

end A380832.P12681848856000989490

/-!
# A380833: a(n) is the number of divisors d of n satisfying (-d)^n mod n = d.

The programs for A380833, there is no canonical definition to state claims against.
-/

/-! ## A380833.P7447099428561247531

`A318979(∏{p}[n+1, #]%A049054(n+3))`
-/

namespace A380833.P7447099428561247531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318979 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A049054 (n + 3))).toNat

end

end A380833.P7447099428561247531

/-! ## A380833.P1836095316812471788

`A069910(A333570(n+1)%A089085(n+1))`
-/

namespace A380833.P1836095316812471788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069910 (Int.tmod (A333570 (n + 1)) (A089085 (n + 1))).toNat

end

end A380833.P1836095316812471788

/-! ## A380833.P13223093718910649608

`C(A355745(A000040(n+1)), A049559(n+1))`
-/

namespace A380833.P13223093718910649608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355745 (A000040 (n + 1)).toNat).toNat (A049559 (n + 1)).toNat

end

end A380833.P13223093718910649608

/-! ## A380833.P16223916362911151629

`A000073(A333570(n+1))%A194918(3*(n+1))`
-/

namespace A380833.P16223916362911151629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000073 (A333570 (n + 1)).toNat) (A194918 (3 * (n + 1)))

end

end A380833.P16223916362911151629

/-! ## A380833.P15522578840253374116

`C(A302041(n+1), A372437(A005893(3*(n+1))))`
-/

namespace A380833.P15522578840253374116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A302041 (n + 1)).toNat (A372437 (A005893 (3 * (n + 1))).toNat).toNat

end

end A380833.P15522578840253374116

/-!
# A380834: First column of Kimberling's ESC array.

The programs for A380834, there is no canonical definition to state claims against.
-/

/-! ## A380834.P10054650046955765112

`floor((A380835(n+1)+n+1)/2)`
-/

namespace A380834.P10054650046955765112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A380835 (n + 1) + (n + 1 : ℤ) : ℚ) / 2⌋

end

end A380834.P10054650046955765112

/-! ## A380834.P1160369921959200557

`A101803(A380835(n+1))`
-/

namespace A380834.P1160369921959200557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 (A380835 (n + 1)).toNat

end

end A380834.P1160369921959200557

/-! ## A380834.P10945202312861054303

`A097369(A380835(n+1))`
-/

namespace A380834.P10945202312861054303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097369 (A380835 (n + 1)).toNat

end

end A380834.P10945202312861054303

/-! ## A380834.P2229104672261005613

`A186323(n+1)+A124749(A099036(n))`
-/

namespace A380834.P2229104672261005613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186323 (n + 1) + A124749 (A099036 n).toNat

end

end A380834.P2229104672261005613

/-! ## A380834.P6690678549650725878

`A080902(n+1)-A080884(A245931(n))`
-/

namespace A380834.P6690678549650725878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080902 (n + 1) - A080884 (A245931 n).toNat

end

end A380834.P6690678549650725878

/-!
# A380835: Second column of Kimberling's ESC array.

The programs for A380835, there is no canonical definition to state claims against.
-/

/-! ## A380835.P3613815996748447683

`floor(ϕ*A380834(n+1))+(n+1)%2`
-/

namespace A380835.P3613815996748447683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A380834 (n + 1) : ℝ)⌋ + (((n + 1) % 2 : ℕ) : ℤ)

end

end A380835.P3613815996748447683

/-! ## A380835.P1608915441759197292

`4*n+A001227(A051966(n+1))`
-/

namespace A380835.P1608915441759197292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + A001227 (A051966 (n + 1)).toNat

end

end A380835.P1608915441759197292

/-! ## A380835.P6740153095329234668

`A008586(n)+A006464(A208774(n+1))`
-/

namespace A380835.P6740153095329234668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A006464 (A208774 (n + 1)).toNat

end

end A380835.P6740153095329234668

/-! ## A380835.P11149605698735114388

`A008586(n+1)-A000122(A003018(n+1))`
-/

namespace A380835.P11149605698735114388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) - A000122 (A003018 (n + 1)).toNat

end

end A380835.P11149605698735114388

/-! ## A380835.P2165093325881406882

`A008574(n+1)-A000122(A145545(n+1))`
-/

namespace A380835.P2165093325881406882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) - A000122 (A145545 (n + 1)).toNat

end

end A380835.P2165093325881406882

/-!
# A380836: a(n) is the smallest k such that tau(2*k) is equal to 2^n, where tau = A000005.

The programs for A380836, there is no canonical definition to state claims against.
-/

/-! ## A380836.P4574684083333404270

`A037992(n+1)/2`
-/

namespace A380836.P4574684083333404270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037992 (n + 1) : ℚ) / 2

end

end A380836.P4574684083333404270

/-! ## A380836.P1950530273398069297

`Δ[∑[A037992(n)]/2]`
-/

namespace A380836.P1950530273398069297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037992 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A380836.P1950530273398069297

/-! ## A380836.P8875879841825291949

`∏[A050376(n+1)]/2`
-/

namespace A380836.P8875879841825291949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A380836.P8875879841825291949

/-! ## A380836.P7204540081603017424

`∏[A084400(2+n)]/2`
-/

namespace A380836.P7204540081603017424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (2 + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A380836.P7204540081603017424

/-! ## A380836.P7635145874695297140

`(eq[2, A293444(n+1)]+1)*a(n-1)` with `a(0)=1`
-/

namespace A380836.P7635145874695297140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) * a (n - 1)

end

end A380836.P7635145874695297140

/-! ## A380836.P18248104314637505029

`∏[A050376(n+1)-A000007(n)]`
-/

namespace A380836.P18248104314637505029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A380836.P18248104314637505029

/-!
# A380837: Sequence Sg of the eight sequences defining the blocks of terms in A377091.

The programs for A380837, there is no canonical definition to state claims against.
-/

/-! ## A380837.P5004465205301773900

`A379788(n+2)-1`
-/

namespace A380837.P5004465205301773900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379788 (n + 2) - 1

end

end A380837.P5004465205301773900

/-! ## A380837.P12335060813912395877

`A379796(n+1)+A379790(n+1)`
-/

namespace A380837.P12335060813912395877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379796 (n + 1) + A379790 (n + 1)

end

end A380837.P12335060813912395877

/-! ## A380837.P17943525195356778961

`∑[A379796(n+1)+A379795(n+1)]`
-/

namespace A380837.P17943525195356778961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379796 (n + 1) + A379795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380837.P17943525195356778961

/-! ## A380837.P15553056009871416226

`∑[abs(Δ[A379788(n+1)])]`
-/

namespace A380837.P15553056009871416226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379788 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380837.P15553056009871416226

/-! ## A380837.P5138602241433160095

`A379790(n+2)-A379795(n+2)`
-/

namespace A380837.P5138602241433160095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379790 (n + 2) - A379795 (n + 2)

end

end A380837.P5138602241433160095

/-! ## A380837.P17900841434039828186

`A379060(A379794(n+1))`
-/

namespace A380837.P17900841434039828186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (A379794 (n + 1)).toNat

end

end A380837.P17900841434039828186

/-! ## A380837.P18365800344353778211

`A379059(A379789(n+2))-1`
-/

namespace A380837.P18365800344353778211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (A379789 (n + 2)).toNat - 1

end

end A380837.P18365800344353778211

/-! ## A380837.P18250067191945291626

`A023443(A379788(n+2))`
-/

namespace A380837.P18250067191945291626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A379788 (n + 2)).toNat

end

end A380837.P18250067191945291626

/-!
# A380839: Numerators of J(n) = Product_{p|n, p odd prime} (p - 1)/(p - 2).

The programs for A380839, the canonical program `A380839.P1105865872776131656` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380839 has offset 1).

The definition of A380839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380839.P1105865872776131656

`A173557(n+1)/A305444(n+1)*A307410(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A380839

/-- `A173557(n+1)/A305444(n+1)*A307410(n+1)` -/
def P1105865872776131656.Spec : Prop :=
  ∀ n, P1105865872776131656.a n = (A380839 (n + 1) : ℚ)

end A380839

/-! ## A380839.P221415969772268950

`lcm(A000010(n+1), A002472(n+1))/A002472(n+1)`
-/

namespace A380839.P221415969772268950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000010 (n + 1)) (A002472 (n + 1)) : ℚ) / (A002472 (n + 1) : ℚ)

end

end A380839.P221415969772268950

namespace A380839

/-- `lcm(A000010(n+1), A002472(n+1))/A002472(n+1)` -/
def P221415969772268950.Spec : Prop :=
  ∀ n, P221415969772268950.a n = (A380839 (n + 1) : ℚ)

end A380839

/-! ## A380839.P4392782358193561764

`∏{p}[n+1, #-1]%A035008(A073133(n+3))`
-/

namespace A380839.P4392782358193561764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) (A035008 (A073133 (n + 3)).toNat)

end

end A380839.P4392782358193561764

namespace A380839

/-- `∏{p}[n+1, #-1]%A035008(A073133(n+3))` -/
def P4392782358193561764.Spec : Prop :=
  ∀ n, P4392782358193561764.a n = A380839 (n + 1)

end A380839

/-! ## A380839.P12056696532710292774

`A173557(n+1)%A005843(A297112(3*(n+1)))`
-/

namespace A380839.P12056696532710292774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173557 (n + 1)) (A005843 (A297112 (3 * (n + 1))).toNat)

end

end A380839.P12056696532710292774

namespace A380839

/-- `A173557(n+1)%A005843(A297112(3*(n+1)))` -/
def P12056696532710292774.Spec : Prop :=
  ∀ n, P12056696532710292774.a n = A380839 (n + 1)

end A380839

/-! ## A380839.P8661698072770190519

`gcd(∏{p}[n+1, 1-#], A166260(A273982(n+1)))`
-/

namespace A380839.P8661698072770190519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) (A166260 (A273982 (n + 1)).toNat)

end

end A380839.P8661698072770190519

namespace A380839

/-- `gcd(∏{p}[n+1, 1-#], A166260(A273982(n+1)))` -/
def P8661698072770190519.Spec : Prop :=
  ∀ n, (P8661698072770190519.a n : ℤ) = A380839 (n + 1)

end A380839

/-!
# A380841: Array read by ascending antidiagonals: A(n,k) = n! * [x^n] 1/(1 - x*exp(x))^k.

The programs for A380841, there is no canonical definition to state claims against.
-/

/-! ## A380841.P454323038521102955

`A367306(A265435(n))`
-/

namespace A380841.P454323038521102955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A265435 n).toNat

end

end A380841.P454323038521102955

/-! ## A380841.P741222771566229122

`A353853(A370915(n))`
-/

namespace A380841.P741222771566229122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (A370915 n).toNat

end

end A380841.P741222771566229122

/-! ## A380841.P6785501611888401436

`A394247(A361579(n))`
-/

namespace A380841.P6785501611888401436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A361579 n).toNat

end

end A380841.P6785501611888401436

/-! ## A380841.P3675847517047372354

`A195831(A113092(n)+1)`
-/

namespace A380841.P3675847517047372354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195831 (A113092 n + 1).toNat

end

end A380841.P3675847517047372354

/-! ## A380841.P1683700143714226369

`A113081(n)+A091225(A002835(n+2))`
-/

namespace A380841.P1683700143714226369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113081 n + A091225 (A002835 (n + 2)).toNat

end

end A380841.P1683700143714226369

/-!
# A380842: Main diagonal of the array A380841.

The programs for A380842, there is no canonical definition to state claims against.
-/

/-! ## A380842.P17858740579438236298

`A380841(∑[4*n])`
-/

namespace A380842.P17858740579438236298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380841 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A380842.P17858740579438236298

/-!
# A380843: Antidiagonal sums of the array A380841.

The programs for A380843, there is no canonical definition to state claims against.
-/

/-! ## A380843.P4756333521878859730

`A101514(n)+A083896(A101514(n))`
-/

namespace A380843.P4756333521878859730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101514 n + A083896 (A101514 n).toNat

end

end A380843.P4756333521878859730

/-! ## A380843.P12853235753407329445

`A320486(A101514(n))+A241464(n+1)`
-/

namespace A380843.P12853235753407329445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (A101514 n).toNat + A241464 (n + 1)

end

end A380843.P12853235753407329445

/-! ## A380843.P6561901424933403430

`A101514(n)+A007814(A063895(2*(n+2)))`
-/

namespace A380843.P6561901424933403430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101514 n + A007814 (A063895 (2 * (n + 2))).toNat

end

end A380843.P6561901424933403430

/-!
# A380845: The sum of divisors of n that have the same binary weight as n.

The programs for A380845, there is no canonical definition to state claims against.
-/

/-! ## A380845.P16711216983424148102

`A289440(A057723(2*(n+1))%A217119(2*(n+1)))`
-/

namespace A380845.P16711216983424148102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (Int.tmod (A057723 (2 * (n + 1))) (A217119 (2 * (n + 1)))).toNat

end

end A380845.P16711216983424148102

/-! ## A380845.P6563753168938679238

`A057723(2*(n+1))%A186871(2*(n+1))/2`
-/

namespace A380845.P6563753168938679238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A057723 (2 * (n + 1))) (A186871 (2 * (n + 1))) : ℚ) / 2

end

end A380845.P6563753168938679238

/-! ## A380845.P199920880961655221

`A057723(2*n+2)/A089120(A290830(n))`
-/

namespace A380845.P199920880961655221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057723 (2 * n + 2) : ℚ) / (A089120 (A290830 n).toNat : ℚ)

end

end A380845.P199920880961655221

/-! ## A380845.P716809832292121870

`A174221(A057723(2*(n+1))%A114106(n+2))`
-/

namespace A380845.P716809832292121870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (Int.tmod (A057723 (2 * (n + 1))) (A114106 (n + 2))).toNat

end

end A380845.P716809832292121870

/-! ## A380845.P15119088362409658578

`A057723(2*(n+1))/A060632(A029744(2*(n+1)))`
-/

namespace A380845.P15119088362409658578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057723 (2 * (n + 1)) : ℚ) / (A060632 (A029744 (2 * (n + 1))).toNat : ℚ)

end

end A380845.P15119088362409658578

/-!
# A380846: Numbers k such that A380845(k) = 2*k.

The programs for A380846, there is no canonical definition to state claims against.
-/

/-! ## A380846.P16558922245865326685

`eq[A065423(2*n+3), A380845(n+1)]+1`
-/

namespace A380846.P16558922245865326685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380845 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A380846.P16558922245865326685

/-!
# A380852: a(1) = 2; thereafter a(n) is the least prime which is the sum of two or more consecutive primes starting with a(n-1).

The programs for A380852, there is no canonical definition to state claims against.
-/

/-! ## A380852.P11666451316036033201

`A071196(A000720(a(n-1)))` with `a(0)=2`
-/

namespace A380852.P11666451316036033201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A071196 (A000720 (a (n - 1)).toNat).toNat

end

end A380852.P11666451316036033201

/-! ## A380852.P8875249601271653463

`A071196(A056239(a(n-1)))` with `a(0)=2`
-/

namespace A380852.P8875249601271653463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A071196 (A056239 (a (n - 1)).toNat).toNat

end

end A380852.P8875249601271653463

/-!
# A380855: The unique sequence starting with a(0) = 1, a(1) = 0 and partial sums are 1 followed by the sequence terms themselves repeated in successive blocks a(0..2^k-1) for k >= 0.

The programs for A380855, the canonical program `A380855.P12946928765439253338` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380855 has offset 0).

The definition of A380855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380855.P12946928765439253338

`a(A053645(n))-a(A053645(n-1))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A380855

/-- `a(A053645(n))-a(A053645(n-1))` -/
def P12946928765439253338.Spec : Prop :=
  ∀ n, P12946928765439253338.a n = A380855 n

theorem P12946928765439253338.correct : P12946928765439253338.Spec := by
  intro n
  simp only [A380855]

end A380855

/-! ## A380855.P13739964840463536633

`A083891(3*n+4)-A083916(∏{e}[3^n+1, #+1])`
-/

namespace A380855.P13739964840463536633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083891 (3 * n + 4) - A083916 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A380855.P13739964840463536633

namespace A380855

/-- `A083891(3*n+4)-A083916(∏{e}[3^n+1, #+1])` -/
def P13739964840463536633.Spec : Prop :=
  ∀ n, P13739964840463536633.a n = A380855 n

end A380855

/-! ## A380855.P4690225604145293910

`A323202(n)+A129950(A008780(n))`
-/

namespace A380855.P4690225604145293910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 n + A129950 (A008780 n).toNat

end

end A380855.P4690225604145293910

namespace A380855

/-- `A323202(n)+A129950(A008780(n))` -/
def P4690225604145293910.Spec : Prop :=
  ∀ n, P4690225604145293910.a n = A380855 n

end A380855

/-! ## A380855.P9781714054525034588

`A356852(A001405(n))-A002487(n)`
-/

namespace A380855.P9781714054525034588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356852 (A001405 n).toNat - A002487 n

end

end A380855.P9781714054525034588

namespace A380855

/-- `A356852(A001405(n))-A002487(n)` -/
def P9781714054525034588.Spec : Prop :=
  ∀ n, P9781714054525034588.a n = A380855 n

end A380855

/-! ## A380855.P4975060284375582667

`A055642(A000534(2*(n+1)))-A002487(n)`
-/

namespace A380855.P4975060284375582667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000534 (2 * (n + 1))).toNat - A002487 n

end

end A380855.P4975060284375582667

namespace A380855

/-- `A055642(A000534(2*(n+1)))-A002487(n)` -/
def P4975060284375582667.Spec : Prop :=
  ∀ n, P4975060284375582667.a n = A380855 n

end A380855

/-!
# A380856: In the binary expansion of n, arrange bits row-wise in a binary tree which is complete except for the last row and then read those bits in pre-order.

The programs for A380856, there is no canonical definition to state claims against.
-/

/-! ## A380856.P17575918850194752766

`Δ[A143227(A256158(n))]+n`
-/

namespace A380856.P17575918850194752766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143227 (A256158 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A380856.P17575918850194752766

/-! ## A380856.P106737642218862275

`A028310(n)+Δ[A000007(A242896(3*(n+1)))]`
-/

namespace A380856.P106737642218862275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A242896 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (f1 (n + 1) - f1 n)

end

end A380856.P106737642218862275

/-! ## A380856.P6729015692825955191

`Δ[(A104819(2*n+3)*A191736(n+1))%A040001(n)]+n`
-/

namespace A380856.P6729015692825955191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104819 (2 * n + 3) * A191736 (n + 1)) (A040001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A380856.P6729015692825955191

/-!
# A380857: Squares of numbers that are neither squarefree nor prime powers.

The programs for A380857, the canonical program `A380857.P17828759353417711251` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380857 has offset 1).

The definition of A380857 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380857.P17828759353417711251

`A126706(n+1)²`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A380857

/-- `A126706(n+1)²` -/
def P17828759353417711251.Spec : Prop :=
  ∀ n, P17828759353417711251.a n = A380857 (n + 1)

theorem P17828759353417711251.correct : P17828759353417711251.Spec := by
  intro n
  simp only [A380857, Nat.add_sub_cancel]

end A380857

/-! ## A380857.P11152979128786353051

`A126706(1+n)^2`
-/

namespace A380857.P11152979128786353051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (1 + n) ^ 2

end

end A380857.P11152979128786353051

namespace A380857

/-- `A126706(1+n)^2` -/
def P11152979128786353051.Spec : Prop :=
  ∀ n, P11152979128786353051.a n = A380857 (n + 1)

theorem P11152979128786353051.correct : P11152979128786353051.Spec := by
  intro n
  simp only [A380857, Nat.add_sub_cancel, A380857.P11152979128786353051.a, A380857.P17828759353417711251.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A380857

/-! ## A380857.P9659508547746644602

`(eq[1, A355447(n+1)]+1)²`
-/

namespace A380857.P9659508547746644602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A380857.P9659508547746644602

namespace A380857

/-- `(eq[1, A355447(n+1)]+1)²` -/
def P9659508547746644602.Spec : Prop :=
  ∀ n, (P9659508547746644602.a n : ℤ) = A380857 (n + 1)

end A380857

/-! ## A380857.P6007447660892024693

`(lt[1, A304779(n+1)]+1)²`
-/

namespace A380857.P6007447660892024693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304779 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A380857.P6007447660892024693

namespace A380857

/-- `(lt[1, A304779(n+1)]+1)²` -/
def P6007447660892024693.Spec : Prop :=
  ∀ n, (P6007447660892024693.a n : ℤ) = A380857 (n + 1)

end A380857

/-! ## A380857.P5900726921414585390

`(lt[1, A340654(n+1)]+1)²`
-/

namespace A380857.P5900726921414585390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A380857.P5900726921414585390

namespace A380857

/-- `(lt[1, A340654(n+1)]+1)²` -/
def P5900726921414585390.Spec : Prop :=
  ∀ n, (P5900726921414585390.a n : ℤ) = A380857 (n + 1)

end A380857

/-! ## A380857.P5312844265406946776

`A065642(A360719(n+1))²`
-/

namespace A380857.P5312844265406946776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A360719 (n + 1)).toNat ^ 2

end

end A380857.P5312844265406946776

namespace A380857

/-- `A065642(A360719(n+1))²` -/
def P5312844265406946776.Spec : Prop :=
  ∀ n, P5312844265406946776.a n = A380857 (n + 1)

end A380857

/-! ## A380857.P14566876790493042726

`A365784(n+1)*A376720(n+1)`
-/

namespace A380857.P14566876790493042726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365784 (n + 1) * A376720 (n + 1)

end

end A380857.P14566876790493042726

namespace A380857

/-- `A365784(n+1)*A376720(n+1)` -/
def P14566876790493042726.Spec : Prop :=
  ∀ n, P14566876790493042726.a n = A380857 (n + 1)

end A380857

/-! ## A380857.P11887146038041129775

`(A365783(n+1)*A365784(n+1))²`
-/

namespace A380857.P11887146038041129775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A365783 (n + 1) * A365784 (n + 1)) ^ 2

end

end A380857.P11887146038041129775

namespace A380857

/-- `(A365783(n+1)*A365784(n+1))²` -/
def P11887146038041129775.Spec : Prop :=
  ∀ n, P11887146038041129775.a n = A380857 (n + 1)

end A380857

/-! ## A380857.P13138866647183498629

`(A376720(n+1)/A365783(n+1))²`
-/

namespace A380857.P13138866647183498629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A376720 (n + 1) : ℚ) / (A365783 (n + 1) : ℚ)) ^ 2

end

end A380857.P13138866647183498629

namespace A380857

/-- `(A376720(n+1)/A365783(n+1))²` -/
def P13138866647183498629.Spec : Prop :=
  ∀ n, P13138866647183498629.a n = (A380857 (n + 1) : ℚ)

end A380857

/-! ## A380857.P10561807682427252675

`A065642(A360719(n+1))*A126706(n+1)`
-/

namespace A380857.P10561807682427252675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A360719 (n + 1)).toNat * A126706 (n + 1)

end

end A380857.P10561807682427252675

namespace A380857

/-- `A065642(A360719(n+1))*A126706(n+1)` -/
def P10561807682427252675.Spec : Prop :=
  ∀ n, P10561807682427252675.a n = A380857 (n + 1)

end A380857

/-! ## A380857.P14843968061574713532

`A126706(n+1)*A365783(n+1)*A365784(n+1)`
-/

namespace A380857.P14843968061574713532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) * A365783 (n + 1) * A365784 (n + 1)

end

end A380857.P14843968061574713532

namespace A380857

/-- `A126706(n+1)*A365783(n+1)*A365784(n+1)` -/
def P14843968061574713532.Spec : Prop :=
  ∀ n, P14843968061574713532.a n = A380857 (n + 1)

end A380857

/-! ## A380857.P18078453922145185582

`(A126706(n+2)-A358089(n+1))*A126706(n+1)`
-/

namespace A380857.P18078453922145185582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126706 (n + 2) - A358089 (n + 1)) * A126706 (n + 1)

end

end A380857.P18078453922145185582

namespace A380857

/-- `(A126706(n+2)-A358089(n+1))*A126706(n+1)` -/
def P18078453922145185582.Spec : Prop :=
  ∀ n, P18078453922145185582.a n = A380857 (n + 1)

end A380857

/-! ## A380857.P13894655893521794138

`∩[A366854(n+1), n²]`
-/

namespace A380857.P13894655893521794138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A380857.P13894655893521794138

namespace A380857

/-- `∩[A366854(n+1), n²]` -/
def P13894655893521794138.Spec : Prop :=
  ∀ n, (P13894655893521794138.a n : ℤ) = A380857 (n + 1)

end A380857

/-! ## A380857.P14600399051777266844

`∩[A062320(n+1), A366854(n+1)]`
-/

namespace A380857.P14600399051777266844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380857.P14600399051777266844

namespace A380857

/-- `∩[A062320(n+1), A366854(n+1)]` -/
def P14600399051777266844.Spec : Prop :=
  ∀ n, (P14600399051777266844.a n : ℤ) = A380857 (n + 1)

end A380857

/-! ## A380857.P9739962693579979299

`∩[A391416(n+1), n²]`
-/

namespace A380857.P9739962693579979299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A380857.P9739962693579979299

namespace A380857

/-- `∩[A391416(n+1), n²]` -/
def P9739962693579979299.Spec : Prop :=
  ∀ n, (P9739962693579979299.a n : ℤ) = A380857 (n + 1)

end A380857

/-! ## A380857.P6899180630189681491

`record[A126706(A305433(n))²]`
-/

namespace A380857.P6899180630189681491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (A305433 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380857.P6899180630189681491

namespace A380857

/-- `record[A126706(A305433(n))²]` -/
def P6899180630189681491.Spec : Prop :=
  ∀ n, P6899180630189681491.a n = A380857 (n + 1)

end A380857

/-! ## A380857.P10680286529243286388

`∩[A013929(n+1), A024619(n+1)]²`
-/

namespace A380857.P10680286529243286388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A380857.P10680286529243286388

namespace A380857

/-- `∩[A013929(n+1), A024619(n+1)]²` -/
def P10680286529243286388.Spec : Prop :=
  ∀ n, (P10680286529243286388.a n : ℤ) = A380857 (n + 1)

end A380857

/-! ## A380857.P15717492397246262078

`∩[A062312(n+1), A366854(n+1)]`
-/

namespace A380857.P15717492397246262078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380857.P15717492397246262078

namespace A380857

/-- `∩[A062312(n+1), A366854(n+1)]` -/
def P15717492397246262078.Spec : Prop :=
  ∀ n, (P15717492397246262078.a n : ℤ) = A380857 (n + 1)

end A380857

/-! ## A380857.P5637906340832673596

`∩[A062320(n+1), A131605(n+1)]`
-/

namespace A380857.P5637906340832673596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380857.P5637906340832673596

namespace A380857

/-- `∩[A062320(n+1), A131605(n+1)]` -/
def P5637906340832673596.Spec : Prop :=
  ∀ n, (P5637906340832673596.a n : ℤ) = A380857 (n + 1)

end A380857

/-! ## A380857.P4211566061747085274

`A000290(A126706(1+n))`
-/

namespace A380857.P4211566061747085274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A126706 (1 + n)).toNat

end

end A380857.P4211566061747085274

namespace A380857

/-- `A000290(A126706(1+n))` -/
def P4211566061747085274.Spec : Prop :=
  ∀ n, P4211566061747085274.a n = A380857 (n + 1)

end A380857

/-!
# A380858: a(n) is the number of primes p <= n such that p^(p + n) == p (mod p + n).

The programs for A380858, there is no canonical definition to state claims against.
-/

/-! ## A380858.P12323698372317187697

`A339733(A158858(n+2))`
-/

namespace A380858.P12323698372317187697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339733 (A158858 (n + 2)).toNat

end

end A380858.P12323698372317187697

/-! ## A380858.P15809090271360241676

`A186336(A001221(n+1)*A054568(n))`
-/

namespace A380858.P15809090271360241676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186336 (A001221 (n + 1) * A054568 n).toNat

end

end A380858.P15809090271360241676

/-! ## A380858.P14483473378166545135

`A001221(or(A221912(n+4), A275585(n)))`
-/

namespace A380858.P14483473378166545135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A221912 (n + 4)) (A275585 n)).toNat

end

end A380858.P14483473378166545135

/-! ## A380858.P1186166849330114849

`A055396(A163167(n+1)*A316471(n+1))`
-/

namespace A380858.P1186166849330114849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A163167 (n + 1) * A316471 (n + 1)).toNat

end

end A380858.P1186166849330114849

/-! ## A380858.P11013092498455342603

`A037912(A037933(n))+A037898(3*n+2)`
-/

namespace A380858.P11013092498455342603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (A037933 n).toNat + A037898 (3 * n + 2)

end

end A380858.P11013092498455342603

/-!
# A380859: Number of minimum connected dominating sets in the n-triangular honeycomb obtuse knight graph.

The programs for A380859, there is no canonical definition to state claims against.
-/

/-! ## A380859.P1603597044520198768

`A143048(a(n-1)+5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A380859.P1603597044520198768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0] fun n a =>
  A143048 (a (n - 1) + 5).toNat

end

end A380859.P1603597044520198768

/-! ## A380859.P14271837738321041191

`A097552(a(n-1)+n)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A380859.P14271837738321041191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0] fun n a =>
  A097552 (a (n - 1) + (n : ℤ)).toNat

end

end A380859.P14271837738321041191

/-!
# A380860: Triangle read by rows: T(n,m) (0<=m<=n) = number of positive n-digit numbers that have exactly m copies of a specific, previously selected positive base-10 digit among its digits.

The programs for A380860, the canonical program `A380860.P14404262480637487111` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380860 has offset 0).

The definition of A380860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380860.P14404262480637487111

`9*T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380860

/-- `9*T(n-1,k)+T(n-1,k-1)` -/
def P14404262480637487111.Spec : Prop :=
  ∀ n, (P14404262480637487111.a n : ℤ) = A380860 n

theorem P14404262480637487111.correct : P14404262480637487111.Spec := by
  intro n
  simp only [A380860]

end A380860

/-!
# A380864: a(n) = [x^n] sqrt(1 - 4*x)/(1 - 8*x). Row sums of A380865.

The programs for A380864, the canonical program `A380864.P17847612334023733778` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380864 has offset 0).

The definition of A380864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380864.P17847612334023733778

`A098617(2*n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A380864

/-- `A098617(2*n)` -/
def P17847612334023733778.Spec : Prop :=
  ∀ n, P17847612334023733778.a n = A380864 n

theorem P17847612334023733778.correct : P17847612334023733778.Spec := by
  intro n
  simp only [A380864]

end A380864

/-! ## A380864.P1704038840197339753

`A002420(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A380864.P1704038840197339753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002420 n + 8 * a (n - 1)

end

end A380864.P1704038840197339753

namespace A380864

/-- `A002420(n)+8*a(n-1)` -/
def P1704038840197339753.Spec : Prop :=
  ∀ n, P1704038840197339753.a n = A380864 n

end A380864

/-! ## A380864.P14026134530238316091

`A040000(n)*A305561(2*n)`
-/

namespace A380864.P14026134530238316091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A305561 (2 * n)

end

end A380864.P14026134530238316091

namespace A380864

/-- `A040000(n)*A305561(2*n)` -/
def P14026134530238316091.Spec : Prop :=
  ∀ n, P14026134530238316091.a n = A380864 n

end A380864

/-! ## A380864.P12988128583072562899

`A036452(2*n+1)*A305561(2*n)`
-/

namespace A380864.P12988128583072562899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (2 * n + 1) * A305561 (2 * n)

end

end A380864.P12988128583072562899

namespace A380864

/-- `A036452(2*n+1)*A305561(2*n)` -/
def P12988128583072562899.Spec : Prop :=
  ∀ n, P12988128583072562899.a n = A380864 n

end A380864

/-! ## A380864.P15167030489581373675

`A036453(2*n+1)*A305561(2*n)`
-/

namespace A380864.P15167030489581373675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A305561 (2 * n)

end

end A380864.P15167030489581373675

namespace A380864

/-- `A036453(2*n+1)*A305561(2*n)` -/
def P15167030489581373675.Spec : Prop :=
  ∀ n, P15167030489581373675.a n = A380864 n

end A380864

/-! ## A380864.P15988598061595178340

`A020639(A001316(n))*A305561(2*n)`
-/

namespace A380864.P15988598061595178340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A305561 (2 * n)

end

end A380864.P15988598061595178340

namespace A380864

/-- `A020639(A001316(n))*A305561(2*n)` -/
def P15988598061595178340.Spec : Prop :=
  ∀ n, P15988598061595178340.a n = A380864 n

end A380864

/-! ## A380864.P6882010813002378289

`A020639(A004011(n))*A305561(2*n)`
-/

namespace A380864.P6882010813002378289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004011 n).toNat * A305561 (2 * n)

end

end A380864.P6882010813002378289

namespace A380864

/-- `A020639(A004011(n))*A305561(2*n)` -/
def P6882010813002378289.Spec : Prop :=
  ∀ n, P6882010813002378289.a n = A380864 n

end A380864

/-! ## A380864.P12467557033059633135

`A020639(A004277(n))*A305561(2*n)`
-/

namespace A380864.P12467557033059633135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A305561 (2 * n)

end

end A380864.P12467557033059633135

namespace A380864

/-- `A020639(A004277(n))*A305561(2*n)` -/
def P12467557033059633135.Spec : Prop :=
  ∀ n, P12467557033059633135.a n = A380864 n

end A380864

/-! ## A380864.P7810427048054301529

`A020639(A008458(n))*A305561(2*n)`
-/

namespace A380864.P7810427048054301529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A305561 (2 * n)

end

end A380864.P7810427048054301529

namespace A380864

/-- `A020639(A008458(n))*A305561(2*n)` -/
def P7810427048054301529.Spec : Prop :=
  ∀ n, P7810427048054301529.a n = A380864 n

end A380864

/-!
# A380865: Triangle read by rows: T(n, k) = 2^(2*n)*JacobiP(n - k, k, -1/2 - n, -1).

The programs for A380865, there is no canonical definition to state claims against.
-/

/-! ## A380865.P13391513089636001285

`A059268(n)²*A046521(n)`
-/

namespace A380865.P13391513089636001285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A046521 n

end

end A380865.P13391513089636001285

/-! ## A380865.P1306558697866728550

`A046521(n)*A131577(A171173(2*(n+1)))`
-/

namespace A380865.P1306558697866728550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 n * A131577 (A171173 (2 * (n + 1))).toNat

end

end A380865.P1306558697866728550

/-! ## A380865.P1048042362803985901

`A363526(A006005(2*(n+2)))*A384893(n)`
-/

namespace A380865.P1048042362803985901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363526 (A006005 (2 * (n + 2))).toNat * A384893 n

end

end A380865.P1048042362803985901

/-!
# A380866: a(n) is the least m > 0 such that sigma(m) - 2m = A140863(n).

The programs for A380866, there is no canonical definition to state claims against.
-/

/-! ## A380866.P15680799817144479923

`A082731(A140863(n+1))`
-/

namespace A380866.P15680799817144479923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 (A140863 (n + 1)).toNat

end

end A380866.P15680799817144479923

/-! ## A380866.P11923326770360738170

`filter[A082731(2*n+1), A014306(#)]`
-/

namespace A380866.P11923326770360738170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A380866.P11923326770360738170

/-! ## A380866.P11622844591625151997

`filter[A082731(2*n+1), A014578(#)]`
-/

namespace A380866.P11622844591625151997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A380866.P11622844591625151997

/-! ## A380866.P7066867532406321936

`filter[A082731(2*n+1), A091247(#)]`
-/

namespace A380866.P7066867532406321936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A380866.P7066867532406321936

/-! ## A380866.P4561312719272234291

`filter[A082731(2*n+1), A178226(#)]`
-/

namespace A380866.P4561312719272234291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A380866.P4561312719272234291

/-!
# A380867: Numbers k such that one can make a rectangle from a chain of linked rods of length 1, 2, 3, ..., k, with perimeter equal to the total length.

The programs for A380867, there is no canonical definition to state claims against.
-/

/-! ## A380867.P15429400974194746584

`lt[1, A382605(n+1)]+1`
-/

namespace A380867.P15429400974194746584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A380867.P15429400974194746584

/-! ## A380867.P2900809968081453962

`lt[A000007(n), A380868(n+1)]+1`
-/

namespace A380867.P2900809968081453962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A380867.P2900809968081453962

/-! ## A380867.P5934574162435436576

`lt[A209229(n+6), A380868(n+1)]+1`
-/

namespace A380867.P5934574162435436576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A380867.P5934574162435436576

/-! ## A380867.P7619355301586689145

`A020725(lt[A209229(n), A380868(n+1)])`
-/

namespace A380867.P7619355301586689145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A380867.P7619355301586689145

/-! ## A380867.P3428480935706916855

`lt[A325352(A370116(n+2)), A171400(n)]`
-/

namespace A380867.P3428480935706916855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (A370116 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380867.P3428480935706916855

/-!
# A380868: Number of distinct solutions {n1, n2, n3, n4} to the problem of forming a rectangle with sides made of linked rods of length 1, ..., n.

The programs for A380868, there is no canonical definition to state claims against.
-/

/-! ## A380868.P2368433843727570730

`C(A382605(n+1), 2)`
-/

namespace A380868.P2368433843727570730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A382605 (n + 1)).toNat 2

end

end A380868.P2368433843727570730

/-! ## A380868.P9835933628301829961

`A071625(A382605(n+1)!!)`
-/

namespace A380868.P9835933628301829961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (Nat.factorial (Nat.factorial (A382605 (n + 1)).toNat))

end

end A380868.P9835933628301829961

/-! ## A380868.P12561918895198455997

`A327187(A327188(n)*A330959(3*n))`
-/

namespace A380868.P12561918895198455997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327187 (A327188 n * A330959 (3 * n)).toNat

end

end A380868.P12561918895198455997

/-! ## A380868.P18054797540673128067

`A327195(A327188(n)*A330959(3*n))`
-/

namespace A380868.P18054797540673128067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327195 (A327188 n * A330959 (3 * n)).toNat

end

end A380868.P18054797540673128067

/-! ## A380868.P15184629165908075961

`A330959(A327188(n)*A330959(3*n))`
-/

namespace A380868.P15184629165908075961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330959 (A327188 n * A330959 (3 * n)).toNat

end

end A380868.P15184629165908075961

/-!
# A380870: a(n) = A381798(n) - A361373(n) - 1.

The programs for A380870, there is no canonical definition to state claims against.
-/

/-! ## A380870.P8914505541586575212

`A381798(n+1)-A361373(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380870.P8914505541586575212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381798 (n + 1) - A361373 (n + 1) - 1

end

end A380870.P8914505541586575212

/-!
# A380873: Concatenate sum and product of decimal digits of n.

The programs for A380873, there is no canonical definition to state claims against.
-/

/-! ## A380873.P10128405876491811930

`A066568(A139793(n))+A061762(n)`
-/

namespace A380873.P10128405876491811930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A139793 n).toNat + A061762 n

end

end A380873.P10128405876491811930

/-!
# A380875: Indices of triangular numbers (A000217) which are also perimeters of integer-sided right triangles (A010814).

The programs for A380875, there is no canonical definition to state claims against.
-/

/-! ## A380875.P11914072106010243362

`A127093(∩[A010814(n+1), A000217(n)])`
-/

namespace A380875.P11914072106010243362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A380875.P11914072106010243362

/-! ## A380875.P17822912210905015382

`lt[A000122(n), A024155(A179865(n+1))]`
-/

namespace A380875.P17822912210905015382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380875.P17822912210905015382

/-! ## A380875.P2000880959963907338

`lt[A024155(2*n+5), A024155(A179865(n+1))]`
-/

namespace A380875.P2000880959963907338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380875.P2000880959963907338

/-! ## A380875.P6070574268183428288

`lt[A272769(n), A033630(A028895(n))]`
-/

namespace A380875.P6070574268183428288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272769 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A028895 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380875.P6070574268183428288

/-! ## A380875.P1745148040568071684

`lt[A014945(n+1), A033630(A028895(n))]`
-/

namespace A380875.P1745148040568071684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A028895 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380875.P1745148040568071684

/-!
# A380877: Primes p where the prime race 12m+1 versus 12m+7 is tied.

The programs for A380877, there is no canonical definition to state claims against.
-/

/-! ## A380877.P11104508127633825502

`A157103(A001764(n))+2^n`
-/

namespace A380877.P11104508127633825502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157103 (A001764 n).toNat + (2 ^ n : ℤ)

end

end A380877.P11104508127633825502

/-! ## A380877.P11690953763570841918

`filter[A252484(n+1), A122257(#)]`
-/

namespace A380877.P11690953763570841918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122257 (f1 j).toNat = 1) n)

end

end A380877.P11690953763570841918

/-!
# A380879: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-2*x*exp(x)) ).

The programs for A380879, the canonical program `A380879.P254494291680098934` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380879 has offset 0).

The definition of A380879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380879.P254494291680098934

`2*∑{#}[n, #^(n-#)*(2*n+2)^(#-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380879

/-- `2*∑{#}[n, #^(n-#)*(2*n+2)^(#-1)*C(n, #)]` -/
def P254494291680098934.Spec : Prop :=
  ∀ n, P254494291680098934.a n = (A380879 n : ℚ)

end A380879

/-!
# A380880: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-3*x*exp(x)) ).

The programs for A380880, the canonical program `A380880.P3815874881353302063` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380880 has offset 0).

The definition of A380880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380880.P3815874881353302063

`3*∑{#}[n, #^(n-#)*(3*n+3)^(#-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380880

/-- `3*∑{#}[n, #^(n-#)*(3*n+3)^(#-1)*C(n, #)]` -/
def P3815874881353302063.Spec : Prop :=
  ∀ n, P3815874881353302063.a n = (A380880 n : ℚ)

end A380880

/-!
# A380881: E.g.f. A(x) satisfies A(x) = exp( x * A(x)^3 * exp(x * A(x)^3) ).

The programs for A380881, the canonical program `A380881.P7127992487985836481` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380881 has offset 0).

The definition of A380881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380881.P7127992487985836481

`∑{#}[n, #^(n-#)*(3*n+1)^(#-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380881

/-- `∑{#}[n, #^(n-#)*(3*n+1)^(#-1)*C(n, #)]` -/
def P7127992487985836481.Spec : Prop :=
  ∀ n, P7127992487985836481.a n = (A380881 n : ℚ)

end A380881

/-!
# A380882: Centered square numbers which are sphenic numbers.

The programs for A380882, the canonical program `A380882.P11928460777458301178` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380882 has offset 1).

The definition of A380882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380882.P11928460777458301178

`∩[A264498(n+1), A000982(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A380882

/-- `∩[A264498(n+1), A000982(n)]` -/
def P11928460777458301178.Spec : Prop :=
  ∀ n, (P11928460777458301178.a n : ℤ) = A380882 (n + 1)

theorem P11928460777458301178.correct : P11928460777458301178.Spec := by
  intro n
  simp only [A380882, Nat.add_sub_cancel]

end A380882

/-! ## A380882.P10752924060670366244

`∩[A264498(n+1), A001844(n)]`
-/

namespace A380882.P10752924060670366244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P10752924060670366244

namespace A380882

/-- `∩[A264498(n+1), A001844(n)]` -/
def P10752924060670366244.Spec : Prop :=
  ∀ n, (P10752924060670366244.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P16469874194375116978

`∩[A264498(n+1), A030978(n)]`
-/

namespace A380882.P16469874194375116978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P16469874194375116978

namespace A380882

/-- `∩[A264498(n+1), A030978(n)]` -/
def P16469874194375116978.Spec : Prop :=
  ∀ n, (P16469874194375116978.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P6928308471710023668

`∩[A264498(n+1), A104563(n)]`
-/

namespace A380882.P6928308471710023668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P6928308471710023668

namespace A380882

/-- `∩[A264498(n+1), A104563(n)]` -/
def P6928308471710023668.Spec : Prop :=
  ∀ n, (P6928308471710023668.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P10152265782078632105

`∩[A264498(n+1), A118000(n)]`
-/

namespace A380882.P10152265782078632105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P10152265782078632105

namespace A380882

/-- `∩[A264498(n+1), A118000(n)]` -/
def P10152265782078632105.Spec : Prop :=
  ∀ n, (P10152265782078632105.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P15601790021371098620

`∩[A264498(n+1), A266723(n)]`
-/

namespace A380882.P15601790021371098620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P15601790021371098620

namespace A380882

/-- `∩[A264498(n+1), A266723(n)]` -/
def P15601790021371098620.Spec : Prop :=
  ∀ n, (P15601790021371098620.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P17549179251439057131

`∩[A264498(n+1), A266725(n)]`
-/

namespace A380882.P17549179251439057131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P17549179251439057131

namespace A380882

/-- `∩[A264498(n+1), A266725(n)]` -/
def P17549179251439057131.Spec : Prop :=
  ∀ n, (P17549179251439057131.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P9127015278307158114

`∩[A031878(n+1), A264498(n+1)]`
-/

namespace A380882.P9127015278307158114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P9127015278307158114

namespace A380882

/-- `∩[A031878(n+1), A264498(n+1)]` -/
def P9127015278307158114.Spec : Prop :=
  ∀ n, (P9127015278307158114.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P10038530695686549353

`∩[A074133(n+1), A264498(n+1)]`
-/

namespace A380882.P10038530695686549353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P10038530695686549353

namespace A380882

/-- `∩[A074133(n+1), A264498(n+1)]` -/
def P10038530695686549353.Spec : Prop :=
  ∀ n, (P10038530695686549353.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P14427211755950740605

`∩[A087327(n+1), A264498(n+1)]`
-/

namespace A380882.P14427211755950740605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P14427211755950740605

namespace A380882

/-- `∩[A087327(n+1), A264498(n+1)]` -/
def P14427211755950740605.Spec : Prop :=
  ∀ n, (P14427211755950740605.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P14280243949469279676

`∩[A090937(n+1), A264498(n+1)]`
-/

namespace A380882.P14280243949469279676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P14280243949469279676

namespace A380882

/-- `∩[A090937(n+1), A264498(n+1)]` -/
def P14280243949469279676.Spec : Prop :=
  ∀ n, (P14280243949469279676.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P1389511457084675462

`∩[A099776(n+1), A264498(n+1)]`
-/

namespace A380882.P1389511457084675462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P1389511457084675462

namespace A380882

/-- `∩[A099776(n+1), A264498(n+1)]` -/
def P1389511457084675462.Spec : Prop :=
  ∀ n, (P1389511457084675462.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P8078229115245739850

`∩[A109094(n+1), A264498(n+1)]`
-/

namespace A380882.P8078229115245739850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P8078229115245739850

namespace A380882

/-- `∩[A109094(n+1), A264498(n+1)]` -/
def P8078229115245739850.Spec : Prop :=
  ∀ n, (P8078229115245739850.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P7869893816938418047

`∩[A166080(n+1), A264498(n+1)]`
-/

namespace A380882.P7869893816938418047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P7869893816938418047

namespace A380882

/-- `∩[A166080(n+1), A264498(n+1)]` -/
def P7869893816938418047.Spec : Prop :=
  ∀ n, (P7869893816938418047.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P6008041288296717133

`∩[A230812(n+1), A264498(n+1)]`
-/

namespace A380882.P6008041288296717133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P6008041288296717133

namespace A380882

/-- `∩[A230812(n+1), A264498(n+1)]` -/
def P6008041288296717133.Spec : Prop :=
  ∀ n, (P6008041288296717133.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P6498723626939154999

`∩[A236283(n+1), A264498(n+1)]`
-/

namespace A380882.P6498723626939154999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P6498723626939154999

namespace A380882

/-- `∩[A236283(n+1), A264498(n+1)]` -/
def P6498723626939154999.Spec : Prop :=
  ∀ n, (P6498723626939154999.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P16469790289279084693

`∩[A264498(n+1), A286069(n+1)]`
-/

namespace A380882.P16469790289279084693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P16469790289279084693

namespace A380882

/-- `∩[A264498(n+1), A286069(n+1)]` -/
def P16469790289279084693.Spec : Prop :=
  ∀ n, (P16469790289279084693.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P13093474267076654044

`∩[A264498(n+1), A301758(n+1)]`
-/

namespace A380882.P13093474267076654044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P13093474267076654044

namespace A380882

/-- `∩[A264498(n+1), A301758(n+1)]` -/
def P13093474267076654044.Spec : Prop :=
  ∀ n, (P13093474267076654044.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P10939377886379860870

`∩[A264498(n+1), A340528(n+1)]`
-/

namespace A380882.P10939377886379860870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P10939377886379860870

namespace A380882

/-- `∩[A264498(n+1), A340528(n+1)]` -/
def P10939377886379860870.Spec : Prop :=
  ∀ n, (P10939377886379860870.a n : ℤ) = A380882 (n + 1)

end A380882

/-! ## A380882.P5377714857060670149

`∩[A264498(n+1), A348484(n+1)]`
-/

namespace A380882.P5377714857060670149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380882.P5377714857060670149

namespace A380882

/-- `∩[A264498(n+1), A348484(n+1)]` -/
def P5377714857060670149.Spec : Prop :=
  ∀ n, (P5377714857060670149.a n : ℤ) = A380882 (n + 1)

end A380882

/-!
# A380883: a(n) is the smallest multiple of prime(n) which contains every decimal digit of prime(n), including repetitions.

The programs for A380883, there is no canonical definition to state claims against.
-/

/-! ## A380883.P660807647234479209

`A380885(A000040(n+1))`
-/

namespace A380883.P660807647234479209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380885 (A000040 (n + 1)).toNat

end

end A380883.P660807647234479209

/-! ## A380883.P8940976186820924248

`A380885(Δ[A007504(n)])`
-/

namespace A380883.P8940976186820924248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380885 (f1 (n + 1) - f1 n).toNat

end

end A380883.P8940976186820924248

/-! ## A380883.P14661403218495076931

`A380885(record[A051698(n)])`
-/

namespace A380883.P14661403218495076931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380885 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A380883.P14661403218495076931

/-! ## A380883.P14363005858543565685

`A380885(A008578(n+2))`
-/

namespace A380883.P14363005858543565685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380885 (A008578 (n + 2)).toNat

end

end A380883.P14363005858543565685

/-! ## A380883.P9435074753164233975

`A380885(A182986(n+2))`
-/

namespace A380883.P9435074753164233975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380885 (A182986 (n + 2)).toNat

end

end A380883.P9435074753164233975

/-! ## A380883.P3528048737267818394

`A380885(A008864(n+1)-1)`
-/

namespace A380883.P3528048737267818394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380885 (A008864 (n + 1) - 1).toNat

end

end A380883.P3528048737267818394

/-! ## A380883.P4855647730123566457

`A380885(∏{p}[A001248(n+1), #])`
-/

namespace A380883.P4855647730123566457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380885 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A380883.P4855647730123566457

/-!
# A380888: Integers k such that k = Sum k/(p_i + j), where p_i are the prime factors of k (with multiplicity). Case j = -1.

The programs for A380888, there is no canonical definition to state claims against.
-/

/-! ## A380888.P1230830914096226783

`A342497(A005385(n+2)-A003870(n+3))`
-/

namespace A380888.P1230830914096226783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342497 (A005385 (n + 2) - A003870 (n + 3)).toNat

end

end A380888.P1230830914096226783

/-!
# A380890: Triangle T(n,k) read by rows: the number of graphs with n nodes which are enriched cycles (necklaces) and the elements in the cycle are marked linear chains up to length k.

The programs for A380890, there is no canonical definition to state claims against.
-/

/-! ## A380890.P1476093015830594035

`A106161(A090842(n))`
-/

namespace A380890.P1476093015830594035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106161 (A090842 n).toNat

end

end A380890.P1476093015830594035

/-! ## A380890.P17973478744233238172

`A107324(A225419(n))`
-/

namespace A380890.P17973478744233238172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107324 (A225419 n).toNat

end

end A380890.P17973478744233238172

/-! ## A380890.P14563275653286849517

`row(A111470(A122366(n)))`
-/

namespace A380890.P14563275653286849517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A111470 (A122366 n).toNat).toNat

end

end A380890.P14563275653286849517

/-! ## A380890.P5604118260873975457

`A068063(A093905(n+1))`
-/

namespace A380890.P5604118260873975457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A093905 (n + 1)).toNat

end

end A380890.P5604118260873975457

/-! ## A380890.P6035376204025050149

`A331852(A076112(n+1))`
-/

namespace A380890.P6035376204025050149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A076112 (n + 1)).toNat

end

end A380890.P6035376204025050149

/-!
# A380891: If n mod 2 = 0 then a(n) = floor(n^(1/3)) else a(n) = floor(n^(4/3)).

The programs for A380891, there is no canonical definition to state claims against.
-/

/-! ## A380891.P2627579159848222206

`A129011(A048766(A094683(n²)))`
-/

namespace A380891.P2627579159848222206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129011 (A048766 (A094683 (n ^ 2)).toNat).toNat

end

end A380891.P2627579159848222206

/-!
# A380892: Hexagonal numbers that are abundant.

The programs for A380892, the canonical program `A380892.P2425458622169530326` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380892 has offset 1).

The definition of A380892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380892.P2425458622169530326

`∩[A074315(n+1), A000384(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A380892

/-- `∩[A074315(n+1), A000384(n)]` -/
def P2425458622169530326.Spec : Prop :=
  ∀ n, (P2425458622169530326.a n : ℤ) = A380892 (n + 1)

theorem P2425458622169530326.correct : P2425458622169530326.Spec := by
  intro n
  simp only [A380892, Nat.add_sub_cancel]

end A380892

/-! ## A380892.P15100854292647457538

`∩[A074315(1+n), A084265(n)]`
-/

namespace A380892.P15100854292647457538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074315 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380892.P15100854292647457538

namespace A380892

/-- `∩[A074315(1+n), A084265(n)]` -/
def P15100854292647457538.Spec : Prop :=
  ∀ n, (P15100854292647457538.a n : ℤ) = A380892 (n + 1)

end A380892

/-! ## A380892.P3910525878481463764

`∩[A074315(n+1), A260699(n)]`
-/

namespace A380892.P3910525878481463764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380892.P3910525878481463764

namespace A380892

/-- `∩[A074315(n+1), A260699(n)]` -/
def P3910525878481463764.Spec : Prop :=
  ∀ n, (P3910525878481463764.a n : ℤ) = A380892 (n + 1)

end A380892

/-! ## A380892.P13053573019560865624

`∩[A074315(n+1), A265225(n)]`
-/

namespace A380892.P13053573019560865624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265225 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380892.P13053573019560865624

namespace A380892

/-- `∩[A074315(n+1), A265225(n)]` -/
def P13053573019560865624.Spec : Prop :=
  ∀ n, (P13053573019560865624.a n : ℤ) = A380892 (n + 1)

end A380892

/-! ## A380892.P4575601203296660662

`∩[A074315(n+1), A266304(n)]`
-/

namespace A380892.P4575601203296660662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266304 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380892.P4575601203296660662

namespace A380892

/-- `∩[A074315(n+1), A266304(n)]` -/
def P4575601203296660662.Spec : Prop :=
  ∀ n, (P4575601203296660662.a n : ℤ) = A380892 (n + 1)

end A380892

/-! ## A380892.P16083690518940610841

`∩[A074315(n+1), A266665(n)]`
-/

namespace A380892.P16083690518940610841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266665 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380892.P16083690518940610841

namespace A380892

/-- `∩[A074315(n+1), A266665(n)]` -/
def P16083690518940610841.Spec : Prop :=
  ∀ n, (P16083690518940610841.a n : ℤ) = A380892 (n + 1)

end A380892

/-! ## A380892.P14894830433395194194

`∩[A074315(n+1), A267353(n)]`
-/

namespace A380892.P14894830433395194194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380892.P14894830433395194194

namespace A380892

/-- `∩[A074315(n+1), A267353(n)]` -/
def P14894830433395194194.Spec : Prop :=
  ∀ n, (P14894830433395194194.a n : ℤ) = A380892 (n + 1)

end A380892

/-! ## A380892.P12728627145429170189

`∩[A031940(n+1), A074315(n+1)]`
-/

namespace A380892.P12728627145429170189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380892.P12728627145429170189

namespace A380892

/-- `∩[A031940(n+1), A074315(n+1)]` -/
def P12728627145429170189.Spec : Prop :=
  ∀ n, (P12728627145429170189.a n : ℤ) = A380892 (n + 1)

end A380892

/-! ## A380892.P2024832941593754756

`∩[A074315(n+1), A093005(n+1)]`
-/

namespace A380892.P2024832941593754756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380892.P2024832941593754756

namespace A380892

/-- `∩[A074315(n+1), A093005(n+1)]` -/
def P2024832941593754756.Spec : Prop :=
  ∀ n, (P2024832941593754756.a n : ℤ) = A380892 (n + 1)

end A380892

/-! ## A380892.P16497259295320182355

`∩[A371920(n+1), A000384(n)]`
-/

namespace A380892.P16497259295320182355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380892.P16497259295320182355

namespace A380892

/-- `∩[A371920(n+1), A000384(n)]` -/
def P16497259295320182355.Spec : Prop :=
  ∀ n, (P16497259295320182355.a n : ℤ) = A380892 (n + 1)

end A380892

/-!
# A380893: Triangle read by rows: T(n,m) = number of solid partitions of n with shape of a plane partition of m.

The programs for A380893, there is no canonical definition to state claims against.
-/

/-! ## A380893.P7095614663410846054

`A175035(A157751(n)%A263612(2*n+3))`
-/

namespace A380893.P7095614663410846054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175035 (Int.tmod (A157751 n) (A263612 (2 * n + 3))).toNat

end

end A380893.P7095614663410846054

/-!
# A380894: a(1) = 0; a(2) = 1; for n > 2, a(n) = a(n-1) + least unique positive difference of two earlier terms.

The programs for A380894, there is no canonical definition to state claims against.
-/

/-! ## A380894.P6900944991645131499

`A000196(A103650(2*(n+1)))-A008284(n+1)`
-/

namespace A380894.P6900944991645131499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A103650 (2 * (n + 1))).toNat - A008284 (n + 1)

end

end A380894.P6900944991645131499

/-! ## A380894.P12952107719417453653

`A175427(A275580(n))`
-/

namespace A380894.P12952107719417453653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A275580 n).toNat

end

end A380894.P12952107719417453653

/-! ## A380894.P3148662667026915848

`A175427(A175829(n+1))`
-/

namespace A380894.P3148662667026915848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A175829 (n + 1)).toNat

end

end A380894.P3148662667026915848

/-! ## A380894.P4875968076359270287

`A175427(∑[∑[A008680(n)]])`
-/

namespace A380894.P4875968076359270287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A380894.P4875968076359270287

/-! ## A380894.P1707937193312497124

`∑[∑[A007949(A059377(n+1))]]`
-/

namespace A380894.P1707937193312497124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A059377 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380894.P1707937193312497124

