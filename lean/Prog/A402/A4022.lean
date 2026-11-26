import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C022
import Seq.B000.C032
import Seq.B000.C044
import Seq.B000.C048
import Seq.B000.C051
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
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
# A402203: Smallest prime whose tree of most central Goldbach partitions has height n.

The programs for A402203, there is no canonical definition to state claims against.
-/

/-! ## A402203.P15343667736861265467

`A115732(A246019(n+1))`
-/

namespace A402203.P15343667736861265467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115732 (A246019 (n + 1)).toNat

end

end A402203.P15343667736861265467

/-! ## A402203.P10366442798754377527

`A138152(A318767(n))`
-/

namespace A402203.P10366442798754377527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138152 (A318767 n).toNat

end

end A402203.P10366442798754377527

/-! ## A402203.P6425046029818154607

`A316903(A000801(n+1))`
-/

namespace A402203.P6425046029818154607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316903 (A000801 (n + 1)).toNat

end

end A402203.P6425046029818154607

/-!
# A402204: Largest prime whose tree of most central Goldbach partitions has height n.

The programs for A402204, there is no canonical definition to state claims against.
-/

/-! ## A402204.P2917957441445943173

`∩[A061769(n), A220813(n+1)]`
-/

namespace A402204.P2917957441445943173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061769 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402204.P2917957441445943173

/-! ## A402204.P7591585007828588883

`A120303(a(n-1)+1)` with `a(0)=5`
-/

namespace A402204.P7591585007828588883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A120303 (a (n - 1) + 1).toNat

end

end A402204.P7591585007828588883

/-! ## A402204.P12600788354268824551

`A213724(A074839(n+1))`
-/

namespace A402204.P12600788354268824551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213724 (A074839 (n + 1)).toNat

end

end A402204.P12600788354268824551

/-!
# A402209: Areas of primitive Pythagorean triangles that are the average of a pair of twin primes.

The programs for A402209, there is no canonical definition to state claims against.
-/

/-! ## A402209.P16074873742350562010

`∩[A014574(n+1), A024365(n+1)]`
-/

namespace A402209.P16074873742350562010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402209.P16074873742350562010

/-! ## A402209.P10699491217912531232

`∩[A024365(n+1), A056853(n+1)]`
-/

namespace A402209.P10699491217912531232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402209.P10699491217912531232

/-! ## A402209.P11675986766258036662

`∩[A024365(n+1), A217259(n+1)]`
-/

namespace A402209.P11675986766258036662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402209.P11675986766258036662

/-! ## A402209.P8687189504640967172

`∩[A024365(n+1), A258838(n+1)]`
-/

namespace A402209.P8687189504640967172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402209.P8687189504640967172

/-! ## A402209.P18307956972814441375

`∩[A024365(n+1), A401769(n+1)]`
-/

namespace A402209.P18307956972814441375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402209.P18307956972814441375

/-!
# A402223: Fill the cells of the square grid in spiral order, starting at the center. a(n) is the smallest positive k such that no earlier cell within k steps (up, down, left, right) of cell n has k.

The programs for A402223, there is no canonical definition to state claims against.
-/

/-! ## A402223.P3456558177079602630

`A306248(A225652(n+2))`
-/

namespace A402223.P3456558177079602630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306248 (A225652 (n + 2)).toNat

end

end A402223.P3456558177079602630

/-! ## A402223.P8152244603092883913

`A272604(A281310(n))`
-/

namespace A402223.P8152244603092883913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A281310 n).toNat

end

end A402223.P8152244603092883913

/-! ## A402223.P15282432149430732744

`A165093(A199573(n+1))`
-/

namespace A402223.P15282432149430732744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 (A199573 (n + 1)).toNat

end

end A402223.P15282432149430732744

/-! ## A402223.P6683480970679794474

`A309228(A069111(n+1))`
-/

namespace A402223.P6683480970679794474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309228 (A069111 (n + 1)).toNat

end

end A402223.P6683480970679794474

/-! ## A402223.P16293868020268692191

`A368328(A343101(n+1))`
-/

namespace A402223.P16293868020268692191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368328 (A343101 (n + 1)).toNat

end

end A402223.P16293868020268692191

