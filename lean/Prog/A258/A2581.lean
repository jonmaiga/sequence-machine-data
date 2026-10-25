import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
# A258100: Expansion of c(q) * c(q^3) / c(q^2)^2 in powers of q where c() is a cubic AGM theta function.

The programs for A258100, there is no canonical definition to state claims against.
-/

/-! ## A258100.P1441424540114492590

`(-1)^n*A164616(n)`
-/

namespace A258100.P1441424540114492590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A164616 n

end

end A258100.P1441424540114492590

/-! ## A258100.P9646854592419163326

`A049347(n)*A145977(n)`
-/

namespace A258100.P9646854592419163326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A145977 n

end

end A258100.P9646854592419163326

/-! ## A258100.P6006661795631840635

`A010892(n)*A213267(n)`
-/

namespace A258100.P6006661795631840635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A213267 n

end

end A258100.P6006661795631840635

/-! ## A258100.P17301558261081622104

`A164616(n)/A033999(n)`
-/

namespace A258100.P17301558261081622104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164616 n : ℚ) / (A033999 n : ℚ)

end

end A258100.P17301558261081622104

/-! ## A258100.P9697249704190995393

`abs(A145977(n))*A010892(n)`
-/

namespace A258100.P9697249704190995393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145977 n| * A010892 n

end

end A258100.P9697249704190995393

/-! ## A258100.P12584886407522365733

`A010892(2*n+1)*A145977(n)`
-/

namespace A258100.P12584886407522365733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A145977 n

end

end A258100.P12584886407522365733

/-! ## A258100.P7473980768543506992

`A164614(n)*A164616(n)/A216046(n)`
-/

namespace A258100.P7473980768543506992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164614 n * A164616 n : ℚ) / (A216046 n : ℚ)

end

end A258100.P7473980768543506992

/-! ## A258100.P7062753338505679277

`A128641(n)*A164616(n)/A164617(n)`
-/

namespace A258100.P7062753338505679277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128641 n * A164616 n : ℚ) / (A164617 n : ℚ)

end

end A258100.P7062753338505679277

/-! ## A258100.P8624061439968202612

`A132977(n)*A164616(n)/A258099(n)`
-/

namespace A258100.P8624061439968202612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132977 n * A164616 n : ℚ) / (A258099 n : ℚ)

end

end A258100.P8624061439968202612

/-!
# A258103: Number of pandigital squares (containing each digit exactly once) in base n.

The programs for A258103, there is no canonical definition to state claims against.
-/

/-! ## A258103.P15510538292124216328

`A076495(A007272(n))%A091712(n)`
-/

namespace A258103.P15510538292124216328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076495 (A007272 n).toNat) (A091712 n)

end

end A258103.P15510538292124216328

/-!
# A258108: Expansion of b(-q) * b(q^6) / (b(q^3) * b(q^12)) in powers of q where b() is a cubic AGM theta function.

The programs for A258108, there is no canonical definition to state claims against.
-/

/-! ## A258108.P11498575656503052788

`A141094(n)*A163810(A163300(n+1)/2)`
-/

namespace A258108.P11498575656503052788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141094 n * A163810 (SequenceMachineLib.roundAway ((A163300 (n + 1) : ℚ) / 2)).toNat

end

end A258108.P11498575656503052788

/-! ## A258108.P15217274598147323116

`A010892(A054429(n+1))*A141094(n)`
-/

namespace A258108.P15217274598147323116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A054429 (n + 1)).toNat * A141094 n

end

end A258108.P15217274598147323116

/-! ## A258108.P12227312533279999829

`A132972(n)*A163806(A004273(n))`
-/

namespace A258108.P12227312533279999829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132972 n * A163806 (A004273 n).toNat

end

end A258108.P12227312533279999829

/-! ## A258108.P11788764025952223709

`A132972(n)*A163810(A163300(n+1))`
-/

namespace A258108.P11788764025952223709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132972 n * A163810 (A163300 (n + 1)).toNat

end

end A258108.P11788764025952223709

/-! ## A258108.P9190608558912918703

`abs(A141094(n))*A163810(A163300(n+1))`
-/

namespace A258108.P9190608558912918703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141094 n| * A163810 (A163300 (n + 1)).toNat

end

end A258108.P9190608558912918703

/-!
# A258109: Number of balanced parenthesis expressions of length 2n and depth 3.

The programs for A258109, the canonical program `A258109.P17161799755105310545` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258109 has offset 3).

The definition of A258109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258109.P1990630944212719465

`2^n+3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A258109.P1990630944212719465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (2 ^ n : ℤ) + 3 * a (n - 1) - a (n - 2)

end

end A258109.P1990630944212719465

namespace A258109

/-- `2^n+3*a(n-1)-a(n-2)` -/
def P1990630944212719465.Spec : Prop :=
  ∀ n, P1990630944212719465.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P2834358002738624955

`A000045(2*(n+3)-1)-A000079(n+2)`
-/

namespace A258109.P2834358002738624955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 3) - 1) - A000079 (n + 2)

end

end A258109.P2834358002738624955

namespace A258109

/-- `A000045(2*(n+3)-1)-A000079(n+2)` -/
def P2834358002738624955.Spec : Prop :=
  ∀ n, P2834358002738624955.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P17161799755105310545

`5*a(n-1)-7*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=5, a(2)=18`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258109

/-- `5*a(n-1)-7*a(n-2)+2*a(n-3)` -/
def P17161799755105310545.Spec : Prop :=
  ∀ n, P17161799755105310545.a n = A258109 (n + 3)

theorem P17161799755105310545.correct : P17161799755105310545.Spec := by
  intro n
  simp only [A258109, Nat.add_sub_cancel]

end A258109

/-! ## A258109.P13492330108708532545

`ogf(1/(1-5x+7x^2-2x^3))`
-/

namespace A258109.P13492330108708532545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 7, -2] n

end

end A258109.P13492330108708532545

namespace A258109

/-- `ogf(1/(1-5x+7x^2-2x^3))` -/
def P13492330108708532545.Spec : Prop :=
  ∀ n, P13492330108708532545.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P2362363421285120674

`∑[floor(ϕ²*a(n-1))]+2*a(n-1)` with `a(0)=1`
-/

namespace A258109.P2362363421285120674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A258109.P2362363421285120674

namespace A258109

/-- `∑[floor(ϕ²*a(n-1))]+2*a(n-1)` -/
def P2362363421285120674.Spec : Prop :=
  ∀ n, P2362363421285120674.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P4102293591107544176

`∑[A105693(n+1)]`
-/

namespace A258109.P4102293591107544176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258109.P4102293591107544176

namespace A258109

/-- `∑[A105693(n+1)]` -/
def P4102293591107544176.Spec : Prop :=
  ∀ n, P4102293591107544176.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P4873605197988229041

`Δ[A047790(n+2)]`
-/

namespace A258109.P4873605197988229041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047790 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258109.P4873605197988229041

namespace A258109

/-- `Δ[A047790(n+2)]` -/
def P4873605197988229041.Spec : Prop :=
  ∀ n, P4873605197988229041.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P12659179935851028828

`Δ[A139209(n+2)]`
-/

namespace A258109.P12659179935851028828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139209 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258109.P12659179935851028828

namespace A258109

/-- `Δ[A139209(n+2)]` -/
def P12659179935851028828.Spec : Prop :=
  ∀ n, P12659179935851028828.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P8137029770040224564

`Δ[A295731(2*n)]`
-/

namespace A258109.P8137029770040224564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258109.P8137029770040224564

namespace A258109

/-- `Δ[A295731(2*n)]` -/
def P8137029770040224564.Spec : Prop :=
  ∀ n, P8137029770040224564.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P6456586448241362939

`A295724(2*(n+1))`
-/

namespace A258109.P6456586448241362939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 (2 * (n + 1))

end

end A258109.P6456586448241362939

namespace A258109

/-- `A295724(2*(n+1))` -/
def P6456586448241362939.Spec : Prop :=
  ∀ n, P6456586448241362939.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P16859443381562853016

`A005672(2*(n+2))`
-/

namespace A258109.P16859443381562853016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (2 * (n + 2))

end

end A258109.P16859443381562853016

namespace A258109

/-- `A005672(2*(n+2))` -/
def P16859443381562853016.Spec : Prop :=
  ∀ n, P16859443381562853016.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P18412976868555781730

`A192727(2*(n+2))`
-/

namespace A258109.P18412976868555781730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192727 (2 * (n + 2))

end

end A258109.P18412976868555781730

namespace A258109

/-- `A192727(2*(n+2))` -/
def P18412976868555781730.Spec : Prop :=
  ∀ n, P18412976868555781730.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P15333237021822942666

`A028892(2*n+5)`
-/

namespace A258109.P15333237021822942666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (2 * n + 5)

end

end A258109.P15333237021822942666

namespace A258109

/-- `A028892(2*n+5)` -/
def P15333237021822942666.Spec : Prop :=
  ∀ n, P15333237021822942666.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P5210539211694621741

`∑[∑[A061667(n+1)]]`
-/

namespace A258109.P5210539211694621741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061667 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258109.P5210539211694621741

namespace A258109

/-- `∑[∑[A061667(n+1)]]` -/
def P5210539211694621741.Spec : Prop :=
  ∀ n, P5210539211694621741.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P9351024692558336359

`∑[∑[A079284(2*n)]]`
-/

namespace A258109.P9351024692558336359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079284 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258109.P9351024692558336359

namespace A258109

/-- `∑[∑[A079284(2*n)]]` -/
def P9351024692558336359.Spec : Prop :=
  ∀ n, P9351024692558336359.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P17383954028027335271

`∑[A079285(2*(n+1))]`
-/

namespace A258109.P17383954028027335271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079285 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258109.P17383954028027335271

namespace A258109

/-- `∑[A079285(2*(n+1))]` -/
def P17383954028027335271.Spec : Prop :=
  ∀ n, P17383954028027335271.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P1784498328229556673

`∑[A391682(2*n+1)]`
-/

namespace A258109.P1784498328229556673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391682 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258109.P1784498328229556673

namespace A258109

/-- `∑[A391682(2*n+1)]` -/
def P1784498328229556673.Spec : Prop :=
  ∀ n, P1784498328229556673.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P1155738655471385376

`Δ[A005673(2*(n+1))]`
-/

namespace A258109.P1155738655471385376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258109.P1155738655471385376

namespace A258109

/-- `Δ[A005673(2*(n+1))]` -/
def P1155738655471385376.Spec : Prop :=
  ∀ n, P1155738655471385376.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P18225229828940986044

`Δ[A174959(2*(n+2))]`
-/

namespace A258109.P18225229828940986044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174959 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258109.P18225229828940986044

namespace A258109

/-- `Δ[A174959(2*(n+2))]` -/
def P18225229828940986044.Spec : Prop :=
  ∀ n, P18225229828940986044.a n = A258109 (n + 3)

end A258109

/-! ## A258109.P10754300754499912165

`∑[A005672(n+3+n)]`
-/

namespace A258109.P10754300754499912165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258109.P10754300754499912165

namespace A258109

/-- `∑[A005672(n+3+n)]` -/
def P10754300754499912165.Spec : Prop :=
  ∀ n, P10754300754499912165.a n = A258109 (n + 3)

end A258109

/-!
# A258110: Number of Mirror Chess games that end in checkmate after exactly n moves.

The programs for A258110, there is no canonical definition to state claims against.
-/

/-! ## A258110.P1677455727666204362

`A115613(n+1)%A000041(A261060(n+1))`
-/

namespace A258110.P1677455727666204362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115613 (n + 1)) (A000041 (A261060 (n + 1)).toNat)

end

end A258110.P1677455727666204362

/-! ## A258110.P2827885440374478308

`6^a(n-1)-4` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=3`
-/

namespace A258110.P2827885440374478308
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 0, 0, 3] fun n a =>
  (6 : ℝ) ^ (a (n - 1)) - 4

end

end A258110.P2827885440374478308

/-!
# A258114: E.g.f.: Sum_{n>=0} x^n * cosh(n*x).

The programs for A258114, there is no canonical definition to state claims against.
-/

/-! ## A258114.P6432722017787451697

`A004277(A205570(n))-A205571(n)`
-/

namespace A258114.P6432722017787451697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A205570 n).toNat - A205571 n

end

end A258114.P6432722017787451697

/-! ## A258114.P10012976489775854210

`A008620(A352294(n+1)-n)`
-/

namespace A258114.P10012976489775854210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A352294 (n + 1) - (n : ℤ)).toNat

end

end A258114.P10012976489775854210

/-!
# A258115: a(n) = A208570(n)/n.

The programs for A258115, there is no canonical definition to state claims against.
-/

/-! ## A258115.P1007287705524887170

