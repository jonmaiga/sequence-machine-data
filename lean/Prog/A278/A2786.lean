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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B010.C000
import Seq.B012.C000
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
# A278600: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 54", based on the 5-celled von Neumann neighborhood.

The programs for A278600, there is no canonical definition to state claims against.
-/

/-! ## A278600.P14924380770182139987

`A281037(n)-A175424(A259383(n+1))`
-/

namespace A278600.P14924380770182139987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281037 n - A175424 (A259383 (n + 1)).toNat

end

end A278600.P14924380770182139987

/-! ## A278600.P8760104503551165780

`A291337(A337932(n+1))+A033183(A005324(n+4))`
-/

namespace A278600.P8760104503551165780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291337 (A337932 (n + 1)).toNat + A033183 (A005324 (n + 4)).toNat

end

end A278600.P8760104503551165780

/-!
# A278601: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 54", based on the 5-celled von Neumann neighborhood.

The programs for A278601, there is no canonical definition to state claims against.
-/

/-! ## A278601.P103664965746977400

`A057889(A000265(A278600(n)))`
-/

namespace A278601.P103664965746977400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A000265 (A278600 n).toNat).toNat

end

end A278601.P103664965746977400

/-! ## A278601.P238816217483040984

`A030101(A278600(n)/A184167(n+1))`
-/

namespace A278601.P238816217483040984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A278600 n : ℚ) / (A184167 (n + 1) : ℚ))).toNat

end

end A278601.P238816217483040984

/-! ## A278601.P17158612144976894927

`A325401(A278600(n))`
-/

namespace A278601.P17158612144976894927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A278600 n).toNat

end

end A278601.P17158612144976894927

/-! ## A278601.P9286513602950003365

`A030101(2*A278600(n))`
-/

namespace A278601.P9286513602950003365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A278600 n).toNat

end

end A278601.P9286513602950003365

/-!
# A278602: Sum of the perimeters of all regions of the n-th section of a modular table of partitions.

The programs for A278602, there is no canonical definition to state claims against.
-/

/-! ## A278602.P5117032968623281218

`A008586(n/A028310(n))*A138137(A028310(n))`
-/

namespace A278602.P5117032968623281218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat * A138137 (A028310 n).toNat

end

end A278602.P5117032968623281218

/-! ## A278602.P8674257830625337759

`Δ[A278355(round(sqrt(n²+1))-1)]`
-/

namespace A278602.P8674257830625337759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278355 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278602.P8674257830625337759

/-! ## A278602.P5914109472378354197

`abs(Δ[A278355(A028310(n)-1)])`
-/

namespace A278602.P5914109472378354197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278355 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A278602.P5914109472378354197

/-! ## A278602.P2373702403634780448

`A278355(n)-A278355(A028310(n)-1)`
-/

namespace A278602.P2373702403634780448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278355 n - A278355 (A028310 n - 1).toNat

end

end A278602.P2373702403634780448

/-! ## A278602.P17153768284809617854

`record[Δ[A278355(floor(n/2))]]`
-/

namespace A278602.P17153768284809617854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278355 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278602.P17153768284809617854

/-!
# A278603: A prime mountain: peaks and valleys beyond the origin correspond to prime abscissa (see Comments for precise definition).

The programs for A278603, the canonical program `A278603.P11848414338915408695` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278603 has offset 0).

The definition of A278603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278603.P11848414338915408695

`A065357(n-1)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A278603

/-- `A065357(n-1)+a(n-1)` -/
def P11848414338915408695.Spec : Prop :=
  ∀ n, P11848414338915408695.a n = A278603 n

theorem P11848414338915408695.correct : P11848414338915408695.Spec := by
  intro n
  simp only [A278603]

end A278603

/-! ## A278603.P3755010990667681893

`∑[A332823(A007918(n))]-1`
-/

namespace A278603.P3755010990667681893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A007918 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A278603.P3755010990667681893

namespace A278603

/-- `∑[A332823(A007918(n))]-1` -/
def P3755010990667681893.Spec : Prop :=
  ∀ n, P3755010990667681893.a n = A278603 n

end A278603

/-! ## A278603.P3874206879981139108

`∑[A065357(n)]-A065357(n)`
-/

namespace A278603.P3874206879981139108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A065357 n

end

end A278603.P3874206879981139108

namespace A278603

/-- `∑[A065357(n)]-A065357(n)` -/
def P3874206879981139108.Spec : Prop :=
  ∀ n, P3874206879981139108.a n = A278603 n

end A278603

/-! ## A278603.P16917686070822231796

`A065358(n)+1-A065357(n)`
-/

namespace A278603.P16917686070822231796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065358 n + (1 - A065357 n)

end

end A278603.P16917686070822231796

namespace A278603

/-- `A065358(n)+1-A065357(n)` -/
def P16917686070822231796.Spec : Prop :=
  ∀ n, P16917686070822231796.a n = A278603 n

end A278603

/-! ## A278603.P10691777924447346742

`A131378(n)+A131378(n)+A065358(n)`
-/

namespace A278603.P10691777924447346742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n + (A131378 n + A065358 n)

end

end A278603.P10691777924447346742

namespace A278603

/-- `A131378(n)+A131378(n)+A065358(n)` -/
def P10691777924447346742.Spec : Prop :=
  ∀ n, P10691777924447346742.a n = A278603 n

end A278603

/-! ## A278603.P92179793826763571

`∑[-a(A136548(n))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A278603.P92179793826763571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  -f1 (A136548 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278603.P92179793826763571

namespace A278603

/-- `∑[-a(A136548(n))]` -/
def P92179793826763571.Spec : Prop :=
  ∀ n, P92179793826763571.a n = A278603 n

end A278603

/-!
# A278604: Number of n X 1 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278604, there is no canonical definition to state claims against.
-/

/-! ## A278604.P13374467875603088375

`A278896(∑[n]+1)`
-/

namespace A278604.P13374467875603088375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278896 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278604.P13374467875603088375

/-! ## A278604.P17989291659731738451

`A278610(∑[n]+1)`
-/

namespace A278604.P17989291659731738451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278610 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278604.P17989291659731738451

/-! ## A278604.P15876093230285892985

`A278610(A000124(n))+A025469(n)`
-/

namespace A278604.P15876093230285892985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278610 (A000124 n).toNat + A025469 n

end

end A278604.P15876093230285892985

/-! ## A278604.P17112298308395474970

`A057427(n)*A278610(A000124(n))`
-/

namespace A278604.P17112298308395474970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A278610 (A000124 n).toNat

end

end A278604.P17112298308395474970

/-! ## A278604.P5230857416648290558

`A278610(A000124(n))%A236579(n)`
-/

namespace A278604.P5230857416648290558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278610 (A000124 n).toNat) (A236579 n)

end

end A278604.P5230857416648290558

/-!
# A278605: Number of nX2 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278605, there is no canonical definition to state claims against.
-/

/-! ## A278605.P15797137229951406971

`A278610(∑[n+1]+2)`
-/

namespace A278605.P15797137229951406971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278610 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278605.P15797137229951406971

/-!
# A278606: Number of nX3 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278606, there is no canonical definition to state claims against.
-/

/-! ## A278606.P13235344489601201091

`A278610(∑[n+2]+4)`
-/

namespace A278606.P13235344489601201091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278610 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278606.P13235344489601201091

/-! ## A278606.P9568774411466027520

`A278610(A167614(n+1))+A025469(n)`
-/

namespace A278606.P9568774411466027520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278610 (A167614 (n + 1)).toNat + A025469 n

end

end A278606.P9568774411466027520

/-! ## A278606.P3273616702659341665

`A057427(n)*A278610(A167614(n+1))`
-/

namespace A278606.P3273616702659341665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A278610 (A167614 (n + 1)).toNat

end

end A278606.P3273616702659341665

/-! ## A278606.P11462676291668899538

`lcm(A062157(n), A278610(A167614(n+1)))`
-/

namespace A278606.P11462676291668899538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A278610 (A167614 (n + 1)).toNat)

end

end A278606.P11462676291668899538

/-! ## A278606.P4966651779626621275

`record[A278610(A101881(n))]`
-/

namespace A278606.P4966651779626621275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278610 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278606.P4966651779626621275

/-!
# A278607: Number of nX4 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278607, there is no canonical definition to state claims against.
-/

/-! ## A278607.P8271464754869577669

`A278610(A167614(n+2)+1)`
-/

namespace A278607.P8271464754869577669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278610 (A167614 (n + 2) + 1).toNat

end

end A278607.P8271464754869577669

/-!
# A278608: Number of nX5 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278608, there is no canonical definition to state claims against.
-/

/-! ## A278608.P1061927276889006521

`A278610(A056000(n)+15)`
-/

namespace A278608.P1061927276889006521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278610 (A056000 n + 15).toNat

end

end A278608.P1061927276889006521

/-! ## A278608.P10661142891641955603

`A278610(A374005(n+1))`
-/

namespace A278608.P10661142891641955603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278610 (A374005 (n + 1)).toNat

end

end A278608.P10661142891641955603

/-!
# A278610: T(n,k)=Number of nXk 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278610, there is no canonical definition to state claims against.
-/

/-! ## A278610.P14442399983388085705

`A185254(ceil((n-1)/gcd(2, n))+or(1, n))`
-/

namespace A278610.P14442399983388085705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185254 (⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉ + (Nat.lor 1 n : ℤ)).toNat

end

end A278610.P14442399983388085705

/-! ## A278610.P8950391293581049843

`A185329(A330749(n!))`
-/

namespace A278610.P8950391293581049843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 (A330749 (Nat.factorial n)).toNat

end

end A278610.P8950391293581049843

/-! ## A278610.P11922736375565827224

`A185254(∑[A268498(n)])`
-/

namespace A278610.P11922736375565827224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185254 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278610.P11922736375565827224

/-! ## A278610.P17966875854478386011

`A185254(A131319(n+1))`
-/

namespace A278610.P17966875854478386011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185254 (A131319 (n + 1)).toNat

end

end A278610.P17966875854478386011

/-! ## A278610.P3833125848586706380

`A185254(A265764(n+1))`
-/

namespace A278610.P3833125848586706380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185254 (A265764 (n + 1)).toNat

end

end A278610.P3833125848586706380

/-!
# A278612: Sum of terms in level n of TRIP - Stern sequence associated with permutation triple (e, e, e).

The programs for A278612, the canonical program `A278612.P9452074806198134710` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278612 has offset 0).

The definition of A278612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278612.P1025279970560941326

`A271896(n)+A271897(n)+A271898(n)`
-/

namespace A278612.P1025279970560941326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271896 n + A271897 n + A271898 n

end

end A278612.P1025279970560941326

namespace A278612

/-- `A271896(n)+A271897(n)+A271898(n)` -/
def P1025279970560941326.Spec : Prop :=
  ∀ n, P1025279970560941326.a n = A278612 n

end A278612

/-! ## A278612.P9452074806198134710

`4*a(n-1)-5*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=8, a(2)=22`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A278612

/-- `4*a(n-1)-5*a(n-2)+4*a(n-3)` -/
def P9452074806198134710.Spec : Prop :=
  ∀ n, P9452074806198134710.a n = A278612 n

theorem P9452074806198134710.correct : P9452074806198134710.Spec := by
  intro n
  simp only [A278612]

end A278612

/-! ## A278612.P5315478088633632593

`A271896(n+1)+A271898(n)`
-/

namespace A278612.P5315478088633632593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271896 (n + 1) + A271898 n

end

end A278612.P5315478088633632593

namespace A278612

/-- `A271896(n+1)+A271898(n)` -/
def P5315478088633632593.Spec : Prop :=
  ∀ n, P5315478088633632593.a n = A278612 n

end A278612

/-! ## A278612.P5360527188500108504

`A271897(n+1)+A271896(n)`
-/

namespace A278612.P5360527188500108504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271897 (n + 1) + A271896 n

end

end A278612.P5360527188500108504

namespace A278612

/-- `A271897(n+1)+A271896(n)` -/
def P5360527188500108504.Spec : Prop :=
  ∀ n, P5360527188500108504.a n = A278612 n

end A278612

/-! ## A278612.P3345396432887142098

`A271896(n)+Δ[A271896(n+1)]`
-/

namespace A278612.P3345396432887142098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271896 n + (f1 (n + 1) - f1 n)

end

end A278612.P3345396432887142098

namespace A278612

/-- `A271896(n)+Δ[A271896(n+1)]` -/
def P3345396432887142098.Spec : Prop :=
  ∀ n, P3345396432887142098.a n = A278612 n

end A278612

/-! ## A278612.P7413562951780734145

`3*a(n-1)-A271897(A004273(n)-n)` with `a(0)=3`
-/

namespace A278612.P7413562951780734145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) - A271897 (A004273 n - (n : ℤ)).toNat

end

end A278612.P7413562951780734145

namespace A278612

/-- `3*a(n-1)-A271897(A004273(n)-n)` -/
def P7413562951780734145.Spec : Prop :=
  ∀ n, P7413562951780734145.a n = A278612 n

end A278612

/-!
# A278613: Sum of terms in level n of TRIP - Stern sequence associated with permutation triple (e,e,132).

The programs for A278613, there is no canonical definition to state claims against.
-/

/-! ## A278613.P4631835478971282924

`A358587(A141769(n+1))+A000045(2*(n+2))`
-/

namespace A278613.P4631835478971282924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358587 (A141769 (n + 1)).toNat + A000045 (2 * (n + 2))

end

end A278613.P4631835478971282924

/-!
# A278614: Sum of terms in level n of TRIP - Stern sequence associated with permutation triple (e,12,12).

The programs for A278614, there is no canonical definition to state claims against.
-/

/-! ## A278614.P4635674985131273040

`A008615(A083034(10*a(n-1)-1))` with `a(0)=3`
-/

namespace A278614.P4635674985131273040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A008615 (A083034 (10 * a (n - 1) - 1).toNat).toNat

end

end A278614.P4635674985131273040

/-!
# A278615: Sum of terms in level n of TRIP - Stern sequence associated with permutation triple (e,13,23).

The programs for A278615, the canonical program `A278615.P1388989089013917215` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278615 has offset 0).

The definition of A278615 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A271893, A271894, A271895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278615.P1388989089013917215

