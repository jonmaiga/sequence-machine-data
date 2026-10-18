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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
# A173200: Solutions y of the Mordell equation y^2 = x^3 - 3a^2 - 1 for a = 0,1,2, ... (solutions x are given by A053755).

The programs for A173200, the canonical program `A173200.P5174319977372624570` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173200 has offset 1).

The definition of A173200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173200.P5174319977372624570

`8*(n+1)^3-24*(n+1)²+27*(n+1)-11`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173200

/-- `8*(n+1)^3-24*(n+1)²+27*(n+1)-11` -/
def P5174319977372624570.Spec : Prop :=
  ∀ n, P5174319977372624570.a n = A173200 (n + 1)

theorem P5174319977372624570.correct : P5174319977372624570.Spec := by
  intro n
  simp only [A173200, Nat.add_sub_cancel]

end A173200

/-!
# A173202: Solutions y of the Mordell equation y^2 = x^3 - 3a^2 + 1 for a = 0,1,2, ... (solutions x are given by the sequence A000466).

The programs for A173202, the canonical program `A173202.P2385789338714039204` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173202 has offset 1).

The definition of A173202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173202.P2385789338714039204

`8*(n+1)^3-24*(n+1)²+21*(n+1)-5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173202

/-- `8*(n+1)^3-24*(n+1)²+21*(n+1)-5` -/
def P2385789338714039204.Spec : Prop :=
  ∀ n, P2385789338714039204.a n = A173202 (n + 1)

theorem P2385789338714039204.correct : P2385789338714039204.Spec := by
  intro n
  simp only [A173202, Nat.add_sub_cancel]

end A173202

/-! ## A173202.P129742235214346738

`lcm(n, (2*n)^3-3*n)`
-/

namespace A173202.P129742235214346738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (((2 * n) ^ 3 : ℤ) - (3 * n : ℤ))

end

end A173202.P129742235214346738

namespace A173202

/-- `lcm(n, (2*n)^3-3*n)` -/
def P129742235214346738.Spec : Prop :=
  ∀ n, (P129742235214346738.a n : ℤ) = A173202 (n + 1)

end A173202

/-!
# A173205: a(n) = 98*a(n-1)-a(n-2) for n>2, a(1)=1, a(2)=98.

The programs for A173205, the canonical program `A173205.P464104449719072355` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173205 has offset 1).

The definition of A173205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `98*a(n-1)-a(n-2)` (program `A173205.P464104449719072355`, by `A173205.P464104449719072355.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173205.P464104449719072355

`98*a(n-1)-a(n-2)` with `a(0)=1, a(1)=98`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173205

/-- `98*a(n-1)-a(n-2)` -/
def P464104449719072355.Spec : Prop :=
  ∀ n, P464104449719072355.a n = A173205 (n + 1)

theorem P464104449719072355.correct : P464104449719072355.Spec := by
  intro n
  simp only [A173205, Nat.add_sub_cancel]

end A173205

/-! ## A173205.P17545952618749279378

`((49+20*sqrt(6))^(n+1)-(49-20*sqrt(6))^(n+1))/(40*sqrt(6))`
-/

namespace A173205.P17545952618749279378
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((49 + 20 * Real.sqrt (6 : ℝ)) ^ (n + 1) - (49 - 20 * Real.sqrt (6 : ℝ)) ^ (n + 1)) / (40 * Real.sqrt (6 : ℝ))

end

end A173205.P17545952618749279378

namespace A173205

/-- `((49+20*sqrt(6))^(n+1)-(49-20*sqrt(6))^(n+1))/(40*sqrt(6))` -/
def P17545952618749279378.Spec : Prop :=
  ∀ n, P17545952618749279378.a n = (A173205 (n + 1) : ℝ)

end A173205

/-! ## A173205.P143727343788095337

`∑[A302330(n)]`
-/

namespace A173205.P143727343788095337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173205.P143727343788095337

namespace A173205

/-- `∑[A302330(n)]` -/
def P143727343788095337.Spec : Prop :=
  ∀ n, P143727343788095337.a n = A173205 (n + 1)

end A173205

/-! ## A173205.P8069160659159813332

`Δ[A278620(n)]`
-/

namespace A173205.P8069160659159813332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173205.P8069160659159813332

namespace A173205

/-- `Δ[A278620(n)]` -/
def P8069160659159813332.Spec : Prop :=
  ∀ n, P8069160659159813332.a n = A173205 (n + 1)

end A173205

/-! ## A173205.P16365178852429014206

`∑[A041275(2*n)]`
-/

namespace A173205.P16365178852429014206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041275 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173205.P16365178852429014206

namespace A173205

/-- `∑[A041275(2*n)]` -/
def P16365178852429014206.Spec : Prop :=
  ∀ n, P16365178852429014206.a n = A173205 (n + 1)

end A173205

/-! ## A173205.P4579845947710686203

`∑[A042151(2*n)]`
-/

namespace A173205.P4579845947710686203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042151 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173205.P4579845947710686203

namespace A173205

/-- `∑[A042151(2*n)]` -/
def P4579845947710686203.Spec : Prop :=
  ∀ n, P4579845947710686203.a n = A173205 (n + 1)

end A173205

/-! ## A173205.P836170940906091454

`A046173(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A173205.P836170940906091454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046173 (n + 1) - a (n - 1)

end

end A173205.P836170940906091454

namespace A173205

/-- `A046173(n+1)-a(n-1)` -/
def P836170940906091454.Spec : Prop :=
  ∀ n, P836170940906091454.a n = A173205 (n + 1)

end A173205

/-! ## A173205.P631032355814762370

`99*a(n-1)-A046173(n)` with `a(0)=1`
-/

namespace A173205.P631032355814762370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  99 * a (n - 1) - A046173 n

end

end A173205.P631032355814762370

namespace A173205

/-- `99*a(n-1)-A046173(n)` -/
def P631032355814762370.Spec : Prop :=
  ∀ n, P631032355814762370.a n = A173205 (n + 1)

end A173205

/-! ## A173205.P16493626666184407625

`A041275(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A173205.P16493626666184407625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A041275 (n + n) + a (n - 1)

end

end A173205.P16493626666184407625

namespace A173205

/-- `A041275(n+n)+a(n-1)` -/
def P16493626666184407625.Spec : Prop :=
  ∀ n, P16493626666184407625.a n = A173205 (n + 1)

end A173205

/-! ## A173205.P2854019897264323479

`A278620(n+1)-A278620(n)`
-/

namespace A173205.P2854019897264323479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278620 (n + 1) - A278620 n

end

end A173205.P2854019897264323479

namespace A173205

/-- `A278620(n+1)-A278620(n)` -/
def P2854019897264323479.Spec : Prop :=
  ∀ n, P2854019897264323479.a n = A173205 (n + 1)

end A173205

/-!
# A173208: Squarefree Fibonacci numbers F such that F+1 and F-1 are also squarefree.

The programs for A173208, there is no canonical definition to state claims against.
-/

/-! ## A173208.P3466972377429315331

`A134495(lt[A303314(3*n+4), 61])`
-/

namespace A173208.P3466972377429315331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134495 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A173208.P3466972377429315331

/-! ## A173208.P14331938055096693453

`A134495(A007094(n)^A055642(n))`
-/

namespace A173208.P14331938055096693453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134495 (SequenceMachineLib.roundAway ((A007094 n : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A173208.P14331938055096693453

/-! ## A173208.P6705006029333293803

`A000045(or(6*n+3, A124482(n+1)))`
-/

namespace A173208.P6705006029333293803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lor (6 * n + 3 : ℤ) (A124482 (n + 1))).toNat

end

end A173208.P6705006029333293803

/-! ## A173208.P8211779659615801246

`A000045(or(A016945(n), A130661(n)))`
-/

namespace A173208.P8211779659615801246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lor (A016945 n) (A130661 n)).toNat

end

end A173208.P8211779659615801246

/-! ## A173208.P13175425167436446499

`A000045(or(A016945(n), A145102(C(n, 6))))`
-/

namespace A173208.P13175425167436446499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lor (A016945 n) (A145102 (Nat.choose n 6))).toNat

end

end A173208.P13175425167436446499

/-!
# A173209: Partial sums of A000069.

The programs for A173209, the canonical program `A173209.P297132130710244703` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173209 has offset 1).

The definition of A173209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173209.P5871568996287301973

`∑[comp[xor(n, 2*n)]]`
-/

namespace A173209.P5871568996287301973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P5871568996287301973

namespace A173209

/-- `∑[comp[xor(n, 2*n)]]` -/
def P5871568996287301973.Spec : Prop :=
  ∀ n, (P5871568996287301973.a n : ℤ) = A173209 (n + 1)

end A173209

/-! ## A173209.P297132130710244703

`∑[lt[-a(and(n, n-1)), 0]]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173209

/-- `∑[lt[-a(and(n, n-1)), 0]]` -/
def P297132130710244703.Spec : Prop :=
  ∀ n, (P297132130710244703.a n : ℤ) = A173209 (n + 1)

theorem P297132130710244703.correct : P297132130710244703.Spec := by
  intro n
  simp only [A173209, Nat.add_sub_cancel]

end A173209

/-! ## A173209.P16628757960694763835

`∑[char[xor(n, 2*n)]+2*n]`
-/

namespace A173209.P16628757960694763835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P16628757960694763835

namespace A173209

/-- `∑[char[xor(n, 2*n)]+2*n]` -/
def P16628757960694763835.Spec : Prop :=
  ∀ n, (P16628757960694763835.a n : ℤ) = A173209 (n + 1)

end A173209

/-! ## A173209.P2836174614753507012

`∑[or(2*n, char[xor(n, 2*n)])]`
-/

namespace A173209.P2836174614753507012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P2836174614753507012

namespace A173209

/-- `∑[or(2*n, char[xor(n, 2*n)])]` -/
def P2836174614753507012.Spec : Prop :=
  ∀ n, (P2836174614753507012.a n : ℤ) = A173209 (n + 1)

end A173209

/-! ## A173209.P7209039716564383586

`∑[xor(2*n, char[xor(n, 2*n)])]`
-/

namespace A173209.P7209039716564383586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P7209039716564383586

namespace A173209

/-- `∑[xor(2*n, char[xor(n, 2*n)])]` -/
def P7209039716564383586.Spec : Prop :=
  ∀ n, (P7209039716564383586.a n : ℤ) = A173209 (n + 1)

end A173209

/-! ## A173209.P6477326705262525312

`comp[xor(n, 2*n)]+a(n-1)` with `a(0)=1`
-/

namespace A173209.P6477326705262525312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + a (n - 1)

end

end A173209.P6477326705262525312

namespace A173209

/-- `comp[xor(n, 2*n)]+a(n-1)` -/
def P6477326705262525312.Spec : Prop :=
  ∀ n, (P6477326705262525312.a n : ℤ) = A173209 (n + 1)

end A173209

/-! ## A173209.P16725080497004173302

`(n+1)²-∑[char[xor(n, Δ[n²])]]`
-/

namespace A173209.P16725080497004173302
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A173209.P16725080497004173302

namespace A173209

/-- `(n+1)²-∑[char[xor(n, Δ[n²])]]` -/
def P16725080497004173302.Spec : Prop :=
  ∀ n, P16725080497004173302.a n = A173209 (n + 1)

end A173209

/-! ## A173209.P7920983894005111620

`∑[A000069(n+1)]`
-/

namespace A173209.P7920983894005111620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P7920983894005111620

namespace A173209

/-- `∑[A000069(n+1)]` -/
def P7920983894005111620.Spec : Prop :=
  ∀ n, P7920983894005111620.a n = A173209 (n + 1)

end A173209

/-! ## A173209.P2786393782090905344

`∑[lt[A104895(n), 0]]`
-/

namespace A173209.P2786393782090905344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P2786393782090905344

namespace A173209

/-- `∑[lt[A104895(n), 0]]` -/
def P2786393782090905344.Spec : Prop :=
  ∀ n, (P2786393782090905344.a n : ℤ) = A173209 (n + 1)

end A173209

/-! ## A173209.P2661258278605610112

`∑[record[A268669(n+1)]]`
-/

namespace A173209.P2661258278605610112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P2661258278605610112

namespace A173209

/-- `∑[record[A268669(n+1)]]` -/
def P2661258278605610112.Spec : Prop :=
  ∀ n, P2661258278605610112.a n = A173209 (n + 1)

end A173209

/-! ## A173209.P15618559540246704446

`∑[comp[A001969(n+1)]]`
-/

namespace A173209.P15618559540246704446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P15618559540246704446

namespace A173209

/-- `∑[comp[A001969(n+1)]]` -/
def P15618559540246704446.Spec : Prop :=
  ∀ n, (P15618559540246704446.a n : ℤ) = A173209 (n + 1)

end A173209

/-! ## A173209.P4607526640795464654

`∑[comp[A003188(2*n)]]`
-/

namespace A173209.P4607526640795464654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P4607526640795464654

namespace A173209

/-- `∑[comp[A003188(2*n)]]` -/
def P4607526640795464654.Spec : Prop :=
  ∀ n, (P4607526640795464654.a n : ℤ) = A173209 (n + 1)

end A173209

/-! ## A173209.P5307931934457155045

`∑[A181155(n+1)-1]`
-/

namespace A173209.P5307931934457155045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P5307931934457155045

namespace A173209

/-- `∑[A181155(n+1)-1]` -/
def P5307931934457155045.Spec : Prop :=
  ∀ n, P5307931934457155045.a n = A173209 (n + 1)

end A173209

/-! ## A173209.P14254431623416295004

`∑[A128309(n+1)/2]`
-/

namespace A173209.P14254431623416295004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128309 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P14254431623416295004

namespace A173209

/-- `∑[A128309(n+1)/2]` -/
def P14254431623416295004.Spec : Prop :=
  ∀ n, P14254431623416295004.a n = (A173209 (n + 1) : ℚ)

end A173209

/-! ## A173209.P4097017171768794973

`∑[eq[1, A316828(2*n)]]`
-/

namespace A173209.P4097017171768794973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P4097017171768794973

namespace A173209

/-- `∑[eq[1, A316828(2*n)]]` -/
def P4097017171768794973.Spec : Prop :=
  ∀ n, (P4097017171768794973.a n : ℤ) = A173209 (n + 1)

end A173209

/-! ## A173209.P14490420611244975229

`∑[eq[1, A316828(n)]/2]`
-/

namespace A173209.P14490420611244975229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P14490420611244975229

namespace A173209

/-- `∑[eq[1, A316828(n)]/2]` -/
def P14490420611244975229.Spec : Prop :=
  ∀ n, P14490420611244975229.a n = (A173209 (n + 1) : ℚ)

end A173209

/-! ## A173209.P14821992940248521796

`(n+1)²-A115384(n)`
-/

namespace A173209.P14821992940248521796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A115384 n

end

end A173209.P14821992940248521796

namespace A173209

/-- `(n+1)²-A115384(n)` -/
def P14821992940248521796.Spec : Prop :=
  ∀ n, P14821992940248521796.a n = A173209 (n + 1)

end A173209

/-! ## A173209.P9387230284699026858

`∑[A010059(n)+2*n]`
-/

namespace A173209.P9387230284699026858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173209.P9387230284699026858

namespace A173209

/-- `∑[A010059(n)+2*n]` -/
def P9387230284699026858.Spec : Prop :=
  ∀ n, P9387230284699026858.a n = A173209 (n + 1)

end A173209

/-!
# A173211: Column 0 of triangle A173210.

The programs for A173211, there is no canonical definition to state claims against.
-/

/-! ## A173211.P10063052317983621780

`A173210(∑[n])`
-/

namespace A173211.P10063052317983621780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173210 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173211.P10063052317983621780

/-! ## A173211.P9360847676975732115

`Δ[A173210(C(n, 2))]+a(n-1)` with `a(0)=1`
-/

namespace A173211.P9360847676975732115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173210 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A173211.P9360847676975732115

/-! ## A173211.P11462963872439368619

`and(-3, A173210(A000217(n)))`
-/

namespace A173211.P11462963872439368619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A173210 (A000217 n).toNat)

end

end A173211.P11462963872439368619

/-! ## A173211.P7242405266559563063

`A173210(n-Δ[-C(n, 3)])*A181937(n)`
-/

namespace A173211.P7242405266559563063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173210 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat * A181937 n

end

end A173211.P7242405266559563063

/-! ## A173211.P8463323948322497637

`A173210(floor((2*n+1)²/8))*A181937(n)`
-/

namespace A173211.P8463323948322497637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173210 ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋.toNat * A181937 n

end

end A173211.P8463323948322497637

/-!
# A173212: Column 1 of triangle A173210.

The programs for A173212, there is no canonical definition to state claims against.
-/

/-! ## A173212.P2855496837801774602

`record[A173210(comp[∑[n]])]`
-/

namespace A173212.P2855496837801774602
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173210 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173212.P2855496837801774602

/-! ## A173212.P180090812423838417

`A173210(∑[n+1]+1)`
-/

namespace A173212.P180090812423838417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173210 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A173212.P180090812423838417

/-! ## A173212.P14821520303513406682

`record[A077042(n)*A173210(n)]`
-/

namespace A173212.P14821520303513406682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 n * A173210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173212.P14821520303513406682

/-! ## A173212.P12519240872312476959

`record[A097805(n)*A173210(n)]`
-/

namespace A173212.P12519240872312476959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A173210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173212.P12519240872312476959

/-!
# A173213: Column 2 of triangle A173210.

The programs for A173213, there is no canonical definition to state claims against.
-/

/-! ## A173213.P5720186374392019197

`A173210(∑[n+2]+3)`
-/

namespace A173213.P5720186374392019197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173210 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A173213.P5720186374392019197

/-! ## A173213.P15816132680274291193

`lcm(A000009(n), A173210(A152948(n+4)))`
-/

namespace A173213.P15816132680274291193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000009 n) (A173210 (A152948 (n + 4)).toNat)

end

end A173213.P15816132680274291193

/-! ## A173213.P8366485090490059770

`record[A173210(n+1)%A112007(A320637(n))]`
-/

namespace A173213.P8366485090490059770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173210 (n + 1)) (A112007 (A320637 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173213.P8366485090490059770

/-!
# A173214: Number of ways to place 4 nonattacking amazons (superqueens) on an n X n board.

The programs for A173214, there is no canonical definition to state claims against.
-/

/-! ## A173214.P459481846883934306

`A064877(A035959(n)+A001118(n))`
-/

namespace A173214.P459481846883934306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064877 (A035959 n + A001118 n).toNat

end

end A173214.P459481846883934306

/-! ## A173214.P3587237791185575631

`A064877(A353404(n)+A008805(n))`
-/

namespace A173214.P3587237791185575631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064877 (A353404 n + A008805 n).toNat

end

end A173214.P3587237791185575631

/-!
# A173215: Row sums of triangle A173210.

The programs for A173215, there is no canonical definition to state claims against.
-/

/-! ## A173215.P2671139125522938100

`∑[A267872(A202065(n))]`
-/

namespace A173215.P2671139125522938100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A202065 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173215.P2671139125522938100

/-!
# A173216: a(n) is the result of multiplying n by the number of letters of the name in Spanish.

The programs for A173216, there is no canonical definition to state claims against.
-/

/-! ## A173216.P2283380214649853379

`(n+1)*A011762(n+1)`
-/

namespace A173216.P2283380214649853379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011762 (n + 1)

end

end A173216.P2283380214649853379

/-! ## A173216.P605626693259000442

`(n+1)*Δ[A153453(n)]`
-/

namespace A173216.P605626693259000442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A173216.P605626693259000442

/-! ## A173216.P10048945969627815555

`gcd(n+1, ∑{digits}[n+1, #])*A374758(A210418(2*n+5))`
-/

namespace A173216.P10048945969627815555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℤ) * A374758 (A210418 (2 * n + 5)).toNat

end

end A173216.P10048945969627815555

/-! ## A173216.P14294156378014373242

`A005349(n+1)*A374758(A210418(2*n+5))`
-/

namespace A173216.P14294156378014373242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1) * A374758 (A210418 (2 * n + 5)).toNat

end

end A173216.P14294156378014373242

/-! ## A173216.P510871829425342331

`A225780(n+1)*A374758(A210418(2*n+5))`
-/

namespace A173216.P510871829425342331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225780 (n + 1) * A374758 (A210418 (2 * n + 5)).toNat

end

end A173216.P510871829425342331

/-!
# A173217: G.f.: A(x) = Sum_{n>=0} (1 + x)^(n^2) / 2^(n+1).

The programs for A173217, there is no canonical definition to state claims against.
-/

/-! ## A173217.P11321963261341041961

`A265936(n)/2`
-/

namespace A173217.P11321963261341041961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265936 n : ℚ) / 2

end

end A173217.P11321963261341041961

/-!
# A173218: G.f.: A(x) = Sum_{n>=0} (1 + x)^(n^2+n) / 2^(n+1).

The programs for A173218, there is no canonical definition to state claims against.
-/

/-! ## A173218.P11480221698371698349

`(2-A112316(n))*A121252(n)`
-/

namespace A173218.P11480221698371698349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A112316 n) * A121252 n

end

end A173218.P11480221698371698349

/-! ## A173218.P10702916457575866425

`A020639(A046109(n))*A121252(n)`
-/

namespace A173218.P10702916457575866425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046109 n).toNat * A121252 n

end

end A173218.P10702916457575866425

/-! ## A173218.P136497943384929002

`A014963(A062383(n))*A121252(n)`
-/

namespace A173218.P136497943384929002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A062383 n).toNat * A121252 n

end

end A173218.P136497943384929002

/-! ## A173218.P17135486568459230877

`A000032(A112316(n))*A121252(n)`
-/

namespace A173218.P17135486568459230877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A112316 n).toNat * A121252 n

end

end A173218.P17135486568459230877

/-!
# A173219: G.f.: A(x) = Sum_{n>=0} (1 + x)^(n(n+1)/2) / 2^(n+1).

The programs for A173219, there is no canonical definition to state claims against.
-/

/-! ## A173219.P2772578860438671688

`A265937(n)/2`
-/

namespace A173219.P2772578860438671688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265937 n : ℚ) / 2

end

end A173219.P2772578860438671688

/-! ## A173219.P12575865318432003659

`A331278(∑[n+2]+3)`
-/

namespace A173219.P12575865318432003659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331278 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A173219.P12575865318432003659

/-! ## A173219.P3014260223428422

`record[A331278(A133263(n))]`
-/

namespace A173219.P3014260223428422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331278 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173219.P3014260223428422

/-! ## A173219.P7292047656432667965

`record[A331278(A238531(n))]`
-/