`A208570(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258115.P1007287705524887170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208570 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A258115.P1007287705524887170

/-! ## A258115.P12819138067333453269

`A007978(A061853(n+1)+n+1)`
-/

namespace A258115.P12819138067333453269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A061853 (n + 1) + (n + 1 : ℤ)).toNat

end

end A258115.P12819138067333453269

/-! ## A258115.P754230486231667796

`A053669(A061853(n+1)+n+1)`
-/

namespace A258115.P754230486231667796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A061853 (n + 1) + (n + 1 : ℤ)).toNat

end

end A258115.P754230486231667796

/-! ## A258115.P2245133765191201101

`A020639(A346563(n+1)-(n+1))`
-/

namespace A258115.P2245133765191201101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A346563 (n + 1) - (n + 1 : ℤ)).toNat

end

end A258115.P2245133765191201101

/-! ## A258115.P5991676709392107193

`A020639((n+2)*A007978(n+1))`
-/

namespace A258115.P5991676709392107193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2 : ℤ) * A007978 (n + 1)).toNat

end

end A258115.P5991676709392107193

/-! ## A258115.P13406984324559001918

`A053669(A276086(A061853(n+1))+n)`
-/

namespace A258115.P13406984324559001918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A276086 (A061853 (n + 1)).toNat + (n : ℤ)).toNat

end

end A258115.P13406984324559001918

/-! ## A258115.P5263343634884042400

`A007978(A328317(A061853(n+1))+n)`
-/

namespace A258115.P5263343634884042400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A328317 (A061853 (n + 1)).toNat + (n : ℤ)).toNat

end

end A258115.P5263343634884042400

/-! ## A258115.P9635828098096894192

`A053669(A328317(A061853(n+1))+n)`
-/

namespace A258115.P9635828098096894192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A328317 (A061853 (n + 1)).toNat + (n : ℤ)).toNat

end

end A258115.P9635828098096894192

/-! ## A258115.P9408196144316256923

`A020639(A208570(n+1)+A007978(n+1))`
-/

namespace A258115.P9408196144316256923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A208570 (n + 1) + A007978 (n + 1)).toNat

end

end A258115.P9408196144316256923

/-! ## A258115.P3401279401084756065

`A007978(A079578(n+1)-A007978(n+1))`
-/

namespace A258115.P3401279401084756065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A079578 (n + 1) - A007978 (n + 1)).toNat

end

end A258115.P3401279401084756065

/-! ## A258115.P12733013386334620488

`A053669(A346563(n+1)-A053669(n+1))`
-/

namespace A258115.P12733013386334620488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A346563 (n + 1) - A053669 (n + 1)).toNat

end

end A258115.P12733013386334620488

/-! ## A258115.P16724599537808067199

`A107286((n+2)*A007978(n+1))`
-/

namespace A258115.P16724599537808067199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ((n + 2 : ℤ) * A007978 (n + 1)).toNat

end

end A258115.P16724599537808067199

/-! ## A258115.P1621140522781780086

`gcd(A007978(n+1), A014131(n))`
-/

namespace A258115.P1621140522781780086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007978 (n + 1)) (A014131 n)

end

end A258115.P1621140522781780086

/-! ## A258115.P18075638662786916450

`A007978(A002110(A061853(n+1))+n)`
-/

namespace A258115.P18075638662786916450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A002110 (A061853 (n + 1)).toNat + (n : ℤ)).toNat

end

end A258115.P18075638662786916450

/-! ## A258115.P14475565020270949310

`A053669(A002110(A061853(n+1))+n)`
-/

namespace A258115.P14475565020270949310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A002110 (A061853 (n + 1)).toNat + (n : ℤ)).toNat

end

end A258115.P14475565020270949310

/-! ## A258115.P14177804530916835170

`xor(A055874(n+1), A176040(n²))`
-/

namespace A258115.P14177804530916835170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055874 (n + 1)) (A176040 (n ^ 2))

end

end A258115.P14177804530916835170

/-!
# A258116: The Heinz numbers in increasing order of the partitions into distinct odd parts.

The programs for A258116, the canonical program `A258116.P9165757537041833098` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258116 has offset 1).

The definition of A258116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258116.P4069480975753086509

`filter[A352142(n+1), A008966(#)]`
-/

namespace A258116.P4069480975753086509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A258116.P4069480975753086509

namespace A258116

/-- `filter[A352142(n+1), A008966(#)]` -/
def P4069480975753086509.Spec : Prop :=
  ∀ n, P4069480975753086509.a n = A258116 (n + 1)

end A258116

/-! ## A258116.P11373976468341956879

`filter[A352142(n+1), A212793(#)]`
-/

namespace A258116.P11373976468341956879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A258116.P11373976468341956879

namespace A258116

/-- `filter[A352142(n+1), A212793(#)]` -/
def P11373976468341956879.Spec : Prop :=
  ∀ n, P11373976468341956879.a n = A258116 (n + 1)

end A258116

/-! ## A258116.P8946065395596514639

`filter[A352142(n+1), A323154(#)]`
-/

namespace A258116.P8946065395596514639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A258116.P8946065395596514639

namespace A258116

/-- `filter[A352142(n+1), A323154(#)]` -/
def P8946065395596514639.Spec : Prop :=
  ∀ n, P8946065395596514639.a n = A258116 (n + 1)

end A258116

/-! ## A258116.P5200392472157639209

`filter[A352142(n+1), A353559(#)]`
-/

namespace A258116.P5200392472157639209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A258116.P5200392472157639209

namespace A258116

/-- `filter[A352142(n+1), A353559(#)]` -/
def P5200392472157639209.Spec : Prop :=
  ∀ n, P5200392472157639209.a n = A258116 (n + 1)

end A258116

/-! ## A258116.P7683145817498632150

`filter[A352142(n+1), A355823(#)]`
-/

namespace A258116.P7683145817498632150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A258116.P7683145817498632150

namespace A258116

/-- `filter[A352142(n+1), A355823(#)]` -/
def P7683145817498632150.Spec : Prop :=
  ∀ n, P7683145817498632150.a n = A258116 (n + 1)

end A258116

/-! ## A258116.P14655529225721533082

`filter[A352142(n+1), A359377(#)]`
-/

namespace A258116.P14655529225721533082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A258116.P14655529225721533082

namespace A258116

/-- `filter[A352142(n+1), A359377(#)]` -/
def P14655529225721533082.Spec : Prop :=
  ∀ n, P14655529225721533082.a n = A258116 (n + 1)

end A258116

/-! ## A258116.P18211929279881356784

`filter[A352142(n+1), A359471(#)]`
-/

namespace A258116.P18211929279881356784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A258116.P18211929279881356784

namespace A258116

/-- `filter[A352142(n+1), A359471(#)]` -/
def P18211929279881356784.Spec : Prop :=
  ∀ n, P18211929279881356784.a n = A258116 (n + 1)

end A258116

/-! ## A258116.P9564563267212862388

`∩[A005117(n+1), A352142(n+1)]`
-/

namespace A258116.P9564563267212862388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258116.P9564563267212862388

namespace A258116

/-- `∩[A005117(n+1), A352142(n+1)]` -/
def P9564563267212862388.Spec : Prop :=
  ∀ n, (P9564563267212862388.a n : ℤ) = A258116 (n + 1)

end A258116

/-! ## A258116.P9165757537041833098

`filter[A066208(n+1), A008966(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A258116

/-- `filter[A066208(n+1), A008966(#)]` -/
def P9165757537041833098.Spec : Prop :=
  ∀ n, P9165757537041833098.a n = A258116 (n + 1)

theorem P9165757537041833098.correct : P9165757537041833098.Spec := by
  intro n
  simp only [A258116, Nat.add_sub_cancel]

end A258116

/-! ## A258116.P10415431212878882882

`filter[A066208(n+1), A353559(#)]`
-/

namespace A258116.P10415431212878882882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A258116.P10415431212878882882

namespace A258116

/-- `filter[A066208(n+1), A353559(#)]` -/
def P10415431212878882882.Spec : Prop :=
  ∀ n, P10415431212878882882.a n = A258116 (n + 1)

end A258116

/-! ## A258116.P4199576622657822133

`filter[A066208(n+1), A359377(#)]`
-/

namespace A258116.P4199576622657822133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A258116.P4199576622657822133

namespace A258116

/-- `filter[A066208(n+1), A359377(#)]` -/
def P4199576622657822133.Spec : Prop :=
  ∀ n, P4199576622657822133.a n = A258116 (n + 1)

end A258116

/-! ## A258116.P2422430085200977470

`∩[A005117(n+1), A066208(n+1)]`
-/

namespace A258116.P2422430085200977470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258116.P2422430085200977470

namespace A258116

/-- `∩[A005117(n+1), A066208(n+1)]` -/
def P2422430085200977470.Spec : Prop :=
  ∀ n, (P2422430085200977470.a n : ℤ) = A258116 (n + 1)

end A258116

/-! ## A258116.P8833331973058191943

`∩[A066208(n+1), A348506(n+1)]`
-/

namespace A258116.P8833331973058191943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258116.P8833331973058191943

namespace A258116

/-- `∩[A066208(n+1), A348506(n+1)]` -/
def P8833331973058191943.Spec : Prop :=
  ∀ n, (P8833331973058191943.a n : ℤ) = A258116 (n + 1)

end A258116

/-! ## A258116.P15725720458988592629

`∩[A066208(n+1), A348499(n+1)]`
-/

namespace A258116.P15725720458988592629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258116.P15725720458988592629

namespace A258116

/-- `∩[A066208(n+1), A348499(n+1)]` -/
def P15725720458988592629.Spec : Prop :=
  ∀ n, (P15725720458988592629.a n : ℤ) = A258116 (n + 1)

end A258116

/-! ## A258116.P11716873432470084510

`∩[A066208(n+1), A325160(n+1)]`
-/

namespace A258116.P11716873432470084510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258116.P11716873432470084510

namespace A258116

/-- `∩[A066208(n+1), A325160(n+1)]` -/
def P11716873432470084510.Spec : Prop :=
  ∀ n, (P11716873432470084510.a n : ℤ) = A258116 (n + 1)

end A258116

/-! ## A258116.P7520848772904200015

`∩[A325160(n+1), A352142(n+1)]`
-/

namespace A258116.P7520848772904200015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258116.P7520848772904200015

namespace A258116

/-- `∩[A325160(n+1), A352142(n+1)]` -/
def P7520848772904200015.Spec : Prop :=
  ∀ n, (P7520848772904200015.a n : ℤ) = A258116 (n + 1)

end A258116

/-! ## A258116.P451964839220417455

`∩[A064594(n+1), A352142(n+1)]`
-/

namespace A258116.P451964839220417455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258116.P451964839220417455

namespace A258116

/-- `∩[A064594(n+1), A352142(n+1)]` -/
def P451964839220417455.Spec : Prop :=
  ∀ n, (P451964839220417455.a n : ℤ) = A258116 (n + 1)

end A258116

/-! ## A258116.P14107862079206731723

`∩[A167207(n+1), A352142(n+1)]`
-/

namespace A258116.P14107862079206731723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258116.P14107862079206731723

namespace A258116

/-- `∩[A167207(n+1), A352142(n+1)]` -/
def P14107862079206731723.Spec : Prop :=
  ∀ n, (P14107862079206731723.a n : ℤ) = A258116 (n + 1)

end A258116

/-! ## A258116.P4449596792815470793

`∩[A210490(n+1), A352142(n+1)]`
-/

namespace A258116.P4449596792815470793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258116.P4449596792815470793

namespace A258116

/-- `∩[A210490(n+1), A352142(n+1)]` -/
def P4449596792815470793.Spec : Prop :=
  ∀ n, (P4449596792815470793.a n : ℤ) = A258116 (n + 1)

end A258116

/-! ## A258116.P12547467221433260623

`∩[A348961(n+1), A352142(n+1)]`
-/

namespace A258116.P12547467221433260623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258116.P12547467221433260623

namespace A258116

/-- `∩[A348961(n+1), A352142(n+1)]` -/
def P12547467221433260623.Spec : Prop :=
  ∀ n, (P12547467221433260623.a n : ℤ) = A258116 (n + 1)

end A258116

/-!
# A258117: The Heinz numbers in increasing order of the partitions into distinct even parts.

The programs for A258117, there is no canonical definition to state claims against.
-/

/-! ## A258117.P17685198730325403840

`record[A007947(A066207(n+1))]`
-/

namespace A258117.P17685198730325403840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A066207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258117.P17685198730325403840

/-! ## A258117.P3649781697782275081

`∩[A005117(n+1), A066207(n+1)]`
-/

namespace A258117.P3649781697782275081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258117.P3649781697782275081

/-! ## A258117.P1309627595290927133

`filter[A352140(n+1), A008966(#)]`
-/

namespace A258117.P1309627595290927133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A258117.P1309627595290927133

/-! ## A258117.P9649801566361723903

`filter[A352140(n+1), A212793(#)]`
-/

namespace A258117.P9649801566361723903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A258117.P9649801566361723903

/-! ## A258117.P11575242024926629413

`filter[A352140(n+1), A355823(#)]`
-/

namespace A258117.P11575242024926629413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A258117.P11575242024926629413

/-! ## A258117.P7481970014559880085

`filter[A352140(n+1), A359471(#)]`
-/

namespace A258117.P7481970014559880085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A258117.P7481970014559880085

/-! ## A258117.P14954228345054609074

`filter[A352140(n+1), A359590(#)]`
-/

namespace A258117.P14954228345054609074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A258117.P14954228345054609074

/-! ## A258117.P10673483493006063518

`filter[A352140(n+1), A359592(#)]`
-/

namespace A258117.P10673483493006063518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A258117.P10673483493006063518

/-! ## A258117.P11061626912031391073

`filter[A352140(n+1), A359834(#)]`
-/

namespace A258117.P11061626912031391073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A258117.P11061626912031391073

/-! ## A258117.P13955129514993302259

`∩[A005117(n+1), A352140(n+1)]`
-/

namespace A258117.P13955129514993302259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258117.P13955129514993302259

/-! ## A258117.P8451599575236192106

`filter[A066207(n+1), A008966(#)]`
-/

namespace A258117.P8451599575236192106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A258117.P8451599575236192106

/-! ## A258117.P12843024164432007535

`filter[A066207(n+1), A359590(#)]`
-/

namespace A258117.P12843024164432007535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A258117.P12843024164432007535

/-! ## A258117.P12807609905957298335

`filter[A066207(n+1), A359592(#)]`
-/

namespace A258117.P12807609905957298335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A258117.P12807609905957298335

/-! ## A258117.P533286185322935667

`filter[A066207(n+1), A359834(#)]`
-/

namespace A258117.P533286185322935667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A258117.P533286185322935667

/-! ## A258117.P18443742934797403205

`filter[A066207(n+1), A323154(#)]`
-/

namespace A258117.P18443742934797403205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A258117.P18443742934797403205

/-! ## A258117.P1500328025804660015

`filter[A066207(n+1), A323239(#)]`
-/

namespace A258117.P1500328025804660015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A258117.P1500328025804660015

/-! ## A258117.P17094295505740142790

`filter[A066207(n+1), A353559(#)]`
-/

namespace A258117.P17094295505740142790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A258117.P17094295505740142790

/-! ## A258117.P7797135689159776151

`filter[A066207(n+1), A353627(#)]`
-/

namespace A258117.P7797135689159776151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A258117.P7797135689159776151

/-! ## A258117.P1781681344743255767

`filter[A352140(n+1), A323154(#)]`
-/

namespace A258117.P1781681344743255767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A258117.P1781681344743255767

/-! ## A258117.P9092803568891094456

`filter[A352140(n+1), A323239(#)]`
-/

namespace A258117.P9092803568891094456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A258117.P9092803568891094456

/-!
# A258118: Triangle T(n,k) in which the n-th row lists in increasing order the Heinz numbers of all complete partitions of n.

The programs for A258118, there is no canonical definition to state claims against.
-/

/-! ## A258118.P9118571284709214268

`gcd(A284005(A022372(n)), A325800(n+1))`
-/

namespace A258118.P9118571284709214268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284005 (A022372 n).toNat) (A325800 (n + 1))

end

end A258118.P9118571284709214268

/-! ## A258118.P9305214484206502602

`gcd(A325800(A077168(n)), A348642(n+1))`
-/

namespace A258118.P9305214484206502602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325800 (A077168 n).toNat) (A348642 (n + 1))

end

end A258118.P9305214484206502602

/-!
# A258119: Triangle T(n,k) in which the n-th row lists in increasing order the Heinz numbers of all perfect partitions of n.

The programs for A258119, there is no canonical definition to state claims against.
-/

/-! ## A258119.P17457536546236057653

`A073935(A342951(n+1))`
-/

namespace A258119.P17457536546236057653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073935 (A342951 (n + 1)).toNat

end

end A258119.P17457536546236057653

/-! ## A258119.P12504850691026472994

`record[A114212(∑[A343029(n)])]`
-/

namespace A258119.P12504850691026472994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114212 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258119.P12504850691026472994

/-! ## A258119.P17973140084376062374

`A325792(∑[∑[A014376(2*n)]])`
-/

namespace A258119.P17973140084376062374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014376 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325792 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258119.P17973140084376062374

/-! ## A258119.P3369311913688463923

`∩[A075449(n+1), A325764(n+1)]`
-/

namespace A258119.P3369311913688463923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258119.P3369311913688463923

/-! ## A258119.P865165118808775084

`∩[A073935(n+1), A328594(n+1)]`
-/

namespace A258119.P865165118808775084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258119.P865165118808775084

/-!
# A258120: Number of Fibonacci numbers in the partition having Heinz number n.

The programs for A258120, there is no canonical definition to state claims against.
-/

/-! ## A258120.P11591375520111561846

`∑{e}[A181821(n+1), A010056(#)]`
-/

namespace A258120.P11591375520111561846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010056 (Nat.factorization (f1 n).natAbs p)

end

end A258120.P11591375520111561846

/-! ## A258120.P14303876120772795416

`∑{e}[A304660(n+1), A010056(#)]`
-/

namespace A258120.P14303876120772795416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010056 (Nat.factorization (f1 n).natAbs p)

end

end A258120.P14303876120772795416

/-! ## A258120.P9342793472731164020

`A169611(n+1)+A112765(A327569(n+1))`
-/

namespace A258120.P9342793472731164020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) + A112765 (A327569 (n + 1)).toNat

end

end A258120.P9342793472731164020

/-! ## A258120.P14257785525122192382

`∑{e}[A259939(n), A217206(#)]`
-/

namespace A258120.P14257785525122192382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A217206 (Nat.factorization (f1 n).natAbs p)

end

end A258120.P14257785525122192382

/-! ## A258120.P1604690040565071695

`A379311(n+1)*A380038(A326180(n))`
-/

namespace A258120.P1604690040565071695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379311 (n + 1) * A380038 (A326180 n).toNat

end

end A258120.P1604690040565071695

/-!
# A258121: Number of vertices of degree n in all Lucas cubes.

The programs for A258121, the canonical program `A258121.P8445638466543193396` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258121 has offset 0).

The definition of A258121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258121.P8817647894358856360

`ogf((2-x+2x^2-x^3)/(1-3x+x^2))`
-/

namespace A258121.P8817647894358856360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 2, -1] [1, -3, 1] n

end

end A258121.P8817647894358856360

namespace A258121

/-- `ogf((2-x+2x^2-x^3)/(1-3x+x^2))` -/
def P8817647894358856360.Spec : Prop :=
  ∀ n, P8817647894358856360.a n = A258121 n

end A258121

/-! ## A258121.P8445638466543193396