`A271893(n)+A271894(n)+A271895(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A278615

/-- `A271893(n)+A271894(n)+A271895(n)` -/
def P1388989089013917215.Spec : Prop :=
  ∀ n, P1388989089013917215.a n = A278615 n

theorem P1388989089013917215.correct : P1388989089013917215.Spec := by
  intro n
  simp only [A278615]

end A278615

/-! ## A278615.P15348286357022245833

`A271894(n)+Δ[A271893(n)]`
-/

namespace A278615.P15348286357022245833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271894 n + (f1 (n + 1) - f1 n)

end

end A278615.P15348286357022245833

namespace A278615

/-- `A271894(n)+Δ[A271893(n)]` -/
def P15348286357022245833.Spec : Prop :=
  ∀ n, P15348286357022245833.a n = A278615 n

end A278615

/-! ## A278615.P17897843341813796970

`Δ[A271895(n)+A271894(n)]`
-/

namespace A278615.P17897843341813796970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271895 n + A271894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278615.P17897843341813796970

namespace A278615

/-- `Δ[A271895(n)+A271894(n)]` -/
def P17897843341813796970.Spec : Prop :=
  ∀ n, P17897843341813796970.a n = A278615 n

end A278615

/-! ## A278615.P12037494241345977258

`A271893(n+1)+A271894(n)-A271893(n)`
-/

namespace A278615.P12037494241345977258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271893 (n + 1) + (A271894 n - A271893 n)

end

end A278615.P12037494241345977258

namespace A278615

/-- `A271893(n+1)+A271894(n)-A271893(n)` -/
def P12037494241345977258.Spec : Prop :=
  ∀ n, P12037494241345977258.a n = A278615 n

end A278615

/-! ## A278615.P5630176867875869671

`A271894(n+1)+A271894(n)-A271895(n)`
-/

namespace A278615.P5630176867875869671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271894 (n + 1) + (A271894 n - A271895 n)

end

end A278615.P5630176867875869671

namespace A278615

/-- `A271894(n+1)+A271894(n)-A271895(n)` -/
def P5630176867875869671.Spec : Prop :=
  ∀ n, P5630176867875869671.a n = A278615 n

end A278615

/-! ## A278615.P9306620184476494255

`A271893(n+2)/2-A271893(n)`
-/

namespace A278615.P9306620184476494255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271893 (n + 2) : ℚ) / 2 - (A271893 n : ℚ)

end

end A278615.P9306620184476494255

namespace A278615

/-- `A271893(n+2)/2-A271893(n)` -/
def P9306620184476494255.Spec : Prop :=
  ∀ n, P9306620184476494255.a n = (A278615 n : ℚ)

end A278615

/-!
# A278616: Sum of terms in level n of TRIP - Stern sequence associated with permutation triple (e,13,132).

The programs for A278616, there is no canonical definition to state claims against.
-/

/-! ## A278616.P5088037461965070973

`A073750(A333504(n))+A000045(2*(n+2))`
-/

namespace A278616.P5088037461965070973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (A333504 n).toNat + A000045 (2 * (n + 2))

end

end A278616.P5088037461965070973

/-!
# A278617: Number of distinct odd primes less than or equal to 2n-3 that appear as a part in the partitions of 2n into two parts.

The programs for A278617, the canonical program `A278617.P18364928375276200259` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278617 has offset 1).

The definition of A278617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278617.P5664271899003767999

`∑[char[ceil(p?[2*n+1]/2)]]`
-/

namespace A278617.P5664271899003767999
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℚ) / 2⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P5664271899003767999

namespace A278617

/-- `∑[char[ceil(p?[2*n+1]/2)]]` -/
def P5664271899003767999.Spec : Prop :=
  ∀ n, (P5664271899003767999.a n : ℤ) = A278617 (n + 1)

end A278617

/-! ## A278617.P5487376307402904164

`∑[char[round(p?[2*n+1]/2)]]`
-/

namespace A278617.P5487376307402904164
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℚ) / 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P5487376307402904164

namespace A278617

/-- `∑[char[round(p?[2*n+1]/2)]]` -/
def P5487376307402904164.Spec : Prop :=
  ∀ n, (P5487376307402904164.a n : ℤ) = A278617 (n + 1)

end A278617

/-! ## A278617.P18364928375276200259

`A084360(Δ[n²])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A278617

/-- `A084360(Δ[n²])` -/
def P18364928375276200259.Spec : Prop :=
  ∀ n, P18364928375276200259.a n = A278617 (n + 1)

theorem P18364928375276200259.correct : P18364928375276200259.Spec := by
  intro n
  simp only [A278617, Nat.add_sub_cancel]

end A278617

/-! ## A278617.P4272168152637623914

`∑[char[A006254(n+1)]]`
-/

namespace A278617.P4272168152637623914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P4272168152637623914

namespace A278617

/-- `∑[char[A006254(n+1)]]` -/
def P4272168152637623914.Spec : Prop :=
  ∀ n, (P4272168152637623914.a n : ℤ) = A278617 (n + 1)

end A278617

/-! ## A278617.P10400239148980077356

`∑[char[A130291(n+1)]]`
-/

namespace A278617.P10400239148980077356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P10400239148980077356

namespace A278617

/-- `∑[char[A130291(n+1)]]` -/
def P10400239148980077356.Spec : Prop :=
  ∀ n, (P10400239148980077356.a n : ℤ) = A278617 (n + 1)

end A278617

/-! ## A278617.P15064526426672555552

`∑[char[A111333(n+2)]]`
-/

namespace A278617.P15064526426672555552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P15064526426672555552

namespace A278617

/-- `∑[char[A111333(n+2)]]` -/
def P15064526426672555552.Spec : Prop :=
  ∀ n, (P15064526426672555552.a n : ℤ) = A278617 (n + 1)

end A278617

/-! ## A278617.P1968448571214772796

`∑[char[A005097(n+1)+1]]`
-/

namespace A278617.P1968448571214772796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P1968448571214772796

namespace A278617

/-- `∑[char[A005097(n+1)+1]]` -/
def P1968448571214772796.Spec : Prop :=
  ∀ n, (P1968448571214772796.a n : ℤ) = A278617 (n + 1)

end A278617

/-! ## A278617.P5082818163311457410

`∑[char[A067076(n+1)+2]]`
-/

namespace A278617.P5082818163311457410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P5082818163311457410

namespace A278617

/-- `∑[char[A067076(n+1)+2]]` -/
def P5082818163311457410.Spec : Prop :=
  ∀ n, (P5082818163311457410.a n : ℤ) = A278617 (n + 1)

end A278617

/-! ## A278617.P13017360009169890204

`n-∑[char[A104275(n+1)]]`
-/

namespace A278617.P13017360009169890204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A278617.P13017360009169890204

namespace A278617

/-- `n-∑[char[A104275(n+1)]]` -/
def P13017360009169890204.Spec : Prop :=
  ∀ n, P13017360009169890204.a n = A278617 (n + 1)

end A278617

/-! ## A278617.P15050417850701532140

`∑[char[ceil(A000040(n+2)/2)]]`
-/

namespace A278617.P15050417850701532140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 2) : ℚ) / 2⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P15050417850701532140

namespace A278617

/-- `∑[char[ceil(A000040(n+2)/2)]]` -/
def P15050417850701532140.Spec : Prop :=
  ∀ n, (P15050417850701532140.a n : ℤ) = A278617 (n + 1)

end A278617

/-! ## A278617.P12486734652149008749

`∑[char[ceil(cosh(log(A000040(n+1))))]]`
-/

namespace A278617.P12486734652149008749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A000040 (n + 1) : ℝ))⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P12486734652149008749

namespace A278617

/-- `∑[char[ceil(cosh(log(A000040(n+1))))]]` -/
def P12486734652149008749.Spec : Prop :=
  ∀ n, (P12486734652149008749.a n : ℤ) = A278617 (n + 1)

end A278617

/-! ## A278617.P11032374269940046745

`A084360(2*n+1)%(n+1)`
-/

namespace A278617.P11032374269940046745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084360 (2 * n + 1)) (n + 1 : ℤ)

end

end A278617.P11032374269940046745

namespace A278617

/-- `A084360(2*n+1)%(n+1)` -/
def P11032374269940046745.Spec : Prop :=
  ∀ n, P11032374269940046745.a n = A278617 (n + 1)

end A278617

/-! ## A278617.P7554457884760356880

`∑[char[A006530(4*n+2)-n]]`
-/

namespace A278617.P7554457884760356880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 2) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P7554457884760356880

namespace A278617

/-- `∑[char[A006530(4*n+2)-n]]` -/
def P7554457884760356880.Spec : Prop :=
  ∀ n, (P7554457884760356880.a n : ℤ) = A278617 (n + 1)

end A278617

/-! ## A278617.P7900625068202733690

`∑[char[floor(A006530(n+2)/2)+1]]`
-/

namespace A278617.P7900625068202733690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (n + 2) : ℚ) / 2⌋ + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P7900625068202733690

namespace A278617

/-- `∑[char[floor(A006530(n+2)/2)+1]]` -/
def P7900625068202733690.Spec : Prop :=
  ∀ n, (P7900625068202733690.a n : ℤ) = A278617 (n + 1)

end A278617

/-! ## A278617.P1801766527361902136

`∑[char[floor(A020639(n+2)/2)+1]]`
-/

namespace A278617.P1801766527361902136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020639 (n + 2) : ℚ) / 2⌋ + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P1801766527361902136

namespace A278617

/-- `∑[char[floor(A020639(n+2)/2)+1]]` -/
def P1801766527361902136.Spec : Prop :=
  ∀ n, (P1801766527361902136.a n : ℤ) = A278617 (n + 1)

end A278617

/-! ## A278617.P3917971216739054181

`∑[char[ceil(A006530(3*(n+1))/2)]]`
-/

namespace A278617.P3917971216739054181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (3 * (n + 1)) : ℚ) / 2⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P3917971216739054181

namespace A278617

/-- `∑[char[ceil(A006530(3*(n+1))/2)]]` -/
def P3917971216739054181.Spec : Prop :=
  ∀ n, (P3917971216739054181.a n : ℤ) = A278617 (n + 1)

end A278617

/-! ## A278617.P16046394600108860994

`∑[char[ceil(A020639(2*n+3)/2)]]`
-/

namespace A278617.P16046394600108860994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (2 * n + 3) : ℚ) / 2⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278617.P16046394600108860994

namespace A278617

/-- `∑[char[ceil(A020639(2*n+3)/2)]]` -/
def P16046394600108860994.Spec : Prop :=
  ∀ n, (P16046394600108860994.a n : ℤ) = A278617 (n + 1)

end A278617

/-!
# A278618: a(n) = Sum_{j=0..n/2} binomial(n-j-1,n-2*j)*binomial(2*n+1,j).

The programs for A278618, there is no canonical definition to state claims against.
-/

/-! ## A278618.P9553933895032174104

`Δ[n²]*A055113(n+1)`
-/

namespace A278618.P9553933895032174104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A055113 (n + 1)

end

end A278618.P9553933895032174104

/-! ## A278618.P12149904669008526815

`(A000108(n)-A111160(n))*Δ[n²]`
-/

namespace A278618.P12149904669008526815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000108 n - A111160 n) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A278618.P12149904669008526815

/-! ## A278618.P11616398192845009867

`A055113(n+1)*A154958(A008458(n))`
-/

namespace A278618.P11616398192845009867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055113 (n + 1) * A154958 (A008458 n).toNat

end

end A278618.P11616398192845009867

/-! ## A278618.P11396692621364361501

`A212696(n)+A212696(n)-A055113(n+1)`
-/

namespace A278618.P11396692621364361501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212696 n + (A212696 n - A055113 (n + 1))

end

end A278618.P11396692621364361501

/-! ## A278618.P994153676285114132

`A055113(n+1)*A212696(2*n)/A055113(2*n+1)`
-/

namespace A278618.P994153676285114132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055113 (n + 1) * A212696 (2 * n) : ℚ) / (A055113 (2 * n + 1) : ℚ)

end

end A278618.P994153676285114132

/-!
# A278619: Hexagonal spiral constructed on the nodes of the triangular net in which each new term is the sum of its two largest neighbors in the structure.

The programs for A278619, there is no canonical definition to state claims against.
-/

/-! ## A278619.P16513235608496700063

`∑[A110591(A035056(n))-char[1]]`
-/

namespace A278619.P16513235608496700063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A035056 n).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278619.P16513235608496700063

/-! ## A278619.P6436409635224695664

`A057428(n)+∑[A110591(A035056(n))]`
-/

namespace A278619.P6436409635224695664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A035056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278619.P6436409635224695664

/-! ## A278619.P1362580039037671426

`∑[A110591(A035056(n))]-A057427(n)`
-/

namespace A278619.P1362580039037671426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A035056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A278619.P1362580039037671426

/-! ## A278619.P16726753875148331809

`∑[A110591(A035056(n))]-A178334(n)`
-/

namespace A278619.P16726753875148331809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A035056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178334 n

end

end A278619.P16726753875148331809

/-! ## A278619.P3267363692131908847

`∑[A110591(A035056(n))]-A000045(n²%(n+1))`
-/

namespace A278619.P3267363692131908847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A035056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 (n ^ 2 % (n + 1))

end

end A278619.P3267363692131908847

/-!
# A278620: Expansion of x/(1 - 99*x + 99*x^2 - x^3).

The programs for A278620, the canonical program `A278620.P13722334180267546081` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278620 has offset 0).

The definition of A278620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278620.P13722334180267546081

`98*a(n-1)-a(n-2)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A278620

/-- `98*a(n-1)-a(n-2)+1` -/
def P13722334180267546081.Spec : Prop :=
  ∀ n, P13722334180267546081.a n = A278620 n

theorem P13722334180267546081.correct : P13722334180267546081.Spec := by
  intro n
  simp only [A278620]

end A278620

/-! ## A278620.P10313193074911689877

`A200993(n)/10`
-/

namespace A278620.P10313193074911689877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200993 n : ℚ) / 10

end

end A278620.P10313193074911689877

namespace A278620

/-- `A200993(n)/10` -/
def P10313193074911689877.Spec : Prop :=
  ∀ n, P10313193074911689877.a n = (A278620 n : ℚ)

end A278620

/-! ## A278620.P4623100160936802482

`A200994(n)/15`
-/

namespace A278620.P4623100160936802482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200994 n : ℚ) / 15

end

end A278620.P4623100160936802482

namespace A278620

/-- `A200994(n)/15` -/
def P4623100160936802482.Spec : Prop :=
  ∀ n, P4623100160936802482.a n = (A278620 n : ℚ)

end A278620

/-! ## A278620.P5037176876965589900

`A045502(n)/40`
-/

namespace A278620.P5037176876965589900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045502 n : ℚ) / 40

end

end A278620.P5037176876965589900

namespace A278620

/-- `A045502(n)/40` -/
def P5037176876965589900.Spec : Prop :=
  ∀ n, P5037176876965589900.a n = (A278620 n : ℚ)

end A278620

/-! ## A278620.P18093857671921322403

`floor((5+2*sqrt(6))^(2*n+1)/960)`
-/

namespace A278620.P18093857671921322403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 + 2 * Real.sqrt (6 : ℝ)) ^ (2 * n + 1) / 960⌋

end

end A278620.P18093857671921322403

namespace A278620

/-- `floor((5+2*sqrt(6))^(2*n+1)/960)` -/
def P18093857671921322403.Spec : Prop :=
  ∀ n, P18093857671921322403.a n = A278620 n

end A278620

/-! ## A278620.P13842020997018895234

`∑[98*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A278620.P13842020997018895234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  98 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278620.P13842020997018895234

namespace A278620

/-- `∑[98*a(n-1)-a(n-2)]` -/
def P13842020997018895234.Spec : Prop :=
  ∀ n, P13842020997018895234.a n = A278620 n

end A278620

/-! ## A278620.P6489289098662863760

`A108741(n)-a(n-1)` with `a(0)=0`
-/

namespace A278620.P6489289098662863760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A108741 n - a (n - 1)

end

end A278620.P6489289098662863760

namespace A278620

/-- `A108741(n)-a(n-1)` -/
def P6489289098662863760.Spec : Prop :=
  ∀ n, P6489289098662863760.a n = A278620 n

end A278620

/-! ## A278620.P17339055484937290009

`A352181(n)/5`
-/

namespace A278620.P17339055484937290009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352181 n : ℚ) / 5

