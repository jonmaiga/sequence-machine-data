import SequenceMachineLib.Basic
import Seq.B000.C004
import Seq.B000.C011
import Seq.B000.C017
import Seq.B000.C034
import Seq.B000.C040
import Seq.B000.C046
import Seq.B000.C053
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A402400: a(n) = 1 + Sum_{k=1..n} k^5 * a(n-k).

The programs for A402400, the canonical program `A402400.P4585264540923044159` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402400 has offset 0).

The definition of A402400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402400.P4585264540923044159

`ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-7x-11x^2-86x^3-11x^4-7x^5+x^6))`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A402400

/-- `ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-7x-11x^2-86x^3-11x^4-7x^5+x^6))` -/
def P4585264540923044159.Spec : Prop :=
  ∀ n, P4585264540923044159.a n = A402400 n

theorem P4585264540923044159.correct : P4585264540923044159.Spec := by
  intro n
  simp only [A402400]

end A402400

/-! ## A402400.P17605735383339000496

`∑[A402401(n)]`
-/

namespace A402400.P17605735383339000496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A402400.P17605735383339000496

namespace A402400

/-- `∑[A402401(n)]` -/
def P17605735383339000496.Spec : Prop :=
  ∀ n, P17605735383339000496.a n = A402400 n

end A402400

/-!
# A402401: a(0) = 1; a(n) = Sum_{k=1..n} k^5 * a(n-k).

The programs for A402401, the canonical program `A402401.P17400436899153780874` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402401 has offset 0).

The definition of A402401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402401.P17400436899153780874

`ogf((1-6x+15x^2-20x^3+15x^4-6x^5+x^6)/(1-7x-11x^2-86x^3-11x^4-7x^5+x^6))`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A402401

/-- `ogf((1-6x+15x^2-20x^3+15x^4-6x^5+x^6)/(1-7x-11x^2-86x^3-11x^4-7x^5+x^6))` -/
def P17400436899153780874.Spec : Prop :=
  ∀ n, P17400436899153780874.a n = A402401 n

theorem P17400436899153780874.correct : P17400436899153780874.Spec := by
  intro n
  simp only [A402401]

end A402401

/-!
# A402408: First occurrence of difference n between two consecutive terms of A001481. a(n) gives the lower term. The upper term is A402409.

The programs for A402408, there is no canonical definition to state claims against.
-/

/-! ## A402408.P13691676609233166751

`A402409(n+1)-(n+1)`
-/

namespace A402408.P13691676609233166751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402409 (n + 1) - (n + 1 : ℤ)

end

end A402408.P13691676609233166751

/-!
# A402409: First occurrence of difference n between two consecutive terms of A001481. a(n) gives the upper term. The lower term is A402408.

The programs for A402409, there is no canonical definition to state claims against.
-/

/-! ## A402409.P13305121210509867977

`A402408(n+1)+n+1`
-/

namespace A402409.P13305121210509867977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402408 (n + 1) + (n + 1 : ℤ)

end

end A402409.P13305121210509867977

/-!
# A402417: a(n) = A402416(A102476(n)) is largest minimal element of cosets of (Z/NZ)*^2 in (Z/NZ)*, where N = A102476(n), (Z/NZ)* is the multiplicative group of integers modulo N and (Z/NZ)*^2 is the subgroup of squares.

The programs for A402417, there is no canonical definition to state claims against.
-/

/-! ## A402417.P912587625056360076