`3*A000045(2*n+1)-C(n, n²)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258121

/-- `3*A000045(2*n+1)-C(n, n²)` -/
def P8445638466543193396.Spec : Prop :=
  ∀ n, P8445638466543193396.a n = A258121 n

theorem P8445638466543193396.correct : P8445638466543193396.Spec := by
  intro n
  simp only [A258121]

end A258121

/-! ## A258121.P3133737617912589010

`A226857(A033627(2*n+1)+2)`
-/

namespace A258121.P3133737617912589010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226857 (A033627 (2 * n + 1) + 2).toNat

end

end A258121.P3133737617912589010

namespace A258121

/-- `A226857(A033627(2*n+1)+2)` -/
def P3133737617912589010.Spec : Prop :=
  ∀ n, P3133737617912589010.a n = A258121 n

end A258121

/-! ## A258121.P8438418405955942937

`A292616(2*n+1)-A019590(n+1)`
-/

namespace A258121.P8438418405955942937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292616 (2 * n + 1) - A019590 (n + 1)

end

end A258121.P8438418405955942937

namespace A258121

/-- `A292616(2*n+1)-A019590(n+1)` -/
def P8438418405955942937.Spec : Prop :=
  ∀ n, P8438418405955942937.a n = A258121 n

end A258121

/-! ## A258121.P16819045424382647518

`Δ[A000045(2*n+1)]+Δ[A254729(2*n)]`
-/

namespace A258121.P16819045424382647518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A258121.P16819045424382647518

namespace A258121

/-- `Δ[A000045(2*n+1)]+Δ[A254729(2*n)]` -/
def P16819045424382647518.Spec : Prop :=
  ∀ n, P16819045424382647518.a n = A258121 n

end A258121

/-! ## A258121.P713743748744046979

`A088305(n+1)+A093960(n+2)-A093960(n+1)`
-/

namespace A258121.P713743748744046979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) + (A093960 (n + 2) - A093960 (n + 1))

end

end A258121.P713743748744046979

namespace A258121

/-- `A088305(n+1)+A093960(n+2)-A093960(n+1)` -/
def P713743748744046979.Spec : Prop :=
  ∀ n, P713743748744046979.a n = A258121 n

end A258121

/-! ## A258121.P7775773469953849244

`A022086(2*n+1)-C(A022086(n+1), A022086(2*n))`
-/

namespace A258121.P7775773469953849244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (2 * n + 1) - (Nat.choose (A022086 (n + 1)).toNat (A022086 (2 * n)).toNat : ℤ)

end

end A258121.P7775773469953849244

namespace A258121

/-- `A022086(2*n+1)-C(A022086(n+1), A022086(2*n))` -/
def P7775773469953849244.Spec : Prop :=
  ∀ n, P7775773469953849244.a n = A258121 n

end A258121

/-! ## A258121.P17802567463815335737

`A097135(2*n+1)-val(A097135(2*n+1), A097135(n+1))`
-/

namespace A258121.P17802567463815335737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 (2 * n + 1) - (SequenceMachineLib.valuation (A097135 (2 * n + 1)).toNat (A097135 (n + 1)).toNat : ℤ)

end

end A258121.P17802567463815335737

namespace A258121

/-- `A097135(2*n+1)-val(A097135(2*n+1), A097135(n+1))` -/
def P17802567463815335737.Spec : Prop :=
  ∀ n, P17802567463815335737.a n = A258121 n

end A258121

/-! ## A258121.P5186896374431894818

`Δ[A254729(2*n)+A000045(Δ[n²])]`
-/

namespace A258121.P5186896374431894818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (2 * n) + A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258121.P5186896374431894818

namespace A258121

/-- `Δ[A254729(2*n)+A000045(Δ[n²])]` -/
def P5186896374431894818.Spec : Prop :=
  ∀ n, P5186896374431894818.a n = A258121 n

end A258121

/-! ## A258121.P11942873363308887966

`Δ[A254729(2*n)+Δ[A000045(2*n)]]`
-/

namespace A258121.P11942873363308887966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258121.P11942873363308887966

namespace A258121

/-- `Δ[A254729(2*n)+Δ[A000045(2*n)]]` -/
def P11942873363308887966.Spec : Prop :=
  ∀ n, P11942873363308887966.a n = A258121 n

end A258121

/-! ## A258121.P15118777544040127545

`∑[A049997(n²+2+n)]-A000007(A008611(n))`
-/

namespace A258121.P15118777544040127545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 (n ^ 2 + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000007 (A008611 n).toNat

end

end A258121.P15118777544040127545

namespace A258121

/-- `∑[A049997(n²+2+n)]-A000007(A008611(n))` -/
def P15118777544040127545.Spec : Prop :=
  ∀ n, P15118777544040127545.a n = A258121 n

end A258121

/-!
# A258122: The multiplicative Wiener index of the cycle graph C_n (n>=3).

The programs for A258122, there is no canonical definition to state claims against.
-/

/-! ## A258122.P13473910919927821397

`∏[A231601(n+2)]`
-/

namespace A258122.P13473910919927821397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A258122.P13473910919927821397

/-! ## A258122.P4091247008385637034

`sqrt(A010551(n+2))^(n+3)`
-/

namespace A258122.P4091247008385637034
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010551 (n + 2) : ℝ) ^ (n + 3)

end

end A258122.P4091247008385637034

/-! ## A258122.P12662010798481576583

`∏[record[A231601(A008624(n))]]`
-/

namespace A258122.P12662010798481576583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231601 (A008624 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A258122.P12662010798481576583

/-! ## A258122.P7869450262389575989

`∏[record[A231601(A057979(n))]]`
-/

namespace A258122.P7869450262389575989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231601 (A057979 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A258122.P7869450262389575989

/-! ## A258122.P3511638639280803904

`∏[A231777(A076921(n+3))]`
-/

namespace A258122.P3511638639280803904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231777 (A076921 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A258122.P3511638639280803904

/-!
# A258123: Irregular triangle read by rows: T(n,k) is the number of trees with n vertices that have k vertices of maximum degree (n, k>=1).

The programs for A258123, there is no canonical definition to state claims against.
-/

/-! ## A258123.P1454182781034125308

`C(A321271(A000702(n+1)), A321271(n+1))`
-/

namespace A258123.P1454182781034125308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A321271 (A000702 (n + 1)).toNat).toNat (A321271 (n + 1)).toNat

end

end A258123.P1454182781034125308

/-! ## A258123.P18421103158160905594

`A320955(A152966(n))`
-/

namespace A258123.P18421103158160905594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 (A152966 n).toNat

end

end A258123.P18421103158160905594

/-! ## A258123.P476778016160140336

`A320955(2*A010785(n))`
-/

namespace A258123.P476778016160140336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 (2 * A010785 n).toNat

end

end A258123.P476778016160140336

/-! ## A258123.P9147199809085186957

`A136266(A143146(n+2)+1)`
-/

namespace A258123.P9147199809085186957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136266 (A143146 (n + 2) + 1).toNat

end

end A258123.P9147199809085186957

/-! ## A258123.P6809137001745262446

`A320955(2*A002113(n+1))`
-/

namespace A258123.P6809137001745262446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 (2 * A002113 (n + 1)).toNat

end

end A258123.P6809137001745262446

/-!
# A258124: Triangle read by rows: T(n,k) is the number of partitions of n having k standard tableaux in their Ferrers diagrams (n>=1, k>=1).

The programs for A258124, there is no canonical definition to state claims against.
-/

/-! ## A258124.P2156435735420200769

`A039973(Δ[A284393(A035522(n))])`
-/

namespace A258124.P2156435735420200769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (A035522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 (f1 (n + 1) - f1 n).toNat

end

end A258124.P2156435735420200769

/-! ## A258124.P4756751593493721621

`A327306(eq[A002262(n), A089595(n)])`
-/

namespace A258124.P4756751593493721621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A258124.P4756751593493721621

/-! ## A258124.P13435666451228660363

`and(A013928(A153363(n+1)), A106638(n))`
-/

namespace A258124.P13435666451228660363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013928 (A153363 (n + 1)).toNat) (A106638 n)

end

end A258124.P13435666451228660363

/-! ## A258124.P17630955627857586620

`A000122(A059056(n+2)^A184957(n+1))`
-/

namespace A258124.P17630955627857586620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.roundAway ((A059056 (n + 2) : ℚ) ^ (A184957 (n + 1) : ℤ))).toNat

end

end A258124.P17630955627857586620

/-! ## A258124.P202250425203115287

`A255317(A361856(3*n+1)+A003242(n+2))`
-/

namespace A258124.P202250425203115287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255317 (A361856 (3 * n + 1) + A003242 (n + 2)).toNat

end

end A258124.P202250425203115287

/-!
# A258125: a(1) = a(2) = 2; a(n) = a(n-1) + gpf(a(n-2)), where gpf is greatest prime factor.

The programs for A258125, there is no canonical definition to state claims against.
-/

/-! ## A258125.P4667267234821919773

`a(n-1)+A006530(a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A258125.P4667267234821919773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + A006530 (a (n - 2)).toNat

end

end A258125.P4667267234821919773

/-! ## A258125.P10116684233723768887

`A014963(A345941(a(n-2)))+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A258125.P10116684233723768887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A014963 (A345941 (a (n - 2)).toNat).toNat + a (n - 1)

end

end A258125.P10116684233723768887

/-! ## A258125.P6879828040679999475

`A111089(a(n-2))+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A258125.P6879828040679999475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A111089 (a (n - 2)).toNat + a (n - 1)

end

end A258125.P6879828040679999475

/-! ## A258125.P13356937081799884479

`A085392(2*a(n-2))+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A258125.P13356937081799884479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A085392 (2 * a (n - 2)).toNat + a (n - 1)

end

end A258125.P13356937081799884479

/-! ## A258125.P1671464986962260095

`A197861(a(n-2))+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A258125.P1671464986962260095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A197861 (a (n - 2)).toNat + a (n - 1)

end

end A258125.P1671464986962260095

/-!
# A258127: Smallest k such that Sum_{i=0..k} binomial(n,i) is prime, or a(n)=0 if there is no such k.

The programs for A258127, there is no canonical definition to state claims against.
-/

/-! ## A258127.P10743638085925578620

`and(A063647(n+2), A253641(2^n))`
-/

namespace A258127.P10743638085925578620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063647 (n + 2)) (A253641 (2 ^ n))

end

end A258127.P10743638085925578620

/-! ## A258127.P5834302770462705987

`A165277(A018836(2*n)+A001844(n))`
-/

namespace A258127.P5834302770462705987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A018836 (2 * n) + A001844 n).toNat

end

end A258127.P5834302770462705987

/-! ## A258127.P4585306072502329766

`and(A070939(A000225(n)), A113901(n+2))`
-/

namespace A258127.P4585306072502329766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070939 (A000225 n).toNat) (A113901 (n + 2))

end

end A258127.P4585306072502329766

/-! ## A258127.P8381538516438708586

`and(A070939(A000225(n)), A323300(n+2))`
-/

namespace A258127.P8381538516438708586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070939 (A000225 n).toNat) (A323300 (n + 2))

end

end A258127.P8381538516438708586

/-! ## A258127.P13883649678880132266

`A006519(A129983(n))%8`
-/

namespace A258127.P13883649678880132266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006519 (A129983 n).toNat) 8

end

end A258127.P13883649678880132266

/-!
# A258133: Expansion of tri-digit zeros interlaced with an arithmetic progression of positive and negative numbers.

The programs for A258133, the canonical program `A258133.P10619347449612726997` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258133 has offset 0).

The definition of A258133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258133.P10619347449612726997

`Δ[A025796(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258133

/-- `Δ[A025796(n+1)]` -/
def P10619347449612726997.Spec : Prop :=
  ∀ n, P10619347449612726997.a n = A258133 n

theorem P10619347449612726997.correct : P10619347449612726997.Spec := by
  intro n
  simp only [A258133]

end A258133

/-! ## A258133.P8111624675783501524

`Δ[A000124(Δ[A001399(n)])]`
-/

namespace A258133.P8111624675783501524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258133.P8111624675783501524

namespace A258133

/-- `Δ[A000124(Δ[A001399(n)])]` -/
def P8111624675783501524.Spec : Prop :=
  ∀ n, P8111624675783501524.a n = A258133 n

end A258133

/-! ## A258133.P8962137490052744911

`Δ[A000217(Δ[A001399(n)])]`
-/

namespace A258133.P8962137490052744911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258133.P8962137490052744911

namespace A258133

/-- `Δ[A000217(Δ[A001399(n)])]` -/
def P8962137490052744911.Spec : Prop :=
  ∀ n, P8962137490052744911.a n = A258133 n

end A258133

/-! ## A258133.P15841209202755872838

`Δ[A000217(A103221(n+1))]`
-/

namespace A258133.P15841209202755872838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A103221 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258133.P15841209202755872838

namespace A258133

/-- `Δ[A000217(A103221(n+1))]` -/
def P15841209202755872838.Spec : Prop :=
  ∀ n, P15841209202755872838.a n = A258133 n

end A258133

/-! ## A258133.P10804633382421738423

`A025796(n+2)-A025796(n+1)`
-/

namespace A258133.P10804633382421738423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (n + 2) - A025796 (n + 1)

end

end A258133.P10804633382421738423

namespace A258133

/-- `A025796(n+2)-A025796(n+1)` -/
def P10804633382421738423.Spec : Prop :=
  ∀ n, P10804633382421738423.a n = A258133 n

theorem P10804633382421738423.correct : P10804633382421738423.Spec := by
  intro n
  simp only [A258133, Nat.add_sub_cancel, A258133.P10804633382421738423.a, A258133.P10619347449612726997.f1, A258133.P10619347449612726997.a, SequenceMachineLib.memo_apply]

end A258133

/-! ## A258133.P12471926386027078892

`Δ[Δ[A029000(n)]]`
-/

namespace A258133.P12471926386027078892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258133.P12471926386027078892

namespace A258133

/-- `Δ[Δ[A029000(n)]]` -/
def P12471926386027078892.Spec : Prop :=
  ∀ n, P12471926386027078892.a n = A258133 n

end A258133

/-! ## A258133.P11162448965890747358

`Δ[A026806(n+3)]*A026806(n+1)`
-/

namespace A258133.P11162448965890747358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A026806 (n + 1)

end

end A258133.P11162448965890747358

namespace A258133

/-- `Δ[A026806(n+3)]*A026806(n+1)` -/
def P11162448965890747358.Spec : Prop :=
  ∀ n, P11162448965890747358.a n = A258133 n

end A258133

/-! ## A258133.P11274439842161106271

`Δ[A103221(n+1)]*A103221(n+4)`
-/

namespace A258133.P11274439842161106271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A103221 (n + 4)

end

end A258133.P11274439842161106271

namespace A258133

/-- `Δ[A103221(n+1)]*A103221(n+4)` -/
def P11274439842161106271.Spec : Prop :=
  ∀ n, P11274439842161106271.a n = A258133 n

end A258133

/-! ## A258133.P15674732233555424103

`Δ[A000217(A081753(2*(n+1)))]`
-/

namespace A258133.P15674732233555424103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A081753 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258133.P15674732233555424103

namespace A258133

/-- `Δ[A000217(A081753(2*(n+1)))]` -/
def P15674732233555424103.Spec : Prop :=
  ∀ n, P15674732233555424103.a n = A258133 n

end A258133

/-! ## A258133.P12569544216273779075

`Δ[Δ[A008719(2*n)]]`
-/

namespace A258133.P12569544216273779075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008719 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258133.P12569544216273779075

namespace A258133

/-- `Δ[Δ[A008719(2*n)]]` -/
def P12569544216273779075.Spec : Prop :=
  ∀ n, P12569544216273779075.a n = A258133 n

end A258133

/-! ## A258133.P6519178070698809736

`Δ[Δ[A029057(2*n)]]`
-/

namespace A258133.P6519178070698809736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258133.P6519178070698809736

namespace A258133

/-- `Δ[Δ[A029057(2*n)]]` -/
def P6519178070698809736.Spec : Prop :=
  ∀ n, P6519178070698809736.a n = A258133 n

end A258133

/-! ## A258133.P3670881200775887187

`Δ[Δ[A029142(2*n)]]`
-/

namespace A258133.P3670881200775887187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258133.P3670881200775887187

namespace A258133

/-- `Δ[Δ[A029142(2*n)]]` -/
def P3670881200775887187.Spec : Prop :=
  ∀ n, P3670881200775887187.a n = A258133 n

end A258133

/-! ## A258133.P901788799745618246

`Δ[A025834(2*(n+1))]`
-/

namespace A258133.P901788799745618246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025834 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258133.P901788799745618246

namespace A258133

/-- `Δ[A025834(2*(n+1))]` -/
def P901788799745618246.Spec : Prop :=
  ∀ n, P901788799745618246.a n = A258133 n

end A258133

/-! ## A258133.P13679184922098784655

`Δ[A090176(2*(n+1))]`
-/

namespace A258133.P13679184922098784655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090176 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258133.P13679184922098784655

namespace A258133

/-- `Δ[A090176(2*(n+1))]` -/
def P13679184922098784655.Spec : Prop :=
  ∀ n, P13679184922098784655.a n = A258133 n

end A258133

/-! ## A258133.P1010584247639849851

`Δ[A091018(A025801(n+1))]`
-/

namespace A258133.P1010584247639849851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091018 (A025801 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258133.P1010584247639849851

namespace A258133

/-- `Δ[A091018(A025801(n+1))]` -/
def P1010584247639849851.Spec : Prop :=
  ∀ n, P1010584247639849851.a n = A258133 n

end A258133

/-!
# A258136: Lexicographically earliest sequence of odd positive integers such that the terms and their absolute first differences are all distinct.

The programs for A258136, there is no canonical definition to state claims against.
-/

/-! ## A258136.P17291433245593090766

`2*A081145(n+1)-1`
-/

namespace A258136.P17291433245593090766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081145 (n + 1) - 1

end

end A258136.P17291433245593090766

/-! ## A258136.P17793827155402856969

`a(n-1)+2*A099004(n)` with `a(0)=1`
-/

namespace A258136.P17793827155402856969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A099004 n

end

end A258136.P17793827155402856969

/-! ## A258136.P1277108987118829982

`A081145(A000027(n+1))+A081145(n+1)-1`
-/

namespace A258136.P1277108987118829982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (A000027 (n + 1)).toNat + (A081145 (n + 1) - 1)

end

end A258136.P1277108987118829982

/-! ## A258136.P11559711393545146955

`A000265(A081145(n+1)+A081145(n+1)-1)`
-/

namespace A258136.P11559711393545146955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A081145 (n + 1) + (A081145 (n + 1) - 1)).toNat

end

end A258136.P11559711393545146955

/-! ## A258136.P2831963500988785328

`A008683(A073653(n+1))+2*A081145(n+1)`
-/

namespace A258136.P2831963500988785328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A073653 (n + 1)).toNat + 2 * A081145 (n + 1)

end

end A258136.P2831963500988785328

/-! ## A258136.P230563295433739850

`A005408(A081145(n+1)-1)`
-/

namespace A258136.P230563295433739850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A081145 (n + 1) - 1).toNat

end

end A258136.P230563295433739850

/-! ## A258136.P9431851040979486929

`A004273(A081145(n+1))`
-/

namespace A258136.P9431851040979486929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A081145 (n + 1)).toNat

end

end A258136.P9431851040979486929

/-! ## A258136.P5410216203910828458

`A004280(A081145(n+1)-A057428(n))`
-/

namespace A258136.P5410216203910828458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A081145 (n + 1) - A057428 n).toNat

end

end A258136.P5410216203910828458

/-! ## A258136.P16726092386868305858

`A004280(A081145(n+1)+A057428(n)²)`
-/

namespace A258136.P16726092386868305858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A081145 (n + 1) + A057428 n ^ 2).toNat

end

end A258136.P16726092386868305858

/-! ## A258136.P14634610572895218359

`A065423(4*A081145(n+1))`
-/

namespace A258136.P14634610572895218359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (4 * A081145 (n + 1)).toNat

end

end A258136.P14634610572895218359

/-! ## A258136.P971375519196518547

`A008683(A198519(n+1))+2*A081145(n+1)`
-/

namespace A258136.P971375519196518547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A198519 (n + 1)).toNat + 2 * A081145 (n + 1)

end

end A258136.P971375519196518547

/-!
# A258137: Absolute first differences of the lexicographically earliest sequence of odd positive integers such that the terms and their absolute first differences are all distinct.

The programs for A258137, there is no canonical definition to state claims against.
-/

/-! ## A258137.P9090515445215486182

`2*abs(A099004(n+1))`
-/

namespace A258137.P9090515445215486182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |A099004 (n + 1)|

end

end A258137.P9090515445215486182

/-! ## A258137.P12985255075015974258

`abs(A258136(n+2)-A258136(n+1))`
-/

namespace A258137.P12985255075015974258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258136 (n + 2) - A258136 (n + 1)|

end

end A258137.P12985255075015974258

/-! ## A258137.P5999642829043484527

`gcd(2*A099004(n+1), A000038(n))`
-/

namespace A258137.P5999642829043484527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A099004 (n + 1)) (A000038 n)

end

end A258137.P5999642829043484527

/-! ## A258137.P8157511997991552199

`lcm(2*A099004(n+1), A020985(n))`
-/

namespace A258137.P8157511997991552199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * A099004 (n + 1)) (A020985 n)

end

end A258137.P8157511997991552199

/-! ## A258137.P14029301164682445636

`2*∑{d}[A099004(n+1), A000010(#)]`
-/

namespace A258137.P14029301164682445636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d)

end

end A258137.P14029301164682445636

/-! ## A258137.P3170905940990111255

`2*lcm(A008836(n+1), A099004(n+1))`
-/

namespace A258137.P3170905940990111255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (A008836 (n + 1)) (A099004 (n + 1))

end

end A258137.P3170905940990111255

/-! ## A258137.P8695436256987853564

`abs(Δ[A258136(n+1)])`
-/

namespace A258137.P8695436256987853564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A258137.P8695436256987853564

/-! ## A258137.P18336411466100313558

`abs(Δ[2*A081145(n+1)])`
-/

namespace A258137.P18336411466100313558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A258137.P18336411466100313558

/-! ## A258137.P13383319725364111674

`2*∏{d}[A099004(n+1), A014963(#)]`
-/

namespace A258137.P13383319725364111674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d)

