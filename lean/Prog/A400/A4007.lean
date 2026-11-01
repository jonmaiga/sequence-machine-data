import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C049
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C013
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
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
# A400700: Start with a set of four adjacent collinear points in a hexagonal lattice. Every iteration, add to the set the points in the lattice which are adjacent to at least two points already in the set. This sequence gives the number of points in the set after n iterations.

The programs for A400700, the canonical program `A400700.P1160826016266712974` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400700 has offset 0).

The definition of A400700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400700.P1160826016266712974

`ogf((4+2x+2x^2-4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400700

/-- `ogf((4+2x+2x^2-4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P1160826016266712974.Spec : Prop :=
  ∀ n, P1160826016266712974.a n = A400700 n

theorem P1160826016266712974.correct : P1160826016266712974.Spec := by
  intro n
  simp only [A400700]

end A400700

/-! ## A400700.P14819664891141702491

`(3*n²+13*n+12+2*n%3)/3`
-/

namespace A400700.P14819664891141702491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n ^ 2 + 13 * n + 12 + 2 * (n % 3) : ℕ) : ℚ) / 3

end

end A400700.P14819664891141702491

namespace A400700

/-- `(3*n²+13*n+12+2*n%3)/3` -/
def P14819664891141702491.Spec : Prop :=
  ∀ n, P14819664891141702491.a n = (A400700 n : ℚ)

end A400700

/-! ## A400700.P12201784668580416589

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=4, a(1)=10, a(2)=18, a(3)=26, a(4)=38`
-/

namespace A400700.P12201784668580416589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10, 18, 26, 38] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A400700.P12201784668580416589

namespace A400700

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P12201784668580416589.Spec : Prop :=
  ∀ n, P12201784668580416589.a n = A400700 n

end A400700

/-! ## A400700.P8695989080318386227

`∑[a(n-3)+6]` with `a(0)=4, a(1)=6, a(2)=8, a(3)=8`
-/

namespace A400700.P8695989080318386227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 6, 8, 8] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400700.P8695989080318386227

namespace A400700

/-- `∑[a(n-3)+6]` -/
def P8695989080318386227.Spec : Prop :=
  ∀ n, (P8695989080318386227.a n : ℤ) = A400700 n

end A400700

/-! ## A400700.P4722972859257851935

`(n+3)²-(∑[gcd(3, n)]+2)`
-/

namespace A400700.P4722972859257851935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)

end

end A400700.P4722972859257851935

namespace A400700

/-- `(n+3)²-(∑[gcd(3, n)]+2)` -/
def P4722972859257851935.Spec : Prop :=
  ∀ n, P4722972859257851935.a n = A400700 n

end A400700

/-! ## A400700.P15845371088295707021

`∑[∑[floor(a(n-3))]]` with `a(0)=4, a(1)=2, a(2)=2, a(3)=0, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A400700.P15845371088295707021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 2, 0, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400700.P15845371088295707021

namespace A400700

/-- `∑[∑[floor(a(n-3))]]` -/
def P15845371088295707021.Spec : Prop :=
  ∀ n, (P15845371088295707021.a n : ℤ) = A400700 n

end A400700

/-! ## A400700.P12159396214684051106

`Δ[ceil((n+1)*(n+2)²/3)]`
-/

namespace A400700.P12159396214684051106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) * (n + 2) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A400700.P12159396214684051106

namespace A400700

/-- `Δ[ceil((n+1)*(n+2)²/3)]` -/
def P12159396214684051106.Spec : Prop :=
  ∀ n, P12159396214684051106.a n = A400700 n

end A400700

/-! ## A400700.P11821446760997363131

`A063213(n+1)+A027688(n)`
-/

namespace A400700.P11821446760997363131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1) + A027688 n

end

end A400700.P11821446760997363131

namespace A400700

/-- `A063213(n+1)+A027688(n)` -/
def P11821446760997363131.Spec : Prop :=
  ∀ n, P11821446760997363131.a n = A400700 n

end A400700

/-! ## A400700.P4443865090801323101

`A386480(n)+A063218(n+1)`
-/

namespace A400700.P4443865090801323101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386480 n + A063218 (n + 1)

end

end A400700.P4443865090801323101

namespace A400700

/-- `A386480(n)+A063218(n+1)` -/
def P4443865090801323101.Spec : Prop :=
  ∀ n, P4443865090801323101.a n = A400700 n

end A400700

/-! ## A400700.P8179928572986571682

`A104675(n)-A047410(n+1)`
-/

namespace A400700.P8179928572986571682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104675 n - A047410 (n + 1)

end

end A400700.P8179928572986571682

namespace A400700

/-- `A104675(n)-A047410(n+1)` -/
def P8179928572986571682.Spec : Prop :=
  ∀ n, P8179928572986571682.a n = A400700 n

end A400700

/-! ## A400700.P16807327982424625887

`A108195(n+1)-A047623(n+1)`
-/

namespace A400700.P16807327982424625887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108195 (n + 1) - A047623 (n + 1)

end

end A400700.P16807327982424625887

namespace A400700

/-- `A108195(n+1)-A047623(n+1)` -/
def P16807327982424625887.Spec : Prop :=
  ∀ n, P16807327982424625887.a n = A400700 n

end A400700

/-! ## A400700.P14642735436214995932

`A399934(n+1)-A047378(n+1)`
-/

namespace A400700.P14642735436214995932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399934 (n + 1) - A047378 (n + 1)

end

end A400700.P14642735436214995932

namespace A400700

/-- `A399934(n+1)-A047378(n+1)` -/
def P14642735436214995932.Spec : Prop :=
  ∀ n, P14642735436214995932.a n = A400700 n

end A400700

/-! ## A400700.P3056185651208423814

`A047284(n+2)+(n+1)²`
-/

namespace A400700.P3056185651208423814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047284 (n + 2) + ((n + 1) ^ 2 : ℤ)

end

end A400700.P3056185651208423814

namespace A400700

/-- `A047284(n+2)+(n+1)²` -/
def P3056185651208423814.Spec : Prop :=
  ∀ n, P3056185651208423814.a n = A400700 n

end A400700

/-! ## A400700.P16449576690142053426

`A047284(n+2)+A000217(n+1)+A000217(n)`
-/

namespace A400700.P16449576690142053426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047284 (n + 2) + A000217 (n + 1) + A000217 n

end

end A400700.P16449576690142053426

namespace A400700

/-- `A047284(n+2)+A000217(n+1)+A000217(n)` -/
def P16449576690142053426.Spec : Prop :=
  ∀ n, P16449576690142053426.a n = A400700 n

end A400700

/-! ## A400700.P4944025596642177405

`Δ[A397981(n+1)]+(n+1)²`
-/

namespace A400700.P4944025596642177405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n + 1) ^ 2 : ℤ)

end

end A400700.P4944025596642177405

namespace A400700

/-- `Δ[A397981(n+1)]+(n+1)²` -/
def P4944025596642177405.Spec : Prop :=
  ∀ n, P4944025596642177405.a n = A400700 n

end A400700

/-!
# A400701: Start with a set of five adjacent collinear points in a hexagonal lattice. Every iteration, add to the set the points in the lattice which are adjacent to at least two points already in the set. This sequence gives the number of points in the set after n iterations.

The programs for A400701, the canonical program `A400701.P3330372214790239244` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400701 has offset 0).

The definition of A400701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400701.P3330372214790239244

