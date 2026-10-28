import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A308600: Number of (not necessarily maximal) cliques in the n X n antelope graph.

The programs for A308600, the canonical program `A308600.P11430263475291810259` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308600 has offset 1).

The definition of A308600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308600.P504137088905406964

`ogf((2-x+x^2+8x^4)/(1-3x+3x^2-x^3))`
-/

namespace A308600.P504137088905406964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 1, 0, 8] [1, -3, 3, -1] n

end

end A308600.P504137088905406964

namespace A308600

/-- `ogf((2-x+x^2+8x^4)/(1-3x+3x^2-x^3))` -/
def P504137088905406964.Spec : Prop :=
  ∀ n, P504137088905406964.a n = A308600 (n + 1)

end A308600

/-! ## A308600.P11430263475291810259

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=5, a(2)=10, a(3)=17, a(4)=34`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308600

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11430263475291810259.Spec : Prop :=
  ∀ n, P11430263475291810259.a n = A308600 (n + 1)

theorem P11430263475291810259.correct : P11430263475291810259.Spec := by
  intro n
  simp only [A308600, Nat.add_sub_cancel]

end A308600

/-! ## A308600.P15622862084911497464

`∑[a(n-1)+10]` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A308600.P15622862084911497464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 7] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308600.P15622862084911497464

namespace A308600

/-- `∑[a(n-1)+10]` -/
def P15622862084911497464.Spec : Prop :=
  ∀ n, (P15622862084911497464.a n : ℤ) = A308600 (n + 1)

end A308600

/-! ## A308600.P11313452542142871328

`(n+1)²+(abs(2-n)+n-3)²`
-/

namespace A308600.P11313452542142871328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (|2 - (n : ℤ)| + ((n : ℤ) - 3)) ^ 2

end

end A308600.P11313452542142871328

namespace A308600

/-- `(n+1)²+(abs(2-n)+n-3)²` -/
def P11313452542142871328.Spec : Prop :=
  ∀ n, P11313452542142871328.a n = A308600 (n + 1)

end A308600

/-! ## A308600.P9202208029085673804

`∑[lt[A265525(n+3), A056992(n+1)]]`
-/

namespace A308600.P9202208029085673804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056992 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308600.P9202208029085673804

namespace A308600

/-- `∑[lt[A265525(n+3), A056992(n+1)]]` -/
def P9202208029085673804.Spec : Prop :=
  ∀ n, (P9202208029085673804.a n : ℤ) = A308600 (n + 1)

end A308600

/-!
# A308601: Number of (not necessarily connected) distance-transitive graphs with n nodes.

The programs for A308601, there is no canonical definition to state claims against.
-/

/-! ## A308601.P6093826473933434212

`∑{d}[n+1, A241814(#)]`
-/

namespace A308601.P6093826473933434212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A241814 d

end

end A308601.P6093826473933434212

/-! ## A308601.P8951820103184211226

`A241814(n+1)+A087145(n+1)`
-/

namespace A308601.P8951820103184211226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241814 (n + 1) + A087145 (n + 1)

end

end A308601.P8951820103184211226

/-! ## A308601.P1542360238879140045

`A300244(n+1)+∏{e}[A132870(n), #]`
-/

namespace A308601.P1542360238879140045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300244 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A308601.P1542360238879140045

/-! ## A308601.P7439740636834618019

`A000203(n+1)+A001031(n+3)-(n+2)`
-/

namespace A308601.P7439740636834618019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A001031 (n + 3) - (n + 2 : ℤ))

end

end A308601.P7439740636834618019

/-! ## A308601.P17167684941009445150

`∑{d}[n+1, A330747(#)*A333831((n+1)/#)]`
-/

namespace A308601.P17167684941009445150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A330747 d * A333831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308601.P17167684941009445150

/-!
# A308602: Number of (not necessarily maximal) cliques in the n-cycle graph.

The programs for A308602, the canonical program `A308602.P17943464624572182488` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308602 has offset 3).

The definition of A308602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308602.P17943464624572182488

`ogf((8-7x+x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308602

/-- `ogf((8-7x+x^2)/(1-2x+x^2))` -/
def P17943464624572182488.Spec : Prop :=
  ∀ n, P17943464624572182488.a n = A308602 (n + 3)

theorem P17943464624572182488.correct : P17943464624572182488.Spec := by
  intro n
  simp only [A308602, Nat.add_sub_cancel]

end A308602

/-!
# A308603: Number of (not necessarily maximal) cliques in the n-dipyramidal graph.

The programs for A308603, the canonical program `A308603.P15026592612354034632` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308603 has offset 3).

The definition of A308603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308603.P15026592612354034632

`a(n-1)+6` with `a(0)=24, a(1)=27`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308603

/-- `a(n-1)+6` -/
def P15026592612354034632.Spec : Prop :=
  ∀ n, (P15026592612354034632.a n : ℤ) = A308603 (n + 3)

theorem P15026592612354034632.correct : P15026592612354034632.Spec := by
  intro n
  simp only [A308603, Nat.add_sub_cancel]

end A308603

/-!
# A308604: Number of (not necessarily maximal) cliques in the n X n fiveleaper graph.

The programs for A308604, the canonical program `A308604.P15455614900578238537` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308604 has offset 1).

The definition of A308604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308604.P4881249742787783658

`ogf((2-x+x^2+8x^4+12x^5-8x^6)/(1-3x+3x^2-x^3))`
-/

namespace A308604.P4881249742787783658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 1, 0, 8, 12, -8] [1, -3, 3, -1] n

end

end A308604.P4881249742787783658

namespace A308604

/-- `ogf((2-x+x^2+8x^4+12x^5-8x^6)/(1-3x+3x^2-x^3))` -/
def P4881249742787783658.Spec : Prop :=
  ∀ n, P4881249742787783658.a n = A308604 (n + 1)

end A308604

/-! ## A308604.P15455614900578238537

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=5, a(2)=10, a(3)=17, a(4)=34, a(5)=73, a(6)=126`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308604

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15455614900578238537.Spec : Prop :=
  ∀ n, P15455614900578238537.a n = A308604 (n + 1)

theorem P15455614900578238537.correct : P15455614900578238537.Spec := by
  intro n
  simp only [A308604, Nat.add_sub_cancel]

end A308604

/-! ## A308604.P8429292643918040940

`A287101(n)+A001223(A062970(n))`
-/

namespace A308604.P8429292643918040940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287101 n + A001223 (A062970 n).toNat

end

end A308604.P8429292643918040940

namespace A308604

/-- `A287101(n)+A001223(A062970(n))` -/
def P8429292643918040940.Spec : Prop :=
  ∀ n, P8429292643918040940.a n = A308604 (n + 1)

end A308604

/-!
# A308605: Number of distinct subset sums of the subsets of the set of divisors of n. Here 0 (as the sum of an empty subset) is included in the count.

The programs for A308605, there is no canonical definition to state claims against.
-/

/-! ## A308605.P3206999274607253869

`1+A119347(n+1)`
-/

namespace A308605.P3206999274607253869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A119347 (n + 1)

end

end A308605.P3206999274607253869

/-! ## A308605.P15214656350673300084

`A088580(n+1)-A378450(n+1)`
-/

namespace A308605.P15214656350673300084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A378450 (n + 1)

end

end A308605.P15214656350673300084

/-! ## A308605.P18095812474396264884

`A193279(n+1)+A378447(n+1)+1`
-/

namespace A308605.P18095812474396264884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193279 (n + 1) + (A378447 (n + 1) + 1)

end

end A308605.P18095812474396264884

/-! ## A308605.P9278436807668365628

`A000203(n+1)+1-A378450(n+1)`
-/

namespace A308605.P9278436807668365628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A378450 (n + 1))

end

end A308605.P9278436807668365628

/-! ## A308605.P10325302328189215801

`2/A000203(n+1)*A237290(n+1)`
-/

namespace A308605.P10325302328189215801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000203 (n + 1) : ℚ) * (A237290 (n + 1) : ℚ)

end

end A308605.P10325302328189215801

/-! ## A308605.P16541249106615969545

`2*A237290(n+1)/∑[A340793(n+1)]`
-/

namespace A308605.P16541249106615969545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A237290 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A308605.P16541249106615969545

/-! ## A308605.P15379739609127302590

`A020725(A119347(n+1))`
-/

namespace A308605.P15379739609127302590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A119347 (n + 1)).toNat

end

end A308605.P15379739609127302590

/-! ## A308605.P6044510484127558321

`A088580(n+1)/A161680(A088580(n+1))*A237290(n+1)`
-/

namespace A308605.P6044510484127558321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) : ℚ) / (A161680 (A088580 (n + 1)).toNat : ℚ) * (A237290 (n + 1) : ℚ)

end

end A308605.P6044510484127558321

/-! ## A308605.P17936769777361352470

`Δ[eq[1, A119348(n+1)]]+1`
-/

namespace A308605.P17936769777361352470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119348 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A308605.P17936769777361352470

/-! ## A308605.P5843541014205421323

`A004277(A237290(n+1))/A000203(n+1)`
-/

namespace A308605.P5843541014205421323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A237290 (n + 1)).toNat : ℚ) / (A000203 (n + 1) : ℚ)

end

end A308605.P5843541014205421323

/-!
# A308606: Number of (not necessarily maximal) cliques in the n-transposition graph.

The programs for A308606, the canonical program `A308606.P13959321076772725124` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308606 has offset 1).

The definition of A308606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308606.P13959321076772725124

`1+((n+1)²-(n+1)+4)*(n+1)!/4`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308606

/-- `1+((n+1)²-(n+1)+4)*(n+1)!/4` -/
def P13959321076772725124.Spec : Prop :=
  ∀ n, P13959321076772725124.a n = (A308606 (n + 1) : ℚ)

end A308606

/-! ## A308606.P1732297403063914260

`A076301(n+1)+1`
-/

namespace A308606.P1732297403063914260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076301 (n + 1) + 1

end

end A308606.P1732297403063914260

namespace A308606

/-- `A076301(n+1)+1` -/
def P1732297403063914260.Spec : Prop :=
  ∀ n, P1732297403063914260.a n = A308606 (n + 1)

end A308606

/-! ## A308606.P8444414770165816818

`A284816(n+1)+1-A180119(n)`
-/

namespace A308606.P8444414770165816818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284816 (n + 1) + (1 - A180119 n)

end

end A308606.P8444414770165816818

namespace A308606

/-- `A284816(n+1)+1-A180119(n)` -/
def P8444414770165816818.Spec : Prop :=
  ∀ n, P8444414770165816818.a n = A308606 (n + 1)

end A308606

/-! ## A308606.P14621285982585815570

`A001710(n+1)*A133263(n)+1`
-/

namespace A308606.P14621285982585815570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 1) * A133263 n + 1

end

end A308606.P14621285982585815570

namespace A308606

/-- `A001710(n+1)*A133263(n)+1` -/
def P14621285982585815570.Spec : Prop :=
  ∀ n, P14621285982585815570.a n = A308606 (n + 1)

end A308606

/-! ## A308606.P17818049915946594638

`A284816(n+1)+2-A300559(n)`
-/

namespace A308606.P17818049915946594638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284816 (n + 1) + (2 - A300559 n)

end

end A308606.P17818049915946594638

namespace A308606

/-- `A284816(n+1)+2-A300559(n)` -/
def P17818049915946594638.Spec : Prop :=
  ∀ n, P17818049915946594638.a n = A308606 (n + 1)

end A308606

/-! ## A308606.P10291387120604542686

`A000142(n+1)+A001809(n+1)+1`
-/

namespace A308606.P10291387120604542686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) + (A001809 (n + 1) + 1)

end

end A308606.P10291387120604542686

namespace A308606

/-- `A000142(n+1)+A001809(n+1)+1` -/
def P10291387120604542686.Spec : Prop :=
  ∀ n, P10291387120604542686.a n = A308606 (n + 1)

end A308606

/-! ## A308606.P10048238968167416316

`A006595(n+1)+1-A001563(n+1)`
-/

namespace A308606.P10048238968167416316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006595 (n + 1) + (1 - A001563 (n + 1))

end

end A308606.P10048238968167416316

namespace A308606

/-- `A006595(n+1)+1-A001563(n+1)` -/
def P10048238968167416316.Spec : Prop :=
  ∀ n, P10048238968167416316.a n = A308606 (n + 1)

end A308606

/-! ## A308606.P12979075166471219255

`A001809(n+1)+A033312(n+1)+2`
-/

namespace A308606.P12979075166471219255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 (n + 1) + (A033312 (n + 1) + 2)

end

end A308606.P12979075166471219255

namespace A308606

/-- `A001809(n+1)+A033312(n+1)+2` -/
def P12979075166471219255.Spec : Prop :=
  ∀ n, P12979075166471219255.a n = A308606 (n + 1)

end A308606

/-! ## A308606.P3218905586350060102

`A082042(n+1)+1-A134437(n+2)`
-/

namespace A308606.P3218905586350060102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082042 (n + 1) + (1 - A134437 (n + 2))

end

end A308606.P3218905586350060102

namespace A308606

/-- `A082042(n+1)+1-A134437(n+2)` -/
def P3218905586350060102.Spec : Prop :=
  ∀ n, P3218905586350060102.a n = A308606 (n + 1)

end A308606

/-!
# A308607: Number of (not necessarily maximal) cliques in the wheel graph on n vertices.

The programs for A308607, the canonical program `A308607.P15853018992031342004` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308607 has offset 4).

The definition of A308607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308607.P15853018992031342004