end

end A258137.P13383319725364111674

/-! ## A258137.P8745641319792854593

`2*A308007(n+1)`
-/

namespace A258137.P8745641319792854593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308007 (n + 1)

end

end A258137.P8745641319792854593

/-! ## A258137.P14430962822925822496

`A004277(A308007(n+1))`
-/

namespace A258137.P14430962822925822496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A308007 (n + 1)).toNat

end

end A258137.P14430962822925822496

/-! ## A258137.P8622635733255958405

`A004275(A308007(n+1)+1)`
-/

namespace A258137.P8622635733255958405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A308007 (n + 1) + 1).toNat

end

end A258137.P8622635733255958405

/-! ## A258137.P14199783426068265350

`2*A308021(A081145(n+1))`
-/

namespace A258137.P14199783426068265350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308021 (A081145 (n + 1)).toNat

end

end A258137.P14199783426068265350

/-! ## A258137.P9096202573986501427

`A308021(A081145(n+1))+A308007(n+1)`
-/

namespace A258137.P9096202573986501427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308021 (A081145 (n + 1)).toNat + A308007 (n + 1)

end

end A258137.P9096202573986501427

/-!
# A258138: Smallest m, such that there are exactly n solutions of the equation (m+k)' = m' + k', where 1 <= k <= 2*m and x' = A003415(x), the arithmetic derivative of x.

The programs for A258138, there is no canonical definition to state claims against.
-/

/-! ## A258138.P2527972505889234130

`A204890(A156887(n))`
-/

namespace A258138.P2527972505889234130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A156887 n).toNat

end

end A258138.P2527972505889234130

/-!
# A258139: Number of ways to write n as p^2 + q with p and q both prime.

The programs for A258139, there is no canonical definition to state claims against.
-/

/-! ## A258139.P1294299418490446729

`A100949(n+1)-A282192(n+1)`
-/

namespace A258139.P1294299418490446729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (n + 1) - A282192 (n + 1)

end

end A258139.P1294299418490446729

/-! ## A258139.P9783860297182874566

`A322006(n+1)-A073610(n+1)-A282192(A025480(2*(n+1)))`
-/

namespace A258139.P9783860297182874566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322006 (n + 1) - A073610 (n + 1) - A282192 (A025480 (2 * (n + 1))).toNat

end

end A258139.P9783860297182874566

/-! ## A258139.P3447592076349419018

`A101671(A287234(3*n+4)+A239958(2*(n+2)))`
-/

namespace A258139.P3447592076349419018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 (A287234 (3 * n + 4) + A239958 (2 * (n + 2))).toNat

end

end A258139.P3447592076349419018

/-! ## A258139.P8776180122045188927

`A070878(A232569(n+1)^A070878(n))`
-/

namespace A258139.P8776180122045188927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 (SequenceMachineLib.roundAway ((A232569 (n + 1) : ℚ) ^ (A070878 n : ℤ))).toNat

end

end A258139.P8776180122045188927

/-! ## A258139.P10144119511906548606

`A055641(A008728(3*n+1)*A008753(n))`
-/

namespace A258139.P10144119511906548606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A008728 (3 * n + 1) * A008753 n).toNat

end

end A258139.P10144119511906548606

/-!
# A258140: Number of ways to write 6*n + 2 as p^2 + q with p and q both prime.

The programs for A258140, there is no canonical definition to state claims against.
-/

/-! ## A258140.P17394527787123774831

`A258139(6*n+2)`
-/

namespace A258140.P17394527787123774831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258139 (6 * n + 2)

end

end A258140.P17394527787123774831

/-!
# A258141: Number of ways to write n as p^2 + q with p, q and 2*p + 3 all prime.

The programs for A258141, there is no canonical definition to state claims against.
-/

/-! ## A258141.P8060543833850441646

`A260552(A325176(n+2))`
-/

namespace A258141.P8060543833850441646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260552 (A325176 (n + 2)).toNat

end

end A258141.P8060543833850441646

/-! ## A258141.P16440764560479900922

`A280710(A359893(3*n+4)+n)`
-/

namespace A258141.P16440764560479900922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A359893 (3 * n + 4) + (n : ℤ)).toNat

end

end A258141.P16440764560479900922

/-! ## A258141.P6110817651719897283

`and(char[A113935(n+1)], A113914(n+5))`
-/

namespace A258141.P6110817651719897283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A113914 (n + 5))

end

end A258141.P6110817651719897283

/-! ## A258141.P937919159460120218

`and(char[A113935(n+1)], A341628(3*n+2))`
-/

namespace A258141.P937919159460120218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A341628 (3 * n + 2))

end

end A258141.P937919159460120218

/-! ## A258141.P5416588961830821590

`A373840(A257440(n+1))`
-/

namespace A258141.P5416588961830821590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373840 (A257440 (n + 1)).toNat

end

end A258141.P5416588961830821590

/-!
# A258143: Row sums of A257241, Stifel's version of the arithmetical triangle.

The programs for A258143, the canonical program `A258143.P7349125463556418444` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258143 has offset 1).

The definition of A258143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116406, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258143.P7349125463556418444

`A116406(n+2)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A258143

/-- `A116406(n+2)-1` -/
def P7349125463556418444.Spec : Prop :=
  ∀ n, P7349125463556418444.a n = A258143 (n + 1)

theorem P7349125463556418444.correct : P7349125463556418444.Spec := by
  intro n
  simp only [A258143, Nat.add_sub_cancel]

end A258143

/-! ## A258143.P11364511482062354094

`A014495(n+1-and(1, n))+2^n`
-/

namespace A258143.P11364511482062354094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 1 - Nat.land 1 n) + (2 ^ n : ℤ)

end

end A258143.P11364511482062354094

namespace A258143

/-- `A014495(n+1-and(1, n))+2^n` -/
def P11364511482062354094.Spec : Prop :=
  ∀ n, P11364511482062354094.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P15204664565354023963

`A128015(n)+A000225(n)`
-/

namespace A258143.P15204664565354023963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128015 n + A000225 n

end

end A258143.P15204664565354023963

namespace A258143

/-- `A128015(n)+A000225(n)` -/
def P15204664565354023963.Spec : Prop :=
  ∀ n, P15204664565354023963.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P6030981835184816247

`A081672(n)+A047171(n)`
-/

namespace A258143.P6030981835184816247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081672 n + A047171 n

end

end A258143.P6030981835184816247

namespace A258143

/-- `A081672(n)+A047171(n)` -/
def P6030981835184816247.Spec : Prop :=
  ∀ n, P6030981835184816247.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P3686107141257493624

`A001405(or(1, n))+A000225(n)`
-/

namespace A258143.P3686107141257493624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (Nat.lor 1 n) + A000225 n

end

end A258143.P3686107141257493624

namespace A258143

/-- `A001405(or(1, n))+A000225(n)` -/
def P3686107141257493624.Spec : Prop :=
  ∀ n, P3686107141257493624.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P17865909644993592047

`A057977(or(1, n))+A000225(n)`
-/

namespace A258143.P17865909644993592047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (Nat.lor 1 n) + A000225 n

end

end A258143.P17865909644993592047

namespace A258143

/-- `A057977(or(1, n))+A000225(n)` -/
def P17865909644993592047.Spec : Prop :=
  ∀ n, P17865909644993592047.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P283762741172735375

`A058622(n+1)+A014495(n+1)`
-/

namespace A258143.P283762741172735375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (n + 1) + A014495 (n + 1)

end

end A258143.P283762741172735375

namespace A258143

/-- `A058622(n+1)+A014495(n+1)` -/
def P283762741172735375.Spec : Prop :=
  ∀ n, P283762741172735375.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P15923236142511341862

`A001405(n+1)+A058622(n+1)-1`
-/

namespace A258143.P15923236142511341862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A058622 (n + 1) - 1)

end

end A258143.P15923236142511341862

namespace A258143

/-- `A001405(n+1)+A058622(n+1)-1` -/
def P15923236142511341862.Spec : Prop :=
  ∀ n, P15923236142511341862.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P14483268043054028779

`A001700(A002265(2*n))+A000225(n)`
-/

namespace A258143.P14483268043054028779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (A002265 (2 * n)).toNat + A000225 n

end

end A258143.P14483268043054028779

namespace A258143

/-- `A001700(A002265(2*n))+A000225(n)` -/
def P14483268043054028779.Spec : Prop :=
  ∀ n, P14483268043054028779.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P2920693428349332474

`A214282(A215495(2*n)+1)+A000225(n)`
-/

namespace A258143.P2920693428349332474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214282 (A215495 (2 * n) + 1).toNat + A000225 n

end

end A258143.P2920693428349332474

namespace A258143

/-- `A214282(A215495(2*n)+1)+A000225(n)` -/
def P2920693428349332474.Spec : Prop :=
  ∀ n, P2920693428349332474.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P2074050870538876590

`Δ[A261681(n)+A100066(n)]-1`
-/

namespace A258143.P2074050870538876590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261681 n + A100066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A258143.P2074050870538876590

namespace A258143

/-- `Δ[A261681(n)+A100066(n)]-1` -/
def P2074050870538876590.Spec : Prop :=
  ∀ n, P2074050870538876590.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P14258459242802217603

`A261681(n+1)-A027306(n+1)`
-/

namespace A258143.P14258459242802217603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261681 (n + 1) - A027306 (n + 1)

end

end A258143.P14258459242802217603

namespace A258143

/-- `A261681(n+1)-A027306(n+1)` -/
def P14258459242802217603.Spec : Prop :=
  ∀ n, P14258459242802217603.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P12439457035535408738

`A000225(n+1)-A294175(n+1)`
-/

namespace A258143.P12439457035535408738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A294175 (n + 1)

end

end A258143.P12439457035535408738

namespace A258143

/-- `A000225(n+1)-A294175(n+1)` -/
def P12439457035535408738.Spec : Prop :=
  ∀ n, P12439457035535408738.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P16066852473620548792

`A000079(n+1)-(A294175(n+1)+1)`
-/

namespace A258143.P16066852473620548792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A294175 (n + 1) + 1)

end

end A258143.P16066852473620548792

namespace A258143

/-- `A000079(n+1)-(A294175(n+1)+1)` -/
def P16066852473620548792.Spec : Prop :=
  ∀ n, P16066852473620548792.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P7645108174408887480

`A000975(n+1)+A000975(n)-A294175(n+1)`
-/

namespace A258143.P7645108174408887480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + (A000975 n - A294175 (n + 1))

end

end A258143.P7645108174408887480

namespace A258143

/-- `A000975(n+1)+A000975(n)-A294175(n+1)` -/
def P7645108174408887480.Spec : Prop :=
  ∀ n, P7645108174408887480.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P11262843988616877235

`A095121(n+1)/2-A294175(n+1)`
-/

namespace A258143.P11262843988616877235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095121 (n + 1) : ℚ) / 2 - (A294175 (n + 1) : ℚ)

end

end A258143.P11262843988616877235

namespace A258143

/-- `A095121(n+1)/2-A294175(n+1)` -/
def P11262843988616877235.Spec : Prop :=
  ∀ n, P11262843988616877235.a n = (A258143 (n + 1) : ℚ)

end A258143

/-! ## A258143.P2923479511695285021

`A000225(n+1)-and(A000225(n+1), A117186(n+1))`
-/

namespace A258143.P2923479511695285021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - Int.land (A000225 (n + 1)) (A117186 (n + 1))

end

end A258143.P2923479511695285021

namespace A258143

/-- `A000225(n+1)-and(A000225(n+1), A117186(n+1))` -/
def P2923479511695285021.Spec : Prop :=
  ∀ n, P2923479511695285021.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P16800509802162867327

`and(A153893(n+1)-A117186(n+1), A153893(n+1))`
-/

namespace A258143.P16800509802162867327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153893 (n + 1) - A117186 (n + 1)) (A153893 (n + 1))

end

end A258143.P16800509802162867327

namespace A258143

/-- `and(A153893(n+1)-A117186(n+1), A153893(n+1))` -/
def P16800509802162867327.Spec : Prop :=
  ∀ n, P16800509802162867327.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P5320318019810429016

`and(A153894(n+1)-A117186(n+1), A153894(n+1))`
-/

namespace A258143.P5320318019810429016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153894 (n + 1) - A117186 (n + 1)) (A153894 (n + 1))

end

end A258143.P5320318019810429016

namespace A258143

/-- `and(A153894(n+1)-A117186(n+1), A153894(n+1))` -/
def P5320318019810429016.Spec : Prop :=
  ∀ n, P5320318019810429016.a n = A258143 (n + 1)

end A258143

/-! ## A258143.P8623549292441956642

`A117670(A000982(n+1))`
-/

namespace A258143.P8623549292441956642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117670 (A000982 (n + 1)).toNat

end

end A258143.P8623549292441956642

namespace A258143

/-- `A117670(A000982(n+1))` -/
def P8623549292441956642.Spec : Prop :=
  ∀ n, P8623549292441956642.a n = A258143 (n + 1)

end A258143

/-!
# A258144: Alternating row sums of A257241, Stifel's version of the arithmetical triangle.

The programs for A258144, the canonical program `A258144.P1022446271885043442` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258144 has offset 1).

The definition of A258144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258144.P1393106715911604765

`A037952(n)*A057077(n)+1`
-/

namespace A258144.P1393106715911604765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n * A057077 n + 1

end

end A258144.P1393106715911604765

namespace A258144

/-- `A037952(n)*A057077(n)+1` -/
def P1393106715911604765.Spec : Prop :=
  ∀ n, P1393106715911604765.a n = A258144 (n + 1)

end A258144

/-! ## A258144.P1022446271885043442

`A026741(n)*A106181(n)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A258144

/-- `A026741(n)*A106181(n)+1` -/
def P1022446271885043442.Spec : Prop :=
  ∀ n, P1022446271885043442.a n = A258144 (n + 1)

theorem P1022446271885043442.correct : P1022446271885043442.Spec := by
  intro n
  simp only [A258144, Nat.add_sub_cancel]

end A258144

/-! ## A258144.P3035350887767554963

`Δ[A105523(n)]*A062157(n)*A026741(n)+1`
-/

namespace A258144.P3035350887767554963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062157 n * A026741 n + 1

end

end A258144.P3035350887767554963

namespace A258144

/-- `Δ[A105523(n)]*A062157(n)*A026741(n)+1` -/
def P3035350887767554963.Spec : Prop :=
  ∀ n, P3035350887767554963.a n = A258144 (n + 1)