`ogf((5+3x+2x^2-5x^3+x^4-2x^5+2x^6)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400701

/-- `ogf((5+3x+2x^2-5x^3+x^4-2x^5+2x^6)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P3330372214790239244.Spec : Prop :=
  ∀ n, P3330372214790239244.a n = A400701 n

theorem P3330372214790239244.correct : P3330372214790239244.Spec := by
  intro n
  simp only [A400701]

end A400701

/-!
# A400703: Numbers k whose trajectory under repeated application of the map x -> sigma(x) - x is not strictly decreasing.

The programs for A400703, there is no canonical definition to state claims against.
-/

/-! ## A400703.P5203469830897717711

`∪[A023196(n+1), A291155(A051152(n))]`
-/

namespace A400703.P5203469830897717711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291155 (A051152 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A400703.P5203469830897717711

/-!
# A400706: A version of the building sequence A400000 for positive- and negative-integer numbered plots: this sequence gives the heights of the buildings at nonnegative-numbered plots, in order.

The programs for A400706, there is no canonical definition to state claims against.
-/

/-! ## A400706.P6963063727614475981

`A038575(A398135(n+3)+A297169(3*(n+1)))`
-/

namespace A400706.P6963063727614475981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (A398135 (n + 3) + A297169 (3 * (n + 1))).toNat

end

end A400706.P6963063727614475981

/-!
# A400707: A variant of Gijswijt's sequence A090822, starting with 1,2 instead of 1.

The programs for A400707, there is no canonical definition to state claims against.
-/

/-! ## A400707.P96849185143073206

`A066099(A037201(n+1)^A143979(n+1))`
-/

namespace A400707.P96849185143073206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (SequenceMachineLib.roundAway ((A037201 (n + 1) : ℚ) ^ (A143979 (n + 1) : ℤ))).toNat

end

end A400707.P96849185143073206

/-! ## A400707.P5911615056215270185

`A076259(A077591(n)+A000383(n))`
-/

namespace A400707.P5911615056215270185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (A077591 n + A000383 n).toNat

end

end A400707.P5911615056215270185

/-! ## A400707.P16218911443477022064

`gcd(A105561(n+1), A237270(A293076(n)))`
-/

namespace A400707.P16218911443477022064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105561 (n + 1)) (A237270 (A293076 n).toNat)

end

end A400707.P16218911443477022064

/-! ## A400707.P12208349319896090241

`A134024(lt[A085171(n+2), A305878(3*n)])`
-/

namespace A400707.P12208349319896090241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085171 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305878 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A400707.P12208349319896090241

/-! ## A400707.P18123228493915289

`A177025(A115264(3*(n+1))-A027641(n))`
-/

namespace A400707.P18123228493915289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (A115264 (3 * (n + 1)) - A027641 n).toNat

end

end A400707.P18123228493915289

/-!
# A400709: RUNS transform of A400708.

The programs for A400709, there is no canonical definition to state claims against.
-/

/-! ## A400709.P458734386494951642

`runs[A400708(n)]`
-/

namespace A400709.P458734386494951642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400708 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A400709.P458734386494951642

/-!
# A400715: Number of 9-regular labeled graphs on 2n nodes.

The programs for A400715, there is no canonical definition to state claims against.
-/

/-! ## A400715.P15736227048603590524

`A324163(xor(A007318(n), A269303(2*n+3)))`
-/

namespace A400715.P15736227048603590524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324163 (Int.xor (A007318 n) (A269303 (2 * n + 3))).toNat

end

end A400715.P15736227048603590524

/-! ## A400715.P7326818813330567416

`A324163(xor(A008459(n), A269303(2*n+3)))`
-/

namespace A400715.P7326818813330567416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324163 (Int.xor (A008459 n) (A269303 (2 * n + 3))).toNat

end

end A400715.P7326818813330567416

/-! ## A400715.P4719295443426427739

`A324163(xor(A269303(2*n+3), A319729(n+1)))`
-/

namespace A400715.P4719295443426427739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324163 (Int.xor (A269303 (2 * n + 3)) (A319729 (n + 1))).toNat

end

end A400715.P4719295443426427739

/-!
# A400716: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - 2*x)) / (1 - x).

The programs for A400716, there is no canonical definition to state claims against.
-/

/-! ## A400716.P2941407831383196985

`A090689(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A400716.P2941407831383196985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A090689 (a (n - 1)).toNat

end

end A400716.P2941407831383196985

/-!
# A400717: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - 2*x)^2) / (1 - x).

The programs for A400717, there is no canonical definition to state claims against.
-/

/-! ## A400717.P6467190653483624123

`A332371(a(n-1)+2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A400717.P6467190653483624123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A332371 (a (n - 1) + 2).toNat

end

end A400717.P6467190653483624123

/-!
# A400728: The sequence of side lengths that occur when drawing a sequence of squares in the plane with integer side lengths such that the bottom-left corner of the k-th square is at the nonnegative integer point (k, y_k) and the square has side length a(k), subject to the conditions that (1) every initial segment has the property that the interior of each square has a distinct pattern made by the perimeters of the other squares, and (2) we greedily minimize the side length and then minimize the y-value.

The programs for A400728, there is no canonical definition to state claims against.
-/

/-! ## A400728.P2466250287555230724

`A087974(A232487(n+1))`
-/

namespace A400728.P2466250287555230724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087974 (A232487 (n + 1)).toNat

end

end A400728.P2466250287555230724

/-! ## A400728.P8073163135293642308

`A211669(A087484(n+1)*A325685(n+1))`
-/

namespace A400728.P8073163135293642308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211669 (A087484 (n + 1) * A325685 (n + 1)).toNat

end

end A400728.P8073163135293642308

/-! ## A400728.P5062474094833714619

`A088601(A035457(n)+A000466(2*n+1))`
-/

namespace A400728.P5062474094833714619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088601 (A035457 n + A000466 (2 * n + 1)).toNat

end

end A400728.P5062474094833714619

/-! ## A400728.P1638013241458094038

`A395530(A201474(n+1))`
-/

namespace A400728.P1638013241458094038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395530 (A201474 (n + 1)).toNat

end

end A400728.P1638013241458094038

/-! ## A400728.P7742764224840041119

`A100961(A142854(n+2))`
-/

namespace A400728.P7742764224840041119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 (A142854 (n + 2)).toNat

end

end A400728.P7742764224840041119

/-!
# A400729: The sequence of y-values that occur when drawing a sequence of squares in the plane with integer side lengths such that the bottom-left corner of the k-th square is at the nonnegative integer point (k, a(k)) and the square has side length s_k, subject to the conditions that (1) every initial sequence has the property that the interior of each square has a distinct pattern made by the perimeters of the other squares, and (2) we greedily minimize the side length and then minimize the y-value.

The programs for A400729, there is no canonical definition to state claims against.
-/

/-! ## A400729.P16141300967436211530

`A337690(A001580(n))+A292378(n+1)`
-/

namespace A400729.P16141300967436211530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (A001580 n).toNat + A292378 (n + 1)

end

end A400729.P16141300967436211530

/-! ## A400729.P12284196197988259373

`A062977(A005297(n+1)*A290980(n+6))`
-/

namespace A400729.P12284196197988259373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A005297 (n + 1) * A290980 (n + 6)).toNat

end

end A400729.P12284196197988259373

/-! ## A400729.P5798152201889311056

`(A237016(3*(n+1))%A184347(n+1))%A211097(n+1)`
-/

namespace A400729.P5798152201889311056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A237016 (3 * (n + 1))) (A184347 (n + 1))) (A211097 (n + 1))

end

end A400729.P5798152201889311056

/-! ## A400729.P13788220606285910837

`A235127(A084083(n))`
-/

namespace A400729.P13788220606285910837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A084083 n).toNat

end

end A400729.P13788220606285910837

/-! ## A400729.P14482445992975443193

`A096972(A287628(n))`
-/

namespace A400729.P14482445992975443193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (A287628 n).toNat

end

end A400729.P14482445992975443193

/-!
# A400730: Numbers k such that k^2 + 1 is an exponentially odd number (A268335).

The programs for A400730, the canonical program `A400730.P15721063541631280415` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400730 has offset 1).

The definition of A400730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400730.P9208381718310946898

`eq[1, A359473(1+(n+1)²)]+1`
-/