end

end A278620.P17339055484937290009

namespace A278620

/-- `A352181(n)/5` -/
def P17339055484937290009.Spec : Prop :=
  ∀ n, P17339055484937290009.a n = (A278620 n : ℚ)

end A278620

/-! ## A278620.P13227041214109749297

`∑[A072818(n)/20]`
-/

namespace A278620.P13227041214109749297
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072818 n : ℚ) / 20

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278620.P13227041214109749297

namespace A278620

/-- `∑[A072818(n)/20]` -/
def P13227041214109749297.Spec : Prop :=
  ∀ n, P13227041214109749297.a n = (A278620 n : ℚ)

end A278620

/-! ## A278620.P5378113497107497696

`∑[A004189(A005843(n))/10]`
-/

namespace A278620.P5378113497107497696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004189 (A005843 n).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278620.P5378113497107497696

namespace A278620

/-- `∑[A004189(A005843(n))/10]` -/
def P5378113497107497696.Spec : Prop :=
  ∀ n, P5378113497107497696.a n = (A278620 n : ℚ)

end A278620

/-!
# A278621: Number of nX2 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278621, there is no canonical definition to state claims against.
-/

/-! ## A278621.P8879710227286322732

`A278627(∑[n+1]+2)`
-/

namespace A278621.P8879710227286322732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278621.P8879710227286322732

/-! ## A278621.P12456992398807176227

`record[gcd(A002262(n), A278627(n+2))]`
-/

namespace A278621.P12456992398807176227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A278627 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278621.P12456992398807176227

/-! ## A278621.P9649528414707409936

`record[root(A278627(n+2), A158405(n+1))]`
-/

namespace A278621.P9649528414707409936
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A278627 (n + 2) : ℝ) ^ (1 / (A158405 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278621.P9649528414707409936

/-! ## A278621.P1925570473767930360

`A278627(A000096(n+1))+A235145(n)`
-/

namespace A278621.P1925570473767930360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A000096 (n + 1)).toNat + A235145 n

end

end A278621.P1925570473767930360

/-! ## A278621.P8132892404547439892

`A278627(A000096(n+1))*A304042(n)`
-/

namespace A278621.P8132892404547439892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A000096 (n + 1)).toNat * A304042 n

end

end A278621.P8132892404547439892

/-!
# A278622: Number of nX3 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278622, there is no canonical definition to state claims against.
-/

/-! ## A278622.P9920535214487223285

`A278627(∑[n+2]+4)`
-/

namespace A278622.P9920535214487223285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278622.P9920535214487223285

/-! ## A278622.P5061600609472469529

`and(-1, A278627(A167614(n+1)))`
-/

namespace A278622.P5061600609472469529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A278627 (A167614 (n + 1)).toNat)

end

end A278622.P5061600609472469529

/-! ## A278622.P6599513055860646257

`A278627(A167614(n+1))-A308976(n)`
-/

namespace A278622.P6599513055860646257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A167614 (n + 1)).toNat - A308976 n

end

end A278622.P6599513055860646257

/-! ## A278622.P8651974432122073200

`A278627(A167614(n+1))%A133861(n+1)`
-/

namespace A278622.P8651974432122073200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278627 (A167614 (n + 1)).toNat) (A133861 (n + 1))

end

end A278622.P8651974432122073200

/-! ## A278622.P16687576620408730476

`A278627(A034856(n+2))%A028020(n+1)`
-/

namespace A278622.P16687576620408730476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278627 (A034856 (n + 2)).toNat) (A028020 (n + 1))

end

end A278622.P16687576620408730476

/-!
# A278623: Number of n X 4 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278623, there is no canonical definition to state claims against.
-/

/-! ## A278623.P10381656232954816372

`A278627(A141214(n)+7)`
-/

namespace A278623.P10381656232954816372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A141214 n + 7).toNat

end

end A278623.P10381656232954816372

/-! ## A278623.P1829696151356812868

`A278627(A052905(n)+9)`
-/

namespace A278623.P1829696151356812868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A052905 n + 9).toNat

end

end A278623.P1829696151356812868

/-! ## A278623.P10175181512643281180

`A278627(A055999(n)+10)`
-/

namespace A278623.P10175181512643281180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A055999 n + 10).toNat

end

end A278623.P10175181512643281180

/-! ## A278623.P9673339785373208636

`A278627(A167614(n+2)+1)`
-/

namespace A278623.P9673339785373208636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A167614 (n + 2) + 1).toNat

end

end A278623.P9673339785373208636

/-! ## A278623.P13148490009832078884

`A278627(A374004(n+1))`
-/

namespace A278623.P13148490009832078884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A374004 (n + 1)).toNat

end

end A278623.P13148490009832078884

/-!
# A278624: Number of nX5 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278624, there is no canonical definition to state claims against.
-/

/-! ## A278624.P11118653446417424753

`A278627(A155212(n)+13)`
-/

namespace A278624.P11118653446417424753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A155212 n + 13).toNat

end

end A278624.P11118653446417424753

/-! ## A278624.P14178728111004642555

`A278627(A056000(n)+15)`
-/

namespace A278624.P14178728111004642555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A056000 n + 15).toNat

end

end A278624.P14178728111004642555

/-! ## A278624.P3207189654271938166

`A278627(eq[6, A131818(n+1)])`
-/

namespace A278624.P3207189654271938166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278624.P3207189654271938166

/-! ## A278624.P15103889662311144474

`A278627(eq[3, A025581(n)]+9)`
-/

namespace A278624.P15103889662311144474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 9)

end

end A278624.P15103889662311144474

/-! ## A278624.P4010088399916451801

`A278627(A374005(n+1))`
-/

namespace A278624.P4010088399916451801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A374005 (n + 1)).toNat

end

end A278624.P4010088399916451801

/-!
# A278625: Number of nX6 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278625, there is no canonical definition to state claims against.
-/

/-! ## A278625.P3099169309766217703

`A278627(A056115(n)+21)`
-/

namespace A278625.P3099169309766217703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A056115 n + 21).toNat

end

end A278625.P3099169309766217703

/-! ## A278625.P5172720035048764400

`A278627(A167499(n+4)+1)`
-/

namespace A278625.P5172720035048764400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A167499 (n + 4) + 1).toNat

end

end A278625.P5172720035048764400

/-! ## A278625.P7107377556162503293

`A278627(eq[7, A131818(n+1)])`
-/

namespace A278625.P7107377556162503293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278625.P7107377556162503293

/-! ## A278625.P17187306448140079413

`A278627(A374007(n+1))`
-/

namespace A278625.P17187306448140079413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A374007 (n + 1)).toNat

end

end A278625.P17187306448140079413

/-! ## A278625.P3414732587279262384

`A278627(eq[5, A193592(n)])`
-/

namespace A278625.P3414732587279262384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278625.P3414732587279262384

/-!
# A278626: Number of nX7 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278626, there is no canonical definition to state claims against.
-/

/-! ## A278626.P5705715009209142762

`A278627(A000217(n+6)+7)`
-/

namespace A278626.P5705715009209142762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A000217 (n + 6) + 7).toNat

end

end A278626.P5705715009209142762

/-! ## A278626.P10952642362026702794

`A278627(eq[8, A131818(n+1)])`
-/

namespace A278626.P10952642362026702794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278626.P10952642362026702794

/-! ## A278626.P12291592033624288704

`A278627(A374008(n+1))`
-/

namespace A278626.P12291592033624288704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278627 (A374008 (n + 1)).toNat

end

end A278626.P12291592033624288704

/-!
# A278628: Number of nX2 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278628, there is no canonical definition to state claims against.
-/

/-! ## A278628.P12507906055111124567

`A278634(∑[n+1]+2)`
-/

namespace A278628.P12507906055111124567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278628.P12507906055111124567

/-! ## A278628.P12539887504341283950

`record[A278634(∑[A152271(n)])]`
-/

namespace A278628.P12539887504341283950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278628.P12539887504341283950

/-! ## A278628.P5640482427037141237

`record[A097806(n)*A278634(n+1)]`
-/

namespace A278628.P5640482427037141237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A278634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278628.P5640482427037141237

/-! ## A278628.P16561299371386468862

`record[A023531(n+1)*A278634(n+1)]`
-/

namespace A278628.P16561299371386468862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1) * A278634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278628.P16561299371386468862

/-! ## A278628.P114260075362690074

`record[A010054(n+2)*A278634(n+1)]`
-/

namespace A278628.P114260075362690074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2) * A278634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278628.P114260075362690074

/-!
# A278629: Number of nX3 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278629, there is no canonical definition to state claims against.
-/

/-! ## A278629.P5610684865490182267

`A278634(∑[n+2]+4)`
-/

namespace A278629.P5610684865490182267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278629.P5610684865490182267

/-! ## A278629.P5076046792135234084

`A278634(A167614(n+1))+A025439(n)`
-/

namespace A278629.P5076046792135234084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A167614 (n + 1)).toNat + A025439 n

end

end A278629.P5076046792135234084

/-! ## A278629.P17497287589213422070

`A278634(A167614(n+1))+A185236(n)`
-/

namespace A278629.P17497287589213422070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A167614 (n + 1)).toNat + A185236 n

end

end A278629.P17497287589213422070

/-! ## A278629.P16412948953582558794

`A278634(A167614(n+1))+A185284(n)`
-/

namespace A278629.P16412948953582558794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A167614 (n + 1)).toNat + A185284 n

end

end A278629.P16412948953582558794

/-! ## A278629.P5114106166827475629

`or(A010894(n), A278634(A167614(n+1)))`
-/

namespace A278629.P5114106166827475629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 (n + 21)) (A278634 (A167614 (n + 1)).toNat)

end

end A278629.P5114106166827475629

/-!
# A278630: Number of nX4 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278630, there is no canonical definition to state claims against.
-/

/-! ## A278630.P9734145489849273569

`A278634(A052905(n)+9)`
-/

namespace A278630.P9734145489849273569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A052905 n + 9).toNat

end

end A278630.P9734145489849273569

/-! ## A278630.P4362505188208971239

`A278634(A055999(n)+10)`
-/

namespace A278630.P4362505188208971239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A055999 n + 10).toNat

end

end A278630.P4362505188208971239

/-! ## A278630.P14989532200605725740

`A278634(A167614(n+2)+1)`
-/

namespace A278630.P14989532200605725740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A167614 (n + 2) + 1).toNat

end

end A278630.P14989532200605725740

/-! ## A278630.P14927342117857793190

`A278634(A141214(n+1))`
-/

namespace A278630.P14927342117857793190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A141214 (n + 1)).toNat

end

end A278630.P14927342117857793190

/-! ## A278630.P16850616632187933239

`A278634(A374004(n+1))`
-/

namespace A278630.P16850616632187933239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A374004 (n + 1)).toNat

end

end A278630.P16850616632187933239

/-!
# A278631: Number of nX5 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278631, there is no canonical definition to state claims against.
-/

/-! ## A278631.P2468218941824347237

`A278634(A155212(n)+13)`
-/

namespace A278631.P2468218941824347237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A155212 n + 13).toNat

end

end A278631.P2468218941824347237

/-! ## A278631.P2594679207058333271

`A278634(A056000(n)+15)`
-/

namespace A278631.P2594679207058333271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A056000 n + 15).toNat

end

end A278631.P2594679207058333271

/-! ## A278631.P16944223816875098123

`A278634(eq[3, A025581(n)]+9)`
-/

namespace A278631.P16944223816875098123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 9)

end

end A278631.P16944223816875098123

/-! ## A278631.P14342070789925187609

`A278634(A374005(n+1))`
-/

namespace A278631.P14342070789925187609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A374005 (n + 1)).toNat

end

end A278631.P14342070789925187609

/-! ## A278631.P1521644112721967524

`A278634(A056115(n)+11)`
-/

namespace A278631.P1521644112721967524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A056115 n + 11).toNat

end

end A278631.P1521644112721967524

/-!
# A278632: Number of nX6 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278632, there is no canonical definition to state claims against.
-/

/-! ## A278632.P6103062820012406300

`A278634(A167499(n+4)+1)`
-/

namespace A278632.P6103062820012406300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A167499 (n + 4) + 1).toNat

end

end A278632.P6103062820012406300

/-! ## A278632.P7040488882284558923

`A278634(A374007(n+1))`
-/

namespace A278632.P7040488882284558923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A374007 (n + 1)).toNat

end

end A278632.P7040488882284558923

/-! ## A278632.P17426378248277808116

`A278634(eq[16, A141020(n)])`
-/

namespace A278632.P17426378248277808116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278632.P17426378248277808116

/-!
# A278633: Number of nX7 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278633, there is no canonical definition to state claims against.
-/

/-! ## A278633.P3737214814746488449

`A278634(A374008(n+1))`
-/

namespace A278633.P3737214814746488449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (A374008 (n + 1)).toNat

end

end A278633.P3737214814746488449

/-! ## A278633.P18444816816330041759

`A278634(eq[6, A193592(n)])`
-/

namespace A278633.P18444816816330041759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278633.P18444816816330041759

/-!
# A278636: List of dense centipedes in increasing order of nomenclature.

The programs for A278636, there is no canonical definition to state claims against.
-/

/-! ## A278636.P9525570383448953012

`A289508(A083574(n+1)^4)`
-/

namespace A278636.P9525570383448953012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A083574 (n + 1) ^ 4).toNat

end

end A278636.P9525570383448953012

/-! ## A278636.P3891069786013718837

`A319689(A083574(n+1)^4)`
-/

namespace A278636.P3891069786013718837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319689 (A083574 (n + 1) ^ 4).toNat

end

end A278636.P3891069786013718837

/-! ## A278636.P1260581890042459713

`A289508(A083574(n+1)²²)`
-/

namespace A278636.P1260581890042459713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 ((A083574 (n + 1) ^ 2) ^ 2).toNat

end

end A278636.P1260581890042459713

/-! ## A278636.P5954073096020796488

`A319689(A083574(n+1)²²)`
-/

namespace A278636.P5954073096020796488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319689 ((A083574 (n + 1) ^ 2) ^ 2).toNat

end

end A278636.P5954073096020796488

/-! ## A278636.P1806979083260113227

`A061395(4*A083574(n+1)^4)`
-/

namespace A278636.P1806979083260113227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (4 * A083574 (n + 1) ^ 4).toNat

end

end A278636.P1806979083260113227

/-!
# A278637: Numbers k such that Fibonacci(k) is either prime or semiprime.

The programs for A278637, there is no canonical definition to state claims against.
-/

/-! ## A278637.P8766462217865242214

`∪[A001605(n+1), A072381(n+1)]`
-/

namespace A278637.P8766462217865242214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A278637.P8766462217865242214

/-! ## A278637.P16012263158083541586

`eq[1, A000045(A038575(n))]`
-/

namespace A278637.P16012263158083541586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A038575 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278637.P16012263158083541586

/-! ## A278637.P9612343235249535067

`eq[1, A195177(A038575(n)²)]`
-/