namespace A173219.P7292047656432667965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331278 (A238531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173219.P7292047656432667965

/-! ## A173219.P18301411745913451257

`record[gcd(A293293(n), A331278(n))]`
-/

namespace A173219.P18301411745913451257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A293293 n) (A331278 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173219.P18301411745913451257

/-!
# A173221: Column 0 of triangle A173220.

The programs for A173221, there is no canonical definition to state claims against.
-/

/-! ## A173221.P1401633705643774072

`A173220(∑[n])`
-/

namespace A173221.P1401633705643774072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173220 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173221.P1401633705643774072

/-! ## A173221.P260186884354917726

`record[A173220(C(val(n+1, 2)+1, 2))]`
-/

namespace A173221.P260186884354917726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173220 (Nat.choose (SequenceMachineLib.valuation (n + 1) 2 + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173221.P260186884354917726

/-! ## A173221.P5503019914133754677

`lcm(n, A173220(floor((2*n+1)²/8)))`
-/

namespace A173221.P5503019914133754677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A173220 ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋.toNat)

end

end A173221.P5503019914133754677

/-! ## A173221.P3619985734312689716

`record[A173220(A001068(n))]`
-/

namespace A173221.P3619985734312689716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173220 (A001068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173221.P3619985734312689716

/-! ## A173221.P13290170339984814196

`record[A173220(A187328(n))]`
-/

namespace A173221.P13290170339984814196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173220 (A187328 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173221.P13290170339984814196

/-!
# A173222: Column 1 of triangle A173220.

The programs for A173222, there is no canonical definition to state claims against.
-/

/-! ## A173222.P2037197816226686640

`record[A173220(comp[∑[n]])]`
-/

namespace A173222.P2037197816226686640
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173220 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173222.P2037197816226686640

/-! ## A173222.P15892588019171655915

`A173220(∑[n+1]+1)`
-/

namespace A173222.P15892588019171655915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173220 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A173222.P15892588019171655915

/-! ## A173222.P4349792661941359398

`record[A002262(n)*A173220(n)]`
-/

namespace A173222.P4349792661941359398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A173220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173222.P4349792661941359398

/-! ## A173222.P2587367682198959590

`record[A097805(n)*A173220(n)]`
-/

namespace A173222.P2587367682198959590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A173220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173222.P2587367682198959590

/-!
# A173224: Row sums of triangle A173220.

The programs for A173224, there is no canonical definition to state claims against.
-/

/-! ## A173224.P2460051012667390216

`A214772((n+1)^3*n!)+n`
-/

namespace A173224.P2460051012667390216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 ((n + 1) ^ 3 * Nat.factorial n) + (n : ℤ)

end

end A173224.P2460051012667390216

/-!
# A173226: Partial sums of A000364.

The programs for A173226, there is no canonical definition to state claims against.
-/

/-! ## A173226.P760011169534414687

`∑[A000364(n)]`
-/

namespace A173226.P760011169534414687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173226.P760011169534414687

/-! ## A173226.P6134294861723516190

`∑[abs(A028296(n))]`
-/

namespace A173226.P6134294861723516190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028296 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173226.P6134294861723516190

/-! ## A173226.P5730701253688451091

`∑[A125053(n²)]`
-/

namespace A173226.P5730701253688451091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173226.P5730701253688451091

/-! ## A173226.P10086215591568237307

`∑[A060074(∑[n])]`
-/

namespace A173226.P10086215591568237307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173226.P10086215591568237307

/-! ## A173226.P14133687050295171770

`∑[A086646(∑[n])]`
-/

namespace A173226.P14133687050295171770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086646 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173226.P14133687050295171770

/-!
# A173227: Partial sums of A000262.

The programs for A173227, there is no canonical definition to state claims against.
-/

/-! ## A173227.P17701291753932354826

`∑[(2*n-1)*a(n-1)-(n-1)*(n-2)*a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A173227.P17701291753932354826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((2 * n : ℤ) - 1) * f1 (n - 1) - ((n : ℤ) - 1) * (((n : ℤ) - 2) * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173227.P17701291753932354826

/-! ## A173227.P14593195227989886585

`∑[A000262(n)]`
-/

namespace A173227.P14593195227989886585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173227.P14593195227989886585

/-! ## A173227.P3351750100114397100

`∑[abs(A293125(n))]`
-/

namespace A173227.P3351750100114397100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293125 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173227.P3351750100114397100

/-! ## A173227.P11334866392175244494

`∑[A059110(∑[n])]`
-/

namespace A173227.P11334866392175244494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173227.P11334866392175244494

/-! ## A173227.P8401382014066543541

`∑[A129652(∑[n])]`
-/

namespace A173227.P8401382014066543541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173227.P8401382014066543541

/-! ## A173227.P1049463431056307275

`∑[A206703(∑[n])]`
-/

namespace A173227.P1049463431056307275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206703 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173227.P1049463431056307275

/-! ## A173227.P14224508218339274694

`∑[A216294(∑[n])]`
-/

namespace A173227.P14224508218339274694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216294 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173227.P14224508218339274694

/-! ## A173227.P17412885790761122693

`∑[A261764(∑[n]+n)]`
-/

namespace A173227.P17412885790761122693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261764 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173227.P17412885790761122693

/-! ## A173227.P10824452632892152440

`∑[A293053(∑[n]+n)]`
-/

namespace A173227.P10824452632892152440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173227.P10824452632892152440

/-! ## A173227.P123522877499990358

`∑[A293985(∑[n]+n)]`
-/

namespace A173227.P123522877499990358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173227.P123522877499990358

/-!
# A173228: The number of trailing zeros in (10^n)!

The programs for A173228, there is no canonical definition to state claims against.
-/

/-! ## A173228.P3973760799453116700

`floor(sqrt(A099333(2*(n+1))))-1`
-/

namespace A173228.P3973760799453116700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A099333 (2 * (n + 1))) - 1

end

end A173228.P3973760799453116700

/-! ## A173228.P10938547188079986651

`floor(((A002283(n+1)+3)/2-A000120(A134294(n+1)))/2)`
-/

namespace A173228.P10938547188079986651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A002283 (n + 1) + 3 : ℚ) / 2 - (A000120 (A134294 (n + 1)).toNat : ℚ)) / 2⌋

end

end A173228.P10938547188079986651

/-!
# A173229: a(n) is the n-th number m such that 6m-1 is composite minus the n-th number k such that 6k+1 is composite.

The programs for A173229, the canonical program `A173229.P8938795864355033648` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173229 has offset 1).

The definition of A173229 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173229.P8938795864355033648

`A046953(n+1)-A046954(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A173229

/-- `A046953(n+1)-A046954(n+2)` -/
def P8938795864355033648.Spec : Prop :=
  ∀ n, P8938795864355033648.a n = A173229 (n + 1)

theorem P8938795864355033648.correct : P8938795864355033648.Spec := by
  intro n
  simp only [A173229, Nat.add_sub_cancel]

end A173229

/-! ## A173229.P9895795075558096622

`A059324(n+1)-A153219(n+1)`
-/

namespace A173229.P9895795075558096622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1) - A153219 (n + 1)

end

end A173229.P9895795075558096622

namespace A173229

/-- `A059324(n+1)-A153219(n+1)` -/
def P9895795075558096622.Spec : Prop :=
  ∀ n, P9895795075558096622.a n = A173229 (n + 1)

end A173229

/-! ## A173229.P5450890422097566558

`A059324(n+1)-comp[A153218(n+1)]`
-/

namespace A173229.P5450890422097566558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A173229.P5450890422097566558

namespace A173229

/-- `A059324(n+1)-comp[A153218(n+1)]` -/
def P5450890422097566558.Spec : Prop :=
  ∀ n, P5450890422097566558.a n = A173229 (n + 1)

end A173229

/-! ## A173229.P17587797221471361945

`A046953(n+1)-(A153219(n+1)+1)`
-/

namespace A173229.P17587797221471361945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) - (A153219 (n + 1) + 1)

end

end A173229.P17587797221471361945

namespace A173229

/-- `A046953(n+1)-(A153219(n+1)+1)` -/
def P17587797221471361945.Spec : Prop :=
  ∀ n, P17587797221471361945.a n = A173229 (n + 1)

end A173229

/-! ## A173229.P9385121963802144948

`A153245(n+1)-(A153219(n+1)+2)`
-/

namespace A173229.P9385121963802144948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1) - (A153219 (n + 1) + 2)

end

end A173229.P9385121963802144948

namespace A173229

/-- `A153245(n+1)-(A153219(n+1)+2)` -/
def P9385121963802144948.Spec : Prop :=
  ∀ n, P9385121963802144948.a n = A173229 (n + 1)

end A173229

/-! ## A173229.P711183425889869273

`2*A046953(n+1)-A173231(n+1)`
-/

namespace A173229.P711183425889869273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046953 (n + 1) - A173231 (n + 1)

end

end A173229.P711183425889869273

namespace A173229

/-- `2*A046953(n+1)-A173231(n+1)` -/
def P711183425889869273.Spec : Prop :=
  ∀ n, P711183425889869273.a n = A173229 (n + 1)

end A173229

/-! ## A173229.P18045843179274683189

`A153245(n+1)-(comp[A153218(n+1)]+2)`
-/

namespace A173229.P18045843179274683189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 : ℤ)

end

end A173229.P18045843179274683189

namespace A173229

/-- `A153245(n+1)-(comp[A153218(n+1)]+2)` -/
def P18045843179274683189.Spec : Prop :=
  ∀ n, P18045843179274683189.a n = A173229 (n + 1)

end A173229

/-! ## A173229.P14808807612050505060

`A173231(n+1)%A046954(n+2)`
-/

namespace A173229.P14808807612050505060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173231 (n + 1)) (A046954 (n + 2))

end

end A173229.P14808807612050505060

namespace A173229

/-- `A173231(n+1)%A046954(n+2)` -/
def P14808807612050505060.Spec : Prop :=
  ∀ n, P14808807612050505060.a n = A173229 (n + 1)

end A173229

/-! ## A173229.P13451460922099936876

`A059324(n+1)+1-A046954(n+2)`
-/

namespace A173229.P13451460922099936876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1) + (1 - A046954 (n + 2))

end

end A173229.P13451460922099936876

namespace A173229

/-- `A059324(n+1)+1-A046954(n+2)` -/
def P13451460922099936876.Spec : Prop :=
  ∀ n, P13451460922099936876.a n = A173229 (n + 1)

end A173229

/-! ## A173229.P8656843707480358257

`A153245(n+1)-(A046954(n+2)+1)`
-/

namespace A173229.P8656843707480358257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1) - (A046954 (n + 2) + 1)

end

end A173229.P8656843707480358257

namespace A173229

/-- `A153245(n+1)-(A046954(n+2)+1)` -/
def P8656843707480358257.Spec : Prop :=
  ∀ n, P8656843707480358257.a n = A173229 (n + 1)

end A173229

/-! ## A173229.P7924798873084865798

`A046953(A000027(n+1))%A046954(n+2)`
-/

namespace A173229.P7924798873084865798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046953 (A000027 (n + 1)).toNat) (A046954 (n + 2))

end

end A173229.P7924798873084865798

namespace A173229

/-- `A046953(A000027(n+1))%A046954(n+2)` -/
def P7924798873084865798.Spec : Prop :=
  ∀ n, P7924798873084865798.a n = A173229 (n + 1)

end A173229

/-!
# A173230: Primes p of the form 6k+1 such that 6p+1 is also prime.

The programs for A173230, there is no canonical definition to state claims against.
-/

/-! ## A173230.P10458878127340051452

`p?[A260518(3*n)]`
-/

namespace A173230.P10458878127340051452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260518 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173230.P10458878127340051452

/-! ## A173230.P8925402738620097302

`6*A263309(n+1)+1`
-/

namespace A173230.P8925402738620097302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A263309 (n + 1) + 1

end

end A173230.P8925402738620097302

/-! ## A173230.P1302483632617274061

`p?[floor(A061241(n+1)/6)]`
-/

namespace A173230.P1302483632617274061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061241 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173230.P1302483632617274061

/-! ## A173230.P3103356185321106739

`p?[floor(A142102(n+1)/6)]`
-/

namespace A173230.P3103356185321106739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142102 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173230.P3103356185321106739

/-! ## A173230.P12248893607924815522

`p?[round(A142102(n+2)/6)]`
-/

namespace A173230.P12248893607924815522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A142102 (n + 2) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173230.P12248893607924815522

/-! ## A173230.P8864962512298552736

`A016921(A263309(n+1))`
-/

namespace A173230.P8864962512298552736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A263309 (n + 1)).toNat

end

end A173230.P8864962512298552736

/-! ## A173230.P1875477778102959299

`p?[A001651(A024910(n+1))]`
-/

namespace A173230.P1875477778102959299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A024910 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173230.P1875477778102959299

/-! ## A173230.P10899790871258089619

`or(1, p?[A260518(A008585(n))])`
-/

namespace A173230.P10899790871258089619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260518 (A008585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A173230.P10899790871258089619

/-! ## A173230.P1421837588808422761

`filter[A007693(n+1), A070563(#)]`
-/

namespace A173230.P1421837588808422761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A173230.P1421837588808422761

/-! ## A173230.P11130645956202419561

`filter[A002476(n+1), A167021(#)]`
-/

namespace A173230.P11130645956202419561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167021 (f1 j).toNat = 1) n)

end

end A173230.P11130645956202419561

/-!
# A173231: a(n) is the n-th number m such that 6*m-1 is composite plus the n-th number k such that 6*k+1 is composite.

The programs for A173231, the canonical program `A173231.P14587032377011786533` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173231 has offset 1).

The definition of A173231 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173231.P14587032377011786533

`A046953(n+1)+A046954(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A173231

/-- `A046953(n+1)+A046954(n+2)` -/
def P14587032377011786533.Spec : Prop :=
  ∀ n, P14587032377011786533.a n = A173231 (n + 1)

theorem P14587032377011786533.correct : P14587032377011786533.Spec := by
  intro n
  simp only [A173231, Nat.add_sub_cancel]

end A173231

/-! ## A173231.P10773346616933564796

`A153245(n+1)+A153219(n+1)`
-/

namespace A173231.P10773346616933564796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1) + A153219 (n + 1)

end

end A173231.P10773346616933564796

namespace A173231

/-- `A153245(n+1)+A153219(n+1)` -/
def P10773346616933564796.Spec : Prop :=
  ∀ n, P10773346616933564796.a n = A173231 (n + 1)

end A173231

/-! ## A173231.P13368030594327094227

`A153245(n+1)+comp[A153218(n+1)]`
-/

namespace A173231.P13368030594327094227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A173231.P13368030594327094227

namespace A173231

/-- `A153245(n+1)+comp[A153218(n+1)]` -/
def P13368030594327094227.Spec : Prop :=
  ∀ n, P13368030594327094227.a n = A173231 (n + 1)

end A173231

/-! ## A173231.P5642771730159076262

`A046953(n+1)+A153219(n+1)+1`
-/

namespace A173231.P5642771730159076262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) + (A153219 (n + 1) + 1)

end

end A173231.P5642771730159076262

namespace A173231

/-- `A046953(n+1)+A153219(n+1)+1` -/
def P5642771730159076262.Spec : Prop :=
  ∀ n, P5642771730159076262.a n = A173231 (n + 1)

end A173231

/-! ## A173231.P10042104528170102463

`A059324(n+1)+A153219(n+1)+2`
-/

namespace A173231.P10042104528170102463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1) + (A153219 (n + 1) + 2)

end

end A173231.P10042104528170102463

namespace A173231

/-- `A059324(n+1)+A153219(n+1)+2` -/
def P10042104528170102463.Spec : Prop :=
  ∀ n, P10042104528170102463.a n = A173231 (n + 1)

end A173231

/-! ## A173231.P188394731412607006

`2*A046953(n+1)-A173229(n+1)`
-/

namespace A173231.P188394731412607006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046953 (n + 1) - A173229 (n + 1)

end

end A173231.P188394731412607006

namespace A173231

/-- `2*A046953(n+1)-A173229(n+1)` -/
def P188394731412607006.Spec : Prop :=
  ∀ n, P188394731412607006.a n = A173231 (n + 1)

end A173231

/-! ## A173231.P17229726389482880405

`A059324(n+1)+comp[A153218(n+1)]+2`
-/

namespace A173231.P17229726389482880405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 : ℤ)

end

end A173231.P17229726389482880405

namespace A173231

/-- `A059324(n+1)+comp[A153218(n+1)]+2` -/
def P17229726389482880405.Spec : Prop :=
  ∀ n, P17229726389482880405.a n = A173231 (n + 1)

end A173231

/-! ## A173231.P18381139985507468808

`A046954(n+2)+A059324(n+1)+1`
-/

namespace A173231.P18381139985507468808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046954 (n + 2) + (A059324 (n + 1) + 1)

end

end A173231.P18381139985507468808

namespace A173231

/-- `A046954(n+2)+A059324(n+1)+1` -/
def P18381139985507468808.Spec : Prop :=
  ∀ n, P18381139985507468808.a n = A173231 (n + 1)

end A173231

/-! ## A173231.P13261865489203428900

`A046954(n+2)-(1-A153245(n+1))`
-/

namespace A173231.P13261865489203428900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046954 (n + 2) - (1 - A153245 (n + 1))

end

end A173231.P13261865489203428900

namespace A173231

/-- `A046954(n+2)-(1-A153245(n+1))` -/
def P13261865489203428900.Spec : Prop :=
  ∀ n, P13261865489203428900.a n = A173231 (n + 1)

end A173231

/-! ## A173231.P729843697686781752

`A173229(n+1)+A046954(n+2)+A046954(n+2)`
-/

namespace A173231.P729843697686781752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173229 (n + 1) + (A046954 (n + 2) + A046954 (n + 2))

end

end A173231.P729843697686781752

namespace A173231

/-- `A173229(n+1)+A046954(n+2)+A046954(n+2)` -/
def P729843697686781752.Spec : Prop :=
  ∀ n, P729843697686781752.a n = A173231 (n + 1)

end A173231

/-!
# A173232: Numbers k such that k and k+2 are both members of A002822.

The programs for A173232, there is no canonical definition to state claims against.
-/

/-! ## A173232.P695795185623886711

`ceil(A079292(n+1)/6)`
-/

namespace A173232.P695795185623886711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079292 (n + 1) : ℚ) / 6⌉

end

end A173232.P695795185623886711

/-! ## A173232.P15350945710591348356

`ceil(A140564(4*n+1)/6)`
-/

namespace A173232.P15350945710591348356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140564 (4 * n + 1) : ℚ) / 6⌉

end

end A173232.P15350945710591348356

/-! ## A173232.P10871202032648907346

`floor(A140564(4*n+2)/6)`
-/

namespace A173232.P10871202032648907346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140564 (4 * n + 2) : ℚ) / 6⌋

end

end A173232.P10871202032648907346

/-! ## A173232.P15006167825444131595

`A353461(A079292(n+1))`
-/

namespace A173232.P15006167825444131595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353461 (A079292 (n + 1)).toNat

end

end A173232.P15006167825444131595

/-! ## A173232.P3465713769606288058

`A029578(round(A079292(n+1)/3))`
-/

namespace A173232.P3465713769606288058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (SequenceMachineLib.roundAway ((A079292 (n + 1) : ℚ) / 3)).toNat

end

end A173232.P3465713769606288058

/-! ## A173232.P18307490662618045738

`A000203(A140564(Δ[C(2*n, 2)]))/6`
-/

namespace A173232.P18307490662618045738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A140564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat : ℚ) / 6

end

end A173232.P18307490662618045738

/-! ## A173232.P10336912727303178081

`A000203(A140564(record[xor(3, n)])-12)/6`
-/

namespace A173232.P10336912727303178081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A140564 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - 12).toNat : ℚ) / 6

end

end A173232.P10336912727303178081

/-! ## A173232.P18070788268139322219

`(A079292(n+1)+A007318(∑[n]))/6`
-/

namespace A173232.P18070788268139322219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079292 (n + 1) + A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 6

end

end A173232.P18070788268139322219

/-! ## A173232.P1273969127516182305

`A000203(A140564(3*n+n+1))/6`
-/

namespace A173232.P1273969127516182305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A140564 (3 * n + (n + 1))).toNat : ℚ) / 6

end

end A173232.P1273969127516182305

/-! ## A173232.P16803509288223875440

`∩[A002822(n+1), A153196(n+1)-1]`
-/

namespace A173232.P16803509288223875440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173232.P16803509288223875440

/-!
# A173233: Numbers k such that k and k+3 are in A002822.

The programs for A173233, there is no canonical definition to state claims against.
-/

/-! ## A173233.P5765872974223105125

`ceil(A079304(n+1)/6)`
-/

namespace A173233.P5765872974223105125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079304 (n + 1) : ℚ) / 6⌉

end

end A173233.P5765872974223105125

/-! ## A173233.P9954281761408849995

`ceil(A140567(4*n+1)/6)`
-/

namespace A173233.P9954281761408849995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140567 (4 * n + 1) : ℚ) / 6⌉

end

end A173233.P9954281761408849995

/-! ## A173233.P15167874579835219970

`floor(A140567(4*n+2)/6)`
-/

namespace A173233.P15167874579835219970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140567 (4 * n + 2) : ℚ) / 6⌋

end

end A173233.P15167874579835219970

/-! ## A173233.P3982807492329005223

`A353461(A079304(n+1))`
-/

namespace A173233.P3982807492329005223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353461 (A079304 (n + 1)).toNat

end

end A173233.P3982807492329005223

/-! ## A173233.P8161192825794202385

`A000203(A140567(3*n+n+1))/6`
-/

namespace A173233.P8161192825794202385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A140567 (3 * n + (n + 1))).toNat : ℚ) / 6

end

end A173233.P8161192825794202385

/-!
# A173234: Expansion of x*(1+3*x^2-2*x^3+2*x^4-x^5)/((1+x)*(x-1)^2*(x^2+1)^2).

The programs for A173234, the canonical program `A173234.P7023141224796260464` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173234 has offset 0).

The definition of A173234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173234.P7303776879465693460

`lcm(4, Δ[lcm(2, n+1)])/4`
-/

namespace A173234.P7303776879465693460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 4

end

end A173234.P7303776879465693460

namespace A173234

/-- `lcm(4, Δ[lcm(2, n+1)])/4` -/
def P7303776879465693460.Spec : Prop :=
  ∀ n, P7303776879465693460.a n = (A173234 n : ℚ)

end A173234

/-! ## A173234.P7023141224796260464

`gcd(∑[n]+n, ∑[∑[n]%(n+1)])`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173234

/-- `gcd(∑[n]+n, ∑[∑[n]%(n+1)])` -/
def P7023141224796260464.Spec : Prop :=
  ∀ n, (P7023141224796260464.a n : ℤ) = A173234 n

theorem P7023141224796260464.correct : P7023141224796260464.Spec := by
  intro n
  simp only [A173234]

end A173234

/-! ## A173234.P13031435070202686370

`gcd(∑[1-a(n-1)], ∑[∑[∑[n]]])` with `a(0)=0, a(1)=2`
-/

namespace A173234.P13031435070202686370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  1 - f1 (n - 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A173234.P13031435070202686370

namespace A173234

/-- `gcd(∑[1-a(n-1)], ∑[∑[∑[n]]])` -/
def P13031435070202686370.Spec : Prop :=
  ∀ n, (P13031435070202686370.a n : ℤ) = A173234 n

end A173234

/-! ## A173234.P13657250453915693702

`lcm(2, A030451(n))/2`
-/

namespace A173234.P13657250453915693702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A030451 n) : ℚ) / 2

end

end A173234.P13657250453915693702

namespace A173234

/-- `lcm(2, A030451(n))/2` -/
def P13657250453915693702.Spec : Prop :=
  ∀ n, P13657250453915693702.a n = (A173234 n : ℚ)

end A173234

/-! ## A173234.P16729553733609126712

`A026741(∑[and(1, n)]+and(1, n))`
-/

namespace A173234.P16729553733609126712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 n)

end

end A173234.P16729553733609126712

namespace A173234

/-- `A026741(∑[and(1, n)]+and(1, n))` -/
def P16729553733609126712.Spec : Prop :=
  ∀ n, P16729553733609126712.a n = A173234 n

end A173234

/-! ## A173234.P8094372971889037522

`A026741(∑[1-a(n-1)])` with `a(0)=0, a(1)=2`
-/

namespace A173234.P8094372971889037522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A173234.P8094372971889037522

namespace A173234

/-- `A026741(∑[1-a(n-1)])` -/
def P8094372971889037522.Spec : Prop :=
  ∀ n, P8094372971889037522.a n = A173234 n

end A173234

/-! ## A173234.P12474898312454289712

`gcd(∑[∑[n]%(n+1)], A000096(n))`
-/

namespace A173234.P12474898312454289712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000096 n)

end

end A173234.P12474898312454289712

namespace A173234

/-- `gcd(∑[∑[n]%(n+1)], A000096(n))` -/
def P12474898312454289712.Spec : Prop :=
  ∀ n, (P12474898312454289712.a n : ℤ) = A173234 n

end A173234

/-! ## A173234.P3482055718383935283

`gcd(C((n+1)²+n, 2), A000217(ceil(n/2)))`
-/

namespace A173234.P3482055718383935283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose ((n + 1) ^ 2 + n) 2 : ℤ) (A000217 ⌈(n : ℚ) / 2⌉.toNat)

end

end A173234.P3482055718383935283

namespace A173234

/-- `gcd(C((n+1)²+n, 2), A000217(ceil(n/2)))` -/
def P3482055718383935283.Spec : Prop :=
  ∀ n, (P3482055718383935283.a n : ℤ) = A173234 n

end A173234

/-! ## A173234.P16829646969505238223

`A026741(A030451(n))`
-/

namespace A173234.P16829646969505238223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A030451 n).toNat

end

end A173234.P16829646969505238223

namespace A173234

/-- `A026741(A030451(n))` -/
def P16829646969505238223.Spec : Prop :=
  ∀ n, P16829646969505238223.a n = A173234 n

end A173234

/-! ## A173234.P12909046945611574402

`A026741(A052938(n)-1)`
-/

namespace A173234.P12909046945611574402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A052938 n - 1).toNat

end

end A173234.P12909046945611574402

namespace A173234

/-- `A026741(A052938(n)-1)` -/
def P12909046945611574402.Spec : Prop :=
  ∀ n, P12909046945611574402.a n = A173234 n

end A173234

/-! ## A173234.P556990015377940158

`gcd(A000096(n), A144065(n))`
-/

namespace A173234.P556990015377940158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000096 n) (A144065 n)

end

end A173234.P556990015377940158

namespace A173234

/-- `gcd(A000096(n), A144065(n))` -/
def P556990015377940158.Spec : Prop :=
  ∀ n, (P556990015377940158.a n : ℤ) = A173234 n

end A173234

/-! ## A173234.P14457546745236806912

`gcd(A030451(n), A296636(n))`
-/

namespace A173234.P14457546745236806912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030451 n) (A296636 n)

end

end A173234.P14457546745236806912

namespace A173234

/-- `gcd(A030451(n), A296636(n))` -/
def P14457546745236806912.Spec : Prop :=
  ∀ n, (P14457546745236806912.a n : ℤ) = A173234 n

end A173234

/-! ## A173234.P10964578556211253565

`A029579(A052938(n)+1)-2`
-/

namespace A173234.P10964578556211253565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A052938 n + 1).toNat - 2

end

end A173234.P10964578556211253565

namespace A173234

/-- `A029579(A052938(n)+1)-2` -/
def P10964578556211253565.Spec : Prop :=
  ∀ n, P10964578556211253565.a n = A173234 n

end A173234

/-! ## A173234.P12893766358391715280

`A026741(A060762(n+1)-2)`
-/

namespace A173234.P12893766358391715280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A060762 (n + 1) - 2).toNat

end

end A173234.P12893766358391715280

namespace A173234

/-- `A026741(A060762(n+1)-2)` -/
def P12893766358391715280.Spec : Prop :=
  ∀ n, P12893766358391715280.a n = A173234 n

end A173234

/-! ## A173234.P17719750886766657555

`A026741(1-A028242(n)+n)`
-/

namespace A173234.P17719750886766657555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (1 - A028242 n + (n : ℤ)).toNat

end

end A173234.P17719750886766657555

namespace A173234

/-- `A026741(1-A028242(n)+n)` -/
def P17719750886766657555.Spec : Prop :=
  ∀ n, P17719750886766657555.a n = A173234 n

end A173234

/-! ## A173234.P4437766906735801999

`A026741(1-(A028242(n)-n))`
-/

namespace A173234.P4437766906735801999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (1 - (A028242 n - (n : ℤ))).toNat

end

end A173234.P4437766906735801999

namespace A173234

/-- `A026741(1-(A028242(n)-n))` -/
def P4437766906735801999.Spec : Prop :=
  ∀ n, P4437766906735801999.a n = A173234 n

end A173234

/-! ## A173234.P4211131398444917798

`A047615(n+1)%A310704(n)`
-/

namespace A173234.P4211131398444917798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047615 (n + 1)) (A310704 n)

end

end A173234.P4211131398444917798

namespace A173234

/-- `A047615(n+1)%A310704(n)` -/
def P4211131398444917798.Spec : Prop :=
  ∀ n, P4211131398444917798.a n = A173234 n

end A173234

/-! ## A173234.P13008709132295858070

`A160050(n+1)%A265283(n)`
-/

namespace A173234.P13008709132295858070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160050 (n + 1)) (A265283 n)

end

end A173234.P13008709132295858070

namespace A173234

/-- `A160050(n+1)%A265283(n)` -/
def P13008709132295858070.Spec : Prop :=
  ∀ n, P13008709132295858070.a n = A173234 n

end A173234

/-! ## A173234.P4412089161809115645

`gcd(A131723(n), A160050(n+1))`
-/

namespace A173234.P4412089161809115645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131723 n) (A160050 (n + 1))

end

end A173234.P4412089161809115645

namespace A173234

/-- `gcd(A131723(n), A160050(n+1))` -/
def P4412089161809115645.Spec : Prop :=
  ∀ n, (P4412089161809115645.a n : ℤ) = A173234 n

end A173234

/-! ## A173234.P8790412077186533433

`A026741(A000035(n)+∑[n%2])`
-/

namespace A173234.P8790412077186533433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000035 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A173234.P8790412077186533433

namespace A173234

/-- `A026741(A000035(n)+∑[n%2])` -/
def P8790412077186533433.Spec : Prop :=
  ∀ n, P8790412077186533433.a n = A173234 n

end A173234

/-!
# A173235: a(n) = n^(n-1) + n - 1.

The programs for A173235, the canonical program `A173235.P8436046746419089883` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173235 has offset 1).

The definition of A173235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^n+n` (program `A173235.P8436046746419089883`, by `A173235.P8436046746419089883.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173235.P8436046746419089883

`(n+1)^n+n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173235

/-- `(n+1)^n+n` -/
def P8436046746419089883.Spec : Prop :=
  ∀ n, (P8436046746419089883.a n : ℤ) = A173235 (n + 1)

theorem P8436046746419089883.correct : P8436046746419089883.Spec := by
  intro n
  simp only [A173235, Nat.add_sub_cancel]

end A173235

/-! ## A173235.P16953579398242509550

`abs(2-A066141(n+1))`
-/

namespace A173235.P16953579398242509550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A066141 (n + 1)|

end

end A173235.P16953579398242509550

namespace A173235

/-- `abs(2-A066141(n+1))` -/
def P16953579398242509550.Spec : Prop :=
  ∀ n, P16953579398242509550.a n = A173235 (n + 1)

end A173235

/-! ## A173235.P12961632933291453255

`or(1, A000169(n+1)+n)`
-/

namespace A173235.P12961632933291453255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000169 (n + 1) + (n : ℤ))