namespace A400730.P9208381718310946898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359473 (1 + (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A400730.P9208381718310946898

namespace A400730

/-- `eq[1, A359473(1+(n+1)²)]+1` -/
def P9208381718310946898.Spec : Prop :=
  ∀ n, (P9208381718310946898.a n : ℤ) = A400730 (n + 1)

end A400730

/-! ## A400730.P10620071517195500962

`eq[1, A051903(A002522(n))%2]`
-/

namespace A400730.P10620071517195500962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051903 (A002522 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400730.P10620071517195500962

namespace A400730

/-- `eq[1, A051903(A002522(n))%2]` -/
def P10620071517195500962.Spec : Prop :=
  ∀ n, (P10620071517195500962.a n : ℤ) = A400730 (n + 1)

end A400730

/-! ## A400730.P15721063541631280415

`eq[2, A006530(A000005(n²+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A400730

/-- `eq[2, A006530(A000005(n²+1))]` -/
def P15721063541631280415.Spec : Prop :=
  ∀ n, (P15721063541631280415.a n : ℤ) = A400730 (n + 1)

theorem P15721063541631280415.correct : P15721063541631280415.Spec := by
  intro n
  simp only [A400730, Nat.add_sub_cancel]

end A400730

/-! ## A400730.P11676215260660899788

`eq[4, A000005(6+A000005(n²+1))]`
-/

namespace A400730.P11676215260660899788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 + A000005 (n ^ 2 + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400730.P11676215260660899788

namespace A400730

/-- `eq[4, A000005(6+A000005(n²+1))]` -/
def P11676215260660899788.Spec : Prop :=
  ∀ n, (P11676215260660899788.a n : ℤ) = A400730 (n + 1)

end A400730

/-! ## A400730.P9686493141006902604

`eq[1, A287418(A005361((n+1)²+1)+1)]+1`
-/

namespace A400730.P9686493141006902604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (A005361 ((n + 1) ^ 2 + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A400730.P9686493141006902604

namespace A400730

/-- `eq[1, A287418(A005361((n+1)²+1)+1)]+1` -/
def P9686493141006902604.Spec : Prop :=
  ∀ n, (P9686493141006902604.a n : ℤ) = A400730 (n + 1)

end A400730

/-! ## A400730.P1290705163077203988

`lt[33, 34-A304820(n²+1)]`
-/

namespace A400730.P1290705163077203988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  34 - A304820 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400730.P1290705163077203988

namespace A400730

/-- `lt[33, 34-A304820(n²+1)]` -/
def P1290705163077203988.Spec : Prop :=
  ∀ n, (P1290705163077203988.a n : ℤ) = A400730 (n + 1)

end A400730

/-! ## A400730.P10395113364041476200

`comp[lt[2, A351568((n+1)²+1)]]+1`
-/

namespace A400730.P10395113364041476200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 ((n + 1) ^ 2 + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A400730.P10395113364041476200

namespace A400730

/-- `comp[lt[2, A351568((n+1)²+1)]]+1` -/
def P10395113364041476200.Spec : Prop :=
  ∀ n, (P10395113364041476200.a n : ℤ) = A400730 (n + 1)

end A400730

/-! ## A400730.P1419083190200194766

`lt[1, A318511(n²+1)]`
-/

namespace A400730.P1419083190200194766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318511 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400730.P1419083190200194766

namespace A400730

/-- `lt[1, A318511(n²+1)]` -/
def P1419083190200194766.Spec : Prop :=
  ∀ n, (P1419083190200194766.a n : ℤ) = A400730 (n + 1)

end A400730

/-! ## A400730.P7415150674101245777

`eq[1, A318498((n+1)²+1)]+1`
-/

namespace A400730.P7415150674101245777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318498 ((n + 1) ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A400730.P7415150674101245777

namespace A400730

/-- `eq[1, A318498((n+1)²+1)]+1` -/
def P7415150674101245777.Spec : Prop :=
  ∀ n, (P7415150674101245777.a n : ℤ) = A400730 (n + 1)

end A400730

/-! ## A400730.P10294345276711854131

`Δ[eq[1, A056623(n²+1)]+a(n-1)]` with `a(0)=3`
-/

namespace A400730.P10294345276711854131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056623 (n ^ 2 + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A400730.P10294345276711854131

namespace A400730

/-- `Δ[eq[1, A056623(n²+1)]+a(n-1)]` -/
def P10294345276711854131.Spec : Prop :=
  ∀ n, P10294345276711854131.a n = A400730 (n + 1)

end A400730

/-!
# A400732: Numbers k such that k^2 - 1 and k^2 + 1 are both exponentially odd numbers (A268335).

The programs for A400732, there is no canonical definition to state claims against.
-/

/-! ## A400732.P14267337134084957121

`∩[A400730(1+n), A400731(n+1)]`
-/

namespace A400732.P14267337134084957121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400730 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400732.P14267337134084957121

/-!
# A400736: Three-dimensional multiplication table read by triangular shells.

The programs for A400736, there is no canonical definition to state claims against.
-/

/-! ## A400736.P14721714414941712639

`A057556(3*n+1)*A057556(3*n+2)*A057556(3*n+3)`
-/

namespace A400736.P14721714414941712639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057556 (3 * n + 1) * A057556 (3 * n + 2) * A057556 (3 * n + 3)

end

end A400736.P14721714414941712639

/-! ## A400736.P5440533629139565938

`A144625(3*n)*A144625(3*n+1)*A144625(3*n+2)`
-/

namespace A400736.P5440533629139565938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144625 (3 * n) * A144625 (3 * n + 1) * A144625 (3 * n + 2)

end

end A400736.P5440533629139565938

/-! ## A400736.P10402144901575176806

`A144627(n)*A144628(n)*A144629(n)`
-/

namespace A400736.P10402144901575176806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144627 n * A144628 n * A144629 n

end

end A400736.P10402144901575176806

/-! ## A400736.P4662302674370031951

`and(A110454(n+1), A113063(n+1))`
-/

namespace A400736.P4662302674370031951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110454 (n + 1)) (A113063 (n + 1))

end

end A400736.P4662302674370031951

/-! ## A400736.P7916201114051583647

`and(A088950(A191558(3*n+4)), A323161(2*(n+2)))`
-/

namespace A400736.P7916201114051583647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088950 (A191558 (3 * n + 4)).toNat) (A323161 (2 * (n + 2)))

end

end A400736.P7916201114051583647

/-!
# A400737: Least number k such that the sum of the numbers from k to k + n - 1 is divisible by the sum of their digits.

The programs for A400737, there is no canonical definition to state claims against.
-/

/-! ## A400737.P794595085942398202

`A374635(A026815(n)*(A083140(n+2)-1))`
-/

namespace A400737.P794595085942398202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374635 (A026815 n * (A083140 (n + 2) - 1)).toNat

end

end A400737.P794595085942398202

/-! ## A400737.P13617750947012043569

`A131894(A174614(n)*A237984(2*n+5))`
-/

namespace A400737.P13617750947012043569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131894 (A174614 n * A237984 (2 * n + 5)).toNat

end

end A400737.P13617750947012043569

/-! ## A400737.P10519416239986195490

`A319132(A000203(n+1)^A014375(n+3))`
-/

namespace A400737.P10519416239986195490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319132 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) ^ (A014375 (n + 3) : ℤ))).toNat

end

end A400737.P10519416239986195490

/-! ## A400737.P13469694729210790841

`A293553(A017665(3*(n+1)))^A324416(n+1)`
-/

namespace A400737.P13469694729210790841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293553 (A017665 (3 * (n + 1))).toNat : ℚ) ^ (A324416 (n + 1) : ℤ)

end

end A400737.P13469694729210790841

/-!
# A400743: Primes p such that the multiplicative order of 16 modulo p is even.

The programs for A400743, there is no canonical definition to state claims against.
-/

/-! ## A400743.P14323125500915909339

`A094407(lt[A376623(n), A088939(n+1)])`
-/

namespace A400743.P14323125500915909339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A400743.P14323125500915909339

/-! ## A400743.P8299809759194144103

`A094407(∑[val(A384482(n+2), 3)+1])`
-/

namespace A400743.P8299809759194144103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A384482 (n + 2)).toNat 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400743.P8299809759194144103

/-! ## A400743.P5940810643863810447

`A094407(∑[val(A160218(n+1), 7)+1])`
-/

namespace A400743.P5940810643863810447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A160218 (n + 1)).toNat 7 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400743.P5940810643863810447

/-!
# A400744: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - x)) / (1 - 2*x).

The programs for A400744, there is no canonical definition to state claims against.
-/

/-! ## A400744.P13527533737217141807

`A035110(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A400744.P13527533737217141807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A035110 (a (n - 1)).toNat

end

end A400744.P13527533737217141807

/-!
# A400746: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - 2*x)) / (1 - x)^2.

The programs for A400746, there is no canonical definition to state claims against.
-/

/-! ## A400746.P6267091820815255756

`A085787(A113229(n))-A022564(2*n+1)`
-/

namespace A400746.P6267091820815255756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (A113229 n).toNat - A022564 (2 * n + 1)

end

end A400746.P6267091820815255756

/-!
# A400748: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - x)^2) / (1 - 2*x).

The programs for A400748, there is no canonical definition to state claims against.
-/

/-! ## A400748.P5692043197102076024

`A347778(C(n+6, 8)+n)`
-/

namespace A400748.P5692043197102076024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347778 (Nat.choose (n + 6) 8 + n)

end

end A400748.P5692043197102076024

/-!
# A400749: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - 2*x)^2) / (1 - x)^2.

The programs for A400749, there is no canonical definition to state claims against.
-/

/-! ## A400749.P2902289848989115159

`A361379(n²*a(n-1))` with `a(0)=1`
-/

namespace A400749.P2902289848989115159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A361379 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A400749.P2902289848989115159

/-!
# A400750: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - x)) / (1 - 2*x)^2.

The programs for A400750, there is no canonical definition to state claims against.
-/

/-! ## A400750.P13333570649787133134

`A090970(A000079(n)*A052939(n))`
-/

namespace A400750.P13333570649787133134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090970 (A000079 n * A052939 n).toNat

end

end A400750.P13333570649787133134

/-! ## A400750.P11496202920339563014

`A194640(A391122(n))+A172107(n+1)`
-/

namespace A400750.P11496202920339563014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A391122 n).toNat + A172107 (n + 1)

end

end A400750.P11496202920339563014

/-!
# A400751: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - x)^2) / (1 - 2*x)^2.

The programs for A400751, there is no canonical definition to state claims against.
-/

/-! ## A400751.P5131713907482651544

`A255338(A291848(n)+A039765(n))`
-/

namespace A400751.P5131713907482651544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 (A291848 n + A039765 n).toNat

end

end A400751.P5131713907482651544

/-! ## A400751.P2983567484851328524

`A022290(A304866(n+1)+A181995(n))`
-/

namespace A400751.P2983567484851328524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A304866 (n + 1) + A181995 n).toNat

end

end A400751.P2983567484851328524

/-!
# A400753: Row sums of the Riordan array (1/(1-3*x), x/(1-3*x)^3).

The programs for A400753, the canonical program `A400753.P10274350832908785409` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400753 has offset 0).

The definition of A400753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400753.P10274350832908785409

`ogf((1-6x+9x^2)/(1-10x+27x^2-27x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400753

/-- `ogf((1-6x+9x^2)/(1-10x+27x^2-27x^3))` -/
def P10274350832908785409.Spec : Prop :=
  ∀ n, P10274350832908785409.a n = A400753 n

theorem P10274350832908785409.correct : P10274350832908785409.Spec := by
  intro n
  simp only [A400753]

end A400753

/-! ## A400753.P16467801667034276594

`∑{#}[n, C(n+2*#, 3*#)*3^(n-#)]`
-/

namespace A400753.P16467801667034276594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 2 * k) (3 * k) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A400753.P16467801667034276594

namespace A400753

/-- `∑{#}[n, C(n+2*#, 3*#)*3^(n-#)]` -/
def P16467801667034276594.Spec : Prop :=
  ∀ n, P16467801667034276594.a n = (A400753 n : ℚ)

end A400753

/-! ## A400753.P13077378004979924483

`10*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=1, a(1)=4, a(2)=22`
-/

namespace A400753.P13077378004979924483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 22] fun n a =>
  10 * a (n - 1) - 27 * a (n - 2) + 27 * a (n - 3)

end

end A400753.P13077378004979924483

namespace A400753