`ogf((16-14x+2x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308607

/-- `ogf((16-14x+2x^2)/(1-2x+x^2))` -/
def P15853018992031342004.Spec : Prop :=
  ∀ n, P15853018992031342004.a n = A308607 (n + 4)

theorem P15853018992031342004.correct : P15853018992031342004.Spec := by
  intro n
  simp only [A308607, Nat.add_sub_cancel]

end A308607

/-!
# A308608: For any n > 0 and k >= 0, let w_n(k) be the number of ways to write k as a sum of distinct divisors of n; a(n) = max_{k >= 0} w_n(k).

The programs for A308608, there is no canonical definition to state claims against.
-/

/-! ## A308608.P14782628732597464156

`A033630(A290480(n+1)%A127473(n+1)²)`
-/

namespace A308608.P14782628732597464156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (Int.tmod (A290480 (n + 1)) (A127473 (n + 1) ^ 2)).toNat

end

end A308608.P14782628732597464156

/-! ## A308608.P4686070855622573186

`A065205(n+1)+A033630(A034467(n+1))`
-/

namespace A308608.P4686070855622573186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1) + A033630 (A034467 (n + 1)).toNat

end

end A308608.P4686070855622573186

/-! ## A308608.P918803432984036900

`A000120(5^A065205(n+1))`
-/

namespace A308608.P918803432984036900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A065205 (n + 1) : ℤ))).toNat

end

end A308608.P918803432984036900

/-! ## A308608.P8018944449119729875

`A244544(A065205(n+1)^5)`
-/

namespace A308608.P8018944449119729875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244544 (A065205 (n + 1) ^ 5).toNat

end

end A308608.P8018944449119729875

/-! ## A308608.P4418014024945439334

`A343655(round(cosh(A065205(n+1))))`
-/

namespace A308608.P4418014024945439334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343655 (SequenceMachineLib.roundAway (Real.cosh (A065205 (n + 1) : ℝ))).toNat

end

end A308608.P4418014024945439334

/-!
# A308609: Lexicographically earliest sequence of distinct terms such that a(n) is divisible by five and only five digits of a(n+1).

The programs for A308609, there is no canonical definition to state claims against.
-/

/-! ## A308609.P10041035169376641371

`A038447(n*a(A034349(n+1)))` with `a(0)=1`
-/

namespace A308609.P10041035169376641371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038447 ((n : ℤ) * a (A034349 (n + 1)).toNat).toNat

end

end A308609.P10041035169376641371

/-! ## A308609.P1905778121657217963

`A038447(n*a(A335803(n+1)))` with `a(0)=1`
-/

namespace A308609.P1905778121657217963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038447 ((n : ℤ) * a (A335803 (n + 1)).toNat).toNat

end

end A308609.P1905778121657217963

/-! ## A308609.P1413230012628770807

`A038447(n*a(A347706(n+1)))` with `a(0)=1`
-/

namespace A308609.P1413230012628770807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038447 ((n : ℤ) * a (A347706 (n + 1)).toNat).toNat

end

end A308609.P1413230012628770807

/-!
# A308611: Numbers k such that A307616(k) > A307616(k-1).

The programs for A308611, there is no canonical definition to state claims against.
-/

/-! ## A308611.P5069522883641563992

`∑[A307619(n+1)]+1`
-/

namespace A308611.P5069522883641563992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A308611.P5069522883641563992

/-! ## A308611.P10903884163256050369

`A020725(∑[A307619(n+1)])`
-/

namespace A308611.P10903884163256050369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308611.P10903884163256050369

/-! ## A308611.P10955256974119155365

`∑[A307619(A028310(n)+1)]`
-/

namespace A308611.P10955256974119155365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307619 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308611.P10955256974119155365

/-! ## A308611.P921056503862364833

`A065475(∑[A307619(n+1)])`
-/

namespace A308611.P921056503862364833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308611.P921056503862364833

/-! ## A308611.P5306979941763093442

`A153152(∑[A307619(n+1)])`
-/

namespace A308611.P5306979941763093442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308611.P5306979941763093442

/-!
# A308613: Moments of the ternary Cantor measure (denominators).

The programs for A308613, there is no canonical definition to state claims against.
-/

/-! ## A308613.P16210975404854122301

`A010554(4^xor(n, floor(n/4))+1)`
-/

namespace A308613.P16210975404854122301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋ : ℤ) + 1)).toNat

end

end A308613.P16210975404854122301

/-! ## A308613.P14124169353794008628

`A344915(A222229(∑[n]))`
-/

namespace A308613.P14124169353794008628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344915 (A222229 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A308613.P14124169353794008628

/-!
# A308614: Numerators of the even shifted moments of the ternary Cantor measure.

The programs for A308614, there is no canonical definition to state claims against.
-/

/-! ## A308614.P5323476133528288212

`A046702(A350938(n))`
-/

namespace A308614.P5323476133528288212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046702 (A350938 n).toNat

end

end A308614.P5323476133528288212

/-!
# A308615: Denominators of the even shifted moments of the ternary Cantor measure.

The programs for A308615, there is no canonical definition to state claims against.
-/

/-! ## A308615.P3111395626409981643

`A308613(record[A000120(3*n)])`
-/

namespace A308615.P3111395626409981643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308615.P3111395626409981643

/-! ## A308615.P2497104590728522063

`record[C(A308613(n), A287975(n))]`
-/

namespace A308615.P2497104590728522063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A308613 n).toNat (A287975 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308615.P2497104590728522063

/-! ## A308615.P737536728574922793

`A308613(A099145(n+1)+n)`
-/

namespace A308615.P737536728574922793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308613 (A099145 (n + 1) + (n : ℤ)).toNat

end

end A308615.P737536728574922793

/-!
# A308616: Number of well-formed formulas of length n in a formal propositional language with one unitary operator, one binary operator, and one propositional variable.

The programs for A308616, there is no canonical definition to state claims against.
-/

/-! ## A308616.P13190061863455412815

`A329689(n)-a(n-1)` with `a(0)=1`
-/

namespace A308616.P13190061863455412815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A329689 n - a (n - 1)

end

end A308616.P13190061863455412815

/-! ## A308616.P13353947918483157915

`abs(∑[A033999(n)*A329689(n)])`
-/

namespace A308616.P13353947918483157915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A329689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A308616.P13353947918483157915

/-! ## A308616.P12676219226711308711

`(1-A010673(n))*∑[A033999(n)*A329689(n)]`
-/

namespace A308616.P12676219226711308711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A329689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308616.P12676219226711308711

/-! ## A308616.P6912541745267271612

`∑[A033999(n)*A329689(n)]*A033999(n+2)`
-/

namespace A308616.P6912541745267271612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A329689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 2)

end

end A308616.P6912541745267271612

/-! ## A308616.P16210386895741155792

`∑[A033999(n)*A329689(n)]*A056594(2*n)`
-/

namespace A308616.P16210386895741155792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A329689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A056594 (2 * n)

end

end A308616.P16210386895741155792

/-!
# A308618: Cubefree superabundant numbers: cubefree numbers (A004709) k such that sigma(k)/k > sigma(j)/j for all cubefree numbers j < k.

The programs for A308618, there is no canonical definition to state claims against.
-/

/-! ## A308618.P149151816575717055

`∩[A360425(n+1), A377139(n+1)]`
-/

namespace A308618.P149151816575717055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308618.P149151816575717055

/-! ## A308618.P2782830031379696197

`∩[A015702(n+1), A377139(n+1)]`
-/

namespace A308618.P2782830031379696197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308618.P2782830031379696197

/-! ## A308618.P10819827674075359875

`∩[A007095(n), A333931(n+1)]`
-/

namespace A308618.P10819827674075359875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308618.P10819827674075359875

/-! ## A308618.P7227802294177534300

`∩[A007095(n), A353899(n+1)]`
-/

namespace A308618.P7227802294177534300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308618.P7227802294177534300

/-! ## A308618.P9572245052178434265

`∩[A216365(n+1), A220423(n+1)]`
-/

namespace A308618.P9572245052178434265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308618.P9572245052178434265

/-!
# A308620: Number of states in the evolutionary spatial prisoner's dilemma with n players.

The programs for A308620, there is no canonical definition to state claims against.
-/

/-! ## A308620.P9820151264491011386

`A093700(a(n-2))+a(n-1)` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A308620.P9820151264491011386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n a =>
  A093700 (a (n - 2)).toNat + a (n - 1)

end

end A308620.P9820151264491011386

/-! ## A308620.P9716397547868622507

`A172471(∑[A185087(n-2)+a(n-1)])` with `a(0)=2, a(1)=0`
-/

namespace A308620.P9716397547868622507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  A185087 (n - 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308620.P9716397547868622507

/-! ## A308620.P11257129955095513188

`A225687(A239075(n)+1)`
-/

namespace A308620.P11257129955095513188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A239075 n + 1).toNat

end

end A308620.P11257129955095513188

/-! ## A308620.P13853262750280029959

`A000194(A052949(n)+2)`
-/

namespace A308620.P13853262750280029959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A052949 n + 2).toNat

end

end A308620.P13853262750280029959

/-! ## A308620.P8931931349447679091

`A000194(A077998(n)+3)`
-/

namespace A308620.P8931931349447679091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A077998 n + 3).toNat

end

end A308620.P8931931349447679091

/-!
# A308621: Number of ways to write n as a*(a+1)/2 + b*(b+1)/2 + 2^c*5^(3d) with a,b,c,d nonnegative integers.

The programs for A308621, there is no canonical definition to state claims against.
-/

/-! ## A308621.P14553204287054627336

`A308623(A000194((n+1)²))`
-/

namespace A308621.P14553204287054627336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308623 (A000194 ((n + 1) ^ 2)).toNat

end

end A308621.P14553204287054627336

/-! ## A308621.P10424748633839603007

`A308623(A057918((n+2)²))`
-/

namespace A308621.P10424748633839603007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308623 (A057918 ((n + 2) ^ 2)).toNat

end

end A308621.P10424748633839603007

/-! ## A308621.P1228969479707562806

`A308623(A000196((n+1)²+1))`
-/

namespace A308621.P1228969479707562806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308623 (A000196 ((n + 1) ^ 2 + 1)).toNat

end

end A308621.P1228969479707562806

/-! ## A308621.P1339908785491948608

`A308623(n+1)+A000007((n+1)²)`
-/

namespace A308621.P1339908785491948608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308623 (n + 1) + A000007 ((n + 1) ^ 2)

end

end A308621.P1339908785491948608

/-! ## A308621.P2368438702355000496

`A308623(n+1)%A001961((n+2)²)`
-/

namespace A308621.P2368438702355000496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308623 (n + 1)) (A001961 ((n + 2) ^ 2))

end

end A308621.P2368438702355000496

/-! ## A308621.P836257560914086864

`A057427(A000265((n+1)²+1))*A308623(n+1)`
-/

namespace A308621.P836257560914086864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000265 ((n + 1) ^ 2 + 1)).toNat * A308623 (n + 1)

end

end A308621.P836257560914086864

/-! ## A308621.P13908734121075601741

`A308623(and(1, A058000(n+1))+n)`
-/

namespace A308621.P13908734121075601741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308623 (Int.land 1 (A058000 (n + 1)) + (n : ℤ)).toNat

end

end A308621.P13908734121075601741

/-! ## A308621.P4236399630800733325

`gcd(A008683(A257851(n)), A308623(n+1))`
-/

namespace A308621.P4236399630800733325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A257851 n).toNat) (A308623 (n + 1))

end

end A308621.P4236399630800733325

/-! ## A308621.P17117183215618050176

`gcd(A218488(n+1), A308623(n+1))`
-/

namespace A308621.P17117183215618050176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A218488 (n + 1)) (A308623 (n + 1))

end

end A308621.P17117183215618050176

/-! ## A308621.P8149772670845336833

`A308623(n+1)%A002189(n)`
-/

namespace A308621.P8149772670845336833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308623 (n + 1)) (A002189 n)

end

end A308621.P8149772670845336833

/-!
# A308622: a(n) = nearest integer to f(n), where f(0) = f(1) = 1, f(n) = (n-f(n-1))/f(n-2).

The programs for A308622, there is no canonical definition to state claims against.
-/

/-! ## A308622.P2880580202979519705

`A007302(∏{d}[A002473(n+1), A143691(#)])`
-/

namespace A308622.P2880580202979519705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (∏ d ∈ Nat.divisors (f1 n).natAbs, A143691 d).toNat

end

end A308622.P2880580202979519705

/-! ## A308622.P9045397656427960613

`A332999(A316545(n+1)+A130131(n+1))`
-/

namespace A308622.P9045397656427960613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332999 (A316545 (n + 1) + A130131 (n + 1)).toNat

end

end A308622.P9045397656427960613

/-! ## A308622.P7774356412709886107

`A355662(A050142(2*n+1))+A135939(2*n+3)`
-/

namespace A308622.P7774356412709886107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355662 (A050142 (2 * n + 1)).toNat + A135939 (2 * n + 3)

end

end A308622.P7774356412709886107

/-!
# A308624: Triangle read by rows: T(n,k) = n!/((n mod k)!*(k-(n mod k))!*(ceiling(n/k)!^(n mod k))*(floor(n/k)!^(k-(n mod k)))), n >= 1, n >= k >= 1, the number of ways of dividing n labeled items into k unlabeled boxes as evenly as possible.

The programs for A308624, there is no canonical definition to state claims against.
-/

/-! ## A308624.P5286261569820544152

`A049019(∑[A008284(n+1)])/A166350(n+1)`
-/

namespace A308624.P5286261569820544152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049019 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A166350 (n + 1) : ℚ)

end

end A308624.P5286261569820544152

/-! ## A308624.P7685481830357609606

`A036040(∑[A008284(n+1)])`
-/

namespace A308624.P7685481830357609606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308624.P7685481830357609606

/-! ## A308624.P10777393003829793643

`A036040(∑[A026921(n+1)+A026920(n+1)])`
-/

namespace A308624.P10777393003829793643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026921 (n + 1) + A026920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308624.P10777393003829793643

/-! ## A308624.P4902653643956881909

`A036040(∑[A172467(n+1)/A002260(n+1)])`
-/

namespace A308624.P4902653643956881909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172467 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A308624.P4902653643956881909

/-! ## A308624.P3410307231007501891

`A036040(∑[A215521(n+1)%A001986(n+1)])`
-/

namespace A308624.P3410307231007501891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215521 (n + 1)) (A001986 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308624.P3410307231007501891

/-!
# A308625: Van Eck sequence in 2-dimensional hexagonal space.

The programs for A308625, the canonical program `A308625.P7046151053043325188` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308625 has offset 1).

The definition of A308625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308625.P7046151053043325188

`ogf((x^2-x^3+x^4+x^5-2x^6+x^7+x^8+x^9-3x^10+2x^11+x^12-2x^14)/(1-x))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308625

/-- `ogf((x^2-x^3+x^4+x^5-2x^6+x^7+x^8+x^9-3x^10+2x^11+x^12-2x^14)/(1-x))` -/
def P7046151053043325188.Spec : Prop :=
  ∀ n, P7046151053043325188.a n = A308625 (n + 1)

theorem P7046151053043325188.correct : P7046151053043325188.Spec := by
  intro n
  simp only [A308625, Nat.add_sub_cancel]

end A308625

/-!
# A308626: Van Eck sequence on a square spiral on a 2-D grid.

The programs for A308626, the canonical program `A308626.P9211653081448610172` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308626 has offset 1).

The definition of A308626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308626.P9211653081448610172

`ogf((x^2-x^3+x^4+x^5-2x^6+2x^7-x^9+2x^10-3x^11+2x^12+2x^13-4x^14+x^15)/(1-x))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308626

/-- `ogf((x^2-x^3+x^4+x^5-2x^6+2x^7-x^9+2x^10-3x^11+2x^12+2x^13-4x^14+x^15)/(1-x))` -/
def P9211653081448610172.Spec : Prop :=
  ∀ n, P9211653081448610172.a n = A308626 (n + 1)

theorem P9211653081448610172.correct : P9211653081448610172.Spec := by
  intro n
  simp only [A308626, Nat.add_sub_cancel]

end A308626

/-!
# A308627: Numbers k such that the ternary tribonacci sequence (A080843) has a Lyndon factor of length k.

The programs for A308627, there is no canonical definition to state claims against.
-/

/-! ## A308627.P7694137943799383811

`∑[A086257(Δ[A357173(n+1)])]`
-/

namespace A308627.P7694137943799383811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357173 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086257 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308627.P7694137943799383811

/-! ## A308627.P701926128350387041

`∑[A003056(A049085(A215067(n)))]`
-/

namespace A308627.P701926128350387041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A049085 (A215067 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308627.P701926128350387041

/-! ## A308627.P5337785454458801529

`lt[A389324(A389310(n+3)), A389299(n)]`
-/

namespace A308627.P5337785454458801529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389324 (A389310 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389299 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308627.P5337785454458801529

/-!
# A308628: A Van Eck-type sequence on the triangular lattice.

The programs for A308628, the canonical program `A308628.P12864405609165069381` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308628 has offset 1).

The definition of A308628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308628.P12864405609165069381

`ogf((x^2-x^3+2x^4-2x^5+x^6+3x^7-4x^8+2x^9+x^10-3x^11+2x^12+x^13-2x^15)/(1-x))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308628

/-- `ogf((x^2-x^3+2x^4-2x^5+x^6+3x^7-4x^8+2x^9+x^10-3x^11+2x^12+x^13-2x^15)/(1-x))` -/
def P12864405609165069381.Spec : Prop :=
  ∀ n, P12864405609165069381.a n = A308628 (n + 1)

theorem P12864405609165069381.correct : P12864405609165069381.Spec := by
  intro n
  simp only [A308628, Nat.add_sub_cancel]

end A308628

/-!
# A308629: Lengths between nodes on a square spiral, such that the n-th node is closer to the (n-2)-th node than to the (n-1)-th node.

The programs for A308629, there is no canonical definition to state claims against.
-/

/-! ## A308629.P10899062652771220944

`A010051(A064961(n+1))+A000224(2*n+1)`
-/

namespace A308629.P10899062652771220944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A064961 (n + 1)).toNat + A000224 (2 * n + 1)

end

end A308629.P10899062652771220944

/-!
# A308630: Triangle T(n,k) read by rows: the sum of all smallest parts among all k-compositions of n.

The programs for A308630, there is no canonical definition to state claims against.
-/

/-! ## A308630.P1993932787661942720

`lcm(A111377(A187829(n+1)), A143182(n))`
-/

namespace A308630.P1993932787661942720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A111377 (A187829 (n + 1)).toNat) (A143182 n)

end

end A308630.P1993932787661942720

/-! ## A308630.P13833232549357327775

`lcm(A111377(A077168(n)), A143182(n))`
-/

namespace A308630.P13833232549357327775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A111377 (A077168 n).toNat) (A143182 n)

end

end A308630.P13833232549357327775

/-! ## A308630.P18261901667596934758

`A115583(A000124(n))*A131818(n+1)`
-/

namespace A308630.P18261901667596934758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (A000124 n).toNat * A131818 (n + 1)

end

end A308630.P18261901667596934758

/-! ## A308630.P7202547937137925947

`A131818(n+1)*A193582(A346500(3*n+4))`
-/

namespace A308630.P7202547937137925947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) * A193582 (A346500 (3 * n + 4)).toNat

end

end A308630.P7202547937137925947

/-!
# A308631: Related to the position of the smallest part in all compositions of n.

The programs for A308631, there is no canonical definition to state claims against.
-/

/-! ## A308631.P9843819016565389

`∑[A363224(n+2)]`
-/

namespace A308631.P9843819016565389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363224 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308631.P9843819016565389

/-! ## A308631.P618777402982330105

`∑[2^(n+1)-A105039(n+2)]`
-/

namespace A308631.P618777402982330105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A105039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308631.P618777402982330105

/-! ## A308631.P1133639754626296031

`A026819(A027043(n))`
-/

namespace A308631.P1133639754626296031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A027043 n).toNat

end

end A308631.P1133639754626296031

/-!
# A308634: Number of triangle-free acyclic digraphs (or DAGs) up to isomorphism with n vertices, maximum indegree 2 and unique maximal element.

The programs for A308634, there is no canonical definition to state claims against.
-/

/-! ## A308634.P18087009438205250819

`A080606(A158257(n))-A324748(n)`
-/

namespace A308634.P18087009438205250819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080606 (A158257 n).toNat - A324748 n

end

end A308634.P18087009438205250819

/-! ## A308634.P8305051102079984121

`A087011(A099377(n+1)+A094061(n))`
-/

namespace A308634.P8305051102079984121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (A099377 (n + 1) + A094061 n).toNat

end

end A308634.P8305051102079984121

/-! ## A308634.P9029580386179034109

`A057511(or(A000707(n+1), A014381(n)))`
-/

namespace A308634.P9029580386179034109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057511 (Int.lor (A000707 (n + 1)) (A014381 n)).toNat

end

end A308634.P9029580386179034109

/-!
# A308635: Sequence of 4 Pythagorean triangles, each with a leg and hypotenuse prime. The hypotenuse of each triangle is the leg of the next triangle.

The programs for A308635, there is no canonical definition to state claims against.
-/

/-! ## A308635.P12559032399558841163

`∩[A048295(n+1), A188547(n+1)]`
-/

namespace A308635.P12559032399558841163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308635.P12559032399558841163

/-!
# A308638: a(n) is the number of k > 0 such that n-1-2*k > 0 and the points (n-1-2*k, a(n-1-2*k)), (n-1-k, a(n-1-k)) and (n-1, a(n-1)) are aligned.

The programs for A308638, there is no canonical definition to state claims against.
-/

/-! ## A308638.P2560079032951020684

`A095149(A319901(n+1))%A327343(n+1)`
-/

namespace A308638.P2560079032951020684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095149 (A319901 (n + 1)).toNat) (A327343 (n + 1))

end

end A308638.P2560079032951020684

/-! ## A308638.P11471378342589966780

`A067029(2*n+1)%A002567(n+1)`
-/

namespace A308638.P11471378342589966780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067029 (2 * n + 1)) (A002567 (n + 1))

end

end A308638.P11471378342589966780

/-! ## A308638.P11802947216529556143

`A052409(A005408(n))%A002567(n+1)`
-/

namespace A308638.P11802947216529556143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052409 (A005408 n).toNat) (A002567 (n + 1))

end

end A308638.P11802947216529556143

/-! ## A308638.P10459255784653760006

`A124764(A191732(2*(n+1))-A049710(n+1))`
-/

namespace A308638.P10459255784653760006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A191732 (2 * (n + 1)) - A049710 (n + 1)).toNat

end

end A308638.P10459255784653760006

/-! ## A308638.P15072170955140222130

`A367098(A050903(n+1))`
-/

namespace A308638.P15072170955140222130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367098 (A050903 (n + 1)).toNat

end

end A308638.P15072170955140222130

/-!
# A308639: a(n) is the number of pairs (i,j) such that 0 < i < j < n-1 and the points (i, a(i)), (j, a(j)) and (n-1, a(n-1)) are aligned.

The programs for A308639, there is no canonical definition to state claims against.
-/

/-! ## A308639.P11183384441764740141

`C(A294883(A014968(2*(n+1))), 2)`
-/

namespace A308639.P11183384441764740141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294883 (A014968 (2 * (n + 1))).toNat).toNat 2

end

end A308639.P11183384441764740141

/-! ## A308639.P6478137604060516978

`C(A001222(C(A023499(n)+1, 2)+n), 2)`
-/

namespace A308639.P6478137604060516978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (Nat.choose (A023499 n + 1).toNat 2 + n)).toNat 2

end

end A308639.P6478137604060516978

/-! ## A308639.P2982900322816028904

`A001748(n+1)%A099246(A056362(n))`
-/

namespace A308639.P2982900322816028904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001748 (n + 1)) (A099246 (A056362 n).toNat)

end

end A308639.P2982900322816028904

/-! ## A308639.P1771144451991644195

`A359279(n+1)%A359279(A114584(n))`
-/

namespace A308639.P1771144451991644195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359279 (n + 1)) (A359279 (A114584 n).toNat)

end

end A308639.P1771144451991644195

/-!
# A308640: Number of ways to write n as (2^a*3^b)^2 + c*(2*c+1) + d*(3*d+1)/2, where a,b,c are nonnegative integers and d is an integer.

The programs for A308640, there is no canonical definition to state claims against.
-/

/-! ## A308640.P9144944173271131884

`A001221(A143182(n)+A097111(n))`
-/

namespace A308640.P9144944173271131884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A143182 n + A097111 n).toNat

end

end A308640.P9144944173271131884

/-! ## A308640.P15657225999363459403

`A318306(A143182(n)+A097111(n))`
-/

namespace A308640.P15657225999363459403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (A143182 n + A097111 n).toNat

end

end A308640.P15657225999363459403

/-! ## A308640.P16507247010693022004

`A102669(∑[A191750(n+1)+A000230(n)])`
-/

namespace A308640.P16507247010693022004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191750 (n + 1) + A000230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308640.P16507247010693022004

/-! ## A308640.P2819009946609538590

`A055642(A008292(n+4)*A281205(2*n+3))`
-/

namespace A308640.P2819009946609538590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A008292 (n + 4) * A281205 (2 * n + 3)).toNat

end

end A308640.P2819009946609538590

/-! ## A308640.P10270404997625215347

`A203571(A000120(n+2)^∑{e}[A002529(n)+1, #])`
-/

namespace A308640.P10270404997625215347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002529 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203571 (A000120 (n + 2) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)).toNat

end

end A308640.P10270404997625215347

/-!
# A308641: Number of ways to write n as (2^a*5^b)^2 + c*(3*c+1)/2 + d*(3*d+1)/2, where a and b are nonnegative integers, and c and d are integers with c*(3*c+1)/2 <= d*(3*d+1)/2.

The programs for A308641, there is no canonical definition to state claims against.
-/

/-! ## A308641.P12724449740066775230

`A238015(n)*A277745(A027423(n))`
-/

namespace A308641.P12724449740066775230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 n * A277745 (A027423 n).toNat

end

end A308641.P12724449740066775230

/-! ## A308641.P537421381395079395

`A318306(xor(A003099(n+2), A007376(2*n+7)))`
-/

namespace A308641.P537421381395079395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (Int.xor (A003099 (n + 2)) (A007376 (2 * n + 7))).toNat

end

end A308641.P537421381395079395

/-! ## A308641.P9791176307908017609

`A327104(n+1+A330025(n)+A313506(n))`
-/

namespace A308641.P9791176307908017609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 ((n + 1 : ℤ) + (A330025 n + A313506 n)).toNat

end

end A308641.P9791176307908017609

/-! ## A308641.P6258021196373400202

`A327104(abs(A008592(n)-A313295(n))+n+1)`
-/

namespace A308641.P6258021196373400202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 (|A008592 n - A313295 n| + (n + 1 : ℤ)).toNat

end

end A308641.P6258021196373400202

/-! ## A308641.P1692556554725413477

`A125029(A266464(3*n+2)-A303139(n+3))`
-/

namespace A308641.P1692556554725413477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125029 (A266464 (3 * n + 2) - A303139 (n + 3)).toNat

end

end A308641.P1692556554725413477

/-!
# A308643: Odd squarefree composite numbers k, divisible by the sum of their prime factors, sopfr (A001414).

The programs for A308643, the canonical program `A308643.P14298764351194110850` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308643 has offset 1).

The definition of A308643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3455 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308643.P14298764351194110850

`∩[A046347(n+1), A131647(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A308643

/-- `∩[A046347(n+1), A131647(n+1)]` -/
def P14298764351194110850.Spec : Prop :=
  ∀ n, (P14298764351194110850.a n : ℤ) = A308643 (n + 1)

theorem P14298764351194110850.correct : P14298764351194110850.Spec := by
  intro n
  simp only [A308643, Nat.add_sub_cancel]

end A308643

/-! ## A308643.P6275915573802042040

`record[A000265(A131647(n+3))]`
-/

namespace A308643.P6275915573802042040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A131647 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308643.P6275915573802042040

namespace A308643

/-- `record[A000265(A131647(n+3))]` -/
def P6275915573802042040.Spec : Prop :=
  ∀ n, P6275915573802042040.a n = A308643 (n + 1)

end A308643

/-! ## A308643.P1562044413613271922

`filter[A046347(n+1), A008966(#)]`
-/

namespace A308643.P1562044413613271922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A308643.P1562044413613271922

namespace A308643

/-- `filter[A046347(n+1), A008966(#)]` -/
def P1562044413613271922.Spec : Prop :=
  ∀ n, P1562044413613271922.a n = A308643 (n + 1)

end A308643

/-! ## A308643.P9166970356970493364

`filter[A046347(n+1), A354353(#)]`
-/

namespace A308643.P9166970356970493364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A308643.P9166970356970493364

namespace A308643

/-- `filter[A046347(n+1), A354353(#)]` -/
def P9166970356970493364.Spec : Prop :=
  ∀ n, P9166970356970493364.a n = A308643 (n + 1)

end A308643

/-! ## A308643.P3685642842149854618

`filter[A046347(n+1), A354819(#)]`
-/

namespace A308643.P3685642842149854618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A308643.P3685642842149854618

namespace A308643

/-- `filter[A046347(n+1), A354819(#)]` -/
def P3685642842149854618.Spec : Prop :=
  ∀ n, P3685642842149854618.a n = A308643 (n + 1)

end A308643

/-! ## A308643.P17920043441378244430

`filter[A046347(n+1), A359158(#)]`
-/

namespace A308643.P17920043441378244430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A308643.P17920043441378244430

namespace A308643

/-- `filter[A046347(n+1), A359158(#)]` -/
def P17920043441378244430.Spec : Prop :=
  ∀ n, P17920043441378244430.a n = A308643 (n + 1)

end A308643

/-! ## A308643.P6336807582469592191

`filter[A046347(n+1), A359590(#)]`
-/

namespace A308643.P6336807582469592191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A308643.P6336807582469592191

namespace A308643

/-- `filter[A046347(n+1), A359590(#)]` -/
def P6336807582469592191.Spec : Prop :=
  ∀ n, P6336807582469592191.a n = A308643 (n + 1)

end A308643

/-! ## A308643.P11460885039591893668

`filter[A046347(n+1), A359592(#)]`
-/

namespace A308643.P11460885039591893668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A308643.P11460885039591893668

namespace A308643

/-- `filter[A046347(n+1), A359592(#)]` -/
def P11460885039591893668.Spec : Prop :=
  ∀ n, P11460885039591893668.a n = A308643 (n + 1)

end A308643

/-! ## A308643.P15504460012769085593

`filter[A046347(n+1), A359834(#)]`
-/

namespace A308643.P15504460012769085593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A308643.P15504460012769085593

namespace A308643

/-- `filter[A046347(n+1), A359834(#)]` -/
def P15504460012769085593.Spec : Prop :=
  ∀ n, P15504460012769085593.a n = A308643 (n + 1)

end A308643

/-! ## A308643.P7283613671206077967

`filter[A046347(n+1), A380469(#)]`
-/

namespace A308643.P7283613671206077967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A308643.P7283613671206077967

namespace A308643

/-- `filter[A046347(n+1), A380469(#)]` -/
def P7283613671206077967.Spec : Prop :=
  ∀ n, P7283613671206077967.a n = A308643 (n + 1)

end A308643

/-!
# A308644: Number of ways to write n as (3^a*5^b)^2 + c*(3c+1)/2 + d*(7d+1)/2, where a and b are nonnegative integers, and c and d are integers.

The programs for A308644, there is no canonical definition to state claims against.
-/

/-! ## A308644.P14887900658381563733

`A107435(A344432(n)+A083950(3*n+1))`
-/

namespace A308644.P14887900658381563733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (A344432 n + A083950 (3 * n + 1)).toNat

end

end A308644.P14887900658381563733

/-!
# A308645: Expansion of e.g.f. exp(1 + x - exp(2*x)).

The programs for A308645, there is no canonical definition to state claims against.
-/

/-! ## A308645.P14744461472088848684

`∑{#}[n, C(n, #)*2^#*A000587(#)]`
-/

namespace A308645.P14744461472088848684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k * 2 ^ k : ℤ) * A000587 k

end

end A308645.P14744461472088848684

/-!
# A308646: a(n) = exp(1) * Sum_{k>=0} (-1)^k*k^(2*n)/k!.

The programs for A308646, there is no canonical definition to state claims against.
-/

/-! ## A308646.P7708474342455129986

`A000587(2*n)`
-/

namespace A308646.P7708474342455129986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (2 * n)

end

end A308646.P7708474342455129986

/-! ## A308646.P710612579023015236

`A213953(n*Δ[n²])`
-/

namespace A308646.P710612579023015236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213953 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A308646.P710612579023015236

/-! ## A308646.P10477387361675036257

`A293051(n*(2*n+3))`
-/

namespace A308646.P10477387361675036257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (n * (2 * n + 3))

end

end A308646.P10477387361675036257

/-! ## A308646.P17014114242700283734

`A014182(A004273(n))`
-/

namespace A308646.P17014114242700283734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014182 (A004273 n).toNat

end

end A308646.P17014114242700283734

/-! ## A308646.P12772530498841810412

`A014182(record[A026741(n)])`
-/

namespace A308646.P12772530498841810412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014182 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308646.P12772530498841810412

/-!
# A308647: a(n) = exp(1) * Sum_{k>=0} (-1)^k*k^(2*n+1)/k!.

The programs for A308647, there is no canonical definition to state claims against.
-/

/-! ## A308647.P5613429676370300016

`A000587(2*n+1)`
-/

namespace A308647.P5613429676370300016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (2 * n + 1)

end

end A308647.P5613429676370300016

/-! ## A308647.P15655192562553967906

`-A014182(2*n)`
-/

namespace A308647.P15655192562553967906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A014182 (2 * n)

end

end A308647.P15655192562553967906

/-! ## A308647.P12816182053307423523

`-A293037(2*n)`
-/

namespace A308647.P12816182053307423523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A293037 (2 * n)

end

end A308647.P12816182053307423523

/-! ## A308647.P5632531828097885579

`A213953((n+1)*Δ[n²])`
-/

namespace A308647.P5632531828097885579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213953 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A308647.P5632531828097885579

/-! ## A308647.P14180739193975925844

`A293051((n+2)*Δ[n²])`
-/

namespace A308647.P14180739193975925844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 ((n + 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A308647.P14180739193975925844

/-!
# A308648: Number of degree-n odd permutations of order dividing 8.

The programs for A308648, there is no canonical definition to state claims against.
-/

/-! ## A308648.P8651669659255107046

`A061140(n)+A061136(n)`
-/

namespace A308648.P8651669659255107046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061140 n + A061136 n

end

end A308648.P8651669659255107046

/-! ## A308648.P3582644184942199723

`A053498(n)-A061131(n)`
-/

namespace A308648.P3582644184942199723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053498 n - A061131 n

end

end A308648.P3582644184942199723

/-! ## A308648.P14863021217836239148

`A001465(n)+A061140(n)+A061138(n)`
-/

namespace A308648.P14863021217836239148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001465 n + (A061140 n + A061138 n)

end

end A308648.P14863021217836239148

/-! ## A308648.P15645800488270414870

`A001472(n)+A061140(n)-A061129(n)`
-/

namespace A308648.P15645800488270414870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001472 n + (A061140 n - A061129 n)

end

end A308648.P15645800488270414870

/-! ## A308648.P10702573320370900095

`A061140(n)+A000085(n)+A061138(n)-A000704(n)`
-/

namespace A308648.P10702573320370900095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061140 n + (A000085 n + (A061138 n - A000704 n))

end

end A308648.P10702573320370900095

/-!
# A308650: Number of permutations of [2n] with n components.

The programs for A308650, there is no canonical definition to state claims against.
-/

/-! ## A308650.P2645394408870212322

`A263484(A058331(n))`
-/

namespace A308650.P2645394408870212322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (A058331 n).toNat

end

end A308650.P2645394408870212322

/-! ## A308650.P7332549786747284157

`A263484(A005408(n²))`
-/

namespace A308650.P7332549786747284157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (A005408 (n ^ 2)).toNat

end

end A308650.P7332549786747284157

/-! ## A308650.P15416850531510458115

`A263484(A001105(n)+1)`
-/

namespace A308650.P15416850531510458115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (A001105 n + 1).toNat

end

end A308650.P15416850531510458115

/-! ## A308650.P11739168229977500506

`A263484(A056220(n)+2)`
-/

namespace A308650.P11739168229977500506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (A056220 n + 2).toNat

end

end A308650.P11739168229977500506

/-! ## A308650.P13992258623739760806

`A263484(or(1, A001105(n)))`
-/

namespace A308650.P13992258623739760806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (Int.lor 1 (A001105 n)).toNat

end

end A308650.P13992258623739760806

/-!
# A308654: The overpartition triangle: T(n,k) is the number of overpartitions of n with exactly k positive integer parts, 0 <= k <= n.

The programs for A308654, there is no canonical definition to state claims against.
-/

/-! ## A308654.P16765093569648813438

`A005811(A238303(n)*A269948(n))`
-/

namespace A308654.P16765093569648813438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A238303 n * A269948 n).toNat

end

end A308654.P16765093569648813438

/-! ## A308654.P10087803919523136647

`A238303(n)*A335474(A151511(n))`
-/

namespace A308654.P10087803919523136647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n * A335474 (A151511 n).toNat

end

end A308654.P10087803919523136647

/-!
# A308655: Alternating partial sums of the prime gaps.

The programs for A308655, the canonical program `A308655.P3064422645470108956` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308655 has offset 1).

The definition of A308655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308655.P1342160008338145874

`2-A330547(n+2)`
-/

namespace A308655.P1342160008338145874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A330547 (n + 2)

end

end A308655.P1342160008338145874

namespace A308655

/-- `2-A330547(n+2)` -/
def P1342160008338145874.Spec : Prop :=
  ∀ n, P1342160008338145874.a n = A308655 (n + 1)

end A308655

/-! ## A308655.P8721431057330417710

`∑[-Δ[A330547(n+1)]]`
-/

namespace A308655.P8721431057330417710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308655.P8721431057330417710

namespace A308655

/-- `∑[-Δ[A330547(n+1)]]` -/
def P8721431057330417710.Spec : Prop :=
  ∀ n, P8721431057330417710.a n = A308655 (n + 1)

end A308655

/-! ## A308655.P8840624372416061983

`∑[(-1)^n*A001223(n+1)]`
-/

namespace A308655.P8840624372416061983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308655.P8840624372416061983

namespace A308655

/-- `∑[(-1)^n*A001223(n+1)]` -/
def P8840624372416061983.Spec : Prop :=
  ∀ n, P8840624372416061983.a n = A308655 (n + 1)

theorem P8840624372416061983.correct : P8840624372416061983.Spec := by
  intro n
  simp only [A308655, Nat.add_sub_cancel, A308655.P8840624372416061983.f1, A308655.P8840624372416061983.a, A308655.P3064422645470108956.f1, A308655.P3064422645470108956.a, A001223, A001223.P5034056745985311719.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308655

/-! ## A308655.P3064422645470108956

`∑[(A046933(n+1)+1)*(-1)^n]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A308655

/-- `∑[(A046933(n+1)+1)*(-1)^n]` -/
def P3064422645470108956.Spec : Prop :=
  ∀ n, P3064422645470108956.a n = A308655 (n + 1)

theorem P3064422645470108956.correct : P3064422645470108956.Spec := by
  intro n
  simp only [A308655, Nat.add_sub_cancel]

end A308655

/-! ## A308655.P10062340196633190729

`∑[A001223(n+1)*A033999(n)]`
-/

namespace A308655.P10062340196633190729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308655.P10062340196633190729

namespace A308655

/-- `∑[A001223(n+1)*A033999(n)]` -/
def P10062340196633190729.Spec : Prop :=
  ∀ n, P10062340196633190729.a n = A308655 (n + 1)

theorem P10062340196633190729.correct : P10062340196633190729.Spec := by
  intro n
  simp only [A308655, Nat.add_sub_cancel, A308655.P10062340196633190729.f1, A308655.P10062340196633190729.a, A308655.P3064422645470108956.f1, A308655.P3064422645470108956.a, A001223, A001223.P5034056745985311719.a, A033999, A033999.P17703899380244199787.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308655

/-! ## A308655.P17554685308181979481

`∑[Δ[A000040(n+1)]/(-1)^n]`
-/

namespace A308655.P17554685308181979481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308655.P17554685308181979481

namespace A308655

/-- `∑[Δ[A000040(n+1)]/(-1)^n]` -/
def P17554685308181979481.Spec : Prop :=
  ∀ n, P17554685308181979481.a n = (A308655 (n + 1) : ℚ)

end A308655

/-! ## A308655.P13792430651214392154

`∑[Δ[A000040(n+1)]*A033999(n)]`
-/

namespace A308655.P13792430651214392154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308655.P13792430651214392154

namespace A308655

/-- `∑[Δ[A000040(n+1)]*A033999(n)]` -/
def P13792430651214392154.Spec : Prop :=
  ∀ n, P13792430651214392154.a n = A308655 (n + 1)

theorem P13792430651214392154.correct : P13792430651214392154.Spec := by
  intro n
  simp only [A308655, Nat.add_sub_cancel, A308655.P13792430651214392154.f2, A308655.P13792430651214392154.f1, A308655.P13792430651214392154.a, A308655.P3064422645470108956.f1, A308655.P3064422645470108956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033999, A033999.P17703899380244199787.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308655

/-! ## A308655.P10259906610073829283

`A000035(n+1)+2-A330545(n+2)`
-/

namespace A308655.P10259906610073829283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (2 - A330545 (n + 2))

end

end A308655.P10259906610073829283

namespace A308655

/-- `A000035(n+1)+2-A330545(n+2)` -/
def P10259906610073829283.Spec : Prop :=
  ∀ n, P10259906610073829283.a n = A308655 (n + 1)

end A308655

/-! ## A308655.P7573624897963843323

`∑[A001223(n+1)*A057077(2*n)]`
-/

namespace A308655.P7573624897963843323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308655.P7573624897963843323

namespace A308655

/-- `∑[A001223(n+1)*A057077(2*n)]` -/
def P7573624897963843323.Spec : Prop :=
  ∀ n, P7573624897963843323.a n = A308655 (n + 1)

end A308655

/-! ## A308655.P4185752111502619861

`∑[Δ[A000040(n+1)]*A057077(2*n)]`
-/

namespace A308655.P4185752111502619861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308655.P4185752111502619861

namespace A308655

/-- `∑[Δ[A000040(n+1)]*A057077(2*n)]` -/
def P4185752111502619861.Spec : Prop :=
  ∀ n, P4185752111502619861.a n = A308655 (n + 1)

end A308655

/-! ## A308655.P16455339891410274911

`2-A278603(A000040(n+2))`
-/

namespace A308655.P16455339891410274911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A278603 (A000040 (n + 2)).toNat

end

end A308655.P16455339891410274911

namespace A308655

/-- `2-A278603(A000040(n+2))` -/
def P16455339891410274911.Spec : Prop :=
  ∀ n, P16455339891410274911.a n = A308655 (n + 1)

end A308655

/-! ## A308655.P15278844701776645763

`1-A065358(A000040(n+2)-1)`
-/

namespace A308655.P15278844701776645763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065358 (A000040 (n + 2) - 1).toNat

end

end A308655.P15278844701776645763

namespace A308655

/-- `1-A065358(A000040(n+2)-1)` -/
def P15278844701776645763.Spec : Prop :=
  ∀ n, P15278844701776645763.a n = A308655 (n + 1)

end A308655

/-!
# A308656: Number of ways to write n as (2^a*9^b)^2 + c*(2c+1) + d*(3d+1), where a and b are nonnegative integers, and c and d are integers.

The programs for A308656, there is no canonical definition to state claims against.
-/

/-! ## A308656.P8343003905010740944

`A353329(lcm(A353302(n+1), A353318(2*n+1)))`
-/

namespace A308656.P8343003905010740944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (Int.lcm (A353302 (n + 1)) (A353318 (2 * n + 1)))

end

end A308656.P8343003905010740944

/-! ## A308656.P17530549254600472288

`A001221(A100851(3*n+4)+A007439(n+1))`
-/

namespace A308656.P17530549254600472288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A100851 (3 * n + 4) + A007439 (n + 1)).toNat

end

end A308656.P17530549254600472288

/-!
# A308659: a(1)=1; for n > 1, a(n) is the length of the longest palindromic suffix of (a(1), ..., a(n-1)).

The programs for A308659, the canonical program `A308659.P12662468987992510941` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308659 has offset 1).

The definition of A308659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308659.P12662468987992510941

`ogf((1+x+2x^2+x^3+3x^4+x^5+3x^6+3x^7+2x^8+x^9+x^10+2x^11+4x^12)/(1-x^13))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308659

/-- `ogf((1+x+2x^2+x^3+3x^4+x^5+3x^6+3x^7+2x^8+x^9+x^10+2x^11+4x^12)/(1-x^13))` -/
def P12662468987992510941.Spec : Prop :=
  ∀ n, P12662468987992510941.a n = A308659 (n + 1)

theorem P12662468987992510941.correct : P12662468987992510941.Spec := by
  intro n
  simp only [A308659, Nat.add_sub_cancel]

end A308659

/-!
# A308661: Number of ways to write 12*n+5 as (2^a*5^b)^2 + c^2 + d^2, where a,b,c,d are nonnegative integers with a > 0 and c <= d.

The programs for A308661, there is no canonical definition to state claims against.
-/

/-! ## A308661.P2814444930494962654

`A073093(A210109(n+1)+A118655(n+1))`
-/

namespace A308661.P2814444930494962654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A210109 (n + 1) + A118655 (n + 1)).toNat

end

end A308661.P2814444930494962654

/-! ## A308661.P18412897274242159863

`A272351(A238748(n+1)%A291661(2*n+5))`
-/

namespace A308661.P18412897274242159863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272351 (Int.tmod (A238748 (n + 1)) (A291661 (2 * n + 5))).toNat

end

end A308661.P18412897274242159863

/-!
# A308662: Number of ways to write n as (2^a*5^b)^2 + c*(3c+1) + d*(3d+2), where a and b are nonnegative integers, and c and d are integers.

The programs for A308662, there is no canonical definition to state claims against.
-/

/-! ## A308662.P9210442244956872914

`A264990(A265016(n)+record[A264989(n)])`
-/

namespace A308662.P9210442244956872914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264990 (A265016 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308662.P9210442244956872914

/-! ## A308662.P823035080234892580

`A069288(A269565(n+1)+A250120(n))`
-/

namespace A308662.P823035080234892580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A269565 (n + 1) + A250120 n).toNat

end

end A308662.P823035080234892580

/-! ## A308662.P4142906320711246118

`A053978(eq[A135681(n+1), A189222(n+1)])`
-/

namespace A308662.P4142906320711246118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053978 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A308662.P4142906320711246118

/-!
# A308663: Partial sums of A097805.

The programs for A308663, the canonical program `A308663.P15674035364685402174` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308663 has offset 0).

The definition of A308663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308663.P3890999235394404161

`∑[A097805(n)]`
-/

namespace A308663.P3890999235394404161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308663.P3890999235394404161

namespace A308663

/-- `∑[A097805(n)]` -/
def P3890999235394404161.Spec : Prop :=
  ∀ n, P3890999235394404161.a n = A308663 n

end A308663

/-! ## A308663.P9295267647658836212

`A102363(n)-a(n-1)` with `a(0)=1`
-/

namespace A308663.P9295267647658836212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102363 n - a (n - 1)

end

end A308663.P9295267647658836212

namespace A308663

/-- `A102363(n)-a(n-1)` -/
def P9295267647658836212.Spec : Prop :=
  ∀ n, P9295267647658836212.a n = A308663 n

end A308663

/-! ## A308663.P15674035364685402174

`A163866(n)+1-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A308663

/-- `A163866(n)+1-a(n-1)` -/
def P15674035364685402174.Spec : Prop :=
  ∀ n, P15674035364685402174.a n = A308663 n

theorem P15674035364685402174.correct : P15674035364685402174.Spec := by
  intro n
  simp only [A308663]

end A308663

/-! ## A308663.P13766358524319610251

`A071919(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A308663.P13766358524319610251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A071919 (n - 1) + a (n - 1)

end

end A308663.P13766358524319610251

namespace A308663

/-- `A071919(n-1)+a(n-1)` -/
def P13766358524319610251.Spec : Prop :=
  ∀ n, P13766358524319610251.a n = A308663 n

end A308663

/-! ## A308663.P7577913232418201757

`a(n-2)+A007318(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A308663.P7577913232418201757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + A007318 (n - 1)

end

end A308663.P7577913232418201757

namespace A308663

/-- `a(n-2)+A007318(n-1)` -/
def P7577913232418201757.Spec : Prop :=
  ∀ n, P7577913232418201757.a n = A308663 n

end A308663

/-! ## A308663.P529263245644187357

`∑[A007318(abs(1-n))]-a(n-1)` with `a(0)=1`
-/

namespace A308663.P529263245644187357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A308663.P529263245644187357

namespace A308663

/-- `∑[A007318(abs(1-n))]-a(n-1)` -/
def P529263245644187357.Spec : Prop :=
  ∀ n, P529263245644187357.a n = A308663 n

end A308663

/-! ## A308663.P16042388634666592575

`∑[A014473(n-1)+1-a(n-1)]` with `a(0)=1`
-/

namespace A308663.P16042388634666592575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A014473 (n - 1) + 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308663.P16042388634666592575

namespace A308663

/-- `∑[A014473(n-1)+1-a(n-1)]` -/
def P16042388634666592575.Spec : Prop :=
  ∀ n, P16042388634666592575.a n = A308663 n

end A308663

/-! ## A308663.P6240605880270711075

`A102363(A083920(n))`
-/

namespace A308663.P6240605880270711075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A083920 n).toNat

end

end A308663.P6240605880270711075

namespace A308663

/-- `A102363(A083920(n))` -/
def P6240605880270711075.Spec : Prop :=
  ∀ n, P6240605880270711075.a n = A308663 n

end A308663

/-! ## A308663.P5262591760407313117

`A102363(n-A003056(n))`
-/

namespace A308663.P5262591760407313117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 ((n : ℤ) - A003056 n).toNat

end

end A308663.P5262591760407313117

namespace A308663

/-- `A102363(n-A003056(n))` -/
def P5262591760407313117.Spec : Prop :=
  ∀ n, P5262591760407313117.a n = A308663 n

end A308663

/-! ## A308663.P4688815913803290655

`∑[A071919(n)+A008482(n)]`
-/

namespace A308663.P4688815913803290655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n + A008482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308663.P4688815913803290655

namespace A308663

/-- `∑[A071919(n)+A008482(n)]` -/
def P4688815913803290655.Spec : Prop :=
  ∀ n, P4688815913803290655.a n = A308663 n

end A308663

/-! ## A308663.P1183088591484603013

`∑[A029635(n)-A007318(n)]`
-/

namespace A308663.P1183088591484603013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308663.P1183088591484603013

namespace A308663

/-- `∑[A029635(n)-A007318(n)]` -/
def P1183088591484603013.Spec : Prop :=
  ∀ n, P1183088591484603013.a n = A308663 n

end A308663

/-! ## A308663.P15395751456552764943

`∑[A135225(n)]-A003056(n)`
-/

namespace A308663.P15395751456552764943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003056 n

end

end A308663.P15395751456552764943

namespace A308663

/-- `∑[A135225(n)]-A003056(n)` -/
def P15395751456552764943.Spec : Prop :=
  ∀ n, P15395751456552764943.a n = A308663 n

end A308663

/-! ## A308663.P10629046763137940137

`∑[A095666(n)-A095660(n)]`
-/

namespace A308663.P10629046763137940137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 n - A095660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308663.P10629046763137940137

namespace A308663

/-- `∑[A095666(n)-A095660(n)]` -/
def P10629046763137940137.Spec : Prop :=
  ∀ n, P10629046763137940137.a n = A308663 n

end A308663

/-! ## A308663.P15812948618328360141

`∑[A007318(n)+∑[A008482(n)]]`
-/

namespace A308663.P15812948618328360141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308663.P15812948618328360141

namespace A308663

/-- `∑[A007318(n)+∑[A008482(n)]]` -/
def P15812948618328360141.Spec : Prop :=
  ∀ n, P15812948618328360141.a n = A308663 n

end A308663

/-! ## A308663.P14778104661358580331

`∑[A007318(n)-A071919(n)]+1`
-/

namespace A308663.P14778104661358580331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A071919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A308663.P14778104661358580331

namespace A308663

/-- `∑[A007318(n)-A071919(n)]+1` -/
def P14778104661358580331.Spec : Prop :=
  ∀ n, P14778104661358580331.a n = A308663 n

end A308663

/-! ## A308663.P9427805767115209446

`∑[2*A007318(n)-A029653(n)]`
-/

namespace A308663.P9427805767115209446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A029653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308663.P9427805767115209446

namespace A308663

/-- `∑[2*A007318(n)-A029653(n)]` -/
def P9427805767115209446.Spec : Prop :=
  ∀ n, P9427805767115209446.a n = A308663 n

end A308663

/-! ## A308663.P17178731055939178318

`A102363(A001614(n+1)-(n+1))`
-/

namespace A308663.P17178731055939178318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A001614 (n + 1) - (n + 1 : ℤ)).toNat

end

end A308663.P17178731055939178318

namespace A308663

/-- `A102363(A001614(n+1)-(n+1))` -/
def P17178731055939178318.Spec : Prop :=
  ∀ n, P17178731055939178318.a n = A308663 n

end A308663

/-! ## A308663.P18419051344246522008

`A102363(1-A002024(n+1)+n)`
-/

namespace A308663.P18419051344246522008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (1 - A002024 (n + 1) + (n : ℤ)).toNat

end

end A308663.P18419051344246522008

namespace A308663

/-- `A102363(1-A002024(n+1)+n)` -/
def P18419051344246522008.Spec : Prop :=
  ∀ n, P18419051344246522008.a n = A308663 n

end A308663

/-! ## A308663.P1355965786960032188

`∑[A271703(n)/A094587(n)]`
-/

namespace A308663.P1355965786960032188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 n : ℚ) / (A094587 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308663.P1355965786960032188

namespace A308663

/-- `∑[A271703(n)/A094587(n)]` -/
def P1355965786960032188.Spec : Prop :=
  ∀ n, P1355965786960032188.a n = (A308663 n : ℚ)

end A308663

/-! ## A308663.P13112507505747164181

`∑[C(A135225(n), A210765(n+1))]`
-/

namespace A308663.P13112507505747164181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135225 n).toNat (A210765 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308663.P13112507505747164181

namespace A308663

/-- `∑[C(A135225(n), A210765(n+1))]` -/
def P13112507505747164181.Spec : Prop :=
  ∀ n, (P13112507505747164181.a n : ℤ) = A308663 n

end A308663

/-!
# A308664: Numbers k such that tau(k) and phi(k) are the legs of a Pythagorean triple.

The programs for A308664, there is no canonical definition to state claims against.
-/

/-! ## A308664.P10899693953332713038

`4*(p?[2^n+3]+2*n)`
-/

namespace A308664.P10899693953332713038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2 * n)

end

end A308664.P10899693953332713038

/-!
# A308665: Cardinality of the shortcut set of the multiplicative group of integers modulo the n-th primorial.

The programs for A308665, there is no canonical definition to state claims against.
-/

/-! ## A308665.P8078245030506334013

`∏[A054271(A091768(n))]`
-/

namespace A308665.P8078245030506334013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054271 (A091768 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A308665.P8078245030506334013

/-! ## A308665.P13288288044262959445

`∏[A112591(∏[A251633(n)])]`
-/

namespace A308665.P13288288044262959445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251633 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112591 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A308665.P13288288044262959445

/-! ## A308665.P6224213006834015644

`A000010(∏[A224489((n+1)!+4*n)+1])`
-/

namespace A308665.P6224213006834015644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224489 (Nat.factorial (n + 1) + 4 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308665.P6224213006834015644

/-!
# A308667: (1/n) times the number of n-member subsets of [n^2] whose elements sum to a multiple of n.

The programs for A308667, there is no canonical definition to state claims against.
-/

/-! ## A308667.P2849678916895603075

`1/(n+1)*A318477(n+1)`
-/

namespace A308667.P2849678916895603075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A318477 (n + 1) : ℚ)

end

end A308667.P2849678916895603075

/-! ## A308667.P15402080233308212209

`A318477(n+1)/(n+1)`
-/

namespace A308667.P15402080233308212209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318477 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A308667.P15402080233308212209

/-! ## A308667.P8843382769852473670

`A309148((n+1)²+n²)`
-/

namespace A308667.P8843382769852473670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 ((n + 1) ^ 2 + n ^ 2)

end

end A308667.P8843382769852473670

/-! ## A308667.P14815088210825248543

`A309148(A001844(n))^A178334(n)`
-/

namespace A308667.P14815088210825248543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309148 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A308667.P14815088210825248543

/-! ## A308667.P13294532405077057807

`gcd(A000038(n), A309148(A001844(n)))`
-/

namespace A308667.P13294532405077057807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A309148 (A001844 n).toNat)

end

end A308667.P13294532405077057807

/-!
# A308668: a(n) = Sum_{d|n} d^(n/d+n).

The programs for A308668, the canonical program `A308668.P12906140892082786794` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308668 has offset 1).

The definition of A308668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308668.P12906140892082786794

`∑{d}[n+1, #^((n+1)/#+n+1)]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308668

/-- `∑{d}[n+1, #^((n+1)/#+n+1)]` -/
def P12906140892082786794.Spec : Prop :=
  ∀ n, P12906140892082786794.a n = (A308668 (n + 1) : ℝ)

end A308668

/-! ## A308668.P14771785588607252187

`A308502(2*(n+1)²)`
-/

namespace A308668.P14771785588607252187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308502 (2 * (n + 1) ^ 2)

end

end A308668.P14771785588607252187

namespace A308668

/-- `A308502(2*(n+1)²)` -/
def P14771785588607252187.Spec : Prop :=
  ∀ n, P14771785588607252187.a n = A308668 (n + 1)

end A308668

/-! ## A308668.P2608134475518969366

`record[A308502(A053439(n))]`
-/

namespace A308668.P2608134475518969366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308502 (A053439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308668.P2608134475518969366

namespace A308668

/-- `record[A308502(A053439(n))]` -/
def P2608134475518969366.Spec : Prop :=
  ∀ n, P2608134475518969366.a n = A308668 (n + 1)

end A308668

/-! ## A308668.P12411134590359743451

`A308502(A001105(n+1))+A287283(2*n+3)`
-/

namespace A308668.P12411134590359743451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308502 (A001105 (n + 1)).toNat + A287283 (2 * n + 3)

end

end A308668.P12411134590359743451

namespace A308668

/-- `A308502(A001105(n+1))+A287283(2*n+3)` -/
def P12411134590359743451.Spec : Prop :=
  ∀ n, P12411134590359743451.a n = A308668 (n + 1)

end A308668

/-! ## A308668.P9063327475600425018

`A308502(A053439(2*n+1))%A342628(3*(n+1))`
-/

namespace A308668.P9063327475600425018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308502 (A053439 (2 * n + 1)).toNat) (A342628 (3 * (n + 1)))

end

end A308668.P9063327475600425018

namespace A308668

/-- `A308502(A053439(2*n+1))%A342628(3*(n+1))` -/
def P9063327475600425018.Spec : Prop :=
  ∀ n, P9063327475600425018.a n = A308668 (n + 1)

end A308668

/-!
# A308669: a(1) = 1, a(2) = 3; for n > 1, a(n) = sum of the next two smallest integers > a(n-1) which are coprime to the sum s = a(1) + ... + a(n-1).

The programs for A308669, there is no canonical definition to state claims against.
-/

/-! ## A308669.P15394901934765893303

`record[A160721(n+1)-and(-(-1)^n, ceil(n/2))]`
-/

namespace A308669.P15394901934765893303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160721 (n + 1) - Int.land (-((-1) ^ n)) ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308669.P15394901934765893303

/-! ## A308669.P3097277223726450268

`2^(n+2)-4-A008683(4^(n+2)-3*2^n)`
-/

namespace A308669.P3097277223726450268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - 4 - A008683 (4 ^ (n + 2) - 3 * 2 ^ n)

end

end A308669.P3097277223726450268

/-! ## A308669.P4378727245914093180

`A003991(A267685(n))`
-/

namespace A308669.P4378727245914093180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A267685 n).toNat

end

end A308669.P4378727245914093180

/-!
# A308670: 

The programs for A308670, there is no canonical definition to state claims against.
-/

/-! ## A308670.P6402417481095627553

`∑{d}[n+1, #^(#*(n+1))]`
-/

namespace A308670.P6402417481095627553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ (d * (n + 1))

end

end A308670.P6402417481095627553

/-! ## A308670.P16620366188168803119

`A308698(2*(n+1)²)`
-/

namespace A308670.P16620366188168803119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308698 (2 * (n + 1) ^ 2)

end

end A308670.P16620366188168803119

/-! ## A308670.P6617068353978133555

`record[A308698(A053439(n))]`
-/

namespace A308670.P6617068353978133555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308698 (A053439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308670.P6617068353978133555

/-!
# A308671: 

The programs for A308671, there is no canonical definition to state claims against.
-/

/-! ## A308671.P1283176831496599910

`∑{d}[n+1, #^#²]`
-/

namespace A308671.P1283176831496599910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ d ^ 2

end

end A308671.P1283176831496599910

/-!
# A308672: 

The programs for A308672, there is no canonical definition to state claims against.
-/

/-! ## A308672.P12722438959538518802

`∑{d}[n+1, #^#^3]`
-/

namespace A308672.P12722438959538518802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ d ^ 3

end

end A308672.P12722438959538518802

/-!
# A308673: For n > 2, if there exists an m < n such that a(m) = a(n), take the largest such m and set a(n+1) = a(n)+(n-m); otherwise a(n+1) = 1. Start with a(1)=0, a(2)=0.

The programs for A308673, there is no canonical definition to state claims against.
-/

/-! ## A308673.P8373334178055275359

`A108731(A141768(n+1)+A006378(n+1))`
-/

namespace A308673.P8373334178055275359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108731 (A141768 (n + 1) + A006378 (n + 1)).toNat

end

end A308673.P8373334178055275359

/-! ## A308673.P4704766219283440628

`A072625(A107467(n+1))`
-/

namespace A308673.P4704766219283440628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072625 (A107467 (n + 1)).toNat

end

end A308673.P4704766219283440628

/-! ## A308673.P11455223121920541879

`∑{e}[A071655(A098407(n)), #]`
-/

namespace A308673.P11455223121920541879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071655 (A098407 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A308673.P11455223121920541879

/-! ## A308673.P8078712974056180110

`A032741(lt[A000045(n), A283475(n)])`
-/

namespace A308673.P8078712974056180110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A308673.P8078712974056180110

/-! ## A308673.P3495328733977229863

`A075526(n)-A318434(A212801(n+1))`
-/

namespace A308673.P3495328733977229863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n - A318434 (A212801 (n + 1)).toNat

end

end A308673.P3495328733977229863

/-!
# A308677: Kuba-Panholzer Table 2 pattern 312, 213 for Stirling permutation k = 2.

The programs for A308677, there is no canonical definition to state claims against.
-/

/-! ## A308677.P3971037493543431811

`A249757(A064226(n+1))`
-/

namespace A308677.P3971037493543431811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249757 (A064226 (n + 1)).toNat

end

end A308677.P3971037493543431811

/-! ## A308677.P15661990754459249116

`A029600(A006137(n+2))`
-/

namespace A308677.P15661990754459249116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (A006137 (n + 2)).toNat

end

end A308677.P15661990754459249116

/-! ## A308677.P13900177875031248

`A117671(n+1)-A001764(n+2)`
-/

namespace A308677.P13900177875031248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117671 (n + 1) - A001764 (n + 2)

end

end A308677.P13900177875031248

/-! ## A308677.P13156202740660620150

`A236194(n+1)+2*A013698(n+1)`
-/

namespace A308677.P13156202740660620150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236194 (n + 1) + 2 * A013698 (n + 1)

end

end A308677.P13156202740660620150

/-! ## A308677.P5151343217590950016

`A099576(2*(n+1))-A001764(n+2)`
-/

namespace A308677.P5151343217590950016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099576 (2 * (n + 1)) - A001764 (n + 2)

end

end A308677.P5151343217590950016

/-!
# A308678: Kuba-Panholzer Table 2 pattern 231, 132 for Stirling permutation k = 2.

The programs for A308678, there is no canonical definition to state claims against.
-/

/-! ## A308678.P9743744760420301003

`A253672(Δ[A059032(n)]+n*(6*n-2))`
-/

namespace A308678.P9743744760420301003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253672 (f1 (n + 1) - f1 n + (n : ℤ) * ((6 * n : ℤ) - 2)).toNat

end

end A308678.P9743744760420301003

/-! ## A308678.P8184490065366803760

`A139399(A145640(n+1))-A127034(3*n+1)`
-/

namespace A308678.P8184490065366803760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (A145640 (n + 1)).toNat - A127034 (3 * n + 1)

end

end A308678.P8184490065366803760

/-!
# A308680: Number T(n,k) of colored integer partitions of n such that all colors from a k-set are used and parts differ by size or by color; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A308680, there is no canonical definition to state claims against.
-/

/-! ## A308680.P12586998219170309359

`A060086(n)+A016389(A213275(n))`
-/

namespace A308680.P12586998219170309359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 n + A016389 (A213275 n).toNat

end

end A308680.P12586998219170309359

/-! ## A308680.P9996044090931725057

`A185284(A166065(n))+A060086(n)`
-/

namespace A308680.P9996044090931725057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A166065 n).toNat + A060086 n

end

end A308680.P9996044090931725057

/-! ## A308680.P2569327722181162049

`A185044(A191347(n))+A060086(n)`
-/

namespace A308680.P2569327722181162049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 (A191347 n).toNat + A060086 n

end

end A308680.P2569327722181162049

/-! ## A308680.P14595877072589410283

`A340998(A125781(n))+A060086(n)`
-/

namespace A308680.P14595877072589410283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A125781 n).toNat + 140) + A060086 n

end

end A308680.P14595877072589410283

/-! ## A308680.P14506821934820109262

`A010051(A346024(2*n+1))*A060086(n)`
-/

namespace A308680.P14506821934820109262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A346024 (2 * n + 1)).toNat * A060086 n

end

end A308680.P14506821934820109262

/-!
# A308681: E.g.f.: (sec(x) - tan(x)) / sqrt(1 - 2*x).

The programs for A308681, there is no canonical definition to state claims against.
-/

/-! ## A308681.P1102331862513668770

`∑{#}[n, (-1)^(n-#)*C(n, #)*A001147(#)*A000111(n-#)]`
-/

namespace A308681.P1102331862513668770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A001147 k : ℚ) * (A000111 (n - k) : ℚ)