end

end A173235.P12961632933291453255

namespace A173235

/-- `or(1, A000169(n+1)+n)` -/
def P12961632933291453255.Spec : Prop :=
  ∀ n, P12961632933291453255.a n = A173235 (n + 1)

end A173235

/-! ## A173235.P7568305093595314888

`record[A095890(n+1)+A003056(n)]`
-/

namespace A173235.P7568305093595314888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095890 (n + 1) + A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173235.P7568305093595314888

namespace A173235

/-- `record[A095890(n+1)+A003056(n)]` -/
def P7568305093595314888.Spec : Prop :=
  ∀ n, P7568305093595314888.a n = A173235 (n + 1)

end A173235

/-! ## A173235.P2271933827811054148

`record[A095888(n+1)+A025581(n)]`
-/

namespace A173235.P2271933827811054148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (n + 1) + A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173235.P2271933827811054148

namespace A173235

/-- `record[A095888(n+1)+A025581(n)]` -/
def P2271933827811054148.Spec : Prop :=
  ∀ n, P2271933827811054148.a n = A173235 (n + 1)

end A173235

/-! ## A173235.P17688375359666367996

`record[A095888(n+1)+A049581(n)]`
-/

namespace A173235.P17688375359666367996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (n + 1) + A049581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173235.P17688375359666367996

namespace A173235

/-- `record[A095888(n+1)+A049581(n)]` -/
def P17688375359666367996.Spec : Prop :=
  ∀ n, P17688375359666367996.a n = A173235 (n + 1)

end A173235

/-! ## A173235.P18338369454718439832

`record[A095888(n+1)+A051933(n)]`
-/

namespace A173235.P18338369454718439832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (n + 1) + A051933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173235.P18338369454718439832

namespace A173235

/-- `record[A095888(n+1)+A051933(n)]` -/
def P18338369454718439832.Spec : Prop :=
  ∀ n, P18338369454718439832.a n = A173235 (n + 1)

end A173235

/-! ## A173235.P18026453842080306460

`record[A095890(n+1)+A087061(n)]`
-/

namespace A173235.P18026453842080306460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095890 (n + 1) + A087061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173235.P18026453842080306460

namespace A173235

/-- `record[A095890(n+1)+A087061(n)]` -/
def P18026453842080306460.Spec : Prop :=
  ∀ n, P18026453842080306460.a n = A173235 (n + 1)

end A173235

/-!
# A173236: Primes of the form 2^r * 13^s + 1.

The programs for A173236, there is no canonical definition to state claims against.
-/

/-! ## A173236.P3468558675999655323

`p?[A107326(n+1)+1]`
-/

namespace A173236.P3468558675999655323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173236.P3468558675999655323

/-! ## A173236.P18034168340178185469

`record[A020639(A107326(n+1)+1)]`
-/

namespace A173236.P18034168340178185469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A107326 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173236.P18034168340178185469

/-! ## A173236.P16411358858831654261

`∩[A006093(n+1), A107326(n+1)]+1`
-/

namespace A173236.P16411358858831654261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A173236.P16411358858831654261

/-! ## A173236.P10768483267262258657

`record[A108077(A107326(n+1))]`
-/

namespace A173236.P10768483267262258657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (A107326 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173236.P10768483267262258657

/-!
# A173237: Alternate k and 10k for each k.

The programs for A173237, the canonical program `A173237.P2946196447286492404` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173237 has offset 1).

The definition of A173237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173237.P2946196447286492404

`a(n-2)+a(n%2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173237

/-- `a(n-2)+a(n%2)` -/
def P2946196447286492404.Spec : Prop :=
  ∀ n, (P2946196447286492404.a n : ℤ) = A173237 (n + 1)

theorem P2946196447286492404.correct : P2946196447286492404.Spec := by
  intro n
  simp only [A173237, Nat.add_sub_cancel]

end A173237

/-! ## A173237.P3006880904828505810

`(floor(n/2)+1)*10^and(1, n)`
-/

namespace A173237.P3006880904828505810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ + 1) * (10 ^ Nat.land 1 n : ℤ)

end

end A173237.P3006880904828505810

namespace A173237

/-- `(floor(n/2)+1)*10^and(1, n)` -/
def P3006880904828505810.Spec : Prop :=
  ∀ n, P3006880904828505810.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P1263094531498782089

`10^and(1, n)*∑[∑[(-1)^n]]`
-/

namespace A173237.P1263094531498782089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ Nat.land 1 n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173237.P1263094531498782089

namespace A173237

/-- `10^and(1, n)*∑[∑[(-1)^n]]` -/
def P1263094531498782089.Spec : Prop :=
  ∀ n, P1263094531498782089.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P10421761352005944334

`Δ[or(1, n)²]+lcm(2, n)/2+1`
-/

namespace A173237.P10421761352005944334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) + ((Nat.lcm 2 n : ℚ) / 2 + 1)

end

end A173237.P10421761352005944334

namespace A173237

/-- `Δ[or(1, n)²]+lcm(2, n)/2+1` -/
def P10421761352005944334.Spec : Prop :=
  ∀ n, P10421761352005944334.a n = (A173237 (n + 1) : ℚ)

end A173237

/-! ## A173237.P13507264457832154655

`∑[11-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A173237.P13507264457832154655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A173237.P13507264457832154655

namespace A173237

/-- `∑[11-a(n-1)]-a(n-1)` -/
def P13507264457832154655.Spec : Prop :=
  ∀ n, P13507264457832154655.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P17368559176383934675

`(floor(n/2)+1)*gcd(10, (n+1)%2)`
-/

namespace A173237.P17368559176383934675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ + 1) * (Nat.gcd 10 ((n + 1) % 2) : ℤ)

end

end A173237.P17368559176383934675

namespace A173237

/-- `(floor(n/2)+1)*gcd(10, (n+1)%2)` -/
def P17368559176383934675.Spec : Prop :=
  ∀ n, P17368559176383934675.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P1363463022367714796

`∑[9*(n+1)]%(1-9*(n+1))`
-/

namespace A173237.P1363463022367714796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (1 - (9 * (n + 1) : ℤ))

end

end A173237.P1363463022367714796

namespace A173237

/-- `∑[9*(n+1)]%(1-9*(n+1))` -/
def P1363463022367714796.Spec : Prop :=
  ∀ n, P1363463022367714796.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P5501714504511951732

`a(n-2)+a(floor(n/a(n-1)))` with `a(0)=1, a(1)=10`
-/

namespace A173237.P5501714504511951732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 2) + a ⌊(n : ℚ) / (a (n - 1) : ℚ)⌋.toNat

end

end A173237.P5501714504511951732

namespace A173237

/-- `a(n-2)+a(floor(n/a(n-1)))` -/
def P5501714504511951732.Spec : Prop :=
  ∀ n, (P5501714504511951732.a n : ℤ) = A173237 (n + 1)

end A173237

/-! ## A173237.P731546352667694362

`A010691(n)+a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A173237.P731546352667694362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A010691 n + a (n - 2)

end

end A173237.P731546352667694362

namespace A173237

/-- `A010691(n)+a(n-2)` -/
def P731546352667694362.Spec : Prop :=
  ∀ n, P731546352667694362.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P1585837452126403817

`(gcd(n, ∑[n])+1)*A010686(n)`
-/

namespace A173237.P1585837452126403817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℤ) * A010686 n

end

end A173237.P1585837452126403817

namespace A173237

/-- `(gcd(n, ∑[n])+1)*A010686(n)` -/
def P1585837452126403817.Spec : Prop :=
  ∀ n, P1585837452126403817.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P14462425995798680367

`A112651(n)+11-a(n-1)` with `a(0)=1`
-/

namespace A173237.P14462425995798680367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112651 n + (11 - a (n - 1))

end

end A173237.P14462425995798680367

namespace A173237

/-- `A112651(n)+11-a(n-1)` -/
def P14462425995798680367.Spec : Prop :=
  ∀ n, P14462425995798680367.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P7918205750049662019

`floor((∑[A016873(n)]+n)/a(n-1))` with `a(0)=1`
-/

namespace A173237.P7918205750049662019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) : ℤ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A173237.P7918205750049662019

namespace A173237

/-- `floor((∑[A016873(n)]+n)/a(n-1))` -/
def P7918205750049662019.Spec : Prop :=
  ∀ n, P7918205750049662019.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P16631331052727362781

`A266303(n)+A181762(n)`
-/

namespace A173237.P16631331052727362781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n + A181762 n

end

end A173237.P16631331052727362781

namespace A173237

/-- `A266303(n)+A181762(n)` -/
def P16631331052727362781.Spec : Prop :=
  ∀ n, P16631331052727362781.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P6063900782275162862

`A008619(n)*A010691(n)`
-/

namespace A173237.P6063900782275162862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A010691 n

end

end A173237.P6063900782275162862

namespace A173237

/-- `A008619(n)*A010691(n)` -/
def P6063900782275162862.Spec : Prop :=
  ∀ n, P6063900782275162862.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P16199974082501215793

`A381055(n)+A066070(n+1)`
-/

namespace A173237.P16199974082501215793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381055 n + A066070 (n + 1)

end

end A173237.P16199974082501215793

namespace A173237

/-- `A381055(n)+A066070(n+1)` -/
def P16199974082501215793.Spec : Prop :=
  ∀ n, P16199974082501215793.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P10592417743371308330

`A195817(n+1)-A142150(n)`
-/

namespace A173237.P10592417743371308330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195817 (n + 1) - A142150 n

end

end A173237.P10592417743371308330

namespace A173237

/-- `A195817(n+1)-A142150(n)` -/
def P10592417743371308330.Spec : Prop :=
  ∀ n, P10592417743371308330.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P15892709848890018966

`A091998(n+1)-A317311(n)`
-/

namespace A173237.P15892709848890018966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1) - A317311 n

end

end A173237.P15892709848890018966

namespace A173237

/-- `A091998(n+1)-A317311(n)` -/
def P15892709848890018966.Spec : Prop :=
  ∀ n, P15892709848890018966.a n = A173237 (n + 1)

end A173237

/-! ## A173237.P14396891868453210205

`A008619(n)*A011557(Δ[A008619(n)])`
-/

namespace A173237.P14396891868453210205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A011557 (f1 (n + 1) - f1 n).toNat

end

end A173237.P14396891868453210205

namespace A173237

/-- `A008619(n)*A011557(Δ[A008619(n)])` -/
def P14396891868453210205.Spec : Prop :=
  ∀ n, P14396891868453210205.a n = A173237 (n + 1)

end A173237

/-!
# A173238: Triangle by columns, A000041 in every column shifted down twice for columns > 0.

The programs for A173238, there is no canonical definition to state claims against.
-/

/-! ## A173238.P15013482981100127664

`A000041(A082375(n))`
-/

namespace A173238.P15013482981100127664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A082375 n).toNat

end

end A173238.P15013482981100127664

/-! ## A173238.P6598853974699056143

`A119620(A152204(n))`
-/

namespace A173238.P6598853974699056143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A152204 n).toNat

end

end A173238.P6598853974699056143

/-! ## A173238.P16639423169546463932

`A119620(A084346(n+1))`
-/

namespace A173238.P16639423169546463932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A084346 (n + 1)).toNat

end

end A173238.P16639423169546463932

/-! ## A173238.P3652375430451690127

`A035363(A152204(n)-1)`
-/

namespace A173238.P3652375430451690127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A152204 n - 1).toNat

end

end A173238.P3652375430451690127

/-! ## A173238.P3543495240938444556

`A000041(A122196(n+1)-1)`
-/

namespace A173238.P3543495240938444556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A122196 (n + 1) - 1).toNat

end

end A173238.P3543495240938444556

/-! ## A173238.P14871198436543366869

`A027293(A056536(n+1))`
-/

namespace A173238.P14871198436543366869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (A056536 (n + 1)).toNat

end

end A173238.P14871198436543366869

/-! ## A173238.P1582277730097091626

`A000041(A114327(record[A116942(n)]))`
-/

namespace A173238.P1582277730097091626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A114327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A173238.P1582277730097091626

/-! ## A173238.P3011414794438136360

`A027293(comp[n²]+n+1)`
-/

namespace A173238.P3011414794438136360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A173238.P3011414794438136360

/-! ## A173238.P2300069717143034506

`A000041(A025581(n+1+A000194(n+1)+n))`
-/

namespace A173238.P2300069717143034506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025581 ((n + 1 : ℤ) + (A000194 (n + 1) + (n : ℤ))).toNat).toNat

end

end A173238.P2300069717143034506

/-! ## A173238.P254922273559158280

`A000041(ceil(log2(A119440(n))))`
-/

namespace A173238.P254922273559158280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌈Real.logb 2 (A119440 n : ℝ)⌉.toNat

end

end A173238.P254922273559158280

/-! ## A173238.P463784992721344445

`A000041(val(A062052(n+1), 2))`
-/

namespace A173238.P463784992721344445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (A062052 (n + 1)).toNat 2)

end

end A173238.P463784992721344445

/-!
# A173239: Triangle by columns, A000041 shifted down thrice, k>=0.

The programs for A173239, there is no canonical definition to state claims against.
-/

/-! ## A173239.P4337064794214919798

`A000041(A356624(n))`
-/

namespace A173239.P4337064794214919798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A356624 n).toNat

end

end A173239.P4337064794214919798

/-! ## A173239.P7556929642065383594

`A119620(2*A356624(n))`
-/

namespace A173239.P7556929642065383594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * A356624 n).toNat

end

end A173239.P7556929642065383594

/-! ## A173239.P4496066967309430487

`A000041(A023133(n+1)-1)`
-/

namespace A173239.P4496066967309430487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A023133 (n + 1) - 1).toNat

end

end A173239.P4496066967309430487

/-! ## A173239.P12434424171354824840

`A213598(A023133(n+1)-1)`
-/

namespace A173239.P12434424171354824840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (A023133 (n + 1) - 1).toNat

end

end A173239.P12434424171354824840

/-! ## A173239.P13103457432970727639

`A330642(A023133(n+1)-1)`
-/

namespace A173239.P13103457432970727639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330642 (A023133 (n + 1) - 1).toNat

end

end A173239.P13103457432970727639

/-! ## A173239.P16933748346597590471

`A194543(C(A023133(n+1), 2))`
-/

namespace A173239.P16933748346597590471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (Nat.choose (A023133 (n + 1)).toNat 2)

end

end A173239.P16933748346597590471

/-! ## A173239.P15312718410105035203

`∑{d}[A023133(n+1), A133732(#)]`
-/

namespace A173239.P15312718410105035203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A133732 d

end

end A173239.P15312718410105035203

/-! ## A173239.P11447099779768692457

`A000065(A023133(n+1)-1)+1`
-/

namespace A173239.P11447099779768692457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A023133 (n + 1) - 1).toNat + 1

end

end A173239.P11447099779768692457

/-! ## A173239.P5093700104928535017

`A000041(A002837(A023133(n+1)))`
-/

namespace A173239.P5093700104928535017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002837 (A023133 (n + 1)).toNat).toNat

end

end A173239.P5093700104928535017

/-! ## A173239.P7121145456362833324

`A000041(A057428(n)+A023133(n+1))`
-/

namespace A173239.P7121145456362833324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A057428 n + A023133 (n + 1)).toNat

end

end A173239.P7121145456362833324

/-!
# A173241: Euler transform of A051064, the ruler function sequence for k=3.

The programs for A173241, there is no canonical definition to state claims against.
-/

/-! ## A173241.P10097287146309934499

`A007690(2*n)-A316864(A171967(2*n+1))`
-/

namespace A173241.P10097287146309934499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 (2 * n) - A316864 (A171967 (2 * n + 1)).toNat

end

end A173241.P10097287146309934499

/-! ## A173241.P17585617117987482714

`A007690(2*n)%A081198(n)`
-/

namespace A173241.P17585617117987482714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007690 (2 * n)) (A081198 n)

end

end A173241.P17585617117987482714

/-! ## A173241.P17968845306122486490

`A007690(lt[A001190(n), (-2)^n])`
-/

namespace A173241.P17968845306122486490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A173241.P17968845306122486490

/-! ## A173241.P13633487714300254990

`A007690(lt[A000225(n), A195861(n)])`
-/

namespace A173241.P13633487714300254990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A173241.P13633487714300254990

/-! ## A173241.P4817442947231304840

`A007690(n*A275870(A000040(n+1)))`
-/

namespace A173241.P4817442947231304840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 ((n : ℤ) * A275870 (A000040 (n + 1)).toNat).toNat

end

end A173241.P4817442947231304840

/-!
# A173242: Partial sums of A027642.

The programs for A173242, the canonical program `A173242.P7344851918474023694` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173242 has offset 0).

The definition of A173242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173242.P17426450240175422530

`∑[A027642(n)]`
-/

namespace A173242.P17426450240175422530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P17426450240175422530

namespace A173242

/-- `∑[A027642(n)]` -/
def P17426450240175422530.Spec : Prop :=
  ∀ n, P17426450240175422530.a n = A173242 n

end A173242

/-! ## A173242.P15458554832273831072

`∑[sqrt(A172282(n))]`
-/

namespace A173242.P15458554832273831072
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A172282 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P15458554832273831072

namespace A173242

/-- `∑[sqrt(A172282(n))]` -/
def P15458554832273831072.Spec : Prop :=
  ∀ n, P15458554832273831072.a n = (A173242 n : ℝ)

end A173242

/-! ## A173242.P14383421788444963596

`∑[A176289(n)+char[1]]`
-/

namespace A173242.P14383421788444963596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P14383421788444963596

namespace A173242

/-- `∑[A176289(n)+char[1]]` -/
def P14383421788444963596.Spec : Prop :=
  ∀ n, P14383421788444963596.a n = A173242 n

end A173242

/-! ## A173242.P3129394798829472540

`∑[A141056(n)-char[2*n+3]]`
-/

namespace A173242.P3129394798829472540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P3129394798829472540

namespace A173242

/-- `∑[A141056(n)-char[2*n+3]]` -/
def P3129394798829472540.Spec : Prop :=
  ∀ n, P3129394798829472540.a n = A173242 n

end A173242

/-! ## A173242.P5579483975502485429

`A027642(2*n-n)+a(n-1)` with `a(0)=1`
-/

namespace A173242.P5579483975502485429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027642 (2 * n - n) + a (n - 1)

end

end A173242.P5579483975502485429

namespace A173242

/-- `A027642(2*n-n)+a(n-1)` -/
def P5579483975502485429.Spec : Prop :=
  ∀ n, P5579483975502485429.a n = A173242 n

end A173242

/-! ## A173242.P14378586535863996284

`∑[A176289(n)]-A057428(n)`
-/

namespace A173242.P14378586535863996284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057428 n

end

end A173242.P14378586535863996284

namespace A173242

/-- `∑[A176289(n)]-A057428(n)` -/
def P14378586535863996284.Spec : Prop :=
  ∀ n, P14378586535863996284.a n = A173242 n

end A173242

/-! ## A173242.P7344851918474023694