/-!
# A402230: a(n) is the largest n-digit number from which no earlier term can be obtained by deleting digits one at a time, where a digit may be deleted only if it is the last digit or is not smaller than the digit currently following it.

The programs for A402230, there is no canonical definition to state claims against.
-/

/-! ## A402230.P17112561825428436116

`10*a(n-1)-A320838(n+1)` with `a(0)=9`
-/

namespace A402230.P17112561825428436116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  10 * a (n - 1) - A320838 (n + 1)

end

end A402230.P17112561825428436116

/-! ## A402230.P11815747765658062601

`10^(n+1)-∑{#}[n, A320838(#+1)*10^(n+1-(#+1))]`
-/

namespace A402230.P11815747765658062601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℚ) - ∑ k ∈ Finset.range (f1 n + 1), (A320838 (k + 1) : ℚ) * (10 : ℚ) ^ ((n + 1 : ℤ) - (k + 1 : ℤ) : ℤ)

end

end A402230.P11815747765658062601

/-!
# A402237: Number of acyclic digraphs (or DAGs) on n labeled nodes in which every node has in-degree at most 2 and there is exactly one source and exactly one sink.

The programs for A402237, there is no canonical definition to state claims against.
-/

/-! ## A402237.P14148485915281372113

`A281351(A027305(n))`
-/

namespace A402237.P14148485915281372113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281351 (A027305 n).toNat

end

end A402237.P14148485915281372113

/-!
# A402239: Number of divisors d of n such that gcd(d, n/d) is a cube.

The programs for A402239, the canonical program `A402239.P9744106415252769887` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402239 has offset 1).

The definition of A402239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A402239.P9744106415252769887

