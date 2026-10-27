import SequenceMachineLib.Basic
import Seq.B000.C001
import Seq.B001.C000
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A396769.P5317963927150121089

`A003071(n+1)+n`
-/

namespace A396769.P5317963927150121089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1) + (n : ℤ)

end

end A396769.P5317963927150121089

noncomputable section

/-- A396769: Value of the Sackin index for the rooted binary echelon tree with n leaves.

Offset 1, canonical program `A396769.P5317963927150121089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396769 (n : ℕ) : ℤ :=
  A396769.P5317963927150121089.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396571.P6988239857056960462

`(A071904(n+1)+A071904(n+2))/2`
-/

namespace A396571.P6988239857056960462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071904 (n + 1) + A071904 (n + 2) : ℚ) / 2

end

end A396571.P6988239857056960462

noncomputable section

/-- A396571: Averages of adjacent odd composite numbers.

Offset 1, canonical program `A396571.P6988239857056960462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396571 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396571.P6988239857056960462.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397645.P309890179960751511

`∑{d}[n+1, A358380(#)]`
-/

namespace A397645.P309890179960751511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358380 d

end

end A397645.P309890179960751511

noncomputable section

/-- A397645: Multiplicative with a(p^e) = (e+1)*(e+2)*(5*e+3)/6.

Offset 1, canonical program `A397645.P309890179960751511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397645 (n : ℕ) : ℤ :=
  A397645.P309890179960751511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397754.P18151342160138794166

`∩[A209932(n+1), A259315(n+1)]`
-/

namespace A397754.P18151342160138794166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397754.P18151342160138794166

noncomputable section

/-- A397754: Numbers that don't contain digit 0 but have a divisor that does.

Offset 1, canonical program `A397754.P18151342160138794166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3190 terms. -/
def A397754 (n : ℕ) : ℤ :=
  (A397754.P18151342160138794166.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3190 terms. -/
def A397754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398167.P15155754403201331677

`filter[A340152(n+1), A295316(#)]`
-/

namespace A398167.P15155754403201331677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A398167.P15155754403201331677

noncomputable section

/-- A398167: Squarefree numbers k such that k+1 is cubefree.

Offset 1, canonical program `A398167.P15155754403201331677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7076 terms. -/
def A398167 (n : ℕ) : ℤ :=
  A398167.P15155754403201331677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7076 terms. -/
def A398167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398543.P3266382039981285700

`A008683(A000026(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398543.P3266382039981285700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000026 (n + 1)).toNat

end

end A398543.P3266382039981285700

noncomputable section

/-- A398543: a(n) = A008683(A000026(n)).

Offset 1, canonical program `A398543.P3266382039981285700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398543 (n : ℕ) : ℤ :=
  A398543.P3266382039981285700.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398576.P17709678476820359098

`A008836(A000026(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398576.P17709678476820359098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000026 (n + 1)).toNat

end

end A398576.P17709678476820359098

noncomputable section

/-- A398576: a(n) = A008836(A000026(n)).

Offset 1, canonical program `A398576.P17709678476820359098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398576 (n : ℕ) : ℤ :=
  A398576.P17709678476820359098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398576.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396409.P16372428509261204668

`A326730(A025480(n))`
-/

namespace A396409.P16372428509261204668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (A025480 n).toNat

end

end A396409.P16372428509261204668

noncomputable section

/-- A396409: Number of iterations of x -> x XOR 2^A000120(x) from x = n to reach a number of the form 2^m-1.

Offset 0, canonical program `A396409.P16372428509261204668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396409 (n : ℕ) : ℤ :=
  A396409.P16372428509261204668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396919.P3561420194489919644

`filter[A054753(n+1), A359770(#)]`
-/

namespace A396919.P3561420194489919644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A396919.P3561420194489919644

noncomputable section

/-- A396919: Numbers of the form 4*p or 2*p^2, where p is an odd prime.

Offset 1, canonical program `A396919.P3561420194489919644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2808 terms. -/
def A396919 (n : ℕ) : ℤ :=
  A396919.P3561420194489919644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2808 terms. -/
def A396919.provenance : SequenceMachineLib.Provenance := .conjectured