`∑[gcd(A141056(n), A164869(n))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A173242

/-- `∑[gcd(A141056(n), A164869(n))]` -/
def P7344851918474023694.Spec : Prop :=
  ∀ n, (P7344851918474023694.a n : ℤ) = A173242 n

theorem P7344851918474023694.correct : P7344851918474023694.Spec := by
  intro n
  simp only [A173242]

end A173242

/-! ## A173242.P756053399105724201

`∑[lcm(A166333(n), A176289(n))]`
-/

namespace A173242.P756053399105724201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166333 n) (A176289 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P756053399105724201

namespace A173242

/-- `∑[lcm(A166333(n), A176289(n))]` -/
def P756053399105724201.Spec : Prop :=
  ∀ n, (P756053399105724201.a n : ℤ) = A173242 n

end A173242

/-! ## A173242.P1372530389162392297

`∑[xor(A010674(n), A176591(n))]`
-/

namespace A173242.P1372530389162392297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A176591 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P1372530389162392297

namespace A173242

/-- `∑[xor(A010674(n), A176591(n))]` -/
def P1372530389162392297.Spec : Prop :=
  ∀ n, P1372530389162392297.a n = A173242 n

end A173242

/-! ## A173242.P4106702533022461612

`∑[A050932(n)*A326584(n+1)]`
-/

namespace A173242.P4106702533022461612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 n * A326584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P4106702533022461612

namespace A173242

/-- `∑[A050932(n)*A326584(n+1)]` -/
def P4106702533022461612.Spec : Prop :=
  ∀ n, P4106702533022461612.a n = A173242 n

end A173242

/-! ## A173242.P16788907727798137630

`∑[A089026(n+1)*A166120(n+1)]`
-/

namespace A173242.P16788907727798137630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) * A166120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P16788907727798137630

namespace A173242

/-- `∑[A089026(n+1)*A166120(n+1)]` -/
def P16788907727798137630.Spec : Prop :=
  ∀ n, P16788907727798137630.a n = A173242 n

end A173242

/-! ## A173242.P18146902584830023489

`∑[(A166260(n+1)+1)*A166120(n+1)]`
-/

namespace A173242.P18146902584830023489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166260 (n + 1) + 1) * A166120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P18146902584830023489

namespace A173242

/-- `∑[(A166260(n+1)+1)*A166120(n+1)]` -/
def P18146902584830023489.Spec : Prop :=
  ∀ n, P18146902584830023489.a n = A173242 n

end A173242

/-! ## A173242.P12509062411848279047

`∑[A166120(n+1)*A166333(A166260(n+1))]`
-/

namespace A173242.P12509062411848279047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166120 (n + 1) * A166333 (A166260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P12509062411848279047

namespace A173242

/-- `∑[A166120(n+1)*A166333(A166260(n+1))]` -/
def P12509062411848279047.Spec : Prop :=
  ∀ n, P12509062411848279047.a n = A173242 n

end A173242

/-! ## A173242.P2802970336390709655

`∑[A085738(∑[n])]`
-/

namespace A173242.P2802970336390709655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P2802970336390709655

namespace A173242

/-- `∑[A085738(∑[n])]` -/
def P2802970336390709655.Spec : Prop :=
  ∀ n, P2802970336390709655.a n = A173242 n

end A173242

/-! ## A173242.P14327582459359260141

`∑[A162299(∑[n])]`
-/

namespace A173242.P14327582459359260141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162299 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P14327582459359260141

namespace A173242

/-- `∑[A162299(∑[n])]` -/
def P14327582459359260141.Spec : Prop :=
  ∀ n, P14327582459359260141.a n = A173242 n

end A173242

/-! ## A173242.P7025246277619213543

`∑[A196839(∑[n])]`
-/

namespace A173242.P7025246277619213543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196839 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P7025246277619213543

namespace A173242

/-- `∑[A196839(∑[n])]` -/
def P7025246277619213543.Spec : Prop :=
  ∀ n, P7025246277619213543.a n = A173242 n

end A173242

/-! ## A173242.P2183451422560339214

`∑[A051715(∑[n]+n)]`
-/

namespace A173242.P2183451422560339214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P2183451422560339214

namespace A173242

/-- `∑[A051715(∑[n]+n)]` -/
def P2183451422560339214.Spec : Prop :=
  ∀ n, P2183451422560339214.a n = A173242 n

end A173242

/-! ## A173242.P15885725113047445188

`∑[A053383(∑[n]+n)]`
-/

namespace A173242.P15885725113047445188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173242.P15885725113047445188

namespace A173242

/-- `∑[A053383(∑[n]+n)]` -/
def P15885725113047445188.Spec : Prop :=
  ∀ n, P15885725113047445188.a n = A173242 n

end A173242

/-!
# A173243: G.f. (x + 1)^10/(x^10 + x^9 - x^7 - x^6 - x^5 - x^4 - x^3 + x + 1).

The programs for A173243, there is no canonical definition to state claims against.
-/

/-! ## A173243.P3437058773854054732

`A220572(A386420(n+2))`
-/

namespace A173243.P3437058773854054732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220572 (A386420 (n + 2)).toNat

end

end A173243.P3437058773854054732

/-!
# A173244: G.f. (x^10 +x^9 +x^8 +.... +x+1) / (x^10 +x^9 -x^7 -x^6 -x^5 -x^4 -x^3 +x +1).

The programs for A173244, there is no canonical definition to state claims against.
-/

/-! ## A173244.P24854453802538531

`A048766(Δ[A013655(A254667(n))])`
-/

namespace A173244.P24854453802538531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (A254667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (f1 (n + 1) - f1 n).toNat

end

end A173244.P24854453802538531

/-! ## A173244.P1945842814646498175

`A048766(A109794(n)-A000196(n))`
-/

namespace A173244.P1945842814646498175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A109794 n - A000196 n).toNat

end

end A173244.P1945842814646498175

/-! ## A173244.P2833831923780813158

`A048766(A109794(n)-A007650(n))`
-/

namespace A173244.P2833831923780813158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A109794 n - A007650 n).toNat

end

end A173244.P2833831923780813158

/-! ## A173244.P2824743653828891581

`A048766(A109794(n)-A048766(n))`
-/

namespace A173244.P2824743653828891581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A109794 n - A048766 n).toNat

end

end A173244.P2824743653828891581

/-! ## A173244.P4818174956547917028

`A134914(A109794(n))-A057427(n)`
-/

namespace A173244.P4818174956547917028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A109794 n).toNat - A057427 n

end

end A173244.P4818174956547917028

/-!
# A173245: O.g.f. (x + 1)^10/ (sum_{i=0..10} x^i) .

The programs for A173245, there is no canonical definition to state claims against.
-/

/-! ## A173245.P13359794107981921360

`Δ[A010927(n)-A010926(n)]`
-/

namespace A173245.P13359794107981921360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010927 n - A010926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173245.P13359794107981921360

/-!
# A173246: Expansion of (1+x)^50 * (1-x)/(1 - x^51).

The programs for A173246, there is no canonical definition to state claims against.
-/

/-! ## A173246.P7763314044572635136

`2*A017766(n)-A017767(n)`
-/

namespace A173246.P7763314044572635136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017766 n - A017767 n

end

end A173246.P7763314044572635136

/-!
# A173247: a(0) = -1 and a(n) = (-1)^(n+1)*(3*n^2 - n + 4)/2 for n >= 1.

The programs for A173247, the canonical program `A173247.P2226880617797609074` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173247 has offset 0).

The definition of A173247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173247.P2226880617797609074

`∑[A033627(n+1)]*A033999(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173247

/-- `∑[A033627(n+1)]*A033999(n+1)` -/
def P2226880617797609074.Spec : Prop :=
  ∀ n, P2226880617797609074.a n = A173247 n

theorem P2226880617797609074.correct : P2226880617797609074.Spec := by
  intro n
  simp only [A173247]

end A173247

/-! ## A173247.P2220424017744140738

`∑[A033627(n+1)]*A228826(2*n+1)`
-/

namespace A173247.P2220424017744140738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A228826 (2 * n + 1)

end

end A173247.P2220424017744140738

namespace A173247

/-- `∑[A033627(n+1)]*A228826(2*n+1)` -/
def P2220424017744140738.Spec : Prop :=
  ∀ n, P2220424017744140738.a n = A173247 n

end A173247

/-! ## A173247.P8633910507085629991

`∑[A033627(n+1)]*A087960(A005408(n))`
-/

namespace A173247.P8633910507085629991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A087960 (A005408 n).toNat

end

end A173247.P8633910507085629991

namespace A173247

/-- `∑[A033627(n+1)]*A087960(A005408(n))` -/
def P8633910507085629991.Spec : Prop :=
  ∀ n, P8633910507085629991.a n = A173247 n

end A173247

/-! ## A173247.P12957096383253072664

`∑[A033627(n+1)]*A010892(3*(n+1))`
-/

namespace A173247.P12957096383253072664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010892 (3 * (n + 1))

end

end A173247.P12957096383253072664

namespace A173247

/-- `∑[A033627(n+1)]*A010892(3*(n+1))` -/
def P12957096383253072664.Spec : Prop :=
  ∀ n, P12957096383253072664.a n = A173247 n

end A173247

/-!
# A173248: a(0) = -1, otherwise a(n) = (-1)^n*(n^3 - 15*n^2 + 2*n - 12)/6.

The programs for A173248, the canonical program `A173248.P13069274780353217509` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173248 has offset 0).

The definition of A173248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173248.P13069274780353217509

`A173247(n)+A105810(A167499(n)-3)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A173248

/-- `A173247(n)+A105810(A167499(n)-3)` -/
def P13069274780353217509.Spec : Prop :=
  ∀ n, P13069274780353217509.a n = A173248 n

theorem P13069274780353217509.correct : P13069274780353217509.Spec := by
  intro n
  simp only [A173248]

end A173248

/-!
# A173249: Partial sums of A000272.

The programs for A173249, there is no canonical definition to state claims against.
-/

/-! ## A173249.P1061497462044655614

`∑[n^floor(n-atan(n))]`
-/

namespace A173249.P1061497462044655614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173249.P1061497462044655614

/-! ## A173249.P472361741991964589

`∑[n^(n-ceil(atan(n)))]`
-/

namespace A173249.P472361741991964589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173249.P472361741991964589

/-! ## A173249.P7160792687320743433

`∑[n^(abs(1-n)-1)]`
-/

namespace A173249.P7160792687320743433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|1 - (n : ℤ)| - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173249.P7160792687320743433

/-! ## A173249.P15752178108347827170

`a(n-1)+n^(n-2)` with `a(0)=1`
-/

namespace A173249.P15752178108347827170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A173249.P15752178108347827170

/-! ## A173249.P11951833005030186744

`n^(n-2)-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A173249.P11951833005030186744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) ^ ((n : ℤ) - 2 : ℤ) - (⌊-a (n - 1)⌋ : ℚ)

end

end A173249.P11951833005030186744

/-! ## A173249.P5793645489327340047

`∑[A000272(n)]^ceil(acot(n))`
-/

namespace A173249.P5793645489327340047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A173249.P5793645489327340047

/-! ## A173249.P12799696758230840003

`floor(∑[∏{d}[n, A014963(#)^(n-2)]])`
-/

namespace A173249.P12799696758230840003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (A014963 d : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A173249.P12799696758230840003

/-! ## A173249.P2412057746555378397

`lcm(∑[n^(n-2%(n+1))], A033999(n))`
-/

namespace A173249.P2412057746555378397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A033999 n)

end

end A173249.P2412057746555378397

/-! ## A173249.P552722337803124468

`∑[A000272(n)]^A178334(n)`
-/

namespace A173249.P552722337803124468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A178334 n : ℤ)

end

end A173249.P552722337803124468

/-! ## A173249.P13953409851894526592

`gcd(∑[A000272(n)], A151933(n))`
-/

namespace A173249.P13953409851894526592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A151933 n)

end

end A173249.P13953409851894526592

/-!
# A173250: Positive odd nonprimes of the form prime-10.

The programs for A173250, there is no canonical definition to state claims against.
-/

/-! ## A173250.P8041944153226687768

`p?[A018252(n+1)+10]-10`
-/

namespace A173250.P8041944153226687768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 10

end

end A173250.P8041944153226687768

/-! ## A173250.P17911031879307047155

`p?[A141468(n+1)+10]-10`
-/

namespace A173250.P17911031879307047155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 10

end

end A173250.P17911031879307047155

/-! ## A173250.P3184573311434152172

`filter[A172407(n+1), A005171(#)]`
-/

namespace A173250.P3184573311434152172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A173250.P3184573311434152172

/-! ## A173250.P13114171037203294457

`filter[A172407(n+1), A292438(#)]`
-/

namespace A173250.P13114171037203294457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A173250.P13114171037203294457

/-! ## A173250.P5515482511731399131

`∩[A172407(n+1), A100490(n)]`
-/

namespace A173250.P5515482511731399131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173250.P5515482511731399131

/-! ## A173250.P13134310308261633023

`∩[A014076(n+1), A172407(n+1)]`
-/

namespace A173250.P13134310308261633023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173250.P13134310308261633023

/-! ## A173250.P17002526924372414622

`∩[A018252(n+1), A172407(n+1)]`
-/

namespace A173250.P17002526924372414622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173250.P17002526924372414622

/-! ## A173250.P13152821127637105744

`∩[A056653(n+1), A172407(n+1)]`
-/

namespace A173250.P13152821127637105744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173250.P13152821127637105744

/-! ## A173250.P15574165592778012985

`∩[A065090(n+1), A172407(n+1)]`
-/

namespace A173250.P15574165592778012985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173250.P15574165592778012985

/-! ## A173250.P10885790133126755931

`∩[A067800(n+1), A172407(n+1)]`
-/

namespace A173250.P10885790133126755931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173250.P10885790133126755931

/-!
# A173251: Positive odd nonprimes of the form prime-6.

The programs for A173251, there is no canonical definition to state claims against.
-/

/-! ## A173251.P17292460908221629155

`p?[A018252(n+1)+6]-6`
-/

namespace A173251.P17292460908221629155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6

end

end A173251.P17292460908221629155

/-! ## A173251.P5521003976859910462

`p?[A056653(n+1)+6]-6`
-/

namespace A173251.P5521003976859910462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6

end

end A173251.P5521003976859910462

/-! ## A173251.P12332466375720184182

`p?[A065090(n+1)+6]-6`
-/

namespace A173251.P12332466375720184182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6

end

end A173251.P12332466375720184182

/-! ## A173251.P3447404903375026965

`p?[A141468(n+1)+6]-6`
-/

namespace A173251.P3447404903375026965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6

end

end A173251.P3447404903375026965

/-! ## A173251.P8811736114396821977

`filter[A086304(n+1), A005171(#)]`
-/

namespace A173251.P8811736114396821977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A173251.P8811736114396821977

/-! ## A173251.P155274105665083573

`filter[A086304(n+1), A292438(#)]`
-/

namespace A173251.P155274105665083573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A173251.P155274105665083573

/-! ## A173251.P13091197501170426831

`filter[A118538(n+3), A005171(#)]`
-/

namespace A173251.P13091197501170426831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A173251.P13091197501170426831

/-! ## A173251.P1715391450917182224

`filter[A118538(n+3), A292438(#)]`
-/

namespace A173251.P1715391450917182224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A173251.P1715391450917182224

/-! ## A173251.P6298735951130493704

`eq[A066868(n+1), A292438(n)]`
-/

namespace A173251.P6298735951130493704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173251.P6298735951130493704

/-! ## A173251.P8083195834963798812

`eq[A053206(n+6), A055671(n)]`
-/

namespace A173251.P8083195834963798812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053206 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173251.P8083195834963798812

/-!
# A173252: A sequence of coefficients of 3^n when x_n = x_oi.

The programs for A173252, there is no canonical definition to state claims against.
-/

/-! ## A173252.P16513711459995607589

`A345992(A042086(n)-1)`
-/

namespace A173252.P16513711459995607589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (A042086 n - 1).toNat

end

end A173252.P16513711459995607589

/-! ## A173252.P6934660780482701163

`A280750(n)+A054576(A016269(n))`
-/

namespace A173252.P6934660780482701163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 n + A054576 (A016269 n).toNat

end

end A173252.P6934660780482701163

/-!
# A173253: Partial sums of A000111.

The programs for A173253, there is no canonical definition to state claims against.
-/

/-! ## A173253.P15560199762256099918

`∑[A000111(n)]`
-/

namespace A173253.P15560199762256099918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173253.P15560199762256099918

/-! ## A173253.P9190713994298361628

`∑[abs(A346838(n))]`
-/

namespace A173253.P9190713994298361628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A346838 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173253.P9190713994298361628

/-! ## A173253.P13855045503669640932

`∑[A104345(∑[n])]`
-/

namespace A173253.P13855045503669640932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173253.P13855045503669640932

/-! ## A173253.P7045347271067014913

`∑[A109449(∑[n])]`
-/

namespace A173253.P7045347271067014913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173253.P7045347271067014913

/-! ## A173253.P9724024468126820939

`∑[abs(A247453(∑[n]))]`
-/

namespace A173253.P9724024468126820939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247453 (∑ j ∈ Finset.range (n + 1), f2 j)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173253.P9724024468126820939

/-! ## A173253.P2852339961607053305

`∑[abs(A163747(n))]+1`
-/

namespace A173253.P2852339961607053305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163747 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A173253.P2852339961607053305

/-! ## A173253.P17071168037767336198

`∑[abs(A163982(n))]-1`
-/

namespace A173253.P17071168037767336198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163982 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A173253.P17071168037767336198

/-! ## A173253.P1198450734564117060

`∑[A008282(∑[n]+1)]`
-/

namespace A173253.P1198450734564117060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173253.P1198450734564117060

/-! ## A173253.P18288416047832190840

`∑[A229892(∑[n]+1)]`
-/

namespace A173253.P18288416047832190840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173253.P18288416047832190840

/-! ## A173253.P1943751889133743494

`∑[A250261(∑[n+3])]`
-/

namespace A173253.P1943751889133743494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173253.P1943751889133743494

/-!
# A173254: a(n) = a(n-1) + a(n-2) - [a(n-2)/2] - [a(n-4)/2].

The programs for A173254, the canonical program `A173254.P105506424950928739` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173254 has offset 0).

The definition of A173254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173254.P105506424950928739

`a(n-1)+a(n-2)-floor(a(n-2)/2)-floor(a(n-4)/2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173254

/-- `a(n-1)+a(n-2)-floor(a(n-2)/2)-floor(a(n-4)/2)` -/
def P105506424950928739.Spec : Prop :=
  ∀ n, P105506424950928739.a n = A173254 n

theorem P105506424950928739.correct : P105506424950928739.Spec := by
  intro n
  simp only [A173254]

end A173254

/-! ## A173254.P4692316531385723039

`ceil((and(5, n)+(n+1)²)/8)`
-/

namespace A173254.P4692316531385723039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 5 n + (n + 1) ^ 2 : ℚ) / 8⌉

end

end A173254.P4692316531385723039

namespace A173254

/-- `ceil((and(5, n)+(n+1)²)/8)` -/
def P4692316531385723039.Spec : Prop :=
  ∀ n, P4692316531385723039.a n = A173254 n

end A173254

/-! ## A173254.P8735106503176293249

`∑[a(xor(1, n+1)-5)+1]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A173254.P8735106503176293249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 1] fun n f1 =>
  f1 (Nat.xor 1 (n + 1) - 5) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173254.P8735106503176293249

namespace A173254

/-- `∑[a(xor(1, n+1)-5)+1]` -/
def P8735106503176293249.Spec : Prop :=
  ∀ n, (P8735106503176293249.a n : ℤ) = A173254 n

end A173254

/-! ## A173254.P10662368949801774927

`a(n-2)-floor((and(1, a(n-1))-n)/2)` with `a(0)=1, a(1)=1`
-/

namespace A173254.P10662368949801774927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - ⌊(Int.land 1 (a (n - 1)) - (n : ℤ) : ℚ) / 2⌋

end

end A173254.P10662368949801774927

namespace A173254

/-- `a(n-2)-floor((and(1, a(n-1))-n)/2)` -/
def P10662368949801774927.Spec : Prop :=
  ∀ n, P10662368949801774927.a n = A173254 n

end A173254

/-! ## A173254.P3767542914721269829

`Δ[or(1, A173196(n))]/2+1`
-/

namespace A173254.P3767542914721269829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A173196 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2 + 1

end

end A173254.P3767542914721269829

namespace A173254

/-- `Δ[or(1, A173196(n))]/2+1` -/
def P3767542914721269829.Spec : Prop :=
  ∀ n, P3767542914721269829.a n = (A173254 n : ℚ)

end A173254

/-! ## A173254.P12905931658101526813

`A186382(n+1)-A248375(n)`
-/

namespace A173254.P12905931658101526813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186382 (n + 1) - A248375 n

end

end A173254.P12905931658101526813

namespace A173254

/-- `A186382(n+1)-A248375(n)` -/
def P12905931658101526813.Spec : Prop :=
  ∀ n, P12905931658101526813.a n = A173254 n

end A173254

/-! ## A173254.P9561701977800795031

`∑[floor((A075553(n+4)+n+2)/4)]+1`
-/

namespace A173254.P9561701977800795031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075553 (n + 4) + (n + 2 : ℤ) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A173254.P9561701977800795031

namespace A173254

/-- `∑[floor((A075553(n+4)+n+2)/4)]+1` -/
def P9561701977800795031.Spec : Prop :=
  ∀ n, P9561701977800795031.a n = A173254 n

end A173254

/-! ## A173254.P7992751664088233782

`∑[A091972(ceil(or(1, 3*n)/2))]+1`
-/

namespace A173254.P7992751664088233782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 ⌈(Nat.lor 1 (3 * n) : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A173254.P7992751664088233782

namespace A173254

/-- `∑[A091972(ceil(or(1, 3*n)/2))]+1` -/
def P7992751664088233782.Spec : Prop :=
  ∀ n, P7992751664088233782.a n = A173254 n

end A173254

/-! ## A173254.P13417579402526486219

`A122797(A129895(n+1))`
-/

namespace A173254.P13417579402526486219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A129895 (n + 1)).toNat

end

end A173254.P13417579402526486219

namespace A173254

/-- `A122797(A129895(n+1))` -/
def P13417579402526486219.Spec : Prop :=
  ∀ n, P13417579402526486219.a n = A173254 n

end A173254

/-! ## A173254.P3004253358925828476

`A008619(Δ[or(1, A173196(n))])`
-/

namespace A173254.P3004253358925828476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A173196 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A173254.P3004253358925828476

namespace A173254

/-- `A008619(Δ[or(1, A173196(n))])` -/
def P3004253358925828476.Spec : Prop :=
  ∀ n, P3004253358925828476.a n = A173254 n

end A173254

/-! ## A173254.P4303884160776722990

`A028242(Δ[or(1, A173196(n))])`
-/

namespace A173254.P4303884160776722990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A173196 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (n + 1) - f1 n).toNat

end

end A173254.P4303884160776722990

namespace A173254

/-- `A028242(Δ[or(1, A173196(n))])` -/
def P4303884160776722990.Spec : Prop :=
  ∀ n, P4303884160776722990.a n = A173254 n

end A173254

/-!
# A173256: Partial sums of A001481.

The programs for A173256, the canonical program `A173256.P14061795327720257061` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173256 has offset 1).

The definition of A173256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173256.P14061795327720257061