`∑{d}[n+1, A061704(#)*A299406((n+1)/#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A402239

/-- `∑{d}[n+1, A061704(#)*A299406((n+1)/#)]` -/
def P9744106415252769887.Spec : Prop :=
  ∀ n, P9744106415252769887.a n = A402239 (n + 1)

theorem P9744106415252769887.correct : P9744106415252769887.Spec := by
  intro n
  simp only [A402239, Nat.add_sub_cancel]

end A402239

/-!
# A402243: Sum of divisors of n that are terms in A252895.

The programs for A402243, the canonical program `A402243.P7368100219335166266` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402243 has offset 1).

The definition of A402243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A402243.P7368100219335166266

`∑{d}[n+1, #*A353519(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A402243

/-- `∑{d}[n+1, #*A353519(#)]` -/
def P7368100219335166266.Spec : Prop :=
  ∀ n, P7368100219335166266.a n = A402243 (n + 1)

theorem P7368100219335166266.correct : P7368100219335166266.Spec := by
  intro n
  simp only [A402243, Nat.add_sub_cancel]

end A402243

/-!
# A402244: Largest divisor of n that is a term in A252895.

The programs for A402244, the canonical program `A402244.P15937437709523457238` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402244 has offset 1).

The definition of A402244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A402244.P15937437709523457238

`A008835(n+1)*A056554(n+1)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A402244

/-- `A008835(n+1)*A056554(n+1)` -/
def P15937437709523457238.Spec : Prop :=
  ∀ n, P15937437709523457238.a n = A402244 (n + 1)

theorem P15937437709523457238.correct : P15937437709523457238.Spec := by
  intro n
  simp only [A402244, Nat.add_sub_cancel]

end A402244

/-! ## A402244.P15503667042633671677

`(n+1)/A050985(A000190(n+1))`
-/

namespace A402244.P15503667042633671677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A050985 (A000190 (n + 1)).toNat : ℚ)

end

end A402244.P15503667042633671677

namespace A402244

/-- `(n+1)/A050985(A000190(n+1))` -/
def P15503667042633671677.Spec : Prop :=
  ∀ n, P15503667042633671677.a n = (A402244 (n + 1) : ℚ)

end A402244

/-! ## A402244.P13274599914918196457

`(n+1)/A000190(A053165(n+1))`
-/

namespace A402244.P13274599914918196457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000190 (A053165 (n + 1)).toNat : ℚ)

end

end A402244.P13274599914918196457

namespace A402244

/-- `(n+1)/A000190(A053165(n+1))` -/
def P13274599914918196457.Spec : Prop :=
  ∀ n, P13274599914918196457.a n = (A402244 (n + 1) : ℚ)

end A402244

/-! ## A402244.P8434872215077578837

`A053167(A062379(n+1))*A056554(n+1)`
-/

namespace A402244.P8434872215077578837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053167 (A062379 (n + 1)).toNat * A056554 (n + 1)

end

end A402244.P8434872215077578837

namespace A402244

/-- `A053167(A062379(n+1))*A056554(n+1)` -/
def P8434872215077578837.Spec : Prop :=
  ∀ n, P8434872215077578837.a n = A402244 (n + 1)

end A402244

/-! ## A402244.P18269822225437514276

`A053167(n+1)/A056551(A056554(n+1))`
-/

namespace A402244.P18269822225437514276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053167 (n + 1) : ℚ) / (A056551 (A056554 (n + 1)).toNat : ℚ)

end

end A402244.P18269822225437514276

namespace A402244

/-- `A053167(n+1)/A056551(A056554(n+1))` -/
def P18269822225437514276.Spec : Prop :=
  ∀ n, P18269822225437514276.a n = (A402244 (n + 1) : ℚ)

end A402244

/-! ## A402244.P11792734674990902022

`A053167(n+1)*A056554(n+1)/A056553(n+1)`
-/

namespace A402244.P11792734674990902022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053167 (n + 1) * A056554 (n + 1) : ℚ) / (A056553 (n + 1) : ℚ)

end

end A402244.P11792734674990902022

namespace A402244

/-- `A053167(n+1)*A056554(n+1)/A056553(n+1)` -/
def P11792734674990902022.Spec : Prop :=
  ∀ n, P11792734674990902022.a n = (A402244 (n + 1) : ℚ)

end A402244

/-! ## A402244.P6416741298062601763

`A056554(n+1)*A062379(A372329(n+1))`
-/

namespace A402244.P6416741298062601763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (n + 1) * A062379 (A372329 (n + 1)).toNat

end

end A402244.P6416741298062601763

namespace A402244

/-- `A056554(n+1)*A062379(A372329(n+1))` -/
def P6416741298062601763.Spec : Prop :=
  ∀ n, P6416741298062601763.a n = A402244 (n + 1)

end A402244

/-!
# A402245: Exponent of highest power of 2 dividing A122132(n).

The programs for A402245, the canonical program `A402245.P13887350206260039043` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402245 has offset 1).

The definition of A402245 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122132, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A402245.P13887350206260039043

`A007814(A122132(n+1))`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A402245

/-- `A007814(A122132(n+1))` -/
def P13887350206260039043.Spec : Prop :=
  ∀ n, P13887350206260039043.a n = A402245 (n + 1)

theorem P13887350206260039043.correct : P13887350206260039043.Spec := by
  intro n
  simp only [A402245, Nat.add_sub_cancel]

end A402245

/-! ## A402245.P2611879661565741794

`val(A122132(n+1), 2)`
-/

namespace A402245.P2611879661565741794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A122132 (n + 1)).toNat 2

end

end A402245.P2611879661565741794

namespace A402245

/-- `val(A122132(n+1), 2)` -/
def P2611879661565741794.Spec : Prop :=
  ∀ n, (P2611879661565741794.a n : ℤ) = A402245 (n + 1)

end A402245

/-! ## A402245.P74118858277645390

`A050605(A192861(n+1))`
-/

namespace A402245.P74118858277645390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A192861 (n + 1)).toNat

end

end A402245.P74118858277645390

namespace A402245

/-- `A050605(A192861(n+1))` -/
def P74118858277645390.Spec : Prop :=
  ∀ n, P74118858277645390.a n = A402245 (n + 1)

end A402245

/-!
# A402246: Maximum exponent in the prime factorization of the numbers whose prime factorization has a second-largest exponent that equals 1.

The programs for A402246, the canonical program `A402246.P18208456299775347097` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402246 has offset 1).

The definition of A402246 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A402246.P18208456299775347097

`A051903(A375934(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A402246

/-- `A051903(A375934(n+1))` -/
def P18208456299775347097.Spec : Prop :=
  ∀ n, P18208456299775347097.a n = A402246 (n + 1)

theorem P18208456299775347097.correct : P18208456299775347097.Spec := by
  intro n
  simp only [A402246, Nat.add_sub_cancel]

end A402246

/-! ## A402246.P9392428607994436467

`A325837(A389947(n+1))`
-/

namespace A402246.P9392428607994436467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A389947 (n + 1)).toNat

end

end A402246.P9392428607994436467

namespace A402246

/-- `A325837(A389947(n+1))` -/
def P9392428607994436467.Spec : Prop :=
  ∀ n, P9392428607994436467.a n = A402246 (n + 1)

end A402246

/-! ## A402246.P1848150423050520642

`A336736(A317616(n+1))`
-/

namespace A402246.P1848150423050520642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336736 (A317616 (n + 1)).toNat

end

end A402246.P1848150423050520642

namespace A402246

/-- `A336736(A317616(n+1))` -/
def P1848150423050520642.Spec : Prop :=
  ∀ n, P1848150423050520642.a n = A402246 (n + 1)

end A402246

/-!
# A402261: a(n) = 1 + Sum_{k=1..n} binomial(n+k-1,k) * a(n-k).

The programs for A402261, there is no canonical definition to state claims against.
-/

/-! ## A402261.P4423918879406642624

`A339220(A283090(n+1))`
-/

namespace A402261.P4423918879406642624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339220 (A283090 (n + 1)).toNat

end

end A402261.P4423918879406642624

/-!
# A402266: Indices m for which the sum of the first m deficient numbers A173106(m) is itself deficient.

The programs for A402266, there is no canonical definition to state claims against.
-/

/-! ## A402266.P1878598956249242270

`A350843(A045672(n+1))`
-/

namespace A402266.P1878598956249242270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350843 (A045672 (n + 1)).toNat

end

end A402266.P1878598956249242270

/-!
# A402268: Composite numbers k such that min_{1<j<=k/2} gcd(k, binomial(k,j)) > sqrt(k).

The programs for A402268, there is no canonical definition to state claims against.
-/

/-! ## A402268.P2945478203892028863

`filter[A095275(2*n), A354996(#)]`
-/

namespace A402268.P2945478203892028863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095275 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A402268.P2945478203892028863

/-!
# A402272: a(n) is the label of the Dirichlet character Jacobi(.,2*n+1) modulo 2*n+1 in the Conrey labeling system.

The programs for A402272, there is no canonical definition to state claims against.
-/

/-! ## A402272.P11725821054983396108

`A402232(Δ[n²])`
-/

namespace A402272.P11725821054983396108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402232 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A402272.P11725821054983396108

/-!
# A402273: Bisection of A007913: a(n) = A007913(2*n+1).

The programs for A402273, the canonical program `A402273.P12033226829147703741` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402273 has offset 0).

The definition of A402273 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007913(2*n+1)` (program `A402273.P12033226829147703741`, by `A402273.P12033226829147703741.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A402273.P12033226829147703741

`A007913(2*n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A402273

/-- `A007913(2*n+1)` -/
def P12033226829147703741.Spec : Prop :=
  ∀ n, P12033226829147703741.a n = A402273 n

theorem P12033226829147703741.correct : P12033226829147703741.Spec := by
  intro n
  simp only [A402273]

end A402273

/-! ## A402273.P7171613672411603023

`(2*n+1)/A008833(2*n+1)`
-/

namespace A402273.P7171613672411603023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A008833 (2 * n + 1) : ℚ)

end

end A402273.P7171613672411603023

namespace A402273

/-- `(2*n+1)/A008833(2*n+1)` -/
def P7171613672411603023.Spec : Prop :=
  ∀ n, P7171613672411603023.a n = (A402273 n : ℚ)

end A402273

/-! ## A402273.P11297441244234564668

`2*n+1-A326128(2*n+1)`
-/

namespace A402273.P11297441244234564668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A326128 (2 * n + 1)

end

end A402273.P11297441244234564668

namespace A402273

/-- `2*n+1-A326128(2*n+1)` -/
def P11297441244234564668.Spec : Prop :=
  ∀ n, P11297441244234564668.a n = A402273 n

theorem P11297441244234564668.correct : P11297441244234564668.Spec := by
  intro n
  simp only [A402273, Nat.add_sub_cancel, A402273.P11297441244234564668.a, A402273.P12033226829147703741.a, A007913, A007913.P8131970495124731496.a, A326128, A326128.P4962900157914824511.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A402273

/-! ## A402273.P9233269147207609576

`A364900(2*n)`
-/

namespace A402273.P9233269147207609576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (2 * n)

end

end A402273.P9233269147207609576

namespace A402273

/-- `A364900(2*n)` -/
def P9233269147207609576.Spec : Prop :=
  ∀ n, P9233269147207609576.a n = A402273 n

end A402273

/-! ## A402273.P5978721491385296813

`A038387(Δ[n²])`
-/

namespace A402273.P5978721491385296813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A402273.P5978721491385296813

namespace A402273

/-- `A038387(Δ[n²])` -/
def P5978721491385296813.Spec : Prop :=
  ∀ n, P5978721491385296813.a n = A402273 n

end A402273

/-! ## A402273.P5299518275060304044

`A147661(Δ[n²])`
-/

namespace A402273.P5299518275060304044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147661 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A402273.P5299518275060304044

namespace A402273

/-- `A147661(Δ[n²])` -/
def P5299518275060304044.Spec : Prop :=
  ∀ n, P5299518275060304044.a n = A402273 n

end A402273

/-! ## A402273.P4138821381762175520

`sqrt(A055491(2*n+1))`
-/

namespace A402273.P4138821381762175520
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055491 (2 * n + 1) : ℝ)

end

end A402273.P4138821381762175520

namespace A402273

/-- `sqrt(A055491(2*n+1))` -/
def P4138821381762175520.Spec : Prop :=
  ∀ n, P4138821381762175520.a n = (A402273 n : ℝ)

end A402273

/-! ## A402273.P13428288222469239662

`∏{p}[A071975(2*n+1), #]`
-/

namespace A402273.P13428288222469239662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A402273.P13428288222469239662

namespace A402273

/-- `∏{p}[A071975(2*n+1), #]` -/
def P13428288222469239662.Spec : Prop :=
  ∀ n, (P13428288222469239662.a n : ℤ) = A402273 n

end A402273

/-! ## A402273.P9386860729980468024

`∏{p}[A350389(2*n+1), #]`
-/

namespace A402273.P9386860729980468024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A402273.P9386860729980468024

namespace A402273

/-- `∏{p}[A350389(2*n+1), #]` -/
def P9386860729980468024.Spec : Prop :=
  ∀ n, (P9386860729980468024.a n : ℤ) = A402273 n

end A402273

/-! ## A402273.P17612756919880952852

`∏{p}[A401425(2*n+1), #]`
-/

namespace A402273.P17612756919880952852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401425 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A402273.P17612756919880952852

namespace A402273

/-- `∏{p}[A401425(2*n+1), #]` -/
def P17612756919880952852.Spec : Prop :=
  ∀ n, (P17612756919880952852.a n : ℤ) = A402273 n

end A402273

/-! ## A402273.P5173714706751705401

`A053143(2*n+1)/(2*n+1)`
-/

namespace A402273.P5173714706751705401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A402273.P5173714706751705401

namespace A402273

/-- `A053143(2*n+1)/(2*n+1)` -/
def P5173714706751705401.Spec : Prop :=
  ∀ n, P5173714706751705401.a n = (A402273 n : ℚ)

end A402273

/-! ## A402273.P7730974212309159234

`(2*n+1)/A235872(2*n+1)`
-/

namespace A402273.P7730974212309159234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A235872 (2 * n + 1) : ℚ)

end

end A402273.P7730974212309159234

namespace A402273

/-- `(2*n+1)/A235872(2*n+1)` -/
def P7730974212309159234.Spec : Prop :=
  ∀ n, P7730974212309159234.a n = (A402273 n : ℚ)

end A402273

/-! ## A402273.P17012617508136521702

`filter[A038387(n+1), A000035(#)]`
-/

namespace A402273.P17012617508136521702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A402273.P17012617508136521702

namespace A402273

/-- `filter[A038387(n+1), A000035(#)]` -/
def P17012617508136521702.Spec : Prop :=
  ∀ n, P17012617508136521702.a n = A402273 n

end A402273

/-! ## A402273.P13995830661544178776

`filter[A038387(n+1), A323239(#)]`
-/

namespace A402273.P13995830661544178776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A402273.P13995830661544178776

namespace A402273

/-- `filter[A038387(n+1), A323239(#)]` -/
def P13995830661544178776.Spec : Prop :=
  ∀ n, P13995830661544178776.a n = A402273 n

end A402273

/-! ## A402273.P226788797665962321

`filter[A038387(n+1), A373157(#)]`
-/

namespace A402273.P226788797665962321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A402273.P226788797665962321

namespace A402273

/-- `filter[A038387(n+1), A373157(#)]` -/
def P226788797665962321.Spec : Prop :=
  ∀ n, P226788797665962321.a n = A402273 n

end A402273

/-! ## A402273.P8039969087321980331

`A117811(3*n+n+1)`
-/

namespace A402273.P8039969087321980331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (3 * n + (n + 1))

end

end A402273.P8039969087321980331

namespace A402273

/-- `A117811(3*n+n+1)` -/
def P8039969087321980331.Spec : Prop :=
  ∀ n, P8039969087321980331.a n = A402273 n

end A402273

/-! ## A402273.P353852809526688659

`A056135(8*n+4)`
-/

namespace A402273.P353852809526688659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (8 * n + 4)

end

end A402273.P353852809526688659

namespace A402273

/-- `A056135(8*n+4)` -/
def P353852809526688659.Spec : Prop :=
  ∀ n, P353852809526688659.a n = A402273 n

end A402273

/-! ## A402273.P4593929020536736643

`(2*n+1)%A193800(2*n+1)`
-/

namespace A402273.P4593929020536736643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (A193800 (2 * n + 1))

end

end A402273.P4593929020536736643

namespace A402273

/-- `(2*n+1)%A193800(2*n+1)` -/
def P4593929020536736643.Spec : Prop :=
  ∀ n, P4593929020536736643.a n = A402273 n

end A402273

/-! ## A402273.P564196805042417630

`A352780((n+1)*Δ[n²])`
-/

namespace A402273.P564196805042417630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352780 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A402273.P564196805042417630

namespace A402273

/-- `A352780((n+1)*Δ[n²])` -/
def P564196805042417630.Spec : Prop :=
  ∀ n, P564196805042417630.a n = A402273 n

end A402273

/-! ## A402273.P1067629160780748433

`A336643(A011262(2*n+1))`
-/

namespace A402273.P1067629160780748433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A011262 (2 * n + 1)).toNat