end

end A308681.P1102331862513668770

/-! ## A308681.P3293588812580180296

`A053871(n)-A066273(A116637(n))`
-/

namespace A308681.P3293588812580180296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053871 n - A066273 (A116637 n).toNat

end

end A308681.P3293588812580180296

/-!
# A308682: Number of ways of partitioning the set of the first n positive triangular numbers into two subsets whose sums differ at most by 1.

The programs for A308682, there is no canonical definition to state claims against.
-/

/-! ## A308682.P13885647650588767194

`A350287(n)/A040001(∑[∑[n]])`
-/

namespace A308682.P13885647650588767194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350287 n : ℚ) / (A040001 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A308682.P13885647650588767194

/-! ## A308682.P5877992881954838774

`A350287(n)-A058498(round(sqrt(n²+1)))`
-/

namespace A308682.P5877992881954838774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350287 n - A058498 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A308682.P5877992881954838774

/-! ## A308682.P5076606855815251473

`gcd(A058498(A028310(n)), A350287(n))`
-/

namespace A308682.P5076606855815251473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058498 (A028310 n).toNat) (A350287 n)

end

end A308682.P5076606855815251473

/-! ## A308682.P8415808972497661400

`A350287(n)/A014695(A024363(n+1))`
-/

namespace A308682.P8415808972497661400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350287 n : ℚ) / (A014695 (A024363 (n + 1)).toNat : ℚ)