`∑[A001481(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A173256

/-- `∑[A001481(n+1)]` -/
def P14061795327720257061.Spec : Prop :=
  ∀ n, P14061795327720257061.a n = A173256 (n + 1)

theorem P14061795327720257061.correct : P14061795327720257061.Spec := by
  intro n
  simp only [A173256, Nat.add_sub_cancel]

end A173256

/-! ## A173256.P12470677685788803721

`∑[eq[1, A229062(n)]]`
-/

namespace A173256.P12470677685788803721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P12470677685788803721

namespace A173256

/-- `∑[eq[1, A229062(n)]]` -/
def P12470677685788803721.Spec : Prop :=
  ∀ n, (P12470677685788803721.a n : ℤ) = A173256 (n + 1)

end A173256

/-! ## A173256.P6950035824137796384

`∑[A166687(n+1)-1]`
-/

namespace A173256.P6950035824137796384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P6950035824137796384

namespace A173256

/-- `∑[A166687(n+1)-1]` -/
def P6950035824137796384.Spec : Prop :=
  ∀ n, P6950035824137796384.a n = A173256 (n + 1)

end A173256

/-! ## A173256.P4357246520029556100

`∑[floor(A128106(n+1)/2)]`
-/

namespace A173256.P4357246520029556100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128106 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P4357246520029556100

namespace A173256

/-- `∑[floor(A128106(n+1)/2)]` -/
def P4357246520029556100.Spec : Prop :=
  ∀ n, P4357246520029556100.a n = A173256 (n + 1)

end A173256

/-! ## A173256.P5354219956205923121

`∑[∪[A000415(n+1), n²]]`
-/

namespace A173256.P5354219956205923121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P5354219956205923121

namespace A173256

/-- `∑[∪[A000415(n+1), n²]]` -/
def P5354219956205923121.Spec : Prop :=
  ∀ n, (P5354219956205923121.a n : ℤ) = A173256 (n + 1)

end A173256

/-! ## A173256.P15120203705353926856

`∑[A125110(n+1)^(1/3)]`
-/

namespace A173256.P15120203705353926856
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A125110 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P15120203705353926856

namespace A173256

/-- `∑[A125110(n+1)^(1/3)]` -/
def P15120203705353926856.Spec : Prop :=
  ∀ n, P15120203705353926856.a n = (A173256 (n + 1) : ℝ)

end A173256

/-! ## A173256.P5354652867825733170

`∑[A125110(n+1)%A166687(n+1)]`
-/

namespace A173256.P5354652867825733170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125110 (n + 1)) (A166687 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P5354652867825733170

namespace A173256

/-- `∑[A125110(n+1)%A166687(n+1)]` -/
def P5354652867825733170.Spec : Prop :=
  ∀ n, P5354652867825733170.a n = A173256 (n + 1)

end A173256

/-! ## A173256.P11513244865970720824

`∑[∑[A256435(n+1)]-A256435(n+1)]`
-/

namespace A173256.P11513244865970720824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256435 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A256435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P11513244865970720824

namespace A173256

/-- `∑[∑[A256435(n+1)]-A256435(n+1)]` -/
def P11513244865970720824.Spec : Prop :=
  ∀ n, P11513244865970720824.a n = A173256 (n + 1)

end A173256

/-! ## A173256.P16717802168205523930

`∑[lt[A002828(n), 3]]`
-/

namespace A173256.P16717802168205523930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P16717802168205523930

namespace A173256

/-- `∑[lt[A002828(n), 3]]` -/
def P16717802168205523930.Spec : Prop :=
  ∀ n, (P16717802168205523930.a n : ℤ) = A173256 (n + 1)

end A173256

/-! ## A173256.P6506762620650571210

`∑[eq[0, A070176(n)]]`
-/

namespace A173256.P6506762620650571210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P6506762620650571210

namespace A173256

/-- `∑[eq[0, A070176(n)]]` -/
def P6506762620650571210.Spec : Prop :=
  ∀ n, (P6506762620650571210.a n : ℤ) = A173256 (n + 1)

end A173256

/-! ## A173256.P14969439017053607922

`∑[lt[0, A000161(n)]]`
-/

namespace A173256.P14969439017053607922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P14969439017053607922

namespace A173256

/-- `∑[lt[0, A000161(n)]]` -/
def P14969439017053607922.Spec : Prop :=
  ∀ n, (P14969439017053607922.a n : ℤ) = A173256 (n + 1)

end A173256

/-! ## A173256.P14700199223087692749

`∑[lt[0, A000925(n)]]`
-/

namespace A173256.P14700199223087692749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P14700199223087692749

namespace A173256

/-- `∑[lt[0, A000925(n)]]` -/
def P14700199223087692749.Spec : Prop :=
  ∀ n, (P14700199223087692749.a n : ℤ) = A173256 (n + 1)

end A173256

/-! ## A173256.P1902750505343800357

`∑[lt[0, A004018(n)]]`
-/

namespace A173256.P1902750505343800357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P1902750505343800357

namespace A173256

/-- `∑[lt[0, A004018(n)]]` -/
def P1902750505343800357.Spec : Prop :=
  ∀ n, (P1902750505343800357.a n : ℤ) = A173256 (n + 1)

end A173256

/-! ## A173256.P8223748323120616247

`∑[lt[0, A330574(n)]]`
-/

namespace A173256.P8223748323120616247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330574 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P8223748323120616247

namespace A173256

/-- `∑[lt[0, A330574(n)]]` -/
def P8223748323120616247.Spec : Prop :=
  ∀ n, (P8223748323120616247.a n : ℤ) = A173256 (n + 1)

end A173256

/-! ## A173256.P10004010911443705826

`∑[lt[0, A259761(n)]]`
-/

namespace A173256.P10004010911443705826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259761 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P10004010911443705826

namespace A173256

/-- `∑[lt[0, A259761(n)]]` -/
def P10004010911443705826.Spec : Prop :=
  ∀ n, (P10004010911443705826.a n : ℤ) = A173256 (n + 1)

end A173256

/-! ## A173256.P17204950986452381877

`∑[lt[A070176(n), A236398(n+1)]]`
-/

namespace A173256.P17204950986452381877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236398 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P17204950986452381877

namespace A173256

/-- `∑[lt[A070176(n), A236398(n+1)]]` -/
def P17204950986452381877.Spec : Prop :=
  ∀ n, (P17204950986452381877.a n : ℤ) = A173256 (n + 1)

end A173256

/-! ## A173256.P8968415702953109722

`∑[A004526(A128106(n+1))]`
-/

namespace A173256.P8968415702953109722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A128106 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P8968415702953109722

namespace A173256

/-- `∑[A004526(A128106(n+1))]` -/
def P8968415702953109722.Spec : Prop :=
  ∀ n, P8968415702953109722.a n = A173256 (n + 1)

end A173256

/-! ## A173256.P7786553979031755162

`∑[eq[1, A019426(2*A330574(n))]]`
-/

namespace A173256.P7786553979031755162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * A330574 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P7786553979031755162

namespace A173256

/-- `∑[eq[1, A019426(2*A330574(n))]]` -/
def P7786553979031755162.Spec : Prop :=
  ∀ n, (P7786553979031755162.a n : ℤ) = A173256 (n + 1)

end A173256

/-! ## A173256.P17369550356308890762

`∑[A336820(∑[n+2])]`
-/

namespace A173256.P17369550356308890762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P17369550356308890762

namespace A173256

/-- `∑[A336820(∑[n+2])]` -/
def P17369550356308890762.Spec : Prop :=
  ∀ n, P17369550356308890762.a n = A173256 (n + 1)

end A173256

/-!
# A173257: Pell sequence entry points for primes == 1 (mod 4).

The programs for A173257, there is no canonical definition to state claims against.
-/

/-! ## A173257.P8810612407338787349

`A214028(A002144(n+1))`
-/

namespace A173257.P8810612407338787349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (A002144 (n + 1)).toNat

end

end A173257.P8810612407338787349

/-! ## A173257.P8590039420870275402

`A120947(A080147(n+1))`
-/

namespace A173257.P8590039420870275402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120947 (A080147 (n + 1)).toNat

end

end A173257.P8590039420870275402

/-! ## A173257.P9661464221636155927

`A120947(A138970(n+1)+1)`
-/

namespace A173257.P9661464221636155927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120947 (A138970 (n + 1) + 1).toNat

end

end A173257.P9661464221636155927

/-! ## A173257.P679515241176863365

`A214028(p?[4*n+1])`
-/

namespace A173257.P679515241176863365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A173257.P679515241176863365

/-! ## A173257.P14568971543026833659

`A214028(A002313(n+2))`
-/

namespace A173257.P14568971543026833659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (A002313 (n + 2)).toNat

end

end A173257.P14568971543026833659

/-! ## A173257.P3738737352917701122

`A214028(A280084(n+2))`
-/

namespace A173257.P3738737352917701122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (A280084 (n + 2)).toNat

end

end A173257.P3738737352917701122

/-!
# A173258: Number of compositions of n where differences between neighboring parts are in {-1,1}.

The programs for A173258, there is no canonical definition to state claims against.
-/

/-! ## A173258.P7609674801892713547

`A214247(∑[n+2]-1)`
-/

namespace A173258.P7609674801892713547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214247 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A173258.P7609674801892713547

/-! ## A173258.P3545068076524224403

`A214249(∑[n+2]-1)`
-/

namespace A173258.P3545068076524224403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214249 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A173258.P3545068076524224403

/-! ## A173258.P17807986682673371757

`and(-1, A214247(A034856(n+1)))`
-/

namespace A173258.P17807986682673371757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A214247 (A034856 (n + 1)).toNat)

end

end A173258.P17807986682673371757

/-! ## A173258.P2688831354182760960

`gcd(C(2, n), A214247(A000096(n+1)-1))`
-/

namespace A173258.P2688831354182760960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A214247 (A000096 (n + 1) - 1).toNat)

end

end A173258.P2688831354182760960

/-! ## A173258.P1433971899757384505

`A214247(A034856(n+1))%A000051(n)`
-/

namespace A173258.P1433971899757384505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214247 (A034856 (n + 1)).toNat) (A000051 n)

end

end A173258.P1433971899757384505

/-! ## A173258.P5740136236659826454

`gcd(A000038(n), A214247(A034856(n+1)))`
-/

namespace A173258.P5740136236659826454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A214247 (A034856 (n + 1)).toNat)

end

end A173258.P5740136236659826454

/-! ## A173258.P2066124112810609205

`A214247(A000096(n+1)-1)%A022127(n)`
-/

namespace A173258.P2066124112810609205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214247 (A000096 (n + 1) - 1).toNat) (A022127 n)

end

end A173258.P2066124112810609205

/-! ## A173258.P11833221037797490493

`A007318(C(2, n))*A214247(A034856(n+1))`
-/

namespace A173258.P11833221037797490493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A214247 (A034856 (n + 1)).toNat

end

end A173258.P11833221037797490493

/-! ## A173258.P11817829019935737259

`ceil(1/A007318(n))*A214247(A034856(n+1))`
-/

namespace A173258.P11817829019935737259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A214247 (A034856 (n + 1)).toNat

end

end A173258.P11817829019935737259

/-! ## A173258.P13250557934793573681

`A214247(A034856(n+1))+char[A000045(n+13)]`
-/

namespace A173258.P13250557934793573681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 13)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214247 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A173258.P13250557934793573681

/-! ## A173258.P3761344280018492745

`A014963(6*(n+1))*A214247(A034856(n+1))`
-/

namespace A173258.P3761344280018492745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A214247 (A034856 (n + 1)).toNat

end

end A173258.P3761344280018492745

/-! ## A173258.P5667183816445842330

`A214247(A000096(n+1)-1)^(1-A000007(n))`
-/

namespace A173258.P5667183816445842330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214247 (A000096 (n + 1) - 1).toNat : ℚ) ^ (1 - A000007 n : ℤ)

end

end A173258.P5667183816445842330

/-! ## A173258.P13606623887071974502

`A007318(C(2, n))*A214247(A000096(n+1)-1)`
-/

namespace A173258.P13606623887071974502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A214247 (A000096 (n + 1) - 1).toNat

end

end A173258.P13606623887071974502

/-! ## A173258.P3677471886482001936

`A214247(A034856(n+1))+A001222(gcd(n, n+1))`
-/

namespace A173258.P3677471886482001936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214247 (A034856 (n + 1)).toNat + A001222 (Nat.gcd n (n + 1))

end

end A173258.P3677471886482001936

/-!
# A173259: Period 3: repeat [4, 1, 4].

The programs for A173259, the canonical program `A173259.P11702128021891165935` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173259 has offset 1).

The definition of A173259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173259.P11702128021891165935

`a(n-3)` with `a(0)=4, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173259

/-- `a(n-3)` -/
def P11702128021891165935.Spec : Prop :=
  ∀ n, (P11702128021891165935.a n : ℤ) = A173259 (n + 1)

theorem P11702128021891165935.correct : P11702128021891165935.Spec := by
  intro n
  simp only [A173259, Nat.add_sub_cancel]

end A173259

/-!
# A173260: a(0)=1, a(1)=5; for n>=2, a(n) = 5^A042950(n-2).

The programs for A173260, there is no canonical definition to state claims against.
-/

/-! ## A173260.P4708638358884486478

`5^round(3*2^(n-3))`
-/

namespace A173260.P4708638358884486478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (SequenceMachineLib.roundAway (3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)) : ℤ)

end

end A173260.P4708638358884486478

/-! ## A173260.P5483395250142758916

`record[5^A251714(n)]`
-/

namespace A173260.P5483395250142758916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A251714 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173260.P5483395250142758916

/-! ## A173260.P800259316075478169

`record[5^A251745(n)]`
-/

namespace A173260.P800259316075478169
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A251745 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173260.P800259316075478169

/-! ## A173260.P8451848734802623077

`record[5^A251752(n)]`
-/

namespace A173260.P8451848734802623077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A251752 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173260.P8451848734802623077

/-! ## A173260.P7196034626179702645

`record[5^A251766(n)]`
-/

namespace A173260.P7196034626179702645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A251766 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173260.P7196034626179702645

/-!
# A173261: Array T(n,k) read by antidiagonals: T(n,2k)=1, T(n,2k+1)=n, n>=2, k>=0.

The programs for A173261, the canonical program `A173261.P1878570650276901774` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173261 has offset 2).

The definition of A173261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173261.P16634975064731206918

`(C(comp[∑[n]]-n, 2)-n)*A060510(n)+1`
-/

namespace A173261.P16634975064731206918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A060510 n + 1

end

end A173261.P16634975064731206918

namespace A173261

/-- `(C(comp[∑[n]]-n, 2)-n)*A060510(n)+1` -/
def P16634975064731206918.Spec : Prop :=
  ∀ n, P16634975064731206918.a n = A173261 (n + 2)

end A173261

/-! ## A173261.P9825614123102225286

`A104567(n+1)+1-(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A173261.P9825614123102225286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104567 (n + 1) + 1 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A173261.P9825614123102225286

namespace A173261

/-- `A104567(n+1)+1-(C(comp[∑[n]]-n, 2)-n)` -/
def P9825614123102225286.Spec : Prop :=
  ∀ n, P9825614123102225286.a n = A173261 (n + 2)

end A173261

/-! ## A173261.P1878570650276901774

`A128221(A278818(n)+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A173261

/-- `A128221(A278818(n)+1)` -/
def P1878570650276901774.Spec : Prop :=
  ∀ n, P1878570650276901774.a n = A173261 (n + 2)

theorem P1878570650276901774.correct : P1878570650276901774.Spec := by
  intro n
  simp only [A173261, Nat.add_sub_cancel]

end A173261

/-! ## A173261.P9138028513800241610

`A128221(A038722(n+1)+1)`
-/

namespace A173261.P9138028513800241610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128221 (A038722 (n + 1) + 1).toNat

end

end A173261.P9138028513800241610

namespace A173261

/-- `A128221(A038722(n+1)+1)` -/
def P9138028513800241610.Spec : Prop :=
  ∀ n, P9138028513800241610.a n = A173261 (n + 2)

end A173261

/-! ## A173261.P12032717101494957162

`A104567(n+1)-A025581(n)`
-/

namespace A173261.P12032717101494957162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104567 (n + 1) - A025581 n

end

end A173261.P12032717101494957162

namespace A173261

/-- `A104567(n+1)-A025581(n)` -/
def P12032717101494957162.Spec : Prop :=
  ∀ n, P12032717101494957162.a n = A173261 (n + 2)

end A173261

/-! ## A173261.P3340399514748133669

`A004736(n^(A002262(n)%2))`
-/

namespace A173261.P3340399514748133669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod (A002262 n) 2 : ℤ))).toNat

end

end A173261.P3340399514748133669

namespace A173261

/-- `A004736(n^(A002262(n)%2))` -/
def P3340399514748133669.Spec : Prop :=
  ∀ n, P3340399514748133669.a n = A173261 (n + 2)

end A173261

/-! ## A173261.P13075095207387569304

`A002260(A104567(n+1)+1+n)`
-/

namespace A173261.P13075095207387569304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A104567 (n + 1) + 1 + (n : ℤ)).toNat

end

end A173261.P13075095207387569304

namespace A173261

/-- `A002260(A104567(n+1)+1+n)` -/
def P13075095207387569304.Spec : Prop :=
  ∀ n, P13075095207387569304.a n = A173261 (n + 2)

end A173261

/-! ## A173261.P8606876599972452257

`gcd(A025581(n)+2, A055129(n+1))`
-/

namespace A173261.P8606876599972452257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n + 2) (A055129 (n + 1))

end

end A173261.P8606876599972452257

namespace A173261

/-- `gcd(A025581(n)+2, A055129(n+1))` -/
def P8606876599972452257.Spec : Prop :=
  ∀ n, (P8606876599972452257.a n : ℤ) = A173261 (n + 2)

end A173261

/-! ## A173261.P9202143359028954498

`A104567(n+1)+1-A004736(n+1)`
-/

namespace A173261.P9202143359028954498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104567 (n + 1) + (1 - A004736 (n + 1))

end

end A173261.P9202143359028954498

namespace A173261

/-- `A104567(n+1)+1-A004736(n+1)` -/
def P9202143359028954498.Spec : Prop :=
  ∀ n, P9202143359028954498.a n = A173261 (n + 2)

end A173261

/-! ## A173261.P1560125457787916907

`A104567(n+1)+1-A000463(A099375(n))`
-/

namespace A173261.P1560125457787916907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104567 (n + 1) + (1 - A000463 (A099375 n).toNat)

end

end A173261.P1560125457787916907

namespace A173261

/-- `A104567(n+1)+1-A000463(A099375(n))` -/
def P1560125457787916907.Spec : Prop :=
  ∀ n, P1560125457787916907.a n = A173261 (n + 2)

end A173261

/-! ## A173261.P1849090648376533494

`A004736(n+1)*A059841(A002260(n+1))+1`
-/

namespace A173261.P1849090648376533494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A059841 (A002260 (n + 1)).toNat + 1

end

end A173261.P1849090648376533494

namespace A173261

/-- `A004736(n+1)*A059841(A002260(n+1))+1` -/
def P1849090648376533494.Spec : Prop :=
  ∀ n, P1849090648376533494.a n = A173261 (n + 2)

end A173261

/-! ## A173261.P550747883766504481

`A104567(n+1)+1-A000005(A130321(n))`
-/

namespace A173261.P550747883766504481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104567 (n + 1) + (1 - A000005 (A130321 n).toNat)

end

end A173261.P550747883766504481

namespace A173261

/-- `A104567(n+1)+1-A000005(A130321(n))` -/
def P550747883766504481.Spec : Prop :=
  ∀ n, P550747883766504481.a n = A173261 (n + 2)

end A173261

/-! ## A173261.P4114464108825733284

`A277822(A089633(n)+1)`
-/

namespace A173261.P4114464108825733284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A089633 n + 1).toNat

end

end A173261.P4114464108825733284

namespace A173261

/-- `A277822(A089633(n)+1)` -/
def P4114464108825733284.Spec : Prop :=
  ∀ n, P4114464108825733284.a n = A173261 (n + 2)

end A173261

/-! ## A173261.P6039419798028459817

`A277822(A023758(n+2))`
-/

namespace A173261.P6039419798028459817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A023758 (n + 2)).toNat

end

end A173261.P6039419798028459817

namespace A173261

/-- `A277822(A023758(n+2))` -/
def P6039419798028459817.Spec : Prop :=
  ∀ n, P6039419798028459817.a n = A173261 (n + 2)

end A173261

/-! ## A173261.P1099433539578618829

`A277818(A003188(A277820(n+1)))`
-/

namespace A173261.P1099433539578618829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277818 (A003188 (A277820 (n + 1)).toNat).toNat

end

end A173261.P1099433539578618829

namespace A173261

/-- `A277818(A003188(A277820(n+1)))` -/
def P1099433539578618829.Spec : Prop :=
  ∀ n, P1099433539578618829.a n = A173261 (n + 2)

end A173261

/-!
# A173262: a(n) = (2*10^n + 61)/9.

The programs for A173262, the canonical program `A173262.P3694360927115062122` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173262 has offset 1).

The definition of A173262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*10^(n+1)+61)/9` (program `A173262.P16572651024905814820`, by `A173262.P16572651024905814820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173262.P3694360927115062122

`10*a(n-1)-61` with `a(0)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173262

/-- `10*a(n-1)-61` -/
def P3694360927115062122.Spec : Prop :=
  ∀ n, P3694360927115062122.a n = A173262 (n + 1)

theorem P3694360927115062122.correct : P3694360927115062122.Spec := by
  intro n
  simp only [A173262, Nat.add_sub_cancel]

end A173262

/-! ## A173262.P16572651024905814820

`(2*10^(n+1)+61)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173262.P16572651024905814820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 10 ^ (n + 1) + 61 : ℚ) / 9

end

end A173262.P16572651024905814820

namespace A173262

/-- `(2*10^(n+1)+61)/9` -/
def P16572651024905814820.Spec : Prop :=
  ∀ n, P16572651024905814820.a n = (A173262 (n + 1) : ℚ)

theorem P16572651024905814820.correct : P16572651024905814820.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173262, Nat.add_sub_cancel, A173262.P16572651024905814820.a, A173262.P3694360927115062122.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173262, Nat.add_sub_cancel, A173262.P16572651024905814820.a, A173262.P3694360927115062122.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173262

/-! ## A173262.P9956834421263267499

`or(1, A173193(n+1)+1)`
-/

namespace A173262.P9956834421263267499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A173193 (n + 1) + 1)

end

end A173262.P9956834421263267499

namespace A173262

/-- `or(1, A173193(n+1)+1)` -/
def P9956834421263267499.Spec : Prop :=
  ∀ n, P9956834421263267499.a n = A173262 (n + 1)

end A173262

/-! ## A173262.P5276050666134896411

`or(1, 2*A173735(n+1))`
-/

namespace A173262.P5276050666134896411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A173735 (n + 1))

end

end A173262.P5276050666134896411

namespace A173262

/-- `or(1, 2*A173735(n+1))` -/
def P5276050666134896411.Spec : Prop :=
  ∀ n, P5276050666134896411.a n = A173262 (n + 1)

end A173262

/-! ## A173262.P15067224335580883782

`abs(1-10*(A002276(n)+1))`
-/

namespace A173262.P15067224335580883782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 10 * (A002276 n + 1)|

end

end A173262.P15067224335580883782

namespace A173262

/-- `abs(1-10*(A002276(n)+1))` -/
def P15067224335580883782.Spec : Prop :=
  ∀ n, P15067224335580883782.a n = A173262 (n + 1)

end A173262

/-! ## A173262.P4074091008007411223

`ceil((∑[A090019(n+1)]+20)/3)`
-/

namespace A173262.P4074091008007411223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 20 : ℤ) : ℚ) / 3⌉

end

end A173262.P4074091008007411223

namespace A173262

/-- `ceil((∑[A090019(n+1)]+20)/3)` -/
def P4074091008007411223.Spec : Prop :=
  ∀ n, P4074091008007411223.a n = A173262 (n + 1)

end A173262

/-! ## A173262.P10590912804584755591

`∑[10^n*A040080(A004273(n))]`
-/

namespace A173262.P10590912804584755591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A040080 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173262.P10590912804584755591

namespace A173262

/-- `∑[10^n*A040080(A004273(n))]` -/
def P10590912804584755591.Spec : Prop :=
  ∀ n, P10590912804584755591.a n = A173262 (n + 1)

end A173262

/-! ## A173262.P2404436084389258373

`∑[10^n*A291363(A103517(n))]`
-/

namespace A173262.P2404436084389258373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A291363 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173262.P2404436084389258373

namespace A173262

/-- `∑[10^n*A291363(A103517(n))]` -/
def P2404436084389258373.Spec : Prop :=
  ∀ n, P2404436084389258373.a n = A173262 (n + 1)

end A173262

/-!
# A173263: Successive numbers n such that ChebyshevT[n/2, n] is not an integer.

The programs for A173263, the canonical program `A173263.P8165751700118268913` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173263 has offset 1).

The definition of A173263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173263.P18285491090691183243

`2*comp[n²]-1`
-/

namespace A173263.P18285491090691183243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A173263.P18285491090691183243

namespace A173263

/-- `2*comp[n²]-1` -/
def P18285491090691183243.Spec : Prop :=
  ∀ n, P18285491090691183243.a n = A173263 (n + 1)

end A173263

/-! ## A173263.P989004156398800537

`round(C(comp[n²]+n+1, 2)/(n+1))`
-/

namespace A173263.P989004156398800537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1)) 2 : ℚ) / (n + 1 : ℚ))

end

end A173263.P989004156398800537

namespace A173263

/-- `round(C(comp[n²]+n+1, 2)/(n+1))` -/
def P989004156398800537.Spec : Prop :=
  ∀ n, P989004156398800537.a n = A173263 (n + 1)

end A173263

/-! ## A173263.P1463237713800163308

`A004273(comp[n²])`
-/

namespace A173263.P1463237713800163308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173263.P1463237713800163308

namespace A173263

/-- `A004273(comp[n²])` -/
def P1463237713800163308.Spec : Prop :=
  ∀ n, P1463237713800163308.a n = A173263 (n + 1)

end A173263

/-! ## A173263.P2172304600736940149

`A060747(comp[n²])`
-/

namespace A173263.P2172304600736940149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173263.P2172304600736940149

namespace A173263

/-- `A060747(comp[n²])` -/
def P2172304600736940149.Spec : Prop :=
  ∀ n, P2172304600736940149.a n = A173263 (n + 1)

end A173263

/-! ## A173263.P102335954448072714

`eq[0, A046920(n+3)]`
-/

namespace A173263.P102335954448072714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173263.P102335954448072714

namespace A173263

/-- `eq[0, A046920(n+3)]` -/
def P102335954448072714.Spec : Prop :=
  ∀ n, (P102335954448072714.a n : ℤ) = A173263 (n + 1)

end A173263

/-! ## A173263.P6375521506490174954

`eq[0, A046922(n+3)]`
-/

namespace A173263.P6375521506490174954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173263.P6375521506490174954

namespace A173263

/-- `eq[0, A046922(n+3)]` -/
def P6375521506490174954.Spec : Prop :=
  ∀ n, (P6375521506490174954.a n : ℤ) = A173263 (n + 1)

end A173263

/-! ## A173263.P3782743997445386736

`A004280(comp[n²]+1)`
-/

namespace A173263.P3782743997445386736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A173263.P3782743997445386736

namespace A173263

/-- `A004280(comp[n²]+1)` -/
def P3782743997445386736.Spec : Prop :=
  ∀ n, P3782743997445386736.a n = A173263 (n + 1)

end A173263

/-! ## A173263.P5060774025744333435

`A005408(comp[n²-1])`
-/

namespace A173263.P5060774025744333435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A173263.P5060774025744333435

namespace A173263

/-- `A005408(comp[n²-1])` -/
def P5060774025744333435.Spec : Prop :=
  ∀ n, P5060774025744333435.a n = A173263 (n + 1)

end A173263

/-! ## A173263.P1196679494204690061

`A144396(comp[n²-1])`
-/

namespace A173263.P1196679494204690061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A173263.P1196679494204690061

namespace A173263

/-- `A144396(comp[n²-1])` -/
def P1196679494204690061.Spec : Prop :=
  ∀ n, P1196679494204690061.a n = A173263 (n + 1)

end A173263

/-! ## A173263.P109439088945419647

`A014681(2*comp[n²])`
-/

namespace A173263.P109439088945419647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173263.P109439088945419647

namespace A173263

/-- `A014681(2*comp[n²])` -/
def P109439088945419647.Spec : Prop :=
  ∀ n, P109439088945419647.a n = A173263 (n + 1)

end A173263

/-! ## A173263.P2901097382277771615

`A023443(2*comp[n²])`
-/

namespace A173263.P2901097382277771615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173263.P2901097382277771615

namespace A173263