/-- `10*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P13077378004979924483.Spec : Prop :=
  ∀ n, P13077378004979924483.a n = A400753 n

end A400753

/-! ## A400753.P5389395736127751915

`A084386(3*n)`
-/

namespace A400753.P5389395736127751915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084386 (3 * n)

end

end A400753.P5389395736127751915

namespace A400753

/-- `A084386(3*n)` -/
def P5389395736127751915.Spec : Prop :=
  ∀ n, P5389395736127751915.a n = A400753 n

end A400753

/-! ## A400753.P12886106754647069564

`A052900(3*(n+1))/3`
-/

namespace A400753.P12886106754647069564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052900 (3 * (n + 1)) : ℚ) / 3

end

end A400753.P12886106754647069564

namespace A400753

/-- `A052900(3*(n+1))/3` -/
def P12886106754647069564.Spec : Prop :=
  ∀ n, P12886106754647069564.a n = (A400753 n : ℚ)

end A400753

/-!
# A400754: Row sums of the Riordan array (1/(1-3*x)^2, x/(1-3*x)^3).

The programs for A400754, the canonical program `A400754.P4279432807320805709` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400754 has offset 0).

The definition of A400754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400754.P4279432807320805709

`ogf((1-3x)/(1-10x+27x^2-27x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400754

/-- `ogf((1-3x)/(1-10x+27x^2-27x^3))` -/
def P4279432807320805709.Spec : Prop :=
  ∀ n, P4279432807320805709.a n = A400754 n

theorem P4279432807320805709.correct : P4279432807320805709.Spec := by
  intro n
  simp only [A400754]

end A400754

/-! ## A400754.P13732877577048158346

`∑{#}[n, C(n+2*#+1, 3*#+1)*3^(n-#)]`
-/

namespace A400754.P13732877577048158346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 2 * k + 1) (3 * k + 1) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A400754.P13732877577048158346

namespace A400754

/-- `∑{#}[n, C(n+2*#+1, 3*#+1)*3^(n-#)]` -/
def P13732877577048158346.Spec : Prop :=
  ∀ n, P13732877577048158346.a n = (A400754 n : ℚ)

end A400754

/-! ## A400754.P7591449410658991033

`10*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=1, a(1)=7, a(2)=43`
-/

namespace A400754.P7591449410658991033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 43] fun n a =>
  10 * a (n - 1) - 27 * a (n - 2) + 27 * a (n - 3)

end

end A400754.P7591449410658991033

namespace A400754

/-- `10*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P7591449410658991033.Spec : Prop :=
  ∀ n, P7591449410658991033.a n = A400754 n

end A400754

/-! ## A400754.P11864301670218732055

`∑{#}[n, 3^(n-#)*A400753(#)]`
-/

namespace A400754.P11864301670218732055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A400753 k : ℚ)

end

end A400754.P11864301670218732055

namespace A400754

/-- `∑{#}[n, 3^(n-#)*A400753(#)]` -/
def P11864301670218732055.Spec : Prop :=
  ∀ n, P11864301670218732055.a n = (A400754 n : ℚ)

end A400754

/-! ## A400754.P1280040220301955183

`A084386(1+3*n)`
-/

namespace A400754.P1280040220301955183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084386 (1 + 3 * n)

end

end A400754.P1280040220301955183

namespace A400754

/-- `A084386(1+3*n)` -/
def P1280040220301955183.Spec : Prop :=
  ∀ n, P1280040220301955183.a n = A400754 n

end A400754

/-!
# A400755: Triangle read by rows: T(n,k) = denominator(n/(n + k)), with 1 <= k <= n.

The programs for A400755, the canonical program `A400755.P875578250323055038` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400755 has offset 1).

The definition of A400755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400755.P11477066797840731786

`lcm(row(n)+1, col(n)+1)/(row(n)+1)+lcm(row(n)+1, col(n)+1)/(col(n)+1)`
-/

namespace A400755.P11477066797840731786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) : ℚ) / (SequenceMachineLib.triRow n + 1 : ℚ) + (Nat.lcm (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A400755.P11477066797840731786

namespace A400755

/-- `lcm(row(n)+1, col(n)+1)/(row(n)+1)+lcm(row(n)+1, col(n)+1)/(col(n)+1)` -/
def P11477066797840731786.Spec : Prop :=
  ∀ n, P11477066797840731786.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P875578250323055038

`A059026(1+n)+1`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A400755

/-- `A059026(1+n)+1` -/
def P875578250323055038.Spec : Prop :=
  ∀ n, P875578250323055038.a n = A400755 (n + 1)

theorem P875578250323055038.correct : P875578250323055038.Spec := by
  intro n
  simp only [A400755, Nat.add_sub_cancel]

end A400755

/-! ## A400755.P10257159579670284454

`A020725(A059026(1+n))`
-/

namespace A400755.P10257159579670284454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A059026 (1 + n)).toNat

end

end A400755.P10257159579670284454

namespace A400755

/-- `A020725(A059026(1+n))` -/
def P10257159579670284454.Spec : Prop :=
  ∀ n, P10257159579670284454.a n = A400755 (n + 1)

end A400755

/-! ## A400755.P1294536104266546659

`A164306(n+1)+A054531(n+1)`
-/

namespace A400755.P1294536104266546659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (n + 1) + A054531 (n + 1)

end

end A400755.P1294536104266546659

namespace A400755

/-- `A164306(n+1)+A054531(n+1)` -/
def P1294536104266546659.Spec : Prop :=
  ∀ n, P1294536104266546659.a n = A400755 (n + 1)

end A400755

/-! ## A400755.P293868166546449915

`A108872(n+1)/A050873(n+1)`
-/

namespace A400755.P293868166546449915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A400755.P293868166546449915

namespace A400755

/-- `A108872(n+1)/A050873(n+1)` -/
def P293868166546449915.Spec : Prop :=
  ∀ n, P293868166546449915.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P8587893247953728232

`(A002260(n+1)+A002024(n+1))/A050873(n+1)`
-/

namespace A400755.P8587893247953728232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + A002024 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A400755.P8587893247953728232

namespace A400755

/-- `(A002260(n+1)+A002024(n+1))/A050873(n+1)` -/
def P8587893247953728232.Spec : Prop :=
  ∀ n, P8587893247953728232.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P7439377501314715427

`A054531(n+1)+A051537(n+1)/A054531(n+1)`
-/

namespace A400755.P7439377501314715427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054531 (n + 1) : ℚ) + (A051537 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A400755.P7439377501314715427

namespace A400755

/-- `A054531(n+1)+A051537(n+1)/A054531(n+1)` -/
def P7439377501314715427.Spec : Prop :=
  ∀ n, P7439377501314715427.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P17372690159812131186

`(A199408(n+1)+A050873(n+1))/A050873(n+1)`
-/

namespace A400755.P17372690159812131186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199408 (n + 1) + A050873 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A400755.P17372690159812131186

namespace A400755

/-- `(A199408(n+1)+A050873(n+1))/A050873(n+1)` -/
def P17372690159812131186.Spec : Prop :=
  ∀ n, P17372690159812131186.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P3275526791555680672

`A164306(n+1)+A051537(n+1)/A164306(n+1)`
-/

namespace A400755.P3275526791555680672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164306 (n + 1) : ℚ) + (A051537 (n + 1) : ℚ) / (A164306 (n + 1) : ℚ)

end

end A400755.P3275526791555680672

namespace A400755

/-- `A164306(n+1)+A051537(n+1)/A164306(n+1)` -/
def P3275526791555680672.Spec : Prop :=
  ∀ n, P3275526791555680672.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P6444306380021776244

`A051173(n+1)*A221919(n+1)/A221918(n+1)`
-/

namespace A400755.P6444306380021776244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) * A221919 (n + 1) : ℚ) / (A221918 (n + 1) : ℚ)

end

end A400755.P6444306380021776244

namespace A400755

/-- `A051173(n+1)*A221919(n+1)/A221918(n+1)` -/
def P6444306380021776244.Spec : Prop :=
  ∀ n, P6444306380021776244.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P13228863720765309846

`A277227(n+2)+A164306(n+1)`
-/

namespace A400755.P13228863720765309846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 2) + A164306 (n + 1)

end

end A400755.P13228863720765309846

namespace A400755

/-- `A277227(n+2)+A164306(n+1)` -/
def P13228863720765309846.Spec : Prop :=
  ∀ n, P13228863720765309846.a n = A400755 (n + 1)

end A400755

/-! ## A400755.P18034706789928930825

`A277227(n+2)+A051537(n+1)/A277227(n+2)`
-/

namespace A400755.P18034706789928930825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277227 (n + 2) : ℚ) + (A051537 (n + 1) : ℚ) / (A277227 (n + 2) : ℚ)

end

end A400755.P18034706789928930825

namespace A400755

/-- `A277227(n+2)+A051537(n+1)/A277227(n+2)` -/
def P18034706789928930825.Spec : Prop :=
  ∀ n, P18034706789928930825.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P4109560026922451352

`A341315(comp[∑[n]])`
-/

namespace A400755.P4109560026922451352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341315 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A400755.P4109560026922451352

namespace A400755

/-- `A341315(comp[∑[n]])` -/
def P4109560026922451352.Spec : Prop :=
  ∀ n, P4109560026922451352.a n = A400755 (n + 1)

end A400755

/-! ## A400755.P4138338316880860849

`A316436(A087112(n+1))`
-/

namespace A400755.P4138338316880860849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (A087112 (n + 1)).toNat

end

end A400755.P4138338316880860849

namespace A400755

/-- `A316436(A087112(n+1))` -/
def P4138338316880860849.Spec : Prop :=
  ∀ n, P4138338316880860849.a n = A400755 (n + 1)

end A400755