`A402416(A102476(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402417.P912587625056360076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402416 (A102476 n).toNat

end

end A402417.P912587625056360076

/-! ## A402417.P3232188994534419186

`A402419(2^(n+1)-2)`
-/

namespace A402417.P3232188994534419186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402419 (2 ^ (n + 1) - 2)

end

end A402417.P3232188994534419186

/-!
# A402418: Irregular triangle read by rows: Row n lists the minimal elements of cosets of (Z/nZ)*^2 in (Z/nZ)*, where (Z/nZ)* is the multiplicative group of integers modulo n and (Z/nZ)*^2 is the subgroup of squares.

The programs for A402418, there is no canonical definition to state claims against.
-/

/-! ## A402418.P11012384244409915647

`A126303(A019431(n))`
-/

namespace A402418.P11012384244409915647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126303 (A019431 n).toNat

end

end A402418.P11012384244409915647

/-! ## A402418.P12184432136373469185

`A118144(A284041(n))`
-/

namespace A402418.P12184432136373469185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118144 (A284041 n).toNat

end

end A402418.P12184432136373469185

/-! ## A402418.P7384917581994406588

`A277692(A283909(n))`
-/

namespace A402418.P7384917581994406588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A283909 n).toNat

end

end A402418.P7384917581994406588

/-!
# A402423: Least m > 1 such that 4*prime(n)# - m is prime, where prime(n)# = A002110(n).

The programs for A402423, there is no canonical definition to state claims against.
-/

/-! ## A402423.P17485858683376569641

`A216496(A064704(n+2))`
-/

namespace A402423.P17485858683376569641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216496 (A064704 (n + 2)).toNat

end

end A402423.P17485858683376569641

/-! ## A402423.P3693872141959828022

`A139758(A363246(n+2))`
-/

namespace A402423.P3693872141959828022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139758 (A363246 (n + 2)).toNat

end

end A402423.P3693872141959828022

/-! ## A402423.P16484975381120372815

`filter[A257671(n+1), A337802(#)]`
-/

namespace A402423.P16484975381120372815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337802 (f1 j).toNat = 1) n)

end

end A402423.P16484975381120372815

/-! ## A402423.P889499497020834112

`filter[A152208(2*n), A337802(#)]`
-/

namespace A402423.P889499497020834112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152208 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337802 (f1 j).toNat = 1) n)

end

end A402423.P889499497020834112

/-! ## A402423.P2537202688610632253

`filter[A218379(2*n), A337802(#)]`
-/

namespace A402423.P2537202688610632253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218379 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337802 (f1 j).toNat = 1) n)

end

end A402423.P2537202688610632253

/-!
# A402426: Primes p such that 4*p# + 1 is prime, where prime(n)# = A002110(n).

The programs for A402426, there is no canonical definition to state claims against.
-/

/-! ## A402426.P6570507044229225519

`filter[A104296(n+2), A059620(#)]`
-/

namespace A402426.P6570507044229225519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104296 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059620 (f1 j).toNat = 1) n)

end

end A402426.P6570507044229225519

/-!
# A402427: Primes p such that 4*p# - 1 is prime, where prime(n)# = A002110(n).

The programs for A402427, there is no canonical definition to state claims against.
-/

/-! ## A402427.P8923099061990573201

`A180101(A207990(n+1))`
-/

namespace A402427.P8923099061990573201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A207990 (n + 1)).toNat

end

end A402427.P8923099061990573201

/-! ## A402427.P13661639929668946966

`eq[A293813(n), A317576(n+1)]`
-/

namespace A402427.P13661639929668946966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A402427.P13661639929668946966

/-! ## A402427.P12941440029644406406

`eq[A294137(n), A317576(n+1)]`
-/

namespace A402427.P12941440029644406406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A402427.P12941440029644406406

/-! ## A402427.P7705575175072752034

`eq[A295335(n), A317576(n+1)]`
-/

namespace A402427.P7705575175072752034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A402427.P7705575175072752034

/-! ## A402427.P15722412691983006008

`eq[A295520(n), A317576(n+1)]`
-/

namespace A402427.P15722412691983006008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A402427.P15722412691983006008

/-!
# A402428: Primes p such that 4*p# + p' is prime, where prime(n)# = A002110(n) and p' is the next prime > p.

The programs for A402428, there is no canonical definition to state claims against.
-/

/-! ## A402428.P1430837299248750693

`∩[A053182(n+1), A138234(n)]`
-/

namespace A402428.P1430837299248750693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402428.P1430837299248750693

/-!
# A402429: Primes p such that 4*p# - p' is prime, where prime(n)# = A002110(n) and p' is the next prime > p.

The programs for A402429, there is no canonical definition to state claims against.
-/

/-! ## A402429.P17720952879460347290

`∩[A002200(n+1), A249611(n+1)]`
-/

namespace A402429.P17720952879460347290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402429.P17720952879460347290