/-- `A023443(2*comp[n²])` -/
def P2901097382277771615.Spec : Prop :=
  ∀ n, P2901097382277771615.a n = A173263 (n + 1)

end A173263

/-! ## A173263.P13545404547337292248

`A063196(2*comp[n²])`
-/

namespace A173263.P13545404547337292248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173263.P13545404547337292248

namespace A173263

/-- `A063196(2*comp[n²])` -/
def P13545404547337292248.Spec : Prop :=
  ∀ n, P13545404547337292248.a n = A173263 (n + 1)

end A173263

/-! ## A173263.P4456143426698486203

`A199969(2*comp[n²])`
-/

namespace A173263.P4456143426698486203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173263.P4456143426698486203

namespace A173263

/-- `A199969(2*comp[n²])` -/
def P4456143426698486203.Spec : Prop :=
  ∀ n, P4456143426698486203.a n = A173263 (n + 1)

end A173263

/-! ## A173263.P17805067751999755899

`A130824(comp[n²])/2`
-/

namespace A173263.P17805067751999755899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130824 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A173263.P17805067751999755899

namespace A173263

/-- `A130824(comp[n²])/2` -/
def P17805067751999755899.Spec : Prop :=
  ∀ n, P17805067751999755899.a n = (A173263 (n + 1) : ℚ)

end A173263

/-! ## A173263.P7220591614087510401

`or(1, A078633(n+1)-2)`
-/

namespace A173263.P7220591614087510401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A078633 (n + 1) - 2)

end

end A173263.P7220591614087510401

namespace A173263

/-- `or(1, A078633(n+1)-2)` -/
def P7220591614087510401.Spec : Prop :=
  ∀ n, P7220591614087510401.a n = A173263 (n + 1)

end A173263

/-! ## A173263.P8165751700118268913

`or(1, A047839(2*n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173263

/-- `or(1, A047839(2*n+1))` -/
def P8165751700118268913.Spec : Prop :=
  ∀ n, P8165751700118268913.a n = A173263 (n + 1)

theorem P8165751700118268913.correct : P8165751700118268913.Spec := by
  intro n
  simp only [A173263, Nat.add_sub_cancel]

end A173263

/-! ## A173263.P7650835021428959395

`or(1, A183572(2*n+1))`
-/

namespace A173263.P7650835021428959395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183572 (2 * n + 1))

end

end A173263.P7650835021428959395

namespace A173263

/-- `or(1, A183572(2*n+1))` -/
def P7650835021428959395.Spec : Prop :=
  ∀ n, P7650835021428959395.a n = A173263 (n + 1)

end A173263

/-!
# A173264: T(0,k) = 1 and T(n,k) = [x^k] ((x - 2)*x^n + 1)/((x - 1)*(x + 1)^n) for n >= 1, square array read by descending antidiagonals (n >= 0, k >= 0).

The programs for A173264, there is no canonical definition to state claims against.
-/

/-! ## A173264.P3268092473585085560

`A278402(A157397(n+1))%5`
-/

namespace A173264.P3268092473585085560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278402 (A157397 (n + 1)).toNat) 5

end

end A173264.P3268092473585085560

/-! ## A173264.P17901856884440381100

`A115660(gcd(A122740(n+3), A197102(n+1)))`
-/

namespace A173264.P17901856884440381100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (Int.gcd (A122740 (n + 3)) (A197102 (n + 1)))

end

end A173264.P17901856884440381100

/-!
# A173265: T(0,k) = 1 and T(n,k) = [x^k] (1 - x^(n + 1))/(1 - x)^(n + 1) for n >= 1, square array read by descending antidiagonals(n >= 0, k >= 0).

The programs for A173265, there is no canonical definition to state claims against.
-/

/-! ## A173265.P16154347708315670486

`A317023(char[∑[n]]+∑[2*n]%comp[∑[n]])`
-/

namespace A173265.P16154347708315670486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317023 ((if ∃ j, f1 j = n then 1 else 0) + (∑ j ∈ Finset.range (n + 1), f3 j) % SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A173265.P16154347708315670486

/-! ## A173265.P18226732375927202221

`A317023(A061579(n)+char[∑[n]])`
-/

namespace A173265.P18226732375927202221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317023 (A061579 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A173265.P18226732375927202221

/-! ## A173265.P11192021381680238212

`A317023(A038722(n+1)-1)+char[∑[n+1]]`
-/

namespace A173265.P11192021381680238212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317023 (A038722 (n + 1) - 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A173265.P11192021381680238212

/-! ## A173265.P4717181501162586343

`A317023(A061579(n))+A073424(n)`
-/

namespace A173265.P4717181501162586343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317023 (A061579 n).toNat + A073424 n

end

end A173265.P4717181501162586343

/-! ## A173265.P2493334243908479713

`A132749(n)-A284938(A278818(n))`
-/

namespace A173265.P2493334243908479713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n - A284938 (A278818 n).toNat

end

end A173265.P2493334243908479713

/-! ## A173265.P16216013291759127196

`A317023(A061579(n%A144404(n)))`
-/

namespace A173265.P16216013291759127196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317023 (A061579 (Int.tmod (n : ℤ) (A144404 n)).toNat).toNat

end

end A173265.P16216013291759127196

/-! ## A173265.P11289969953884480832

`A132749(n)-A284938(A038722(n+1))`
-/

namespace A173265.P11289969953884480832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n - A284938 (A038722 (n + 1)).toNat

end

end A173265.P11289969953884480832

/-! ## A173265.P17206122128174651056

`A317023(A061579(n)*A114607(n+1))`
-/

namespace A173265.P17206122128174651056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317023 (A061579 n * A114607 (n + 1)).toNat

end

end A173265.P17206122128174651056

/-! ## A173265.P13630710824376725475

`A317023((1-A010054(n))*A061579(n))`
-/

namespace A173265.P13630710824376725475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317023 ((1 - A010054 n) * A061579 n).toNat

end

end A173265.P13630710824376725475

/-! ## A173265.P15815979392916713979

`A007318(n)-A320508(n)%A007318(n)`
-/

namespace A173265.P15815979392916713979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - Int.tmod (A320508 n) (A007318 n)

end

end A173265.P15815979392916713979

/-!
# A173266: T(0,k) = 1 and T(n,k) = [x^k] (x^(n + 1) - 1)/((x - 2)*x^n + 1) for n >= 1, square array read by descending antidiagonals (n >= 0, k >= 0).

The programs for A173266, there is no canonical definition to state claims against.
-/

/-! ## A173266.P4889725171726322411

`A327276(A194959(n+1))^A014963(A010005(n))`
-/

namespace A173266.P4889725171726322411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327276 (A194959 (n + 1)).toNat : ℚ) ^ (A014963 (A010005 n).toNat : ℤ)

end

end A173266.P4889725171726322411

/-! ## A173266.P7180078901593271751

`A327276(A194959(n+1))%A014602(A007318(n))`
-/

namespace A173266.P7180078901593271751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327276 (A194959 (n + 1)).toNat) (A014602 (A007318 n).toNat)

end

end A173266.P7180078901593271751

/-! ## A173266.P8412815842373920023

`A152860(n)%A006530(A294961(A127123(n+1)))`
-/

namespace A173266.P8412815842373920023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152860 n) (A006530 (A294961 (A127123 (n + 1)).toNat).toNat)

end

end A173266.P8412815842373920023

/-! ## A173266.P11358957238759602736

`A327276(A194959(n+1)%A039774(n+1))`
-/

namespace A173266.P11358957238759602736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (Int.tmod (A194959 (n + 1)) (A039774 (n + 1))).toNat

end

end A173266.P11358957238759602736

/-! ## A173266.P409469787362979730

`A327276(A194980(n+1)%A039774(n+1))`
-/

namespace A173266.P409469787362979730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (Int.tmod (A194980 (n + 1)) (A039774 (n + 1))).toNat

end

end A173266.P409469787362979730

/-!
# A173267: a(n) = 121*n^2 + n.

The programs for A173267, the canonical program `A173267.P14081568357228136944` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173267 has offset 1).

The definition of A173267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `121*(n+1)²+n+1` (program `A173267.P14081568357228136944`, by `A173267.P14081568357228136944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173267.P14081568357228136944

`121*(n+1)²+n+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173267

/-- `121*(n+1)²+n+1` -/
def P14081568357228136944.Spec : Prop :=
  ∀ n, (P14081568357228136944.a n : ℤ) = A173267 (n + 1)

theorem P14081568357228136944.correct : P14081568357228136944.Spec := by
  intro n
  simp only [A173267, Nat.add_sub_cancel]

end A173267

/-! ## A173267.P9600390698195411895

`(n+1)*A158131(n+1)`
-/

namespace A173267.P9600390698195411895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158131 (n + 1)

end

end A173267.P9600390698195411895

namespace A173267

/-- `(n+1)*A158131(n+1)` -/
def P9600390698195411895.Spec : Prop :=
  ∀ n, P9600390698195411895.a n = A173267 (n + 1)

end A173267

/-! ## A173267.P3235502889261450507

`(n+1)*(A158130(n+1)+2)`
-/

namespace A173267.P3235502889261450507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158130 (n + 1) + 2)

end

end A173267.P3235502889261450507

namespace A173267

/-- `(n+1)*(A158130(n+1)+2)` -/
def P3235502889261450507.Spec : Prop :=
  ∀ n, P3235502889261450507.a n = A173267 (n + 1)

end A173267

/-! ## A173267.P9218985440754562852

`lcm(A000027(n+1), A158131(n+1))`
-/

namespace A173267.P9218985440754562852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A158131 (n + 1))

end

end A173267.P9218985440754562852

namespace A173267

/-- `lcm(A000027(n+1), A158131(n+1))` -/
def P9218985440754562852.Spec : Prop :=
  ∀ n, (P9218985440754562852.a n : ℤ) = A173267 (n + 1)

end A173267

/-! ## A173267.P3213969805953719911

`A181679(2*(n+1))/4`
-/

namespace A173267.P3213969805953719911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181679 (2 * (n + 1)) : ℚ) / 4

end

end A173267.P3213969805953719911

namespace A173267

/-- `A181679(2*(n+1))/4` -/
def P3213969805953719911.Spec : Prop :=
  ∀ n, P3213969805953719911.a n = (A173267 (n + 1) : ℚ)

end A173267

/-!
# A173268: Fibonacci numbers that produce primes when their digits are reversed.

The programs for A173268, there is no canonical definition to state claims against.
-/

/-! ## A173268.P9092394513160461790

`A000045(A036971(n+1))`
-/

namespace A173268.P9092394513160461790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A036971 (n + 1)).toNat

end

end A173268.P9092394513160461790

/-! ## A173268.P14120196994585599651

`A212804(A036971(n+1)+1)`
-/

namespace A173268.P14120196994585599651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A036971 (n + 1) + 1).toNat

end

end A173268.P14120196994585599651

/-! ## A173268.P2738292750537740270

`A324969(A036971(n+1)+1)`
-/

namespace A173268.P2738292750537740270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A036971 (n + 1) + 1).toNat

end

end A173268.P2738292750537740270

/-! ## A173268.P9313930852319651386

`A020695(A036971(n+1)-3)`
-/

namespace A173268.P9313930852319651386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A036971 (n + 1) - 3).toNat

end

end A173268.P9313930852319651386

/-! ## A173268.P7438407319427095655

`A053602(2*A036971(n+1))`
-/

namespace A173268.P7438407319427095655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A036971 (n + 1)).toNat

end

end A173268.P7438407319427095655

/-!
# A173269: 2*prime(prime(n))-3 and 3*prime(prime(n))-2 are both primes.

The programs for A173269, there is no canonical definition to state claims against.
-/

/-! ## A173269.P16938690176730370702

`A000720(p?[A000720(A259730(n+1))])`
-/

namespace A173269.P16938690176730370702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A259730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173269.P16938690176730370702

/-! ## A173269.P9178258684253297982

`A061395(p?[A061395(A259730(n+1))])`
-/

namespace A173269.P9178258684253297982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A259730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173269.P9178258684253297982

/-! ## A173269.P12221408583141823588

`A066328(p?[A066328(A259730(n+1))])`
-/

namespace A173269.P12221408583141823588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A259730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173269.P12221408583141823588

/-! ## A173269.P9065871615602631235

`A263297(p?[A263297(A259730(n+1))])`
-/

namespace A173269.P9065871615602631235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A259730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173269.P9065871615602631235

/-! ## A173269.P4119964592388417673

`A344616(p?[A344616(A259730(n+1))])`
-/

namespace A173269.P4119964592388417673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A259730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173269.P4119964592388417673

/-!
# A173270: Partial sums of A001037, the number of degree-n irreducible polynomials over GF(2).

The programs for A173270, the canonical program `A173270.P9959685970867206750` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173270 has offset 0).

The definition of A173270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173270.P9959685970867206750

`∑[A001037(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A173270

/-- `∑[A001037(n)]` -/
def P9959685970867206750.Spec : Prop :=
  ∀ n, P9959685970867206750.a n = A173270 n

theorem P9959685970867206750.correct : P9959685970867206750.Spec := by
  intro n
  simp only [A173270]

end A173270

/-! ## A173270.P16932647387036372937

`∑[A059966(C(2, n²)+n)]`
-/

namespace A173270.P16932647387036372937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (Nat.choose 2 (n ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173270.P16932647387036372937

namespace A173270

/-- `∑[A059966(C(2, n²)+n)]` -/
def P16932647387036372937.Spec : Prop :=
  ∀ n, P16932647387036372937.a n = A173270 n

end A173270

/-! ## A173270.P11443523103184949159

`∑[A059966(or(n, C(3, n²)))]`
-/

namespace A173270.P11443523103184949159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (Nat.lor n (Nat.choose 3 (n ^ 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173270.P11443523103184949159

namespace A173270

/-- `∑[A059966(or(n, C(3, n²)))]` -/
def P11443523103184949159.Spec : Prop :=
  ∀ n, P11443523103184949159.a n = A173270 n

end A173270

/-! ## A173270.P14839000455151243530

`A059966(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A173270.P14839000455151243530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A059966 n + a (n - 1)

end

end A173270.P14839000455151243530

namespace A173270

/-- `A059966(n)+a(n-1)` -/
def P14839000455151243530.Spec : Prop :=
  ∀ n, P14839000455151243530.a n = A173270 n

end A173270

/-! ## A173270.P9496302987371415434

`A060477(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A173270.P9496302987371415434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A060477 n + a (n - 1)

end

end A173270.P9496302987371415434

namespace A173270

/-- `A060477(n)+a(n-1)` -/
def P9496302987371415434.Spec : Prop :=
  ∀ n, P9496302987371415434.a n = A173270 n

end A173270

/-! ## A173270.P2579014208253943422

`∑[∑{d}[n+1, A054154(#-1)]]`
-/

namespace A173270.P2579014208253943422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A054154 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173270.P2579014208253943422

namespace A173270

/-- `∑[∑{d}[n+1, A054154(#-1)]]` -/
def P2579014208253943422.Spec : Prop :=
  ∀ n, P2579014208253943422.a n = A173270 n

end A173270

/-! ## A173270.P1782021212556161406

`A001115(2*n)+1-A001037(2*n)`
-/

namespace A173270.P1782021212556161406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001115 (2 * n) + (1 - A001037 (2 * n))

end

end A173270.P1782021212556161406

namespace A173270

/-- `A001115(2*n)+1-A001037(2*n)` -/
def P1782021212556161406.Spec : Prop :=
  ∀ n, P1782021212556161406.a n = A173270 n

end A173270

/-! ## A173270.P67634862559078253

`∑[A123223(∑[n])]`
-/

namespace A173270.P67634862559078253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173270.P67634862559078253

namespace A173270

/-- `∑[A123223(∑[n])]` -/
def P67634862559078253.Spec : Prop :=
  ∀ n, P67634862559078253.a n = A173270 n

end A173270

/-!
# A173271: Partial sums of A000105.

The programs for A173271, there is no canonical definition to state claims against.
-/

/-! ## A173271.P8783006522590787536

`∑[A000105(n)]`
-/

namespace A173271.P8783006522590787536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173271.P8783006522590787536

/-! ## A173271.P4618356748749500697

`∑[A006765(floor(acot(n)+n))+1]`
-/

namespace A173271.P4618356748749500697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173271.P4618356748749500697

/-! ## A173271.P4848043202890810218

`∑[A006765(round(acot(n)+n))+1]`
-/

namespace A173271.P4848043202890810218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173271.P4848043202890810218

/-! ## A173271.P11001212299110322039

`a(n-1)+A006765(n)+1` with `a(0)=1`
-/

namespace A173271.P11001212299110322039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A006765 n + 1)

end

end A173271.P11001212299110322039

/-! ## A173271.P2360245346908591633

`∑[A006765(A028310(n))+1]`
-/

namespace A173271.P2360245346908591633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173271.P2360245346908591633

/-! ## A173271.P5912376188490958082

`A130866(n+1)-A006765(n+1)`
-/

namespace A173271.P5912376188490958082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130866 (n + 1) - A006765 (n + 1)

end

end A173271.P5912376188490958082

/-!
# A173275: a(n) = 169*n^2 + n.

The programs for A173275, the canonical program `A173275.P6675837448039352178` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173275 has offset 1).

The definition of A173275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `169*(n+1)²+n+1` (program `A173275.P6675837448039352178`, by `A173275.P6675837448039352178.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173275.P6675837448039352178

`169*(n+1)²+n+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173275

/-- `169*(n+1)²+n+1` -/
def P6675837448039352178.Spec : Prop :=
  ∀ n, (P6675837448039352178.a n : ℤ) = A173275 (n + 1)

theorem P6675837448039352178.correct : P6675837448039352178.Spec := by
  intro n
  simp only [A173275, Nat.add_sub_cancel]

end A173275

/-! ## A173275.P7712535467232128738

`(n+1)*A158221(n+1)`
-/

namespace A173275.P7712535467232128738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158221 (n + 1)

end

end A173275.P7712535467232128738

namespace A173275

/-- `(n+1)*A158221(n+1)` -/
def P7712535467232128738.Spec : Prop :=
  ∀ n, P7712535467232128738.a n = A173275 (n + 1)

end A173275

/-! ## A173275.P833526882579221544

`(n+1)*(A158219(n+1)+2)`
-/

namespace A173275.P833526882579221544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158219 (n + 1) + 2)

end

end A173275.P833526882579221544

namespace A173275

/-- `(n+1)*(A158219(n+1)+2)` -/
def P833526882579221544.Spec : Prop :=
  ∀ n, P833526882579221544.a n = A173275 (n + 1)

end A173275

/-! ## A173275.P1804967151028088433

`lcm(A000027(n+1), A158221(n+1))`
-/

namespace A173275.P1804967151028088433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A158221 (n + 1))

end

end A173275.P1804967151028088433

namespace A173275

/-- `lcm(A000027(n+1), A158221(n+1))` -/
def P1804967151028088433.Spec : Prop :=
  ∀ n, (P1804967151028088433.a n : ℤ) = A173275 (n + 1)

end A173275

/-! ## A173275.P9951224952240904142

`A158220(2*(n+1))/4`
-/

namespace A173275.P9951224952240904142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158220 (2 * (n + 1)) : ℚ) / 4

end

end A173275.P9951224952240904142

namespace A173275

/-- `A158220(2*(n+1))/4` -/
def P9951224952240904142.Spec : Prop :=
  ∀ n, P9951224952240904142.a n = (A173275 (n + 1) : ℚ)

end A173275

/-! ## A173275.P6274829627890102062

`(n+1)*A190991(A008595(n+1))`
-/

namespace A173275.P6274829627890102062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A190991 (A008595 (n + 1)).toNat

end

end A173275.P6274829627890102062

namespace A173275

/-- `(n+1)*A190991(A008595(n+1))` -/
def P6274829627890102062.Spec : Prop :=
  ∀ n, P6274829627890102062.a n = A173275 (n + 1)

end A173275

/-!
# A173276: a(n) = a(n-2) + a(n-3) - floor(a(n-3)/2) - floor(a(n-4)/2).

The programs for A173276, the canonical program `A173276.P6727706024009228584` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173276 has offset 0).

The definition of A173276 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)-floor(a(n-3)/2)-floor(a(n-4)/2)` (program `A173276.P6727706024009228584`, by `A173276.P6727706024009228584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173276.P15002713419514577953

`floor((2*n+5)/5)`
-/

namespace A173276.P15002713419514577953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 5 : ℚ) / 5⌋

end

end A173276.P15002713419514577953

namespace A173276

/-- `floor((2*n+5)/5)` -/
def P15002713419514577953.Spec : Prop :=
  ∀ n, P15002713419514577953.a n = A173276 n

end A173276

/-! ## A173276.P8424143456639629177

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3`
-/

namespace A173276.P8424143456639629177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 3] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A173276.P8424143456639629177

namespace A173276

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P8424143456639629177.Spec : Prop :=
  ∀ n, P8424143456639629177.a n = A173276 n

end A173276

/-! ## A173276.P6727706024009228584

`a(n-2)+a(n-3)-floor(a(n-3)/2)-floor(a(n-4)/2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173276

/-- `a(n-2)+a(n-3)-floor(a(n-3)/2)-floor(a(n-4)/2)` -/
def P6727706024009228584.Spec : Prop :=
  ∀ n, P6727706024009228584.a n = A173276 n

theorem P6727706024009228584.correct : P6727706024009228584.Spec := by
  intro n
  simp only [A173276]

end A173276

/-! ## A173276.P988190125726738041

`∑[round(cos(n%5)²)]`
-/

namespace A173276.P988190125726738041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((n % 5 : ℕ) : ℝ) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173276.P988190125726738041

namespace A173276

/-- `∑[round(cos(n%5)²)]` -/
def P988190125726738041.Spec : Prop :=
  ∀ n, P988190125726738041.a n = A173276 n

end A173276

/-! ## A173276.P27995934853109329

`∑[((n+3)%5)%2]`
-/

namespace A173276.P27995934853109329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) % 5 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173276.P27995934853109329

namespace A173276

/-- `∑[((n+3)%5)%2]` -/
def P27995934853109329.Spec : Prop :=
  ∀ n, (P27995934853109329.a n : ℤ) = A173276 n

end A173276

/-! ## A173276.P8738955043770927866

`∑[ceil(cos((2*n)%5))]`
-/

namespace A173276.P8738955043770927866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((2 * n % 5 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173276.P8738955043770927866

namespace A173276

/-- `∑[ceil(cos((2*n)%5))]` -/
def P8738955043770927866.Spec : Prop :=
  ∀ n, P8738955043770927866.a n = A173276 n

end A173276

/-! ## A173276.P9676237055843423933

`round(cos(1)+2*n/5)`
-/

namespace A173276.P9676237055843423933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((2 * n : ℚ) / 5 : ℝ))

end

end A173276.P9676237055843423933

namespace A173276

/-- `round(cos(1)+2*n/5)` -/
def P9676237055843423933.Spec : Prop :=
  ∀ n, P9676237055843423933.a n = A173276 n

end A173276

/-! ## A173276.P10134270466709871724

`round(2*n/5-cos(4))`
-/

namespace A173276.P10134270466709871724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℚ) / 5 : ℝ) - Real.cos (4 : ℝ))

end

end A173276.P10134270466709871724

namespace A173276

/-- `round(2*n/5-cos(4))` -/
def P10134270466709871724.Spec : Prop :=
  ∀ n, P10134270466709871724.a n = A173276 n

end A173276

/-! ## A173276.P13761797924845390958

`round((2*n-tan(5))/5)`
-/

namespace A173276.P13761797924845390958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.tan (5 : ℝ)) / 5)

end

end A173276.P13761797924845390958

namespace A173276

/-- `round((2*n-tan(5))/5)` -/
def P13761797924845390958.Spec : Prop :=
  ∀ n, P13761797924845390958.a n = A173276 n

end A173276

/-! ## A173276.P3777239871554688882

`round(sin(7)+2*n/5)`
-/

namespace A173276.P3777239871554688882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (7 : ℝ) + ((2 * n : ℚ) / 5 : ℝ))

end

end A173276.P3777239871554688882

namespace A173276

/-- `round(sin(7)+2*n/5)` -/
def P3777239871554688882.Spec : Prop :=
  ∀ n, P3777239871554688882.a n = A173276 n

end A173276

/-! ## A173276.P2803362865622547481

`round(cot(1)+2*n/5)`
-/

namespace A173276.P2803362865622547481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (1 : ℝ) + ((2 * n : ℚ) / 5 : ℝ))

end

end A173276.P2803362865622547481

namespace A173276

/-- `round(cot(1)+2*n/5)` -/
def P2803362865622547481.Spec : Prop :=
  ∀ n, P2803362865622547481.a n = A173276 n

end A173276

/-! ## A173276.P2837206789500031765

`round((2*n-cot(6))/5)`
-/

namespace A173276.P2837206789500031765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.cot (6 : ℝ)) / 5)

end

end A173276.P2837206789500031765

namespace A173276

/-- `round((2*n-cot(6))/5)` -/
def P2837206789500031765.Spec : Prop :=
  ∀ n, P2837206789500031765.a n = A173276 n

end A173276