end

end A308682.P8415808972497661400

/-!
# A308685: The number of triangular lattice points whose Euclidean distance from the origin is less than or equal to n.

The programs for A308685, there is no canonical definition to state claims against.
-/

/-! ## A308685.P13232977662110767740

`A053416(2*n)`
-/

namespace A308685.P13232977662110767740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053416 (2 * n)

end

end A308685.P13232977662110767740

/-! ## A308685.P8364320661029007281

`record[A053416(n)/(-1)^n]`
-/

namespace A308685.P8364320661029007281
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053416 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308685.P8364320661029007281

/-! ## A308685.P17534198879978457142

`or(1, A053416(A004277(n)))`
-/

namespace A308685.P17534198879978457142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A053416 (A004277 n).toNat)

end

end A308685.P17534198879978457142

/-! ## A308685.P15956556931095050598

`or(1, A053416(A005843(n)))`
-/

namespace A308685.P15956556931095050598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A053416 (A005843 n).toNat)

end

end A308685.P15956556931095050598

/-! ## A308685.P11281028854387490904

`record[root(A053416(n), A000034(n))]`
-/

namespace A308685.P11281028854387490904
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053416 n : ℝ) ^ (1 / (A000034 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308685.P11281028854387490904

/-! ## A308685.P13956992524569999138

`A038589(n²)`
-/

namespace A308685.P13956992524569999138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038589 (n ^ 2)

end

end A308685.P13956992524569999138

/-! ## A308685.P4548366173724762308

`A014201(n²)+1`
-/

namespace A308685.P4548366173724762308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014201 (n ^ 2) + 1

end

end A308685.P4548366173724762308

/-! ## A308685.P16830901915996289310

`A016921(A014202(n²))`
-/

namespace A308685.P16830901915996289310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A014202 (n ^ 2)).toNat

end

end A308685.P16830901915996289310

/-! ## A308685.P5491765671458936129

`or(1, A014201(A000290(n)))`
-/

namespace A308685.P5491765671458936129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A014201 (A000290 n).toNat)