theorem P3035350887767554963.correct : P3035350887767554963.Spec := by
  intro n
  simp only [A258144, Nat.add_sub_cancel, A258144.P3035350887767554963.f1, A258144.P3035350887767554963.a, A258144.P1022446271885043442.a, A026741, A026741.P7397200255647832146.a, A062157, A062157.P13834877263571195293.a, A105523, A105523.P5299360234432620638.a, A106181, A106181.P18239189246069917284.f1, A106181.P18239189246069917284.a, A000217, A000217.P10269402890581615239.a, A087960, A087960.P9406527830484805982.a, A097331, A097331.P4426990625459901142.a, A208355, A208355.P6360215552861429744.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A258144

/-! ## A258144.P13189459922895523445

`Δ[A001405(n)]*A057077(n)+1`
-/

namespace A258144.P13189459922895523445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057077 n + 1

end

end A258144.P13189459922895523445

namespace A258144

/-- `Δ[A001405(n)]*A057077(n)+1` -/
def P13189459922895523445.Spec : Prop :=
  ∀ n, P13189459922895523445.a n = A258144 (n + 1)

end A258144

/-! ## A258144.P18276653923906829236

`1-A122433(A030978(n+4))`
-/

namespace A258144.P18276653923906829236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A122433 (A030978 (n + 4)).toNat

end

end A258144.P18276653923906829236

namespace A258144

/-- `1-A122433(A030978(n+4))` -/
def P18276653923906829236.Spec : Prop :=
  ∀ n, P18276653923906829236.a n = A258144 (n + 1)

end A258144

/-!
# A258145: Row lengths of the irregular array in A256598.

The programs for A258145, there is no canonical definition to state claims against.
-/

/-! ## A258145.P14527043531134497667

`A078719(2*n+1)`
-/

namespace A258145.P14527043531134497667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (2 * n + 1)

end

end A258145.P14527043531134497667

/-! ## A258145.P15904554515089606746

`A075680(n+1)+1`
-/

namespace A258145.P15904554515089606746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (n + 1) + 1

end

end A258145.P15904554515089606746

/-! ## A258145.P12188241553852903975

`A286380(4*n+2)`
-/

namespace A258145.P12188241553852903975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (4 * n + 2)

end

end A258145.P12188241553852903975

/-! ## A258145.P17797082953254949189

`A006667(Δ[n²])+1`
-/

namespace A258145.P17797082953254949189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A258145.P17797082953254949189

/-! ## A258145.P2391188622010779436

`A286380(Δ[n²])+1`
-/

namespace A258145.P2391188622010779436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A258145.P2391188622010779436

/-! ## A258145.P9445547194340075348

`A220182(Δ[n²])/2+1`
-/

namespace A258145.P9445547194340075348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220182 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2 + 1

end

end A258145.P9445547194340075348

/-! ## A258145.P4367564946706083560

`(A220182(comp[2*n])+2)/2`
-/

namespace A258145.P4367564946706083560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220182 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 2 : ℚ) / 2

end

end A258145.P4367564946706083560

/-! ## A258145.P9501628920296715301

`A008619(A220182(2*n+1))`
-/

namespace A258145.P9501628920296715301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A220182 (2 * n + 1)).toNat

end

end A258145.P9501628920296715301

/-! ## A258145.P9136943925503902241

`A064685(n)-A166549(n+1)`
-/

namespace A258145.P9136943925503902241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064685 n - A166549 (n + 1)

end

end A258145.P9136943925503902241

/-!
# A258146: Decimal expansion of (1 - 2/Pi)/2: ratio of the area of a circular segment with central angle Pi/2 and the area of the corresponding circular half-disk.

The programs for A258146, there is no canonical definition to state claims against.
-/

/-! ## A258146.P7431815487467304270

`A188340(C(2, 2*n+1)+n)`
-/

namespace A258146.P7431815487467304270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 (Nat.choose 2 (2 * n + 1) + n)

end

end A258146.P7431815487467304270

/-! ## A258146.P9053439275005891747

`A188340(and(2, C(2, n+1))+n)`
-/

namespace A258146.P9053439275005891747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 (Nat.land 2 (Nat.choose 2 (n + 1)) + n)

end

end A258146.P9053439275005891747

/-! ## A258146.P2873910990030843534

`A188340(A000038(n)+n)`
-/

namespace A258146.P2873910990030843534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 (A000038 n + (n : ℤ)).toNat

end

end A258146.P2873910990030843534

/-! ## A258146.P9278064358891286400

`A188340(n)%A040020(n)`
-/

namespace A258146.P9278064358891286400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188340 n) (A040020 n)

end

end A258146.P9278064358891286400

/-! ## A258146.P5535255998622584962

`A188340(or(n, A000038(n)))`
-/

namespace A258146.P5535255998622584962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 (Int.lor (n : ℤ) (A000038 n)).toNat

end

end A258146.P5535255998622584962

/-! ## A258146.P7993072318571134626

`A188340(xor(n, A000038(n)))`
-/

namespace A258146.P7993072318571134626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 (Int.xor (n : ℤ) (A000038 n)).toNat

end

end A258146.P7993072318571134626

/-! ## A258146.P10114341168520392577

`A188340(n)^A019429(2*n)`
-/

namespace A258146.P10114341168520392577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188340 n : ℚ) ^ (A019429 (2 * n) : ℤ)

end

end A258146.P10114341168520392577

/-! ## A258146.P6225460125474523881

`A188340(gcd(n, 2*A008458(n)))`
-/

namespace A258146.P6225460125474523881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 (Int.gcd (n : ℤ) (2 * A008458 n))

end

end A258146.P6225460125474523881

/-! ## A258146.P14076400905713648298

`A188340(n)^A001221(A001316(n))`
-/

namespace A258146.P14076400905713648298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188340 n : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A258146.P14076400905713648298

/-! ## A258146.P225069088909166793

`A007204(n)%(A007204(n)-A188340(n))`
-/

namespace A258146.P225069088909166793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007204 n) (A007204 n - A188340 n)

end

end A258146.P225069088909166793

/-! ## A258146.P5658232442187143477

`A055999(A105560(A105560(n+1)))-A049541(n)`
-/

namespace A258146.P5658232442187143477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (A105560 (A105560 (n + 1)).toNat).toNat - A049541 n

end

end A258146.P5658232442187143477

/-! ## A258146.P12682225918938173993

`A188340(n)^A289508(A008458(n))`
-/

namespace A258146.P12682225918938173993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188340 n : ℚ) ^ (A289508 (A008458 n).toNat : ℤ)

end

end A258146.P12682225918938173993

/-! ## A258146.P16415356606769137083

`A188340(gcd(n, A008458(A008458(n))))`
-/

namespace A258146.P16415356606769137083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188340 (Int.gcd (n : ℤ) (A008458 (A008458 n).toNat))

end

end A258146.P16415356606769137083

/-! ## A258146.P6740630935932357522

`(A188340(n)+A086362(n))%A086362(n)`
-/

namespace A258146.P6740630935932357522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188340 n + A086362 n) (A086362 n)

end

end A258146.P6740630935932357522

/-! ## A258146.P12599062414713895567

`gcd(A015890(A019426(n)), A188340(n))`
-/

namespace A258146.P12599062414713895567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015890 (A019426 n).toNat) (A188340 n)

end

end A258146.P12599062414713895567

/-!
# A258147: Decimal expansion of (4 - 3*sqrt(3)/Pi)/6: ratio of the area of a circular segment with central angle 2*Pi/3 and the area of the corresponding circular half-disk.

The programs for A258147, there is no canonical definition to state claims against.
-/

/-! ## A258147.P15188192405929763108

`9-A395268(n)`
-/

namespace A258147.P15188192405929763108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A395268 n

end

end A258147.P15188192405929763108

/-!
# A258149: Triangle of the absolute difference of the two legs (catheti) of primitive Pythagorean triangles.

The programs for A258149, there is no canonical definition to state claims against.
-/

/-! ## A258149.P15948526590770275431

`abs(A278717(n+2))`
-/

namespace A258149.P15948526590770275431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A278717 (n + 2)|

end

end A258149.P15948526590770275431

/-! ## A258149.P1358395996507948025

`A056926(A278717(n+2)²)`
-/

namespace A258149.P1358395996507948025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A278717 (n + 2) ^ 2).toNat

end

end A258149.P1358395996507948025

/-! ## A258149.P11627186806960036706

`A004526(lcm(2, A278717(n+2)))`
-/

namespace A258149.P11627186806960036706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A278717 (n + 2)))

end

end A258149.P11627186806960036706

/-! ## A258149.P15686890792624942

`gcd(A000038(n), A278717(n+2))`
-/

namespace A258149.P15686890792624942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A278717 (n + 2))

end

end A258149.P15686890792624942

/-! ## A258149.P7419804306539540640

`∑{d}[A278717(n+2), A000010(#)]`
-/

namespace A258149.P7419804306539540640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A258149.P7419804306539540640

/-! ## A258149.P13987220993467150529

`abs(A057105(n+1)*A249866(n+2))`
-/

namespace A258149.P13987220993467150529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057105 (n + 1) * A249866 (n + 2)|

end

end A258149.P13987220993467150529

/-! ## A258149.P1373946155809877442

`sqrt(A008683(9*(n+1))+A278717(n+2)²)`
-/

namespace A258149.P1373946155809877442
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008683 (9 * (n + 1)) + A278717 (n + 2) ^ 2 : ℝ)

end

end A258149.P1373946155809877442

/-! ## A258149.P17683543345362476180

`sqrt(A278717(n+2)²*A014963(6*(n+2)))`
-/

namespace A258149.P17683543345362476180
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278717 (n + 2) ^ 2 * A014963 (6 * (n + 2)) : ℝ)

end

end A258149.P17683543345362476180

/-!
# A258150: Triangle of Fibonacci's congruum (congruous) numbers divided by 24 based on primitive Pythagorean triangles. Areas divided by 6 of these triangles.

The programs for A258150, there is no canonical definition to state claims against.
-/

/-! ## A258150.P4777262980102768363

`A249869(n+2)/6`
-/

namespace A258150.P4777262980102768363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249869 (n + 2) : ℚ) / 6

end

end A258150.P4777262980102768363

/-! ## A258150.P2331762822952884416

`A008615(A249869(n+2))`
-/

namespace A258150.P2331762822952884416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A249869 (n + 2)).toNat

end

end A258150.P2331762822952884416

/-! ## A258150.P12096581205924674998

`A008612(A249869(n+2)+1)`
-/

namespace A258150.P12096581205924674998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A249869 (n + 2) + 1).toNat

end

end A258150.P12096581205924674998

/-! ## A258150.P17361984017806863021

`A091972(A249869(n+2)+1)`
-/

namespace A258150.P17361984017806863021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 (A249869 (n + 2) + 1).toNat

end

end A258150.P17361984017806863021

/-! ## A258150.P9647001500489711009

`A103221(A249869(n+2)+1)`
-/

namespace A258150.P9647001500489711009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A249869 (n + 2) + 1).toNat

end

end A258150.P9647001500489711009

/-! ## A258150.P8437527810744738499

`A249866(n+2)*A354968(n+2)`
-/

namespace A258150.P8437527810744738499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249866 (n + 2) * A354968 (n + 2)

end

end A258150.P8437527810744738499

/-! ## A258150.P15881057467920964595

`A255591((1-char[1])*A249869(n+2))`
-/

namespace A258150.P15881057467920964595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 ((1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A249869 (n + 2)).toNat

end

end A258150.P15881057467920964595

/-! ## A258150.P5345755830075555507

`A002260(n+1)/6*A278712(n+2)`
-/

namespace A258150.P5345755830075555507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 6 * (A278712 (n + 2) : ℚ)

end

end A258150.P5345755830075555507

/-! ## A258150.P4277430205249273125

`lcm(A003991(n+1), A278712(n+2))/6`
-/

namespace A258150.P4277430205249273125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003991 (n + 1)) (A278712 (n + 2)) : ℚ) / 6

end

end A258150.P4277430205249273125

/-! ## A258150.P2540451676940340066

`A255591(A249869(n+2))+A000007(n+1)`
-/

namespace A258150.P2540451676940340066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A249869 (n + 2)).toNat + A000007 (n + 1)

end

end A258150.P2540451676940340066

/-!
# A258151: Areas of primitive Pythagorean triangles divided by 6, in increasing order without multiple entries.

The programs for A258151, there is no canonical definition to state claims against.
-/

/-! ## A258151.P17256194303221606744

`A024365(n+1)/6`
-/

namespace A258151.P17256194303221606744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024365 (n + 1) : ℚ) / 6

end

end A258151.P17256194303221606744

/-! ## A258151.P18086711303277776589

`record[A020885(n+1)-char[6]]`
-/

namespace A258151.P18086711303277776589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020885 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258151.P18086711303277776589

/-! ## A258151.P2547684910207767017

`record[A020885(gcd(n+1, ceil(n/2)))]`
-/

namespace A258151.P2547684910207767017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020885 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258151.P2547684910207767017

/-! ## A258151.P3048543563469625214

`record[A024406(round(lcm(2, n+3)/6))]/6`
-/

namespace A258151.P3048543563469625214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 6

end

end A258151.P3048543563469625214

/-! ## A258151.P503783397135262312

`record[A020885(n-2*floor(n/10)+1)]`
-/

namespace A258151.P503783397135262312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020885 ((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258151.P503783397135262312

/-! ## A258151.P4801688842654042963

`A094807(n+1)/(A008594(n+1)-A008594(n))`
-/

namespace A258151.P4801688842654042963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094807 (n + 1) : ℚ) / (A008594 (n + 1) - A008594 n : ℚ)

end

end A258151.P4801688842654042963

/-! ## A258151.P8934773869995765808

`A255591(A024365(n+1))`
-/

namespace A258151.P8934773869995765808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A024365 (n + 1)).toNat

end

end A258151.P8934773869995765808

/-!
# A258153: Numbers of the form p^2 + q with p, q and 2*p + 3 all prime.

The programs for A258153, there is no canonical definition to state claims against.
-/

/-! ## A258153.P5235294641145959663

`eq[0, A076816(a(A258141(n)))]` with `a(0)=2`
-/

namespace A258153.P5235294641145959663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A076816 (f2 (A258141 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258153.P5235294641145959663

/-! ## A258153.P2417803157451445214

`eq[1, A276719(a(A258141(n)))]` with `a(0)=2`
-/

namespace A258153.P2417803157451445214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A276719 (f2 (A258141 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258153.P2417803157451445214

/-! ## A258153.P2791414021973304286

`eq[1, A000010(a(A258141(n)))]` with `a(0)=3`
-/

namespace A258153.P2791414021973304286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A258141 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258153.P2791414021973304286

/-! ## A258153.P508035814958651499

`eq[1, A000045(a(A258141(n)))]` with `a(0)=3`
-/

namespace A258153.P508035814958651499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A258141 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258153.P508035814958651499

/-! ## A258153.P171963070154839030

`eq[1, A074206(a(A258141(n)))]` with `a(0)=4`
-/

namespace A258153.P171963070154839030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A074206 (f2 (A258141 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258153.P171963070154839030

/-! ## A258153.P12123533490402393927

`eq[2, A251629(a(A258141(n)))]` with `a(0)=4`
-/

namespace A258153.P12123533490402393927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A251629 (f2 (A258141 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258153.P12123533490402393927

/-!
# A258155: Products of squares of three successive primes.

The programs for A258155, the canonical program `A258155.P7697194881725591398` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258155 has offset 1).

The definition of A258155 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046301, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258155.P7697194881725591398

`A046301(n+1)²`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A258155

/-- `A046301(n+1)²` -/
def P7697194881725591398.Spec : Prop :=
  ∀ n, P7697194881725591398.a n = A258155 (n + 1)

theorem P7697194881725591398.correct : P7697194881725591398.Spec := by
  intro n
  simp only [A258155, Nat.add_sub_cancel]

end A258155

/-! ## A258155.P15036051490284491926

`A066116(n+3)*A090076(n+1)`
-/

namespace A258155.P15036051490284491926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066116 (n + 3) * A090076 (n + 1)

end

end A258155.P15036051490284491926

namespace A258155

/-- `A066116(n+3)*A090076(n+1)` -/
def P15036051490284491926.Spec : Prop :=
  ∀ n, P15036051490284491926.a n = A258155 (n + 1)

theorem P15036051490284491926.correct : P15036051490284491926.Spec := by
  intro n
  simp only [A258155, Nat.add_sub_cancel, A258155.P15036051490284491926.a, A258155.P7697194881725591398.a, A046301, A046301.P8827187728700103366.a, A066116, A066116.P11816805237793030790.a, A090076, A090076.P14041092475761084439.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A034961, A034961.P9480249767911558173.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258155

/-! ## A258155.P10245785211496234780

`(A065091(n+1)*A090076(n+1))²`
-/

namespace A258155.P10245785211496234780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) * A090076 (n + 1)) ^ 2

end

end A258155.P10245785211496234780

namespace A258155

/-- `(A065091(n+1)*A090076(n+1))²` -/
def P10245785211496234780.Spec : Prop :=
  ∀ n, P10245785211496234780.a n = A258155 (n + 1)

theorem P10245785211496234780.correct : P10245785211496234780.Spec := by
  intro n
  simp only [A258155, Nat.add_sub_cancel, A258155.P10245785211496234780.a, A258155.P7697194881725591398.a, A046301, A046301.P8827187728700103366.a, A065091, A065091.P6971844946592549357.a, A090076, A090076.P14041092475761084439.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A034961, A034961.P9480249767911558173.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258155

/-! ## A258155.P11200188080381424679

`(A006094(n+1)*A215848(n+1))²`
-/

namespace A258155.P11200188080381424679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) * A215848 (n + 1)) ^ 2

end

end A258155.P11200188080381424679

namespace A258155

/-- `(A006094(n+1)*A215848(n+1))²` -/
def P11200188080381424679.Spec : Prop :=
  ∀ n, P11200188080381424679.a n = A258155 (n + 1)

theorem P11200188080381424679.correct : P11200188080381424679.Spec := by
  intro n
  simp only [A258155, Nat.add_sub_cancel, A258155.P11200188080381424679.a, A258155.P7697194881725591398.a, A006094, A006094.P10257567645245129766.a, A046301, A046301.P8827187728700103366.a, A215848, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258155

/-! ## A258155.P14266173121095065442

`(A066116(n+3)/A065091(n+1))²`
-/

namespace A258155.P14266173121095065442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A066116 (n + 3) : ℚ) / (A065091 (n + 1) : ℚ)) ^ 2

end

end A258155.P14266173121095065442

namespace A258155

/-- `(A066116(n+3)/A065091(n+1))²` -/
def P14266173121095065442.Spec : Prop :=
  ∀ n, P14266173121095065442.a n = (A258155 (n + 1) : ℚ)

theorem P14266173121095065442.correct : P14266173121095065442.Spec := by
  intro n
  simp only [A258155, Nat.add_sub_cancel, A258155.P14266173121095065442.a, A258155.P7697194881725591398.a, A046301, A046301.P8827187728700103366.a, A065091, A065091.P6971844946592549357.a, A066116, A066116.P11816805237793030790.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258155

/-! ## A258155.P16707414216126108122

`gcd(A046303(n+1), A331259(n+1))²`
-/

namespace A258155.P16707414216126108122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046303 (n + 1)) (A331259 (n + 1)) ^ 2

end

end A258155.P16707414216126108122

namespace A258155

/-- `gcd(A046303(n+1), A331259(n+1))²` -/
def P16707414216126108122.Spec : Prop :=
  ∀ n, (P16707414216126108122.a n : ℤ) = A258155 (n + 1)

end A258155

/-! ## A258155.P6881807867936857293

`lcm(A006094(n+1), A090076(n+1))²`
-/

namespace A258155.P6881807867936857293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006094 (n + 1)) (A090076 (n + 1)) ^ 2

end

end A258155.P6881807867936857293

namespace A258155

/-- `lcm(A006094(n+1), A090076(n+1))²` -/
def P6881807867936857293.Spec : Prop :=
  ∀ n, (P6881807867936857293.a n : ℤ) = A258155 (n + 1)

end A258155

/-! ## A258155.P6001732585809962707

`gcd(A046302(n+1), A066116(n+3))²`
-/

namespace A258155.P6001732585809962707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046302 (n + 1)) (A066116 (n + 3)) ^ 2

end

end A258155.P6001732585809962707

namespace A258155

/-- `gcd(A046302(n+1), A066116(n+3))²` -/
def P6001732585809962707.Spec : Prop :=
  ∀ n, (P6001732585809962707.a n : ℤ) = A258155 (n + 1)

end A258155

/-! ## A258155.P15989255729386572819

`gcd(A046324(n+1)², A331259(n+1)²)`
-/

namespace A258155.P15989255729386572819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046324 (n + 1) ^ 2) (A331259 (n + 1) ^ 2)

end

end A258155.P15989255729386572819

namespace A258155

/-- `gcd(A046324(n+1)², A331259(n+1)²)` -/
def P15989255729386572819.Spec : Prop :=
  ∀ n, (P15989255729386572819.a n : ℤ) = A258155 (n + 1)

end A258155

/-! ## A258155.P10084352633789006863

`gcd(A046303(n+1)², A066116(n+3)²)`
-/

namespace A258155.P10084352633789006863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046303 (n + 1) ^ 2) (A066116 (n + 3) ^ 2)