/-! ## A173276.P16332512703784028748

`round((cosh(ϕ)+2*n)/5)`
-/

namespace A173276.P16332512703784028748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cosh Real.goldenRatio + (2 * n : ℝ)) / 5)

end

end A173276.P16332512703784028748

namespace A173276

/-- `round((cosh(ϕ)+2*n)/5)` -/
def P16332512703784028748.Spec : Prop :=
  ∀ n, P16332512703784028748.a n = A173276 n

end A173276

/-! ## A173276.P14706956225784192690

`a(n-5)+2` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A173276.P14706956225784192690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n a =>
  a (n - 5) + 2

end

end A173276.P14706956225784192690

namespace A173276

/-- `a(n-5)+2` -/
def P14706956225784192690.Spec : Prop :=
  ∀ n, (P14706956225784192690.a n : ℤ) = A173276 n

end A173276

/-! ## A173276.P10731085009131351421

`∑[abs(a(n-5))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0`
-/

namespace A173276.P10731085009131351421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 0] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173276.P10731085009131351421

namespace A173276

/-- `∑[abs(a(n-5))]` -/
def P10731085009131351421.Spec : Prop :=
  ∀ n, (P10731085009131351421.a n : ℤ) = A173276 n

end A173276

/-! ## A173276.P585028514447208758

`∑[a(n-5)²]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0`
-/

namespace A173276.P585028514447208758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 0] fun n f1 =>
  f1 (n - 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173276.P585028514447208758

namespace A173276

/-- `∑[a(n-5)²]` -/
def P585028514447208758.Spec : Prop :=
  ∀ n, (P585028514447208758.a n : ℤ) = A173276 n

end A173276

/-! ## A173276.P9133909513437583374

`∑[sqrt(a(n-5))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0`
-/

namespace A173276.P9133909513437583374
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 0, 1, 0] fun n f1 =>
  Real.sqrt (f1 (n - 5))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173276.P9133909513437583374

namespace A173276

/-- `∑[sqrt(a(n-5))]` -/
def P9133909513437583374.Spec : Prop :=
  ∀ n, P9133909513437583374.a n = (A173276 n : ℝ)

end A173276

/-! ## A173276.P2771827231899764007

`∑[dr(a(n-5))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0`
-/

namespace A173276.P2771827231899764007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 0] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 5) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173276.P2771827231899764007

namespace A173276

/-- `∑[dr(a(n-5))]` -/
def P2771827231899764007.Spec : Prop :=
  ∀ n, (P2771827231899764007.a n : ℤ) = A173276 n

end A173276

/-!
# A173277: A(x) satisfies A000290(x)/x^2 = A(x)/A(x^2); A000290 = integer squares.

The programs for A173277, there is no canonical definition to state claims against.
-/

/-! ## A173277.P1946965726994592149

`∑[A373309(n)]`
-/

namespace A173277.P1946965726994592149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173277.P1946965726994592149

/-! ## A173277.P5433527548863444603

`∑[A345167(A131205(n+1))+1]`
-/

namespace A173277.P5433527548863444603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A131205 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173277.P5433527548863444603

/-! ## A173277.P7070278296890211769

`A243283(∑[A014162(2*n+1)])`
-/

namespace A173277.P7070278296890211769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A173277.P7070278296890211769

/-!
# A173278: Partial sums of A000048.

The programs for A173278, the canonical program `A173278.P14580125724623708890` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173278 has offset 0).

The definition of A173278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173278.P7370077297963878641

`∑[A000048(n)]`
-/

namespace A173278.P7370077297963878641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173278.P7370077297963878641

namespace A173278

/-- `∑[A000048(n)]` -/
def P7370077297963878641.Spec : Prop :=
  ∀ n, P7370077297963878641.a n = A173278 n

end A173278

/-! ## A173278.P14580125724623708890

`A056303(n)+a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A173278

/-- `A056303(n)+a(n-1)` -/
def P14580125724623708890.Spec : Prop :=
  ∀ n, P14580125724623708890.a n = A173278 n

theorem P14580125724623708890.correct : P14580125724623708890.Spec := by
  intro n
  simp only [A173278]

end A173278

/-! ## A173278.P1921473657223822015

`∑[∑{d}[n+1, A054174(#-1)]]`
-/

namespace A173278.P1921473657223822015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A054174 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173278.P1921473657223822015

namespace A173278

/-- `∑[∑{d}[n+1, A054174(#-1)]]` -/
def P1921473657223822015.Spec : Prop :=
  ∀ n, P1921473657223822015.a n = A173278 n

end A173278

/-! ## A173278.P2097559307510822156

`∑[A045686(n)+A045683(n)]`
-/

namespace A173278.P2097559307510822156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045686 n + A045683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173278.P2097559307510822156

namespace A173278

/-- `∑[A045686(n)+A045683(n)]` -/
def P2097559307510822156.Spec : Prop :=
  ∀ n, P2097559307510822156.a n = A173278 n

end A173278

/-! ## A173278.P9117096048494402038

`∑[A045683(2*n)/A028310(n)]`
-/

namespace A173278.P9117096048494402038
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045683 (2 * n) : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173278.P9117096048494402038

namespace A173278

/-- `∑[A045683(2*n)/A028310(n)]` -/
def P9117096048494402038.Spec : Prop :=
  ∀ n, P9117096048494402038.a n = (A173278 n : ℚ)

end A173278

/-! ## A173278.P6602513067343060395

`∑[A045663(n)/A004277(n)]`
-/

namespace A173278.P6602513067343060395
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 n : ℚ) / (A004277 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173278.P6602513067343060395

namespace A173278

/-- `∑[A045663(n)/A004277(n)]` -/
def P6602513067343060395.Spec : Prop :=
  ∀ n, P6602513067343060395.a n = (A173278 n : ℚ)

end A173278

/-! ## A173278.P8212580187290367325

`∑[A045663(n)/A004275(n+1)]`
-/

namespace A173278.P8212580187290367325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 n : ℚ) / (A004275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173278.P8212580187290367325

namespace A173278

/-- `∑[A045663(n)/A004275(n+1)]` -/
def P8212580187290367325.Spec : Prop :=
  ∀ n, P8212580187290367325.a n = (A173278 n : ℚ)

end A173278

/-! ## A173278.P8080795561789817442

`∑[A053633(∑[abs(1-n)])]`
-/

namespace A173278.P8080795561789817442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173278.P8080795561789817442

namespace A173278

/-- `∑[A053633(∑[abs(1-n)])]` -/
def P8080795561789817442.Spec : Prop :=
  ∀ n, P8080795561789817442.a n = A173278 n

end A173278

/-!
# A173279: Irregular triangle read by rows: M(n,k) = (n-2*k)!, k=0..floor(n/2).

The programs for A173279, there is no canonical definition to state claims against.
-/

/-! ## A173279.P13122913683911540036

`(C(ceil(2*sqrt(n+1)), 2)-n-(n-floor(sqrt(n)))-1)!`
-/

namespace A173279.P13122913683911540036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - ((n : ℤ) - (Nat.sqrt n : ℤ)) - 1).toNat

end

end A173279.P13122913683911540036

/-! ## A173279.P9921221891431070571

`A082375(n)!`
-/

namespace A173279.P9921221891431070571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A082375 n).toNat

end

end A173279.P9921221891431070571

/-! ## A173279.P1308457563507016976

`A025644(n+1)!`
-/

namespace A173279.P1308457563507016976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025644 (n + 1)).toNat

end

end A173279.P1308457563507016976

/-! ## A173279.P10592870081690459338

`ceil(log2(A119440(n)))!`
-/

namespace A173279.P10592870081690459338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈Real.logb 2 (A119440 n : ℝ)⌉.toNat

end

end A173279.P10592870081690459338

/-! ## A173279.P10784532883160930030

`floor(A152204(n)/2)!`
-/

namespace A173279.P10784532883160930030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(A152204 n : ℚ) / 2⌋.toNat

end

end A173279.P10784532883160930030

/-! ## A173279.P6447765193328813909

`val(record[A115216(n)], 2)!`
-/

namespace A173279.P6447765193328813909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2)

end

end A173279.P6447765193328813909

/-! ## A173279.P1400310993505090349

`(A122196(n+1)-1)!`
-/

namespace A173279.P1400310993505090349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A122196 (n + 1) - 1).toNat

end

end A173279.P1400310993505090349

/-! ## A173279.P16772659758296066726

`val(A062052(n+1), 2)!`
-/

namespace A173279.P16772659758296066726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A062052 (n + 1)).toNat 2)

end

end A173279.P16772659758296066726

/-! ## A173279.P7178186526426462578

`val(A025616(n+1), 3)!`
-/

namespace A173279.P7178186526426462578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A025616 (n + 1)).toNat 3)

end

end A173279.P7178186526426462578

/-! ## A173279.P13887588714662653648

`floor(A084346(n+1)/2)!`
-/

namespace A173279.P13887588714662653648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(A084346 (n + 1) : ℚ) / 2⌋.toNat

end

end A173279.P13887588714662653648

/-!
# A173280: First column of the matrix power A173279(.,.)^j in the limit j->infinity.

The programs for A173280, there is no canonical definition to state claims against.
-/

/-! ## A173280.P5911630355398800475

`A141477(n)-A001516(A103609(n))`
-/

namespace A173280.P5911630355398800475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141477 n - A001516 (A103609 n).toNat

end

end A173280.P5911630355398800475

/-! ## A173280.P17478934536497554806

`A141477(n)-A173068(A036839(n))`
-/

namespace A173280.P17478934536497554806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141477 n - A173068 (A036839 n).toNat

end

end A173280.P17478934536497554806

/-! ## A173280.P54590925275468091

`A141477(n)-A063691(A166861(n))`
-/

namespace A173280.P54590925275468091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141477 n - A063691 (A166861 n).toNat

end

end A173280.P54590925275468091

/-! ## A173280.P6307928646802662061

`A141477(n)-A049615(A224479(n))`
-/

namespace A173280.P6307928646802662061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141477 n - A049615 (A224479 n).toNat

end

end A173280.P6307928646802662061

/-!
# A173281: Let a(1) = 1. Given a(1), ..., a(2^t), find the least k such that a(1) + 2^k, a(2) + 2^k, ..., a(2^t) + 2^k are all composite and a(1) + 2^k > a(2^t). Then a(2^t+i) = a(i) + 2^k for all 1 <= i <= 2^t.

The programs for A173281, there is no canonical definition to state claims against.
-/

/-! ## A173281.P2095446754722673347

`∩[A017077(A004869(n+1)), A004917(n+1)]`
-/

namespace A173281.P2095446754722673347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A004869 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173281.P2095446754722673347

/-!
# A173282: Partial sums of A001190.

The programs for A173282, there is no canonical definition to state claims against.
-/

/-! ## A173282.P9522429859744120652

`∑[A001190(n)]`
-/

namespace A173282.P9522429859744120652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173282.P9522429859744120652

/-! ## A173282.P10171502630496162136

`∑[A036656(char[1]+n)]`
-/

namespace A173282.P10171502630496162136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173282.P10171502630496162136

/-! ## A173282.P4038993492566212103

`∑[or(char[1], A036656(n))]`
-/

namespace A173282.P4038993492566212103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) (A036656 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173282.P4038993492566212103

/-! ## A173282.P3570373658734776689

`A001190(C(2, n)+n)+a(n-1)` with `a(0)=0`
-/

namespace A173282.P3570373658734776689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001190 (Nat.choose 2 n + n) + a (n - 1)

end

end A173282.P3570373658734776689

/-! ## A173282.P14148714358299483827

`A057427(n)+∑[A036656(n)]`
-/

namespace A173282.P14148714358299483827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173282.P14148714358299483827

/-! ## A173282.P14765951804258550167

`∑[A036656(n)]-A057428(n)`
-/

namespace A173282.P14765951804258550167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057428 n

end

end A173282.P14765951804258550167

/-! ## A173282.P16790689374545417525

`A001221(A001316(n))+∑[A036656(n)]`
-/

namespace A173282.P16790689374545417525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173282.P16790689374545417525

/-! ## A173282.P7931891941264815754

`∑[A344613(2*(n+1))]-A344613(2*(n+1))`
-/

namespace A173282.P7931891941264815754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344613 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A344613 (2 * (n + 1))

end

end A173282.P7931891941264815754

/-! ## A173282.P7137210425237536797

`∑[A299038(A055998(n))]-1`
-/

namespace A173282.P7137210425237536797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A173282.P7137210425237536797

/-!
# A173283: A(x) satisfies A005408(x) = A(x)/A(x^2), A005408 = odd numbers.

The programs for A173283, there is no canonical definition to state claims against.
-/

/-! ## A173283.P10942815008325141892

`∑[A171238(n+1)]`
-/

namespace A173283.P10942815008325141892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173283.P10942815008325141892

/-! ## A173283.P8320503468642556363

`A171238(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A173283.P8320503468642556363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171238 (n + 1) + a (A023443 n).toNat

end

end A173283.P8320503468642556363

/-! ## A173283.P17739145480680363690

`A171238(n+1)+a(abs(A131738(n))-2)` with `a(0)=1`
-/

namespace A173283.P17739145480680363690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171238 (n + 1) + a (|A131738 n| - 2).toNat

end

end A173283.P17739145480680363690

/-! ## A173283.P11844657960410938750

`A171238(2*(n+1))-A171238(2*n+1)`
-/

namespace A173283.P11844657960410938750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171238 (2 * (n + 1)) - A171238 (2 * n + 1)

end

end A173283.P11844657960410938750

/-! ## A173283.P10839699832038467101

`record[Δ[A171238(A039729(n+1))]]`
-/

namespace A173283.P10839699832038467101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171238 (A039729 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173283.P10839699832038467101

/-! ## A173283.P929726850851688924

`record[Δ[A171238(A003056(3*n+2))]]`
-/

namespace A173283.P929726850851688924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171238 (A003056 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173283.P929726850851688924

/-!
# A173284: Triangle by columns, positive Fibonacci numbers in every column shifted down twice, for k > 0.

The programs for A173284, the canonical program `A173284.P13127677157600122299` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173284 has offset 0).

The definition of A173284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173284.P13127677157600122299

`A123231(A152204(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A173284

/-- `A123231(A152204(n))` -/
def P13127677157600122299.Spec : Prop :=
  ∀ n, P13127677157600122299.a n = A173284 n

theorem P13127677157600122299.correct : P13127677157600122299.Spec := by
  intro n
  simp only [A173284]

end A173284

/-! ## A173284.P2189520772083573731

`A000045(A122196(n+1))`
-/

namespace A173284.P2189520772083573731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A122196 (n + 1)).toNat

end

end A173284.P2189520772083573731

namespace A173284

/-- `A000045(A122196(n+1))` -/
def P2189520772083573731.Spec : Prop :=
  ∀ n, P2189520772083573731.a n = A173284 n

end A173284

/-! ## A173284.P15613261176341404241

`A163227(A084346(n+1))`
-/

namespace A173284.P15613261176341404241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (A084346 (n + 1)).toNat

end

end A173284.P15613261176341404241

namespace A173284

/-- `A163227(A084346(n+1))` -/
def P15613261176341404241.Spec : Prop :=
  ∀ n, P15613261176341404241.a n = A173284 n

end A173284

/-! ## A173284.P3988310763666195115

`A327035(A209634(n+1))`
-/

namespace A173284.P3988310763666195115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A209634 (n + 1)).toNat

end

end A173284.P3988310763666195115

namespace A173284

/-- `A327035(A209634(n+1))` -/
def P3988310763666195115.Spec : Prop :=
  ∀ n, P3988310763666195115.a n = A173284 n

end A173284

/-! ## A173284.P6598014787973261043

`A104762(A056536(n+1))`
-/

namespace A173284.P6598014787973261043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (A056536 (n + 1)).toNat

end

end A173284.P6598014787973261043

namespace A173284

/-- `A104762(A056536(n+1))` -/
def P6598014787973261043.Spec : Prop :=
  ∀ n, P6598014787973261043.a n = A173284 n

end A173284

/-! ## A173284.P18408352831337223770

`A202452(A274427(n+1))`
-/

namespace A173284.P18408352831337223770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202452 (A274427 (n + 1)).toNat

end

end A173284.P18408352831337223770

namespace A173284

/-- `A202452(A274427(n+1))` -/
def P18408352831337223770.Spec : Prop :=
  ∀ n, P18408352831337223770.a n = A173284 n

end A173284

/-! ## A173284.P12087216230439366660

`filter[A202452(n+1), A095076(#)]`
-/

namespace A173284.P12087216230439366660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095076 (f1 j).toNat = 1) n)

end

end A173284.P12087216230439366660

namespace A173284

/-- `filter[A202452(n+1), A095076(#)]` -/
def P12087216230439366660.Spec : Prop :=
  ∀ n, P12087216230439366660.a n = A173284 n

end A173284

/-! ## A173284.P13022672128410661457

`A129711(n)/A062557(n)`
-/

namespace A173284.P13022672128410661457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129711 n : ℚ) / (A062557 n : ℚ)

end

end A173284.P13022672128410661457

namespace A173284

/-- `A129711(n)/A062557(n)` -/
def P13022672128410661457.Spec : Prop :=
  ∀ n, P13022672128410661457.a n = (A173284 n : ℚ)

end A173284

/-! ## A173284.P11729580852489253090

`A000045(A199474(n+1)-A055087(n))`
-/

namespace A173284.P11729580852489253090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A199474 (n + 1) - A055087 n).toNat

end

end A173284.P11729580852489253090

namespace A173284

/-- `A000045(A199474(n+1)-A055087(n))` -/
def P11729580852489253090.Spec : Prop :=
  ∀ n, P11729580852489253090.a n = A173284 n

end A173284

/-! ## A173284.P9652019396792650337

`A204927(A169693(n+1))`
-/

namespace A173284.P9652019396792650337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204927 (A169693 (n + 1)).toNat

end

end A173284.P9652019396792650337

namespace A173284

/-- `A204927(A169693(n+1))` -/
def P9652019396792650337.Spec : Prop :=
  ∀ n, P9652019396792650337.a n = A173284 n

end A173284

/-!
# A173285: A(x) satisfies: Fibonacci(x)/x = A(x)/A(x^2).

The programs for A173285, the canonical program `A173285.P17321651225120668683` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173285 has offset 0).

The definition of A173285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173285.P17321651225120668683