namespace A278637.P9612343235249535067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A038575 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278637.P9612343235249535067

/-! ## A278637.P9582710468286758642

`eq[2, A014682(A038575(n)²)]`
-/

namespace A278637.P9582710468286758642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A038575 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278637.P9582710468286758642

/-! ## A278637.P10502187147414482925

`eq[2, A278234(A038575(n)²)]`
-/

namespace A278637.P10502187147414482925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278234 (A038575 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278637.P10502187147414482925

/-! ## A278637.P3671246507236461998

`eq[3, A052938(A038575(n)²)]`
-/

namespace A278637.P3671246507236461998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A038575 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278637.P3671246507236461998

/-! ## A278637.P4549960279384734185

`eq[1, A067661(A038575(n)+2)]`
-/

namespace A278637.P4549960279384734185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (A038575 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278637.P4549960279384734185

/-! ## A278637.P2548039274763373080

`eq[1, A195177(2*A038575(n))]`
-/

namespace A278637.P2548039274763373080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (2 * A038575 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278637.P2548039274763373080

/-! ## A278637.P12354152972060291603

`eq[3, A000040(a(A038575(n)))]` with `a(0)=1`
-/

namespace A278637.P12354152972060291603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A038575 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278637.P12354152972060291603

/-! ## A278637.P437634863914516013

`eq[A001222(A038575(n)+2), A038575(n)]`
-/

namespace A278637.P437634863914516013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038575 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278637.P437634863914516013

/-!
# A278638: Numbers n such that 1/n is a difference of Egyptian fractions with all denominators < n.

The programs for A278638, there is no canonical definition to state claims against.
-/

/-! ## A278638.P13342761395205251081

`lt[A166549(A001157(n+3)), A212256(n)]`
-/

namespace A278638.P13342761395205251081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166549 (A001157 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278638.P13342761395205251081

/-! ## A278638.P14910186476073698502

`lt[A333380(n+1), A185224(A212256(n))]`
-/

namespace A278638.P14910186476073698502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185224 (A212256 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278638.P14910186476073698502

/-! ## A278638.P12843137044822513429

`lt[A255593(A208262(n+1)), A002445(n)]`
-/

namespace A278638.P12843137044822513429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255593 (A208262 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278638.P12843137044822513429

/-! ## A278638.P8290503615221952200

`A036445(A336583(n+2))`
-/

namespace A278638.P8290503615221952200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (A336583 (n + 2)).toNat

end

end A278638.P8290503615221952200

/-! ## A278638.P14119364833801388317

`lt[A209389(A004277(n)), A359899(n)]`
-/

namespace A278638.P14119364833801388317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209389 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359899 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278638.P14119364833801388317

/-!
# A278639: Number of pairs of orientable necklaces with n beads and up to 3 colors; i.e., turning the necklace over does not leave it unchanged. The turned-over necklace is not included in the count.

The programs for A278639, there is no canonical definition to state claims against.
-/

/-! ## A278639.P12173484640657060593

`A027671(n)-A182751(n+1)`
-/

namespace A278639.P12173484640657060593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027671 n - A182751 (n + 1)

end

end A278639.P12173484640657060593

/-! ## A278639.P13392231417190923009

`A027671(n)-A182522(2%(n+2)+n)`
-/

namespace A278639.P13392231417190923009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027671 n - A182522 (2 % (n + 2) + n)

end

end A278639.P13392231417190923009

/-! ## A278639.P5149456104974528173

`A001867(n)-A027671(n)`
-/

namespace A278639.P5149456104974528173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 n - A027671 n

end

end A278639.P5149456104974528173

/-! ## A278639.P2368484425867901872

`(A001867(n)-A182751(n+1))/2`
-/

namespace A278639.P2368484425867901872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001867 n - A182751 (n + 1) : ℚ) / 2

end

end A278639.P2368484425867901872

/-! ## A278639.P14377901563775089048

`A293496(∑[n+2]-1)`
-/

namespace A278639.P14377901563775089048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293496 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A278639.P14377901563775089048

/-!
# A278640: Number of pairs of orientable necklaces with n beads and up to 4 colors; i.e., turning the necklace over does not leave it unchanged. The turned-over necklace is not included in the count.

The programs for A278640, there is no canonical definition to state claims against.
-/

/-! ## A278640.P16974200285575325896

`A293496(∑[n+3])`
-/

namespace A278640.P16974200285575325896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293496 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278640.P16974200285575325896

/-! ## A278640.P7317292645393073605

`A293496(A141214(n))%-9*4^n`
-/

namespace A278640.P7317292645393073605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293496 (A141214 n).toNat) (-(9 * 4 ^ n : ℤ))

end

end A278640.P7317292645393073605

/-! ## A278640.P3253335554536219554

`A293496(Δ[A006503(n)])%A126923(n)`
-/

namespace A278640.P3253335554536219554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293496 (f1 (n + 1) - f1 n).toNat) (A126923 n)

end

end A278640.P3253335554536219554

/-! ## A278640.P5821004286731344996

`A001868(n)-(A123045(n)+A000079(n))`
-/

namespace A278640.P5821004286731344996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 n - (A123045 n + A000079 n)

end

end A278640.P5821004286731344996

/-! ## A278640.P2282666229695682610

`lcm((-1)^A000040(n+2), A293496(A141214(n)))`
-/

namespace A278640.P2282666229695682610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A000040 (n + 2) : ℤ))) (A293496 (A141214 n).toNat)

end

end A278640.P2282666229695682610

/-!
# A278641: Number of pairs of orientable necklaces with n beads and up to 5 colors; i.e., turning the necklace over does not leave it unchanged. The turned-over necklace is not included in the count.

The programs for A278641, there is no canonical definition to state claims against.
-/

/-! ## A278641.P8223732509939433701

`A293496(∑[n+3]+n+3)`
-/

namespace A278641.P8223732509939433701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293496 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A278641.P8223732509939433701

/-! ## A278641.P2618141149621930816

`floor(record[A293496(n+1)/A284855(n+5)])`
-/

namespace A278641.P2618141149621930816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293496 (n + 1) : ℚ) / (A284855 (n + 5) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A278641.P2618141149621930816

/-!
# A278642: Number of pairs of orientable necklaces with n beads and up to 6 colors; i.e., turning the necklace over does not leave it unchanged. The turned-over necklace is not included in the count.

The programs for A278642, there is no canonical definition to state claims against.
-/

/-! ## A278642.P14463715006871168560

`A293496(A052905(n+2))`
-/

namespace A278642.P14463715006871168560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293496 (A052905 (n + 2)).toNat

end

end A278642.P14463715006871168560

/-! ## A278642.P2525143700927928681

`A293496(eq[4, A025581(n)])`
-/

namespace A278642.P2525143700927928681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293496 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278642.P2525143700927928681

/-! ## A278642.P1587127404969133129

`A293496(eq[16, A130321(n)])`
-/

namespace A278642.P1587127404969133129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293496 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278642.P1587127404969133129

/-! ## A278642.P12739784281642882986

`A293496(A000124(n+5)-6)`
-/

namespace A278642.P12739784281642882986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293496 (A000124 (n + 5) - 6).toNat

end

end A278642.P12739784281642882986

/-! ## A278642.P11318301820910782136

`A293496(eq[5, A004736(n+1)])`
-/

namespace A278642.P11318301820910782136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293496 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278642.P11318301820910782136

/-!
# A278644: Number of partitions of n into parts of sorts {1, 2, ... }.

The programs for A278644, there is no canonical definition to state claims against.
-/

/-! ## A278644.P18220689426330326644

`A248227(A128230(n))`
-/

namespace A278644.P18220689426330326644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A128230 n).toNat

end

end A278644.P18220689426330326644

/-! ## A278644.P14866888220231850722

`A110656(A292897(n))`
-/

namespace A278644.P14866888220231850722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A292897 n).toNat

end

end A278644.P14866888220231850722

/-!
# A278646: a(n) = ((2*n+1)/(n+1))*Sum_{j=0..n/2} binomial(n+1, j)*binomial(n-j-1, n-2*j).

The programs for A278646, the canonical program `A278646.P6809345885454626845` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278646 has offset 0).

The definition of A278646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278646.P6809345885454626845

`Δ[n²]*A005043(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A278646

/-- `Δ[n²]*A005043(n)` -/
def P6809345885454626845.Spec : Prop :=
  ∀ n, P6809345885454626845.a n = A278646 n

theorem P6809345885454626845.correct : P6809345885454626845.Spec := by
  intro n
  simp only [A278646]

end A278646

/-! ## A278646.P14531948304007400013

`abs(A099323(n+1))*Δ[n²]`
-/

namespace A278646.P14531948304007400013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099323 (n + 1)| * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A278646.P14531948304007400013

namespace A278646

/-- `abs(A099323(n+1))*Δ[n²]` -/
def P14531948304007400013.Spec : Prop :=
  ∀ n, P14531948304007400013.a n = A278646 n

end A278646

/-! ## A278646.P7068748366591784796

`A113682(n)-A309303(n)`
-/

namespace A278646.P7068748366591784796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113682 n - A309303 n

end

end A278646.P7068748366591784796

namespace A278646

/-- `A113682(n)-A309303(n)` -/
def P7068748366591784796.Spec : Prop :=
  ∀ n, P7068748366591784796.a n = A278646 n

end A278646

/-! ## A278646.P11235269422168611219

`A005043(n)*A005408(n)`
-/

namespace A278646.P11235269422168611219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A005408 n

end

end A278646.P11235269422168611219

namespace A278646

/-- `A005043(n)*A005408(n)` -/
def P11235269422168611219.Spec : Prop :=
  ∀ n, P11235269422168611219.a n = A278646 n

end A278646

/-! ## A278646.P9019370477359018044

`A005043(n)*A223134(n)`
-/

namespace A278646.P9019370477359018044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A223134 n

end

end A278646.P9019370477359018044

namespace A278646

/-- `A005043(n)*A223134(n)` -/
def P9019370477359018044.Spec : Prop :=
  ∀ n, P9019370477359018044.a n = A278646 n

end A278646

/-! ## A278646.P17693003938830256395

`A005043(n)*A267872(n)`
-/

namespace A278646.P17693003938830256395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A267872 n

end

end A278646.P17693003938830256395

namespace A278646

/-- `A005043(n)*A267872(n)` -/
def P17693003938830256395.Spec : Prop :=
  ∀ n, P17693003938830256395.a n = A278646 n

end A278646

/-! ## A278646.P6016027319868566376

`A005043(n)*A140139(n+1)`
-/

namespace A278646.P6016027319868566376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A140139 (n + 1)

end

end A278646.P6016027319868566376

namespace A278646

/-- `A005043(n)*A140139(n+1)` -/
def P6016027319868566376.Spec : Prop :=
  ∀ n, P6016027319868566376.a n = A278646 n

end A278646

/-! ## A278646.P3050168920168598226

`A005043(n)*A163985(n+1)`
-/

namespace A278646.P3050168920168598226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A163985 (n + 1)

end

end A278646.P3050168920168598226

namespace A278646

/-- `A005043(n)*A163985(n+1)` -/
def P3050168920168598226.Spec : Prop :=
  ∀ n, P3050168920168598226.a n = A278646 n

end A278646

/-! ## A278646.P15145416027702732491

`A005043(n)*A022998(2*n+1)`
-/

namespace A278646.P15145416027702732491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A022998 (2 * n + 1)

end

end A278646.P15145416027702732491

namespace A278646

/-- `A005043(n)*A022998(2*n+1)` -/
def P15145416027702732491.Spec : Prop :=
  ∀ n, P15145416027702732491.a n = A278646 n

end A278646

/-! ## A278646.P13946458624631573646

`A005043(n)*A026741(2*n+1)`
-/

namespace A278646.P13946458624631573646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A026741 (2 * n + 1)

end

end A278646.P13946458624631573646

namespace A278646

/-- `A005043(n)*A026741(2*n+1)` -/
def P13946458624631573646.Spec : Prop :=
  ∀ n, P13946458624631573646.a n = A278646 n

end A278646

/-! ## A278646.P14896661624400771085

`A005043(n)*A093178(2*n+1)`
-/

namespace A278646.P14896661624400771085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A093178 (2 * n + 1)

end

end A278646.P14896661624400771085

namespace A278646

/-- `A005043(n)*A093178(2*n+1)` -/
def P14896661624400771085.Spec : Prop :=
  ∀ n, P14896661624400771085.a n = A278646 n

end A278646

/-! ## A278646.P16804498569311706475

`A005043(n)*A212831(2*n+1)`
-/

namespace A278646.P16804498569311706475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A212831 (2 * n + 1)

end

end A278646.P16804498569311706475

namespace A278646

/-- `A005043(n)*A212831(2*n+1)` -/
def P16804498569311706475.Spec : Prop :=
  ∀ n, P16804498569311706475.a n = A278646 n

end A278646

/-! ## A278646.P7218431341531469649

`A005043(n)*A215495(2*n+1)`
-/

namespace A278646.P7218431341531469649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A215495 (2 * n + 1)

end

end A278646.P7218431341531469649

namespace A278646

/-- `A005043(n)*A215495(2*n+1)` -/
def P7218431341531469649.Spec : Prop :=
  ∀ n, P7218431341531469649.a n = A278646 n

end A278646

/-! ## A278646.P6441163448891367947

`(A005213(2*n)-A005213(2*n+1))*(2*n+1)`
-/

namespace A278646.P6441163448891367947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005213 (2 * n) - A005213 (2 * n + 1)) * (2 * n + 1 : ℤ)

end

end A278646.P6441163448891367947

namespace A278646

/-- `(A005213(2*n)-A005213(2*n+1))*(2*n+1)` -/
def P6441163448891367947.Spec : Prop :=
  ∀ n, P6441163448891367947.a n = A278646 n

end A278646

/-! ## A278646.P3360051190556780847

`A005043(n)*A054429(A054429(2*n+1))`
-/

namespace A278646.P3360051190556780847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A054429 (A054429 (2 * n + 1)).toNat

end

end A278646.P3360051190556780847

namespace A278646

/-- `A005043(n)*A054429(A054429(2*n+1))` -/
def P3360051190556780847.Spec : Prop :=
  ∀ n, P3360051190556780847.a n = A278646 n

end A278646

/-! ## A278646.P5136946996621480446

`A372342(n+1)+A372342(n+1)-A005043(n)`
-/

namespace A278646.P5136946996621480446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372342 (n + 1) + (A372342 (n + 1) - A005043 n)

end

end A278646.P5136946996621480446

namespace A278646

/-- `A372342(n+1)+A372342(n+1)-A005043(n)` -/
def P5136946996621480446.Spec : Prop :=
  ∀ n, P5136946996621480446.a n = A278646 n

end A278646

/-! ## A278646.P8265385862738738509

`A005717(n+1)-Δ[n*A005043(n)]`
-/

namespace A278646.P8265385862738738509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1) - (f1 (n + 1) - f1 n)

end

end A278646.P8265385862738738509

namespace A278646

/-- `A005717(n+1)-Δ[n*A005043(n)]` -/
def P8265385862738738509.Spec : Prop :=
  ∀ n, P8265385862738738509.a n = A278646 n

end A278646

/-!
# A278647: First differences of Hypotenuse numbers A009003.

The programs for A278647, the canonical program `A278647.P12690470526946050067` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278647 has offset 1).

The definition of A278647 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278647.P12690470526946050067

`A009003(n+2)-A009003(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A278647

/-- `A009003(n+2)-A009003(n+1)` -/
def P12690470526946050067.Spec : Prop :=
  ∀ n, P12690470526946050067.a n = A278647 (n + 1)

theorem P12690470526946050067.correct : P12690470526946050067.Spec := by
  intro n
  simp only [A278647, Nat.add_sub_cancel]

end A278647

/-! ## A278647.P11747894203999043656

`Δ[∪[A009177(n+1), A084645(n+1)]]`
-/

namespace A278647.P11747894203999043656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084645 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P11747894203999043656

namespace A278647

/-- `Δ[∪[A009177(n+1), A084645(n+1)]]` -/
def P11747894203999043656.Spec : Prop :=
  ∀ n, P11747894203999043656.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P14280167962387480266

`Δ[∪[A009177(n+1), A209922(n+1)]]`
-/

namespace A278647.P14280167962387480266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P14280167962387480266

namespace A278647

/-- `Δ[∪[A009177(n+1), A209922(n+1)]]` -/
def P14280167962387480266.Spec : Prop :=
  ∀ n, P14280167962387480266.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P2818484039281997474

`Δ[∪[A025302(n+1), A341329(n+1)]]`
-/

namespace A278647.P2818484039281997474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P2818484039281997474

namespace A278647

/-- `Δ[∪[A025302(n+1), A341329(n+1)]]` -/
def P2818484039281997474.Spec : Prop :=
  ∀ n, P2818484039281997474.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P5288894630070865835

`Δ[∪[A067761(n+1), A341329(n+1)]]`
-/

namespace A278647.P5288894630070865835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067761 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P5288894630070865835

namespace A278647

/-- `Δ[∪[A067761(n+1), A341329(n+1)]]` -/
def P5288894630070865835.Spec : Prop :=
  ∀ n, P5288894630070865835.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P15843706299639927302

`Δ[∪[A084645(n+1), A341329(n+1)]]`
-/

namespace A278647.P15843706299639927302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084645 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P15843706299639927302

namespace A278647

/-- `Δ[∪[A084645(n+1), A341329(n+1)]]` -/
def P15843706299639927302.Spec : Prop :=
  ∀ n, P15843706299639927302.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P16005734513097431788

`Δ[A009003(n+1)]`
-/

namespace A278647.P16005734513097431788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278647.P16005734513097431788

namespace A278647

/-- `Δ[A009003(n+1)]` -/
def P16005734513097431788.Spec : Prop :=
  ∀ n, P16005734513097431788.a n = A278647 (n + 1)

theorem P16005734513097431788.correct : P16005734513097431788.Spec := by
  intro n
  simp only [A278647, Nat.add_sub_cancel, A278647.P16005734513097431788.f1, A278647.P16005734513097431788.a, A278647.P12690470526946050067.a, SequenceMachineLib.memo_apply]

end A278647

/-! ## A278647.P9947498111082367214

`Δ[sqrt(A134422(n+1))]`
-/

namespace A278647.P9947498111082367214
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A134422 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278647.P9947498111082367214

namespace A278647

/-- `Δ[sqrt(A134422(n+1))]` -/
def P9947498111082367214.Spec : Prop :=
  ∀ n, P9947498111082367214.a n = (A278647 (n + 1) : ℝ)

end A278647

/-! ## A278647.P12520233404354618653

`Δ[A072592(n+1)/2]`
-/

namespace A278647.P12520233404354618653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072592 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278647.P12520233404354618653

namespace A278647

/-- `Δ[A072592(n+1)/2]` -/
def P12520233404354618653.Spec : Prop :=
  ∀ n, P12520233404354618653.a n = (A278647 (n + 1) : ℚ)

end A278647

/-! ## A278647.P9064290701590460038

`Δ[lt[0, A046080(n+1)]]`
-/

namespace A278647.P9064290701590460038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P9064290701590460038

namespace A278647

/-- `Δ[lt[0, A046080(n+1)]]` -/
def P9064290701590460038.Spec : Prop :=
  ∀ n, P9064290701590460038.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P11863027965421201577

`Δ[sqrt(A292313(n+1)/3)]`
-/

namespace A278647.P11863027965421201577
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A292313 (n + 1) : ℚ) / 3 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278647.P11863027965421201577