end

end A402273.P1067629160780748433

namespace A402273

/-- `A336643(A011262(2*n+1))` -/
def P1067629160780748433.Spec : Prop :=
  ∀ n, P1067629160780748433.a n = A402273 n

end A402273

/-!
# A402277: Number of solid standard Young tableaux with n cells and cylindric index 0.

The programs for A402277, there is no canonical definition to state claims against.
-/

/-! ## A402277.P3295589949220242041

`A400388(∑[n])`
-/

namespace A402277.P3295589949220242041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400388 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A402277.P3295589949220242041

/-!
# A402286: a(0) = 1; a(n+1) is the number of preceding bars visible from the top of bar n, where bar k has height a(k).

The programs for A402286, there is no canonical definition to state claims against.
-/

/-! ## A402286.P6738055588192628712

`gcd(A351884(n), A401167(n))`
-/

namespace A402286.P6738055588192628712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A351884 n) (A401167 n)

end

end A402286.P6738055588192628712

/-! ## A402286.P14717311670884485214

`gcd(A151620(n), A401167(n))`
-/

namespace A402286.P14717311670884485214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151620 n) (A401167 n)

end

end A402286.P14717311670884485214

/-!
# A402290: Terms in A377091 that end a block of terms of the same sign.

The programs for A402290, there is no canonical definition to state claims against.
-/