end

end A308685.P5491765671458936129

/-! ## A308685.P1304402188921362268

`A004442(A014201(n²))`
-/

namespace A308685.P1304402188921362268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A014201 (n ^ 2)).toNat

end

end A308685.P1304402188921362268

/-!
# A308686: Irregular triangle with the nonnegative proper fundamental solutions of the binary quadratic form x^2 + x*y - y^2 representing N = N(n) = A089270(n), for n >= 1.

The programs for A308686, there is no canonical definition to state claims against.
-/

/-! ## A308686.P8894404921209747755

`A071912(xor(n, A091536(n)!))`
-/

namespace A308686.P8894404921209747755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (Nat.xor n (Nat.factorial (A091536 n).toNat))

end

end A308686.P8894404921209747755

/-! ## A308686.P226274267916948971

`A071912(xor(n, ∑[A091536(n)]))`
-/

namespace A308686.P226274267916948971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (Int.xor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A308686.P226274267916948971

/-! ## A308686.P15945880814255816343

`A071912(xor(n, A091536(n)+1))`
-/

namespace A308686.P15945880814255816343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (Int.xor (n : ℤ) (A091536 n + 1)).toNat

end

end A308686.P15945880814255816343

/-! ## A308686.P11308975868442379050

`A071912(A091536(n)+A004442(n))`
-/

namespace A308686.P11308975868442379050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (A091536 n + A004442 n).toNat

end

end A308686.P11308975868442379050

/-! ## A308686.P4211798777671076819

`A071912(or(A004442(n), A091536(n)))`
-/

namespace A308686.P4211798777671076819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (Int.lor (A004442 n) (A091536 n)).toNat

end

end A308686.P4211798777671076819

/-!
# A308687: a(n) = A305312(n)/4 if A305312(n)is even and a(n) = (A305312(n) - 1)/4 if A305312(n) is odd, for n >= 1.

The programs for A308687, there is no canonical definition to state claims against.
-/

/-! ## A308687.P2159192226941362394

`floor(A305312(n+1)/4)`
-/

namespace A308687.P2159192226941362394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305312 (n + 1) : ℚ) / 4⌋