/-!
# A400758: Number of equivalence classes of Dyck paths of semilength n+1 up to permutation of primitive components, and permutations and reflection of nested primitive components.

The programs for A400758, there is no canonical definition to state claims against.
-/

/-! ## A400758.P2149276787392631341

`∑[A005217(n)]`
-/

namespace A400758.P2149276787392631341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400758.P2149276787392631341

/-! ## A400758.P1410819079439437996

`∑[A289494(A151272(n)+A000040(n+1))]`
-/

namespace A400758.P1410819079439437996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A151272 n + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400758.P1410819079439437996

/-! ## A400758.P11452466592483756593

`∑[A289494(A233360(n+1)+A151272(n))]`
-/

namespace A400758.P11452466592483756593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A233360 (n + 1) + A151272 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400758.P11452466592483756593

/-! ## A400758.P8270565981089312977

`∑[A267303(A337664(n))]`
-/

namespace A400758.P8270565981089312977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267303 (A337664 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400758.P8270565981089312977

/-!
# A400763: Numbers k such that the k-th composition in standard order is a palindrome. Positions of palindromes in A066099.

The programs for A400763, the canonical program `A400763.P8225141009874305220` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400763 has offset 1).

The definition of A400763 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A044051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400763.P8225141009874305220

`A044051(n+1)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A400763

/-- `A044051(n+1)-1` -/
def P8225141009874305220.Spec : Prop :=
  ∀ n, P8225141009874305220.a n = A400763 (n + 1)

theorem P8225141009874305220.correct : P8225141009874305220.Spec := by
  intro n
  simp only [A400763, Nat.add_sub_cancel]

end A400763

/-! ## A400763.P13090741073820232307

`eq[1, A141707(n+1)]`
-/

namespace A400763.P13090741073820232307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400763.P13090741073820232307

namespace A400763

/-- `eq[1, A141707(n+1)]` -/
def P13090741073820232307.Spec : Prop :=
  ∀ n, (P13090741073820232307.a n : ℤ) = A400763 (n + 1)

end A400763

/-! ## A400763.P7174730667586501374

`floor(record[A265509(n)]/2)`
-/

namespace A400763.P7174730667586501374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌋

end

end A400763.P7174730667586501374

namespace A400763

/-- `floor(record[A265509(n)]/2)` -/
def P7174730667586501374.Spec : Prop :=
  ∀ n, P7174730667586501374.a n = A400763 (n + 1)

end A400763

/-! ## A400763.P6075482424960560322

`floor(A006995(2+n)/2)`
-/

namespace A400763.P6075482424960560322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006995 (2 + n) : ℚ) / 2⌋

end

end A400763.P6075482424960560322

namespace A400763

/-- `floor(A006995(2+n)/2)` -/
def P6075482424960560322.Spec : Prop :=
  ∀ n, P6075482424960560322.a n = A400763 (n + 1)

end A400763

/-! ## A400763.P2060380001839208109

`floor(A164302(n+1)/4)`
-/

namespace A400763.P2060380001839208109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A164302 (n + 1) : ℚ) / 4⌋

end

end A400763.P2060380001839208109

namespace A400763

/-- `floor(A164302(n+1)/4)` -/
def P2060380001839208109.Spec : Prop :=
  ∀ n, P2060380001839208109.a n = A400763 (n + 1)

end A400763

/-! ## A400763.P1464027512109104657

`record[A206913(2*n)-n]`
-/

namespace A400763.P1464027512109104657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400763.P1464027512109104657

namespace A400763

/-- `record[A206913(2*n)-n]` -/
def P1464027512109104657.Spec : Prop :=
  ∀ n, P1464027512109104657.a n = A400763 (n + 1)

end A400763

/-! ## A400763.P10168679193172664314

`eq[0, A037888(2*n+1)]`
-/

namespace A400763.P10168679193172664314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400763.P10168679193172664314

namespace A400763

/-- `eq[0, A037888(2*n+1)]` -/
def P10168679193172664314.Spec : Prop :=
  ∀ n, (P10168679193172664314.a n : ℤ) = A400763 (n + 1)

end A400763

/-! ## A400763.P4235152365667385468

`eq[0, A055945(2*n+1)]`
-/

namespace A400763.P4235152365667385468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400763.P4235152365667385468

namespace A400763

/-- `eq[0, A055945(2*n+1)]` -/
def P4235152365667385468.Spec : Prop :=
  ∀ n, (P4235152365667385468.a n : ℤ) = A400763 (n + 1)

end A400763

/-! ## A400763.P3624234019750223234

`eq[0, A066057(2*n+1)]`
-/

namespace A400763.P3624234019750223234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400763.P3624234019750223234

namespace A400763

/-- `eq[0, A066057(2*n+1)]` -/
def P3624234019750223234.Spec : Prop :=
  ∀ n, (P3624234019750223234.a n : ℤ) = A400763 (n + 1)

end A400763

/-! ## A400763.P10281104186201709474

`eq[0, A144078(2*n+1)]`
-/

namespace A400763.P10281104186201709474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144078 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400763.P10281104186201709474

namespace A400763

/-- `eq[0, A144078(2*n+1)]` -/
def P10281104186201709474.Spec : Prop :=
  ∀ n, (P10281104186201709474.a n : ℤ) = A400763 (n + 1)

end A400763

/-!
# A400765: Numbers k such that the k-th composition in standard order is an even-length palindrome. Positions of even-length palindromes in A066099.

The programs for A400765, there is no canonical definition to state claims against.
-/

/-! ## A400765.P11016766571045240614

`floor(A264619(n)/2)`
-/

namespace A400765.P11016766571045240614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264619 n : ℚ) / 2⌋

end

end A400765.P11016766571045240614

/-! ## A400765.P425141400777460072

`floor(A048700(2*n+1)/2)`
-/

namespace A400765.P425141400777460072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048700 (2 * n + 1) : ℚ) / 2⌋

end

end A400765.P425141400777460072

/-! ## A400765.P15561074874820382663

`A004524(A264619(n))`
-/

namespace A400765.P15561074874820382663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A264619 n).toNat

end

end A400765.P15561074874820382663

/-! ## A400765.P8063339868316871524

`A333776(A351010(1+n))`
-/

namespace A400765.P8063339868316871524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (A351010 (1 + n)).toNat

end

end A400765.P8063339868316871524

/-! ## A400765.P12018409661697088163

`A004526(A264619(n)-1)`
-/

namespace A400765.P12018409661697088163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A264619 n - 1).toNat

end

end A400765.P12018409661697088163

/-! ## A400765.P9247449717612793137

`A006370(A264619(n)-1)`
-/

namespace A400765.P9247449717612793137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A264619 n - 1).toNat

end

end A400765.P9247449717612793137

/-! ## A400765.P5679223589683545963

`A025480(A264619(n)-1)`
-/

namespace A400765.P5679223589683545963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A264619 n - 1).toNat

end

end A400765.P5679223589683545963

/-! ## A400765.P10039698772469392522

`A389826(or(1, A264619(n)))`
-/

namespace A400765.P10039698772469392522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389826 (Int.lor 1 (A264619 n)).toNat

end

end A400765.P10039698772469392522

/-! ## A400765.P14294766073976557290

`A025480(xor(1, A264619(n)))`
-/

namespace A400765.P14294766073976557290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.xor 1 (A264619 n)).toNat

end

end A400765.P14294766073976557290

/-!
# A400766: Numbers k such that the k-th composition in standard order is an odd-length palindrome. Positions of odd-length palindromes in A066099.

The programs for A400766, there is no canonical definition to state claims against.
-/

/-! ## A400766.P1460730032914473292

`eq[A010060(n), A141707(n+1)]`
-/

namespace A400766.P1460730032914473292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P1460730032914473292

/-! ## A400766.P2657334607048442340

`eq[A102394(n), A145342(n+1)]`
-/

namespace A400766.P2657334607048442340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P2657334607048442340

/-! ## A400766.P4420164715931469747

`eq[A001969(n+1), A265509(n)]`
-/

namespace A400766.P4420164715931469747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P4420164715931469747

/-! ## A400766.P2354131433167400449

`eq[A181155(n+1), A265509(n)]`
-/

namespace A400766.P2354131433167400449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P2354131433167400449

/-! ## A400766.P900471879234165471

`eq[A105670(n+1), A341916(n)]`
-/

namespace A400766.P900471879234165471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P900471879234165471

/-! ## A400766.P7821881568914910137

`eq[A265510(n), A385663(n+1)]`
-/

namespace A400766.P7821881568914910137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265510 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P7821881568914910137

/-! ## A400766.P13955950409260418555

`eq[A001969(n+1), A141708(n+1)]`
-/

namespace A400766.P13955950409260418555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P13955950409260418555

/-! ## A400766.P5367099317646619182

`eq[A001969(n+1), A145341(n+1)]`
-/

namespace A400766.P5367099317646619182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P5367099317646619182

/-! ## A400766.P16024311870136632142

`eq[A141708(n+1), A181155(n+1)]`
-/

namespace A400766.P16024311870136632142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P16024311870136632142

/-! ## A400766.P9208037282979062368

`eq[A145341(n+1), A181155(n+1)]`
-/

namespace A400766.P9208037282979062368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P9208037282979062368

/-!
# A400769: a(n) = mu(n^2 + n + 1).

The programs for A400769, the canonical program `A400769.P1291810996516571968` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400769 has offset 0).

The definition of A400769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+n+1)` (program `A400769.P1291810996516571968`, by `A400769.P1291810996516571968.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400769.P1291810996516571968

`A008683(n²+n+1)`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A400769

/-- `A008683(n²+n+1)` -/
def P1291810996516571968.Spec : Prop :=
  ∀ n, P1291810996516571968.a n = A400769 n

theorem P1291810996516571968.correct : P1291810996516571968.Spec := by
  intro n
  simp only [A400769]

end A400769

/-! ## A400769.P13310287929845278170

`Δ[A400770(abs(1-n))]`
-/

namespace A400769.P13310287929845278170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400770 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A400769.P13310287929845278170

namespace A400769

/-- `Δ[A400770(abs(1-n))]` -/
def P13310287929845278170.Spec : Prop :=
  ∀ n, P13310287929845278170.a n = A400769 n

end A400769

/-! ## A400769.P14220242393411205064

`∏{e}[∑[2*n]+1, -floor(1/#)]`
-/

namespace A400769.P14220242393411205064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)

end

end A400769.P14220242393411205064

namespace A400769

/-- `∏{e}[∑[2*n]+1, -floor(1/#)]` -/
def P14220242393411205064.Spec : Prop :=
  ∀ n, P14220242393411205064.a n = A400769 n

end A400769

/-! ## A400769.P12857620658512502308

`∏{e}[∑[2*n]+1, -#!]%2`
-/

namespace A400769.P12857620658512502308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorial (Nat.factorization (f1 n) p) : ℤ))) 2