namespace A278647

/-- `Δ[sqrt(A292313(n+1)/3)]` -/
def P11863027965421201577.Spec : Prop :=
  ∀ n, P11863027965421201577.a n = (A278647 (n + 1) : ℝ)

end A278647

/-! ## A278647.P16277333123568448583

`A001281(Δ[A072592(n+1)])`
-/

namespace A278647.P16277333123568448583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A278647.P16277333123568448583

namespace A278647

/-- `A001281(Δ[A072592(n+1)])` -/
def P16277333123568448583.Spec : Prop :=
  ∀ n, P16277333123568448583.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P11241890416386695491

`Δ[lt[0, A005081(n+1)]]`
-/

namespace A278647.P11241890416386695491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005081 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P11241890416386695491

namespace A278647

/-- `Δ[lt[0, A005081(n+1)]]` -/
def P11241890416386695491.Spec : Prop :=
  ∀ n, P11241890416386695491.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P5168427942969506050

`Δ[lt[0, A108707(n+1)]]`
-/

namespace A278647.P5168427942969506050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P5168427942969506050

namespace A278647

/-- `Δ[lt[0, A108707(n+1)]]` -/
def P5168427942969506050.Spec : Prop :=
  ∀ n, P5168427942969506050.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P1486908860141151478

`Δ[lt[1, A170818(n+1)]]`
-/

namespace A278647.P1486908860141151478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P1486908860141151478

namespace A278647

/-- `Δ[lt[1, A170818(n+1)]]` -/
def P1486908860141151478.Spec : Prop :=
  ∀ n, P1486908860141151478.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P3812537006556804474

`Δ[lt[1, A256452(n+1)]]`
-/

namespace A278647.P3812537006556804474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P3812537006556804474

namespace A278647

/-- `Δ[lt[1, A256452(n+1)]]` -/
def P3812537006556804474.Spec : Prop :=
  ∀ n, P3812537006556804474.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P12799901195017181169

`Δ[lt[1, A309228(n+1)]]`
-/

namespace A278647.P12799901195017181169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309228 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P12799901195017181169

namespace A278647

/-- `Δ[lt[1, A309228(n+1)]]` -/
def P12799901195017181169.Spec : Prop :=
  ∀ n, P12799901195017181169.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P13719109337736759875

`Δ[lt[1, A170818(A028310(n))²]]`
-/

namespace A278647.P13719109337736759875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A028310 n).toNat ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P13719109337736759875

namespace A278647

/-- `Δ[lt[1, A170818(A028310(n))²]]` -/
def P13719109337736759875.Spec : Prop :=
  ∀ n, P13719109337736759875.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P14239975426012089441

`Δ[lt[A046079(n+1), A046081(n+1)]]`
-/

namespace A278647.P14239975426012089441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P14239975426012089441

namespace A278647

/-- `Δ[lt[A046079(n+1), A046081(n+1)]]` -/
def P14239975426012089441.Spec : Prop :=
  ∀ n, P14239975426012089441.a n = A278647 (n + 1)

end A278647

/-! ## A278647.P13360336823768817442

`Δ[lt[4, A046109(n)]]`
-/

namespace A278647.P13360336823768817442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278647.P13360336823768817442

namespace A278647

/-- `Δ[lt[4, A046109(n)]]` -/
def P13360336823768817442.Spec : Prop :=
  ∀ n, P13360336823768817442.a n = A278647 (n + 1)

end A278647

/-!
# A278648: Consider the set S of integers 1 through n. a(n) is the number of unordered ways in which three distinct elements {a, b, c} of S satisfy a*b = c*n.

The programs for A278648, there is no canonical definition to state claims against.
-/

/-! ## A278648.P7940049795334245768

`A194779(n+1)%A143862(n)`
-/

namespace A278648.P7940049795334245768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194779 (n + 1)) (A143862 n)

end

end A278648.P7940049795334245768

/-! ## A278648.P6598697970137918545

`record[A194778(n+1)]%A143862(n)`
-/

namespace A278648.P6598697970137918545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A143862 n)

end

end A278648.P6598697970137918545

/-! ## A278648.P9000657811852942754

`A322900(n)-A061336(A011782(n))`
-/

namespace A278648.P9000657811852942754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 n - A061336 (A011782 n).toNat

end

end A278648.P9000657811852942754

/-! ## A278648.P3722082545473783806

`A016789(A326512(n))%A143862(n)`
-/

namespace A278648.P3722082545473783806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016789 (A326512 n).toNat) (A143862 n)

end

end A278648.P3722082545473783806

/-! ## A278648.P16512765426824333022

`record[A205618(A321601(n))]%A143862(n)`
-/

namespace A278648.P16512765426824333022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205618 (A321601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A143862 n)

end

end A278648.P16512765426824333022

/-!
# A278650: Number of nX2 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278650, there is no canonical definition to state claims against.
-/

/-! ## A278650.P15621847242838904175

`A278656(∑[n+1]+2)`
-/

namespace A278650.P15621847242838904175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278650.P15621847242838904175

/-! ## A278650.P4337261931265482236

`A278656(A000096(n+1))/A278657(n)`
-/

namespace A278650.P4337261931265482236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278656 (A000096 (n + 1)).toNat : ℚ) / (A278657 n : ℚ)

end

end A278650.P4337261931265482236

/-! ## A278650.P1239915153841825992

`A049046(3*(n+1))*A278656(A000096(n+1))`
-/

namespace A278650.P1239915153841825992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (3 * (n + 1)) * A278656 (A000096 (n + 1)).toNat

end

end A278650.P1239915153841825992

/-!
# A278651: Number of nX3 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278651, there is no canonical definition to state claims against.
-/

/-! ## A278651.P1528964446981210263

`A278656(∑[n+2]+4)`
-/

namespace A278651.P1528964446981210263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278651.P1528964446981210263

/-! ## A278651.P16568080280847578862

`A278656(A167614(n+1))+A025437(n)`
-/

namespace A278651.P16568080280847578862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A167614 (n + 1)).toNat + A025437 n

end

end A278651.P16568080280847578862

/-! ## A278651.P9345268814985717132

`A015046(n)*A278656(A167614(n+1))`
-/

namespace A278651.P9345268814985717132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015046 n * A278656 (A167614 (n + 1)).toNat

end

end A278651.P9345268814985717132

/-! ## A278651.P151231995911631992

`A278656(A167614(n+1))*A278657(n)`
-/

namespace A278651.P151231995911631992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A167614 (n + 1)).toNat * A278657 n

end

end A278651.P151231995911631992

/-! ## A278651.P7961488866291001975

`lcm(A033999(n), A278656(A167614(n+1)))`
-/

namespace A278651.P7961488866291001975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A278656 (A167614 (n + 1)).toNat)

end

end A278651.P7961488866291001975

/-!
# A278652: Number of nX4 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278652, there is no canonical definition to state claims against.
-/

/-! ## A278652.P9353929659734738176

`A278656(A052905(n)+9)`
-/

namespace A278652.P9353929659734738176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A052905 n + 9).toNat

end

end A278652.P9353929659734738176

/-! ## A278652.P7411417024531813251

`A278656(A055999(n)+10)`
-/

namespace A278652.P7411417024531813251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A055999 n + 10).toNat

end

end A278652.P7411417024531813251

/-! ## A278652.P16836143840592439194

`A278656(A167614(n+2)+1)`
-/

namespace A278652.P16836143840592439194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A167614 (n + 2) + 1).toNat

end

end A278652.P16836143840592439194

/-! ## A278652.P10184899457037395891

`A278656(eq[5, A131818(n+1)])`
-/

namespace A278652.P10184899457037395891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278652.P10184899457037395891

/-! ## A278652.P12431023655546655642

`A278656(A141214(n+1))`
-/

namespace A278652.P12431023655546655642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A141214 (n + 1)).toNat

end

end A278652.P12431023655546655642

/-!
# A278653: Number of nX5 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278653, there is no canonical definition to state claims against.
-/

/-! ## A278653.P5186592004258842100

`A278656(A167499(n+3))`
-/

namespace A278653.P5186592004258842100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A167499 (n + 3)).toNat

end

end A278653.P5186592004258842100

/-! ## A278653.P2765607404941123134

`A278656(eq[6, A131818(n+1)])`
-/

namespace A278653.P2765607404941123134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278653.P2765607404941123134

/-! ## A278653.P17543206680906667137

`A278656(eq[3, A025581(n)]+9)`
-/

namespace A278653.P17543206680906667137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 9)

end

end A278653.P17543206680906667137

/-! ## A278653.P15551908776546956852

`A278656(A374005(n+1))`
-/

namespace A278653.P15551908776546956852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A374005 (n + 1)).toNat

end

end A278653.P15551908776546956852

/-! ## A278653.P2987877103901444836

`A278656(A056115(n)+11)`
-/

namespace A278653.P2987877103901444836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A056115 n + 11).toNat

end

end A278653.P2987877103901444836

/-!
# A278654: Number of nX6 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278654, there is no canonical definition to state claims against.
-/

/-! ## A278654.P3392113462882114176

`A278656(A167499(n+4)+1)`
-/

namespace A278654.P3392113462882114176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A167499 (n + 4) + 1).toNat

end

end A278654.P3392113462882114176

/-! ## A278654.P2733624821903174333

`A278656(A034856(n+4)+8)`
-/

namespace A278654.P2733624821903174333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A034856 (n + 4) + 8).toNat

end

end A278654.P2733624821903174333

/-! ## A278654.P14223211890646811173

`A278656(eq[7, A131818(n+1)])`
-/

namespace A278654.P14223211890646811173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278654.P14223211890646811173

/-! ## A278654.P471375734546264742

`A278656(A374007(n+1))`
-/

namespace A278654.P471375734546264742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A374007 (n + 1)).toNat

end

end A278654.P471375734546264742

/-! ## A278654.P13651766774091602299

`A278656(eq[6, A004736(n+1)]+1)`
-/

namespace A278654.P13651766774091602299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A278654.P13651766774091602299

/-!
# A278655: Number of nX7 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278655, there is no canonical definition to state claims against.
-/

/-! ## A278655.P16237225196004659782

`A278656(eq[11, A066657(n)])`
-/

namespace A278655.P16237225196004659782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278655.P16237225196004659782

/-! ## A278655.P6706931435604419605

`A278656(A167614(n+5)+4)`
-/

namespace A278655.P6706931435604419605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A167614 (n + 5) + 4).toNat

end

end A278655.P6706931435604419605

/-! ## A278655.P14637659773909694589

`A278656(eq[8, A131818(n+1)])`
-/

namespace A278655.P14637659773909694589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278655.P14637659773909694589

/-! ## A278655.P7556399470193691601

`A278656(A374008(n+1))`
-/

namespace A278655.P7556399470193691601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278656 (A374008 (n + 1)).toNat

end

end A278655.P7556399470193691601

/-!
# A278659: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 57", based on the 5-celled von Neumann neighborhood.