end

end A308687.P2159192226941362394

/-! ## A308687.P14677329679806625162

`floor((A086326(n+1)²-4)/4)`
-/

namespace A308687.P14677329679806625162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086326 (n + 1) ^ 2 - 4 : ℚ) / 4⌋

end

end A308687.P14677329679806625162

/-! ## A308687.P8085313982292828388

`floor(((A324250(n+1)+2)²-4)/4)`
-/

namespace A308687.P8085313982292828388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A324250 (n + 1) + 2) ^ 2 - 4 : ℚ) / 4⌋

end

end A308687.P8085313982292828388

/-! ## A308687.P13495294458936994366

`floor(((3*A002559(n+1))²-4)/4)`
-/

namespace A308687.P13495294458936994366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * A002559 (n + 1)) ^ 2 - 4 : ℚ) / 4⌋

end

end A308687.P13495294458936994366

/-! ## A308687.P12463318482191802518

`floor((lcm(3, A002559(C(n+1, n)))²-4)/4)`
-/

namespace A308687.P12463318482191802518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Int.lcm 3 (A002559 (Nat.choose (n + 1) n)) ^ 2 : ℤ) - 4 : ℚ) / 4⌋

end

end A308687.P12463318482191802518

/-!
# A308688: a(n) = Sum_{d|n} d^(2*n/d - 1).