end

end A400769.P12857620658512502308

namespace A400769

/-- `∏{e}[∑[2*n]+1, -#!]%2` -/
def P12857620658512502308.Spec : Prop :=
  ∀ n, P12857620658512502308.a n = A400769 n

end A400769

/-! ## A400769.P13017928899667689997

`round(1/∏{e}[∑[2*n]+1, -#²])`
-/

namespace A400769.P13017928899667689997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ))

end

end A400769.P13017928899667689997

namespace A400769

/-- `round(1/∏{e}[∑[2*n]+1, -#²])` -/
def P13017928899667689997.Spec : Prop :=
  ∀ n, P13017928899667689997.a n = A400769 n

end A400769

/-! ## A400769.P10547702086030801580

`A008683(∑{#}[2, n^#])`
-/

namespace A400769.P10547702086030801580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ k ∈ Finset.range (f1 n + 1), n ^ k)

end

end A400769.P10547702086030801580

namespace A400769

/-- `A008683(∑{#}[2, n^#])` -/
def P10547702086030801580.Spec : Prop :=
  ∀ n, P10547702086030801580.a n = A400769 n

end A400769

/-! ## A400769.P9961849172264572837

`A355690(∑[2*n]+1)`
-/

namespace A400769.P9961849172264572837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A400769.P9961849172264572837

namespace A400769

/-- `A355690(∑[2*n]+1)` -/
def P9961849172264572837.Spec : Prop :=
  ∀ n, P9961849172264572837.a n = A400769 n

end A400769

/-! ## A400769.P394321824991723608

`A008683(or(1, ∑[2*n]))`
-/

namespace A400769.P394321824991723608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A400769.P394321824991723608

namespace A400769

/-- `A008683(or(1, ∑[2*n]))` -/
def P394321824991723608.Spec : Prop :=
  ∀ n, P394321824991723608.a n = A400769 n

end A400769

/-! ## A400769.P2666157344329446669

`A355689(n²+n+1)`
-/

namespace A400769.P2666157344329446669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (n ^ 2 + (n + 1))

end

end A400769.P2666157344329446669

namespace A400769

/-- `A355689(n²+n+1)` -/
def P2666157344329446669.Spec : Prop :=
  ∀ n, P2666157344329446669.a n = A400769 n

end A400769

/-! ## A400769.P3398788576689155191

`A067856(∑[2*n]+1)`
-/

namespace A400769.P3398788576689155191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A400769.P3398788576689155191

namespace A400769

/-- `A067856(∑[2*n]+1)` -/
def P3398788576689155191.Spec : Prop :=
  ∀ n, P3398788576689155191.a n = A400769 n

end A400769

/-! ## A400769.P2903978239975544879

`A085384(∑[2*n]+1)`
-/

namespace A400769.P2903978239975544879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A400769.P2903978239975544879

namespace A400769

/-- `A085384(∑[2*n]+1)` -/
def P2903978239975544879.Spec : Prop :=
  ∀ n, P2903978239975544879.a n = A400769 n

end A400769

/-! ## A400769.P14950290156429302750

`A085639(∑[2*n]+1)`
-/

namespace A400769.P14950290156429302750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A400769.P14950290156429302750

namespace A400769

/-- `A085639(∑[2*n]+1)` -/
def P14950290156429302750.Spec : Prop :=
  ∀ n, P14950290156429302750.a n = A400769 n

end A400769

/-! ## A400769.P18438121407639878640

`A086831(∑[2*n]+1)`
-/

namespace A400769.P18438121407639878640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A400769.P18438121407639878640

namespace A400769

/-- `A086831(∑[2*n]+1)` -/
def P18438121407639878640.Spec : Prop :=
  ∀ n, P18438121407639878640.a n = A400769 n

end A400769

/-! ## A400769.P4381942791448717631

`A359591(2*∑[n]+1)`
-/

namespace A400769.P4381942791448717631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359591 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A400769.P4381942791448717631

namespace A400769

/-- `A359591(2*∑[n]+1)` -/
def P4381942791448717631.Spec : Prop :=
  ∀ n, P4381942791448717631.a n = A400769 n

end A400769

/-! ## A400769.P15864203956699346546

`A131038(n²+n+1)`
-/

namespace A400769.P15864203956699346546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131038 (n ^ 2 + (n + 1))

end

end A400769.P15864203956699346546

namespace A400769

/-- `A131038(n²+n+1)` -/
def P15864203956699346546.Spec : Prop :=
  ∀ n, P15864203956699346546.a n = A400769 n

end A400769

/-! ## A400769.P17133893540384043441

`A359432(n²+n+1)`
-/

namespace A400769.P17133893540384043441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359432 (n ^ 2 + n + 1)

end

end A400769.P17133893540384043441

namespace A400769

/-- `A359432(n²+n+1)` -/
def P17133893540384043441.Spec : Prop :=
  ∀ n, P17133893540384043441.a n = A400769 n

end A400769

/-! ## A400769.P10853183279063633005

`A099990(∑[n])`
-/

namespace A400769.P10853183279063633005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400769.P10853183279063633005

namespace A400769

/-- `A099990(∑[n])` -/
def P10853183279063633005.Spec : Prop :=
  ∀ n, P10853183279063633005.a n = A400769 n

end A400769

/-! ## A400769.P10854611391297457437

`A080323(n²+n+1)`
-/

namespace A400769.P10854611391297457437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (n ^ 2 + (n + 1))

end

end A400769.P10854611391297457437

namespace A400769

/-- `A080323(n²+n+1)` -/
def P10854611391297457437.Spec : Prop :=
  ∀ n, P10854611391297457437.a n = A400769 n

end A400769

/-! ## A400769.P15238261719800721634

`A343370(n²+n+1)`
-/

namespace A400769.P15238261719800721634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343370 (n ^ 2 + (n + 1))

end

end A400769.P15238261719800721634

namespace A400769

/-- `A343370(n²+n+1)` -/
def P15238261719800721634.Spec : Prop :=
  ∀ n, P15238261719800721634.a n = A400769 n

end A400769

/-! ## A400769.P13443543716496436219

`A086823(A112087(n+1))`
-/

namespace A400769.P13443543716496436219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086823 (A112087 (n + 1)).toNat

end

end A400769.P13443543716496436219

namespace A400769

/-- `A086823(A112087(n+1))` -/
def P13443543716496436219.Spec : Prop :=
  ∀ n, P13443543716496436219.a n = A400769 n

end A400769

/-!
# A400770: a(n) = Sum_{k=0..n} mu(k^2 + k + 1).

The programs for A400770, the canonical program `A400770.P6014380429317486619` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400770 has offset 0).

The definition of A400770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400770.P6014380429317486619