/-! ## A402429.P2388895683878957167

`∩[A002200(n+1), A255724(n+1)]`
-/

namespace A402429.P2388895683878957167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402429.P2388895683878957167

/-! ## A402429.P17233334685673296823

`∩[A181561(n+1), A249611(n+1)]`
-/

namespace A402429.P17233334685673296823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402429.P17233334685673296823

/-! ## A402429.P13951123726281615169

`∩[A181561(n+1), A255724(n+1)]`
-/

namespace A402429.P13951123726281615169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402429.P13951123726281615169

/-! ## A402429.P7532102094173928771

`∩[A229060(n+1), A255724(n+1)]`
-/

namespace A402429.P7532102094173928771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402429.P7532102094173928771

/-!
# A402440: a(n) = A402439(A102476(n)); largest k in [1,N] coprime to N such that k is a quadratic residue modulo N, N = A102476(n).

The programs for A402440, there is no canonical definition to state claims against.
-/

/-! ## A402440.P11534895755887426813

`A402439(A102476(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402440.P11534895755887426813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402439 (A102476 n).toNat

end

end A402440.P11534895755887426813

/-! ## A402440.P17168151877540031079

`A029493(A097081(n))`
-/

namespace A402440.P17168151877540031079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029493 (A097081 n).toNat

end

end A402440.P17168151877540031079

/-!
# A402451: Absolute values of fundamental discriminant of quadratic fields. Also conductors of real Dirichlet primitive characters.

The programs for A402451, the canonical program `A402451.P15090510164143558014` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402451 has offset 1).

The definition of A402451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A402451.P15090510164143558014

`∪[A003657(n+1), A003658(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A402451

/-- `∪[A003657(n+1), A003658(n+1)]` -/
def P15090510164143558014.Spec : Prop :=
  ∀ n, (P15090510164143558014.a n : ℤ) = A402451 (n + 1)

theorem P15090510164143558014.correct : P15090510164143558014.Spec := by
  intro n
  simp only [A402451, Nat.add_sub_cancel]

end A402451

/-! ## A402451.P10909688209584828632

`∪[A003657(n+1), A091428(n+1)]`
-/

namespace A402451.P10909688209584828632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A402451.P10909688209584828632

namespace A402451

/-- `∪[A003657(n+1), A091428(n+1)]` -/
def P10909688209584828632.Spec : Prop :=
  ∀ n, (P10909688209584828632.a n : ℤ) = A402451 (n + 1)

end A402451

/-! ## A402451.P13342049515877794311

`∪[A003658(n+1), A091428(n+1)]`
-/

namespace A402451.P13342049515877794311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A402451.P13342049515877794311

namespace A402451

/-- `∪[A003658(n+1), A091428(n+1)]` -/
def P13342049515877794311.Spec : Prop :=
  ∀ n, (P13342049515877794311.a n : ℤ) = A402451 (n + 1)

end A402451

/-! ## A402451.P14032466362124280560

`∪[A072902(n+1), A091428(n+1)]`
-/

namespace A402451.P14032466362124280560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A402451.P14032466362124280560

namespace A402451

/-- `∪[A072902(n+1), A091428(n+1)]` -/
def P14032466362124280560.Spec : Prop :=
  ∀ n, (P14032466362124280560.a n : ℤ) = A402451 (n + 1)

end A402451

/-! ## A402451.P80281941455317699

`∪[A056911(n+1), A133466(n+1)]`
-/

namespace A402451.P80281941455317699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A402451.P80281941455317699

namespace A402451

/-- `∪[A056911(n+1), A133466(n+1)]` -/
def P80281941455317699.Spec : Prop :=
  ∀ n, (P80281941455317699.a n : ℤ) = A402451 (n + 1)

end A402451

/-! ## A402451.P15997742964569853863

`∪[A091428(n+1), A133466(n+1)]`
-/

namespace A402451.P15997742964569853863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A402451.P15997742964569853863

namespace A402451

/-- `∪[A091428(n+1), A133466(n+1)]` -/
def P15997742964569853863.Spec : Prop :=
  ∀ n, (P15997742964569853863.a n : ℤ) = A402451 (n + 1)

end A402451

/-! ## A402451.P17075850374510771327

`∪[A091428(n+1), A191483(n+1)]`
-/

namespace A402451.P17075850374510771327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A402451.P17075850374510771327

namespace A402451

/-- `∪[A091428(n+1), A191483(n+1)]` -/
def P17075850374510771327.Spec : Prop :=
  ∀ n, (P17075850374510771327.a n : ℤ) = A402451 (n + 1)

end A402451

/-! ## A402451.P10140831593490264650

`filter[A121176(n+1), A359590(#)]`
-/

namespace A402451.P10140831593490264650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A402451.P10140831593490264650

namespace A402451

/-- `filter[A121176(n+1), A359590(#)]` -/
def P10140831593490264650.Spec : Prop :=
  ∀ n, P10140831593490264650.a n = A402451 (n + 1)

end A402451

/-! ## A402451.P17450489887852983398

`∩[A121176(n+1), A325130(n+1)]`
-/

namespace A402451.P17450489887852983398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402451.P17450489887852983398

namespace A402451

/-- `∩[A121176(n+1), A325130(n+1)]` -/
def P17450489887852983398.Spec : Prop :=
  ∀ n, (P17450489887852983398.a n : ℤ) = A402451 (n + 1)

end A402451

/-! ## A402451.P15165386793039628755

`filter[A046100(n+1), A359590(#)]`
-/

namespace A402451.P15165386793039628755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A402451.P15165386793039628755

namespace A402451

/-- `filter[A046100(n+1), A359590(#)]` -/
def P15165386793039628755.Spec : Prop :=
  ∀ n, P15165386793039628755.a n = A402451 (n + 1)

end A402451

/-!
# A402455: a(n) = 1 + Sum_{k=1..n} k^n * a(n-k).

The programs for A402455, there is no canonical definition to state claims against.
-/

/-! ## A402455.P15089296688206247817

`A108641(A323228(n))`
-/

namespace A402455.P15089296688206247817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108641 (A323228 n).toNat

end

end A402455.P15089296688206247817

/-!
# A402457: Primes p such that 3*p# - 1 is prime, where prime(n)# = A002110(n).

The programs for A402457, there is no canonical definition to state claims against.
-/

/-! ## A402457.P552527596969799474

`A218123(A344990(n+2))`
-/

namespace A402457.P552527596969799474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218123 (A344990 (n + 2)).toNat

end

end A402457.P552527596969799474

/-!
# A402476: G.f.: Sum_{k>=1} x^(k*(k+1)/2) / Product_{j=1..4*k} (1 - x^j).

The programs for A402476, there is no canonical definition to state claims against.
-/

/-! ## A402476.P5258026894115864602

`A367066(A266775(n+1))`
-/

namespace A402476.P5258026894115864602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367066 (A266775 (n + 1)).toNat

end

end A402476.P5258026894115864602

/-!
# A402477: G.f.: Sum_{k>=1} x^(k*(k+1)/2) / Product_{j=1..3*k} (1 - x^j).

The programs for A402477, there is no canonical definition to state claims against.
-/

/-! ## A402477.P8181657474797180625

`A109401(A271661(n+1))`
-/

namespace A402477.P8181657474797180625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109401 (A271661 (n + 1)).toNat

end

end A402477.P8181657474797180625

/-!
# A402482: G.f.: Sum_{k>=1} x^(k*(k+1)) / Product_{j=1..4*k} (1 - x^j).

The programs for A402482, there is no canonical definition to state claims against.
-/

/-! ## A402482.P4571561946161651535

`A367069(A341154(n))`
-/

namespace A402482.P4571561946161651535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367069 (A341154 n).toNat

end

end A402482.P4571561946161651535

/-!
# A402483: G.f.: Sum_{k>=1} x^(k*(k+1)) / Product_{j=1..3*k} (1 - x^j).

The programs for A402483, there is no canonical definition to state claims against.
-/

/-! ## A402483.P17944442635465297394

`A339931(A373305(n+1))`
-/

namespace A402483.P17944442635465297394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339931 (A373305 (n + 1)).toNat

end

end A402483.P17944442635465297394

/-! ## A402483.P11717434838344649362

`A157685(A035957(n+2))`
-/

namespace A402483.P11717434838344649362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A035957 (n + 2)).toNat

end

end A402483.P11717434838344649362

/-! ## A402483.P11550719786286724800

`A353090(A035951(n+2))`
-/

namespace A402483.P11550719786286724800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353090 (A035951 (n + 2)).toNat

end

end A402483.P11550719786286724800

/-!
# A402484: Number of partitions of n such that (greatest part) / (least part) = number of parts.

The programs for A402484, there is no canonical definition to state claims against.
-/

/-! ## A402484.P17202222994992932293

`A338718(A208887(n))`
-/

namespace A402484.P17202222994992932293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338718 (A208887 n).toNat

end

end A402484.P17202222994992932293

/-!
# A402485: Number of partitions of n such that (greatest part) / (least part) > number of parts.

The programs for A402485, there is no canonical definition to state claims against.
-/

/-! ## A402485.P12854743046835385442

`A000041(n+1)-A402486(n+1)`
-/

namespace A402485.P12854743046835385442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A402486 (n + 1)

end

end A402485.P12854743046835385442

/-! ## A402485.P10946739392091135018

`A237870(n+1)+A237823(n+1)-A402486(n+1)`
-/

namespace A402485.P10946739392091135018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237870 (n + 1) + A237823 (n + 1) - A402486 (n + 1)

end

end A402485.P10946739392091135018

/-! ## A402485.P11893338387301530983

`A237871(n+1)+A237822(n+1)-A402486(n+1)`
-/

namespace A402485.P11893338387301530983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237871 (n + 1) + A237822 (n + 1) - A402486 (n + 1)

end

end A402485.P11893338387301530983

/-! ## A402485.P4169445438756141534

`A330709(A255386(n+1))`
-/

namespace A402485.P4169445438756141534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A255386 (n + 1)).toNat