The programs for A308688, the canonical program `A308688.P6628032841038371627` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308688 has offset 1).

The definition of A308688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308688.P6628032841038371627

`∑{d}[n+1, #^(2*(n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308688

/-- `∑{d}[n+1, #^(2*(n+1)/#-1)]` -/
def P6628032841038371627.Spec : Prop :=
  ∀ n, P6628032841038371627.a n = (A308688 (n + 1) : ℝ)

end A308688

/-! ## A308688.P10434895018419001511

`(A087909(2*(n+1))-A308367(2*(n+1)))/2`
-/

namespace A308688.P10434895018419001511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087909 (2 * (n + 1)) - A308367 (2 * (n + 1)) : ℚ) / 2

end

end A308688.P10434895018419001511

namespace A308688

/-- `(A087909(2*(n+1))-A308367(2*(n+1)))/2` -/
def P10434895018419001511.Spec : Prop :=
  ∀ n, P10434895018419001511.a n = (A308688 (n + 1) : ℚ)

end A308688

/-! ## A308688.P2612676807242331509

`A308690(∑[n+3]+1)`
-/

namespace A308688.P2612676807242331509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A308688.P2612676807242331509

namespace A308688

/-- `A308690(∑[n+3]+1)` -/
def P2612676807242331509.Spec : Prop :=
  ∀ n, P2612676807242331509.a n = A308688 (n + 1)

end A308688

/-! ## A308688.P9233803566172589853

`A308690(A052905(n)+3)%A135167(n)`
-/

namespace A308688.P9233803566172589853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308690 (A052905 n + 3).toNat) (A135167 n)

end

end A308688.P9233803566172589853

namespace A308688

/-- `A308690(A052905(n)+3)%A135167(n)` -/
def P9233803566172589853.Spec : Prop :=
  ∀ n, P9233803566172589853.a n = A308688 (n + 1)

end A308688

/-! ## A308688.P13412701580885804762

`A308690(A034856(n+2))^(1-A000007(n))`
-/

namespace A308688.P13412701580885804762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308690 (A034856 (n + 2)).toNat : ℚ) ^ (1 - A000007 n : ℤ)

end

end A308688.P13412701580885804762

namespace A308688

/-- `A308690(A034856(n+2))^(1-A000007(n))` -/
def P13412701580885804762.Spec : Prop :=
  ∀ n, P13412701580885804762.a n = (A308688 (n + 1) : ℚ)

end A308688

/-! ## A308688.P12027598749836702488

`A308690(A052905(n)+3)^(1-A000007(n))`
-/

namespace A308688.P12027598749836702488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308690 (A052905 n + 3).toNat : ℚ) ^ (1 - A000007 n : ℤ)

end

end A308688.P12027598749836702488

namespace A308688

/-- `A308690(A052905(n)+3)^(1-A000007(n))` -/
def P12027598749836702488.Spec : Prop :=
  ∀ n, P12027598749836702488.a n = (A308688 (n + 1) : ℚ)

end A308688

/-!
# A308689: a(n) = Sum_{d|n} d^(3*n/d - 2).

The programs for A308689, the canonical program `A308689.P18318010076115207194` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308689 has offset 1).

The definition of A308689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308689.P18318010076115207194

`∑{d}[n+1, #^(3*(n+1)/#-2)]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308689

/-- `∑{d}[n+1, #^(3*(n+1)/#-2)]` -/
def P18318010076115207194.Spec : Prop :=
  ∀ n, P18318010076115207194.a n = (A308689 (n + 1) : ℝ)

end A308689

/-! ## A308689.P13407307450248170854

`A308690(A027379(n+2))`
-/

namespace A308689.P13407307450248170854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (A027379 (n + 2)).toNat

end

end A308689.P13407307450248170854

namespace A308689

/-- `A308690(A027379(n+2))` -/
def P13407307450248170854.Spec : Prop :=
  ∀ n, P13407307450248170854.a n = A308689 (n + 1)

end A308689

/-! ## A308689.P9848864253157188148

`A308690(A055998(n+2))`
-/

namespace A308689.P9848864253157188148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (A055998 (n + 2)).toNat

end

end A308689.P9848864253157188148

namespace A308689

/-- `A308690(A055998(n+2))` -/
def P9848864253157188148.Spec : Prop :=
  ∀ n, P9848864253157188148.a n = A308689 (n + 1)

end A308689

/-! ## A308689.P3186554549648287843

`A308690(A155212(n)+5)`
-/

namespace A308689.P3186554549648287843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (A155212 n + 5).toNat

end

end A308689.P3186554549648287843

namespace A308689

/-- `A308690(A155212(n)+5)` -/
def P3186554549648287843.Spec : Prop :=
  ∀ n, P3186554549648287843.a n = A308689 (n + 1)

end A308689

/-! ## A308689.P5073493021211912109

`A308690(A056000(n)+7)`
-/

namespace A308689.P5073493021211912109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (A056000 n + 7).toNat

end

end A308689.P5073493021211912109

namespace A308689

/-- `A308690(A056000(n)+7)` -/
def P5073493021211912109.Spec : Prop :=
  ∀ n, P5073493021211912109.a n = A308689 (n + 1)

end A308689

/-! ## A308689.P12013553293165128600

`A308690(A052905(n+1)+2)`
-/

namespace A308689.P12013553293165128600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (A052905 (n + 1) + 2).toNat

end

end A308689.P12013553293165128600

namespace A308689

/-- `A308690(A052905(n+1)+2)` -/
def P12013553293165128600.Spec : Prop :=
  ∀ n, P12013553293165128600.a n = A308689 (n + 1)

end A308689

/-! ## A308689.P9789622635238205559

`A308690(A167499(n)+A016777(n))`
-/

namespace A308689.P9789622635238205559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (A167499 n + A016777 n).toNat

end

end A308689.P9789622635238205559

namespace A308689

/-- `A308690(A167499(n)+A016777(n))` -/
def P9789622635238205559.Spec : Prop :=
  ∀ n, P9789622635238205559.a n = A308689 (n + 1)

end A308689

/-! ## A308689.P13314439394443875773

`A308690(A167614(n+1)+A005408(n))`
-/

namespace A308689.P13314439394443875773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (A167614 (n + 1) + A005408 n).toNat

end

end A308689.P13314439394443875773

namespace A308689

/-- `A308690(A167614(n+1)+A005408(n))` -/
def P13314439394443875773.Spec : Prop :=
  ∀ n, P13314439394443875773.a n = A308689 (n + 1)

end A308689

/-!
# A308690: Square array A(n,k), n >= 1, k >= 0, where A(n,k) = Sum_{d|n} d^(k*n/d - k + 1), read by antidiagonals.

The programs for A308690, there is no canonical definition to state claims against.
-/

/-! ## A308690.P14944301696730447085

`A326332(A326322(n))+A245093(n+1)`
-/

namespace A308690.P14944301696730447085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326332 (A326322 n).toNat + A245093 (n + 1)

end

end A308690.P14944301696730447085

/-! ## A308690.P15524949758748531623

`A245093(n+1)+A010893(A200469(n+1))`
-/

namespace A308690.P15524949758748531623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1) + A010893 ((A200469 (n + 1)).toNat + 13)

end

end A308690.P15524949758748531623

/-! ## A308690.P6812547743103831452

`A245093(n+1)+A014083(A325012(n+1))`
-/

namespace A308690.P6812547743103831452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1) + A014083 (A325012 (n + 1)).toNat

end

end A308690.P6812547743103831452

/-! ## A308690.P2384360984494883272

`A245093(n+1)+A067586(A320606(n+1)²)`
-/

namespace A308690.P2384360984494883272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1) + A067586 (A320606 (n + 1) ^ 2).toNat

end

end A308690.P2384360984494883272

/-! ## A308690.P7956081705270036037

`A271513(A180662(n)^A271778(3*(n+1)))`
-/

namespace A308690.P7956081705270036037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271513 (SequenceMachineLib.roundAway ((A180662 n : ℚ) ^ (A271778 (3 * (n + 1)) : ℤ))).toNat

end

end A308690.P7956081705270036037

/-!
# A308692: a(n) = Sum_{d|n} d^(2*(n/d - 1)).

The programs for A308692, the canonical program `A308692.P15792816124829559227` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308692 has offset 1).

The definition of A308692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308692.P15792816124829559227

`∑{d}[n+1, #^(2*((n+1)/#-1))]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308692

/-- `∑{d}[n+1, #^(2*((n+1)/#-1))]` -/
def P15792816124829559227.Spec : Prop :=
  ∀ n, P15792816124829559227.a n = (A308692 (n + 1) : ℝ)

end A308692

/-! ## A308692.P8707060346430649450

`A308694(∑[n+3]+1)`
-/

namespace A308692.P8707060346430649450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308694 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A308692.P8707060346430649450

namespace A308692

/-- `A308694(∑[n+3]+1)` -/
def P8707060346430649450.Spec : Prop :=
  ∀ n, P8707060346430649450.a n = A308692 (n + 1)

end A308692

/-! ## A308692.P70821158771947384

`abs(1-A308694(A052905(n)+3))+1`
-/

namespace A308692.P70821158771947384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A308694 (A052905 n + 3).toNat| + 1

end

end A308692.P70821158771947384

namespace A308692

/-- `abs(1-A308694(A052905(n)+3))+1` -/
def P70821158771947384.Spec : Prop :=
  ∀ n, P70821158771947384.a n = A308692 (n + 1)

end A308692

/-! ## A308692.P18069501543867017187

`or(A151933(n), A308694(A052905(n)+3))`
-/

namespace A308692.P18069501543867017187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A308694 (A052905 n + 3).toNat)

end

end A308692.P18069501543867017187

namespace A308692

/-- `or(A151933(n), A308694(A052905(n)+3))` -/
def P18069501543867017187.Spec : Prop :=
  ∀ n, P18069501543867017187.a n = A308692 (n + 1)

end A308692

/-! ## A308692.P69466184572788850