end

end A258155.P10084352633789006863

namespace A258155

/-- `gcd(A046303(n+1)², A066116(n+3)²)` -/
def P10084352633789006863.Spec : Prop :=
  ∀ n, (P10084352633789006863.a n : ℤ) = A258155 (n + 1)

end A258155

/-! ## A258155.P1432790371902054620

`(A090076(n+1)+A056221(n+1))*A090076(n+1)²`
-/

namespace A258155.P1432790371902054620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090076 (n + 1) + A056221 (n + 1)) * A090076 (n + 1) ^ 2

end

end A258155.P1432790371902054620

namespace A258155

/-- `(A090076(n+1)+A056221(n+1))*A090076(n+1)²` -/
def P1432790371902054620.Spec : Prop :=
  ∀ n, P1432790371902054620.a n = A258155 (n + 1)

end A258155

/-! ## A258155.P80998928732037232

`((A001043(n+1)-A034961(n+1))*A006094(n+1))²`
-/

namespace A258155.P80998928732037232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A001043 (n + 1) - A034961 (n + 1)) * A006094 (n + 1)) ^ 2

end

end A258155.P80998928732037232

namespace A258155

/-- `((A001043(n+1)-A034961(n+1))*A006094(n+1))²` -/
def P80998928732037232.Spec : Prop :=
  ∀ n, P80998928732037232.a n = A258155 (n + 1)

theorem P80998928732037232.correct : P80998928732037232.Spec := by
  intro n
  simp only [A258155, Nat.add_sub_cancel, A258155.P80998928732037232.a, A258155.P7697194881725591398.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A034961, A034961.P9480249767911558173.a, A046301, A046301.P8827187728700103366.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258155

/-! ## A258155.P5717121996700789195

`((A006094(n+1)-A111071(n+1))*A006094(n+1))²`
-/

namespace A258155.P5717121996700789195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A006094 (n + 1) - A111071 (n + 1)) * A006094 (n + 1)) ^ 2

end

end A258155.P5717121996700789195

namespace A258155

/-- `((A006094(n+1)-A111071(n+1))*A006094(n+1))²` -/
def P5717121996700789195.Spec : Prop :=
  ∀ n, P5717121996700789195.a n = A258155 (n + 1)

theorem P5717121996700789195.correct : P5717121996700789195.Spec := by
  intro n
  simp only [A258155, Nat.add_sub_cancel, A258155.P5717121996700789195.a, A258155.P7697194881725591398.a, A006094, A006094.P10257567645245129766.a, A046301, A046301.P8827187728700103366.a, A111071, A111071.P17768111592594357772.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258155

/-! ## A258155.P10507369813330395028

`(A006094(n+1)*A090076(n+1))²/A001248(n+1)`
-/

namespace A258155.P10507369813330395028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006094 (n + 1) * A090076 (n + 1)) ^ 2 : ℚ) / (A001248 (n + 1) : ℚ)

end

end A258155.P10507369813330395028

namespace A258155

/-- `(A006094(n+1)*A090076(n+1))²/A001248(n+1)` -/
def P10507369813330395028.Spec : Prop :=
  ∀ n, P10507369813330395028.a n = (A258155 (n + 1) : ℚ)

theorem P10507369813330395028.correct : P10507369813330395028.Spec := by
  intro n
  simp only [A258155, Nat.add_sub_cancel, A258155.P10507369813330395028.a, A258155.P7697194881725591398.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A046301, A046301.P8827187728700103366.a, A090076, A090076.P14041092475761084439.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258155

/-! ## A258155.P1191635880573031052

`A001248(n+1)*A166329(n+2)`
-/

namespace A258155.P1191635880573031052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A166329 (n + 2)

end

end A258155.P1191635880573031052

namespace A258155

/-- `A001248(n+1)*A166329(n+2)` -/
def P1191635880573031052.Spec : Prop :=
  ∀ n, P1191635880573031052.a n = A258155 (n + 1)

theorem P1191635880573031052.correct : P1191635880573031052.Spec := by
  intro n
  simp only [A258155, Nat.add_sub_cancel, A258155.P1191635880573031052.a, A258155.P7697194881725591398.a, A001248, A001248.P16278241061688229202.a, A046301, A046301.P8827187728700103366.a, A166329, A166329.P12394964810192710211.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258155

/-! ## A258155.P10502592979699418036

`lcm(A166329(n+1), A166329(n+2))`
-/

namespace A258155.P10502592979699418036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166329 (n + 1)) (A166329 (n + 2))

end

end A258155.P10502592979699418036

namespace A258155

/-- `lcm(A166329(n+1), A166329(n+2))` -/
def P10502592979699418036.Spec : Prop :=
  ∀ n, (P10502592979699418036.a n : ℤ) = A258155 (n + 1)

end A258155

/-! ## A258155.P11798319303622108958

`(A000040(n+1)*A006094(n+2))²`
-/

namespace A258155.P11798319303622108958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A006094 (n + 2)) ^ 2

end

end A258155.P11798319303622108958

namespace A258155

/-- `(A000040(n+1)*A006094(n+2))²` -/
def P11798319303622108958.Spec : Prop :=
  ∀ n, P11798319303622108958.a n = A258155 (n + 1)

theorem P11798319303622108958.correct : P11798319303622108958.Spec := by
  intro n
  simp only [A258155, Nat.add_sub_cancel, A258155.P11798319303622108958.a, A258155.P7697194881725591398.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A046301, A046301.P8827187728700103366.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258155

/-! ## A258155.P17550730753297869147

`(A000040(n+2)*A090076(n+1))²`
-/

namespace A258155.P17550730753297869147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) * A090076 (n + 1)) ^ 2

end

end A258155.P17550730753297869147

namespace A258155

/-- `(A000040(n+2)*A090076(n+1))²` -/
def P17550730753297869147.Spec : Prop :=
  ∀ n, P17550730753297869147.a n = A258155 (n + 1)

theorem P17550730753297869147.correct : P17550730753297869147.Spec := by
  intro n
  simp only [A258155, Nat.add_sub_cancel, A258155.P17550730753297869147.a, A258155.P7697194881725591398.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046301, A046301.P8827187728700103366.a, A090076, A090076.P14041092475761084439.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A034961, A034961.P9480249767911558173.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258155

/-! ## A258155.P8400626066365960484

`A000040(n+1)²*A166329(n+2)`
-/

namespace A258155.P8400626066365960484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A166329 (n + 2)

end

end A258155.P8400626066365960484

namespace A258155

/-- `A000040(n+1)²*A166329(n+2)` -/
def P8400626066365960484.Spec : Prop :=
  ∀ n, P8400626066365960484.a n = A258155 (n + 1)

theorem P8400626066365960484.correct : P8400626066365960484.Spec := by
  intro n
  simp only [A258155, Nat.add_sub_cancel, A258155.P8400626066365960484.a, A258155.P7697194881725591398.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046301, A046301.P8827187728700103366.a, A166329, A166329.P12394964810192710211.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258155

/-! ## A258155.P12835550958731657486

`(A006094(n+2)*A008578(n+2))²`
-/

namespace A258155.P12835550958731657486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 2) * A008578 (n + 2)) ^ 2

end

end A258155.P12835550958731657486

namespace A258155

/-- `(A006094(n+2)*A008578(n+2))²` -/
def P12835550958731657486.Spec : Prop :=
  ∀ n, P12835550958731657486.a n = A258155 (n + 1)

end A258155

/-!
# A258157: Indices of the start of 10 successive distinct digits in the decimal expansion of Pi.

The programs for A258157, there is no canonical definition to state claims against.
-/

/-! ## A258157.P16064526091988887445

`A280183(n+1)+1`
-/

namespace A258157.P16064526091988887445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280183 (n + 1) + 1

end

end A258157.P16064526091988887445

/-! ## A258157.P4702864377526929701

`A011760(A280183(n+1))`
-/

namespace A258157.P4702864377526929701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A280183 (n + 1)).toNat

end

end A258157.P4702864377526929701

/-!
# A258159: Numbers m such that A053645(m) (m with the most significant binary digit removed) is nonzero and divides A004526(m) (m with the least significant binary digit removed).

The programs for A258159, there is no canonical definition to state claims against.
-/

/-! ## A258159.P5906339068698348103

`record[or(A061017(n+1)+1, A027750(n+1))]`
-/

namespace A258159.P5906339068698348103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061017 (n + 1) + 1) (A027750 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258159.P5906339068698348103

/-! ## A258159.P13638439721347354379

`record[or(A003057(n+2), A050873(n+1))]`
-/

namespace A258159.P13638439721347354379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003057 (n + 2)) (A050873 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258159.P13638439721347354379

/-! ## A258159.P5248067914020001611

`record[or(A003057(n+2), A127013(n+1))]`
-/

namespace A258159.P5248067914020001611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003057 (n + 2)) (A127013 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258159.P5248067914020001611

/-! ## A258159.P7766142726730017017

`record[or(A003057(n+2), A127093(n+1))]`
-/

namespace A258159.P7766142726730017017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003057 (n + 2)) (A127093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258159.P7766142726730017017

/-! ## A258159.P7612407668018191651

`record[xor(A003056(n)+2, A307662(n+1))]`
-/

namespace A258159.P7612407668018191651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003056 n + 2) (A307662 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258159.P7612407668018191651

/-!
# A258160: a(n) = 8*Lucas(n).

The programs for A258160, the canonical program `A258160.P10888599602983927012` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258160 has offset 0).

The definition of A258160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258160.P10888599602983927012

`a(n-1)+a(n-2)` with `a(0)=16, a(1)=8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258160

/-- `a(n-1)+a(n-2)` -/
def P10888599602983927012.Spec : Prop :=
  ∀ n, (P10888599602983927012.a n : ℤ) = A258160 n

theorem P10888599602983927012.correct : P10888599602983927012.Spec := by
  intro n
  simp only [A258160]

end A258160

/-! ## A258160.P17699997027614025383

`2*A156279(n)`
-/

namespace A258160.P17699997027614025383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156279 n

end

end A258160.P17699997027614025383

namespace A258160

/-- `2*A156279(n)` -/
def P17699997027614025383.Spec : Prop :=
  ∀ n, P17699997027614025383.a n = A258160 n

end A258160

/-! ## A258160.P7128735754017723957

`ogf((-16+8x)/(-1+x+x^2))`
-/

namespace A258160.P7128735754017723957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -8] [1, -1, -1] n

end

end A258160.P7128735754017723957

namespace A258160

/-- `ogf((-16+8x)/(-1+x+x^2))` -/
def P7128735754017723957.Spec : Prop :=
  ∀ n, P7128735754017723957.a n = A258160 n

end A258160

/-! ## A258160.P13022287917085844497

`8*A000032(n)`
-/

namespace A258160.P13022287917085844497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000032 n

end

end A258160.P13022287917085844497

namespace A258160

/-- `8*A000032(n)` -/
def P13022287917085844497.Spec : Prop :=
  ∀ n, P13022287917085844497.a n = A258160 n

end A258160

/-! ## A258160.P13018957215360335371

`4*(A380821(n)-1)`
-/

namespace A258160.P13018957215360335371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A380821 n - 1)

end

end A258160.P13018957215360335371

namespace A258160

/-- `4*(A380821(n)-1)` -/
def P13018957215360335371.Spec : Prop :=
  ∀ n, P13018957215360335371.a n = A258160 n

end A258160

/-! ## A258160.P6201550706373406422

`8*(A001612(n)-1)`
-/

namespace A258160.P6201550706373406422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A001612 n - 1)

end

end A258160.P6201550706373406422

namespace A258160

/-- `8*(A001612(n)-1)` -/
def P6201550706373406422.Spec : Prop :=
  ∀ n, P6201550706373406422.a n = A258160 n

end A258160

/-! ## A258160.P9153702842586774837

`8*A329723(n+2)`
-/

namespace A258160.P9153702842586774837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A329723 (n + 2)

end

end A258160.P9153702842586774837

namespace A258160

/-- `8*A329723(n+2)` -/
def P9153702842586774837.Spec : Prop :=
  ∀ n, P9153702842586774837.a n = A258160 n

end A258160

/-! ## A258160.P1574729845701704317

`8*A127218(2*n)`
-/

namespace A258160.P1574729845701704317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A127218 (2 * n)

end

end A258160.P1574729845701704317

namespace A258160

/-- `8*A127218(2*n)` -/
def P1574729845701704317.Spec : Prop :=
  ∀ n, P1574729845701704317.a n = A258160 n

end A258160

/-! ## A258160.P8220163821140182716

`8*A303427(2*n)`
-/

namespace A258160.P8220163821140182716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A303427 (2 * n)

end

end A258160.P8220163821140182716

namespace A258160

/-- `8*A303427(2*n)` -/
def P8220163821140182716.Spec : Prop :=
  ∀ n, P8220163821140182716.a n = A258160 n

end A258160

/-! ## A258160.P14312703827640405957

`8*A090244(2*n+1)`
-/

namespace A258160.P14312703827640405957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A090244 (2 * n + 1)

end

end A258160.P14312703827640405957

namespace A258160

/-- `8*A090244(2*n+1)` -/
def P14312703827640405957.Spec : Prop :=
  ∀ n, P14312703827640405957.a n = A258160 n

end A258160

/-! ## A258160.P13902958894646177564

`8*A302126(2*n+1)`
-/

namespace A258160.P13902958894646177564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A302126 (2 * n + 1)

end

end A258160.P13902958894646177564

namespace A258160

/-- `8*A302126(2*n+1)` -/
def P13902958894646177564.Spec : Prop :=
  ∀ n, P13902958894646177564.a n = A258160 n

end A258160

/-! ## A258160.P11170112003223549785

`A206612(n+1)+A013655(n)`
-/

namespace A258160.P11170112003223549785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206612 (n + 1) + A013655 n

end

end A258160.P11170112003223549785

namespace A258160

/-- `A206612(n+1)+A013655(n)` -/
def P11170112003223549785.Spec : Prop :=
  ∀ n, P11170112003223549785.a n = A258160 n

end A258160

/-! ## A258160.P18238533844753212483

`A206611(n+1)+A104449(n)`
-/

namespace A258160.P18238533844753212483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) + A104449 n

end

end A258160.P18238533844753212483

namespace A258160

/-- `A206611(n+1)+A104449(n)` -/
def P18238533844753212483.Spec : Prop :=
  ∀ n, P18238533844753212483.a n = A258160 n

end A258160

/-! ## A258160.P10627369950420087278

`2*(A190996(n)-A020695(n))`
-/

namespace A258160.P10627369950420087278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A190996 n - A020695 n)

end

end A258160.P10627369950420087278

namespace A258160

/-- `2*(A190996(n)-A020695(n))` -/
def P10627369950420087278.Spec : Prop :=
  ∀ n, P10627369950420087278.a n = A258160 n

end A258160

/-! ## A258160.P3472020580040114419

`A022091(n+1)+Δ[A022091(n)]`
-/

namespace A258160.P3472020580040114419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 (n + 1) + (f1 (n + 1) - f1 n)

end

end A258160.P3472020580040114419

namespace A258160

/-- `A022091(n+1)+Δ[A022091(n)]` -/
def P3472020580040114419.Spec : Prop :=
  ∀ n, P3472020580040114419.a n = A258160 n

end A258160

/-! ## A258160.P8097387215585655381

`8*(A212804(n)+∑[A212804(n)])`
-/

namespace A258160.P8097387215585655381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A212804 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258160.P8097387215585655381

namespace A258160

/-- `8*(A212804(n)+∑[A212804(n)])` -/
def P8097387215585655381.Spec : Prop :=
  ∀ n, P8097387215585655381.a n = A258160 n

end A258160

/-! ## A258160.P16738071956901817622

`2*(A190995(n)-A000204(n+1))`
-/

namespace A258160.P16738071956901817622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A190995 n - A000204 (n + 1))

end

end A258160.P16738071956901817622

namespace A258160

/-- `2*(A190995(n)-A000204(n+1))` -/
def P16738071956901817622.Spec : Prop :=
  ∀ n, P16738071956901817622.a n = A258160 n

end A258160

/-! ## A258160.P17184947891972161438

`8*Δ[A000045(n)+∑[A000045(n)]]`
-/

namespace A258160.P17184947891972161438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (f1 (n + 1) - f1 n)

end

end A258160.P17184947891972161438

namespace A258160

/-- `8*Δ[A000045(n)+∑[A000045(n)]]` -/
def P17184947891972161438.Spec : Prop :=
  ∀ n, P17184947891972161438.a n = A258160 n

end A258160

/-! ## A258160.P13365996622060889630

`8*(Δ[A000045(n)]+A000045(n+1))`
-/

namespace A258160.P13365996622060889630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (f1 (n + 1) - f1 n + A000045 (n + 1))

end

end A258160.P13365996622060889630

namespace A258160

/-- `8*(Δ[A000045(n)]+A000045(n+1))` -/
def P13365996622060889630.Spec : Prop :=
  ∀ n, P13365996622060889630.a n = A258160 n

end A258160

/-! ## A258160.P18242222089195453252

`A022091(n+1)+A156279(n)-A022087(n)`
-/

namespace A258160.P18242222089195453252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 (n + 1) + (A156279 n - A022087 n)

end

end A258160.P18242222089195453252

namespace A258160

/-- `A022091(n+1)+A156279(n)-A022087(n)` -/
def P18242222089195453252.Spec : Prop :=
  ∀ n, P18242222089195453252.a n = A258160 n

end A258160

/-!
# A258161: a(n) = a(n-1)^3/a(n-2) with a(0)=1, a(1)=2.

The programs for A258161, the canonical program `A258161.P8329861670422060112` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258161 has offset 0).

The definition of A258161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258161.P8329861670422060112

`a(n-1)^3/a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258161