`∑[A400769(n)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400770

/-- `∑[A400769(n)]` -/
def P6014380429317486619.Spec : Prop :=
  ∀ n, P6014380429317486619.a n = A400770 n

theorem P6014380429317486619.correct : P6014380429317486619.Spec := by
  intro n
  simp only [A400770]

end A400770

/-! ## A400770.P15364437892962577721

`∑[∏{e}[1+n²+n, -floor(1/#)]]`
-/

namespace A400770.P15364437892962577721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n ^ 2 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P15364437892962577721

namespace A400770

/-- `∑[∏{e}[1+n²+n, -floor(1/#)]]` -/
def P15364437892962577721.Spec : Prop :=
  ∀ n, P15364437892962577721.a n = A400770 n

theorem P15364437892962577721.correct : P15364437892962577721.Spec := by
  intro n
  simp only [A400770, Nat.add_sub_cancel, A400770.P15364437892962577721.f2, A400770.P15364437892962577721.f1, A400770.P15364437892962577721.a, A400770.P6014380429317486619.f1, A400770.P6014380429317486619.a, A400769, A400769.P1291810996516571968.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400770

/-! ## A400770.P4744153241760596924

`∑[A008683(∑{#}[2, n^#])]`
-/

namespace A400770.P4744153241760596924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ k ∈ Finset.range (f2 n + 1), n ^ k)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P4744153241760596924

namespace A400770

/-- `∑[A008683(∑{#}[2, n^#])]` -/
def P4744153241760596924.Spec : Prop :=
  ∀ n, P4744153241760596924.a n = A400770 n

end A400770

/-! ## A400770.P9451202579664557302

`∑[A008683(1+∑[2*n])]`
-/

namespace A400770.P9451202579664557302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (1 + ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P9451202579664557302

namespace A400770

/-- `∑[A008683(1+∑[2*n])]` -/
def P9451202579664557302.Spec : Prop :=
  ∀ n, P9451202579664557302.a n = A400770 n

end A400770

/-! ## A400770.P5318790934992304043

`∑[A355689(∑[2*n]+1)]`
-/

namespace A400770.P5318790934992304043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P5318790934992304043

namespace A400770

/-- `∑[A355689(∑[2*n]+1)]` -/
def P5318790934992304043.Spec : Prop :=
  ∀ n, P5318790934992304043.a n = A400770 n

end A400770

/-! ## A400770.P12482617913078159575

`∑[A355690(∑[2*n]+1)]`
-/

namespace A400770.P12482617913078159575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P12482617913078159575

namespace A400770

/-- `∑[A355690(∑[2*n]+1)]` -/
def P12482617913078159575.Spec : Prop :=
  ∀ n, P12482617913078159575.a n = A400770 n

end A400770

/-! ## A400770.P12314357535092258701

`∑[A067856(∑[2*n]+1)]`
-/

namespace A400770.P12314357535092258701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P12314357535092258701

namespace A400770

/-- `∑[A067856(∑[2*n]+1)]` -/
def P12314357535092258701.Spec : Prop :=
  ∀ n, P12314357535092258701.a n = A400770 n

end A400770

/-! ## A400770.P8826981755969763180

`∑[A085384(∑[2*n]+1)]`
-/

namespace A400770.P8826981755969763180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P8826981755969763180

namespace A400770

/-- `∑[A085384(∑[2*n]+1)]` -/
def P8826981755969763180.Spec : Prop :=
  ∀ n, P8826981755969763180.a n = A400770 n

end A400770

/-! ## A400770.P2578367018647527677

`∑[A359591(∑[2*n]+1)]`
-/

namespace A400770.P2578367018647527677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359591 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P2578367018647527677

namespace A400770

/-- `∑[A359591(∑[2*n]+1)]` -/
def P2578367018647527677.Spec : Prop :=
  ∀ n, P2578367018647527677.a n = A400770 n

end A400770

/-! ## A400770.P13808792334290245202

`∑[A085639(n²+n+1)]`
-/

namespace A400770.P13808792334290245202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085639 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P13808792334290245202

namespace A400770

/-- `∑[A085639(n²+n+1)]` -/
def P13808792334290245202.Spec : Prop :=
  ∀ n, P13808792334290245202.a n = A400770 n

end A400770

/-! ## A400770.P12895747738614489199

`∑[A086831(n²+n+1)]`
-/

namespace A400770.P12895747738614489199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P12895747738614489199

namespace A400770

/-- `∑[A086831(n²+n+1)]` -/
def P12895747738614489199.Spec : Prop :=
  ∀ n, P12895747738614489199.a n = A400770 n

end A400770

/-! ## A400770.P5330289724736780178

`∑[A131038(n²+n+1)]`
-/

namespace A400770.P5330289724736780178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131038 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P5330289724736780178

namespace A400770

/-- `∑[A131038(n²+n+1)]` -/
def P5330289724736780178.Spec : Prop :=
  ∀ n, P5330289724736780178.a n = A400770 n

end A400770

/-! ## A400770.P8623368191489337749

`∑[A099990(∑[n])]`
-/

namespace A400770.P8623368191489337749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099990 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P8623368191489337749

namespace A400770

/-- `∑[A099990(∑[n])]` -/
def P8623368191489337749.Spec : Prop :=
  ∀ n, P8623368191489337749.a n = A400770 n

end A400770

/-! ## A400770.P7606792735209845267

`∑[A080323(n²+n+1)]`
-/

namespace A400770.P7606792735209845267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P7606792735209845267

namespace A400770

/-- `∑[A080323(n²+n+1)]` -/
def P7606792735209845267.Spec : Prop :=
  ∀ n, P7606792735209845267.a n = A400770 n

end A400770

/-! ## A400770.P17829226504911788718

`∑[A343370(n²+n+1)]`
-/

namespace A400770.P17829226504911788718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343370 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P17829226504911788718

namespace A400770

/-- `∑[A343370(n²+n+1)]` -/
def P17829226504911788718.Spec : Prop :=
  ∀ n, P17829226504911788718.a n = A400770 n

end A400770

/-! ## A400770.P13239344524520500667

`∑[A087003(n²+n+1)]`
-/

namespace A400770.P13239344524520500667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P13239344524520500667

namespace A400770

/-- `∑[A087003(n²+n+1)]` -/
def P13239344524520500667.Spec : Prop :=
  ∀ n, P13239344524520500667.a n = A400770 n

end A400770

/-! ## A400770.P5159459618458447061

`∑[A092152(n²+n+1)]`
-/

namespace A400770.P5159459618458447061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P5159459618458447061

namespace A400770

/-- `∑[A092152(n²+n+1)]` -/
def P5159459618458447061.Spec : Prop :=
  ∀ n, P5159459618458447061.a n = A400770 n

end A400770

/-! ## A400770.P5303876857729209287

`∑[A092673(n²+n+1)]`
-/

namespace A400770.P5303876857729209287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P5303876857729209287

namespace A400770

/-- `∑[A092673(n²+n+1)]` -/
def P5303876857729209287.Spec : Prop :=
  ∀ n, P5303876857729209287.a n = A400770 n

end A400770

/-! ## A400770.P6468774903293683704

`∑[A197774(n²+n+1)]`
-/

namespace A400770.P6468774903293683704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197774 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P6468774903293683704

namespace A400770

/-- `∑[A197774(n²+n+1)]` -/
def P6468774903293683704.Spec : Prop :=
  ∀ n, P6468774903293683704.a n = A400770 n

end A400770

/-! ## A400770.P321040576013826633

`∑[A209635(n²+n+1)]`
-/

namespace A400770.P321040576013826633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P321040576013826633

namespace A400770

/-- `∑[A209635(n²+n+1)]` -/
def P321040576013826633.Spec : Prop :=
  ∀ n, P321040576013826633.a n = A400770 n

end A400770

/-!
# A400775: Fast-growing hierarchy {f_n(k)} read by antidiagonals, n >= 0, k >= 0.

The programs for A400775, there is no canonical definition to state claims against.
-/

/-! ## A400775.P439810291594950419

`A382345(n)+A079979(A382367(n))`
-/

namespace A400775.P439810291594950419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382345 n + A079979 (A382367 n).toNat

end

end A400775.P439810291594950419

/-! ## A400775.P11250764752617223454

`A382345(n)+A337380(A005207(n))`
-/

namespace A400775.P11250764752617223454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382345 n + A337380 (A005207 n).toNat

end

end A400775.P11250764752617223454

/-! ## A400775.P12246434384270190957

`A382345(n)+A011745(A006820(n))`
-/

namespace A400775.P12246434384270190957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382345 n + A011745 (A006820 n).toNat

end

end A400775.P12246434384270190957

/-!
# A400779: a(n) = Sum_{d|n} gcd(n,d+1).

The programs for A400779, the canonical program `A400779.P9186177373831134570` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400779 has offset 1).

The definition of A400779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, gcd(n+1, #+1)]` (program `A400779.P9186177373831134570`, by `A400779.P9186177373831134570.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400779.P9186177373831134570

`∑{d}[n+1, gcd(n+1, #+1)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400779

/-- `∑{d}[n+1, gcd(n+1, #+1)]` -/
def P9186177373831134570.Spec : Prop :=
  ∀ n, (P9186177373831134570.a n : ℤ) = A400779 (n + 1)

theorem P9186177373831134570.correct : P9186177373831134570.Spec := by
  intro n
  simp only [A400779, Nat.add_sub_cancel]

end A400779

/-!
# A400780: Table listed by rows: row n consists of the numbers x such that A075254(x) = A050778(n).

The programs for A400780, there is no canonical definition to state claims against.
-/

/-! ## A400780.P8850579862794714842

`∩[eq[0, A185284(n)], A050703(n+1)]`
-/

namespace A400780.P8850579862794714842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A400780.P8850579862794714842

/-! ## A400780.P16833893370090208101

`record[A050703(n+1)-Δ[A185036(n+4)]]`
-/

namespace A400780.P16833893370090208101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400780.P16833893370090208101

/-! ## A400780.P647748788846762324

`A050703(n+1)+A024155(A007051(n))`
-/

namespace A400780.P647748788846762324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1) + A024155 (A007051 n).toNat

end

end A400780.P647748788846762324

/-! ## A400780.P4360816712391456800

`A185284(A000045(n))+A050703(n+1)`
-/

namespace A400780.P4360816712391456800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000045 n).toNat + A050703 (n + 1)

end

end A400780.P4360816712391456800

/-! ## A400780.P15605416952750880471

`A351358(A000032(n))+A050703(n+1)`
-/

namespace A400780.P15605416952750880471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351358 (A000032 n).toNat + A050703 (n + 1)

end

end A400780.P15605416952750880471

/-!
# A400782: Number of unordered 3-element sets of partitions summing to n.

The programs for A400782, there is no canonical definition to state claims against.
-/

/-! ## A400782.P15317106718460138909

`A000219(n)+A246852(3*n+4)%A003114(n)`
-/

namespace A400782.P15317106718460138909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n + Int.tmod (A246852 (3 * n + 4)) (A003114 n)

end

end A400782.P15317106718460138909

/-! ## A400782.P17307450209797572388

`A037805(A001550(n))+A000219(n)`
-/

namespace A400782.P17307450209797572388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (A001550 n).toNat + A000219 n

end

end A400782.P17307450209797572388

/-! ## A400782.P15483043078217567355

`A044940(A001576(n))+A000219(n)`
-/

namespace A400782.P15483043078217567355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A001576 n).toNat + A000219 n

end

end A400782.P15483043078217567355

/-! ## A400782.P9744540310987010174

`A076142(A088218(n))+A000219(n)`
-/

namespace A400782.P9744540310987010174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (A088218 n).toNat + A000219 n

end

end A400782.P9744540310987010174

/-! ## A400782.P7821949425798260993

`A124766(A174613(n))+A000219(n)`
-/

namespace A400782.P7821949425798260993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A174613 n).toNat + A000219 n

end

end A400782.P7821949425798260993

/-!
# A400783: Number of unordered 4-element sets of partitions summing to n.

The programs for A400783, there is no canonical definition to state claims against.
-/

/-! ## A400783.P12572073434613180244

`A319315(A215982(n+2))`
-/

namespace A400783.P12572073434613180244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319315 (A215982 (n + 2)).toNat

end

end A400783.P12572073434613180244

/-! ## A400783.P5643019425217507660

`A265947(n)+A137579(A320932(n))`
-/

namespace A400783.P5643019425217507660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265947 n + A137579 (A320932 n).toNat

end

end A400783.P5643019425217507660

/-! ## A400783.P10487458768968515660

`A358831(n)-A169673(A000142(n))`
-/

namespace A400783.P10487458768968515660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358831 n - A169673 (A000142 n).toNat

end

end A400783.P10487458768968515660

/-! ## A400783.P9072477105458108443

`A358831(n)-A102683(A157016(n))`
-/

namespace A400783.P9072477105458108443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358831 n - A102683 (A157016 n).toNat

end

end A400783.P9072477105458108443

/-!
# A400784: Number of unordered 5-element sets of partitions summing to n.

The programs for A400784, there is no canonical definition to state claims against.
-/

/-! ## A400784.P5801300227021038785

`A187209(a(n-1))+n+1` with `a(0)=1, a(1)=1`
-/

namespace A400784.P5801300227021038785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A187209 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A400784.P5801300227021038785

/-! ## A400784.P16299618394320622123

`A124455(A058053(n))`
-/

namespace A400784.P16299618394320622123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124455 (A058053 n).toNat

end

end A400784.P16299618394320622123

/-! ## A400784.P13036110367116191799

`A230022(A024207(n))`
-/

namespace A400784.P13036110367116191799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230022 (A024207 n).toNat

end

end A400784.P13036110367116191799

/-! ## A400784.P4838480749848936761

`A111654(A156733(n))`
-/

namespace A400784.P4838480749848936761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A156733 n).toNat

end

end A400784.P4838480749848936761

/-!
# A400791: a(n) = Sum_{d|n, d >= 4} d * floor((d - 2)/2).

The programs for A400791, the canonical program `A400791.P15948439945522063166` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400791 has offset 1).