/-! ## A402290.P1315535548524899535

`A377091(A400714(n+1))`
-/

namespace A402290.P1315535548524899535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A400714 (n + 1)).toNat

end

end A402290.P1315535548524899535

/-!
# A402292: Maximum number of regions that can be formed in the plane by drawing n noncrossing unit circles.

The programs for A402292, the canonical program `A402292.P139546155512675331` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402292 has offset 0).

The definition of A402292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A402292.P139546155512675331

`A047931(n)+a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A402292

/-- `A047931(n)+a(n-1)` -/
def P139546155512675331.Spec : Prop :=
  ∀ n, P139546155512675331.a n = A402292 n

theorem P139546155512675331.correct : P139546155512675331.Spec := by
  intro n
  simp only [A402292]

end A402292

/-! ## A402292.P3217355453939697626

`A402294(n)+n+1`
-/

namespace A402292.P3217355453939697626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402294 n + (n + 1 : ℤ)

end

end A402292.P3217355453939697626

namespace A402292

/-- `A402294(n)+n+1` -/
def P3217355453939697626.Spec : Prop :=
  ∀ n, P3217355453939697626.a n = A402292 n

theorem P3217355453939697626.correct : P3217355453939697626.Spec := by
  intro n
  simp only [A402292, Nat.add_sub_cancel, A402292.P3217355453939697626.a, A402292.P139546155512675331.a, A047931, A047931.P10684447278847287927.f1, A047931.P10684447278847287927.a, A402294, A402294.P7736374336321780923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A402292

/-!
# A402293: Maximum number of regions that can be formed in the plane by drawing n non-overlapping circles.

The programs for A402293, the canonical program `A402293.P4556086353451179629` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402293 has offset 0).

The definition of A402293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402293.P4556086353451179629

`max(n+1, 3*n-4)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A402293