/-- `a(n-1)^3/a(n-2)` -/
def P8329861670422060112.Spec : Prop :=
  ∀ n, P8329861670422060112.a n = (A258161 n : ℚ)

end A258161

/-! ## A258161.P14557109376521410071

`A000301(2*n)`
-/

namespace A258161.P14557109376521410071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000301 (2 * n)

end

end A258161.P14557109376521410071

namespace A258161

/-- `A000301(2*n)` -/
def P14557109376521410071.Spec : Prop :=
  ∀ n, P14557109376521410071.a n = A258161 n

end A258161

/-! ## A258161.P9573619652190305184

`2^A001906(n)`
-/

namespace A258161.P9573619652190305184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001906 n : ℤ)

end

end A258161.P9573619652190305184

namespace A258161

/-- `2^A001906(n)` -/
def P9573619652190305184.Spec : Prop :=
  ∀ n, P9573619652190305184.a n = (A258161 n : ℚ)

end A258161

/-!
# A258165: Odd non-Brazilian numbers > 1.

The programs for A258165, there is no canonical definition to state claims against.
-/

/-! ## A258165.P9729520216887264805

`record[or(1, A059711(n))]`
-/

namespace A258165.P9729520216887264805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A059711 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258165.P9729520216887264805

/-! ## A258165.P6467312814706988589

`record[A059711(2*n+1)+1]`
-/

namespace A258165.P6467312814706988589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258165.P6467312814706988589

/-! ## A258165.P12178813637725616785

`eq[lcm(2, n), A059711(n+1)]+1`
-/

namespace A258165.P12178813637725616785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258165.P12178813637725616785

/-! ## A258165.P18253488663513341650

`∩[2*n+1, A220570(n+2)]`
-/

namespace A258165.P18253488663513341650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258165.P18253488663513341650

/-! ## A258165.P9077614261381848080

`eq[A029578(n), A059711(n)]`
-/

namespace A258165.P9077614261381848080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258165.P9077614261381848080

/-! ## A258165.P4409852569740813150

`eq[A052928(n), A059711(n)]`
-/

namespace A258165.P4409852569740813150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258165.P4409852569740813150

/-! ## A258165.P9726732470984684240

`eq[A059711(n), A093049(n)]`
-/

namespace A258165.P9726732470984684240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258165.P9726732470984684240

/-! ## A258165.P9103100368353308480

`eq[A059711(n), A124625(n)]`
-/

namespace A258165.P9103100368353308480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258165.P9103100368353308480

/-! ## A258165.P7397666843654176989

`eq[A059711(n), A165754(n)]`
-/

namespace A258165.P7397666843654176989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258165.P7397666843654176989

/-! ## A258165.P14418573967225063852

`eq[A059711(n), A276093(n)]`
-/

namespace A258165.P14418573967225063852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258165.P14418573967225063852

/-! ## A258165.P12683180345847848562

`filter[A220570(n+1), A174275(#)]`
-/

namespace A258165.P12683180345847848562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A258165.P12683180345847848562

/-! ## A258165.P13851823038159161661

`filter[A220570(n+1), A266070(#)]`
-/

namespace A258165.P13851823038159161661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A258165.P13851823038159161661

/-! ## A258165.P15464494255132056599

`filter[A220570(n+1), A353673(#)]`
-/

namespace A258165.P15464494255132056599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A258165.P15464494255132056599

/-! ## A258165.P12309156706077452066

`filter[A220570(n+2), A000035(#)]`
-/

namespace A258165.P12309156706077452066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A258165.P12309156706077452066

/-! ## A258165.P16512323536531378

`filter[A220570(n+2), A102863(#)]`
-/

namespace A258165.P16512323536531378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A258165.P16512323536531378

/-! ## A258165.P1699935576264336475

`filter[A220570(n+2), A260390(#)]`
-/

namespace A258165.P1699935576264336475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A258165.P1699935576264336475

/-! ## A258165.P13299233325678818267

`filter[A220570(n+2), A356172(#)]`
-/

namespace A258165.P13299233325678818267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A258165.P13299233325678818267

/-! ## A258165.P1994338840107599546

`filter[A220570(n+2), A360113(#)]`
-/

namespace A258165.P1994338840107599546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A258165.P1994338840107599546

/-! ## A258165.P14696269273523018346

`filter[A220570(n+2), A373157(#)]`
-/

namespace A258165.P14696269273523018346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A258165.P14696269273523018346

/-! ## A258165.P5342724569354577282

`filter[A220570(n+2), A374134(#)]`
-/

namespace A258165.P5342724569354577282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A258165.P5342724569354577282

/-!
# A258169: 

The programs for A258169, there is no canonical definition to state claims against.
-/

/-! ## A258169.P15697588763108418060

`a(n-1)^4/a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A258169.P15697588763108418060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) ^ 4 / a (n - 2)

end

end A258169.P15697588763108418060

/-!
# A258170: T(n,k) = (1/k!) * Sum_{i=0..k} (-1)^(k-i) * C(k,i) * A185651(n,i); triangle T(n,k), n >= 0, 0 <= k <= n, read by rows.

The programs for A258170, there is no canonical definition to state claims against.
-/

/-! ## A258170.P16544288120346216726

`A244580(A298636(n+1))-char[∑[n]]`
-/

namespace A258170.P16544288120346216726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244580 (A298636 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A258170.P16544288120346216726

/-! ## A258170.P5473064815520216948

`A029635(n)-A327858(A185344(n))`
-/

namespace A258170.P5473064815520216948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - A327858 (A185344 n).toNat

end

end A258170.P5473064815520216948

/-! ## A258170.P159940086321585787

`A048793(A002262(n)*A261983(n))`
-/

namespace A258170.P159940086321585787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A002262 n * A261983 n).toNat

end

end A258170.P159940086321585787

/-! ## A258170.P13484388680722003120

`A156354(n)%A015904(A156363(n))`
-/

namespace A258170.P13484388680722003120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156354 n) (A015904 (A156363 n).toNat)

end

end A258170.P13484388680722003120

/-! ## A258170.P17913993280478208072

`A297020(n+1)-A000035(A371637(n))`
-/

namespace A258170.P17913993280478208072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (n + 1) - A000035 (A371637 n).toNat

end

end A258170.P17913993280478208072

/-!
# A258171: a(n) = Sum_{d|n} phi(d)*Bell(n/d) for n>0, a(0) = 0.

The programs for A258171, there is no canonical definition to state claims against.
-/

/-! ## A258171.P5445508931533240285

`∑[A134143(∑[A001077(n)])]`
-/

namespace A258171.P5445508931533240285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134143 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258171.P5445508931533240285

/-! ## A258171.P10247359030987103890

`A236362(∑[A270984(2^n-1)]+n)`
-/

namespace A258171.P10247359030987103890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270984 (2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236362 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A258171.P10247359030987103890

/-!
# A258172: Sum over all Dyck paths of semilength n of products over all peaks p of x_p, where x_p is the x-coordinate of peak p.

The programs for A258172, there is no canonical definition to state claims against.
-/

/-! ## A258172.P1679013089777379110

`A100862(A001844(n))/A008761(n)`
-/

namespace A258172.P1679013089777379110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100862 (A001844 n).toNat : ℚ) / (A008761 n : ℚ)

end

end A258172.P1679013089777379110

/-! ## A258172.P4028807963822550141

`A100862(A001844(n))/A028310(n)`
-/

namespace A258172.P4028807963822550141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100862 (A001844 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A258172.P4028807963822550141

/-!
# A258173: Sum over all Dyck paths of semilength n of products over all peaks p of y_p, where y_p is the y-coordinate of peak p.

The programs for A258173, there is no canonical definition to state claims against.
-/

/-! ## A258173.P10653051655227000887

`A371567(A000217(n)-floor(n^(1/5)))`
-/

namespace A258173.P10653051655227000887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371567 (A000217 n - ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋).toNat

end

end A258173.P10653051655227000887

/-! ## A258173.P2983253925305325985

`gcd(C(n, n²), A371567(A048093(n+1)))`
-/

namespace A258173.P2983253925305325985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n (n ^ 2) : ℤ) (A371567 (A048093 (n + 1)).toNat)

end

end A258173.P2983253925305325985

/-! ## A258173.P14081108363433052537

`A123108(A127087(n)+A000260(n))`
-/

namespace A258173.P14081108363433052537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A127087 n + A000260 n).toNat

end

end A258173.P14081108363433052537

/-!
# A258174: Sum over all Dyck paths of semilength n of products over all peaks p of x_p*y_p, where x_p and y_p are the coordinates of peak p.

The programs for A258174, there is no canonical definition to state claims against.
-/

/-! ## A258174.P17529008396532232611

`A034887(A349314(n)+n)`
-/

namespace A258174.P17529008396532232611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A349314 n + (n : ℤ)).toNat

end

end A258174.P17529008396532232611

/-!
# A258175: Sum over all Dyck paths of semilength n of products over all peaks p of x_p+y_p, where x_p and y_p are the coordinates of peak p.

The programs for A258175, there is no canonical definition to state claims against.
-/

/-! ## A258175.P4034395964142619748

`A001951((n+1-C(∑[char[∑[n+1]]], 2))^eq[0, floor(2*sqrt(n))%2])`
-/

namespace A258175.P4034395964142619748
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ SequenceMachineLib.nth (fun j => (f4 j : ℤ) = f5 j) n).toNat

end

end A258175.P4034395964142619748

/-!
# A258176: Sum over all Dyck paths of semilength n of products over all peaks p of x_p^y_p, where x_p and y_p are the coordinates of peak p.

The programs for A258176, there is no canonical definition to state claims against.
-/

/-! ## A258176.P10906991879975348251

`A179821(A084942(n))-A056453(n+1)`
-/

namespace A258176.P10906991879975348251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179821 (A084942 n).toNat - A056453 (n + 1)

end

end A258176.P10906991879975348251

/-!
# A258177: Sum over all Dyck paths of semilength n of products over all peaks p of y_p^x_p, where x_p and y_p are the coordinates of peak p.

The programs for A258177, there is no canonical definition to state claims against.
-/

/-! ## A258177.P16386623646065289479

`A314373(C(∑[n], n+1))*A326362(n)`
-/

namespace A258177.P16386623646065289479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314373 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1)) * A326362 n

end

end A258177.P16386623646065289479

/-!
# A258179: Sum over all Dyck paths of semilength n of products over all peaks p of y_p^2, where y_p is the y-coordinate of peak p.

The programs for A258179, there is no canonical definition to state claims against.
-/

/-! ## A258179.P5136397418222608749

`A156253(A359902(n+1)+A143165(n))`
-/

namespace A258179.P5136397418222608749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A359902 (n + 1) + A143165 n).toNat

end

end A258179.P5136397418222608749

/-!
# A258180: Sum over all Dyck paths of semilength n of products over all peaks p of C(x_p,y_p), where x_p and y_p are the coordinates of peak p.

The programs for A258180, there is no canonical definition to state claims against.
-/

/-! ## A258180.P3759613838582082872

`A138585(2^∑[n])`
-/

namespace A258180.P3759613838582082872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138585 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A258180.P3759613838582082872

/-!
# A258181: Sum over all Dyck paths of semilength n of products over all peaks p of 2^(x_p-y_p), where x_p and y_p are the coordinates of peak p.

The programs for A258181, there is no canonical definition to state claims against.
-/

/-! ## A258181.P575603197273949959

`A272750(A302499(n!))`
-/

namespace A258181.P575603197273949959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272750 (A302499 (Nat.factorial n)).toNat

end

end A258181.P575603197273949959

/-!
# A258184: Numbers which divide the concatenation of the next two primes.

The programs for A258184, there is no canonical definition to state claims against.
-/

/-! ## A258184.P7600409698400755277

`A283986(comp[n!-1]!)`
-/

namespace A258184.P7600409698400755277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283986 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A258184.P7600409698400755277

/-!
# A258187: Numbers m such that either m^k - 1 or m^k - 2 is prime for some positive k, but not both.

The programs for A258187, there is no canonical definition to state claims against.
-/

/-! ## A258187.P1141682806981938964

`∪[2*(n+1), p?[2*n+1]]+1`
-/

namespace A258187.P1141682806981938964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n + 1

end

end A258187.P1141682806981938964

/-! ## A258187.P1112818936446721515

`A106092(n+1)+1`
-/

namespace A258187.P1112818936446721515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 1) + 1

end

end A258187.P1112818936446721515

/-! ## A258187.P81062263393429127

`A014091(n+1)-1`
-/

namespace A258187.P81062263393429127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1) - 1

end

end A258187.P81062263393429127

/-! ## A258187.P4035932087943523135

`lt[0, A061358(n+1)]`
-/

namespace A258187.P4035932087943523135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258187.P4035932087943523135

/-! ## A258187.P1307698777144221537

`lt[0, A073610(n+1)]`
-/

namespace A258187.P1307698777144221537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258187.P1307698777144221537

/-! ## A258187.P5326873731423128390

`lt[0, A334768(n)]-1`
-/

namespace A258187.P5326873731423128390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A258187.P5326873731423128390

/-! ## A258187.P13976221557748038315

`lt[1, A334768(n+1)]`
-/

namespace A258187.P13976221557748038315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334768 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258187.P13976221557748038315

/-! ## A258187.P7913575890900485275

`comp[A014092(n+1)-1]`
-/

namespace A258187.P7913575890900485275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A258187.P7913575890900485275

/-! ## A258187.P8422745137574175747

`lt[1, A135681(n+1)]+2`
-/

namespace A258187.P8422745137574175747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135681 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A258187.P8422745137574175747

/-! ## A258187.P2547458796345469266

`eq[2, A270003(n+1)]+2`
-/

namespace A258187.P2547458796345469266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A258187.P2547458796345469266

/-!
# A258188: Smallest multiple of 7 not appearing earlier that ends with n.

The programs for A258188, there is no canonical definition to state claims against.
-/

/-! ## A258188.P2978668369032876250

`7*A258329(n+1)`
-/

namespace A258188.P2978668369032876250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A258329 (n + 1)

end

end A258188.P2978668369032876250

/-! ## A258188.P7648537568042842205

`A008589(A258329(n+1))`
-/

namespace A258188.P7648537568042842205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A258329 (n + 1)).toNat

end

end A258188.P7648537568042842205

/-! ## A258188.P2059733059752475977

`A016993(A258329(n+1))-A109720(A047304(n+1))`
-/

namespace A258188.P2059733059752475977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A258329 (n + 1)).toNat - A109720 (A047304 (n + 1)).toNat

end

end A258188.P2059733059752475977

/-! ## A258188.P11572516734440862943

`A258217(A258335(A258329(A258226(A258225(n+1)))))`
-/

namespace A258188.P11572516734440862943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258217 (A258335 (A258329 (A258226 (A258225 (n + 1)).toNat).toNat).toNat).toNat

end

end A258188.P11572516734440862943

/-! ## A258188.P18170660358334366928

`A258217(A258335(A258329(A258329(A258330(n+1)))))`
-/

namespace A258188.P18170660358334366928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258217 (A258335 (A258329 (A258329 (A258330 (n + 1)).toNat).toNat).toNat).toNat

end

end A258188.P18170660358334366928

/-! ## A258188.P8366859339558768990

`A258217(A258335(A258329(A258335(A258334(n+1)))))`
-/

namespace A258188.P8366859339558768990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258217 (A258335 (A258329 (A258335 (A258334 (n + 1)).toNat).toNat).toNat).toNat

end

end A258188.P8366859339558768990

/-! ## A258188.P13280314748876965693

`A258329(n+1)+A008486(A258329(n+1)+A258329(n+1))`
-/

namespace A258188.P13280314748876965693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258329 (n + 1) + A008486 (A258329 (n + 1) + A258329 (n + 1)).toNat

end

end A258188.P13280314748876965693

/-! ## A258188.P726260426909844786

`A258217(A258335(A258329(n+1))%A007283(n))`
-/

namespace A258188.P726260426909844786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258217 (Int.tmod (A258335 (A258329 (n + 1)).toNat) (A007283 n)).toNat

end

end A258188.P726260426909844786

/-!
# A258189: Pseudoprimes to base 3, written in base 3.

The programs for A258189, there is no canonical definition to state claims against.
-/

/-! ## A258189.P6115017780580860371

`A007089(A005935(n+1))`
-/

namespace A258189.P6115017780580860371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A005935 (n + 1)).toNat

end

end A258189.P6115017780580860371

/-! ## A258189.P1170770925968146511

`A007089(∩[A020138(n+1), A020155(n+1)])`
-/

namespace A258189.P1170770925968146511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020155 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A258189.P1170770925968146511

/-! ## A258189.P16847222586288601343

`A007089(∩[A020155(n+1), A020209(n+1)])`
-/

namespace A258189.P16847222586288601343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020209 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A258189.P16847222586288601343

/-! ## A258189.P10011541455880204399

`A007089(∩[A020138(n+1), A122780(n+1)])`
-/

namespace A258189.P10011541455880204399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A258189.P10011541455880204399

/-! ## A258189.P16690991002744323428

`A007089(∩[A020155(n+1), A122780(n+1)])`
-/

namespace A258189.P16690991002744323428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A258189.P16690991002744323428

/-!
# A258190: Smallest prime not appearing earlier that ends with A045572(n).

The programs for A258190, there is no canonical definition to state claims against.
-/

/-! ## A258190.P10385646514257793248

`or(2, A151800(A248302(n)))`
-/

namespace A258190.P10385646514257793248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A151800 (A248302 n).toNat)

end

end A258190.P10385646514257793248

/-!
# A258194: Positions of zeros in A258193.

The programs for A258194, there is no canonical definition to state claims against.
-/

/-! ## A258194.P3861680528556781455

`lt[n², A048794(A268227(n))]`
-/

namespace A258194.P3861680528556781455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A268227 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258194.P3861680528556781455

/-! ## A258194.P17565288549330655645

`∑[A213363(A217891(char[3*n]+2*n))]`
-/

namespace A258194.P17565288549330655645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213363 (A217891 ((if ∃ j, f2 j = n then 1 else 0) + 2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258194.P17565288549330655645

/-! ## A258194.P4427992486023439894

`A087740(A212593(n+1)+A017437(n))`
-/

namespace A258194.P4427992486023439894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087740 (A212593 (n + 1) + A017437 n).toNat

end

end A258194.P4427992486023439894

/-!
# A258197: Arithmetic derivative of Pascal's triangle.

The programs for A258197, the canonical program `A258197.P15390791753644415480` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258197 has offset 0).

The definition of A258197 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258197.P15390791753644415480

`A003415(A007318(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A258197

/-- `A003415(A007318(n))` -/
def P15390791753644415480.Spec : Prop :=
  ∀ n, P15390791753644415480.a n = A258197 n

theorem P15390791753644415480.correct : P15390791753644415480.Spec := by
  intro n
  simp only [A258197]

end A258197

/-! ## A258197.P1837791161168724620

`∑{d}[A007318(n), A300251(#)]`
-/

namespace A258197.P1837791161168724620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A258197.P1837791161168724620

namespace A258197

/-- `∑{d}[A007318(n), A300251(#)]` -/
def P1837791161168724620.Spec : Prop :=
  ∀ n, P1837791161168724620.a n = A258197 n

end A258197

/-! ## A258197.P3800519521684486920

`∑{d}[A108086(n), A300251(#)]`
-/

namespace A258197.P3800519521684486920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A258197.P3800519521684486920

namespace A258197

/-- `∑{d}[A108086(n), A300251(#)]` -/
def P3800519521684486920.Spec : Prop :=
  ∀ n, P3800519521684486920.a n = A258197 n

end A258197

/-! ## A258197.P739521251423003267

`∑{d}[A130595(n), A300251(#)]`
-/

namespace A258197.P739521251423003267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A258197.P739521251423003267

namespace A258197

/-- `∑{d}[A130595(n), A300251(#)]` -/
def P739521251423003267.Spec : Prop :=
  ∀ n, P739521251423003267.a n = A258197 n

end A258197

/-! ## A258197.P14943796685138281926

`∑{d}[sqrt(A008459(n)), A300251(#)]`
-/

namespace A258197.P14943796685138281926
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A300251 d

end

end A258197.P14943796685138281926

namespace A258197

/-- `∑{d}[sqrt(A008459(n)), A300251(#)]` -/
def P14943796685138281926.Spec : Prop :=
  ∀ n, P14943796685138281926.a n = A258197 n

end A258197

/-! ## A258197.P15047377961259420780

`∑{d}[A014473(n)+1, A300251(#)]`
-/

namespace A258197.P15047377961259420780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A258197.P15047377961259420780

namespace A258197

/-- `∑{d}[A014473(n)+1, A300251(#)]` -/
def P15047377961259420780.Spec : Prop :=
  ∀ n, P15047377961259420780.a n = A258197 n

end A258197

/-! ## A258197.P3262515734082182182

`A003415(A206735(n))`
-/

namespace A258197.P3262515734082182182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A206735 n).toNat

end

end A258197.P3262515734082182182

namespace A258197

/-- `A003415(A206735(n))` -/
def P3262515734082182182.Spec : Prop :=
  ∀ n, P3262515734082182182.a n = A258197 n

end A258197

/-! ## A258197.P3533651194360993131

`A319703(A028326(n))`
-/

namespace A258197.P3533651194360993131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A028326 n).toNat