The programs for A278659, there is no canonical definition to state claims against.
-/

/-! ## A278659.P10205982880516773852

`A007088(A278661(n))`
-/

namespace A278659.P10205982880516773852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278661 n).toNat

end

end A278659.P10205982880516773852

/-! ## A278659.P2840311314941380393

`A185544(2*A278661(n))`
-/

namespace A278659.P2840311314941380393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278661 n).toNat

end

end A278659.P2840311314941380393

/-! ## A278659.P17808128455407774005

`A185544(A278661(n)+A278661(n))`
-/

namespace A278659.P17808128455407774005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A278661 n + A278661 n).toNat

end

end A278659.P17808128455407774005

/-!
# A278660: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 57", based on the 5-celled von Neumann neighborhood.

The programs for A278660, there is no canonical definition to state claims against.
-/

/-! ## A278660.P2590436652854938340

`A007088(A278662(n))`
-/

namespace A278660.P2590436652854938340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278662 n).toNat

end

end A278660.P2590436652854938340

/-! ## A278660.P16403519295442570027

`A185544(2*A278662(n))`
-/

namespace A278660.P16403519295442570027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278662 n).toNat

end

end A278660.P16403519295442570027

/-!
# A278663: Number of periodic necklaces with n beads of 3 colors.

The programs for A278663, there is no canonical definition to state claims against.
-/

/-! ## A278663.P14940994490939957249

`A001867(n)-A027376(n)`
-/

namespace A278663.P14940994490939957249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 n - A027376 n

end

end A278663.P14940994490939957249

/-! ## A278663.P13791695630075184602

`A001867(n)-(A303117(n)+A027375(n))`
-/

namespace A278663.P13791695630075184602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 n - (A303117 n + A027375 n)

end

end A278663.P13791695630075184602

/-! ## A278663.P5400199022515928523

`(A001867(n)+A000031(n))%(A027376(n)+A000031(n))`
-/

namespace A278663.P5400199022515928523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001867 n + A000031 n) (A027376 n + A000031 n)

end

end A278663.P5400199022515928523

/-! ## A278663.P17136143324306357278

`(A001867(n)+A000217(n))%(A027376(n)+A000217(n))`
-/

namespace A278663.P17136143324306357278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001867 n + A000217 n) (A027376 n + A000217 n)

end

end A278663.P17136143324306357278

/-! ## A278663.P4776900431124111613

`(A001867(n)+A001037(n))%(A027376(n)+A001037(n))`
-/

namespace A278663.P4776900431124111613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001867 n + A001037 n) (A027376 n + A001037 n)

end

end A278663.P4776900431124111613

/-! ## A278663.P2437533034596925541

`A001867(n)-A054718(n)/A028310(n)`
-/

namespace A278663.P2437533034596925541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001867 n : ℚ) - (A054718 n : ℚ) / (A028310 n : ℚ)

end

end A278663.P2437533034596925541

/-! ## A278663.P9342632972925024623

`A001867(n)-A074650(A034856(n+1))`
-/

namespace A278663.P9342632972925024623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 n - A074650 (A034856 (n + 1)).toNat

end

end A278663.P9342632972925024623

/-! ## A278663.P3711945671469014834

`A001867(n)-A124814(∑[n])`
-/

namespace A278663.P3711945671469014834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 n - A124814 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278663.P3711945671469014834

/-!
# A278664: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 62", based on the 5-celled von Neumann neighborhood.

The programs for A278664, there is no canonical definition to state claims against.
-/

/-! ## A278664.P17270058854233578720

`A007088(A278666(n))`
-/

namespace A278664.P17270058854233578720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278666 n).toNat

end

end A278664.P17270058854233578720

/-! ## A278664.P8585184408993826164

`A185544(2*A278666(n))`
-/

namespace A278664.P8585184408993826164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278666 n).toNat

end

end A278664.P8585184408993826164

/-! ## A278664.P11785138790264949541

`A007088(∑[A259098(n)%(3*p?[2^n-1])])`
-/

namespace A278664.P11785138790264949541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259098 n) (3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278664.P11785138790264949541

/-!
# A278665: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 62", based on the 5-celled von Neumann neighborhood.

The programs for A278665, there is no canonical definition to state claims against.
-/

/-! ## A278665.P7937727063355772247

`A007088(A278667(n))`
-/

namespace A278665.P7937727063355772247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278667 n).toNat

end

end A278665.P7937727063355772247

/-! ## A278665.P15972472841351991198

`A305989(A278666(n)/A055642(n)²)`
-/

namespace A278665.P15972472841351991198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A278666 n : ℚ) / (A055642 n ^ 2 : ℚ))).toNat

end

end A278665.P15972472841351991198

/-! ## A278665.P17896715383952900668

`A185544(2*A278667(n))`
-/

namespace A278665.P17896715383952900668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278667 n).toNat

end

end A278665.P17896715383952900668

/-! ## A278665.P8586127982218689433

`A185544(lcm(2, A278667(n)))`
-/

namespace A278665.P8586127982218689433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A278667 n))

end

end A278665.P8586127982218689433

/-! ## A278665.P18357162788755075849

`A305989(A278666(n)/A055642(n))`
-/

namespace A278665.P18357162788755075849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A278666 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A278665.P18357162788755075849

/-!
# A278666: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 62", based on the 5-celled von Neumann neighborhood.

The programs for A278666, there is no canonical definition to state claims against.
-/

/-! ## A278666.P11588053419109266813

`A030109(A278667(n)+A000079(n+1))`
-/

namespace A278666.P11588053419109266813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A278667 n + A000079 (n + 1)).toNat

end

end A278666.P11588053419109266813

/-! ## A278666.P13257257899866035605

`∑[A137734(Δ[A112567(n)])]`
-/

namespace A278666.P13257257899866035605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278666.P13257257899866035605

/-! ## A278666.P3778198472077555708

`∑[A000194(∑[A228401(n+1)])]`
-/

namespace A278666.P3778198472077555708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228401 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278666.P3778198472077555708

/-! ## A278666.P9531059259389446165

`∑[A137734(∑[A228401(n+1)])]`
-/

namespace A278666.P9531059259389446165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228401 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278666.P9531059259389446165

/-!
# A278667: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 62", based on the 5-celled von Neumann neighborhood.

The programs for A278667, there is no canonical definition to state claims against.
-/

/-! ## A278667.P15688370430333539940

`A325401(A278666(n)/A055642(n))`
-/

namespace A278667.P15688370430333539940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A278666 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A278667.P15688370430333539940

/-! ## A278667.P7454376669113110878

`A325401(A278666(n)/A306211(n+1))`
-/

namespace A278667.P7454376669113110878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A278666 n : ℚ) / (A306211 (n + 1) : ℚ))).toNat

end

end A278667.P7454376669113110878

/-! ## A278667.P5027475630779410980

`A325401(A278666(n))`
-/

namespace A278667.P5027475630779410980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A278666 n).toNat

end

end A278667.P5027475630779410980

/-! ## A278667.P15445871398125386610

`A030101(A278666(n)/A055642(n))`
-/

namespace A278667.P15445871398125386610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A278666 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A278667.P15445871398125386610

/-! ## A278667.P8350658832955005371

`A030101(A278666(n)/A306211(n+1))`
-/

namespace A278667.P8350658832955005371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A278666 n : ℚ) / (A306211 (n + 1) : ℚ))).toNat

end

end A278667.P8350658832955005371

/-!
# A278668: Expansion of Product_{n>=1} (1 - x^(5*n))/(1 - x^n)^3 in powers of x.

The programs for A278668, there is no canonical definition to state claims against.
-/

/-! ## A278668.P7665647754537559126

`A000716(n)-A002994(A052766(n))`
-/

namespace A278668.P7665647754537559126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000716 n - A002994 (A052766 n).toNat

end

end A278668.P7665647754537559126

/-! ## A278668.P13507520238277284926

`A098851(A345162(2*n+3))+A000711(n)`
-/

namespace A278668.P13507520238277284926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098851 (A345162 (2 * n + 3)).toNat + A000711 n

end

end A278668.P13507520238277284926

/-! ## A278668.P7020952054807950121

`A005041(n*A094977(n)+1)`
-/

namespace A278668.P7020952054807950121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 ((n : ℤ) * A094977 n + 1).toNat

end

end A278668.P7020952054807950121

/-!
# A278669: Number of n X n 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278669, there is no canonical definition to state claims against.
-/

/-! ## A278669.P15929989105044366010

`A278676(∑[4*n]+1)`
-/

namespace A278669.P15929989105044366010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278669.P15929989105044366010

/-! ## A278669.P2124364690965034367

`lcm(2, A278676(A001844(n)))`
-/

namespace A278669.P2124364690965034367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A278676 (A001844 n).toNat)

end

end A278669.P2124364690965034367

/-! ## A278669.P5775157677901408613

`record[A003982(n)*A278676(n+1)]`
-/

namespace A278669.P5775157677901408613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A278676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278669.P5775157677901408613

/-! ## A278669.P18258840438425967316

`A043564(n)*A278676(A001844(n))`
-/

namespace A278669.P18258840438425967316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 n * A278676 (A001844 n).toNat

end

end A278669.P18258840438425967316

/-! ## A278669.P5386842437717558854

`A278676(A001844(n))+char[A000108(n+7)]`
-/

namespace A278669.P5386842437717558854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A278669.P5386842437717558854

/-!
# A278670: Number of n X 2 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278670, the canonical program `A278670.P16365327649008846108` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278670 has offset 1).

The definition of A278670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278670.P16365327649008846108