/-- `max(n+1, 3*n-4)` -/
def P4556086353451179629.Spec : Prop :=
  ∀ n, P4556086353451179629.a n = A402293 n

theorem P4556086353451179629.correct : P4556086353451179629.Spec := by
  intro n
  simp only [A402293]

end A402293

/-!
# A402294: a(n) = number of internal crevices between the circles in an optimal arrangement of circles achieving A402292(n).

The programs for A402294, the canonical program `A402294.P7736374336321780923` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402294 has offset 0).

The definition of A402294 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A402292, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A402294.P7736374336321780923

`A402292(n)-n-1`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A402294

/-- `A402292(n)-n-1` -/
def P7736374336321780923.Spec : Prop :=
  ∀ n, P7736374336321780923.a n = A402294 n

theorem P7736374336321780923.correct : P7736374336321780923.Spec := by
  intro n
  simp only [A402294]

end A402294

/-! ## A402294.P16099067974440740363

`A402292(n)-(n+1)`
-/

namespace A402294.P16099067974440740363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402292 n - (n + 1 : ℤ)

end

end A402294.P16099067974440740363

namespace A402294

/-- `A402292(n)-(n+1)` -/
def P16099067974440740363.Spec : Prop :=
  ∀ n, P16099067974440740363.a n = A402294 n