end

end A258197.P3533651194360993131

namespace A258197

/-- `A319703(A028326(n))` -/
def P3533651194360993131.Spec : Prop :=
  ∀ n, P3533651194360993131.a n = A258197 n

end A258197

/-! ## A258197.P2132730585613257827

`A319703(A124927(n))`
-/

namespace A258197.P2132730585613257827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A124927 n).toNat

end

end A258197.P2132730585613257827

namespace A258197

/-- `A319703(A124927(n))` -/
def P2132730585613257827.Spec : Prop :=
  ∀ n, P2132730585613257827.a n = A258197 n

end A258197

/-! ## A258197.P13964956550102720886

`A319703(A129994(n))`
-/

namespace A258197.P13964956550102720886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A129994 n).toNat

end

end A258197.P13964956550102720886

namespace A258197

/-- `A319703(A129994(n))` -/
def P13964956550102720886.Spec : Prop :=
  ∀ n, P13964956550102720886.a n = A258197 n

end A258197

/-! ## A258197.P10631843397718965999

`A319703(A132046(n))`
-/

namespace A258197.P10631843397718965999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A132046 n).toNat

end

end A258197.P10631843397718965999

namespace A258197

/-- `A319703(A132046(n))` -/
def P10631843397718965999.Spec : Prop :=
  ∀ n, P10631843397718965999.a n = A258197 n

end A258197

/-! ## A258197.P16926549704822429369

`A319703(A134058(n))`
-/

namespace A258197.P16926549704822429369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A134058 n).toNat

end

end A258197.P16926549704822429369

namespace A258197

/-- `A319703(A134058(n))` -/
def P16926549704822429369.Spec : Prop :=
  ∀ n, P16926549704822429369.a n = A258197 n

end A258197

/-! ## A258197.P7192624328005174607

`A003415(abs(A130595(n)))`
-/

namespace A258197.P7192624328005174607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 |A130595 n|.toNat

end

end A258197.P7192624328005174607

namespace A258197

/-- `A003415(abs(A130595(n)))` -/
def P7192624328005174607.Spec : Prop :=
  ∀ n, P7192624328005174607.a n = A258197 n

end A258197

/-! ## A258197.P12603537239810527244

`A003415(sqrt(A008459(n)))`
-/

namespace A258197.P12603537239810527244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat

end

end A258197.P12603537239810527244

namespace A258197

/-- `A003415(sqrt(A008459(n)))` -/
def P12603537239810527244.Spec : Prop :=
  ∀ n, P12603537239810527244.a n = A258197 n

end A258197

/-! ## A258197.P1408149368320093447

`A003415(Δ[A102363(n)])`
-/

namespace A258197.P1408149368320093447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (n + 1) - f1 n).toNat

end

end A258197.P1408149368320093447

namespace A258197

/-- `A003415(Δ[A102363(n)])` -/
def P1408149368320093447.Spec : Prop :=
  ∀ n, P1408149368320093447.a n = A258197 n

end A258197

/-! ## A258197.P11253750736603036618

`A003415(A014473(n)+1)`
-/

namespace A258197.P11253750736603036618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A014473 n + 1).toNat

end

end A258197.P11253750736603036618

namespace A258197

/-- `A003415(A014473(n)+1)` -/
def P11253750736603036618.Spec : Prop :=
  ∀ n, P11253750736603036618.a n = A258197 n

theorem P11253750736603036618.correct : P11253750736603036618.Spec := by
  intro n
  simp only [A258197, Nat.add_sub_cancel, A258197.P11253750736603036618.a, A258197.P15390791753644415480.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A007318, A007318.P302227728145965961.a, A014473, A014473.P9301799580602651200.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A003056, A003056.P5318256527314048597.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A258197

/-! ## A258197.P2974938865001717937

`A003415(A198321(n+1))`
-/

namespace A258197.P2974938865001717937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A198321 (n + 1)).toNat

end

end A258197.P2974938865001717937

namespace A258197

/-- `A003415(A198321(n+1))` -/
def P2974938865001717937.Spec : Prop :=
  ∀ n, P2974938865001717937.a n = A258197 n

end A258197

/-! ## A258197.P4121924489106728871

`A319703(A109128(n)+1)`
-/

namespace A258197.P4121924489106728871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A109128 n + 1).toNat

end

end A258197.P4121924489106728871

namespace A258197

/-- `A319703(A109128(n)+1)` -/
def P4121924489106728871.Spec : Prop :=
  ∀ n, P4121924489106728871.a n = A258197 n

end A258197

/-! ## A258197.P16693916555604533633

`A003415(A028326(n)/2)`
-/

namespace A258197.P16693916555604533633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A258197.P16693916555604533633

namespace A258197

/-- `A003415(A028326(n)/2)` -/
def P16693916555604533633.Spec : Prop :=
  ∀ n, P16693916555604533633.a n = A258197 n

end A258197

/-! ## A258197.P11322271410600488342

`A003415(A176348(n)/A176346(n))`
-/

namespace A258197.P11322271410600488342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A176348 n : ℚ) / (A176346 n : ℚ))).toNat

end

end A258197.P11322271410600488342

namespace A258197

/-- `A003415(A176348(n)/A176346(n))` -/
def P11322271410600488342.Spec : Prop :=
  ∀ n, P11322271410600488342.a n = A258197 n

end A258197

/-!
# A258198: a(n) = largest k for which A001563(k) = k*k! <= n.

The programs for A258198, the canonical program `A258198.P10753680118725167372` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258198 has offset 0).

The definition of A258198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258198.P10753680118725167372

`∑[char[Δ[(n+1)!]]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A258198

/-- `∑[char[Δ[(n+1)!]]]` -/
def P10753680118725167372.Spec : Prop :=
  ∀ n, (P10753680118725167372.a n : ℤ) = A258198 n

theorem P10753680118725167372.correct : P10753680118725167372.Spec := by
  intro n
  simp only [A258198]

end A258198

/-! ## A258198.P9105856113220400160

`∑[char[Δ[n!]]]-1`
-/

namespace A258198.P9105856113220400160
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A258198.P9105856113220400160

namespace A258198

/-- `∑[char[Δ[n!]]]-1` -/
def P9105856113220400160.Spec : Prop :=
  ∀ n, P9105856113220400160.a n = A258198 n

end A258198

/-! ## A258198.P15775669220608335670

`∑[char[Δ[∏[n+1]]]]`
-/

namespace A258198.P15775669220608335670
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258198.P15775669220608335670

namespace A258198

/-- `∑[char[Δ[∏[n+1]]]]` -/
def P15775669220608335670.Spec : Prop :=
  ∀ n, (P15775669220608335670.a n : ℤ) = A258198 n

end A258198

/-! ## A258198.P2621161868944477066

`∑[char[n*n!]]-1`
-/

namespace A258198.P2621161868944477066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A258198.P2621161868944477066

namespace A258198

/-- `∑[char[n*n!]]-1` -/
def P2621161868944477066.Spec : Prop :=
  ∀ n, P2621161868944477066.a n = A258198 n

end A258198

/-! ## A258198.P15884361767794584307

`∑[char[A001563(n)]]-1`
-/

namespace A258198.P15884361767794584307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A258198.P15884361767794584307

namespace A258198

/-- `∑[char[A001563(n)]]-1` -/
def P15884361767794584307.Spec : Prop :=
  ∀ n, P15884361767794584307.a n = A258198 n

end A258198

/-! ## A258198.P9072814976116870359

`∑[char[Δ[A000142(n)]]]-1`
-/

namespace A258198.P9072814976116870359
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A258198.P9072814976116870359

namespace A258198

/-- `∑[char[Δ[A000142(n)]]]-1` -/
def P9072814976116870359.Spec : Prop :=
  ∀ n, P9072814976116870359.a n = A258198 n

end A258198

/-! ## A258198.P3611540465119518166

`A060500(A343041(n))`
-/

namespace A258198.P3611540465119518166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A343041 n).toNat

end

end A258198.P3611540465119518166

namespace A258198

/-- `A060500(A343041(n))` -/
def P3611540465119518166.Spec : Prop :=
  ∀ n, P3611540465119518166.a n = A258198 n

end A258198

/-! ## A258198.P7523250673997434112

`A084558(A256450(n))-1`
-/

namespace A258198.P7523250673997434112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A256450 n).toNat - 1

end

end A258198.P7523250673997434112

namespace A258198

/-- `A084558(A256450(n))-1` -/
def P7523250673997434112.Spec : Prop :=
  ∀ n, P7523250673997434112.a n = A258198 n

end A258198

/-! ## A258198.P9203917046430129180

`A084558(A273670(n))-1`
-/

namespace A258198.P9203917046430129180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A273670 n).toNat - 1

end

end A258198.P9203917046430129180

namespace A258198

/-- `A084558(A273670(n))-1` -/
def P9203917046430129180.Spec : Prop :=
  ∀ n, P9203917046430129180.a n = A258198 n

end A258198

/-! ## A258198.P1194760804168158374

`A276337(A276334(2*n+1)-1)`
-/

namespace A258198.P1194760804168158374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276337 (A276334 (2 * n + 1) - 1).toNat

end

end A258198.P1194760804168158374

namespace A258198

/-- `A276337(A276334(2*n+1)-1)` -/
def P1194760804168158374.Spec : Prop :=
  ∀ n, P1194760804168158374.a n = A258198 n

end A258198

/-! ## A258198.P911713418014924185

`A276337(2*n-A276335(2*n+1))`
-/

namespace A258198.P911713418014924185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276337 ((2 * n : ℤ) - A276335 (2 * n + 1)).toNat

end

end A258198.P911713418014924185

namespace A258198

/-- `A276337(2*n-A276335(2*n+1))` -/
def P911713418014924185.Spec : Prop :=
  ∀ n, P911713418014924185.a n = A258198 n

end A258198

/-! ## A258198.P876859144533867794

`A077433(A073664(n))`
-/

namespace A258198.P876859144533867794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077433 (A073664 n).toNat

end

end A258198.P876859144533867794

namespace A258198

/-- `A077433(A073664(n))` -/
def P876859144533867794.Spec : Prop :=
  ∀ n, P876859144533867794.a n = A258198 n

end A258198

/-!
# A258199: a(n) = largest term of A001563 <= n.

The programs for A258199, there is no canonical definition to state claims against.
-/

/-! ## A258199.P6352561181964473970

`A276330(A276334(n))`
-/

namespace A258199.P6352561181964473970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276330 (A276334 n).toNat

end

end A258199.P6352561181964473970