`∑[∑[∑[C(n+3, 3)+n]]]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A278670

/-- `∑[∑[∑[C(n+3, 3)+n]]]` -/
def P16365327649008846108.Spec : Prop :=
  ∀ n, (P16365327649008846108.a n : ℤ) = A278670 (n + 1)

theorem P16365327649008846108.correct : P16365327649008846108.Spec := by
  intro n
  simp only [A278670, Nat.add_sub_cancel]

end A278670

/-! ## A278670.P6088952119698768888

`∑[∑[∑[∑[∑[n+1]]+n]]]`
-/

namespace A278670.P6088952119698768888
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278670.P6088952119698768888

namespace A278670

/-- `∑[∑[∑[∑[∑[n+1]]+n]]]` -/
def P6088952119698768888.Spec : Prop :=
  ∀ n, (P6088952119698768888.a n : ℤ) = A278670 (n + 1)

end A278670

/-! ## A278670.P15289351810565890872

`∑[A000292(n)]+C(n+6, 6)`
-/

namespace A278670.P15289351810565890872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (n + 6) 6 : ℤ)

end

end A278670.P15289351810565890872

namespace A278670

/-- `∑[A000292(n)]+C(n+6, 6)` -/
def P15289351810565890872.Spec : Prop :=
  ∀ n, P15289351810565890872.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P9601082230111375229

`A130857(n+1)+A055796(n)`
-/

namespace A278670.P9601082230111375229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130857 (n + 1) + A055796 n

end

end A278670.P9601082230111375229

namespace A278670

/-- `A130857(n+1)+A055796(n)` -/
def P9601082230111375229.Spec : Prop :=
  ∀ n, P9601082230111375229.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P5091189173404825556

`A145126(n)+A124089(n+6)`
-/

namespace A278670.P5091189173404825556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n + A124089 (n + 6)

end

end A278670.P5091189173404825556

namespace A278670

/-- `A145126(n)+A124089(n+6)` -/
def P5091189173404825556.Spec : Prop :=
  ∀ n, P5091189173404825556.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P11422831958451314540

`A062989(n)+A145126(n)+n`
-/

namespace A278670.P11422831958451314540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 n + (A145126 n + (n : ℤ))

end

end A278670.P11422831958451314540

namespace A278670

/-- `A062989(n)+A145126(n)+n` -/
def P11422831958451314540.Spec : Prop :=
  ∀ n, P11422831958451314540.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P7081645216807681141

`∑[∑[A008779(n)]]-A051836(n)`
-/

namespace A278670.P7081645216807681141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008779 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A051836 n

end

end A278670.P7081645216807681141

namespace A278670

/-- `∑[∑[A008779(n)]]-A051836(n)` -/
def P7081645216807681141.Spec : Prop :=
  ∀ n, P7081645216807681141.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P12459450277167008555

`∑[A257890(n)]-Δ[A005582(n)]`
-/

namespace A278670.P12459450277167008555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A278670.P12459450277167008555

namespace A278670

/-- `∑[A257890(n)]-Δ[A005582(n)]` -/
def P12459450277167008555.Spec : Prop :=
  ∀ n, P12459450277167008555.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P4578888326468694039

`A005584(n+1)-A257199(n+1)`
-/

namespace A278670.P4578888326468694039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 1) - A257199 (n + 1)

end

end A278670.P4578888326468694039

namespace A278670

/-- `A005584(n+1)-A257199(n+1)` -/
def P4578888326468694039.Spec : Prop :=
  ∀ n, P4578888326468694039.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P15879294549896651568

`A005714(n+3)-A277935(n+1)`
-/

namespace A278670.P15879294549896651568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005714 (n + 3) - A277935 (n + 1)

end

end A278670.P15879294549896651568

namespace A278670

/-- `A005714(n+3)-A277935(n+1)` -/
def P15879294549896651568.Spec : Prop :=
  ∀ n, P15879294549896651568.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P17987547043839299819

`A257200(n+2)-A000330(n+2)`
-/

namespace A278670.P17987547043839299819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257200 (n + 2) - A000330 (n + 2)

end

end A278670.P17987547043839299819

namespace A278670

/-- `A257200(n+2)-A000330(n+2)` -/
def P17987547043839299819.Spec : Prop :=
  ∀ n, P17987547043839299819.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P17141830366822497547

`A223659(n+1)-((n+1)²+A000125(n+1))`
-/

namespace A278670.P17141830366822497547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1) - (((n + 1) ^ 2 : ℤ) + A000125 (n + 1))

end

end A278670.P17141830366822497547

namespace A278670

/-- `A223659(n+1)-((n+1)²+A000125(n+1))` -/
def P17141830366822497547.Spec : Prop :=
  ∀ n, P17141830366822497547.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P9640832775878446553

`A223659(n+1)-(A003600(n+1)+A000124(n))`
-/

namespace A278670.P9640832775878446553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1) - (A003600 (n + 1) + A000124 n)

end

end A278670.P9640832775878446553

namespace A278670

/-- `A223659(n+1)-(A003600(n+1)+A000124(n))` -/
def P9640832775878446553.Spec : Prop :=
  ∀ n, P9640832775878446553.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P9098467836290113314

`A005584(n+2)-(A051747(n+1)+A051747(n+2))`
-/

namespace A278670.P9098467836290113314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 2) - (A051747 (n + 1) + A051747 (n + 2))

end

end A278670.P9098467836290113314

namespace A278670

/-- `A005584(n+2)-(A051747(n+1)+A051747(n+2))` -/
def P9098467836290113314.Spec : Prop :=
  ∀ n, P9098467836290113314.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P16542397437141246555

`A000332(n+3)+C(n+6, 6)`
-/

namespace A278670.P16542397437141246555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 3) + (Nat.choose (n + 6) 6 : ℤ)

end

end A278670.P16542397437141246555

namespace A278670

/-- `A000332(n+3)+C(n+6, 6)` -/
def P16542397437141246555.Spec : Prop :=
  ∀ n, P16542397437141246555.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P3155739072126070126

`A000579(n+6)+∑[∑[∑[n]]]`
-/

namespace A278670.P3155739072126070126
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A278670.P3155739072126070126

namespace A278670

/-- `A000579(n+6)+∑[∑[∑[n]]]` -/
def P3155739072126070126.Spec : Prop :=
  ∀ n, P3155739072126070126.a n = A278670 (n + 1)

end A278670

/-! ## A278670.P12263241026830156846

`A299338(2*n)+∑[A000292(n)]`
-/

namespace A278670.P12263241026830156846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278670.P12263241026830156846

namespace A278670

/-- `A299338(2*n)+∑[A000292(n)]` -/
def P12263241026830156846.Spec : Prop :=
  ∀ n, P12263241026830156846.a n = A278670 (n + 1)

end A278670

/-!
# A278671: Number of n X 3 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278671, there is no canonical definition to state claims against.
-/

/-! ## A278671.P9709670743296633506

`A278676(∑[n+2]+4)`
-/

namespace A278671.P9709670743296633506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278671.P9709670743296633506

/-! ## A278671.P7921513313644030689

`lcm((-1)^n, A278676(A167614(n+1)))`
-/

namespace A278671.P7921513313644030689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A278676 (A167614 (n + 1)).toNat)

end

end A278671.P7921513313644030689

/-! ## A278671.P15263541135054512565

`A278676(A167614(n+1))+A011743(n)`
-/

namespace A278671.P15263541135054512565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A167614 (n + 1)).toNat + A011743 n

end

end A278671.P15263541135054512565

/-! ## A278671.P18123739732057503612

`A278676(A167614(n+1))+A185238(n)`
-/

namespace A278671.P18123739732057503612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A167614 (n + 1)).toNat + A185238 n

end

end A278671.P18123739732057503612

/-! ## A278671.P6892835160543005312

`A278676(A167614(n+1))%A096637(n)`
-/

namespace A278671.P6892835160543005312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278676 (A167614 (n + 1)).toNat) (A096637 n)

end

end A278671.P6892835160543005312

/-!
# A278672: Number of nX4 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278672, there is no canonical definition to state claims against.
-/

/-! ## A278672.P10051003132751088302

`A278676(∑[n+3]+7)`
-/

namespace A278672.P10051003132751088302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A278672.P10051003132751088302

/-! ## A278672.P7091392488070184156

`A278676(A027379(n+2))%A278673(n+1)`
-/

namespace A278672.P7091392488070184156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278676 (A027379 (n + 2)).toNat) (A278673 (n + 1))

end

end A278672.P7091392488070184156

/-! ## A278672.P10769928101549346965

`A278676(A155212(n)+5)%A110163(n+1)`
-/

namespace A278672.P10769928101549346965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278676 (A155212 n + 5).toNat) (A110163 (n + 1))

end

end A278672.P10769928101549346965

/-! ## A278672.P10397100871854638874

`A278676(A141214(n+1))%A353910(n+5)`
-/

namespace A278672.P10397100871854638874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278676 (A141214 (n + 1)).toNat) (A353910 (n + 5))

end

end A278672.P10397100871854638874

/-! ## A278672.P1837969433549102465

`A278676(A141214(n+1))*A334924(2*n+1)`
-/

namespace A278672.P1837969433549102465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A141214 (n + 1)).toNat * A334924 (2 * n + 1)

end

end A278672.P1837969433549102465

/-!
# A278673: Number of nX5 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278673, there is no canonical definition to state claims against.
-/

/-! ## A278673.P12533114897803267613

`A278676(A374005(n+1))`
-/

namespace A278673.P12533114897803267613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A374005 (n + 1)).toNat

end

end A278673.P12533114897803267613

/-! ## A278673.P17611698445494067433

`A278676(A167499(n+3))`
-/

namespace A278673.P17611698445494067433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A167499 (n + 3)).toNat

end

end A278673.P17611698445494067433

/-! ## A278673.P3332229459924094410

`A278676(eq[7, A066657(n)])`
-/

namespace A278673.P3332229459924094410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278673.P3332229459924094410

/-! ## A278673.P17344553060850363823

`A278676(A052905(n+1)+10)`
-/

namespace A278673.P17344553060850363823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A052905 (n + 1) + 10).toNat

end

end A278673.P17344553060850363823

/-! ## A278673.P11607923625399018812

`A278676(A055999(n+1)+11)`
-/

namespace A278673.P11607923625399018812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A055999 (n + 1) + 11).toNat

end

end A278673.P11607923625399018812

/-!
# A278674: Number of nX6 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278674, there is no canonical definition to state claims against.
-/

/-! ## A278674.P1992457858600583318

`A278676(A374007(n+1))`
-/

namespace A278674.P1992457858600583318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A374007 (n + 1)).toNat

end

end A278674.P1992457858600583318

/-! ## A278674.P16933656586015148266

`A278676(A141214(n+2)+9)`
-/

namespace A278674.P16933656586015148266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A141214 (n + 2) + 9).toNat

end

end A278674.P16933656586015148266

/-! ## A278674.P11085576185310503266

`A278676(eq[7, A131818(n+1)])`
-/

namespace A278674.P11085576185310503266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278674.P11085576185310503266

/-! ## A278674.P7513322723509396945

`A278676(A052905(n+3))`
-/

namespace A278674.P7513322723509396945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A052905 (n + 3)).toNat

end

end A278674.P7513322723509396945

/-! ## A278674.P15531168627615119282

`A278676(eq[5, A193592(n)])`
-/

namespace A278674.P15531168627615119282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278674.P15531168627615119282

/-!
# A278675: Number of nX7 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278675, there is no canonical definition to state claims against.
-/

/-! ## A278675.P6058662899602780261

`A278676(A374008(n+1))`
-/

namespace A278675.P6058662899602780261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A374008 (n + 1)).toNat

end

end A278675.P6058662899602780261

/-! ## A278675.P901968802065098708

`A278676(eq[11, A066657(n)])`
-/

namespace A278675.P901968802065098708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278675.P901968802065098708

/-! ## A278675.P15513785832483884941

`A278676(A167614(n+5)+4)`
-/

namespace A278675.P15513785832483884941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A167614 (n + 5) + 4).toNat

end

end A278675.P15513785832483884941

/-! ## A278675.P8827821418316826708

`A278676(A000124(n+6)+6)`
-/

namespace A278675.P8827821418316826708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (A000124 (n + 6) + 6).toNat

end

end A278675.P8827821418316826708

/-! ## A278675.P3607277288536358836

`A278676(eq[8, A131818(n+1)])`
-/

namespace A278675.P3607277288536358836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278675.P3607277288536358836

/-!
# A278676: T(n,k)=Number of nXk 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278676, there is no canonical definition to state claims against.
-/

/-! ## A278676.P774975682443944849

`A295652(n+1)-A023397(∏[A266303(n)])`
-/

namespace A278676.P774975682443944849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (n + 1) - A023397 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278676.P774975682443944849

/-! ## A278676.P16587460101424823736

`A279871(n+1)+A279415(A213764(n+1))`
-/

namespace A278676.P16587460101424823736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (n + 1) + A279415 (A213764 (n + 1)).toNat

end

end A278676.P16587460101424823736

/-! ## A278676.P10802715990218926504

`A327193(A350361(n+1)^A292599(n+1))`
-/

namespace A278676.P10802715990218926504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327193 (SequenceMachineLib.roundAway ((A350361 (n + 1) : ℚ) ^ (A292599 (n + 1) : ℤ))).toNat

end

end A278676.P10802715990218926504

/-! ## A278676.P11956582192884185767

`and(-A222188(n+1), A360850(A032555(n+1)))`
-/

namespace A278676.P11956582192884185767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A222188 (n + 1)) (A360850 (A032555 (n + 1)).toNat)

end

end A278676.P11956582192884185767

/-! ## A278676.P13452253104443142314

`A063732(A208269(n+1))%A197459(3*n+1)`
-/

namespace A278676.P13452253104443142314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063732 (A208269 (n + 1)).toNat) (A197459 (3 * n + 1))

end

end A278676.P13452253104443142314

/-!
# A278677: a(n) = Sum_{k=0..n} A011971(n, k)*(k + 1). The Aitken-Bell triangle considered as a linear transform applied to the positive numbers.

The programs for A278677, there is no canonical definition to state claims against.
-/

/-! ## A278677.P6193628259671772932

`record[abs(A000110(n)-A052889(n))]`
-/

namespace A278677.P6193628259671772932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000110 n - A052889 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278677.P6193628259671772932

/-! ## A278677.P7603090960675780537

`A070071(n+2)-A005493(n+1)`
-/

namespace A278677.P7603090960675780537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070071 (n + 2) - A005493 (n + 1)

end

end A278677.P7603090960675780537

/-! ## A278677.P13506435826250178030

`A359109(n+2)-A000110(n+2)`
-/

namespace A278677.P13506435826250178030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359109 (n + 2) - A000110 (n + 2)

end

end A278677.P13506435826250178030

/-! ## A278677.P6843480272022282939

`A052889(n+3)-A000110(n+3)`
-/

namespace A278677.P6843480272022282939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052889 (n + 3) - A000110 (n + 3)

end

end A278677.P6843480272022282939

/-! ## A278677.P15800033004773873321

`A059340(∑[n+1]+2)`
-/

namespace A278677.P15800033004773873321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059340 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278677.P15800033004773873321

/-! ## A278677.P4042065753842446389

`A286897(∑[n]+1)`
-/

namespace A278677.P4042065753842446389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286897 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278677.P4042065753842446389

/-! ## A278677.P18354524516539572064

`record[A286897(n+1)]`
-/

namespace A278677.P18354524516539572064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278677.P18354524516539572064

/-! ## A278677.P10722733888113138955

`or(A000007(n), A286897(A000124(n)))`
-/

namespace A278677.P10722733888113138955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A286897 (A000124 n).toNat)

end

end A278677.P10722733888113138955

/-! ## A278677.P8682887263243077016

`lcm((-1)^A000040(n+2), A286897(A000124(n)))`
-/

namespace A278677.P8682887263243077016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A000040 (n + 2) : ℤ))) (A286897 (A000124 n).toNat)

end

end A278677.P8682887263243077016

/-!
# A278678: Popularity of left children in treeshelves avoiding pattern T321.

The programs for A278678, there is no canonical definition to state claims against.
-/

/-! ## A278678.P11417015955866747805

`A000111(n+3)*(n+3)-A000111(n+4)`
-/

namespace A278678.P11417015955866747805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 3) * (n + 3 : ℤ) - A000111 (n + 4)

end

end A278678.P11417015955866747805

/-! ## A278678.P10778966602900317487

`A025480(A029706(n))-A015530(n)`
-/

namespace A278678.P10778966602900317487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A029706 n).toNat - A015530 n

end

end A278678.P10778966602900317487

/-!
# A278679: Popularity of left children in treeshelves avoiding pattern T213.

The programs for A278679, there is no canonical definition to state claims against.
-/

/-! ## A278679.P17797454734673654458

`(n+1)/2*A131178(n+2)`
-/

namespace A278679.P17797454734673654458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A131178 (n + 2) : ℚ)

end

end A278679.P17797454734673654458

/-!
# A278680: Expansion of Product_{n>=1} (1 - x^(5*n))/(1 - x^n)^4 in powers of x.

The programs for A278680, there is no canonical definition to state claims against.
-/

/-! ## A278680.P8024770114024852022

`A023003(n)-A079998(A000312(n))`
-/

namespace A278680.P8024770114024852022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023003 n - A079998 (A000312 n).toNat

end

end A278680.P8024770114024852022

/-! ## A278680.P11143641832577896433

`xor(A160527(n), A381717(A064636(n)))`
-/

namespace A278680.P11143641832577896433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A160527 n) (A381717 (A064636 n).toNat)

end

end A278680.P11143641832577896433

/-!
# A278681: Pisot sequence T(3,16).

The programs for A278681, the canonical program `A278681.P4711426915066727659` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278681 has offset 0).

The definition of A278681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278681.P4711426915066727659

`6*a(n-1)-4*a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=3, a(1)=16, a(2)=85, a(3)=451`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A278681

/-- `6*a(n-1)-4*a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P4711426915066727659.Spec : Prop :=
  ∀ n, P4711426915066727659.a n = A278681 n

theorem P4711426915066727659.correct : P4711426915066727659.Spec := by
  intro n
  simp only [A278681]

end A278681

/-! ## A278681.P11180953095825488662

`floor(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=16`
-/

namespace A278681.P11180953095825488662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 16] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A278681.P11180953095825488662

namespace A278681

/-- `floor(a(n-1)²/a(n-2))` -/
def P11180953095825488662.Spec : Prop :=
  ∀ n, P11180953095825488662.a n = A278681 n

end A278681

/-! ## A278681.P15863708957521297063

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=3, a(1)=16`
-/

namespace A278681.P15863708957521297063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 16] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A278681.P15863708957521297063

namespace A278681

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P15863708957521297063.Spec : Prop :=
  ∀ n, P15863708957521297063.a n = A278681 n

end A278681

/-! ## A278681.P310962438287965073

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=3, a(1)=16`
-/

namespace A278681.P310962438287965073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 16] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A278681.P310962438287965073

namespace A278681

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P310962438287965073.Spec : Prop :=
  ∀ n, P310962438287965073.a n = A278681 n

end A278681

/-!
# A278682: Number of non-equivalent ways to place 3 non-attacking ferses on an n X n board.

The programs for A278682, there is no canonical definition to state claims against.
-/

/-! ## A278682.P6475292305943623880

`5*A086674(a(n-1))` with `a(0)=0, a(1)=0, a(2)=7`
-/

namespace A278682.P6475292305943623880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 7] fun n a =>
  5 * A086674 (a (n - 1)).toNat

end

end A278682.P6475292305943623880

/-!
# A278683: Number of non-equivalent ways to place 4 non-attacking ferses on an n X n board.

The programs for A278683, there is no canonical definition to state claims against.
-/

/-! ## A278683.P4185435626870461767

`ceil(10^n/9)-A181988(ceil(10^n/9))`
-/

namespace A278683.P4185435626870461767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℚ) / 9⌉ - A181988 ⌈(10 ^ n : ℚ) / 9⌉.toNat

end

end A278683.P4185435626870461767

/-!
# A278684: Number of non-equivalent ways to place 5 non-attacking ferses on an n X n board.

The programs for A278684, there is no canonical definition to state claims against.
-/

/-! ## A278684.P15625232112020627390

`A289508(A380726(n)-n)`
-/

namespace A278684.P15625232112020627390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A380726 n - (n : ℤ)).toNat

end

end A278684.P15625232112020627390

/-!
# A278685: Number of non-equivalent ways to place 6 non-attacking ferses on an n X n board.

The programs for A278685, there is no canonical definition to state claims against.
-/

/-! ## A278685.P7196435303421119085

`A025898(A098410(n)-A002939(n))`
-/

namespace A278685.P7196435303421119085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025898 (A098410 n - A002939 n).toNat

end

end A278685.P7196435303421119085