end

end A402485.P4169445438756141534

/-!
# A402486: Number of partitions of n such that (greatest part) / (least part) <= number of parts.

The programs for A402486, there is no canonical definition to state claims against.
-/

/-! ## A402486.P16996734434602602265

`A000041(n+1)-A402485(n+1)`
-/

namespace A402486.P16996734434602602265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A402485 (n + 1)

end

end A402486.P16996734434602602265

/-! ## A402486.P7654692915694722444

`A237870(n+1)+A237823(n+1)-A402485(n+1)`
-/

namespace A402486.P7654692915694722444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237870 (n + 1) + A237823 (n + 1) - A402485 (n + 1)

end

end A402486.P7654692915694722444

/-! ## A402486.P2551026091330336591

`A237871(n+1)+A237822(n+1)-A402485(n+1)`
-/

namespace A402486.P2551026091330336591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237871 (n + 1) + A237822 (n + 1) - A402485 (n + 1)

end

end A402486.P2551026091330336591

/-! ## A402486.P18288765878582796739

`A204166(A158149(n+1))`
-/

namespace A402486.P18288765878582796739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A158149 (n + 1)).toNat

end

end A402486.P18288765878582796739

/-!
# A402499: a(n) = 2*prime(n)# + 1, where prime(n)# = A002110(n).

The programs for A402499, there is no canonical definition to state claims against.
-/

/-! ## A402499.P9409192335512045391

`A282704(n)+2`
-/

namespace A402499.P9409192335512045391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282704 n + 2

end

end A402499.P9409192335512045391

/-! ## A402499.P423252614659691004

`2*A002110(n)+1`
-/

namespace A402499.P423252614659691004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002110 n + 1

end

end A402499.P423252614659691004

/-! ## A402499.P9846365773165709922

`2*A006862(n)-1`
-/

namespace A402499.P9846365773165709922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006862 n - 1

end

end A402499.P9846365773165709922

/-! ## A402499.P7038503933653389755

`(A402504(n)+1)/2`
-/

namespace A402499.P7038503933653389755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A402504 n + 1 : ℚ) / 2

end

end A402499.P7038503933653389755

/-! ## A402499.P3758846843200596671

`A006862(n)+A002110(n)`
-/

namespace A402499.P3758846843200596671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 n + A002110 n

end

end A402499.P3758846843200596671