The definition of A400791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400791.P15948439945522063166

`∑{d}[1+n, #*A140106(#)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400791

/-- `∑{d}[1+n, #*A140106(#)]` -/
def P15948439945522063166.Spec : Prop :=
  ∀ n, P15948439945522063166.a n = A400791 (n + 1)

theorem P15948439945522063166.correct : P15948439945522063166.Spec := by
  intro n
  simp only [A400791, Nat.add_sub_cancel]

end A400791

/-!
# A400792: a(1) = 1. For n > 1, a(n) is the smallest unused positive integer k such that (number of earlier terms smaller than k that are coprime to k) - (number of earlier terms larger than k that share a factor with k) = 1.

The programs for A400792, there is no canonical definition to state claims against.
-/

/-! ## A400792.P13173153673744338536

`fo[A397358(n+1)-1]+1`
-/

namespace A400792.P13173153673744338536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397358 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A400792.P13173153673744338536

/-!
# A400793: Positions of primes in A400792.

The programs for A400793, there is no canonical definition to state claims against.
-/

/-! ## A400793.P8087557729425208600

`record[A397358(n+2)]`
-/

namespace A400793.P8087557729425208600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397358 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400793.P8087557729425208600

/-! ## A400793.P12621413979795540571

`A397358(A181325(n))`
-/

namespace A400793.P12621413979795540571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397358 (A181325 n).toNat

end

end A400793.P12621413979795540571

/-! ## A400793.P15215587481454092609

`A397358(A390240(n))`
-/

namespace A400793.P15215587481454092609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397358 (A390240 n).toNat

end

end A400793.P15215587481454092609

/-! ## A400793.P7320270011923891686

`A397358(Δ[A007504(n)])`
-/

namespace A400793.P7320270011923891686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397358 (f1 (n + 1) - f1 n).toNat

end

end A400793.P7320270011923891686

/-! ## A400793.P13171785424505973083

`A397358(A000040(1+n))`
-/

namespace A400793.P13171785424505973083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397358 (A000040 (1 + n)).toNat

end

end A400793.P13171785424505973083

/-!
# A400794: Positions of primorials in A400792.

The programs for A400794, there is no canonical definition to state claims against.
-/

/-! ## A400794.P16630788440358745042

`A048259(A114121(n))`
-/

namespace A400794.P16630788440358745042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048259 (A114121 n).toNat

end

end A400794.P16630788440358745042

/-! ## A400794.P10529522286566377912

`A352143(A124217(n))+n`
-/

namespace A400794.P10529522286566377912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352143 (A124217 n).toNat + (n : ℤ)

end

end A400794.P10529522286566377912

/-!
# A400796: a(n) = (n^2 + 4*Legendre(n,5))/5.

The programs for A400796, the canonical program `A400796.P792017740949119045` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400796 has offset 0).

The definition of A400796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400796.P792017740949119045

`ogf((x-2x^2+2x^3+2x^4-2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400796

/-- `ogf((x-2x^2+2x^3+2x^4-2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P792017740949119045.Spec : Prop :=
  ∀ n, P792017740949119045.a n = A400796 n

theorem P792017740949119045.correct : P792017740949119045.Spec := by
  intro n
  simp only [A400796]

end A400796

/-! ## A400796.P3386589619091131734

`(n²+8/sqrt(5)*(cos(2*π*n/5)-cos(4*π*n/5)))/5`
-/

namespace A400796.P3386589619091131734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℝ) + 8 / Real.sqrt (5 : ℝ) * (Real.cos (2 * Real.pi * (n : ℝ) / 5) - Real.cos (4 * Real.pi * (n : ℝ) / 5))) / 5

end

end A400796.P3386589619091131734

namespace A400796

/-- `(n²+8/sqrt(5)*(cos(2*π*n/5)-cos(4*π*n/5)))/5` -/
def P3386589619091131734.Spec : Prop :=
  ∀ n, P3386589619091131734.a n = (A400796 n : ℝ)

end A400796

/-! ## A400796.P8268997589707844789

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=4, a(5)=5, a(6)=8`
-/

namespace A400796.P8268997589707844789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1, 4, 5, 8] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A400796.P8268997589707844789

namespace A400796

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P8268997589707844789.Spec : Prop :=
  ∀ n, P8268997589707844789.a n = A400796 n

end A400796

/-! ## A400796.P5361869639390655282

`(n²+4*A080891(n))/5`
-/

namespace A400796.P5361869639390655282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) + 4 * A080891 n : ℚ) / 5

end

end A400796.P5361869639390655282

namespace A400796

/-- `(n²+4*A080891(n))/5` -/
def P5361869639390655282.Spec : Prop :=
  ∀ n, P5361869639390655282.a n = (A400796 n : ℚ)

end A400796

/-! ## A400796.P5354467902724149619

`∑[2+a(n-5)]` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=1, a(4)=3, a(5)=1`
-/

namespace A400796.P5354467902724149619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 1, 3, 1] fun n f1 =>
  2 + f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400796.P5354467902724149619

namespace A400796

/-- `∑[2+a(n-5)]` -/
def P5354467902724149619.Spec : Prop :=
  ∀ n, P5354467902724149619.a n = A400796 n

end A400796

/-! ## A400796.P4192852993611600831

`2*floor((n+4)*(n+1)/10)-n`
-/

namespace A400796.P4192852993611600831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((n + 4) * (n + 1) : ℚ) / 10⌋ - (n : ℤ)

end

end A400796.P4192852993611600831

namespace A400796

/-- `2*floor((n+4)*(n+1)/10)-n` -/
def P4192852993611600831.Spec : Prop :=
  ∀ n, P4192852993611600831.a n = A400796 n

end A400796

/-!
# A400797: a(n) = A400796(n) mod 5.

The programs for A400797, the canonical program `A400797.P15196637446887860738` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400797 has offset 0).

The definition of A400797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400797.P15196637446887860738

`A400796(n)%5`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A400797

/-- `A400796(n)%5` -/
def P15196637446887860738.Spec : Prop :=
  ∀ n, P15196637446887860738.a n = A400797 n

theorem P15196637446887860738.correct : P15196637446887860738.Spec := by
  intro n
  simp only [A400797]

end A400797