/-!
# A278686: Number of non-equivalent ways to place 7 non-attacking ferses on an n X n board.

The programs for A278686, there is no canonical definition to state claims against.
-/

/-! ## A278686.P10848017799123657250

`9*A330297(floor(n²/3))`
-/

namespace A278686.P10848017799123657250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A330297 ⌊(n ^ 2 : ℚ) / 3⌋.toNat

end

end A278686.P10848017799123657250

/-!
# A278687: Number of non-equivalent ways to place n non-attacking ferses on an n X n board.

The programs for A278687, there is no canonical definition to state claims against.
-/

/-! ## A278687.P13286867777106468376

`A184744(A380514(n))`
-/

namespace A278687.P13286867777106468376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184744 (A380514 n).toNat

end

end A278687.P13286867777106468376

/-!
# A278689: a(n) = Sum_{k=0..n} binomial(n+k,n)*binomial(2*n-3,n-k-1) for n>1, a(n) = n for n<=1.

The programs for A278689, the canonical program `A278689.P9922730352804776292` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278689 has offset 0).

The definition of A278689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278689.P9922730352804776292

`(9*n-2)*(8*n-12)*a(n-1)/((9*n-11)*n)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A278689

/-- `(9*n-2)*(8*n-12)*a(n-1)/((9*n-11)*n)` -/
def P9922730352804776292.Spec : Prop :=
  ∀ n, P9922730352804776292.a n = (A278689 n : ℚ)

end A278689

/-! ## A278689.P16427957227332452290

`A201780(A004277(n²))`
-/

namespace A278689.P16427957227332452290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (A004277 (n ^ 2)).toNat

end

end A278689.P16427957227332452290

namespace A278689

/-- `A201780(A004277(n²))` -/
def P16427957227332452290.Spec : Prop :=
  ∀ n, P16427957227332452290.a n = A278689 n

end A278689

/-! ## A278689.P12802004175192194672

`A201780(A028310(2*n²))`
-/

namespace A278689.P12802004175192194672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (A028310 (2 * n ^ 2)).toNat

end

end A278689.P12802004175192194672

namespace A278689

/-- `A201780(A028310(2*n²))` -/
def P12802004175192194672.Spec : Prop :=
  ∀ n, P12802004175192194672.a n = A278689 n

end A278689

/-! ## A278689.P3849730168983058880

`A201780(n²+A028310(n²))`
-/

namespace A278689.P3849730168983058880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A278689.P3849730168983058880

namespace A278689

/-- `A201780(n²+A028310(n²))` -/
def P3849730168983058880.Spec : Prop :=
  ∀ n, P3849730168983058880.a n = A278689 n

end A278689

/-! ## A278689.P15642342795961031905

`A201780(A001105(n)+A000007(n))`
-/

namespace A278689.P15642342795961031905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (A001105 n + A000007 n).toNat

end

end A278689.P15642342795961031905

namespace A278689

/-- `A201780(A001105(n)+A000007(n))` -/
def P15642342795961031905.Spec : Prop :=
  ∀ n, P15642342795961031905.a n = A278689 n

end A278689

/-! ## A278689.P688083405535188470

`A201780(A004277(n)*A028310(n))`
-/

namespace A278689.P688083405535188470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (A004277 n * A028310 n).toNat

end

end A278689.P688083405535188470

namespace A278689

/-- `A201780(A004277(n)*A028310(n))` -/
def P688083405535188470.Spec : Prop :=
  ∀ n, P688083405535188470.a n = A278689 n

end A278689

/-! ## A278689.P2309689991024352602

`A201780(xor(A000007(n), A001105(n)))`
-/

namespace A278689.P2309689991024352602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (Int.xor (A000007 n) (A001105 n)).toNat

end

end A278689.P2309689991024352602

namespace A278689

/-- `A201780(xor(A000007(n), A001105(n)))` -/
def P2309689991024352602.Spec : Prop :=
  ∀ n, P2309689991024352602.a n = A278689 n

end A278689

/-! ## A278689.P4917076805659383780

`A201780(A028310(2*n)*A028310(n))`
-/

namespace A278689.P4917076805659383780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (A028310 (2 * n) * A028310 n).toNat

end

end A278689.P4917076805659383780

namespace A278689

/-- `A201780(A028310(2*n)*A028310(n))` -/
def P4917076805659383780.Spec : Prop :=
  ∀ n, P4917076805659383780.a n = A278689 n

end A278689

/-! ## A278689.P11525635327769710792

`A201780((A004277(n)-n)*A004277(n))`
-/

namespace A278689.P11525635327769710792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 ((A004277 n - (n : ℤ)) * A004277 n).toNat

end

end A278689.P11525635327769710792

namespace A278689

/-- `A201780((A004277(n)-n)*A004277(n))` -/
def P11525635327769710792.Spec : Prop :=
  ∀ n, P11525635327769710792.a n = A278689 n

end A278689

/-! ## A278689.P4264672886247780710

`A201780(A065033((2*n)²))`
-/

namespace A278689.P4264672886247780710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (A065033 ((2 * n) ^ 2)).toNat

end

end A278689.P4264672886247780710

namespace A278689

/-- `A201780(A065033((2*n)²))` -/
def P4264672886247780710.Spec : Prop :=
  ∀ n, P4264672886247780710.a n = A278689 n

end A278689

/-!
# A278690: Expansion of Product_{n>=1} (1 - x^(3*n))/(1 - x^n)^2 in powers of x.

The programs for A278690, there is no canonical definition to state claims against.
-/

/-! ## A278690.P13114781741356679777

`A151878(A276086(n))-A054274(3*n+2)`
-/

namespace A278690.P13114781741356679777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A276086 n).toNat - A054274 (3 * n + 2)

end

end A278690.P13114781741356679777

/-! ## A278690.P2006538239214573345

`A008683(A054267(2*n+1))*A054274(3*n+2)`
-/

namespace A278690.P2006538239214573345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A054267 (2 * n + 1)).toNat * A054274 (3 * n + 2)

end

end A278690.P2006538239214573345

/-! ## A278690.P6773951698130566558

`A059841(A054244(n+1))-A054274(3*n+2)`
-/

namespace A278690.P6773951698130566558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A054244 (n + 1)).toNat - A054274 (3 * n + 2)

end

end A278690.P6773951698130566558

/-! ## A278690.P14271692288100312111

`A151878(A140141(n+3))-A054274(3*n+2)`
-/

namespace A278690.P14271692288100312111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A140141 (n + 3)).toNat - A054274 (3 * n + 2)

end

end A278690.P14271692288100312111

/-! ## A278690.P1171629758491782428

`A007949(A054267(n))-A054274(3*n+2)`
-/

namespace A278690.P1171629758491782428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A054267 n).toNat - A054274 (3 * n + 2)

end

end A278690.P1171629758491782428

/-!
# A278691: Number of graded lattices on n nodes.

The programs for A278691, there is no canonical definition to state claims against.
-/

/-! ## A278691.P10672858855958618152

`A036048(A007318(n)+n²)`
-/

namespace A278691.P10672858855958618152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036048 (A007318 n + (n ^ 2 : ℤ)).toNat

end

end A278691.P10672858855958618152

/-! ## A278691.P13019886598318950014

`A001462(A012262(n)+floor(n/4))`
-/

namespace A278691.P13019886598318950014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A012262 n + ⌊(n : ℚ) / 4⌋).toNat

end

end A278691.P13019886598318950014

/-!
# A278692: Pisot sequence T(4,14).

The programs for A278692, the canonical program `A278692.P7921626138328745381` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278692 has offset 0).

The definition of A278692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278692.P7921626138328745381

`4*a(n-1)-2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=4, a(1)=14, a(2)=49, a(3)=171`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A278692

/-- `4*a(n-1)-2*a(n-2)+a(n-3)-a(n-4)` -/
def P7921626138328745381.Spec : Prop :=
  ∀ n, P7921626138328745381.a n = A278692 n

theorem P7921626138328745381.correct : P7921626138328745381.Spec := by
  intro n
  simp only [A278692]

end A278692

/-! ## A278692.P626951906773257552

`floor(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=14`
-/

namespace A278692.P626951906773257552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 14] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A278692.P626951906773257552

namespace A278692

/-- `floor(a(n-1)²/a(n-2))` -/
def P626951906773257552.Spec : Prop :=
  ∀ n, P626951906773257552.a n = A278692 n

end A278692

/-! ## A278692.P15121110838583942845

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=14`
-/

namespace A278692.P15121110838583942845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 14] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A278692.P15121110838583942845

namespace A278692

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P15121110838583942845.Spec : Prop :=
  ∀ n, P15121110838583942845.a n = A278692 n

end A278692

/-! ## A278692.P6415527184043688536

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=4, a(1)=14, a(2)=49`
-/

namespace A278692.P6415527184043688536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 14, 49] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A278692.P6415527184043688536

namespace A278692

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P6415527184043688536.Spec : Prop :=
  ∀ n, P6415527184043688536.a n = A278692 n

end A278692

/-!
# A278694: Primes p such that every suffix of the ternary (base-3) representation of p is either a prime or 1.

The programs for A278694, there is no canonical definition to state claims against.
-/

/-! ## A278694.P6941972614697469614

`A038612(record[A106289(n+1)])`
-/

namespace A278694.P6941972614697469614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278694.P6941972614697469614

/-! ## A278694.P18157630725505857136

`A256484(lt[A004171(n), A087024(n+1)]+1)`
-/

namespace A278694.P18157630725505857136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A278694.P18157630725505857136

/-! ## A278694.P4641460098948514559

`∩[A000040(n+1), A318719(A168009(n+1))]`
-/

namespace A278694.P4641460098948514559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (A168009 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278694.P4641460098948514559

/-! ## A278694.P13322552735110551423

`∩[A069684(n+1), A318719(A168009(n+1))]`
-/

namespace A278694.P13322552735110551423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (A168009 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278694.P13322552735110551423

/-! ## A278694.P3980609688506079906

`A000040(lt[A059048(2*(n+1)), A000005(n+1)])`
-/

namespace A278694.P3980609688506079906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059048 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A278694.P3980609688506079906

/-!
# A278696: Primes p such that every suffix of the ternary (base-3) representation of p is a prime.

The programs for A278696, there is no canonical definition to state claims against.
-/

/-! ## A278696.P9846517405119280688

`filter[A278694(n+1), A080846(#)]`
-/

namespace A278696.P9846517405119280688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A278696.P9846517405119280688

/-! ## A278696.P14434986722393723692

`filter[A278694(n+1), A189673(#)]`
-/

namespace A278696.P14434986722393723692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189673 (f1 j).toNat = 1) n)

end

end A278696.P14434986722393723692

/-! ## A278696.P4557194922391368156

`filter[A278694(n+1), A214090(#)]`
-/

namespace A278696.P4557194922391368156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214090 (f1 j).toNat = 1) n)

end

end A278696.P4557194922391368156

/-! ## A278696.P9064504774749263170

`filter[A278694(n+1), A284878(#)]`
-/

namespace A278696.P9064504774749263170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284878 (f1 j).toNat = 1) n)

end

end A278696.P9064504774749263170

/-! ## A278696.P8311566742911773785

`filter[A278694(n+1), A285351(#)]`
-/

namespace A278696.P8311566742911773785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285351 (f1 j).toNat = 1) n)

end

end A278696.P8311566742911773785

/-!
# A278697: Primes p such that every suffix of the base-5 representation of p is a prime.

The programs for A278697, there is no canonical definition to state claims against.
-/

/-! ## A278697.P13592529952224531928

`∩[A003631(n+1), A278698(n+1)]`
-/

namespace A278697.P13592529952224531928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278697.P13592529952224531928

/-! ## A278697.P13815520542418130090

`∩[A042993(n+1), A278698(n+1)]`
-/

namespace A278697.P13815520542418130090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278697.P13815520542418130090

/-! ## A278697.P17041898009208903616

`∩[A069104(n+1), A278698(n+1)]`
-/

namespace A278697.P17041898009208903616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278697.P17041898009208903616

/-! ## A278697.P8174748455189268724

`∩[A140971(n+1), A278698(n+1)]`
-/

namespace A278697.P8174748455189268724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278697.P8174748455189268724

/-! ## A278697.P18319746643746924106

`∩[A023162(n+1), A278698(n+1)]`
-/

namespace A278697.P18319746643746924106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278697.P18319746643746924106

/-! ## A278697.P8664581267756464939

`∩[A040982(n+1), A278698(n+1)]`
-/

namespace A278697.P8664581267756464939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278697.P8664581267756464939

/-! ## A278697.P4224694412793299691

`∩[A042991(n+1), A278698(n+1)]`
-/

namespace A278697.P4224694412793299691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278697.P4224694412793299691

/-! ## A278697.P3168042181122593955

`∩[A045327(n+1), A278698(n+1)]`
-/

namespace A278697.P3168042181122593955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278697.P3168042181122593955

/-!
# A278698: Primes p such that every suffix of the base-5 representation of p is either a prime or 1.

The programs for A278698, there is no canonical definition to state claims against.
-/

/-! ## A278698.P1526125658684221407

`p?[∑[A060502(A347667(n))]]`
-/

namespace A278698.P1526125658684221407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A347667 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278698.P1526125658684221407

/-! ## A278698.P3096792906237357613

`A000040(∑[gcd(n, A254439(n+1))])`
-/

namespace A278698.P3096792906237357613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A254439 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278698.P3096792906237357613

/-! ## A278698.P15960496085707780550

`p?[eq[A086965(n+1), A304118(n+1)]]`
-/

namespace A278698.P15960496085707780550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086965 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A278698.P15960496085707780550

/-! ## A278698.P14100085462516680768

`p?[∑[A232529(A310878(n))]]`
-/

namespace A278698.P14100085462516680768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232529 (A310878 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278698.P14100085462516680768

/-!
# A278699: Primes p such that every suffix of the base-4 representation of p is a prime.

The programs for A278699, there is no canonical definition to state claims against.
-/

/-! ## A278699.P12704195160072537712

`filter[A279956(n+1), A021913(#)]`
-/

namespace A278699.P12704195160072537712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A278699.P12704195160072537712

/-! ## A278699.P18174913773672526292

`filter[A279956(n+1), A292077(#)]`
-/

namespace A278699.P18174913773672526292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292077 (f1 j).toNat = 1) n)

end

end A278699.P18174913773672526292

/-! ## A278699.P16492101758377105655

`filter[A279956(n+1), A347871(#)]`
-/

namespace A278699.P16492101758377105655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A278699.P16492101758377105655

/-! ## A278699.P14611416797055095887

`∩[A045326(n+1), A279956(n+1)]`
-/

namespace A278699.P14611416797055095887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278699.P14611416797055095887

/-! ## A278699.P11469859692792036752

`∩[A097987(n+1), A279956(n+1)]`
-/

namespace A278699.P11469859692792036752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278699.P11469859692792036752

/-! ## A278699.P391619205034143632

`∩[A120127(n+1), A279956(n+1)]`
-/

namespace A278699.P391619205034143632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278699.P391619205034143632

/-! ## A278699.P7353598839552025352

`∩[A279956(n+1), A332555(n+1)]`
-/

namespace A278699.P7353598839552025352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278699.P7353598839552025352