`Δ[A298349(n)-A298348(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173285

/-- `Δ[A298349(n)-A298348(n)]` -/
def P17321651225120668683.Spec : Prop :=
  ∀ n, P17321651225120668683.a n = A173285 n

theorem P17321651225120668683.correct : P17321651225120668683.Spec := by
  intro n
  simp only [A173285]

end A173285

/-! ## A173285.P17020804918365814916

`A076411(A071724(n))+A003963(n+1)`
-/

namespace A173285.P17020804918365814916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (A071724 n).toNat + A003963 (n + 1)

end

end A173285.P17020804918365814916

namespace A173285

/-- `A076411(A071724(n))+A003963(n+1)` -/
def P17020804918365814916.Spec : Prop :=
  ∀ n, P17020804918365814916.a n = A173285 n

end A173285

/-! ## A173285.P3079040995251018041

`A000005(A000374(n+1)*A215716(n))`
-/

namespace A173285.P3079040995251018041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000374 (n + 1) * A215716 n).toNat

end

end A173285.P3079040995251018041

namespace A173285

/-- `A000005(A000374(n+1)*A215716(n))` -/
def P3079040995251018041.Spec : Prop :=
  ∀ n, P3079040995251018041.a n = A173285 n

end A173285

/-! ## A173285.P18056144503650337499

`A095861(A317875(n+1))+A086543(n+1)`
-/

namespace A173285.P18056144503650337499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A317875 (n + 1)).toNat + A086543 (n + 1)

end

end A173285.P18056144503650337499

namespace A173285

/-- `A095861(A317875(n+1))+A086543(n+1)` -/
def P18056144503650337499.Spec : Prop :=
  ∀ n, P18056144503650337499.a n = A173285 n

end A173285

/-! ## A173285.P16612689008667356718

`A212661(n+3)+A104305(A331606(n+1))`
-/

namespace A173285.P16612689008667356718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212661 (n + 3) + A104305 (A331606 (n + 1)).toNat

end

end A173285.P16612689008667356718

namespace A173285

/-- `A212661(n+3)+A104305(A331606(n+1))` -/
def P16612689008667356718.Spec : Prop :=
  ∀ n, P16612689008667356718.a n = A173285 n

end A173285

/-!
# A173286: 2*prime(prime(prime(n)))-3 and 3*prime(prime(prime(n)))-2 are both primes.

The programs for A173286, there is no canonical definition to state claims against.
-/

/-! ## A173286.P13355635299124883852

`A000720(p?[A173269(n+1)])`
-/

namespace A173286.P13355635299124883852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173286.P13355635299124883852

/-! ## A173286.P4267773516346921882

`A003963(p?[A173269(n+1)])`
-/

namespace A173286.P4267773516346921882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173286.P4267773516346921882

/-! ## A173286.P14336127041811977200

`A049084(p?[A173269(n+1)])`
-/

namespace A173286.P14336127041811977200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173286.P14336127041811977200

/-! ## A173286.P15285404990928712511

`record[A049084(A173269(n+2))]`
-/

namespace A173286.P15285404990928712511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A173269 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173286.P15285404990928712511

/-! ## A173286.P9209201796353553900

`A055396(p?[A173269(n+1)])`
-/

namespace A173286.P9209201796353553900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173286.P9209201796353553900

/-!
# A173287: Intersection of A173286 and A173269.

The programs for A173287, there is no canonical definition to state claims against.
-/

/-! ## A173287.P8156868715354940193

`∑[A273432(∑[A090021(n)])]`
-/

namespace A173287.P8156868715354940193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090021 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273432 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173287.P8156868715354940193

/-! ## A173287.P9521058866529649217

`A136687(A093990(n+1))-1`
-/

namespace A173287.P9521058866529649217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136687 (A093990 (n + 1)).toNat - 1

end

end A173287.P9521058866529649217

/-!
# A173288: Either n^2+n+{1,9} is prime.

The programs for A173288, there is no canonical definition to state claims against.
-/

/-! ## A173288.P6092624286378461018

`A000194(A173295(n+3))-1`
-/

namespace A173288.P6092624286378461018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A173295 (n + 3)).toNat - 1

end

end A173288.P6092624286378461018

/-! ## A173288.P12018885130506188308

`A000196(record[xor(5, A173295(n+1))])`
-/

namespace A173288.P12018885130506188308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A173295 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173288.P12018885130506188308

/-! ## A173288.P10313045894453920775

`A000196(A173295(n+3)-(n+3))`
-/

namespace A173288.P10313045894453920775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A173295 (n + 3) - (n + 3 : ℤ)).toNat

end

end A173288.P10313045894453920775

/-! ## A173288.P16917663864878669752

`A137734(A173295(n+3))-A007318(∑[n])`
-/

namespace A173288.P16917663864878669752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A173295 (n + 3)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173288.P16917663864878669752

/-! ## A173288.P6025622594913423394

`(A137734(A173295(n+3))-1)%A000040(n+2)`
-/

namespace A173288.P6025622594913423394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137734 (A173295 (n + 3)).toNat - 1) (A000040 (n + 2))

end

end A173288.P6025622594913423394

/-!
# A173289: Partial sums of A000602.

The programs for A173289, there is no canonical definition to state claims against.
-/

/-! ## A173289.P6828394495818004313

`∑[A000602(n)]`
-/

namespace A173289.P6828394495818004313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173289.P6828394495818004313

/-! ## A173289.P10184626288936144165

`A000602(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A173289.P10184626288936144165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000602 n + a (A023443 n).toNat

end

end A173289.P10184626288936144165

/-! ## A173289.P15198018705903295153

`∑[A000200(n)+A000022(n)]+1`
-/

namespace A173289.P15198018705903295153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000200 n + A000022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A173289.P15198018705903295153

/-! ## A173289.P15713498306860249259

`A000602(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A173289.P15713498306860249259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000602 n + a (A028310 n - 1).toNat

end

end A173289.P15713498306860249259

/-! ## A173289.P2160202139485976975

`A000602(n)+a(A000007(n)-1+n)` with `a(0)=1`
-/

namespace A173289.P2160202139485976975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000602 n + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A173289.P2160202139485976975

/-! ## A173289.P16016396465144051968

`a(n-1)+A000602(n)+A000038(n)` with `a(0)=1`
-/

namespace A173289.P16016396465144051968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000602 n + A000038 n)

end

end A173289.P16016396465144051968

/-! ## A173289.P6979230054495292241

`a(n-1)+A000602(n)*A057427(n)` with `a(0)=1`
-/

namespace A173289.P6979230054495292241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000602 n * A057427 n

end

end A173289.P6979230054495292241

/-! ## A173289.P2597665826302906657

`∑[A000200(n)+A000022(A028310(n))]`
-/

namespace A173289.P2597665826302906657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000200 n + A000022 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173289.P2597665826302906657

/-!
# A173290: Partial sums of A001615.

The programs for A173290, the canonical program `A173290.P15347892615979240028` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173290 has offset 1).

The definition of A173290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173290.P11892822486082718864

`∑[∑{d}[∏{p}[n+1, #], (n+1)/#]]`
-/

namespace A173290.P11892822486082718864
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P11892822486082718864

namespace A173290

/-- `∑[∑{d}[∏{p}[n+1, #], (n+1)/#]]` -/
def P11892822486082718864.Spec : Prop :=
  ∀ n, P11892822486082718864.a n = (A173290 (n + 1) : ℚ)

end A173290

/-! ## A173290.P2409332955133527424

`∑{d}[∏{p}[n+1, #], (n+1)/#]+a(n-1)` with `a(0)=1`
-/

namespace A173290.P2409332955133527424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) + a (n - 1)

end

end A173290.P2409332955133527424

namespace A173290

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]+a(n-1)` -/
def P2409332955133527424.Spec : Prop :=
  ∀ n, P2409332955133527424.a n = (A173290 (n + 1) : ℚ)

end A173290

/-! ## A173290.P6273852392947741836

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]]`
-/

namespace A173290.P6273852392947741836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), (p + 1) : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P6273852392947741836

namespace A173290

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]]` -/
def P6273852392947741836.Spec : Prop :=
  ∀ n, P6273852392947741836.a n = (A173290 (n + 1) : ℚ)

end A173290

/-! ## A173290.P3480714473000744751

`∑[A001615(n+1)]`
-/

namespace A173290.P3480714473000744751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P3480714473000744751

namespace A173290

/-- `∑[A001615(n+1)]` -/
def P3480714473000744751.Spec : Prop :=
  ∀ n, P3480714473000744751.a n = A173290 (n + 1)

end A173290

/-! ## A173290.P12535071582953242446

`∑[abs(A158523(n+1))]`
-/

namespace A173290.P12535071582953242446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158523 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P12535071582953242446

namespace A173290

/-- `∑[abs(A158523(n+1))]` -/
def P12535071582953242446.Spec : Prop :=
  ∀ n, P12535071582953242446.a n = A173290 (n + 1)

end A173290

/-! ## A173290.P11523895964854630210

`∑[A306927(n+1)+1+n]`
-/

namespace A173290.P11523895964854630210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P11523895964854630210

namespace A173290

/-- `∑[A306927(n+1)+1+n]` -/
def P11523895964854630210.Spec : Prop :=
  ∀ n, P11523895964854630210.a n = A173290 (n + 1)

end A173290

/-! ## A173290.P12188792857463768754

`∑[A000082(n+1)/(n+1)]`
-/

namespace A173290.P12188792857463768754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P12188792857463768754

namespace A173290

/-- `∑[A000082(n+1)/(n+1)]` -/
def P12188792857463768754.Spec : Prop :=
  ∀ n, P12188792857463768754.a n = (A173290 (n + 1) : ℚ)

end A173290

/-! ## A173290.P2885022665168882078

`∑[A033196(n+1)/(n+1)²]`
-/

namespace A173290.P2885022665168882078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033196 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P2885022665168882078

namespace A173290

/-- `∑[A033196(n+1)/(n+1)²]` -/
def P2885022665168882078.Spec : Prop :=
  ∀ n, P2885022665168882078.a n = (A173290 (n + 1) : ℚ)

end A173290

/-! ## A173290.P16597294617577520267

`∑[A000203(n+1)-A244963(n+1)]`
-/

namespace A173290.P16597294617577520267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A244963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P16597294617577520267

namespace A173290

/-- `∑[A000203(n+1)-A244963(n+1)]` -/
def P16597294617577520267.Spec : Prop :=
  ∀ n, P16597294617577520267.a n = A173290 (n + 1)

end A173290

/-! ## A173290.P15347892615979240028

`∑[A003557(n+1)*A048250(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A173290

/-- `∑[A003557(n+1)*A048250(n+1)]` -/
def P15347892615979240028.Spec : Prop :=
  ∀ n, P15347892615979240028.a n = A173290 (n + 1)

theorem P15347892615979240028.correct : P15347892615979240028.Spec := by
  intro n
  simp only [A173290, Nat.add_sub_cancel]

end A173290

/-! ## A173290.P3384204578485051295

`∑[A322318(n+1)*A322319(n+1)]`
-/

namespace A173290.P3384204578485051295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322318 (n + 1) * A322319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P3384204578485051295

namespace A173290

/-- `∑[A322318(n+1)*A322319(n+1)]` -/
def P3384204578485051295.Spec : Prop :=
  ∀ n, P3384204578485051295.a n = A173290 (n + 1)

end A173290

/-! ## A173290.P7855399518095035822

`∑[A007434(n+1)/A000010(n+1)]`
-/

namespace A173290.P7855399518095035822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P7855399518095035822

namespace A173290

/-- `∑[A007434(n+1)/A000010(n+1)]` -/
def P7855399518095035822.Spec : Prop :=
  ∀ n, P7855399518095035822.a n = (A173290 (n + 1) : ℚ)

end A173290

/-! ## A173290.P7450997933911074624

`∑[A003557(n+1)*A241405(A007947(n+1))]`
-/

namespace A173290.P7450997933911074624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A241405 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P7450997933911074624

namespace A173290

/-- `∑[A003557(n+1)*A241405(A007947(n+1))]` -/
def P7450997933911074624.Spec : Prop :=
  ∀ n, P7450997933911074624.a n = A173290 (n + 1)

end A173290

/-! ## A173290.P2942332076596169978

`∑[A106608(A160890(n+1))]`
-/

namespace A173290.P2942332076596169978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A160890 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P2942332076596169978

namespace A173290

/-- `∑[A106608(A160890(n+1))]` -/
def P2942332076596169978.Spec : Prop :=
  ∀ n, P2942332076596169978.a n = A173290 (n + 1)

end A173290

/-! ## A173290.P4431839463774615579

`∑[A001616((n+1)²)]`
-/

namespace A173290.P4431839463774615579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P4431839463774615579

namespace A173290

/-- `∑[A001616((n+1)²)]` -/
def P4431839463774615579.Spec : Prop :=
  ∀ n, P4431839463774615579.a n = A173290 (n + 1)

end A173290

/-! ## A173290.P8177518938867414049

`∑[A158523((n+1)²)/(n+1)]`
-/

namespace A173290.P8177518938867414049
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158523 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P8177518938867414049

namespace A173290

/-- `∑[A158523((n+1)²)/(n+1)]` -/
def P8177518938867414049.Spec : Prop :=
  ∀ n, P8177518938867414049.a n = (A173290 (n + 1) : ℚ)

end A173290

/-! ## A173290.P11877626850598623419

`∑[A238498(A000124(n+1))]`
-/

namespace A173290.P11877626850598623419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238498 (A000124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P11877626850598623419

namespace A173290

/-- `∑[A238498(A000124(n+1))]` -/
def P11877626850598623419.Spec : Prop :=
  ∀ n, P11877626850598623419.a n = A173290 (n + 1)

end A173290

/-! ## A173290.P562345628278592677

`∑[A238498(A134869(n+1))]`
-/

namespace A173290.P562345628278592677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238498 (A134869 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P562345628278592677

namespace A173290

/-- `∑[A238498(A134869(n+1))]` -/
def P562345628278592677.Spec : Prop :=
  ∀ n, P562345628278592677.a n = A173290 (n + 1)

end A173290

/-! ## A173290.P10808241803834095870

`∑[A238498(A034856(n+1))]`
-/

namespace A173290.P10808241803834095870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238498 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P10808241803834095870

namespace A173290

/-- `∑[A238498(A034856(n+1))]` -/
def P10808241803834095870.Spec : Prop :=
  ∀ n, P10808241803834095870.a n = A173290 (n + 1)

end A173290

/-! ## A173290.P17586578626143107462

`∑[A392166((n+1)²)]`
-/

namespace A173290.P17586578626143107462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392166 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173290.P17586578626143107462

namespace A173290

/-- `∑[A392166((n+1)²)]` -/
def P17586578626143107462.Spec : Prop :=
  ∀ n, P17586578626143107462.a n = A173290 (n + 1)

end A173290

/-!
# A173292: a(n)! has exactly 10^n trailing zeros (a(n) = -1 if no such number exists).

The programs for A173292, there is no canonical definition to state claims against.
-/

/-! ## A173292.P15431811536787640847

`or(-A102682(A163464(n+1)), A173558(n))`
-/

namespace A173292.P15431811536787640847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A102682 (A163464 (n + 1)).toNat) (A173558 n)

end

end A173292.P15431811536787640847

/-!
# A173294: Values of 16*n^2+24*n+7, n>=0, each duplicated.

The programs for A173294, the canonical program `A173294.P5196130725877380766` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173294 has offset 0).

The definition of A173294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173294.P5196130725877380766

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=7, a(1)=7, a(2)=47, a(3)=47, a(4)=119`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173294

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P5196130725877380766.Spec : Prop :=
  ∀ n, P5196130725877380766.a n = A173294 n

theorem P5196130725877380766.correct : P5196130725877380766.Spec := by
  intro n
  simp only [A173294]

end A173294

/-! ## A173294.P3996840566928340903

`or(3, 2*n)²-2`
-/

namespace A173294.P3996840566928340903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (2 * n) ^ 2 : ℤ) - 2

end

end A173294.P3996840566928340903

namespace A173294

/-- `or(3, 2*n)²-2` -/
def P3996840566928340903.Spec : Prop :=
  ∀ n, P3996840566928340903.a n = A173294 n

end A173294

/-! ## A173294.P11678256511384900272

`or(3, 2*n)^2-2`
-/

namespace A173294.P11678256511384900272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (2 * n) ^ 2 : ℤ) - 2

end

end A173294.P11678256511384900272

namespace A173294

/-- `or(3, 2*n)^2-2` -/
def P11678256511384900272.Spec : Prop :=
  ∀ n, P11678256511384900272.a n = A173294 n

end A173294

/-! ## A173294.P6288269944480404884

`(lcm(2, or(1, n))+1)²-2`
-/

namespace A173294.P6288269944480404884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (Nat.lor 1 n) + 1) ^ 2 : ℤ) - 2

end

end A173294.P6288269944480404884

namespace A173294

/-- `(lcm(2, or(1, n))+1)²-2` -/
def P6288269944480404884.Spec : Prop :=
  ∀ n, P6288269944480404884.a n = A173294 n

end A173294

/-! ## A173294.P14405810661959924405

`(xor(1, n+2)+n)²-2`
-/

namespace A173294.P14405810661959924405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (n + 2) + n) ^ 2 : ℤ) - 2

end

end A173294.P14405810661959924405

namespace A173294

/-- `(xor(1, n+2)+n)²-2` -/
def P14405810661959924405.Spec : Prop :=
  ∀ n, P14405810661959924405.a n = A173294 n

end A173294

/-! ## A173294.P15959540840914486490

`∑[4-a(n-1)]²-2` with `a(0)=3, a(1)=0`
-/

namespace A173294.P15959540840914486490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 2

end

end A173294.P15959540840914486490

namespace A173294

/-- `∑[4-a(n-1)]²-2` -/
def P15959540840914486490.Spec : Prop :=
  ∀ n, P15959540840914486490.a n = A173294 n

end A173294

/-! ## A173294.P14976877933823088298

`and(-(2*n+1), -3)²-2`
-/

namespace A173294.P14976877933823088298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(2 * n + 1 : ℤ)) (-3) ^ 2 - 2

end

end A173294.P14976877933823088298

namespace A173294

/-- `and(-(2*n+1), -3)²-2` -/
def P14976877933823088298.Spec : Prop :=
  ∀ n, P14976877933823088298.a n = A173294 n

end A173294

/-! ## A173294.P888557479602183835

`((-1)^n+2*(n+1))²-2`
-/

namespace A173294.P888557479602183835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + (2 * (n + 1) : ℤ)) ^ 2 - 2

end

end A173294.P888557479602183835

namespace A173294

/-- `((-1)^n+2*(n+1))²-2` -/
def P888557479602183835.Spec : Prop :=
  ∀ n, P888557479602183835.a n = A173294 n

theorem P888557479602183835.correct : P888557479602183835.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A173294, Nat.add_sub_cancel, A173294.P888557479602183835.a, A173294.P5196130725877380766.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A173294, Nat.add_sub_cancel, A173294.P888557479602183835.a, A173294.P5196130725877380766.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173294

/-! ## A173294.P4667644568892299957

`A073577(or(1, n))`
-/

namespace A173294.P4667644568892299957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (Nat.lor 1 n)

end

end A173294.P4667644568892299957

namespace A173294

/-- `A073577(or(1, n))` -/
def P4667644568892299957.Spec : Prop :=
  ∀ n, P4667644568892299957.a n = A173294 n

end A173294

/-! ## A173294.P7480413815503891740

`A073577(A109613(n))`
-/

namespace A173294.P7480413815503891740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (A109613 n).toNat

end

end A173294.P7480413815503891740

namespace A173294

/-- `A073577(A109613(n))` -/
def P7480413815503891740.Spec : Prop :=
  ∀ n, P7480413815503891740.a n = A173294 n

end A173294

/-! ## A173294.P18209107323646773737

`A073577(A168276(n+1)/2)`
-/

namespace A173294.P18209107323646773737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (SequenceMachineLib.roundAway ((A168276 (n + 1) : ℚ) / 2)).toNat

end

end A173294.P18209107323646773737

namespace A173294

/-- `A073577(A168276(n+1)/2)` -/
def P18209107323646773737.Spec : Prop :=
  ∀ n, P18209107323646773737.a n = A173294 n

end A173294

/-! ## A173294.P9215096520506351342

`A073577(1-A000035(n)+n)`
-/

namespace A173294.P9215096520506351342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (1 - A000035 n + (n : ℤ)).toNat

end

end A173294.P9215096520506351342

namespace A173294

/-- `A073577(1-A000035(n)+n)` -/
def P9215096520506351342.Spec : Prop :=
  ∀ n, P9215096520506351342.a n = A173294 n

end A173294

/-! ## A173294.P11397980596567259508

`A073577(1-(A000035(n)-n))`
-/

namespace A173294.P11397980596567259508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (1 - (A000035 n - (n : ℤ))).toNat

end

end A173294.P11397980596567259508

namespace A173294

/-- `A073577(1-(A000035(n)-n))` -/
def P11397980596567259508.Spec : Prop :=
  ∀ n, P11397980596567259508.a n = A173294 n

end A173294

/-! ## A173294.P8978436559932022177

`A073577(2-A000034(n)+n)`
-/

namespace A173294.P8978436559932022177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (2 - A000034 n + (n : ℤ)).toNat

end

end A173294.P8978436559932022177

namespace A173294

/-- `A073577(2-A000034(n)+n)` -/
def P8978436559932022177.Spec : Prop :=
  ∀ n, P8978436559932022177.a n = A173294 n

end A173294

/-! ## A173294.P17421457781585573609

`A073577(2-(A000034(n)-n))`
-/

namespace A173294.P17421457781585573609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (2 - (A000034 n - (n : ℤ))).toNat

end

end A173294.P17421457781585573609

namespace A173294

/-- `A073577(2-(A000034(n)-n))` -/
def P17421457781585573609.Spec : Prop :=
  ∀ n, P17421457781585573609.a n = A173294 n

end A173294

/-! ## A173294.P1884905411613817014

`A073577(A000035(n+1)+n)`
-/

namespace A173294.P1884905411613817014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (A000035 (n + 1) + (n : ℤ)).toNat

end

end A173294.P1884905411613817014

namespace A173294

/-- `A073577(A000035(n+1)+n)` -/
def P1884905411613817014.Spec : Prop :=
  ∀ n, P1884905411613817014.a n = A173294 n

end A173294

/-! ## A173294.P9836785578396286180

`A214345(A168277(n+1))`
-/

namespace A173294.P9836785578396286180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214345 (A168277 (n + 1)).toNat

end

end A173294.P9836785578396286180

namespace A173294

/-- `A214345(A168277(n+1))` -/
def P9836785578396286180.Spec : Prop :=
  ∀ n, P9836785578396286180.a n = A173294 n

end A173294

/-! ## A173294.P7762588559693141396

`A227786(2*or(1, n))`
-/

namespace A173294.P7762588559693141396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227786 (2 * Nat.lor 1 n)

end

end A173294.P7762588559693141396

namespace A173294

/-- `A227786(2*or(1, n))` -/
def P7762588559693141396.Spec : Prop :=
  ∀ n, P7762588559693141396.a n = A173294 n

end A173294

/-! ## A173294.P18436386036398458866

`A008865(or(3, 2*n))`
-/

namespace A173294.P18436386036398458866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (Nat.lor 3 (2 * n))

end

end A173294.P18436386036398458866

namespace A173294

/-- `A008865(or(3, 2*n))` -/
def P18436386036398458866.Spec : Prop :=
  ∀ n, P18436386036398458866.a n = A173294 n

end A173294

/-! ## A173294.P3089334471805398996

`A181106(or(3, 2*n))`
-/

namespace A173294.P3089334471805398996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181106 (Nat.lor 3 (2 * n))

end

end A173294.P3089334471805398996

namespace A173294

/-- `A181106(or(3, 2*n))` -/
def P3089334471805398996.Spec : Prop :=
  ∀ n, P3089334471805398996.a n = A173294 n

end A173294

/-!
# A173295: Primes of the form k^2+k+1 or k^2+k+9.

The programs for A173295, there is no canonical definition to state claims against.
-/

/-! ## A173295.P7871845631804867196

`∪[A002383(n+1), A027758(n+1)]`
-/

namespace A173295.P7871845631804867196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173295.P7871845631804867196

/-! ## A173295.P14206842282366720003

`p?[2*∪[A000217(n)+6, ∑[n+1]+2]-3]`
-/

namespace A173295.P14206842282366720003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173295.P14206842282366720003

/-!
# A173296: Numerators of the inverse binomial transform of the Leibniz series for Pi/4.

The programs for A173296, there is no canonical definition to state claims against.
-/

/-! ## A173296.P18369907814551192767

`(-1)^n*A077595(n)`
-/

namespace A173296.P18369907814551192767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077595 n

end

end A173296.P18369907814551192767

/-! ## A173296.P12574800339308393122

`A077595(n)/A033999(n)`
-/

namespace A173296.P12574800339308393122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077595 n : ℚ) / (A033999 n : ℚ)

end

end A173296.P12574800339308393122

/-! ## A173296.P16047644477629528101

`A077595(n)/A062157(n+1)`
-/

namespace A173296.P16047644477629528101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077595 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A173296.P16047644477629528101

/-! ## A173296.P12377358788898464809

`A077595(n)/A008683(A116570(n))`
-/

namespace A173296.P12377358788898464809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077595 n : ℚ) / (A008683 (A116570 n).toNat : ℚ)

end

end A173296.P12377358788898464809

/-! ## A173296.P7823346768928603432

`A077595(n)*A195017(A000040(n+1))`
-/

namespace A173296.P7823346768928603432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077595 n * A195017 (A000040 (n + 1)).toNat

end

end A173296.P7823346768928603432

/-!
# A173297: Numbers k such that exactly one of k^2 + k - 1 and k^2 + k + 1 is prime.

The programs for A173297, there is no canonical definition to state claims against.
-/

/-! ## A173297.P919360588377036429

`record[abs(A167407(A174047(n+1)))]`
-/

namespace A173297.P919360588377036429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167407 (A174047 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173297.P919360588377036429

/-! ## A173297.P9298976678063224367

`eq[2, A002126(n²+1+n)]`
-/

namespace A173297.P9298976678063224367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n ^ 2 + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173297.P9298976678063224367

/-! ## A173297.P1454050638561548687

`eq[3, A002126(n*(n+1)+1)+1]`
-/

namespace A173297.P1454050638561548687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n * (n + 1) + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173297.P1454050638561548687

/-! ## A173297.P14172251765688874204

`eq[2, A002126(A002061(n))]-1`
-/

namespace A173297.P14172251765688874204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A002061 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A173297.P14172251765688874204

/-! ## A173297.P7091580052907182825

`eq[4, A002126(A002378(n)+1)²]`
-/

namespace A173297.P7091580052907182825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A002378 n + 1).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173297.P7091580052907182825

/-!
# A173298: Integers n >= 2 such that the ring Z(sqrt n) is not factorial.

The programs for A173298, there is no canonical definition to state claims against.
-/

/-! ## A173298.P9944964269675185311

`lt[A333915(3*n+4), A333925(A333928(n+1))]`
-/

namespace A173298.P9944964269675185311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333915 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (A333928 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173298.P9944964269675185311

/-! ## A173298.P17174888230258597952

`A324684(A100883(n))+A172019(n+1)`
-/

namespace A173298.P17174888230258597952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324684 (A100883 n).toNat + A172019 (n + 1)

end

end A173298.P17174888230258597952

/-!
# A173299: Numerators of fractions x^n + y^n, where x + y = 1 and x^2 + y^2 = 2.

The programs for A173299, the canonical program `A173299.P10688043708097055938` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173299 has offset 1).

The definition of A173299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173299.P16595373677113628041

`A002531(n+1)/A040001(A057979(n))`
-/

namespace A173299.P16595373677113628041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002531 (n + 1) : ℚ) / (A040001 (A057979 n).toNat : ℚ)

end

end A173299.P16595373677113628041

namespace A173299

/-- `A002531(n+1)/A040001(A057979(n))` -/
def P16595373677113628041.Spec : Prop :=
  ∀ n, P16595373677113628041.a n = (A173299 (n + 1) : ℚ)

end A173299

/-! ## A173299.P10688043708097055938

`A052945(n)/gcd(A003945(n), A052945(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173299

/-- `A052945(n)/gcd(A003945(n), A052945(n))` -/
def P10688043708097055938.Spec : Prop :=
  ∀ n, P10688043708097055938.a n = (A173299 (n + 1) : ℚ)

end A173299

/-! ## A173299.P5019544932176751723

`A143642(A001651(n+1))/A040001(A057979(n))`
-/

namespace A173299.P5019544932176751723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143642 (A001651 (n + 1)).toNat : ℚ) / (A040001 (A057979 n).toNat : ℚ)

end

end A173299.P5019544932176751723

namespace A173299

/-- `A143642(A001651(n+1))/A040001(A057979(n))` -/
def P5019544932176751723.Spec : Prop :=
  ∀ n, P5019544932176751723.a n = (A173299 (n + 1) : ℚ)

end A173299

/-! ## A173299.P8199587065820408260

`A146983(n)/gcd(A026150(n), A146983(n))`
-/

namespace A173299.P8199587065820408260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146983 n : ℚ) / (Int.gcd (A026150 n) (A146983 n) : ℚ)

end

end A173299.P8199587065820408260

namespace A173299

/-- `A146983(n)/gcd(A026150(n), A146983(n))` -/
def P8199587065820408260.Spec : Prop :=
  ∀ n, P8199587065820408260.a n = (A173299 (n + 1) : ℚ)

end A173299

/-! ## A173299.P3244714971305999541

`lcm(A011782(n), A052945(n))/A011782(n)`
-/

namespace A173299.P3244714971305999541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A011782 n) (A052945 n) : ℚ) / (A011782 n : ℚ)

end

end A173299.P3244714971305999541

namespace A173299

/-- `lcm(A011782(n), A052945(n))/A011782(n)` -/
def P3244714971305999541.Spec : Prop :=
  ∀ n, P3244714971305999541.a n = (A173299 (n + 1) : ℚ)

end A173299

/-! ## A173299.P8863319896230201299

`A026150(n+1)/gcd(A002605(2*n), A026150(n+1))`
-/

namespace A173299.P8863319896230201299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 (n + 1) : ℚ) / (Int.gcd (A002605 (2 * n)) (A026150 (n + 1)) : ℚ)

end

end A173299.P8863319896230201299

namespace A173299

/-- `A026150(n+1)/gcd(A002605(2*n), A026150(n+1))` -/
def P8863319896230201299.Spec : Prop :=
  ∀ n, P8863319896230201299.a n = (A173299 (n + 1) : ℚ)

end A173299

/-! ## A173299.P9777544880260235229

`lcm(A026150(2*n+1), A026150(n+1))/A026150(2*n+1)`
-/

namespace A173299.P9777544880260235229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A026150 (2 * n + 1)) (A026150 (n + 1)) : ℚ) / (A026150 (2 * n + 1) : ℚ)

end

end A173299.P9777544880260235229

namespace A173299

/-- `lcm(A026150(2*n+1), A026150(n+1))/A026150(2*n+1)` -/
def P9777544880260235229.Spec : Prop :=
  ∀ n, P9777544880260235229.a n = (A173299 (n + 1) : ℚ)

end A173299

/-! ## A173299.P518260143517950726

`lcm(A080040(2*n+1), A080040(n+1))/A080040(2*n+1)`
-/

namespace A173299.P518260143517950726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A080040 (2 * n + 1)) (A080040 (n + 1)) : ℚ) / (A080040 (2 * n + 1) : ℚ)

end

end A173299.P518260143517950726

namespace A173299

/-- `lcm(A080040(2*n+1), A080040(n+1))/A080040(2*n+1)` -/
def P518260143517950726.Spec : Prop :=
  ∀ n, P518260143517950726.a n = (A173299 (n + 1) : ℚ)

end A173299