`char[A004469(n)]*A308694(A052905(n)+3)`
-/

namespace A308692.P69466184572788850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004469 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A308694 (A052905 n + 3).toNat

end

end A308692.P69466184572788850

namespace A308692

/-- `char[A004469(n)]*A308694(A052905(n)+3)` -/
def P69466184572788850.Spec : Prop :=
  ∀ n, P69466184572788850.a n = A308692 (n + 1)

end A308692

/-! ## A308692.P10120936421754901836

`A308694(A034856(n+2))^(1-A000007(n))`
-/

namespace A308692.P10120936421754901836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308694 (A034856 (n + 2)).toNat : ℚ) ^ (1 - A000007 n : ℤ)

end

end A308692.P10120936421754901836

namespace A308692

/-- `A308694(A034856(n+2))^(1-A000007(n))` -/
def P10120936421754901836.Spec : Prop :=
  ∀ n, P10120936421754901836.a n = (A308692 (n + 1) : ℚ)

end A308692

/-! ## A308692.P7457479641412984657

`A308694(A052905(n)+3)^(1-A000007(n))`
-/

namespace A308692.P7457479641412984657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308694 (A052905 n + 3).toNat : ℚ) ^ (1 - A000007 n : ℤ)

end

end A308692.P7457479641412984657

namespace A308692

/-- `A308694(A052905(n)+3)^(1-A000007(n))` -/
def P7457479641412984657.Spec : Prop :=
  ∀ n, P7457479641412984657.a n = (A308692 (n + 1) : ℚ)

end A308692

/-! ## A308692.P7318548302757099546

`A308694(A052905(n)+3)%A000032(2*n)`
-/

namespace A308692.P7318548302757099546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308694 (A052905 n + 3).toNat) (A000032 (2 * n))

end

end A308692.P7318548302757099546

namespace A308692

/-- `A308694(A052905(n)+3)%A000032(2*n)` -/
def P7318548302757099546.Spec : Prop :=
  ∀ n, P7318548302757099546.a n = A308692 (n + 1)

end A308692

/-! ## A308692.P16809938383337911467

`A308694(A052905(n)+3)^A060763(A006093(n+1)+1)`
-/

namespace A308692.P16809938383337911467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308694 (A052905 n + 3).toNat : ℚ) ^ (A060763 (A006093 (n + 1) + 1).toNat : ℤ)

end

end A308692.P16809938383337911467

namespace A308692

/-- `A308694(A052905(n)+3)^A060763(A006093(n+1)+1)` -/
def P16809938383337911467.Spec : Prop :=
  ∀ n, P16809938383337911467.a n = (A308692 (n + 1) : ℚ)

end A308692

/-!
# A308693: a(n) = Sum_{d|n} d^(3*(n/d - 1)).

The programs for A308693, the canonical program `A308693.P13958946462796335381` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308693 has offset 1).

The definition of A308693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308693.P13958946462796335381

`∑{d}[n+1, #^(3*((n+1)/#-1))]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308693

/-- `∑{d}[n+1, #^(3*((n+1)/#-1))]` -/
def P13958946462796335381.Spec : Prop :=
  ∀ n, P13958946462796335381.a n = (A308693 (n + 1) : ℝ)

end A308693

/-! ## A308693.P2195543905553688678

`A308694(A055998(n+2))`
-/

namespace A308693.P2195543905553688678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308694 (A055998 (n + 2)).toNat

end

end A308693.P2195543905553688678

namespace A308693

/-- `A308694(A055998(n+2))` -/
def P2195543905553688678.Spec : Prop :=
  ∀ n, P2195543905553688678.a n = A308693 (n + 1)

end A308693

/-! ## A308693.P2057976862391034907

`A308694(A056000(n)+7)`
-/

namespace A308693.P2057976862391034907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308694 (A056000 n + 7).toNat

end

end A308693.P2057976862391034907

namespace A308693

/-- `A308694(A056000(n)+7)` -/
def P2057976862391034907.Spec : Prop :=
  ∀ n, P2057976862391034907.a n = A308693 (n + 1)

end A308693

/-! ## A308693.P14646182198291250032

`A308694(A052905(n+1)+2)`
-/

namespace A308693.P14646182198291250032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308694 (A052905 (n + 1) + 2).toNat

end

end A308693.P14646182198291250032

namespace A308693

/-- `A308694(A052905(n+1)+2)` -/
def P14646182198291250032.Spec : Prop :=
  ∀ n, P14646182198291250032.a n = A308693 (n + 1)

end A308693

/-! ## A308693.P1503084836071170829

`A308694(A000124(n+5)-(n+9))`
-/

namespace A308693.P1503084836071170829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308694 (A000124 (n + 5) - (n + 9 : ℤ)).toNat

end

end A308693.P1503084836071170829

namespace A308693

/-- `A308694(A000124(n+5)-(n+9))` -/
def P1503084836071170829.Spec : Prop :=
  ∀ n, P1503084836071170829.a n = A308693 (n + 1)

end A308693

/-!
# A308694: Square array A(n,k), n >= 1, k >= 0, where A(n,k) = Sum_{d|n} d^(k*(n/d - 1)), read by antidiagonals.

The programs for A308694, there is no canonical definition to state claims against.
-/

/-! ## A308694.P10076807847237532448

`(A321258(n+1)+1)%A249259(n+1)`
-/

namespace A308694.P10076807847237532448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321258 (n + 1) + 1) (A249259 (n + 1))

end

end A308694.P10076807847237532448

/-! ## A308694.P1726173185457528307

`A321258(n+1)+A140130(A016116(n))`
-/

namespace A308694.P1726173185457528307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321258 (n + 1) + A140130 (A016116 n).toNat

end

end A308694.P1726173185457528307

/-! ## A308694.P12358574152928054588

`A321258(n+1)+A119271(A133263(n))`
-/

namespace A308694.P12358574152928054588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321258 (n + 1) + A119271 (A133263 n).toNat

end

end A308694.P12358574152928054588

/-! ## A308694.P16917202427385769123

`A321258(n+1)+A189120(A028871(n+1))`
-/

namespace A308694.P16917202427385769123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321258 (n + 1) + A189120 (A028871 (n + 1)).toNat

end

end A308694.P16917202427385769123

/-! ## A308694.P4630909309517187856

`A321258(n+1)+A003415(A260271(n+1))`
-/

namespace A308694.P4630909309517187856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321258 (n + 1) + A003415 (A260271 (n + 1)).toNat

end

end A308694.P4630909309517187856

/-!
# A308695: a(n) is the minimum positive integer m such that m * 2^(n + 2) + 1 is a prime number which does not divide ((F(n + 2) - 1)^m - 1)/(F(n + 2) - 2), where F(n) is the n-th Fermat number (A000215).

The programs for A308695, there is no canonical definition to state claims against.
-/

/-! ## A308695.P3107925632662496455

`A025480(2^(∑[C(and(n+1, 2*n), n)]-n))`
-/

namespace A308695.P3107925632662496455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (n + 1) (2 * n)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A308695.P3107925632662496455

/-! ## A308695.P5859905786557922583

`A038572(2^(∑[C(and(n+1, 2*n), n)]-n))`
-/

namespace A308695.P5859905786557922583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (n + 1) (2 * n)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A308695.P5859905786557922583

/-! ## A308695.P9680427262346741378

`A302789(2^xor(n+1, 2^floor(log2(n+1))-1))`
-/

namespace A308695.P9680427262346741378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302789 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.xor (n + 1 : ℤ) ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1) : ℤ))).toNat

end

end A308695.P9680427262346741378

/-! ## A308695.P10498021208417953860

`A328479(A245191(n))`
-/

namespace A308695.P10498021208417953860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A245191 n).toNat

end

end A308695.P10498021208417953860

/-! ## A308695.P17720318676036167745

`A001316(A088504(n+1))`
-/

namespace A308695.P17720318676036167745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A088504 (n + 1)).toNat

end

end A308695.P17720318676036167745

/-!
# A308696: a(n) = Sum_{d|n} d^(2*d).

The programs for A308696, the canonical program `A308696.P3895169284127141859` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308696 has offset 1).

The definition of A308696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #^(2*#)]` (program `A308696.P3895169284127141859`, by `A308696.P3895169284127141859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308696.P3895169284127141859

`∑{d}[n+1, #^(2*#)]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308696

/-- `∑{d}[n+1, #^(2*#)]` -/
def P3895169284127141859.Spec : Prop :=
  ∀ n, (P3895169284127141859.a n : ℤ) = A308696 (n + 1)

theorem P3895169284127141859.correct : P3895169284127141859.Spec := by
  intro n
  simp only [A308696, Nat.add_sub_cancel]

end A308696

/-! ## A308696.P17907198494432890604

`record[∑{d}[n-1, (#^#)²]]`
-/

namespace A308696.P17907198494432890604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d ^ d) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308696.P17907198494432890604

namespace A308696

/-- `record[∑{d}[n-1, (#^#)²]]` -/
def P17907198494432890604.Spec : Prop :=
  ∀ n, (P17907198494432890604.a n : ℤ) = A308696 (n + 1)

end A308696

/-! ## A308696.P11446951530067123304

`A308698(∑[n+3]+1)`
-/

namespace A308696.P11446951530067123304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308698 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A308696.P11446951530067123304

namespace A308696

/-- `A308698(∑[n+3]+1)` -/
def P11446951530067123304.Spec : Prop :=
  ∀ n, P11446951530067123304.a n = A308696 (n + 1)

end A308696

/-! ## A308696.P17566610306277715779

`record[A010054(n+3)*A308698(n+1)]`
-/

namespace A308696.P17566610306277715779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A308698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308696.P17566610306277715779

namespace A308696

/-- `record[A010054(n+3)*A308698(n+1)]` -/
def P17566610306277715779.Spec : Prop :=
  ∀ n, P17566610306277715779.a n = A308696 (n + 1)

end A308696

/-!
# A308697: a(n) = Sum_{d|n} d^(3*d).

The programs for A308697, the canonical program `A308697.P10472087402500050604` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308697 has offset 1).

The definition of A308697 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #^(3*#)]` (program `A308697.P10472087402500050604`, by `A308697.P10472087402500050604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308697.P10472087402500050604

`∑{d}[n+1, #^(3*#)]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308697

/-- `∑{d}[n+1, #^(3*#)]` -/
def P10472087402500050604.Spec : Prop :=
  ∀ n, (P10472087402500050604.a n : ℤ) = A308697 (n + 1)

theorem P10472087402500050604.correct : P10472087402500050604.Spec := by
  intro n
  simp only [A308697, Nat.add_sub_cancel]

end A308697

/-! ## A308697.P277237951343868382

`A308698(A141214(n+1))`
-/

namespace A308697.P277237951343868382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308698 (A141214 (n + 1)).toNat

end

end A308697.P277237951343868382

namespace A308697

/-- `A308698(A141214(n+1))` -/
def P277237951343868382.Spec : Prop :=
  ∀ n, P277237951343868382.a n = A308697 (n + 1)

end A308697

/-! ## A308697.P15417418696492496882

`A308698(A056000(n)+7)`
-/

namespace A308697.P15417418696492496882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308698 (A056000 n + 7).toNat

end

end A308697.P15417418696492496882

namespace A308697

/-- `A308698(A056000(n)+7)` -/
def P15417418696492496882.Spec : Prop :=
  ∀ n, P15417418696492496882.a n = A308697 (n + 1)

end A308697

/-!
# A308698: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals, where A(n,k) is Sum_{d|n} d^(k*d).

The programs for A308698, there is no canonical definition to state claims against.
-/

/-! ## A308698.P7766556969403127669

`xor(A005843(A010894(3*n+1)), A308569(n+1))`
-/

namespace A308698.P7766556969403127669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005843 (A010894 (3 * n + 1 + 21)).toNat) (A308569 (n + 1))

end

end A308698.P7766556969403127669

/-! ## A308698.P5540031667247689073

`A308569(A161951(n+1))`
-/

namespace A308698.P5540031667247689073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308569 (A161951 (n + 1)).toNat

end

end A308698.P5540031667247689073

/-! ## A308698.P10505668147509253074

`A308569(A004885(n+1)+1)`
-/

namespace A308698.P10505668147509253074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308569 (A004885 (n + 1) + 1).toNat

end

end A308698.P10505668147509253074

/-! ## A308698.P5805157034851753383

`A308569(A004896(n+1)+1)`
-/

namespace A308698.P5805157034851753383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308569 (A004896 (n + 1) + 1).toNat

end

end A308698.P5805157034851753383

/-! ## A308698.P17390796561332010305

`A308569(A004907(n+1)+1)`
-/

namespace A308698.P17390796561332010305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308569 (A004907 (n + 1) + 1).toNat

end

end A308698.P17390796561332010305

/-!
# A308699: Smallest m >= n such that 1 - m! / ((m-n)!*m^n) < 1/2.

The programs for A308699, there is no canonical definition to state claims against.
-/

/-! ## A308699.P2672102975779665774

`A180005(n+1)+A184985(n+1)-A180020(n+1)`
-/

namespace A308699.P2672102975779665774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180005 (n + 1) + (A184985 (n + 1) - A180020 (n + 1))

end

end A308699.P2672102975779665774

/-! ## A308699.P4386387603180972602

`A000194(A253059(n+1)+A212523(n))`
-/

namespace A308699.P4386387603180972602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A253059 (n + 1) + A212523 n).toNat

end

end A308699.P4386387603180972602

/-! ## A308699.P4379186099175224737

`A024327(A005585(n+1)-A062028(2*n))`
-/

namespace A308699.P4379186099175224737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A005585 (n + 1) - A062028 (2 * n)).toNat

end

end A308699.P4379186099175224737

/-! ## A308699.P13421918239556794731

`∑[A091092(∑[A148112(n)])]`
-/

namespace A308699.P13421918239556794731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091092 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308699.P13421918239556794731

/-! ## A308699.P12593465428743421371

`A331162(∑[∑[A082498(n)]])`
-/

namespace A308699.P12593465428743421371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308699.P12593465428743421371