theorem P16099067974440740363.correct : P16099067974440740363.Spec := by
  intro n
  simp only [A402294, Nat.add_sub_cancel, A402294.P16099067974440740363.a, A402294.P7736374336321780923.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A402294

/-! ## A402294.P3599372523289257476

`A016825(n)%A121149(n)`
-/

namespace A402294.P3599372523289257476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016825 n) (A121149 n)

end

end A402294.P3599372523289257476

namespace A402294

/-- `A016825(n)%A121149(n)` -/
def P3599372523289257476.Spec : Prop :=
  ∀ n, P3599372523289257476.a n = A402294 n

end A402294

/-! ## A402294.P8210063841852699246

`A133653(n+1)-A121149(n)`
-/

namespace A402294.P8210063841852699246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1) - A121149 n

end

end A402294.P8210063841852699246

namespace A402294

/-- `A133653(n+1)-A121149(n)` -/
def P8210063841852699246.Spec : Prop :=
  ∀ n, P8210063841852699246.a n = A402294 n

end A402294

/-! ## A402294.P1291587460595252599

`ceil(log(A114297(n)))`
-/

namespace A402294.P1291587460595252599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A114297 n : ℝ)⌉

end

end A402294.P1291587460595252599

namespace A402294

/-- `ceil(log(A114297(n)))` -/
def P1291587460595252599.Spec : Prop :=
  ∀ n, P1291587460595252599.a n = A402294 n

end A402294

