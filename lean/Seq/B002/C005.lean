import SequenceMachineLib
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
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
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
import Seq.B001.C014
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A220436.P15888042924145104676

`A127546(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220436.P15888042924145104676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127546 n ^ 2

end

end A220436.P15888042924145104676

noncomputable section

/-- A220436: a(n) = A127546(n)^2.

Offset 0, canonical program `A220436.P15888042924145104676`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A127546(n)²` (program `A220436.P15888042924145104676`, by `A220436.P15888042924145104676.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A220436 (n : ℕ) : ℤ :=
  A220436.P15888042924145104676.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A127546(n)²` (program `A220436.P15888042924145104676`, by `A220436.P15888042924145104676.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A220436.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A276916.P396322178884957613

`4*A276914(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276916.P396322178884957613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A276914 n + 1

end

end A276916.P396322178884957613

noncomputable section

/-- A276916: Subsequence of centered square numbers obtained by adding four triangles from A276914 and a central element, a(n) = 4*A276914(n) + 1.

Offset 0, canonical program `A276916.P396322178884957613`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*A276914(n)+1` (program `A276916.P396322178884957613`, by `A276916.P396322178884957613.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A276916 (n : ℕ) : ℤ :=
  A276916.P396322178884957613.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*A276914(n)+1` (program `A276916.P396322178884957613`, by `A276916.P396322178884957613.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A276916.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A276939.P10839818542998394330

`A002110(n)+A002110(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276939.P10839818542998394330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n + A002110 (n + 1)

end

end A276939.P10839818542998394330

noncomputable section

/-- A276939: Row 2 of A276945: a(n) = A002110(n) + A002110(n+1).

Offset 0, canonical program `A276939.P10839818542998394330`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002110(n)+A002110(n+1)` (program `A276939.P10839818542998394330`, by `A276939.P10839818542998394330.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A276939 (n : ℕ) : ℤ :=
  A276939.P10839818542998394330.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002110(n)+A002110(n+1)` (program `A276939.P10839818542998394330`, by `A276939.P10839818542998394330.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A276939.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A214888.P4270454209454101815

`∪[A090187(n+1), A141850(n+1)]`
-/

namespace A214888.P4270454209454101815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P4270454209454101815

noncomputable section

/-- A214888: Primes congruent to {2, 3} mod 11.

Offset 1, canonical program `A214888.P4270454209454101815`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A214888.anchor (n : ℕ) (hn : 1 ≤ n) : A214888 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 3} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A214.A214888`. -/
def A214888 (n : ℕ) : ℤ :=
  (A214888.P4270454209454101815.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A214888.anchor (n : ℕ) (hn : 1 ≤ n) : A214888 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 3} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A214.A214888`. -/
def A214888.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215104.P3862985368621771494

`∪[A138623(n+1), A214890(n+1)]`
-/

namespace A215104.P3862985368621771494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P3862985368621771494

noncomputable section

/-- A215104: Primes congruent to {2, 3, 5} mod 17.

Offset 1, canonical program `A215104.P3862985368621771494`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215104.anchor (n : ℕ) (hn : 1 ≤ n) : A215104 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 3, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215104`. -/
def A215104 (n : ℕ) : ℤ :=
  (A215104.P3862985368621771494.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215104.anchor (n : ℕ) (hn : 1 ≤ n) : A215104 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 3, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215104`. -/
def A215104.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215105.P1088098343684687308

`∪[A102851(n+1), A215101(n+1)]`
-/

namespace A215105.P1088098343684687308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P1088098343684687308

noncomputable section

/-- A215105: Primes congruent to {2, 3, 5} mod 19.

Offset 1, canonical program `A215105.P1088098343684687308`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215105.anchor (n : ℕ) (hn : 1 ≤ n) : A215105 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({2, 3, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215105`. -/
def A215105 (n : ℕ) : ℤ :=
  (A215105.P1088098343684687308.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215105.anchor (n : ℕ) (hn : 1 ≤ n) : A215105 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({2, 3, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215105`. -/
def A215105.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215153.P11999709609863500417

`∪[A129484(n+1), A214890(n+1)]`
-/

namespace A215153.P11999709609863500417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P11999709609863500417

noncomputable section

/-- A215153: Primes congruent to {1, 2, 3} mod 17.

Offset 1, canonical program `A215153.P11999709609863500417`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215153.anchor (n : ℕ) (hn : 1 ≤ n) : A215153 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({1, 2, 3} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215153`. -/
def A215153 (n : ℕ) : ℤ :=
  (A215153.P11999709609863500417.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215153.anchor (n : ℕ) (hn : 1 ≤ n) : A215153 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({1, 2, 3} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215153`. -/
def A215153.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215154.P4006258148339535244

`∪[A141868(n+1), A215101(n+1)]`
-/

namespace A215154.P4006258148339535244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P4006258148339535244

noncomputable section

/-- A215154: Primes congruent to {1, 2, 3} mod 19.

Offset 1, canonical program `A215154.P4006258148339535244`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215154.anchor (n : ℕ) (hn : 1 ≤ n) : A215154 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2, 3} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215154`. -/
def A215154 (n : ℕ) : ℤ :=
  (A215154.P4006258148339535244.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215154.anchor (n : ℕ) (hn : 1 ≤ n) : A215154 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2, 3} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215154`. -/
def A215154.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215163.P17122064836461897530

`∪[A141849(n+1), A141851(n+1)]`
-/

namespace A215163.P17122064836461897530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215163.P17122064836461897530

noncomputable section

/-- A215163: Primes congruent to {1, 4} mod 11.

Offset 1, canonical program `A215163.P17122064836461897530`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215163.anchor (n : ℕ) (hn : 1 ≤ n) : A215163 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({1, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215163`. -/
def A215163 (n : ℕ) : ℤ :=
  (A215163.P17122064836461897530.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215163.anchor (n : ℕ) (hn : 1 ≤ n) : A215163 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({1, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215163`. -/
def A215163.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215164.P17020110804136505988

`∪[A093191(n+1), A268753(n+1)]`
-/

namespace A215164.P17020110804136505988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215164.P17020110804136505988

noncomputable section

/-- A215164: Primes congruent to {1, 4} mod 13.

Offset 1, canonical program `A215164.P17020110804136505988`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215164.anchor (n : ℕ) (hn : 1 ≤ n) : A215164 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215164`. -/
def A215164 (n : ℕ) : ℤ :=
  (A215164.P17020110804136505988.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215164.anchor (n : ℕ) (hn : 1 ≤ n) : A215164 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215164`. -/
def A215164.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215166.P4426320899168472041

`∪[A141868(n+1), A141870(n+1)]`
-/

namespace A215166.P4426320899168472041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215166.P4426320899168472041

noncomputable section

/-- A215166: Primes congruent to {1, 4} mod 19.

Offset 1, canonical program `A215166.P4426320899168472041`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215166.anchor (n : ℕ) (hn : 1 ≤ n) : A215166 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215166`. -/
def A215166 (n : ℕ) : ℤ :=
  (A215166.P4426320899168472041.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215166.anchor (n : ℕ) (hn : 1 ≤ n) : A215166 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215166`. -/
def A215166.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215167.P10655791794589351713

`∪[A090187(n+1), A141852(n+1)]`
-/

namespace A215167.P10655791794589351713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P10655791794589351713

noncomputable section

/-- A215167: Primes congruent to {2, 5} mod 11.

Offset 1, canonical program `A215167.P10655791794589351713`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215167.anchor (n : ℕ) (hn : 1 ≤ n) : A215167 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215167`. -/
def A215167 (n : ℕ) : ℤ :=
  (A215167.P10655791794589351713.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215167.anchor (n : ℕ) (hn : 1 ≤ n) : A215167 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215167`. -/
def A215167.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215168.P5522760675368971835

`∪[A141858(n+1), A102732(n+1)]`
-/

namespace A215168.P5522760675368971835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P5522760675368971835

noncomputable section

/-- A215168: Primes congruent to {2, 5} mod 13.

Offset 1, canonical program `A215168.P5522760675368971835`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215168.anchor (n : ℕ) (hn : 1 ≤ n) : A215168 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215168`. -/
def A215168 (n : ℕ) : ℤ :=
  (A215168.P5522760675368971835.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215168.anchor (n : ℕ) (hn : 1 ≤ n) : A215168 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215168`. -/
def A215168.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215169.P6984535108480389464

`∪[A138623(n+1), A140544(n+1)]`
-/

namespace A215169.P6984535108480389464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P6984535108480389464

noncomputable section

/-- A215169: Primes congruent to {2, 5} mod 17.

Offset 1, canonical program `A215169.P6984535108480389464`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215169.anchor (n : ℕ) (hn : 1 ≤ n) : A215169 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215169`. -/
def A215169 (n : ℕ) : ℤ :=
  (A215169.P6984535108480389464.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215169.anchor (n : ℕ) (hn : 1 ≤ n) : A215169 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215169`. -/
def A215169.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215170.P16196430733042655435

`∪[A102851(n+1), A141869(n+1)]`
-/

namespace A215170.P16196430733042655435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P16196430733042655435

noncomputable section

/-- A215170: Primes congruent to {2, 5} mod 19.

Offset 1, canonical program `A215170.P16196430733042655435`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215170.anchor (n : ℕ) (hn : 1 ≤ n) : A215170 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({2, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215170`. -/
def A215170 (n : ℕ) : ℤ :=
  (A215170.P16196430733042655435.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215170.anchor (n : ℕ) (hn : 1 ≤ n) : A215170 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({2, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215170`. -/
def A215170.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215206.P4497237975855598041

`∪[A090187(n+1), A141854(n+1)]`
-/

namespace A215206.P4497237975855598041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P4497237975855598041

noncomputable section

/-- A215206: Primes congruent to {2, 7} mod 11.

Offset 1, canonical program `A215206.P4497237975855598041`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215206.anchor (n : ℕ) (hn : 1 ≤ n) : A215206 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215206`. -/
def A215206 (n : ℕ) : ℤ :=
  (A215206.P4497237975855598041.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215206.anchor (n : ℕ) (hn : 1 ≤ n) : A215206 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215206`. -/
def A215206.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215207.P12348991230913771112

`∪[A140371(n+1), A141858(n+1)]`
-/

namespace A215207.P12348991230913771112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215207.P12348991230913771112

noncomputable section

/-- A215207: Primes congruent to {2, 7} mod 13.

Offset 1, canonical program `A215207.P12348991230913771112`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215207.anchor (n : ℕ) (hn : 1 ≤ n) : A215207 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215207`. -/
def A215207 (n : ℕ) : ℤ :=
  (A215207.P12348991230913771112.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215207.anchor (n : ℕ) (hn : 1 ≤ n) : A215207 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215207`. -/
def A215207.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215208.P12872707927017093378

`∪[A138629(n+1), A140544(n+1)]`
-/

namespace A215208.P12872707927017093378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215208.P12872707927017093378

noncomputable section

/-- A215208: Primes congruent to {2, 7} mod 17.

Offset 1, canonical program `A215208.P12872707927017093378`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215208.anchor (n : ℕ) (hn : 1 ≤ n) : A215208 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215208`. -/
def A215208 (n : ℕ) : ℤ :=
  (A215208.P12872707927017093378.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215208.anchor (n : ℕ) (hn : 1 ≤ n) : A215208 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215208`. -/
def A215208.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215209.P9506204771007964000

`∪[A141869(n+1), A141872(n+1)]`
-/

namespace A215209.P9506204771007964000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215209.P9506204771007964000

noncomputable section

/-- A215209: Primes congruent to {2, 7} mod 19.

Offset 1, canonical program `A215209.P9506204771007964000`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215209.anchor (n : ℕ) (hn : 1 ≤ n) : A215209 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({2, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215209`. -/
def A215209 (n : ℕ) : ℤ :=
  (A215209.P9506204771007964000.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215209.anchor (n : ℕ) (hn : 1 ≤ n) : A215209 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({2, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215209`. -/
def A215209.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215280.P13878712752042011737

`∪[A093191(n+1), A214889(n+1)]`
-/

namespace A215280.P13878712752042011737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P13878712752042011737

noncomputable section

/-- A215280: Primes congruent to {2, 3, 4} mod 13.

Offset 1, canonical program `A215280.P13878712752042011737`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215280.anchor (n : ℕ) (hn : 1 ≤ n) : A215280 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 3, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215280`. -/
def A215280 (n : ℕ) : ℤ :=
  (A215280.P13878712752042011737.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215280.anchor (n : ℕ) (hn : 1 ≤ n) : A215280 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 3, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215280`. -/
def A215280.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215282.P15421644998039034553

`∪[A141870(n+1), A215101(n+1)]`
-/

namespace A215282.P15421644998039034553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P15421644998039034553

noncomputable section

/-- A215282: Primes congruent to {2, 3, 4} mod 19.

Offset 1, canonical program `A215282.P15421644998039034553`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215282.anchor (n : ℕ) (hn : 1 ≤ n) : A215282 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({2, 3, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215282`. -/
def A215282 (n : ℕ) : ℤ :=
  (A215282.P15421644998039034553.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215282.anchor (n : ℕ) (hn : 1 ≤ n) : A215282 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({2, 3, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215282`. -/
def A215282.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215357.P13591823837820838479

`∪[A102851(n+1), A215361(n+1)]`
-/

namespace A215357.P13591823837820838479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215357.P13591823837820838479

noncomputable section

/-- A215357: Primes congruent to {0, 2, 3, 4, 5} mod 19.

Offset 1, canonical program `A215357.P13591823837820838479`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215357.anchor (n : ℕ) (hn : 1 ≤ n) : A215357 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({0, 2, 3, 4, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215357`. -/
def A215357 (n : ℕ) : ℤ :=
  (A215357.P13591823837820838479.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215357.anchor (n : ℕ) (hn : 1 ≤ n) : A215357 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({0, 2, 3, 4, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215357`. -/
def A215357.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215387.P8622939867060955229

`∪[A093350(n+1), A214889(n+1)]`
-/

namespace A215387.P8622939867060955229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215387.P8622939867060955229

noncomputable section

/-- A215387: Primes congruent to {2, 3, 6} mod 13.

Offset 1, canonical program `A215387.P8622939867060955229`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215387.anchor (n : ℕ) (hn : 1 ≤ n) : A215387 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 3, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215387`. -/
def A215387 (n : ℕ) : ℤ :=
  (A215387.P8622939867060955229.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215387.anchor (n : ℕ) (hn : 1 ≤ n) : A215387 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 3, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215387`. -/
def A215387.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215388.P6479722193099368893

`∪[A140545(n+1), A214890(n+1)]`
-/

namespace A215388.P6479722193099368893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215388.P6479722193099368893

noncomputable section

/-- A215388: Primes congruent to {2, 3, 6} mod 17.

Offset 1, canonical program `A215388.P6479722193099368893`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215388.anchor (n : ℕ) (hn : 1 ≤ n) : A215388 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 3, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215388`. -/
def A215388 (n : ℕ) : ℤ :=
  (A215388.P6479722193099368893.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215388.anchor (n : ℕ) (hn : 1 ≤ n) : A215388 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 3, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215388`. -/
def A215388.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215389.P9588713011954173466

`∪[A141871(n+1), A215101(n+1)]`
-/

namespace A215389.P9588713011954173466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215389.P9588713011954173466

noncomputable section

/-- A215389: Primes congruent to {2, 3, 6} mod 19.

Offset 1, canonical program `A215389.P9588713011954173466`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215389.anchor (n : ℕ) (hn : 1 ≤ n) : A215389 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({2, 3, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215389`. -/
def A215389 (n : ℕ) : ℤ :=
  (A215389.P9588713011954173466.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215389.anchor (n : ℕ) (hn : 1 ≤ n) : A215389 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({2, 3, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215389`. -/
def A215389.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215390.P16701221075813804655

`∪[A090187(n+1), A141849(n+1)]`
-/

namespace A215390.P16701221075813804655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P16701221075813804655

noncomputable section

/-- A215390: Primes congruent to {1, 2} mod 11.

Offset 1, canonical program `A215390.P16701221075813804655`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215390.anchor (n : ℕ) (hn : 1 ≤ n) : A215390 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({1, 2} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215390`. -/
def A215390 (n : ℕ) : ℤ :=
  (A215390.P16701221075813804655.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215390.anchor (n : ℕ) (hn : 1 ≤ n) : A215390 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({1, 2} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215390`. -/
def A215390.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215391.P1080224131390404443

`∪[A141858(n+1), A268753(n+1)]`
-/

namespace A215391.P1080224131390404443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215391.P1080224131390404443

noncomputable section

/-- A215391: Primes congruent to {1, 2} mod 13.

Offset 1, canonical program `A215391.P1080224131390404443`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215391.anchor (n : ℕ) (hn : 1 ≤ n) : A215391 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1, 2} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215391`. -/
def A215391 (n : ℕ) : ℤ :=
  (A215391.P1080224131390404443.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215391.anchor (n : ℕ) (hn : 1 ≤ n) : A215391 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1, 2} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215391`. -/
def A215391.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215392.P5390637372741882320

`∪[A129484(n+1), A140544(n+1)]`
-/

namespace A215392.P5390637372741882320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P5390637372741882320

noncomputable section

/-- A215392: Primes congruent to {1, 2} mod 17.

Offset 1, canonical program `A215392.P5390637372741882320`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215392.anchor (n : ℕ) (hn : 1 ≤ n) : A215392 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({1, 2} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215392`. -/
def A215392 (n : ℕ) : ℤ :=
  (A215392.P5390637372741882320.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215392.anchor (n : ℕ) (hn : 1 ≤ n) : A215392 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({1, 2} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215392`. -/
def A215392.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215393.P13301529686558923603

`∪[A141868(n+1), A141869(n+1)]`
-/

namespace A215393.P13301529686558923603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215393.P13301529686558923603

noncomputable section

/-- A215393: Primes congruent to {1, 2} mod 19.

Offset 1, canonical program `A215393.P13301529686558923603`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215393.anchor (n : ℕ) (hn : 1 ≤ n) : A215393 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215393`. -/
def A215393 (n : ℕ) : ℤ :=
  (A215393.P13301529686558923603.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215393.anchor (n : ℕ) (hn : 1 ≤ n) : A215393 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215393`. -/
def A215393.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A243348.P5579662287376898014

`A005117(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243348.P5579662287376898014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - (n + 1 : ℤ)

end

end A243348.P5579662287376898014

noncomputable section

/-- A243348: Difference between the n-th squarefree number and n: a(n) = A005117(n) - n.

Offset 1, canonical program `A243348.P5579662287376898014`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005117(n+1)-(n+1)` (program `A243348.P5579662287376898014`, by `A243348.P5579662287376898014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A243348 (n : ℕ) : ℤ :=
  A243348.P5579662287376898014.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005117(n+1)-(n+1)` (program `A243348.P5579662287376898014`, by `A243348.P5579662287376898014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A243348.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A243351.P857383307926038219

`2*(n+1)-A005117(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243351.P857383307926038219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A005117 (n + 1)

end

end A243351.P857383307926038219

noncomputable section

/-- A243351: Difference between 2n and the n-th squarefree number: a(n) = 2n - A005117(n).

Offset 1, canonical program `A243351.P857383307926038219`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-A005117(n+1)` (program `A243351.P857383307926038219`, by `A243351.P857383307926038219.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A243351 (n : ℕ) : ℤ :=
  A243351.P857383307926038219.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-A005117(n+1)` (program `A243351.P857383307926038219`, by `A243351.P857383307926038219.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A243351.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A249416.P6446667695295982477

`A007913(∑{#}[n-0, A007913(C(n, #))])`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249416.P6446667695295982477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ k ∈ Finset.range (f1 n + 1).toNat, A007913 (Nat.choose n k)).toNat

end

end A249416.P6446667695295982477

noncomputable section

/-- A249416: a(n) = core(Sum_{i=0,...,n} core(binomial(n,i))), where core(n) = A007913(n).

Offset 0, canonical program `A249416.P6446667695295982477`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007913(∑{#}[n-0, A007913(C(n, #))])` (program `A249416.P6446667695295982477`, by `A249416.P6446667695295982477.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A249416 (n : ℕ) : ℤ :=
  A249416.P6446667695295982477.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007913(∑{#}[n-0, A007913(C(n, #))])` (program `A249416.P6446667695295982477`, by `A249416.P6446667695295982477.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A249416.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A265917.P11657784271815987445

`floor(A070939(n+1)/A000120(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265917.P11657784271815987445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070939 (n + 1) : ℚ) / (A000120 (n + 1) : ℚ)⌋

end

end A265917.P11657784271815987445

noncomputable section

/-- A265917: a(n) = floor(A070939(n)/A000120(n)) where A070939(n) is the binary length of n and A000120(n) is the binary weight of n.

Offset 1, canonical program `A265917.P11657784271815987445`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A070939(n+1)/A000120(n+1))` (program `A265917.P11657784271815987445`, by `A265917.P11657784271815987445.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A265917 (n : ℕ) : ℤ :=
  A265917.P11657784271815987445.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A070939(n+1)/A000120(n+1))` (program `A265917.P11657784271815987445`, by `A265917.P11657784271815987445.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A265917.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A265918.P6975300764845745833

`A070939(n+1)%A000120(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265918.P6975300764845745833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (n + 1)) (A000120 (n + 1))

end

end A265918.P6975300764845745833

noncomputable section

/-- A265918: a(n) = A070939(n) mod A000120(n), where A070939(n) is the binary length of n and A000120(n) is the binary weight of n.

Offset 1, canonical program `A265918.P6975300764845745833`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A070939(n+1)%A000120(n+1)` (program `A265918.P6975300764845745833`, by `A265918.P6975300764845745833.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A265918 (n : ℕ) : ℤ :=
  A265918.P6975300764845745833.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A070939(n+1)%A000120(n+1)` (program `A265918.P6975300764845745833`, by `A265918.P6975300764845745833.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A265918.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A210241.P362842857671069038

`A022559(n+1)+n+1`
-/

namespace A210241.P362842857671069038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) + (n + 1 : ℤ)

end

end A210241.P362842857671069038

noncomputable section

/-- A210241: Partial sums of A073093.

Offset 1, canonical program `A210241.P362842857671069038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210241 (n : ℕ) : ℤ :=
  A210241.P362842857671069038.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210241.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A210342.P14222146850216605555

`A135961(n+2)-1`
-/

namespace A210342.P14222146850216605555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135961 (n + 2) - 1

end

end A210342.P14222146850216605555

noncomputable section

/-- A210342: Row sums of triangle A210341.

Offset 0, canonical program `A210342.P14222146850216605555`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210342 (n : ℕ) : ℤ :=
  A210342.P14222146850216605555.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A210849.P10752492383084115412

`(A048899(n)²+1)/5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A210849.P10752492383084115412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048899 n ^ 2 + 1 : ℚ) / (5 ^ n : ℚ)

end

end A210849.P10752492383084115412

noncomputable section

/-- A210849: a(n) = (A048899(n)^2 + 1)/5^n, n >= 0.

Offset 0, canonical program `A210849.P10752492383084115412`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210849 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A210849.P10752492383084115412.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210849.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A210934.P6617217077888488102

`A001414(A008864(n+1))`
-/

namespace A210934.P6617217077888488102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A008864 (n + 1)).toNat

end

end A210934.P6617217077888488102

noncomputable section

/-- A210934: Sum of prime factors of prime(n)+1 (counted with multiplicity).

Offset 1, canonical program `A210934.P6617217077888488102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210934 (n : ℕ) : ℤ :=
  A210934.P6617217077888488102.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210934.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A210936.P14296701000802497448

`A001414(A006093(n+1))`
-/

namespace A210936.P14296701000802497448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A006093 (n + 1)).toNat

end

end A210936.P14296701000802497448

noncomputable section

/-- A210936: Sum of prime factors of prime(n)-1 (counted with multiplicity).

Offset 1, canonical program `A210936.P14296701000802497448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210936 (n : ℕ) : ℤ :=
  A210936.P14296701000802497448.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A211197.P9481613499707772193

`2*A002260(n+1)-A057211(n+1)`
-/

namespace A211197.P9481613499707772193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002260 (n + 1) - A057211 (n + 1)

end

end A211197.P9481613499707772193

noncomputable section

/-- A211197: Table T(n,k) = 2*n + ((-1)^n)*(1/2 - (k-1) mod 2) - 1/2; n, k > 0, read by antidiagonals.

Offset 1, canonical program `A211197.P9481613499707772193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211197 (n : ℕ) : ℤ :=
  A211197.P9481613499707772193.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A211381.P2497063138568768857

`A211380(n+3)-A000332(n+3)`
-/

namespace A211381.P2497063138568768857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211380 (n + 3) - A000332 (n + 3)

end

end A211381.P2497063138568768857

noncomputable section

/-- A211381: Number of pairs of intersecting diagonals in the exterior of a regular n-gon.

Offset 3, canonical program `A211381.P2497063138568768857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211381 (n : ℕ) : ℤ :=
  A211381.P2497063138568768857.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211381.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A211394.P13856090702538416621

`A003057(n+2)*A002024(n+1)/2-A002024(n+1)*(-1)^A003056(n)-A004736(n+1)+2`
-/

namespace A211394.P13856090702538416621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) * A002024 (n + 1) : ℚ) / 2 - (A002024 (n + 1) : ℚ) * (-1 : ℚ) ^ (A003056 n : ℤ) - (A004736 (n + 1) : ℚ) + 2

end

end A211394.P13856090702538416621

noncomputable section

/-- A211394: T(n,k) = (k+n)*(k+n-1)/2-(k+n-1)*(-1)^(k+n)-k+2; n , k > 0, read by antidiagonals.

Offset 1, canonical program `A211394.P13856090702538416621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211394 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A211394.P13856090702538416621.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211394.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A211779.P11493622072280912374

`A007429(n+1)-A000203(n+1)`
-/

namespace A211779.P11493622072280912374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - A000203 (n + 1)

end

end A211779.P11493622072280912374

noncomputable section

/-- A211779: a(n) = Sum_{d_<n | n} sigma(d_<n), where d_<n = divisors of n that are less than n, sigma(x) = A000203(x).

Offset 1, canonical program `A211779.P11493622072280912374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211779 (n : ℕ) : ℤ :=
  A211779.P11493622072280912374.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A211780.P8877674507974761173

`A007429(n+1)-(n+1)`
-/

namespace A211780.P8877674507974761173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - (n + 1 : ℤ)

end

end A211780.P8877674507974761173

noncomputable section

/-- A211780: a(n) = Sum_{d|n, d<n} d * tau(n / d), where tau = A000005 is the number of divisors.

Offset 1, canonical program `A211780.P8877674507974761173`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211780 (n : ℕ) : ℤ :=
  A211780.P8877674507974761173.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212012.P10131555541362374622

`2*A004736(n+1)`
-/

namespace A212012.P10131555541362374622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004736 (n + 1)

end

end A212012.P10131555541362374622

noncomputable section

/-- A212012: Triangle read by rows in which row n lists the number of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

Offset 1, canonical program `A212012.P10131555541362374622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212012 (n : ℕ) : ℤ :=
  A212012.P10131555541362374622.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212012.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212159.P1250702774170849760

`(-1)^A006254(n+1)`
-/

namespace A212159.P1250702774170849760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A006254 (n + 1) : ℤ)

end

end A212159.P1250702774170849760

noncomputable section

/-- A212159: a(n) = (-1)^((prime(n) + 1)/2).

Offset 2, canonical program `A212159.P1250702774170849760`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212159 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A212159.P1250702774170849760.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212503.P7074195460241346720

`A077043(n)²`
-/

namespace A212503.P7074195460241346720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n ^ 2

end

end A212503.P7074195460241346720

noncomputable section

/-- A212503: Number of (w,x,y,z) with all terms in {1,...,n} and w<2x and y<2z.

Offset 0, canonical program `A212503.P7074195460241346720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212503 (n : ℕ) : ℤ :=
  A212503.P7074195460241346720.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212507.P15479428626439604042

`A006578(n)*A077043(n)`
-/

namespace A212507.P15479428626439604042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n * A077043 n

end

end A212507.P15479428626439604042

noncomputable section

/-- A212507: Number of (w,x,y,z) with all terms in {1,...,n} and w<2x and y<=2z.

Offset 0, canonical program `A212507.P15479428626439604042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212507 (n : ℕ) : ℤ :=
  A212507.P15479428626439604042.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213088.P18382071125931641229

`A209302(n+1)-1`
-/

namespace A213088.P18382071125931641229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) - 1

end

end A213088.P18382071125931641229

noncomputable section

/-- A213088: The Manhattan distance to the origin while traversing the first quadrant in a taxicab geometry.

Offset 1, canonical program `A213088.P18382071125931641229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213088 (n : ℕ) : ℤ :=
  A213088.P18382071125931641229.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213171.P12504534459747449911

`(A003057(n+2)²-4*A004736(n+1)+3-(-1)^A002260(n+1)-A003057(n+2)*(-1)^A003056(n))/2`
-/

namespace A213171.P12504534459747449911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003057 (n + 2) ^ 2 - 4 * A004736 (n + 1) + 3 : ℚ) - (-1 : ℚ) ^ (A002260 (n + 1) : ℤ) - (A003057 (n + 2) : ℚ) * (-1 : ℚ) ^ (A003056 n : ℤ)) / 2

end

end A213171.P12504534459747449911

noncomputable section

/-- A213171: T(n,k) = ((k+n)^2 - 4*k + 3 - (-1)^n - (k+n)*(-1)^(k+n))/2; n, k > 0, read by antidiagonals.

Offset 1, canonical program `A213171.P12504534459747449911`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213171 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213171.P12504534459747449911.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213171.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213801.P10196525806075667594

`A064412(n+2)-A077043((2*(n+1)+1-(-1)^(n+1))/4)`
-/

namespace A213801.P10196525806075667594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (n + 2) - A077043 (SequenceMachineLib.roundAway (((2 * (n + 1) + 1 : ℤ) - (-1) ^ (n + 1) : ℚ) / 4)).toNat

end

end A213801.P10196525806075667594

noncomputable section

/-- A213801: Number of 3 X 3 0..n symmetric arrays with all rows summing to floor(n*3/2).

Offset 1, canonical program `A213801.P10196525806075667594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213801 (n : ℕ) : ℤ :=
  A213801.P10196525806075667594.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214263.P14358253122449274088

`A010054(2*n+1)`
-/

namespace A214263.P14358253122449274088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n + 1)

end

end A214263.P14358253122449274088

noncomputable section

/-- A214263: Expansion of f(x^1, x^7) in powers of x where f() is Ramanujan's general theta function.

Offset 0, canonical program `A214263.P14358253122449274088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214263 (n : ℕ) : ℤ :=
  A214263.P14358253122449274088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214264.P7340386951159269035

`A010054(2*n)`
-/

namespace A214264.P7340386951159269035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n)

end

end A214264.P7340386951159269035

noncomputable section

/-- A214264: Expansion of f(x^3, x^5) in powers of x where f() is Ramanujan's two-variable theta function.

Offset 0, canonical program `A214264.P7340386951159269035`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214264 (n : ℕ) : ℤ :=
  A214264.P7340386951159269035.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A215038.P12308997747420169802

`(A066258(n+1)-(-1)^n*A008346(n))/2`
-/

namespace A215038.P12308997747420169802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066258 (n + 1) - (-1) ^ n * A008346 n : ℚ) / 2

end

end A215038.P12308997747420169802

noncomputable section

/-- A215038: Partial sums of A066259: a(n) = Sum_{k=0..n} F(k+1)^2*F(k), n>=0, with the Fibonacci numbers F=A000045.

Offset 0, canonical program `A215038.P12308997747420169802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215038 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A215038.P12308997747420169802.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A215580.P15485213879133625661

`A005248(n+1)-A000034(n)`
-/

namespace A215580.P15485213879133625661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) - A000034 n

end

end A215580.P15485213879133625661

noncomputable section

/-- A215580: Partial sums of A215602.

Offset 0, canonical program `A215580.P15485213879133625661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215580 (n : ℕ) : ℤ :=
  A215580.P15485213879133625661.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A215667.P1287202979309322342

`(A141849(n+1)-1)/22`
-/

namespace A215667.P1287202979309322342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141849 (n + 1) - 1 : ℚ) / 22

end

end A215667.P1287202979309322342

noncomputable section

/-- A215667: 22n+1 is prime.

Offset 1, canonical program `A215667.P1287202979309322342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A215667.P1287202979309322342.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216243.P17518036523963729443

`A215602(n)+2`
-/

namespace A216243.P17518036523963729443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 n + 2

end

end A216243.P17518036523963729443

noncomputable section

/-- A216243: Partial sums of the squares of Lucas numbers (A000032).

Offset 0, canonical program `A216243.P17518036523963729443`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216243 (n : ℕ) : ℤ :=
  A216243.P17518036523963729443.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216685.P9601473456840992618

`A000120(n+a(n-1))` with `a(0)=0`
-/

namespace A216685.P9601473456840992618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000120 ((n : ℤ) + a (n - 1)).toNat

end

end A216685.P9601473456840992618

noncomputable section

/-- A216685: a(n) is the number of 1's in binary expansion of n + a(n-1), with a(0)=0.

Offset 0, canonical program `A216685.P9601473456840992618`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216685 (n : ℕ) : ℤ :=
  A216685.P9601473456840992618.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A217800.P12916482449186997636

`A006480(n+1)/((2+n)*(1+2*n)*(3+2*n))`
-/

namespace A217800.P12916482449186997636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 (n + 1) : ℚ) / ((2 + n) * (1 + 2 * n) * (3 + 2 * n) : ℚ)

end

end A217800.P12916482449186997636

noncomputable section

/-- A217800: Number of alternating permutations on 2n+1 letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

Offset 0, canonical program `A217800.P12916482449186997636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217800 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A217800.P12916482449186997636.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A218075.P1902989878547894807

`2^A001223(n+1)`
-/

namespace A218075.P1902989878547894807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218075.P1902989878547894807

noncomputable section

/-- A218075: a(n) = 2^(prime(n+1) - prime(n)).

Offset 1, canonical program `A218075.P1902989878547894807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218075 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A218075.P1902989878547894807.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218075.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A218451.P7815581726965520850

`10^n-A000120(5^n)`
-/

namespace A218451.P7815581726965520850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - A000120 (5 ^ n)

end

end A218451.P7815581726965520850

noncomputable section

/-- A218451: a(n) = 10^n minus its binary weight.

Offset 0, canonical program `A218451.P7815581726965520850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218451 (n : ℕ) : ℤ :=
  A218451.P7815581726965520850.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A218460.P14858959770545242725

`A000040(n+1)^A001223(n+1)`
-/

namespace A218460.P14858959770545242725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218460.P14858959770545242725

noncomputable section

/-- A218460: a(n) = prime(n)^(prime(n + 1) - prime(n)).

Offset 1, canonical program `A218460.P14858959770545242725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218460 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A218460.P14858959770545242725.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218460.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A218828.P498474312992821161

`A004736(A002260(n+1))`
-/

namespace A218828.P498474312992821161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A002260 (n + 1)).toNat

end

end A218828.P498474312992821161

noncomputable section

/-- A218828: Reluctant sequence of reverse reluctant sequence A004736.

Offset 1, canonical program `A218828.P498474312992821161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218828 (n : ℕ) : ℤ :=
  A218828.P498474312992821161.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A218828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A219097.P16650777398605658511

`A071986(2^n)`
-/

namespace A219097.P16650777398605658511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (2 ^ n)

end

end A219097.P16650777398605658511

noncomputable section

/-- A219097: Parity of pi(2^n).

Offset 0, canonical program `A219097.P16650777398605658511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219097 (n : ℕ) : ℤ :=
  A219097.P16650777398605658511.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A219390.P17150077939141016358

`2*A219191(n+1)`
-/

namespace A219390.P17150077939141016358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219191 (n + 1)

end

end A219390.P17150077939141016358

noncomputable section

/-- A219390: Numbers k such that 14*k+1 is a square.

Offset 1, canonical program `A219390.P17150077939141016358`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219390 (n : ℕ) : ℤ :=
  A219390.P17150077939141016358.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A219660.P14458110715348428642

`A000120(A051122(n))`
-/

namespace A219660.P14458110715348428642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A051122 n).toNat

end

end A219660.P14458110715348428642

noncomputable section

/-- A219660: a(n) = number of bit-positions where Fibonacci numbers F(n) and F(n+1) contain both an 1-bit in their binary representation.

Offset 0, canonical program `A219660.P14458110715348428642`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219660 (n : ℕ) : ℤ :=
  A219660.P14458110715348428642.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219660.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A219843.P18379057056590791838

`A000225(n+1)-A001317(n)`
-/

namespace A219843.P18379057056590791838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A001317 n

end

end A219843.P18379057056590791838

noncomputable section

/-- A219843: Rows of A219463 seen as numbers in binary representation.

Offset 0, canonical program `A219843.P18379057056590791838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219843 (n : ℕ) : ℤ :=
  A219843.P18379057056590791838.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A219843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220417.P2111861501532602898

`A004736(n+1)^A002260(n+1)-A002260(n+1)^A004736(n+1)`
-/

namespace A220417.P2111861501532602898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ) - (A002260 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A220417.P2111861501532602898

noncomputable section

/-- A220417: Table T(n,k) = k^n - n^k, n, k > 0, read by descending antidiagonals.

Offset 1, canonical program `A220417.P2111861501532602898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220417 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A220417.P2111861501532602898.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220417.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220464.P617436510485413338

`A002260(A004736(n+1))`
-/

namespace A220464.P617436510485413338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A004736 (n + 1)).toNat

end

end A220464.P617436510485413338

noncomputable section

/-- A220464: Reverse reluctant sequence of reluctant sequence A002260.

Offset 1, canonical program `A220464.P617436510485413338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220464 (n : ℕ) : ℤ :=
  A220464.P617436510485413338.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220464.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220465.P11455344750540427665

`A004736(A004736(n+1))`
-/

namespace A220465.P11455344750540427665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A004736 (n + 1)).toNat

end

end A220465.P11455344750540427665

noncomputable section

/-- A220465: Reverse reluctant sequence of reverse reluctant sequence A004736.

Offset 1, canonical program `A220465.P11455344750540427665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220465 (n : ℕ) : ℤ :=
  A220465.P11455344750540427665.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220556.P9202644970290283826

`(n+1)^A004736(n+1)`
-/

namespace A220556.P9202644970290283826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A220556.P9202644970290283826

noncomputable section

/-- A220556: Square array T(n,k) = ((n+k-1)*(n+k-2)/2+n)^k, n,k > 0 read by antidiagonals.

Offset 1, canonical program `A220556.P9202644970290283826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220556 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A220556.P9202644970290283826.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220902.P12084001508437350051

`A000108(n+2)-A000245(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220902.P12084001508437350051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) - A000245 n

end

end A220902.P12084001508437350051

noncomputable section

/-- A220902: a(n) = Catalan(n) - A000245(n-2).

Offset 2, canonical program `A220902.P12084001508437350051`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220902 (n : ℕ) : ℤ :=
  A220902.P12084001508437350051.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A221205.P3574255995108441508

`round(sqrt(A006880(n)))`
-/

namespace A221205.P3574255995108441508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A006880 n : ℝ))

end

end A221205.P3574255995108441508

noncomputable section

/-- A221205: a(n) is the nearest integer to sqrt(pi(10^n)) (see A006880).

Offset 0, canonical program `A221205.P3574255995108441508`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221205 (n : ℕ) : ℤ :=
  A221205.P3574255995108441508.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A221215.P247878274240375798

`(A003057(n+2)²-2*A003057(n+2)+4-(A002260(n+1)+3*A004736(n+1)-2)*(-1)^A003056(n))/2`
-/

namespace A221215.P247878274240375798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003057 (n + 2) ^ 2 - 2 * A003057 (n + 2) + 4 : ℚ) - (A002260 (n + 1) + 3 * A004736 (n + 1) - 2 : ℚ) * (-1 : ℚ) ^ (A003056 n : ℤ)) / 2

end

end A221215.P247878274240375798

noncomputable section

/-- A221215: T(n,k)= ((n+k)^2-2*(n+k)+4-(n+3*k-2)*(-1)^(n+k))/2; n , k > 0, read by antidiagonals.

Offset 1, canonical program `A221215.P247878274240375798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221215 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A221215.P247878274240375798.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221215.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A221216.P17978926705714334363

`(A003057(n+2)²-2*A003057(n+2)+4-(3*A002260(n+1)+A004736(n+1)-2)*(-1)^A003056(n))/2`
-/

namespace A221216.P17978926705714334363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003057 (n + 2) ^ 2 - 2 * A003057 (n + 2) + 4 : ℚ) - (3 * A002260 (n + 1) + A004736 (n + 1) - 2 : ℚ) * (-1 : ℚ) ^ (A003056 n : ℤ)) / 2

end

end A221216.P17978926705714334363

noncomputable section

/-- A221216: T(n,k) = ((n+k)^2-2*(n+k)+4-(3*n+k-2)*(-1)^(n+k))/2; n , k > 0, read by antidiagonals.

Offset 1, canonical program `A221216.P17978926705714334363`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221216 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A221216.P17978926705714334363.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A221216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A222637.P13679431788888405413

`A007913(A000522(n))`
-/

namespace A222637.P13679431788888405413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000522 n).toNat

end

end A222637.P13679431788888405413

noncomputable section

/-- A222637: Squarefree part of the total number of arrangements of a set with n elements.

Offset 0, canonical program `A222637.P13679431788888405413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222637 (n : ℕ) : ℤ :=
  A222637.P13679431788888405413.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A222963.P1582244053247490446

`A166011(n+2)/2`
-/

namespace A222963.P1582244053247490446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166011 (n + 2) : ℚ) / 2

end

end A222963.P1582244053247490446

noncomputable section

/-- A222963: a(n) = (p-3)*(p+3)/4 where p is the n-th prime.

Offset 2, canonical program `A222963.P1582244053247490446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222963 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A222963.P1582244053247490446.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A222963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A224880.P6780601834210635688

`A155085(n+1)+n+1`
-/

namespace A224880.P6780601834210635688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) + (n + 1 : ℤ)

end

end A224880.P6780601834210635688

noncomputable section

/-- A224880: a(n) = 2*n + sum of divisors of n.

Offset 1, canonical program `A224880.P6780601834210635688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224880 (n : ℕ) : ℤ :=
  A224880.P6780601834210635688.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225145.P8159227418262710555

`1-floor(A004736(n+1)/(A002260(n+1)+1))+floor((A004736(n+1)-1)/(A002260(n+1)+1))`
-/

namespace A225145.P8159227418262710555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊(A004736 (n + 1) : ℚ) / (A002260 (n + 1) + 1 : ℚ)⌋ + ⌊(A004736 (n + 1) - 1 : ℚ) / (A002260 (n + 1) + 1 : ℚ)⌋

end

end A225145.P8159227418262710555

noncomputable section

/-- A225145: Square array read by downwards antidiagonals: T(n,k) = 1 if k mod (n+1) > 0, T(n,k) = 0 if k mod (n+1) = 0.

Offset 1, canonical program `A225145.P8159227418262710555`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225145 (n : ℕ) : ℤ :=
  A225145.P8159227418262710555.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225145.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A226237.P11735504203655955141

`2*(n+1)*A045917(n+1)`
-/

namespace A226237.P11735504203655955141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A045917 (n + 1)

end

end A226237.P11735504203655955141

noncomputable section

/-- A226237: Sum of the parts in the Goldbach partitions of 2n.

Offset 1, canonical program `A226237.P11735504203655955141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A226237 (n : ℕ) : ℤ :=
  A226237.P11735504203655955141.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A226237.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A226974.P1205725743698452769

`∑{#}[floor(n/3), C(n, 3*#)*A002293(#)]`
-/

namespace A226974.P1205725743698452769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n (3 * k) : ℤ) * A002293 k

end

end A226974.P1205725743698452769

noncomputable section

/-- A226974: a(n) = Sum_{k=0..floor(n/3)} binomial(n,3*k)*binomial(4*k,k)/(3*k+1).

Offset 0, canonical program `A226974.P1205725743698452769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A226974 (n : ℕ) : ℤ :=
  A226974.P1205725743698452769.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A226974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227065.P1126766439769977197

`n+1-A045917(n+1)`
-/

namespace A227065.P1126766439769977197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A045917 (n + 1)

end

end A227065.P1126766439769977197

noncomputable section

/-- A227065: The number of partitions of 2n into exactly two parts such that the smaller and larger parts are not both prime.

Offset 1, canonical program `A227065.P1126766439769977197`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227065 (n : ℕ) : ℤ :=
  A227065.P1126766439769977197.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227065.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227356.P7010420418748917047

`a(n-1)+A129361(n)` with `a(0)=1, a(1)=2`
-/

namespace A227356.P7010420418748917047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A129361 n

end

end A227356.P7010420418748917047

noncomputable section

/-- A227356: Partial sums of A129361.

Offset 1, canonical program `A227356.P7010420418748917047`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227356 (n : ℕ) : ℤ :=
  A227356.P7010420418748917047.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227356.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227361.P9320893418699104060

`n+(-1)^(n%2)*A000120(n)`
-/

namespace A227361.P9320893418699104060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (-1) ^ (n % 2) * A000120 n

end

end A227361.P9320893418699104060

noncomputable section

/-- A227361: If n is even, then a(n) = n + bitsum(n), else a(n) = n - bitsum(n), where bitsum(n) is the count of binary 1's in n, A000120.

Offset 0, canonical program `A227361.P9320893418699104060`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227361 (n : ℕ) : ℤ :=
  A227361.P9320893418699104060.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227805.P8030689830281348118

`2*A195084(n+1)`
-/

namespace A227805.P8030689830281348118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195084 (n + 1)

end

end A227805.P8030689830281348118

noncomputable section

/-- A227805: Sum of even numbers starting at 2, alternating signs.

Offset 1, canonical program `A227805.P8030689830281348118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227805 (n : ℕ) : ℤ :=
  A227805.P8030689830281348118.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227805.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227990.P15467407999104537429

`A007949(A008864(n+1))`
-/

namespace A227990.P15467407999104537429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A008864 (n + 1)).toNat

end

end A227990.P15467407999104537429

noncomputable section

/-- A227990: 3^a(n) is the highest power of 3 dividing prime(n)+1.

Offset 1, canonical program `A227990.P15467407999104537429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227990 (n : ℕ) : ℤ :=
  A227990.P15467407999104537429.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228121.P1458711502036451659

`A024893(n+1)+2`
-/

namespace A228121.P1458711502036451659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) + 2

end

end A228121.P1458711502036451659

noncomputable section

/-- A228121: Numbers n such that 3n - 4 is prime.

Offset 1, canonical program `A228121.P1458711502036451659`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228121 (n : ℕ) : ℤ :=
  A228121.P1458711502036451659.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228274.P5163058848440072856

`(n+1)*A002131(n+1)`
-/

namespace A228274.P5163058848440072856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002131 (n + 1)

end

end A228274.P5163058848440072856

noncomputable section

/-- A228274: a(n) = Sum_{d|n, n/d odd} n * d.

Offset 1, canonical program `A228274.P5163058848440072856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228274 (n : ℕ) : ℤ :=
  A228274.P5163058848440072856.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228274.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228329.P18294392692715026064

`A051960(2*n)/2`
-/

namespace A228329.P18294392692715026064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051960 (2 * n) : ℚ) / 2

end

end A228329.P18294392692715026064

noncomputable section

/-- A228329: a(n) = Sum_{k=0..n} (k+1)^2*T(n,k)^2 where T(n,k) is the Catalan triangle A039598.

Offset 0, canonical program `A228329.P18294392692715026064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228329 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A228329.P18294392692715026064.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228593.P1839706933872037999

`A002110(n)*A002110(n+1)`
-/

namespace A228593.P1839706933872037999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A002110 (n + 1)

end

end A228593.P1839706933872037999

noncomputable section

/-- A228593: Products of 2 successive primorials.

Offset 1, canonical program `A228593.P1839706933872037999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228593 (n : ℕ) : ℤ :=
  A228593.P1839706933872037999.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228843.P9707303351717591130

`4^n*A228842(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228843.P9707303351717591130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A228842 n

end

end A228843.P9707303351717591130

noncomputable section

/-- A228843: a(n) = 4^n*A228842(n).

Offset 0, canonical program `A228843.P9707303351717591130`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228843 (n : ℕ) : ℤ :=
  A228843.P9707303351717591130.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229745.P7538036210165215942

`A000120(n+A000120(n))-A000120(n)`
-/

namespace A229745.P7538036210165215942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) + A000120 n).toNat - A000120 n

end

end A229745.P7538036210165215942

noncomputable section

/-- A229745: a(n) = wt(n+wt(n))-wt(n), where wt(n) is the binary weight of n, A000120(n).

Offset 0, canonical program `A229745.P7538036210165215942`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229745 (n : ℕ) : ℤ :=
  A229745.P7538036210165215942.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229852.P573498570990364365

`3*A104777(n+1)`
-/

namespace A229852.P573498570990364365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A104777 (n + 1)

end

end A229852.P573498570990364365

noncomputable section

/-- A229852: 3*h^2, where h is an odd integer not divisible by 3.

Offset 1, canonical program `A229852.P573498570990364365`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229852 (n : ℕ) : ℤ :=
  A229852.P573498570990364365.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229852.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230300.P756127149429480426

`n+1+A000120(n)`
-/

namespace A230300.P756127149429480426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000120 n

end

end A230300.P756127149429480426

noncomputable section

/-- A230300: a(n) = n + wt(n-1), where wt() = A000120() is the binary weight.

Offset 1, canonical program `A230300.P756127149429480426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230300 (n : ℕ) : ℤ :=
  A230300.P756127149429480426.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230300.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230482.P1924195246442400697

`(A217622(n+1)-A230460(n+1))/2`
-/

namespace A230482.P1924195246442400697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217622 (n + 1) - A230460 (n + 1) : ℚ) / 2

end

end A230482.P1924195246442400697

noncomputable section

/-- A230482: a(n) = (prime(prime(2*n)) - prime(2*prime(n)))/2.

Offset 1, canonical program `A230482.P1924195246442400697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A230482.P1924195246442400697.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230865.P13351572211588276155

`n+A053824(n)`
-/

namespace A230865.P13351572211588276155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A053824 n

end

end A230865.P13351572211588276155

noncomputable section

/-- A230865: a(n) = n + (sum of digits in base-5 representation of n).

Offset 0, canonical program `A230865.P13351572211588276155`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230865 (n : ℕ) : ℤ :=
  A230865.P13351572211588276155.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230865.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A231425.P12620415110256571272

`A023900(gcd(row(n)+1, col(n)+1))`
-/

namespace A231425.P12620415110256571272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (Nat.gcd (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1))

end

end A231425.P12620415110256571272

noncomputable section

/-- A231425: The Schramm triangle: T(n,k) = f(gcd(n,k)), where f = Dirichlet inverse of Euler totient.

Offset 1, canonical program `A231425.P12620415110256571272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A231425 (n : ℕ) : ℤ :=
  A231425.P12620415110256571272.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A231425.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A233149.P1830884297999285355

`-A077119((n+1)²+1)`
-/

namespace A233149.P1830884297999285355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077119 ((n + 1) ^ 2 + 1)

end

end A233149.P1830884297999285355

noncomputable section

/-- A233149: a(n) = ((n^2+1)^3) - s, where s is the nearest square to (n^2+1)^3.

Offset 1, canonical program `A233149.P1830884297999285355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233149 (n : ℕ) : ℤ :=
  A233149.P1830884297999285355.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A235536.P17712812136090816936

`A002293(2*n)`
-/

namespace A235536.P17712812136090816936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (2 * n)

end

end A235536.P17712812136090816936

noncomputable section

/-- A235536: a(n) = binomial(8*n, 2*n) / (6*n + 1).

Offset 0, canonical program `A235536.P17712812136090816936`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235536 (n : ℕ) : ℤ :=
  A235536.P17712812136090816936.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236959.P4408222998361723081

`A006093(n+1)/gcd(A006093(n+1), 3)`
-/

namespace A236959.P4408222998361723081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (Int.gcd (A006093 (n + 1)) 3 : ℚ)

end

end A236959.P4408222998361723081

noncomputable section

/-- A236959: Number of nonzero cubic residues modulo the n-th prime.

Offset 1, canonical program `A236959.P4408222998361723081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236959 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236959.P4408222998361723081.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236965.P13563175010307940546

`A006093(n+1)/gcd(A006093(n+1), 4)`
-/

namespace A236965.P13563175010307940546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (Int.gcd (A006093 (n + 1)) 4 : ℚ)

end

end A236965.P13563175010307940546

noncomputable section

/-- A236965: Number of nonzero quartic residues modulo the n-th prime.

Offset 1, canonical program `A236965.P13563175010307940546`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236965 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236965.P13563175010307940546.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237424.P11989314284916062246

`(A052216(n+1)+1)/3`
-/

namespace A237424.P11989314284916062246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052216 (n + 1) + 1 : ℚ) / 3

end

end A237424.P11989314284916062246

noncomputable section

/-- A237424: Numbers of the form (10^a + 10^b + 1)/3.

Offset 1, canonical program `A237424.P11989314284916062246`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A237424.P11989314284916062246.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237424.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237589.P15064465826932885110

`A014284(n+2)-2`
-/

namespace A237589.P15064465826932885110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 2) - 2

end

end A237589.P15064465826932885110

noncomputable section

/-- A237589: Sum of first n odd noncomposite numbers.

Offset 1, canonical program `A237589.P15064465826932885110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237589 (n : ℕ) : ℤ :=
  A237589.P15064465826932885110.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238452.P3440070362232594000

`A057977(n+1)-A057977(n)*(n+1)%2`
-/

namespace A238452.P3440070362232594000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (n + 1) - A057977 n * (((n + 1) % 2 : ℕ) : ℤ)

end

end A238452.P3440070362232594000

noncomputable section

/-- A238452: Second column of the extended Catalan triangle A189231.

Offset 0, canonical program `A238452.P3440070362232594000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238452 (n : ℕ) : ℤ :=
  A238452.P3440070362232594000.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238529.P2204490326490213076

`1+a(A238525(n))` with `a(0)=0, a(1)=0`
-/

namespace A238529.P2204490326490213076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 + a (A238525 n).toNat

end

end A238529.P2204490326490213076

noncomputable section

/-- A238529: a(0) = a(1) = 0, and for n > 1, a(n) = number of iterations of A238525 (n modulo sopfr(n)) needed to reach either 0 or 1. Here sopfr(n) is the sum of the prime factors of n, with multiplicity, A001414.

Offset 0, canonical program `A238529.P2204490326490213076`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238529 (n : ℕ) : ℤ :=
  (A238529.P2204490326490213076.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238951.P14408596811991432527

`floor(A062799(n+1)/2)`
-/

namespace A238951.P14408596811991432527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062799 (n + 1) : ℚ) / 2⌋

end

end A238951.P14408596811991432527

noncomputable section

/-- A238951: Number of arcs from odd to even level vertices in divisor lattice D(n).

Offset 1, canonical program `A238951.P14408596811991432527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238951 (n : ℕ) : ℤ :=
  A238951.P14408596811991432527.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238951.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239052.P10933618441211416237

`3*A008438(n)`
-/

namespace A239052.P10933618441211416237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008438 n

end

end A239052.P10933618441211416237

noncomputable section

/-- A239052: Sum of divisors of 4*n-2.

Offset 1, canonical program `A239052.P10933618441211416237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239052 (n : ℕ) : ℤ :=
  A239052.P10933618441211416237.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239053.P13241166166120264042

`4*A097723(n)`
-/

namespace A239053.P13241166166120264042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A097723 n

end

end A239053.P13241166166120264042

noncomputable section

/-- A239053: Sum of divisors of 4*n-1.

Offset 1, canonical program `A239053.P13241166166120264042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239053 (n : ℕ) : ℤ :=
  A239053.P13241166166120264042.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239282.P1197083983086139586

`A045917(n+1)*A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239282.P1197083983086139586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) * A000040 (n + 1)

end

end A239282.P1197083983086139586

noncomputable section

/-- A239282: a(n) = A045917(n)*prime(n).

Offset 1, canonical program `A239282.P1197083983086139586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239282 (n : ℕ) : ℤ :=
  A239282.P1197083983086139586.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239282.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239636.P9315992942707104834

`2*A014689(n+1)-1`
-/

namespace A239636.P9315992942707104834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014689 (n + 1) - 1

end

end A239636.P9315992942707104834

noncomputable section

/-- A239636: Distance between the two occurrences of n-th prime in A082500.

Offset 1, canonical program `A239636.P9315992942707104834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239636 (n : ℕ) : ℤ :=
  A239636.P9315992942707104834.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239691.P9580753319822426723

`A053824(A000040(n+1))`
-/

namespace A239691.P9580753319822426723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A000040 (n + 1)).toNat

end

end A239691.P9580753319822426723

noncomputable section

/-- A239691: Base 5 sum of digits of prime(n).

Offset 1, canonical program `A239691.P9580753319822426723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239691 (n : ℕ) : ℤ :=
  A239691.P9580753319822426723.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239885.P1896518761553761145

`A110295(n+1)/2`
-/

namespace A239885.P1896518761553761145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110295 (n + 1) : ℚ) / 2

end

end A239885.P1896518761553761145

noncomputable section

/-- A239885: a(n) = 2^(n-2) * prime(n).

Offset 1, canonical program `A239885.P1896518761553761145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239885.P1896518761553761145.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239968.P9247355313622841393

`A062298(n+1)*A005171(n+1)`
-/

namespace A239968.P9247355313622841393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) * A005171 (n + 1)

end

end A239968.P9247355313622841393

noncomputable section

/-- A239968: a(n) = 0 unless n is a nonprime A018252(k) then a(n) = k.

Offset 1, canonical program `A239968.P9247355313622841393`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239968 (n : ℕ) : ℤ :=
  A239968.P9247355313622841393.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239968.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240068.P6814075163463490224

`8*A008864(n+1)`
-/

namespace A240068.P6814075163463490224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A008864 (n + 1)

end

end A240068.P6814075163463490224

noncomputable section

/-- A240068: Number of prime Lipschitz quaternions having norm prime(n).

Offset 1, canonical program `A240068.P6814075163463490224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240068 (n : ℕ) : ℤ :=
  A240068.P6814075163463490224.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240068.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240530.P76168564774585467

`2*A028329(n)`
-/

namespace A240530.P76168564774585467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028329 n

end

end A240530.P76168564774585467

noncomputable section

/-- A240530: a(n) = 4*(2*n)! / (n!)^2.

Offset 0, canonical program `A240530.P76168564774585467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240530 (n : ℕ) : ℤ :=
  A240530.P76168564774585467.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240558.P15701210074794565359

`2^n*A057977(n)`
-/

namespace A240558.P15701210074794565359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A057977 n

end

end A240558.P15701210074794565359

noncomputable section

/-- A240558: a(n) = 2^n*n!/((floor(n/2)+1)*floor(n/2)!^2).

Offset 0, canonical program `A240558.P15701210074794565359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240558 (n : ℕ) : ℤ :=
  A240558.P15701210074794565359.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240603.P623960276540613334

`A005117(n+1)+A005117(n+2)`
-/

namespace A240603.P623960276540613334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + A005117 (n + 2)

end

end A240603.P623960276540613334

noncomputable section

/-- A240603: Numbers that are the sum of two successive squarefree numbers.

Offset 1, canonical program `A240603.P623960276540613334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240603 (n : ℕ) : ℤ :=
  A240603.P623960276540613334.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240804.P4925870377936776396

`A070826(n+2)-2`
-/

namespace A240804.P4925870377936776396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 2) - 2

end

end A240804.P4925870377936776396

noncomputable section

/-- A240804: a(n) = -2 + product of first n odd primes.

Offset 1, canonical program `A240804.P4925870377936776396`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240804 (n : ℕ) : ℤ :=
  A240804.P4925870377936776396.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240836.P5427845226329489471

`2*A081016(n)`
-/

namespace A240836.P5427845226329489471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081016 n

end

end A240836.P5427845226329489471

noncomputable section

/-- A240836: Numbers n such that n^3 = x*y*z where 2 <= x <= y <= z , n^3+1 = (x-1)*(y+1)*(z+1).

Offset 1, canonical program `A240836.P5427845226329489471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240836 (n : ℕ) : ℤ :=
  A240836.P5427845226329489471.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242090.P12079019008023178367

`1/2*A242089(n+1)`
-/

namespace A242090.P12079019008023178367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A242089 (n + 1) : ℚ)

end

end A242090.P12079019008023178367

noncomputable section

/-- A242090: Number of triples (a,b,c) with 0 < a < b < c < p and a + b + c == 0 mod p, where 2*b < p = prime(n).

Offset 1, canonical program `A242090.P12079019008023178367`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242090.P12079019008023178367.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242389.P11990972106804115361

`A000079(n+1)-A001065(n+1)`
-/

namespace A242389.P11990972106804115361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A001065 (n + 1)

end

end A242389.P11990972106804115361

noncomputable section

/-- A242389: 2^n minus the sum of the proper divisors of n.

Offset 1, canonical program `A242389.P11990972106804115361`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242389 (n : ℕ) : ℤ :=
  A242389.P11990972106804115361.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242480.P3191042440145874501

`A142150(n+1)+A054024(n+1)+A229110(n+1)`
-/

namespace A242480.P3191042440145874501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A054024 (n + 1) + A229110 (n + 1)

end

end A242480.P3191042440145874501

noncomputable section

/-- A242480: a(n) = (n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n.

Offset 1, canonical program `A242480.P3191042440145874501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242480 (n : ℕ) : ℤ :=
  A242480.P3191042440145874501.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242493.P16512276420622633304

`n+1-A064775(n+1)`
-/

namespace A242493.P16512276420622633304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A064775 (n + 1)

end

end A242493.P16512276420622633304

noncomputable section

/-- A242493: a(n) is the number of not-sqrt-smooth numbers ("jagged" numbers) not exceeding n. This is the counting function of A064052.

Offset 1, canonical program `A242493.P16512276420622633304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242493 (n : ℕ) : ℤ :=
  A242493.P16512276420622633304.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242493.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243756.P3633262118431824460

`A242954(row(n))/(A242954(col(n))*A242954(row(n)-col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243756.P3633262118431824460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242954 (SequenceMachineLib.triRow n) : ℚ) / (A242954 (SequenceMachineLib.triCol n) * A242954 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A243756.P3633262118431824460

noncomputable section

/-- A243756: Triangle read by rows: T(n,k) = A242954(n)/(A242954(k) * A242954(n-k)).

Offset 0, canonical program `A243756.P3633262118431824460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243756 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A243756.P3633262118431824460.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243892.P16948930208499248981

`A000040(A106587(n+1))`
-/

namespace A243892.P16948930208499248981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A106587 (n + 1)).toNat

end

end A243892.P16948930208499248981

noncomputable section

/-- A243892: a(n) = prime(k) with k = n^2 + prime(n)^2.

Offset 1, canonical program `A243892.P16948930208499248981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243892 (n : ℕ) : ℤ :=
  A243892.P16948930208499248981.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243892.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243893.P4774674769451763253

`A000040(A106587(n+1)-1)`
-/

namespace A243893.P4774674769451763253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A106587 (n + 1) - 1).toNat

end

end A243893.P4774674769451763253

noncomputable section

/-- A243893: a(n) = prime(k-1) with k = n^2 + prime(n)^2.

Offset 1, canonical program `A243893.P4774674769451763253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243893 (n : ℕ) : ℤ :=
  A243893.P4774674769451763253.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243893.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243894.P4993376093936159259

`A000040(A106587(n+1)+1)`
-/

namespace A243894.P4993376093936159259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A106587 (n + 1) + 1).toNat

end

end A243894.P4993376093936159259

noncomputable section

/-- A243894: a(n) = prime(k+1) with k = n^2 + prime(n)^2.

Offset 1, canonical program `A243894.P4993376093936159259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243894 (n : ℕ) : ℤ :=
  A243894.P4993376093936159259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244329.P12240149953231840397

`floor(A024816(n+1)/A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244329.P12240149953231840397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024816 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)⌋

end

end A244329.P12240149953231840397

noncomputable section

/-- A244329: a(n) = floor(antisigma(n) / sigma(n)) = floor(A024816(n) / A000203(n)).

Offset 1, canonical program `A244329.P12240149953231840397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244329 (n : ℕ) : ℤ :=
  A244329.P12240149953231840397.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244509.P12134030914393588250

`A127917(n+1)*(A000040(n+1)-1)`
-/

namespace A244509.P12134030914393588250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127917 (n + 1) * (A000040 (n + 1) - 1)

end

end A244509.P12134030914393588250

noncomputable section

/-- A244509: Order of GL_2(p), the general linear group over F_p, where p runs through the primes.

Offset 1, canonical program `A244509.P12134030914393588250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244509 (n : ℕ) : ℤ :=
  A244509.P12134030914393588250.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244509.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244963.P8812478636684031312

`A000203(n+1)-A001615(n+1)`
-/

namespace A244963.P8812478636684031312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A001615 (n + 1)

end

end A244963.P8812478636684031312

noncomputable section

/-- A244963: a(n) = sigma(n) - n * Product_{p|n, p prime} (1 + 1/p).

Offset 1, canonical program `A244963.P8812478636684031312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244963 (n : ℕ) : ℤ :=
  A244963.P8812478636684031312.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245396.P12690850996293574207

`A151799(ceil(A000040(n+1)^(1+1/(n+1))))`
-/

namespace A245396.P12690850996293574207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 ⌈(A000040 (n + 1) : ℝ) ^ (1 + 1 / (n + 1 : ℚ) : ℝ)⌉.toNat

end

end A245396.P12690850996293574207

noncomputable section

/-- A245396: Largest prime not exceeding prime(n)^(1 + 1/n).

Offset 1, canonical program `A245396.P12690850996293574207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245396 (n : ℕ) : ℤ :=
  A245396.P12690850996293574207.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245484.P7320759544988298613

`A001001(n+1)-A064987(n+1)`
-/

namespace A245484.P7320759544988298613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001001 (n + 1) - A064987 (n + 1)

end

end A245484.P7320759544988298613

noncomputable section

/-- A245484: a(n) = Sum_{(d<n)|n} d*sigma(d).

Offset 1, canonical program `A245484.P7320759544988298613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245484 (n : ℕ) : ℤ :=
  A245484.P7320759544988298613.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245908.P15352707288532766868

`A082863(A000040(n+1))`
-/

namespace A245908.P15352707288532766868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (A000040 (n + 1)).toNat

end

end A245908.P15352707288532766868

noncomputable section

/-- A245908: The number of distinct prime factors of prime(n)^2-1.

Offset 1, canonical program `A245908.P15352707288532766868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245908 (n : ℕ) : ℤ :=
  A245908.P15352707288532766868.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246138.P8319497422780935460

`((3*(n+1)+2)*(3*(n+1)-2)*A005802(n)-(n+3)²*A005802(n+1))/4`
-/

namespace A246138.P8319497422780935460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) + 2 : ℤ) * ((3 * (n + 1) : ℤ) - 2) * A005802 n - ((n + 3) ^ 2 : ℤ) * A005802 (n + 1) : ℚ) / 4

end

end A246138.P8319497422780935460

noncomputable section

/-- A246138: a(n) = (Sum_{k=0..n-1} A246065(k)) / n^2.

Offset 1, canonical program `A246138.P8319497422780935460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246138 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246138.P8319497422780935460.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247159.P14898152283325292687

`A000203(A100484(n+1))`
-/

namespace A247159.P14898152283325292687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A100484 (n + 1)).toNat

end

end A247159.P14898152283325292687

noncomputable section

/-- A247159: Sum of divisors of even semiprimes.

Offset 1, canonical program `A247159.P14898152283325292687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247159 (n : ℕ) : ℤ :=
  A247159.P14898152283325292687.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247380.P8040246546011606999

`A117495(n+2)-A117495(n+1)`
-/

namespace A247380.P8040246546011606999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117495 (n + 2) - A117495 (n + 1)

end

end A247380.P8040246546011606999

noncomputable section

/-- A247380: First differences of A117495.

Offset 1, canonical program `A247380.P8040246546011606999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247380 (n : ℕ) : ℤ :=
  A247380.P8040246546011606999.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247491.P5670175357708063769

`A000296(n)-A005043(n)`
-/

namespace A247491.P5670175357708063769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 n - A005043 n

end

end A247491.P5670175357708063769

noncomputable section

/-- A247491: Number of crossing partitions of {1,2,...,n} that contain no singletons.

Offset 0, canonical program `A247491.P5670175357708063769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247491 (n : ℕ) : ℤ :=
  A247491.P5670175357708063769.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247562.P5849283782100272797

`A101402(10^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A247562.P5849283782100272797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (10 ^ n)

end

end A247562.P5849283782100272797

noncomputable section

/-- A247562: A101402(10^n).

Offset 0, canonical program `A247562.P5849283782100272797`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247562 (n : ℕ) : ℤ :=
  A247562.P5849283782100272797.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247562.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247938.P2429314974595596227

`A000203(A001348(n+1))`
-/

namespace A247938.P2429314974595596227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001348 (n + 1)).toNat

end

end A247938.P2429314974595596227

noncomputable section

/-- A247938: Sum of divisors of 2^prime(n)-1.

Offset 1, canonical program `A247938.P2429314974595596227`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247938 (n : ℕ) : ℤ :=
  A247938.P2429314974595596227.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247938.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247939.P5337322857846998931

`A000203(A098640(n+1))`
-/

namespace A247939.P5337322857846998931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A098640 (n + 1)).toNat

end

end A247939.P5337322857846998931

noncomputable section

/-- A247939: Sum of divisors of 2^prime(n)+1.

Offset 1, canonical program `A247939.P5337322857846998931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247939 (n : ℕ) : ℤ :=
  A247939.P5337322857846998931.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A248517.P14904334009551317657

`A060831(n)-n`
-/

namespace A248517.P14904334009551317657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n - (n : ℤ)

end

end A248517.P14904334009551317657

noncomputable section

/-- A248517: Number of odd divisors > 1 in the numbers 1 through n, counted with multiplicity.

Offset 0, canonical program `A248517.P14904334009551317657`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248517 (n : ℕ) : ℤ :=
  A248517.P14904334009551317657.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249154.P2345966816674260141

`(n+1)*A000120(n)`
-/

namespace A249154.P2345966816674260141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000120 n

end

end A249154.P2345966816674260141

noncomputable section

/-- A249154: (n+1) times the number of 1's in the binary expansion of n.

Offset 0, canonical program `A249154.P2345966816674260141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249154 (n : ℕ) : ℤ :=
  A249154.P2345966816674260141.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249154.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249343.P12330199353449304964

`∑{#}[n, A243759(C(n+1, 2)+#)]`
-/

namespace A249343.P12330199353449304964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A243759 (Nat.choose (n + 1) 2 + k)

end

end A249343.P12330199353449304964

noncomputable section

/-- A249343: The exponent of the highest power of 3 dividing the product of the elements on the n-th row of Pascal's triangle (A001142(n)).

Offset 0, canonical program `A249343.P12330199353449304964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249343 (n : ℕ) : ℤ :=
  A249343.P12330199353449304964.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249586.P18263077682237297372

`A000537(n^3)`
-/

namespace A249586.P18263077682237297372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n ^ 3)

end

end A249586.P18263077682237297372

noncomputable section

/-- A249586: Sum of the first n^3 cubes.

Offset 0, canonical program `A249586.P18263077682237297372`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249586 (n : ℕ) : ℤ :=
  A249586.P18263077682237297372.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A250130.P14508315065986858238

`(n+1)*A002110(n+1)`
-/

namespace A250130.P14508315065986858238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002110 (n + 1)

end

end A250130.P14508315065986858238

noncomputable section

/-- A250130: Numerator of the harmonic mean of the first n primes.

Offset 1, canonical program `A250130.P14508315065986858238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250130 (n : ℕ) : ℤ :=
  A250130.P14508315065986858238.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250130.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A250478.P6482971320127735987

`∑{d}[A002110(n), A008683(#)*floor(A000040(n+1)^3/#)]`
-/

namespace A250478.P6482971320127735987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d * ⌊(A000040 (n + 1) ^ 3 : ℚ) / (d : ℚ)⌋

end

end A250478.P6482971320127735987

noncomputable section

/-- A250478: Number of times prime(n) occurs as the least prime factor among numbers 1 .. prime(n)^4: a(n) = A078898(A030514(n)).

Offset 1, canonical program `A250478.P6482971320127735987`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250478 (n : ℕ) : ℤ :=
  A250478.P6482971320127735987.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A250622.P6101694569032814672

`A250621(n+1)-A000040(n+1)`
-/

namespace A250622.P6101694569032814672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - A000040 (n + 1)

end

end A250622.P6101694569032814672

noncomputable section

/-- A250622: a(n) = floor(n*log(prime(n)))-prime(n), n >= 1.

Offset 1, canonical program `A250622.P6101694569032814672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250622 (n : ℕ) : ℤ :=
  A250622.P6101694569032814672.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A250623.P3707548778749929836

`A250621(n+1)+A050502(n+1)-2*A000040(n+1)`
-/

namespace A250623.P3707548778749929836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) + A050502 (n + 1) - 2 * A000040 (n + 1)

end

end A250623.P3707548778749929836

noncomputable section

/-- A250623: a(n) = floor(n*log(prime(n))) + ceiling(n*log(n)) - 2*prime(n).

Offset 1, canonical program `A250623.P3707548778749929836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250623 (n : ℕ) : ℤ :=
  A250623.P3707548778749929836.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251482.P15283012355348993553

`A085581(n+2)+A086861(n+2)+1-2*(n+2)`
-/

namespace A251482.P15283012355348993553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085581 (n + 2) + (A086861 (n + 2) + 1) - (2 * (n + 2) : ℤ)

end

end A251482.P15283012355348993553

noncomputable section

/-- A251482: a(n) = floor(prime(n)/log(n)) + ceiling(prime(n)/log(prime(n))) - 2*n, n >=2.

Offset 2, canonical program `A251482.P15283012355348993553`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251482 (n : ℕ) : ℤ :=
  A251482.P15283012355348993553.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251720.P7553802040136073168

`A000040(n+1)*A006094(n+1)`
-/

namespace A251720.P7553802040136073168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A006094 (n + 1)

end

end A251720.P7553802040136073168

noncomputable section

/-- A251720: a(n) = (p_n)^2 * p_{n+1}, where p_n is the n-th prime, A000040(n).

Offset 1, canonical program `A251720.P7553802040136073168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251720 (n : ℕ) : ℤ :=
  A251720.P7553802040136073168.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251720.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253487.P6679940990735206685

`2*A110609(n+1)`
-/

namespace A253487.P6679940990735206685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110609 (n + 1)

end

end A253487.P6679940990735206685

noncomputable section

/-- A253487: Number of lattice paths of 2*n+2 steps in the first quadrant from (0,0) to (n,n).

Offset 0, canonical program `A253487.P6679940990735206685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253487 (n : ℕ) : ℤ :=
  A253487.P6679940990735206685.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253588.P1990290581636288616

`(col(n)+1)*A002110(row(n)-col(n)+1)`
-/

namespace A253588.P1990290581636288616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * A002110 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A253588.P1990290581636288616

noncomputable section

/-- A253588: Upward antidiagonals of array of all multiples of primorial(n), for each n>0.

Offset 1, canonical program `A253588.P1990290581636288616`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253588 (n : ℕ) : ℤ :=
  A253588.P1990290581636288616.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253628.P7800863770916163170

`A001615(n+1)%(n+1)`
-/

namespace A253628.P7800863770916163170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001615 (n + 1)) (n + 1 : ℤ)

end

end A253628.P7800863770916163170

noncomputable section

/-- A253628: a(n) = psi(n) mod n, where psi is the Dedekind psi function (A001615).

Offset 1, canonical program `A253628.P7800863770916163170`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253628 (n : ℕ) : ℤ :=
  A253628.P7800863770916163170.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254046.P17306611648514838872

`A051064(2*n+1)`
-/

namespace A254046.P17306611648514838872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (2 * n + 1)

end

end A254046.P17306611648514838872

noncomputable section

/-- A254046: Column index of n in A191450: a(3n) = 1, a(3n+1) = 1, a(3n+2) = 1 + a(n+1).

Offset 1, canonical program `A254046.P17306611648514838872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254046 (n : ℕ) : ℤ :=
  A254046.P17306611648514838872.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254593.P1576964309151868517

`6*A131868(n+1)/(n+1)`
-/

namespace A254593.P1576964309151868517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A131868 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A254593.P1576964309151868517

noncomputable section

/-- A254593: a(n) = (3/n^3) * Sum_{d|n} (-1)^(n+d)*moebius(n/d)*binomial(2*d,d).

Offset 1, canonical program `A254593.P1576964309151868517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254593 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A254593.P1576964309151868517.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254609.P12096620193551696999

`A243757(row(n))/(A243757(col(n))*A243757(row(n)-col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254609.P12096620193551696999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243757 (SequenceMachineLib.triRow n) : ℚ) / (A243757 (SequenceMachineLib.triCol n) * A243757 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A254609.P12096620193551696999

noncomputable section

/-- A254609: Triangle read by rows: T(n,k) = A243757(n)/(A243757(k)*A243757(n-k)).

Offset 0, canonical program `A254609.P12096620193551696999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A254609.P12096620193551696999.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254730.P5145825961016030495

`A243758(row(n))/(A243758(col(n))*A243758(row(n)-col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254730.P5145825961016030495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243758 (SequenceMachineLib.triRow n) : ℚ) / (A243758 (SequenceMachineLib.triCol n) * A243758 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A254730.P5145825961016030495

noncomputable section

/-- A254730: Triangle read by rows: T(n,k) = A243758(n)/(A243758(k)*A243758(n-k)).

Offset 0, canonical program `A254730.P5145825961016030495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254730 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A254730.P5145825961016030495.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255000.P13204659214420156332

`A000040(n+1+A001223(n+1))`
-/

namespace A255000.P13204659214420156332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) + A001223 (n + 1)).toNat

end

end A255000.P13204659214420156332

noncomputable section

/-- A255000: Prime(n + d(n)), with d(n) = prime(n+1) - prime(n), for n >= 1.

Offset 1, canonical program `A255000.P13204659214420156332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255000 (n : ℕ) : ℤ :=
  A255000.P13204659214420156332.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255171.P878351036913062245

`A072473(n+2)-A072473(n+1)`
-/

namespace A255171.P878351036913062245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 2) - A072473 (n + 1)

end

end A255171.P878351036913062245

noncomputable section

/-- A255171: First differences of A072473.

Offset 1, canonical program `A255171.P878351036913062245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255171 (n : ℕ) : ℤ :=
  A255171.P878351036913062245.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255171.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255326.P2760968161460451827

`1+a(A066503(n))` with `a(0)=0`
-/

namespace A255326.P2760968161460451827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A066503 n).toNat

end

end A255326.P2760968161460451827

noncomputable section

/-- A255326: a(n) gives the number of steps needed to reach zero, when we start from x = n and repeatedly subtract x's squarefree kernel (A007947(x)) from it.

Offset 0, canonical program `A255326.P2760968161460451827`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255326 (n : ℕ) : ℤ :=
  (A255326.P2760968161460451827.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255683.P1316510834808175680

`A000120(n+1)*(A000918(A000523(n+1)+1)+1)`
-/

namespace A255683.P1316510834808175680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) * (A000918 (A000523 (n + 1) + 1).toNat + 1)

end

end A255683.P1316510834808175680

noncomputable section

/-- A255683: Sum of the binary numbers whose digits are cyclic permutations of the binary expansion of n.

Offset 1, canonical program `A255683.P1316510834808175680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255683 (n : ℕ) : ℤ :=
  A255683.P1316510834808175680.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256135.P15425195409357675136

`A000351(A000120(n))`
-/

namespace A256135.P15425195409357675136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A000120 n).toNat

end

end A256135.P15425195409357675136

noncomputable section

/-- A256135: a(n) = 5^A000120(n).

Offset 0, canonical program `A256135.P15425195409357675136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256135 (n : ℕ) : ℤ :=
  A256135.P15425195409357675136.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256136.P14588542491347922594

`A000400(A000120(n))`
-/

namespace A256136.P14588542491347922594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A000120 n).toNat

end

end A256136.P14588542491347922594

noncomputable section

/-- A256136: a(n) = 6^A000120(n).

Offset 0, canonical program `A256136.P14588542491347922594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256136 (n : ℕ) : ℤ :=
  A256136.P14588542491347922594.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256140.P17674566044913898206

`(row(n)-col(n))^A000120(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256140.P17674566044913898206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) ^ (A000120 (SequenceMachineLib.triCol n) : ℤ)

end

end A256140.P17674566044913898206

noncomputable section

/-- A256140: Square array read by antidiagonals upwards: T(n,k) = n^A000120(k), n>=0, k>=0.

Offset 0, canonical program `A256140.P17674566044913898206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256140 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256140.P17674566044913898206.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256140.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256244.P8227914721066336132

`A000196(n+2)-A071028(n+2)+2`
-/

namespace A256244.P8227914721066336132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 2) - A071028 (n + 2) + 2

end

end A256244.P8227914721066336132

noncomputable section

/-- A256244: a(n) = sqrt(n + 2*A256243(n)).

Offset 1, canonical program `A256244.P8227914721066336132`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256244 (n : ℕ) : ℤ :=
  A256244.P8227914721066336132.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256257.P3128146653347024265

`2*A160713(n)`
-/

namespace A256257.P3128146653347024265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160713 n

end

end A256257.P3128146653347024265

noncomputable section

/-- A256257: 6 times numbers of Gould's sequence A001316.

Offset 0, canonical program `A256257.P3128146653347024265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256257 (n : ℕ) : ℤ :=
  A256257.P3128146653347024265.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257520.P11881127439333961031

`A097861(n)+1`
-/

namespace A257520.P11881127439333961031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + 1

end

end A257520.P11881127439333961031

noncomputable section

/-- A257520: Number of factorizations of m^2 into 2 factors, where m is a product of exactly n distinct primes and each factor is a product of n primes (counted with multiplicity).

Offset 0, canonical program `A257520.P11881127439333961031`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257520 (n : ℕ) : ℤ :=
  A257520.P11881127439333961031.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257567.P6211609735986924028

`A007949(A061725(n+1))`
-/

namespace A257567.P6211609735986924028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A061725 (n + 1)).toNat

end

end A257567.P6211609735986924028

noncomputable section

/-- A257567: a(n) is the largest exponent k such that 3^k divides (prime(n)^2 + 2).

Offset 1, canonical program `A257567.P6211609735986924028`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257567 (n : ℕ) : ℤ :=
  A257567.P6211609735986924028.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258155.P7697194881725591398

`A046301(n+1)²`
-/

namespace A258155.P7697194881725591398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) ^ 2

end

end A258155.P7697194881725591398

noncomputable section

/-- A258155: Products of squares of three successive primes.

Offset 1, canonical program `A258155.P7697194881725591398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258155 (n : ℕ) : ℤ :=
  A258155.P7697194881725591398.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258369.P10559463489900728619

`∑{#}[n, A163626(C(n+1, 2)+#)*A027656(#)]`
-/

namespace A258369.P10559463489900728619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A163626 (Nat.choose (n + 1) 2 + k) * A027656 k

end

end A258369.P10559463489900728619

noncomputable section

/-- A258369: Stirling-Bernoulli transform of A027656.

Offset 0, canonical program `A258369.P10559463489900728619`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258369 (n : ℕ) : ℤ :=
  A258369.P10559463489900728619.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258745.P174900374007038232

`A028365(n)/(n+1)`
-/

namespace A258745.P174900374007038232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028365 n : ℚ) / (n + 1 : ℚ)

end

end A258745.P174900374007038232

noncomputable section

/-- A258745: Order of general affine group AGL(n,2) (=A028365(n)) divided by (n+1).

Offset 0, canonical program `A258745.P174900374007038232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258745 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A258745.P174900374007038232.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258831.P9209545369141060216

`(-1)^n*A098098(n)`
-/

namespace A258831.P9209545369141060216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A098098 n

end

end A258831.P9209545369141060216

noncomputable section

/-- A258831: Expansion of (psi(-x^3) * f(-x, x^2))^2 in powers of x where psi(), f(,) are Ramanujan theta functions.

Offset 0, canonical program `A258831.P9209545369141060216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258831 (n : ℕ) : ℤ :=
  A258831.P9209545369141060216.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258934.P655756384477978096

`A072473(n+2)/2`
-/

namespace A258934.P655756384477978096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072473 (n + 2) : ℚ) / 2

end

end A258934.P655756384477978096

noncomputable section

/-- A258934: Half the difference between the 2n-th prime and the n-th prime, starting from n=2.

Offset 2, canonical program `A258934.P655756384477978096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A258934.P655756384477978096.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258934.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259318.P4014428591920832291

`A259109(n)*A006331(n)-A259108(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259318.P4014428591920832291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259109 n * A006331 n - A259108 n ^ 2

end

end A259318.P4014428591920832291

noncomputable section

/-- A259318: a(n) = A259109(n)*A006331(n) - A259108(n)^2.

Offset 0, canonical program `A259318.P4014428591920832291`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259318 (n : ℕ) : ℤ :=
  A259318.P4014428591920832291.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259320.P7124907213139693720

`2*(n+1)*A259319(n+1)-A259110(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259320.P7124907213139693720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A259319 (n + 1) - A259110 (n + 1) ^ 2

end

end A259320.P7124907213139693720

noncomputable section

/-- A259320: a(n) = 2*n*A259319(n) - A259110(n)^2.

Offset 1, canonical program `A259320.P7124907213139693720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259320 (n : ℕ) : ℤ :=
  A259320.P7124907213139693720.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259320.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259648.P18063920106671831620

`floor(A030078(n+2)/((n+2)*log(n+2)))`
-/

namespace A259648.P18063920106671831620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030078 (n + 2) : ℝ) / ((n + 2 : ℝ) * Real.log (n + 2 : ℝ))⌋

end

end A259648.P18063920106671831620

noncomputable section

/-- A259648: a(n) = floor( prime(n)^3 / (n*log(n)) ).

Offset 2, canonical program `A259648.P18063920106671831620`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+2)^3/((n+2)*log(n+2)))` (program `A259648.P4211030694444674055`, by `A259648.P4211030694444674055.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A259648 (n : ℕ) : ℤ :=
  A259648.P18063920106671831620.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+2)^3/((n+2)*log(n+2)))` (program `A259648.P4211030694444674055`, by `A259648.P4211030694444674055.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A259648.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A259654.P10870511641020313706

`A051674(n+1)-A062457(n+1)`
-/

namespace A259654.P10870511641020313706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1) - A062457 (n + 1)

end

end A259654.P10870511641020313706

noncomputable section

/-- A259654: a(n) = prime(n)^prime(n) - prime(n)^n.

Offset 1, canonical program `A259654.P10870511641020313706`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259654 (n : ℕ) : ℤ :=
  A259654.P10870511641020313706.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259654.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260754.P5965187776734892308

`A039716(n+2)/A000040(n+1)`
-/

namespace A260754.P5965187776734892308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 2) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A260754.P5965187776734892308

noncomputable section

/-- A260754: a(n) = prime(n+1)! / prime(n).

Offset 1, canonical program `A260754.P5965187776734892308`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260754 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A260754.P5965187776734892308.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261225.P9013570553216359185

`n-A055401(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261225.P9013570553216359185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055401 n

end

end A261225.P9013570553216359185

noncomputable section

/-- A261225: n minus the number of positive cubes needed to sum to n using the greedy algorithm: a(n) = n - A055401(n).

Offset 0, canonical program `A261225.P9013570553216359185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261225 (n : ℕ) : ℤ :=
  A261225.P9013570553216359185.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261232.P7381574163309701758

`A261231(3^n)`
-/

namespace A261232.P7381574163309701758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (3 ^ n)

end

end A261232.P7381574163309701758

noncomputable section

/-- A261232: a(n) = number of steps to reach 0 when starting from k = 3^n and repeatedly applying the map that replaces k with k - (sum of digits in base-3 representation of k).

Offset 0, canonical program `A261232.P7381574163309701758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261232 (n : ℕ) : ℤ :=
  A261232.P7381574163309701758.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261273.P13419199438936783095

`A002487(A008864(n+1))`
-/

namespace A261273.P13419199438936783095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A008864 (n + 1)).toNat

end

end A261273.P13419199438936783095

noncomputable section

/-- A261273: a(n) is the (prime(n)+1)-th term of Stern-Brocot sequence, A002487.

Offset 1, canonical program `A261273.P13419199438936783095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261273 (n : ℕ) : ℤ :=
  A261273.P13419199438936783095.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261273.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261523.P4523387212413988190

`A058077(n+1)*A039716(n+1)`
-/

namespace A261523.P4523387212413988190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058077 (n + 1) * A039716 (n + 1)

end

end A261523.P4523387212413988190

noncomputable section

/-- A261523: a(n) = prime(n+1)! / (prime(n+1) - prime(n))!.

Offset 1, canonical program `A261523.P4523387212413988190`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261523 (n : ℕ) : ℤ :=
  A261523.P4523387212413988190.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261890.P4080102561957379191

`A055615(n+3)-2*A055615(n+2)+A055615(n+1)`
-/

namespace A261890.P4080102561957379191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 3) - 2 * A055615 (n + 2) + A055615 (n + 1)

end

end A261890.P4080102561957379191

noncomputable section

/-- A261890: Second differences of A055615, first differences of A261869.

Offset 1, canonical program `A261890.P4080102561957379191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261890 (n : ℕ) : ℤ :=
  A261890.P4080102561957379191.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261971.P11221082958945660540

`6*A001248(n+1)-12*A000040(n+1)+8`
-/

namespace A261971.P11221082958945660540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001248 (n + 1) - 12 * A000040 (n + 1) + 8

end

end A261971.P11221082958945660540

noncomputable section

/-- A261971: Number of unit cubes that have a side on the surface of a p X p X p cube composed of p^3 unit cubes, where p is the n-th prime.

Offset 1, canonical program `A261971.P11221082958945660540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261971 (n : ℕ) : ℤ :=
  A261971.P11221082958945660540.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261971.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262189.P8058755779545758609

`A060001(n+2)/A000045(n+1)`
-/

namespace A262189.P8058755779545758609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060001 (n + 2) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A262189.P8058755779545758609

noncomputable section

/-- A262189: a(n) = Fibonacci(n+1)! / Fibonacci(n).

Offset 1, canonical program `A262189.P8058755779545758609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262189 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A262189.P8058755779545758609.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262189.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262208.P17030949861541882624

`A051674(n+1)%A000312(n+1)`
-/

namespace A262208.P17030949861541882624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051674 (n + 1)) (A000312 (n + 1))

end

end A262208.P17030949861541882624

noncomputable section

/-- A262208: a(n) = prime(n)^prime(n) mod n^n.

Offset 1, canonical program `A262208.P17030949861541882624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262208 (n : ℕ) : ℤ :=
  A262208.P17030949861541882624.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262351.P2096184182993145320

`(n+1)*A071068(n+1)`
-/

namespace A262351.P2096184182993145320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071068 (n + 1)

end

end A262351.P2096184182993145320

noncomputable section

/-- A262351: Sum of the parts in the partitions of n into exactly two squarefree parts.

Offset 1, canonical program `A262351.P2096184182993145320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262351 (n : ℕ) : ℤ :=
  A262351.P2096184182993145320.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262869.P10644154218626239048

`A013928(floor((n+1)/2)+1)`
-/

namespace A262869.P10644154218626239048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (⌊(n + 1 : ℚ) / 2⌋ + 1).toNat

end

end A262869.P10644154218626239048

noncomputable section

/-- A262869: Number of squarefree numbers appearing among the smaller parts of the partitions of n into two parts.

Offset 1, canonical program `A262869.P10644154218626239048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262869 (n : ℕ) : ℤ :=
  A262869.P10644154218626239048.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262869.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262927.P17145259488631727692

`A262397(2*n)+A262397(2*n+1)`
-/

namespace A262927.P17145259488631727692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 (2 * n) + A262397 (2 * n + 1)

end

end A262927.P17145259488631727692

noncomputable section

/-- A262927: a(n+9) = a(n) + 10*(n+4) + 9. a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10, a(5)=15, a(6)=23, a(7)=30, a(8)=39.

Offset 0, canonical program `A262927.P17145259488631727692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262927 (n : ℕ) : ℤ :=
  A262927.P17145259488631727692.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262992.P10810152767226741436

`A262870(n+1)+A262871(n+1)`
-/

namespace A262992.P10810152767226741436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262870 (n + 1) + A262871 (n + 1)

end

end A262992.P10810152767226741436

noncomputable section

/-- A262992: Sum of the squarefree numbers among the partition parts of n into two parts.

Offset 1, canonical program `A262992.P10810152767226741436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262992 (n : ℕ) : ℤ :=
  A262992.P10810152767226741436.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262992.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263418.P3906359032708304120

`a(n-1)+5*A001911(n)` with `a(0)=1`
-/

namespace A263418.P3906359032708304120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 5 * A001911 n

end

end A263418.P3906359032708304120

noncomputable section

/-- A263418: a(n) is the total number of pentagrams in a variant of pentagram fractal after n iterations.

Offset 0, canonical program `A263418.P3906359032708304120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263418 (n : ℕ) : ℤ :=
  A263418.P3906359032708304120.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263418.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263483.P11551331983002563713

`A000040(n+1)+A039704(n+1)`
-/

namespace A263483.P11551331983002563713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A039704 (n + 1)

end

end A263483.P11551331983002563713

noncomputable section

/-- A263483: a(n) = prime(n)+(prime(n) modulo 6).

Offset 1, canonical program `A263483.P11551331983002563713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263483 (n : ℕ) : ℤ :=
  A263483.P11551331983002563713.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263673.P17564345836323760569

`A180000(n)*A152271(n)`
-/

namespace A263673.P17564345836323760569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180000 n * A152271 n

end

end A263673.P17564345836323760569

noncomputable section

/-- A263673: a(n) = lcm{1,2,...,n} / binomial(n,floor(n/2)).

Offset 0, canonical program `A263673.P17564345836323760569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263673 (n : ℕ) : ℤ :=
  A263673.P17564345836323760569.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263673.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263727.P9447933061179139825

`A048760(A000045(n))`
-/

namespace A263727.P9447933061179139825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000045 n).toNat

end

end A263727.P9447933061179139825

noncomputable section

/-- A263727: Largest square number less than or equal to the n-th Fibonacci number.

Offset 0, canonical program `A263727.P9447933061179139825`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263727 (n : ℕ) : ℤ :=
  A263727.P9447933061179139825.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263841.P10709210720201135454

`A005773(n+1)+A132894(n)`
-/

namespace A263841.P10709210720201135454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + A132894 n

end

end A263841.P10709210720201135454

noncomputable section

/-- A263841: Expansion of (1 - 2*x - x^2)/(sqrt(1+x)*(1-3*x)^(3/2)*2*x) - 1/(2*x).

Offset 0, canonical program `A263841.P10709210720201135454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263841 (n : ℕ) : ℤ :=
  A263841.P10709210720201135454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265104.P5308251035994619113

`A265100(n+2)-6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265104.P5308251035994619113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265100 (n + 2) - 6

end

end A265104.P5308251035994619113

noncomputable section

/-- A265104: a(n) = A265100(n+1) - 6, n >= 1.

Offset 1, canonical program `A265104.P5308251035994619113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265104 (n : ℕ) : ℤ :=
  A265104.P5308251035994619113.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268329.P14268697526507854789

`2*A000344(n+2)`
-/

namespace A268329.P14268697526507854789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000344 (n + 2)

end

end A268329.P14268697526507854789

noncomputable section

/-- A268329: Expansion of (1 - sqrt(1 - 4*x))^5/16.

Offset 5, canonical program `A268329.P14268697526507854789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268329 (n : ℕ) : ℤ :=
  A268329.P14268697526507854789.a (n - 5)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268478.P14026841174278803869

`A180363(n+1)%A001248(n+1)`
-/

namespace A268478.P14026841174278803869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180363 (n + 1)) (A001248 (n + 1))

end

end A268478.P14026841174278803869

noncomputable section

/-- A268478: L(p) modulo p^2, where p = prime(n) and L is a Lucas number (A000032).

Offset 1, canonical program `A268478.P14026841174278803869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268478 (n : ℕ) : ℤ :=
  A268478.P14026841174278803869.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268553.P1174429533030880570

`A006480(n)²`
-/

namespace A268553.P1174429533030880570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 n ^ 2

end

end A268553.P1174429533030880570

noncomputable section

/-- A268553: Diagonal of the rational function 1/((1 - u v - u w - v w) * (1 - x y - x z - y z)).

Offset 0, canonical program `A268553.P1174429533030880570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268553 (n : ℕ) : ℤ :=
  A268553.P1174429533030880570.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268592.P494761692354529029

`A060165(n+1)*6/(n+1)²`
-/

namespace A268592.P494761692354529029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060165 (n + 1) * 6 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A268592.P494761692354529029

noncomputable section

/-- A268592: a(n) = (6/n^3) * Sum_{d|n} moebius(n/d)*binomial(2*d,d).

Offset 1, canonical program `A268592.P494761692354529029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268592 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268592.P494761692354529029.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268592.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268617.P154587319983181233

`A060170(n+1)/(n+1)`
-/

namespace A268617.P154587319983181233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060170 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A268617.P154587319983181233

noncomputable section

/-- A268617: a(n) = (1/n^2) * Sum_{d|n} moebius(n/d)*binomial(3*d,d).

Offset 1, canonical program `A268617.P154587319983181233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268617.P154587319983181233.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268619.P5571942204347764438

`A060165(n+1)/(n+1)`
-/

namespace A268619.P5571942204347764438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060165 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A268619.P5571942204347764438

noncomputable section

/-- A268619: a(n) = (1/n^2) * Sum_{d|n} moebius(n/d)*binomial(2*d,d).

Offset 1, canonical program `A268619.P5571942204347764438`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268619 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268619.P5571942204347764438.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A269801.P958217648010300570

`(n+2)*A061358(n)`
-/

namespace A269801.P958217648010300570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A061358 n

end

end A269801.P958217648010300570

noncomputable section

/-- A269801: Total sum of the divisors of the primes p,q such that n=p+q and p>=q.

Offset 0, canonical program `A269801.P958217648010300570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269801 (n : ℕ) : ℤ :=
  A269801.P958217648010300570.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A270313.P12699358592740471625

`(n+1)/A104714(n+1)`
-/

namespace A270313.P12699358592740471625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A104714 (n + 1) : ℚ)

end

end A270313.P12699358592740471625

noncomputable section

/-- A270313: Denominator of Fibonacci(n)/n.

Offset 1, canonical program `A270313.P12699358592740471625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270313 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A270313.P12699358592740471625.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271342.P3433703997216414430

`A024916(n+1)-A078471(n+1)`
-/

namespace A271342.P3433703997216414430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A078471 (n + 1)

end

end A271342.P3433703997216414430

noncomputable section

/-- A271342: Sum of all even divisors of all positive integers <= n.

Offset 1, canonical program `A271342.P3433703997216414430`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271342 (n : ℕ) : ℤ :=
  A271342.P3433703997216414430.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271387.P7354328824045121266

`A002110(n)/A034386(n)`
-/

namespace A271387.P7354328824045121266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A034386 n : ℚ)

end

end A271387.P7354328824045121266

noncomputable section

/-- A271387: Numerator of prime(n)#/n!, where prime(n)# is the prime factorial function.

Offset 0, canonical program `A271387.P7354328824045121266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271387 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A271387.P7354328824045121266.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272101.P1459219865942789853

`A000188(A069482(n+1))`
-/

namespace A272101.P1459219865942789853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A069482 (n + 1)).toNat

end

end A272101.P1459219865942789853

noncomputable section

/-- A272101: Square root of largest square dividing A069482(n).

Offset 1, canonical program `A272101.P1459219865942789853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272101 (n : ℕ) : ℤ :=
  A272101.P1459219865942789853.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272172.P12139415757426446480

`A000203(A004736(n+1))`
-/

namespace A272172.P12139415757426446480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004736 (n + 1)).toNat

end

end A272172.P12139415757426446480

noncomputable section

/-- A272172: Triangle read by rows: T(n,k) in which row n lists the first n terms of A000203 in reverse order.

Offset 1, canonical program `A272172.P12139415757426446480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272172 (n : ℕ) : ℤ :=
  A272172.P12139415757426446480.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272173.P7571362483636851933

`A000203(n+1)*A008864(n+1)`
-/

namespace A272173.P7571362483636851933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A008864 (n + 1)

end

end A272173.P7571362483636851933

noncomputable section

/-- A272173: Product of the sum of the divisors of n and the sum of the divisors of n-th prime.

Offset 1, canonical program `A272173.P7571362483636851933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272173 (n : ℕ) : ℤ :=
  A272173.P7571362483636851933.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272263.P14829198746395316325

`A087131(n)-1`
-/

namespace A272263.P14829198746395316325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087131 n - 1

end

end A272263.P14829198746395316325

noncomputable section

/-- A272263: a(n) = numerator of A000032(n) - 1/2^n.

Offset 0, canonical program `A272263.P14829198746395316325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272263 (n : ℕ) : ℤ :=
  A272263.P14829198746395316325.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274009.P14334026613148662434

`A000120(n)+(-1)^n`
-/

namespace A274009.P14334026613148662434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (-1) ^ n

end

end A274009.P14334026613148662434

noncomputable section

/-- A274009: 1's distance from a number in its binary expansion.

Offset 0, canonical program `A274009.P14334026613148662434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274009 (n : ℕ) : ℤ :=
  A274009.P14334026613148662434.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274263.P9426455071173877905

`floor(A001223(n+2)/A001223(n+1))`
-/

namespace A274263.P9426455071173877905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001223 (n + 2) : ℚ) / (A001223 (n + 1) : ℚ)⌋

end

end A274263.P9426455071173877905

noncomputable section

/-- A274263: Integer part of the ratio of consecutive prime gaps.

Offset 1, canonical program `A274263.P9426455071173877905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274263 (n : ℕ) : ℤ :=
  A274263.P9426455071173877905.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274575.P18445276803397930196

`A000120(n+1)-A008687(n+2)`
-/

namespace A274575.P18445276803397930196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A008687 (n + 2)

end

end A274575.P18445276803397930196

noncomputable section

/-- A274575: For m=1,2,3,... write all the 2^m binary vectors of length m in increasing order, and replace each vector with (number of 1's) - (number of 0's). Start with an initial 0 for the empty vector.

Offset 0, canonical program `A274575.P18445276803397930196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274575 (n : ℕ) : ℤ :=
  A274575.P18445276803397930196.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274883.P490056159256726624

`2^col(n)*C(row(n), col(n))*A057977(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A274883.P490056159256726624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A057977 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A274883.P490056159256726624

noncomputable section

/-- A274883: Triangle read by rows, T(n,k) = 2^k*binomial(n,k)*A057977(n-k) for n>=0 and 0<=k<=n.

Offset 0, canonical program `A274883.P490056159256726624`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^col(n)*C(row(n), col(n))*A057977(row(n)-col(n))` (program `A274883.P490056159256726624`, by `A274883.P490056159256726624.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A274883 (n : ℕ) : ℤ :=
  A274883.P490056159256726624.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^col(n)*C(row(n), col(n))*A057977(row(n)-col(n))` (program `A274883.P490056159256726624`, by `A274883.P490056159256726624.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A274883.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A275329.P1318522631389672065

`A057977(n)*A008619(n+2)`
-/

namespace A275329.P1318522631389672065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A008619 (n + 2)

end

end A275329.P1318522631389672065

noncomputable section

/-- A275329: a(n) = (2+[n/2])*n!/((1+[n/2])*[n/2]!^2).

Offset 0, canonical program `A275329.P1318522631389672065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275329 (n : ℕ) : ℤ :=
  A275329.P1318522631389672065.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275630.P6039504158649628288

`A007947(A084920(n+1))`
-/

namespace A275630.P6039504158649628288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A084920 (n + 1)).toNat

end

end A275630.P6039504158649628288

noncomputable section

/-- A275630: a(n) = product of distinct primes dividing prime(n)^2 - 1.

Offset 1, canonical program `A275630.P6039504158649628288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275630 (n : ℕ) : ℤ :=
  A275630.P6039504158649628288.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276349.P10108756407215495079

`A002275(A002260(n+1))*10^A004736(n+1)`
-/

namespace A276349.P10108756407215495079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 (A002260 (n + 1)).toNat : ℚ) * (10 : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A276349.P10108756407215495079

noncomputable section

/-- A276349: Numbers consisting of a nonempty string of 1's followed by a nonempty string of 0's.

Offset 1, canonical program `A276349.P10108756407215495079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276349 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276349.P10108756407215495079.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A210970.P17030402588112473191

`2*A006128(n)+A000217(n)`
-/

namespace A210970.P17030402588112473191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006128 n + A000217 n

end

end A210970.P17030402588112473191

noncomputable section

/-- A210970: Total area of the shadows of the three views of a three-dimensional version of the modular table of partitions with n sections, where the area of the shadows are A006128(n), A006128(n) and A000217(n).

Offset 0, canonical program `A210970.P17030402588112473191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210970 (n : ℕ) : ℤ :=
  A210970.P17030402588112473191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A211208.P600547070255191694

`∑{#}[n, A034851(C(n+1, 2)+#)²]`
-/

namespace A211208.P600547070255191694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A034851 (Nat.choose (n + 1) 2 + k) ^ 2

end

end A211208.P600547070255191694

noncomputable section

/-- A211208: Sums of squares of terms in rows of Losanitsch's triangle (A034851).

Offset 0, canonical program `A211208.P600547070255191694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211208 (n : ℕ) : ℤ :=
  A211208.P600547070255191694.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A211978.P17154958007089674022

`2*A006128(n)`
-/

namespace A211978.P17154958007089674022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006128 n

end

end A211978.P17154958007089674022

noncomputable section

/-- A211978: Total number of parts in all partitions of n plus the sum of largest parts of all partitions of n.

Offset 0, canonical program `A211978.P17154958007089674022`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211978 (n : ℕ) : ℤ :=
  A211978.P17154958007089674022.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212000.P16445262728727047755

`A006128(row(n)+1)-A006128(col(n))`
-/

namespace A212000.P16445262728727047755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (SequenceMachineLib.triRow n + 1) - A006128 (SequenceMachineLib.triCol n)

end

end A212000.P16445262728727047755

noncomputable section

/-- A212000: Triangle read by rows: T(n,k) is the total number of parts in the last n-k+1 section of the modular table of partitions of n.

Offset 1, canonical program `A212000.P16445262728727047755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212000 (n : ℕ) : ℤ :=
  A212000.P16445262728727047755.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212972.P15305657758278643221

`(n+1)^3-A212971(n)`
-/

namespace A212972.P15305657758278643221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A212971 n

end

end A212972.P15305657758278643221

noncomputable section

/-- A212972: Number of triples (w,x,y) with all terms in {0,...,n} and w >= floor((x+y)/3).

Offset 0, canonical program `A212972.P15305657758278643221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212972 (n : ℕ) : ℤ :=
  A212972.P15305657758278643221.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212972.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213064.P13019634568250474485

`2*A292272(n)`
-/

namespace A213064.P13019634568250474485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292272 n

end

end A213064.P13019634568250474485

noncomputable section

/-- A213064: Bitwise AND of 2n with the one's-complement of n.

Offset 0, canonical program `A213064.P13019634568250474485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213064 (n : ℕ) : ℤ :=
  A213064.P13019634568250474485.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213064.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213392.P13729878407923535789

`A213393(n)+A092076(n)`
-/

namespace A213392.P13729878407923535789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213393 n + A092076 n

end

end A213392.P13729878407923535789

noncomputable section

/-- A213392: Number of (w,x,y) with all terms in {0,...,n} and 2*max(w,x,y) >= 3*min(w,x,y).

Offset 0, canonical program `A213392.P13729878407923535789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213392 (n : ℕ) : ℤ :=
  A213392.P13729878407923535789.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214318.P2534198729933058842

`2*a(n-1)+A003842(n)` with `a(0)=1`
-/

namespace A214318.P2534198729933058842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A003842 n

end

end A214318.P2534198729933058842

noncomputable section

/-- A214318: Replace the word A214317(n) with its position in A007931.

Offset 1, canonical program `A214318.P2534198729933058842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214318 (n : ℕ) : ℤ :=
  A214318.P2534198729933058842.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220477.P12886516549978802589

`A006128(n+1)-A000203(n+1)`
-/

namespace A220477.P12886516549978802589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A000203 (n + 1)

end

end A220477.P12886516549978802589

noncomputable section

/-- A220477: Total number of parts in all partitions of n with at least one distinct part.

Offset 1, canonical program `A220477.P12886516549978802589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220477 (n : ℕ) : ℤ :=
  A220477.P12886516549978802589.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225569.P15635823222923067752

`A063524(A053735(1+n))`
-/

namespace A225569.P15635823222923067752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A053735 (1 + n)).toNat

end

end A225569.P15635823222923067752

noncomputable section

/-- A225569: Decimal expansion of Sum_{n>=0} 1/10^(3^n), a transcendental number.

Offset 0, canonical program `A225569.P15635823222923067752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225569 (n : ℕ) : ℤ :=
  A225569.P15635823222923067752.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225596.P6388650695697552304

`A006128(n)+n`
-/

namespace A225596.P6388650695697552304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n + (n : ℤ)

end

end A225596.P6388650695697552304

noncomputable section

/-- A225596: Sum of largest parts of all partitions of n plus n. Also, total number of parts in all partitions of n plus n.

Offset 0, canonical program `A225596.P6388650695697552304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225596 (n : ℕ) : ℤ :=
  A225596.P6388650695697552304.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225596.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229087.P10345629012060209210

`A054024(n+1)-A229110(n+1)`
-/

namespace A229087.P10345629012060209210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1) - A229110 (n + 1)

end

end A229087.P10345629012060209210

noncomputable section

/-- A229087: a(n) = sigma(n) mod n - antisigma(n) mod n, where sigma(n) = A000203(n) = sum of divisor of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

Offset 1, canonical program `A229087.P10345629012060209210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229087 (n : ℕ) : ℤ :=
  A229087.P10345629012060209210.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229087.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230631.P4210711857821606968

`A053737(n)+n`
-/

namespace A230631.P4210711857821606968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n + (n : ℤ)

end

end A230631.P4210711857821606968

noncomputable section

/-- A230631: a(n) = n + (sum of digits in base-4 representation of n).

Offset 0, canonical program `A230631.P4210711857821606968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230631 (n : ℕ) : ℤ :=
  A230631.P4210711857821606968.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230631.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230641.P12572480448472300178

`n+A053735(n)`
-/

namespace A230641.P12572480448472300178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A053735 n

end

end A230641.P12572480448472300178

noncomputable section

/-- A230641: a(n) = n + (sum of digits in base-3 representation of n).

Offset 0, canonical program `A230641.P12572480448472300178`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230641 (n : ℕ) : ℤ :=
  A230641.P12572480448472300178.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230641.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239204.P16238939825905580694

`(A001003(n+2)-A001003(n+1))/2`
-/

namespace A239204.P16238939825905580694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 (n + 2) - A001003 (n + 1) : ℚ) / 2

end

end A239204.P16238939825905580694

noncomputable section

/-- A239204: Expansion of ((x-1)*sqrt(x^2-6*x+1)-x^2-4*x+1)/(8*x^3).

Offset 0, canonical program `A239204.P16238939825905580694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239204.P16238939825905580694.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239619.P15559327982944587006

`A053735(A000040(n+1))`
-/

namespace A239619.P15559327982944587006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A000040 (n + 1)).toNat

end

end A239619.P15559327982944587006

noncomputable section

/-- A239619: Base 3 sum of digits of prime(n).

Offset 1, canonical program `A239619.P15559327982944587006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239619 (n : ℕ) : ℤ :=
  A239619.P15559327982944587006.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239690.P6526358221762526972

`A053737(A000040(n+1))`
-/

namespace A239690.P6526358221762526972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A000040 (n + 1)).toNat

end

end A239690.P6526358221762526972

noncomputable section

/-- A239690: Base 4 sum of digits of prime(n).

Offset 1, canonical program `A239690.P6526358221762526972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239690 (n : ℕ) : ℤ :=
  A239690.P6526358221762526972.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239692.P2456652248599163808

`A053827(A000040(n+1))`
-/

namespace A239692.P2456652248599163808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A000040 (n + 1)).toNat

end

end A239692.P2456652248599163808

noncomputable section

/-- A239692: Base 6 sum of digits of prime(n).

Offset 1, canonical program `A239692.P2456652248599163808`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239692 (n : ℕ) : ℤ :=
  A239692.P2456652248599163808.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242603.P13537598340442924408

`(n+1)/A268354(n+1)`
-/

namespace A242603.P13537598340442924408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A268354 (n + 1) : ℚ)

end

end A242603.P13537598340442924408

noncomputable section

/-- A242603: Largest divisor of n not divisible by 7. Remove factors 7 from n.

Offset 1, canonical program `A242603.P13537598340442924408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242603 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242603.P13537598340442924408.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243011.P10761689159614172034

`A238328(n+1)-A238702(n+1)`
-/

namespace A243011.P10761689159614172034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238328 (n + 1) - A238702 (n + 1)

end

end A243011.P10761689159614172034

noncomputable section

/-- A243011: Sum of the three largest parts in the partitions of 4n into 4 parts.

Offset 1, canonical program `A243011.P10761689159614172034`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243011 (n : ℕ) : ℤ :=
  A243011.P10761689159614172034.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244842.P11551185186741496577

`9*A274766(n)`
-/

namespace A244842.P11551185186741496577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A274766 n

end

end A244842.P11551185186741496577

noncomputable section

/-- A244842: a(n) = (10^n - 1)*(10^n - 10)/90.

Offset 1, canonical program `A244842.P11551185186741496577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244842 (n : ℕ) : ℤ :=
  A244842.P11551185186741496577.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244842.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246776.P2517314765722432230

`A249669(n+1)-A000040(n+2)`
-/

namespace A246776.P2517314765722432230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - A000040 (n + 2)

end

end A246776.P2517314765722432230

noncomputable section

/-- A246776: a(n) = floor(prime(n)^(1+1/n)) - prime(n+1).

Offset 1, canonical program `A246776.P2517314765722432230`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246776 (n : ℕ) : ℤ :=
  A246776.P2517314765722432230.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246776.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246778.P4705111850102885447

`A249669(n+1)-A000040(n+1)`
-/

namespace A246778.P4705111850102885447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - A000040 (n + 1)

end

end A246778.P4705111850102885447

noncomputable section

/-- A246778: a(n) = floor(prime(n)^(1+1/n)) - prime(n).

Offset 1, canonical program `A246778.P4705111850102885447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246778 (n : ℕ) : ℤ :=
  A246778.P4705111850102885447.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256010.P2775154521518765055

`n*A006128(n)`
-/

namespace A256010.P2775154521518765055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006128 n

end

end A256010.P2775154521518765055

noncomputable section

/-- A256010: Product of n and the total number of parts in all partitions of n. Also, product of n and the sum of largest parts of all partitions of n.

Offset 0, canonical program `A256010.P2775154521518765055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256010 (n : ℕ) : ℤ :=
  A256010.P2775154521518765055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256525.P14526080912117306426

`A001401(3*n)`
-/

namespace A256525.P14526080912117306426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (3 * n)

end

end A256525.P14526080912117306426

noncomputable section

/-- A256525: Number of partitions of 3n into at most 5 parts.

Offset 0, canonical program `A256525.P14526080912117306426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256525 (n : ℕ) : ℤ :=
  A256525.P14526080912117306426.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256539.P11843571355159278284

`A001401(4*n)`
-/

namespace A256539.P11843571355159278284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (4 * n)

end

end A256539.P11843571355159278284

noncomputable section

/-- A256539: Number of partitions of 4n into at most 5 parts.

Offset 0, canonical program `A256539.P11843571355159278284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256539 (n : ℕ) : ℤ :=
  A256539.P11843571355159278284.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257800.P8907689118794167458

`A000035(A233271(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257800.P8907689118794167458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A233271 n).toNat

end

end A257800.P8907689118794167458

noncomputable section

/-- A257800: Sequence A233271 reduced modulo 2: a(n) = A000035(A233271(n)); the parity of each term in the infinite trunk of inverted binary beanstalk.

Offset 0, canonical program `A257800.P8907689118794167458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257800 (n : ℕ) : ℤ :=
  A257800.P8907689118794167458.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259321.P6098507823331148853

`A259110(n+1)*A259323(n+1)-A259319(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259321.P6098507823331148853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 (n + 1) * A259323 (n + 1) - A259319 (n + 1) ^ 2

end

end A259321.P6098507823331148853

noncomputable section

/-- A259321: a(n) = A259110(n)*A259323(n) - A259319(n)^2.

Offset 1, canonical program `A259321.P6098507823331148853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259321 (n : ℕ) : ℤ :=
  A259321.P6098507823331148853.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259321.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263133.P4183536222213236562

`(2^A000267(n)+2^A384688(n))/3-1`
-/

namespace A263133.P4183536222213236562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000267 n : ℤ) + (2 : ℚ) ^ (A384688 n : ℤ)) / 3 - 1

end

end A263133.P4183536222213236562

noncomputable section

/-- A263133: Numbers m such that binomial(4*m + 3, m) is odd.

Offset 1, canonical program `A263133.P4183536222213236562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263133 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A263133.P4183536222213236562.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268185.P2116769644466918163

`A000040(n+1)+A007652(n+1)`
-/

namespace A268185.P2116769644466918163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A007652 (n + 1)

end

end A268185.P2116769644466918163

noncomputable section

/-- A268185: a(n) = prime(n) + last digit of prime(n).

Offset 1, canonical program `A268185.P2116769644466918163`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268185 (n : ℕ) : ℤ :=
  A268185.P2116769644466918163.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A269223.P14814624165986150479

`A000142(A053735(n))`
-/

namespace A269223.P14814624165986150479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A053735 n).toNat

end

end A269223.P14814624165986150479

noncomputable section

/-- A269223: Factorial of the sum of digits of n in base 3.

Offset 0, canonical program `A269223.P14814624165986150479`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269223 (n : ℕ) : ℤ :=
  A269223.P14814624165986150479.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A269224.P2228145044449409064

`A000142(A053737(n))`
-/

namespace A269224.P2228145044449409064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A053737 n).toNat

end

end A269224.P2228145044449409064

noncomputable section

/-- A269224: Factorial of the sum of digits of n in base 4.

Offset 0, canonical program `A269224.P2228145044449409064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269224 (n : ℕ) : ℤ :=
  A269224.P2228145044449409064.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272261.P3485157652896089207

`abs(A000806(n))*2^n`
-/

namespace A272261.P3485157652896089207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000806 n| * (2 ^ n : ℤ)

end

end A272261.P3485157652896089207

noncomputable section

/-- A272261: Number of one-to-one functions f from [n] to [2n] where f(x) may not be equal to x or to 2n+1-x.

Offset 0, canonical program `A272261.P3485157652896089207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272261 (n : ℕ) : ℤ :=
  A272261.P3485157652896089207.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273105.P3798720398051730023

`A038572(n)+A006257(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273105.P3798720398051730023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n + A006257 n

end

end A273105.P3798720398051730023

noncomputable section

/-- A273105: a(n) = A038572(n) + A006257(n), sum of the two numbers obtained by rotating the binary representation of n by one place to the right and to the left.

Offset 0, canonical program `A273105.P3798720398051730023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273105 (n : ℕ) : ℤ :=
  A273105.P3798720398051730023.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274322.P9926579910520313793

`A001401(n²)`
-/

namespace A274322.P9926579910520313793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (n ^ 2)

end

end A274322.P9926579910520313793

noncomputable section

/-- A274322: Number of partitions of n^2 into at most five parts.

Offset 0, canonical program `A274322.P9926579910520313793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274322 (n : ℕ) : ℤ :=
  A274322.P9926579910520313793.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276729.P16499400846689770455

`A055642(n)-A193238(n)`
-/

namespace A276729.P16499400846689770455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A193238 n

end

end A276729.P16499400846689770455

noncomputable section

/-- A276729: Number of nonprime digits in the decimal expansion of n.

Offset 0, canonical program `A276729.P16499400846689770455`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276729 (n : ℕ) : ℤ :=
  A276729.P16499400846689770455.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276729.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A209772.P1281362737997625489

`A209771(n+1)+A056944(n)%2`
-/

namespace A209772.P1281362737997625489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209771 (n + 1) + Int.tmod (A056944 n) 2

end

end A209772.P1281362737997625489

noncomputable section

/-- A209772: Triangle of coefficients of polynomials v(n,x) jointly generated with A209771; see the Formula section.

Offset 1, canonical program `A209772.P1281362737997625489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209772 (n : ℕ) : ℤ :=
  A209772.P1281362737997625489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209859.P17593637001217111861

`floor(A209639(n)/2)`
-/

namespace A209859.P17593637001217111861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209639 n : ℚ) / 2⌋

end

end A209859.P17593637001217111861

noncomputable section

/-- A209859: Rewrite the binary expansion of n from the most significant end, 1 -> 1, 0+1 (one or more zeros followed by one) -> 0, drop the trailing zeros of the original n.

Offset 0, canonical program `A209859.P17593637001217111861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A209859 (n : ℕ) : ℤ :=
  A209859.P17593637001217111861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A209859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209898.P13299415237245453239

`4*A209727(n+1)+3`
-/

namespace A209898.P13299415237245453239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A209727 (n + 1) + 3

end

end A209898.P13299415237245453239

noncomputable section

/-- A209898: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having one or four distinct clockwise edge differences.

Offset 1, canonical program `A209898.P13299415237245453239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1512 terms. -/
def A209898 (n : ℕ) : ℤ :=
  A209898.P13299415237245453239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1512 terms. -/
def A209898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209929.P9729360077625781388

`round(sqrt(atan(A190997(n+1))))`
-/

namespace A209929.P9729360077625781388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.arctan (A190997 (n + 1) : ℝ)))

end

end A209929.P9729360077625781388

noncomputable section

/-- A209929: Smallest digit of all divisors of n.

Offset 1, canonical program `A209929.P9729360077625781388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209929 (n : ℕ) : ℤ :=
  A209929.P9729360077625781388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210038.P6945943439187959457

`2*A106195(n)-A055587(n)`
-/

namespace A210038.P6945943439187959457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106195 n - A055587 n

end

end A210038.P6945943439187959457

noncomputable section

/-- A210038: Triangle of coefficients of polynomials v(n,x) jointly generated with A210037; see the Formula section.

Offset 1, canonical program `A210038.P6945943439187959457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210038 (n : ℕ) : ℤ :=
  A210038.P6945943439187959457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210040.P8255258809295094256

`A034867(Δ[A055087(n)]+n)`
-/

namespace A210040.P8255258809295094256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A210040.P8255258809295094256

noncomputable section

/-- A210040: Array of coefficients of polynomials v(n,x) jointly generated with A210039; see the Formula section.

Offset 1, canonical program `A210040.P8255258809295094256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210040 (n : ℕ) : ℤ :=
  A210040.P8255258809295094256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210136.P4525698088877762562

`A210054(n+1)-A209822(n+1)`
-/

namespace A210136.P4525698088877762562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210054 (n + 1) - A209822 (n + 1)

end

end A210136.P4525698088877762562

noncomputable section

/-- A210136: Number of (n+1) X 2 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

Offset 1, canonical program `A210136.P4525698088877762562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A210136 (n : ℕ) : ℤ :=
  A210136.P4525698088877762562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A210136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210188.P4006108130984620707

`A078812(n)+A085478(n)-A010054(n)`
-/

namespace A210188.P4006108130984620707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n + (A085478 n - A010054 n)

end

end A210188.P4006108130984620707

noncomputable section

/-- A210188: Triangle of coefficients of polynomials v(n,x) jointly generated with A210187; see the Formula section.

Offset 1, canonical program `A210188.P4006108130984620707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210188 (n : ℕ) : ℤ :=
  A210188.P4006108130984620707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210204.P16826536876454018621

`2*A038207(n)-A010054(n)`
-/

namespace A210204.P16826536876454018621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 n - A010054 n

end

end A210204.P16826536876454018621

noncomputable section

/-- A210204: Triangle of coefficients of polynomials v(n,x) jointly generated with A210203; see the Formula section.

Offset 1, canonical program `A210204.P16826536876454018621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210204 (n : ℕ) : ℤ :=
  A210204.P16826536876454018621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210213.P10624536917212306160

`A094441(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A210213.P10624536917212306160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094441 n + SequenceMachineLib.triUp a n

end

end A210213.P10624536917212306160

noncomputable section

/-- A210213: Triangle of coefficients of polynomials u(n,x) jointly generated with A210214; see the Formula section.

Offset 1, canonical program `A210213.P10624536917212306160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210213 (n : ℕ) : ℤ :=
  A210213.P10624536917212306160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210214.P3507125888465225323

`A094442(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A210214.P3507125888465225323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094442 n + SequenceMachineLib.triUp a n

end

end A210214.P3507125888465225323

noncomputable section

/-- A210214: Triangle of coefficients of polynomials v(n,x) jointly generated with A210213; see the Formula section.

Offset 1, canonical program `A210214.P3507125888465225323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210214 (n : ℕ) : ℤ :=
  A210214.P3507125888465225323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210234.P17575915796723327264

`A276985(n+1)-A210233(n+1)`
-/

namespace A210234.P17575915796723327264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276985 (n + 1) - A210233 (n + 1)

end

end A210234.P17575915796723327264

noncomputable section

/-- A210234: Triangle of coefficients of polynomials v(n,x) jointly generated with A210233; see the Formula section.

Offset 1, canonical program `A210234.P17575915796723327264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210234 (n : ℕ) : ℤ :=
  A210234.P17575915796723327264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210357.P3827189753604429060

`A110655(A022851(n+1))`
-/

namespace A210357.P3827189753604429060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A022851 (n + 1)).toNat

end

end A210357.P3827189753604429060

noncomputable section

/-- A210357: Location of the maximum modulus in the inverse of Hilbert's matrix.

Offset 1, canonical program `A210357.P3827189753604429060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A210357 (n : ℕ) : ℤ :=
  A210357.P3827189753604429060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A210357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210435.P7595724009279329966

`1-A192543(n+1)+n`
-/

namespace A210435.P7595724009279329966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A192543 (n + 1) + (n : ℤ)

end

end A210435.P7595724009279329966

noncomputable section

/-- A210435: Number of digits in 5^n.

Offset 0, canonical program `A210435.P7595724009279329966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210435 (n : ℕ) : ℤ :=
  A210435.P7595724009279329966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210489.P14234779330888775527

`A052509(n)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A210489.P14234779330888775527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052509 n + SequenceMachineLib.triUpLeft a n

end

end A210489.P14234779330888775527

noncomputable section

/-- A210489: Array read by ascending antidiagonals where row n contains the second partial sums of row n of Pascal's triangle.

Offset 0, canonical program `A210489.P14234779330888775527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210489 (n : ℕ) : ℤ :=
  A210489.P14234779330888775527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210490.P759080343209305434

`∪[(n+1)², A005117(n+1)]`
-/

namespace A210490.P759080343209305434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210490.P759080343209305434

noncomputable section

/-- A210490: Union of positive squares (A000290 \ {0}) and squarefree numbers (A005117).

Offset 1, canonical program `A210490.P759080343209305434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210490 (n : ℕ) : ℤ :=
  (A210490.P759080343209305434.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210553.P9943179974443538122

`A105422(A140978(n+1)-(n+1))`
-/

namespace A210553.P9943179974443538122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A140978 (n + 1) - (n + 1 : ℤ)).toNat

end

end A210553.P9943179974443538122

noncomputable section

/-- A210553: Triangle of coefficients of polynomials v(n,x) jointly generated with A210552; see the Formula section.

Offset 1, canonical program `A210553.P9943179974443538122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A210553 (n : ℕ) : ℤ :=
  A210553.P9943179974443538122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A210553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210556.P15498165299501482229

`A210555(comp[∑[n]]+1)-A210555(n+1)`
-/

namespace A210556.P15498165299501482229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210555 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - A210555 (n + 1)

end

end A210556.P15498165299501482229

noncomputable section

/-- A210556: Triangle of coefficients of polynomials v(n,x) jointly generated with A210555; see the Formula section.

Offset 1, canonical program `A210556.P15498165299501482229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A210556 (n : ℕ) : ℤ :=
  A210556.P15498165299501482229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A210556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210601.P759026042027309096

`2*A210600(n+1)-A209745(n+1)`
-/

namespace A210601.P759026042027309096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210600 (n + 1) - A209745 (n + 1)

end

end A210601.P759026042027309096

noncomputable section

/-- A210601: Triangle of coefficients of polynomials v(n,x) jointly generated with A210600; see the Formula section.

Offset 1, canonical program `A210601.P759026042027309096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210601 (n : ℕ) : ℤ :=
  A210601.P759026042027309096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210658.P2914115457204165086

`A168256(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A210658.P2914115457204165086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168256 n + SequenceMachineLib.triUp a n

end

end A210658.P2914115457204165086

noncomputable section

/-- A210658: Triangle of partial sums of Catalan numbers.

Offset 0, canonical program `A210658.P2914115457204165086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A210658 (n : ℕ) : ℤ :=
  A210658.P2914115457204165086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A210658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210752.P9361426142759944631

`A210741(n+1)+T(n-1,k)` with `a(0)=1`
-/

namespace A210752.P9361426142759944631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210741 (n + 1) + SequenceMachineLib.triUp a n

end

end A210752.P9361426142759944631

noncomputable section

/-- A210752: Triangle of coefficients of polynomials v(n,x) jointly generated with A210751; see the Formula section.

Offset 1, canonical program `A210752.P9361426142759944631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210752 (n : ℕ) : ℤ :=
  A210752.P9361426142759944631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210772.P8754564599079475200

`C(a(A008683(A005117(n))²)^(n-2)+3, 3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A210772.P8754564599079475200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Nat.choose (SequenceMachineLib.roundAway ((a (A008683 (A005117 n).toNat ^ 2).toNat : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 3)).toNat 3

end

end A210772.P8754564599079475200

noncomputable section

/-- A210772: Number of partitions of 2^n into powers of 2 less than or equal to 8.

Offset 0, canonical program `A210772.P8754564599079475200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A210772 (n : ℕ) : ℤ :=
  (A210772.P8754564599079475200.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A210772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210825.P13526735410302526141

`∑{d}[n+1, A010054(#-1)*A008683((n+1)/#)]`
-/

namespace A210825.P13526735410302526141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010054 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A210825.P13526735410302526141

noncomputable section

/-- A210825: G.f.: Sum_{n>=1} a(n)*x^n/(1-x^n) = x*Sum_{n>=1} x^(n*(n-1)/2).

Offset 1, canonical program `A210825.P13526735410302526141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A210825 (n : ℕ) : ℤ :=
  A210825.P13526735410302526141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A210825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210874.P5919570536090111252

`A141169(n)+A004736(n+1)*A193588(n)`
-/

namespace A210874.P5919570536090111252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A004736 (n + 1) * A193588 n

end

end A210874.P5919570536090111252

noncomputable section

/-- A210874: Triangular array U(n,k) of coefficients of polynomials defined in Comments.

Offset 1, canonical program `A210874.P5919570536090111252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210874 (n : ℕ) : ℤ :=
  A210874.P5919570536090111252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211005.P17612685658692376087

`runs[A005171(n+1)]`
-/

namespace A211005.P17612685658692376087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A211005.P17612685658692376087

noncomputable section

/-- A211005: Pair (i, j) where i = number of adjacent nonprimes and j = number of adjacent primes.

Offset 1, canonical program `A211005.P17612685658692376087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211005 (n : ℕ) : ℤ :=
  (A211005.P17612685658692376087.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211161.P6189623529692111121

`A209279(1+n)-A142150(A025581(n))`
-/

namespace A211161.P6189623529692111121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (1 + n) - A142150 (A025581 n).toNat

end

end A211161.P6189623529692111121

noncomputable section

/-- A211161: Table T(n,k) = n, if k is odd, k/2 if k is even; n, k > 0, read by antidiagonals.

Offset 1, canonical program `A211161.P6189623529692111121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211161 (n : ℕ) : ℤ :=
  A211161.P6189623529692111121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211265.P3770983483908970250

`∑[A211159(n+1)]+n`
-/

namespace A211265.P3770983483908970250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A211265.P3770983483908970250

noncomputable section

/-- A211265: Number of integer pairs (x,y) such that 0<x<y<=n and x*y<=n+1.

Offset 1, canonical program `A211265.P3770983483908970250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211265 (n : ℕ) : ℤ :=
  A211265.P3770983483908970250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211280.P11515842632403342583

`xor(-A210497(n+1), -2)`
-/

namespace A211280.P11515842632403342583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A210497 (n + 1)) (-2)

end

end A211280.P11515842632403342583

noncomputable section

/-- A211280: Numerator of prime(n+1) - prime(n)/2.

Offset 1, canonical program `A211280.P11515842632403342583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211280 (n : ℕ) : ℤ :=
  A211280.P11515842632403342583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211431.P6606073131395030940

`Δ[n²]+2*A031876(2*n)`
-/

namespace A211431.P6606073131395030940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2 * A031876 (2 * n)

end

end A211431.P6606073131395030940

noncomputable section

/-- A211431: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^3+(x+y)^2=0.

Offset 0, canonical program `A211431.P6606073131395030940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 597 terms. -/
def A211431 (n : ℕ) : ℤ :=
  A211431.P6606073131395030940.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 597 terms. -/
def A211431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211437.P3946924361183422050

`A103517(∑{d}[n, A131089(#)])`
-/

namespace A211437.P3946924361183422050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (∑ d ∈ Nat.divisors (f1 n), A131089 d).toNat

end

end A211437.P3946924361183422050

noncomputable section

/-- A211437: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w*x*y=n.

Offset 0, canonical program `A211437.P3946924361183422050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A211437 (n : ℕ) : ℤ :=
  A211437.P3946924361183422050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A211437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211479.P11464434019036712485

`A175658(n+2)-2^(n+1)`
-/

namespace A211479.P11464434019036712485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175658 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A211479.P11464434019036712485

noncomputable section

/-- A211479: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having two, three or four distinct values for every i<=n and j<=n.

Offset 1, canonical program `A211479.P11464434019036712485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A211479 (n : ℕ) : ℤ :=
  A211479.P11464434019036712485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A211479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211517.P17636450596556737059

`A031876(2*n)-A005843(A031876(n))`
-/

namespace A211517.P17636450596556737059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031876 (2 * n) - A005843 (A031876 n).toNat

end

end A211517.P17636450596556737059

noncomputable section

/-- A211517: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^3=(x+y)^2.

Offset 0, canonical program `A211517.P17636450596556737059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. -/
def A211517 (n : ℕ) : ℤ :=
  A211517.P17636450596556737059.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. -/
def A211517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211528.P14625012457903362307

`A211525(n+1)+2*A006327(n+4)`
-/

namespace A211528.P14625012457903362307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + 2 * A006327 (n + 4)

end

end A211528.P14625012457903362307

noncomputable section

/-- A211528: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four or six distinct values for every i,j,k<=n.

Offset 1, canonical program `A211528.P14625012457903362307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211528 (n : ℕ) : ℤ :=
  A211528.P14625012457903362307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211529.P292426756212088253

`A211526(n+1)+2*A006327(n+4)`
-/

namespace A211529.P292426756212088253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211526 (n + 1) + 2 * A006327 (n + 4)

end

end A211529.P292426756212088253

noncomputable section

/-- A211529: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four, five or six distinct values for every i,j,k<=n.

Offset 1, canonical program `A211529.P292426756212088253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211529 (n : ℕ) : ℤ :=
  A211529.P292426756212088253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A211529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211603.P4525959663239701488

`A004736(n+1)!*A074909(A007401(n+1))`
-/

namespace A211603.P4525959663239701488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1)).toNat : ℤ) * A074909 (A007401 (n + 1)).toNat

end

end A211603.P4525959663239701488

noncomputable section

/-- A211603: Triangular array read by rows: T(n,k) is the number of n-permutations that are pure cycles having exactly k fixed points; n>=2, 0<=k<=n-2.

Offset 2, canonical program `A211603.P4525959663239701488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A211603 (n : ℕ) : ℤ :=
  A211603.P4525959663239701488.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A211603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211842.P11204677895779110950

`A247100(n+3)-2^(n+3)`
-/

namespace A211842.P11204677895779110950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247100 (n + 3) - (2 ^ (n + 3) : ℤ)

end

end A211842.P11204677895779110950

noncomputable section

/-- A211842: Number of nonnegative integer arrays of length n+3 with new values 0 upwards introduced in order, no three adjacent elements all unequal, and containing the value 2.

Offset 1, canonical program `A211842.P11204677895779110950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A211842 (n : ℕ) : ℤ :=
  A211842.P11204677895779110950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A211842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212167.P5687651809221960298

`comp[A212164(n+1)-1]+1`
-/

namespace A212167.P5687651809221960298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A212167.P5687651809221960298

noncomputable section

/-- A212167: Numbers k such that the maximum exponent in its prime factorization is not greater than the number of positive exponents (A051903(k) <= A001221(k)).

Offset 1, canonical program `A212167.P5687651809221960298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212167 (n : ℕ) : ℤ :=
  (A212167.P5687651809221960298.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212211.P16493591112079206609

`A212210(∑[char[∑[n]]+1]+1)`
-/

namespace A212211.P16493591112079206609
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212210 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212211.P16493591112079206609

noncomputable section

/-- A212211: Triangle read by rows: T(n,k) = pi(n) + pi(k) - pi(n+k), n >= 2, 2 <= k <= n, where pi() = A000720().

Offset 2, canonical program `A212211.P16493591112079206609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212211 (n : ℕ) : ℤ :=
  A212211.P16493591112079206609.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212233.P15822774752107181943

`A027914(2*(n+1))`
-/

namespace A212233.P15822774752107181943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 (2 * (n + 1))

end

end A212233.P15822774752107181943

noncomputable section

/-- A212233: Number of 0..2 arrays of length 2*n with sum no more than 2*n in any length 2n subsequence (=50% duty cycle).

Offset 1, canonical program `A212233.P15822774752107181943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A212233 (n : ℕ) : ℤ :=
  A212233.P15822774752107181943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A212233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212510.P14644633675115054678

`(A001840(n)-n)*A077043(n)`
-/

namespace A212510.P14644633675115054678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * A077043 n

end

end A212510.P14644633675115054678

noncomputable section

/-- A212510: Number of (w,x,y,z) with all terms in {1,...,n} and w<2x and y>3z.

Offset 0, canonical program `A212510.P14644633675115054678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212510 (n : ℕ) : ℤ :=
  A212510.P14644633675115054678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212512.P2827929840228850799

`(A211540(n)+A006578(n))*A006578(n)`
-/

namespace A212512.P2827929840228850799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211540 n + A006578 n) * A006578 n

end

end A212512.P2827929840228850799

noncomputable section

/-- A212512: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y<3z.

Offset 0, canonical program `A212512.P2827929840228850799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212512 (n : ℕ) : ℤ :=
  A212512.P2827929840228850799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212514.P3714945399054877261

`(A001840(n)-n)*A006578(n)`
-/

namespace A212514.P3714945399054877261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * A006578 n

end

end A212514.P3714945399054877261

noncomputable section

/-- A212514: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y>3z.

Offset 0, canonical program `A212514.P3714945399054877261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212514 (n : ℕ) : ℤ :=
  A212514.P3714945399054877261.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212517.P9130843482353071563

`(n²-A006578(n))*A397972(n)`
-/

namespace A212517.P9130843482353071563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A006578 n) * A397972 n

end

end A212517.P9130843482353071563

noncomputable section

/-- A212517: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y<=3z.

Offset 0, canonical program `A212517.P9130843482353071563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212517 (n : ℕ) : ℤ :=
  A212517.P9130843482353071563.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212518.P17660951834491083763

`(A001840(n)-n)*∑[A140106(n+1)]`
-/

namespace A212518.P17660951834491083763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212518.P17660951834491083763

noncomputable section

/-- A212518: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y>3z.

Offset 0, canonical program `A212518.P17660951834491083763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212518 (n : ℕ) : ℤ :=
  A212518.P17660951834491083763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212519.P16552761711127633602

`∑[A140106(n+1)]*∑[A002264(n)]`
-/

namespace A212519.P16552761711127633602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A212519.P16552761711127633602

noncomputable section

/-- A212519: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y>=3z.

Offset 0, canonical program `A212519.P16552761711127633602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212519 (n : ℕ) : ℤ :=
  A212519.P16552761711127633602.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212595.P16881548213722038787

`A175851(2*(n+6))`
-/

namespace A212595.P16881548213722038787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * (n + 6))

end

end A212595.P16881548213722038787

noncomputable section

/-- A212595: Let f(n) = 2n-7. Difference between f(n) and the nearest prime < f(n).

Offset 10, canonical program `A212595.P16881548213722038787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9991 terms. -/
def A212595 (n : ℕ) : ℤ :=
  A212595.P16881548213722038787.a (n - 10)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9991 terms. -/
def A212595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212743.P8901795894585003481

`(n+1)²²-A212742(n)`
-/

namespace A212743.P8901795894585003481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A212742 n

end

end A212743.P8901795894585003481

noncomputable section

/-- A212743: Number of (w,x,y,z) with all terms in {0,...,n} and max{w,x,y,z}>2*min{w,x,y,z}.

Offset 0, canonical program `A212743.P8901795894585003481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212743 (n : ℕ) : ℤ :=
  A212743.P8901795894585003481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212849.P18303153871543826406

`record[(n+1)*A010054(A001414(n+1))]`
-/

namespace A212849.P18303153871543826406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010054 (A001414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212849.P18303153871543826406

noncomputable section

/-- A212849: Numbers whose sum of prime factors (counted with multiplicity) is a triangular number.

Offset 1, canonical program `A212849.P18303153871543826406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A212849 (n : ℕ) : ℤ :=
  A212849.P18303153871543826406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A212849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212890.P12500765985835150325

`(n+1)^4-A212889(n)`
-/

namespace A212890.P12500765985835150325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A212889 n

end

end A212890.P12500765985835150325

noncomputable section

/-- A212890: Number of (w,x,y,z) with all terms in {0,...,n} and odd range.

Offset 0, canonical program `A212890.P12500765985835150325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212890 (n : ℕ) : ℤ :=
  A212890.P12500765985835150325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212891.P17461566265270001459

`∑[A198954(n)]+2*T(n-1,k)-T(n-2,k)` with `a(0)=1`
-/

namespace A212891.P17461566265270001459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2 a n

end

end A212891.P17461566265270001459

noncomputable section

/-- A212891: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = (n-1+h)^2, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A212891.P17461566265270001459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212891 (n : ℕ) : ℤ :=
  A212891.P17461566265270001459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212905.P11159810601554210294

`2*A213483(n)-A005893(n)`
-/

namespace A212905.P11159810601554210294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213483 n - A005893 n

end

end A212905.P11159810601554210294

noncomputable section

/-- A212905: Number of (w,x,y,z) with all terms in {0,...,n} and |w-x|+|x-y+|y-z|=2n.

Offset 0, canonical program `A212905.P11159810601554210294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212905 (n : ℕ) : ℤ :=
  A212905.P11159810601554210294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213015.P7267296078738737997

`filter[A085711(n+1), A356163(#)]`
-/

namespace A213015.P7267296078738737997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A213015.P7267296078738737997

noncomputable section

/-- A213015: Numbers n such that the sum of prime factors of n (counted with multiplicity) is 2 times a prime.

Offset 1, canonical program `A213015.P7267296078738737997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3514 terms. -/
def A213015 (n : ℕ) : ℤ :=
  A213015.P7267296078738737997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3514 terms. -/
def A213015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213194.P3452364425526493797

`A008619(A060511(n))`
-/

namespace A213194.P3452364425526493797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A060511 n).toNat

end

end A213194.P3452364425526493797

noncomputable section

/-- A213194: First inverse function (numbers of rows) for pairing function A211377.

Offset 1, canonical program `A213194.P3452364425526493797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A213194 (n : ℕ) : ℤ :=
  A213194.P3452364425526493797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A213194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213394.P16098337122954015116

`n+1-A053666(n+1)`
-/

namespace A213394.P16098337122954015116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A053666 (n + 1)

end

end A213394.P16098337122954015116

noncomputable section

/-- A213394: The difference between n and the product of the digits of the n-th prime.

Offset 1, canonical program `A213394.P16098337122954015116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213394 (n : ℕ) : ℤ :=
  A213394.P16098337122954015116.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213550.P8036425158304762488

`A213500(n+1)+T(n-1,k)` with `a(0)=1`
-/

namespace A213550.P8036425158304762488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213500 (n + 1) + SequenceMachineLib.triUp a n

end

end A213550.P8036425158304762488

noncomputable section

/-- A213550: Rectangular array: (row n) = b**c, where b(h) = h*(h+1)/2, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213550.P8036425158304762488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213550 (n : ℕ) : ℤ :=
  A213550.P8036425158304762488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213576.P15881642760112422739

`A204922(n+1)+T(n-1,k)` with `a(0)=1`
-/

namespace A213576.P15881642760112422739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A204922 (n + 1) + SequenceMachineLib.triUp a n

end

end A213576.P15881642760112422739

noncomputable section

/-- A213576: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = F(n-1+h), where F=A000045 (Fibonacci numbers), n >= 1, h >= 1, and ** = convolution.

Offset 1, canonical program `A213576.P15881642760112422739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213576 (n : ℕ) : ℤ :=
  A213576.P15881642760112422739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213579.P12720852438304577649

`A104798(n+2)+A001924(A025581(n))`
-/

namespace A213579.P12720852438304577649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104798 (n + 2) + A001924 (A025581 n).toNat

end

end A213579.P12720852438304577649

noncomputable section

/-- A213579: Rectangular array: (row n) = b**c, where b(h) = F(h), c(h) = n-1+h, where F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213579.P12720852438304577649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213579 (n : ℕ) : ℤ :=
  A213579.P12720852438304577649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213752.P6712457032791748921

`2*A213751(n+1)-A055461(n+1)`
-/

namespace A213752.P6712457032791748921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213751 (n + 1) - A055461 (n + 1)

end

end A213752.P6712457032791748921

noncomputable section

/-- A213752: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = b(n-1+h), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213752.P6712457032791748921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213752 (n : ℕ) : ℤ :=
  A213752.P6712457032791748921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213771.P15097200566803793023

`2*A213751(n+1)-A213500(n+1)`
-/

namespace A213771.P15097200566803793023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213751 (n + 1) - A213500 (n + 1)

end

end A213771.P15097200566803793023

noncomputable section

/-- A213771: Rectangular array: (row n) = b**c, where b(h) = 3*h-2, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213771.P15097200566803793023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213771 (n : ℕ) : ℤ :=
  A213771.P15097200566803793023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213836.P1472070259988033542

`2*A213751(n+1)-A049777(n+1)`
-/

namespace A213836.P1472070259988033542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213751 (n + 1) - A049777 (n + 1)

end

end A213836.P1472070259988033542

noncomputable section

/-- A213836: Rectangular array: (row n) = b**c, where b(h) = 4*h-3, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213836.P1472070259988033542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213836 (n : ℕ) : ℤ :=
  A213836.P1472070259988033542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214317.P1350936880509777613

`10*a(n-1)+2-A005614(n)` with `a(0)=1`
-/

namespace A214317.P1350936880509777613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (2 - A005614 n)

end

end A214317.P1350936880509777613

noncomputable section

/-- A214317: a(n) = length-n prefix of the Fibonacci word A003842.

Offset 1, canonical program `A214317.P1350936880509777613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A214317 (n : ℕ) : ℤ :=
  A214317.P1350936880509777613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A214317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214319.P793865802162299093

`A182028(n)+A003849(n+1)`
-/

namespace A214319.P793865802162299093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 n + A003849 (n + 1)

end

end A214319.P793865802162299093

noncomputable section

/-- A214319: First differences of A182028.

Offset 0, canonical program `A214319.P793865802162299093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A214319 (n : ℕ) : ℤ :=
  A214319.P793865802162299093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A214319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214505.P12862525992075675400

`A214295(2*n+1)`
-/

namespace A214505.P12862525992075675400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214295 (2 * n + 1)

end

end A214505.P12862525992075675400

noncomputable section

/-- A214505: a(n) = 1 if n is four times a triangular number, -1 if one more than twelve times a triangular number else 0.

Offset 0, canonical program `A214505.P12862525992075675400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214295, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214505 (n : ℕ) : ℤ :=
  A214505.P12862525992075675400.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214295, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214505.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214547.P5981767396618173425

`lt[A009194(n+1), A033879(n+1)]+1`
-/

namespace A214547.P5981767396618173425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A214547.P5981767396618173425

noncomputable section

/-- A214547: Deficient numbers for which the (absolute value of) abundance is not a divisor.

Offset 1, canonical program `A214547.P5981767396618173425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7483 terms. -/
def A214547 (n : ℕ) : ℤ :=
  (A214547.P5981767396618173425.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7483 terms. -/
def A214547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214681.P13397189043489326683

`A065330(n+1)*A234959(n+1)`
-/

namespace A214681.P13397189043489326683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1) * A234959 (n + 1)

end

end A214681.P13397189043489326683

noncomputable section

/-- A214681: a(n) is obtained from n by removing factors of 2 and 3 that do not contribute to a factor of 6.

Offset 1, canonical program `A214681.P13397189043489326683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214681 (n : ℕ) : ℤ :=
  A214681.P13397189043489326683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214824.P7114462778934576427

`A000917(n)-A002057(n)`
-/

namespace A214824.P7114462778934576427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000917 n - A002057 n

end

end A214824.P7114462778934576427

noncomputable section

/-- A214824: Number of solid standard Young tableaux of shape [[(2)^n],[2]].

Offset 1, canonical program `A214824.P7114462778934576427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A214824 (n : ℕ) : ℤ :=
  A214824.P7114462778934576427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A214824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214960.P4106115688173494549

`(-1)^n*A127693(n)`
-/

namespace A214960.P4106115688173494549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A127693 n

end

end A214960.P4106115688173494549

noncomputable section

/-- A214960: Expansion of psi(x^2) - x * psi(x^10) in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A214960.P4106115688173494549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127693, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214960 (n : ℕ) : ℤ :=
  A214960.P4106115688173494549.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127693, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214984.P3883522136983937842

`A214978(n+1)+T(n-1,k)` with `a(0)=1`
-/

namespace A214984.P3883522136983937842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214978 (n + 1) + SequenceMachineLib.triUp a n

end

end A214984.P3883522136983937842

noncomputable section

/-- A214984: Array: T(m,n) = (F(m) + F(2*m) + ... + F(n*m))/F(m), by antidiagonals, where F = A000045 (Fibonacci numbers).

Offset 1, canonical program `A214984.P3883522136983937842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 965 terms. -/
def A214984 (n : ℕ) : ℤ :=
  A214984.P3883522136983937842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 965 terms. -/
def A214984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215030.P16388215424714916452

`and(A066033(n+1), A176040(n))`
-/

namespace A215030.P16388215424714916452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066033 (n + 1)) (A176040 n)

end

end A215030.P16388215424714916452

noncomputable section

/-- A215030: a(n) = A215029(A000040(n)), where A000040(n) is the n-th prime.

Offset 1, canonical program `A215030.P16388215424714916452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215030 (n : ℕ) : ℤ :=
  A215030.P16388215424714916452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215079.P7857227990351126838

`A002262(n)^A003056(n)*A055248(n)`
-/

namespace A215079.P7857227990351126838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A003056 n : ℤ) * (A055248 n : ℚ)

end

end A215079.P7857227990351126838

noncomputable section

/-- A215079: Triangle T(n,k) = k^n * sum(binomial(n,n-k-j),j=0..n-k).

Offset 0, canonical program `A215079.P7857227990351126838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1576 terms. -/
def A215079 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A215079.P7857227990351126838.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1576 terms. -/
def A215079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215083.P11854283229404545397

`A103438(A245300(n))`
-/

namespace A215083.P11854283229404545397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 (A245300 n).toNat

end

end A215083.P11854283229404545397

noncomputable section

/-- A215083: Triangle T(n,k) = sum of the k first n-th powers.

Offset 0, canonical program `A215083.P11854283229404545397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1273 terms. -/
def A215083 (n : ℕ) : ℤ :=
  A215083.P11854283229404545397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1273 terms. -/
def A215083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215092.P9241392620537580199

`∑[2-A080278(A234959(n+1))]`
-/

namespace A215092.P9241392620537580199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080278 (A234959 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215092.P9241392620537580199

noncomputable section

/-- A215092: a(n) = Sum_{i=0..m} d(i)*3^i, where Sum_{i=0..m} d(i)*6^i is the base-6 representation of n.

Offset 1, canonical program `A215092.P9241392620537580199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215092 (n : ℕ) : ℤ :=
  A215092.P9241392620537580199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215175.P279961201682932440

`A214297(A026741(n))-A123108(A093178(n))`
-/

namespace A215175.P279961201682932440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (A026741 n).toNat - A123108 (A093178 n).toNat

end

end A215175.P279961201682932440

noncomputable section

/-- A215175: a(2*n) = A214297(n), a(2*n+1) = A000290(n).

Offset 0, canonical program `A215175.P279961201682932440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215175 (n : ℕ) : ℤ :=
  A215175.P279961201682932440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215259.P940527813139096403

`A187284(n)+n`
-/

namespace A215259.P940527813139096403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187284 n + (n : ℤ)

end

end A215259.P940527813139096403

noncomputable section

/-- A215259: Nearest integer to log(A003418(n)).

Offset 0, canonical program `A215259.P940527813139096403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215259 (n : ℕ) : ℤ :=
  A215259.P940527813139096403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215378.P9622553553527907091

`∪[A141849(n+1), A215374(n+1)]`
-/

namespace A215378.P9622553553527907091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215378.P9622553553527907091

noncomputable section

/-- A215378: Primes congruent to {0, 1, 2, 3} mod 11.

Offset 1, canonical program `A215378.P9622553553527907091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215378 (n : ℕ) : ℤ :=
  (A215378.P9622553553527907091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215380.P13737349323683384483

`∪[A129484(n+1), A215376(n+1)]`
-/

namespace A215380.P13737349323683384483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215380.P13737349323683384483

noncomputable section

/-- A215380: Primes congruent to {0, 1, 2, 3} mod 17.

Offset 1, canonical program `A215380.P13737349323683384483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215380 (n : ℕ) : ℤ :=
  (A215380.P13737349323683384483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215381.P1725177119798405766

`∪[A141868(n+1), A215377(n+1)]`
-/

namespace A215381.P1725177119798405766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215381.P1725177119798405766

noncomputable section

/-- A215381: Primes congruent to {0, 1, 2, 3} mod 19.

Offset 1, canonical program `A215381.P1725177119798405766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215381 (n : ℕ) : ℤ :=
  (A215381.P1725177119798405766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215480.P17421984776920031326

`val(A105561(n+1), 3)`
-/

namespace A215480.P17421984776920031326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105561 (n + 1)).toNat 3

end

end A215480.P17421984776920031326

noncomputable section

/-- A215480: Characteristic function of numbers n with exactly two distinct prime factors.

Offset 1, canonical program `A215480.P17421984776920031326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215480 (n : ℕ) : ℤ :=
  (A215480.P17421984776920031326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215761.P3697800326789046983

`eq[1, A167020(2*A016777(n))]`
-/

namespace A215761.P3697800326789046983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (2 * A016777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215761.P3697800326789046983

noncomputable section

/-- A215761: Numbers m with property that 36m+11 is prime.

Offset 1, canonical program `A215761.P3697800326789046983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A215761 (n : ℕ) : ℤ :=
  (A215761.P3697800326789046983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A215761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215808.P8126471697275371774

`p?[A062234(n+1)]`
-/

namespace A215808.P8126471697275371774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P8126471697275371774

noncomputable section

/-- A215808: Primes of the form 2*prime(k) - prime(k+1).

Offset 1, canonical program `A215808.P8126471697275371774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A215808 (n : ℕ) : ℤ :=
  A215808.P8126471697275371774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A215808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215879.P7420381154779558260

`val(A094114(2*(n+1)), 2)`
-/

namespace A215879.P7420381154779558260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094114 (2 * (n + 1))).toNat 2

end

end A215879.P7420381154779558260

noncomputable section

/-- A215879: Written in base 3, n ends in a(n) consecutive nonzero digits.

Offset 0, canonical program `A215879.P7420381154779558260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A215879 (n : ℕ) : ℤ :=
  (A215879.P7420381154779558260.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A215879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216098.P11989965352199446682

`p?[A073273(n+1)]`
-/

namespace A216098.P11989965352199446682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216098.P11989965352199446682

noncomputable section

/-- A216098: Primes that are equal to the floor of the geometric mean of the previous prime and the following prime.

Offset 1, canonical program `A216098.P11989965352199446682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. -/
def A216098 (n : ℕ) : ℤ :=
  A216098.P11989965352199446682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. -/
def A216098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216101.P10600526339822882131

`p?[floor(sqrt(A152530(n+2)))]`
-/

namespace A216101.P10600526339822882131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A152530 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216101.P10600526339822882131

noncomputable section

/-- A216101: Primes which are the integer harmonic mean of the previous prime and the following prime.

Offset 1, canonical program `A216101.P10600526339822882131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216101 (n : ℕ) : ℤ :=
  A216101.P10600526339822882131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216118.P4934922841258648200

`A130518(A127739(n+1))*A130534(n)`
-/

namespace A216118.P4934922841258648200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 (A127739 (n + 1)).toNat * A130534 n

end

end A216118.P4934922841258648200

noncomputable section

/-- A216118: Triangle read by rows: T(n,k) is the number of stretching pairs in all permutations in S_{n,k} (=set of permutations in S_n with k cycles) (n >= 3; 1 <= k <= n-2).

Offset 3, canonical program `A216118.P4934922841258648200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A216118 (n : ℕ) : ℤ :=
  A216118.P4934922841258648200.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A216118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216124.P18024191600111702472

`p?[floor(sqrt(A152530(n+1)))+1]`
-/

namespace A216124.P18024191600111702472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A152530 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216124.P18024191600111702472

noncomputable section

/-- A216124: Primes which are the nearest integer to the geometric mean of the previous prime and the following prime.

Offset 1, canonical program `A216124.P18024191600111702472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A216124 (n : ℕ) : ℤ :=
  A216124.P18024191600111702472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A216124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216153.P15491257447114026993

`A205959(A018252(n+1))`
-/

namespace A216153.P15491257447114026993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (A018252 (n + 1)).toNat

end

end A216153.P15491257447114026993

noncomputable section

/-- A216153: The partial products of a(n) are the distinct values of the exponential of the von Mangoldt function modified by restricting the divisors to prime divisors (A205957).

Offset 1, canonical program `A216153.P15491257447114026993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216153 (n : ℕ) : ℤ :=
  A216153.P15491257447114026993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216182.P11319792317386822378

`A112743(A185869(n+1))`
-/

namespace A216182.P11319792317386822378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112743 (A185869 (n + 1)).toNat

end

end A216182.P11319792317386822378

noncomputable section

/-- A216182: Riordan array ((1+x)/(1-x)^2, x(1+x)^2/(1-x)^2).

Offset 0, canonical program `A216182.P11319792317386822378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A216182 (n : ℕ) : ℤ :=
  A216182.P11319792317386822378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A216182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216318.P9466305550885392496

`ceil(A028270(n)/2)-A000108(n)`
-/

namespace A216318.P9466305550885392496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028270 n : ℚ) / 2⌉ - A000108 n

end

end A216318.P9466305550885392496

noncomputable section

/-- A216318: Number of peaks in all Dyck n-paths after changing each valley to a peak by the transform DU -> UD.

Offset 0, canonical program `A216318.P9466305550885392496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A216318 (n : ℕ) : ℤ :=
  A216318.P9466305550885392496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A216318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216369.P502427347791430248

`(A049782(n+1)*A114112(n+1))%(n+1)`
-/

namespace A216369.P502427347791430248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049782 (n + 1) * A114112 (n + 1)) (n + 1 : ℤ)

end

end A216369.P502427347791430248

noncomputable section

/-- A216369: a(n) = !(n-1) mod n.

Offset 1, canonical program `A216369.P502427347791430248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216369 (n : ℕ) : ℤ :=
  A216369.P502427347791430248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216781.P17850051630873400409

`record[A005843(n+1)/gcd(2, A017665(n+1))]`
-/

namespace A216781.P17850051630873400409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (Int.gcd 2 (A017665 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216781.P17850051630873400409

noncomputable section

/-- A216781: Numbers such that numerator(sigma(n)/n) is odd and denominator(sigma(n)/n) is even.

Offset 1, canonical program `A216781.P17850051630873400409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1937 terms. -/
def A216781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216781.P17850051630873400409.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1937 terms. -/
def A216781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217128.P10561566557455975693

`lt[1, A193929(2*n)]`
-/

namespace A217128.P10561566557455975693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217128.P10561566557455975693

noncomputable section

/-- A217128: Numbers n such that (2n)^4 + 1 is not prime.

Offset 1, canonical program `A217128.P10561566557455975693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A217128 (n : ℕ) : ℤ :=
  (A217128.P10561566557455975693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A217128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217129.P6626584089061769423

`lt[1, A193929(n)]`
-/

namespace A217129.P6626584089061769423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217129.P6626584089061769423

noncomputable section

/-- A217129: Numbers n such that n^4 + 1 is not prime.

Offset 1, canonical program `A217129.P6626584089061769423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A217129 (n : ℕ) : ℤ :=
  (A217129.P6626584089061769423.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A217129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217477.P11172635933459327032

`(A004277(n)+2)*A168491(n)`
-/

namespace A217477.P11172635933459327032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + 2) * A168491 n

end

end A217477.P11172635933459327032

noncomputable section

/-- A217477: Z-sequence for the Riordan triangle A111125.

Offset 0, canonical program `A217477.P11172635933459327032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A217477 (n : ℕ) : ℤ :=
  A217477.P11172635933459327032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A217477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217526.P4421922415180328638

`A168049(n)-A123108(n)`
-/

namespace A217526.P4421922415180328638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n - A123108 n

end

end A217526.P4421922415180328638

noncomputable section

/-- A217526: From the enumeration of involutions avoiding the pattern 4321.

Offset 0, canonical program `A217526.P4421922415180328638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A217526 (n : ℕ) : ℤ :=
  A217526.P4421922415180328638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A217526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217538.P14501556472145506747

`floor(∑[A001043(n+1)/A069482(n+1)])`
-/

namespace A217538.P14501556472145506747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001043 (n + 1) : ℚ) / (A069482 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A217538.P14501556472145506747

noncomputable section

/-- A217538: Integer part of the n-th partial sum of the reciprocal primes gaps.

Offset 1, canonical program `A217538.P14501556472145506747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217538 (n : ℕ) : ℤ :=
  A217538.P14501556472145506747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217656.P10697064785089551026

`∩[A140687(n+1), A141975(n+1)]`
-/

namespace A217656.P10697064785089551026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P10697064785089551026

noncomputable section

/-- A217656: Primes p such that p = 361 + 420*k for some k.

Offset 1, canonical program `A217656.P10697064785089551026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1233 terms. -/
def A217656 (n : ℕ) : ℤ :=
  (A217656.P10697064785089551026.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1233 terms. -/
def A217656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217831.P14758969929507153265

`A063524(A109004(n))`
-/

namespace A217831.P14758969929507153265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A109004 n).toNat

end

end A217831.P14758969929507153265

noncomputable section

/-- A217831: Euclid's triangle read by rows. T(n, k) = 1 if k is prime to n, otherwise 0.

Offset 0, canonical program `A217831.P14758969929507153265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217831 (n : ℕ) : ℤ :=
  A217831.P14758969929507153265.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217920.P8141071150989026145

`A001223(abs(1-∑[n])+1)`
-/

namespace A217920.P8141071150989026145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (|1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| + 1).toNat

end

end A217920.P8141071150989026145

noncomputable section

/-- A217920: Column 1 of A217916 (when formed into a number triangle).

Offset 1, canonical program `A217920.P8141071150989026145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A217920 (n : ℕ) : ℤ :=
  A217920.P8141071150989026145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A217920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217946.P4119184011466137260

`A000245(n+1)+record[A232500(n+5)]`
-/

namespace A217946.P4119184011466137260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232500 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217946.P4119184011466137260

noncomputable section

/-- A217946: a(n) = 4^n*(n+1)*(8*n^2+32*n+33)*P(3/2,n)/(3*P(4,n)) where P(a,n) is the Pochhammer rising factorial.

Offset 0, canonical program `A217946.P4119184011466137260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A217946 (n : ℕ) : ℤ :=
  A217946.P4119184011466137260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A217946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218234.P3405762265077975232

`A028310(A132440(n))-1`
-/

namespace A218234.P3405762265077975232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A132440 n).toNat - 1

end

end A218234.P3405762265077975232

noncomputable section

/-- A218234: Infinitesimal generator for padded Pascal matrix A097805 (as lower triangular matrices).

Offset 0, canonical program `A218234.P3405762265077975232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218234 (n : ℕ) : ℤ :=
  A218234.P3405762265077975232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218257.P16517323974653770966

`A059909((n+1)²)`
-/

namespace A218257.P16517323974653770966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059909 ((n + 1) ^ 2)

end

end A218257.P16517323974653770966

noncomputable section

/-- A218257: a(n) = |{m : multiplicative order of n mod m = 8}|.

Offset 1, canonical program `A218257.P16517323974653770966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A218257 (n : ℕ) : ℤ :=
  A218257.P16517323974653770966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A218257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218381.P3083862309969667451

`lt[0, A211996(n+1)]+1`
-/

namespace A218381.P3083862309969667451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A218381.P3083862309969667451

noncomputable section

/-- A218381: Numbers k = i*j such that i+j is a square.

Offset 1, canonical program `A218381.P3083862309969667451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 977 terms. -/
def A218381 (n : ℕ) : ℤ :=
  (A218381.P3083862309969667451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 977 terms. -/
def A218381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218444.P10091015155135104589

`∑[A001876(n)]`
-/

namespace A218444.P10091015155135104589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218444.P10091015155135104589

noncomputable section

/-- A218444: a(n) = Sum_{k>=0} floor(n/(5*k + 1)).

Offset 0, canonical program `A218444.P10091015155135104589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218444 (n : ℕ) : ℤ :=
  A218444.P10091015155135104589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218445.P17304662535675583263

`∑[A001877(n)]`
-/

namespace A218445.P17304662535675583263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218445.P17304662535675583263

noncomputable section

/-- A218445: a(n) = Sum_{k>=0} floor(n/(5*k + 2)).

Offset 0, canonical program `A218445.P17304662535675583263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218445 (n : ℕ) : ℤ :=
  A218445.P17304662535675583263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218446.P16595335050583582027

`∑[A001878(n)]`
-/

namespace A218446.P16595335050583582027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218446.P16595335050583582027

noncomputable section

/-- A218446: a(n) = Sum_{k>=0} floor(n/(5*k + 3)).

Offset 0, canonical program `A218446.P16595335050583582027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218446 (n : ℕ) : ℤ :=
  A218446.P16595335050583582027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218485.P11683830369572626684

`record[A120070(A061579(n)+2)]`
-/

namespace A218485.P11683830369572626684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A061579 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218485.P11683830369572626684

noncomputable section

/-- A218485: Positive numbers differing from next greater square by a square.

Offset 1, canonical program `A218485.P11683830369572626684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. -/
def A218485 (n : ℕ) : ℤ :=
  A218485.P11683830369572626684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. -/
def A218485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219115.P3913064017766754831

`lt[A039966(round(n²/3)), 1]`
-/

namespace A219115.P3913064017766754831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A219115.P3913064017766754831

noncomputable section

/-- A219115: Numbers whose squares have at least one 1 and one 2 in ternary representation.

Offset 1, canonical program `A219115.P3913064017766754831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A219115 (n : ℕ) : ℤ :=
  (A219115.P3913064017766754831.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A219115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219312.P4976015755134366941

`∑{#}[n, C(n, #)*A109262(#)]`
-/

namespace A219312.P4976015755134366941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A109262 k

end

end A219312.P4976015755134366941

noncomputable section

/-- A219312: Composition of the binomial transform of Fibonacci numbers and the Catalan transform of Fibonacci numbers.

Offset 0, canonical program `A219312.P4976015755134366941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A219312 (n : ℕ) : ℤ :=
  A219312.P4976015755134366941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A219312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219314.P13268482731968327062

`∑{#}[n, (-1)^(n-#)*C(n, #)*A109262(#)]`
-/

namespace A219314.P13268482731968327062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A109262 k : ℚ)

end

end A219314.P13268482731968327062

noncomputable section

/-- A219314: Composition of the inverse binomial transform of Fibonacci numbers and the Catalan transform of Fibonacci numbers.

Offset 0, canonical program `A219314.P13268482731968327062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A219314 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A219314.P13268482731968327062.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A219314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220075.P13613845482449315163

`∑[A220073(n+1)-n*A010054(n)]`
-/

namespace A220075.P13613845482449315163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1) - (n : ℤ) * A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220075.P13613845482449315163

noncomputable section

/-- A220075: Partial sums in rows of A220073, triangle read by rows.

Offset 1, canonical program `A220075.P13613845482449315163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A220075 (n : ℕ) : ℤ :=
  A220075.P13613845482449315163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A220075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220098.P14603736137621403724

`A053615(A128217(n+2))`
-/

namespace A220098.P14603736137621403724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A128217 (n + 2)).toNat

end

end A220098.P14603736137621403724

noncomputable section

/-- A220098: Manhattan distances between 2n and 1 in the double spiral with positive integers and 1 at the center.

Offset 1, canonical program `A220098.P14603736137621403724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220098 (n : ℕ) : ℤ :=
  A220098.P14603736137621403724.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220508.P6866650714193173536

`A033638(A204022(n+1))-(A114327(n)+1)`
-/

namespace A220508.P6866650714193173536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A204022 (n + 1)).toNat - (A114327 n + 1)

end

end A220508.P6866650714193173536

noncomputable section

/-- A220508: T(n,k) = n^2 + k if k <= n, otherwise T(n,k) = k*(k + 2) - n; square array T(n,k) read by ascending antidiagonals (n >= 0, k >= 0).

Offset 0, canonical program `A220508.P6866650714193173536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220508 (n : ℕ) : ℤ :=
  A220508.P6866650714193173536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220589.P547849876058364495

`2*A002026(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A220589.P547849876058364495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A002026 (n + 1) - a (n - 1)

end

end A220589.P547849876058364495

noncomputable section

/-- A220589: Number of simple skew-merged permutations with n elements.

Offset 4, canonical program `A220589.P547849876058364495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A220589 (n : ℕ) : ℤ :=
  A220589.P547849876058364495.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A220589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221056.P8997916471508641174

`eq[1, A061265(n+1)+1]+1`
-/

namespace A221056.P8997916471508641174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061265 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A221056.P8997916471508641174

noncomputable section

/-- A221056: Numbers k such that there is no square between prime(k) and prime(k+1).

Offset 1, canonical program `A221056.P8997916471508641174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. -/
def A221056 (n : ℕ) : ℤ :=
  (A221056.P8997916471508641174.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. -/
def A221056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221264.P4034302150785658829

`lt[A005094(n+1), 0]+1`
-/

namespace A221264.P4034302150785658829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A221264.P4034302150785658829

noncomputable section

/-- A221264: Numbers having fewer distinct prime factors of form 4*k+1 than of 4*k+3.

Offset 1, canonical program `A221264.P4034302150785658829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4562 terms. -/
def A221264 (n : ℕ) : ℤ :=
  (A221264.P4034302150785658829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4562 terms. -/
def A221264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221265.P15757483948814931907

`lt[0, A005094(n+1)]+1`
-/

namespace A221265.P15757483948814931907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A221265.P15757483948814931907

noncomputable section

/-- A221265: Numbers having more distinct prime factors of form 4*k+1 than of 4*k+3.

Offset 1, canonical program `A221265.P15757483948814931907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A221265 (n : ℕ) : ℤ :=
  (A221265.P15757483948814931907.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A221265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221877.P9761697283966523475

`A004736(n+1)*A124927(n)`
-/

namespace A221877.P9761697283966523475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A124927 n

end

end A221877.P9761697283966523475

noncomputable section

/-- A221877: Triangle read by rows: T(n,k) = number of order-preserving or order-reversing full contraction mappings (of an n-chain) with height exactly k.

Offset 1, canonical program `A221877.P9761697283966523475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221877 (n : ℕ) : ℤ :=
  A221877.P9761697283966523475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221919.P5976960747588476298

`A108872(n+1)/gcd(A108872(n+1), A144204(n+1))`
-/

namespace A221919.P5976960747588476298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) : ℚ) / (Int.gcd (A108872 (n + 1)) (A144204 (n + 1)) : ℚ)

end

end A221919.P5976960747588476298

noncomputable section

/-- A221919: Triangle of numerators of sum of two unit fractions: 1/n + 1/m, n >= m >= 1.

Offset 1, canonical program `A221919.P5976960747588476298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221919 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A221919.P5976960747588476298.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222030.P10406464568820635234

`∪[∑[2*n], A089237(n+1)]`
-/

namespace A222030.P10406464568820635234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A222030.P10406464568820635234

noncomputable section

/-- A222030: Primes and quarter-squares.

Offset 0, canonical program `A222030.P10406464568820635234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222030 (n : ℕ) : ℤ :=
  (A222030.P10406464568820635234.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222404.P14214754150695596768

`2*A222403(n)`
-/

namespace A222404.P14214754150695596768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222403 n

end

end A222404.P14214754150695596768

noncomputable section

/-- A222404: Triangle read by rows: left and right edges are A002378, interior entries are filled in using the Pascal triangle rule.

Offset 0, canonical program `A222404.P14214754150695596768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222404 (n : ℕ) : ℤ :=
  A222404.P14214754150695596768.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222559.P7406129077156502269

`A047905(n+1)-∏[A093178(n)]`
-/

namespace A222559.P7406129077156502269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047905 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222559.P7406129077156502269

noncomputable section

/-- A222559: a(0) = 0. If n is odd, a(n) = a(n-1) * n, otherwise a(n) = a(n-1) + n.

Offset 0, canonical program `A222559.P7406129077156502269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A222559 (n : ℕ) : ℤ :=
  A222559.P7406129077156502269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A222559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222946.P18161529280472622073

`and(A054431(n+1), A103217(n))*A055096(n+2)`
-/

namespace A222946.P18161529280472622073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A103217 n) * A055096 (n + 2)

end

end A222946.P18161529280472622073

noncomputable section

/-- A222946: Triangle for hypotenuses of primitive Pythagorean triangles.

Offset 2, canonical program `A222946.P18161529280472622073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A222946 (n : ℕ) : ℤ :=
  A222946.P18161529280472622073.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A222946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222993.P8408352810680705070

`Δ[A112502(n)]`
-/

namespace A222993.P8408352810680705070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222993.P8408352810680705070

noncomputable section

/-- A222993: Number of n X 2 0..2 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

Offset 1, canonical program `A222993.P8408352810680705070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A222993 (n : ℕ) : ℤ :=
  A222993.P8408352810680705070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A222993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A223035.P17125103435558196622

`p?[A175396(n+1)]`
-/

namespace A223035.P17125103435558196622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A223035.P17125103435558196622

noncomputable section

/-- A223035: Prime numbers whose digits squared sum to a square.

Offset 1, canonical program `A223035.P17125103435558196622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 901 terms. -/
def A223035 (n : ℕ) : ℤ :=
  A223035.P17125103435558196622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 901 terms. -/
def A223035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A223756.P3397043722478657849

`A223659(n+1)²`
-/

namespace A223756.P3397043722478657849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1) ^ 2

end

end A223756.P3397043722478657849

noncomputable section

/-- A223756: Number of n X 2 0..3 arrays with rows, antidiagonals and columns unimodal.

Offset 1, canonical program `A223756.P3397043722478657849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A223659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A223756 (n : ℕ) : ℤ :=
  A223756.P3397043722478657849.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A223659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A223756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224363.P1517019116254697631

`p?[A061265(n+1)+A000040(n+1)]`
-/

namespace A224363.P1517019116254697631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061265 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224363.P1517019116254697631

noncomputable section

/-- A224363: Primes p such that there are no squares between p and the prime following p.

Offset 1, canonical program `A224363.P1517019116254697631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. -/
def A224363 (n : ℕ) : ℤ :=
  A224363.P1517019116254697631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. -/
def A224363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224544.P4555445662633383526

`A055998(n)+A022124(n+2)`
-/

namespace A224544.P4555445662633383526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A022124 (n + 2)

end

end A224544.P4555445662633383526

noncomputable section

/-- A224544: Number of (n+1) X 3 0..1 matrices with each 2 X 2 subblock idempotent.

Offset 1, canonical program `A224544.P4555445662633383526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A224544 (n : ℕ) : ℤ :=
  A224544.P4555445662633383526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A224544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224710.P16961705520595192506

`A210469((2*n)%(n+2)+1)`
-/

namespace A224710.P16961705520595192506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (2 * n % (n + 2) + 1)

end

end A224710.P16961705520595192506

noncomputable section

/-- A224710: The number of unordered partitions {a,b} of 2n-1 such that a and b are composite.

Offset 1, canonical program `A224710.P16961705520595192506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224710 (n : ℕ) : ℤ :=
  A224710.P16961705520595192506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224777.P17996834867425370218

`A037213(A075362(n+1))`
-/

namespace A224777.P17996834867425370218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A075362 (n + 1)).toNat

end

end A224777.P17996834867425370218

noncomputable section

/-- A224777: Triangle with integer geometric mean sqrt(n*m) for 1 <= m <= n, and 0 if sqrt(n*m) is not integer.

Offset 1, canonical program `A224777.P17996834867425370218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A224777 (n : ℕ) : ℤ :=
  A224777.P17996834867425370218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A224777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224840.P6519552924552385028

`∑{d}[n+1, A085945(#)]`
-/

namespace A224840.P6519552924552385028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085945 d

end

end A224840.P6519552924552385028

noncomputable section

/-- A224840: Divisor sum of the arithmetic function A085945(n).

Offset 1, canonical program `A224840.P6519552924552385028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A224840 (n : ℕ) : ℤ :=
  A224840.P6519552924552385028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A224840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224854.P17096122939360505849

`∩[A201804(n+1), A201816(n+1)]`
-/

namespace A224854.P17096122939360505849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224854.P17096122939360505849

noncomputable section

/-- A224854: Numbers n such that 90*n + 11 and 90*n + 13 are twin prime.

Offset 1, canonical program `A224854.P17096122939360505849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A224854 (n : ℕ) : ℤ :=
  (A224854.P17096122939360505849.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A224854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224855.P8373330680304639775

`∩[A196000(n+1), A202115(n+1)]`
-/

namespace A224855.P8373330680304639775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224855.P8373330680304639775

noncomputable section

/-- A224855: Numbers n such that 90*n + 17 and 90*n + 19 are twin primes.

Offset 1, canonical program `A224855.P8373330680304639775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2539 terms. -/
def A224855 (n : ℕ) : ℤ :=
  (A224855.P8373330680304639775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2539 terms. -/
def A224855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224856.P11929615249765491218

`∩[A201739(n+1), A201819(n+1)]`
-/

namespace A224856.P11929615249765491218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224856.P11929615249765491218

noncomputable section

/-- A224856: Numbers n such that 90*n + 29 and 90*n + 31 are twin primes.

Offset 1, canonical program `A224856.P11929615249765491218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A224856 (n : ℕ) : ℤ :=
  (A224856.P11929615249765491218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A224856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224857.P3836827436332242418

`∩[A202104(n+1), A202105(n+1)]`
-/

namespace A224857.P3836827436332242418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224857.P3836827436332242418

noncomputable section

/-- A224857: Numbers n such that 90n + 41 and 90n + 43 are twin primes.

Offset 1, canonical program `A224857.P3836827436332242418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2605 terms. -/
def A224857 (n : ℕ) : ℤ :=
  (A224857.P3836827436332242418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2605 terms. -/
def A224857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224862.P10932737819112680464

`∩[A195993(n+1), A202129(n+1)]`
-/

namespace A224862.P10932737819112680464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224862.P10932737819112680464

noncomputable section

/-- A224862: Numbers n such that 90*n + 71 and 90*n + 73 are twin primes.

Offset 1, canonical program `A224862.P10932737819112680464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2522 terms. -/
def A224862 (n : ℕ) : ℤ :=
  (A224862.P10932737819112680464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2522 terms. -/
def A224862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224864.P12895529055223917671

`∩[A201822(n+1), A202112(n+1)]`
-/

namespace A224864.P12895529055223917671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224864.P12895529055223917671

noncomputable section

/-- A224864: Numbers n such that 90*n + 77 and 90*n + 79 are twin primes.

Offset 1, canonical program `A224864.P12895529055223917671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2559 terms. -/
def A224864 (n : ℕ) : ℤ :=
  (A224864.P12895529055223917671.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2559 terms. -/
def A224864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224889.P7293490489333454836

`A181732(1+n)-1`
-/

namespace A224889.P7293490489333454836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181732 (1 + n) - 1

end

end A224889.P7293490489333454836

noncomputable section

/-- A224889: Numbers n such that 90n + 91 is prime.

Offset 1, canonical program `A224889.P7293490489333454836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224889 (n : ℕ) : ℤ :=
  A224889.P7293490489333454836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224976.P11584365082941137146

`2*A111932(n+1)-A000203(n+1)`
-/

namespace A224976.P11584365082941137146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111932 (n + 1) - A000203 (n + 1)

end

end A224976.P11584365082941137146

noncomputable section

/-- A224976: L.g.f.: log( 1 + Sum_{n>=1} x^(n*(3*n-1)/2) + x^(n*(3*n+1)/2) ) = Sum_{n>=1} a(n)*x^n/n.

Offset 1, canonical program `A224976.P11584365082941137146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224976 (n : ℕ) : ℤ :=
  A224976.P11584365082941137146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225013.P15914430659359903742

`∑[∑[A225012(n+1)]]+1`
-/

namespace A225013.P15914430659359903742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225012 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225013.P15914430659359903742

noncomputable section

/-- A225013: Number of 6Xn 0..1 arrays with rows unimodal and columns nondecreasing.

Offset 1, canonical program `A225013.P15914430659359903742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225013 (n : ℕ) : ℤ :=
  A225013.P15914430659359903742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225413.P15423504064134024276

`(A101164(C(row(n)+1, 2)+col(n))-A014473(C(row(n)+1, 2)+col(n)))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A225413.P15423504064134024276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101164 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - A014473 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ) / 2

end

end A225413.P15423504064134024276

noncomputable section

/-- A225413: Triangle read by rows: T(n,k) = (A101164(n,k) - A014473(n,k))/2.

Offset 0, canonical program `A225413.P15423504064134024276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225413 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225413.P15423504064134024276.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225413.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225468.P16349640510992352417

`A225466(n)/A000244(A002262(n))`
-/

namespace A225468.P16349640510992352417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225466 n : ℚ) / (A000244 (A002262 n).toNat : ℚ)

end

end A225468.P16349640510992352417

noncomputable section

/-- A225468: Triangle read by rows, S_3(n, k) where S_m(n, k) are the Stirling-Frobenius subset numbers of order m; n >= 0, k >= 0.

Offset 0, canonical program `A225468.P16349640510992352417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A225468 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225468.P16349640510992352417.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A225468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225541.P14151932172831400690

`∑[char[A058749(n+1)]]`
-/

namespace A225541.P14151932172831400690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225541.P14151932172831400690

noncomputable section

/-- A225541: Floor(W(n)) where W is the Lambert W function.

Offset 0, canonical program `A225541.P14151932172831400690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225541 (n : ℕ) : ℤ :=
  (A225541.P14151932172831400690.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225699.P15182149105449095167

`lcm(4*(n+1), A005880(n))/(4*(n+1))`
-/

namespace A225699.P15182149105449095167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (4 * (n + 1) : ℤ) (A005880 n) : ℚ) / (4 * (n + 1) : ℚ)

end

end A225699.P15182149105449095167

noncomputable section

/-- A225699: Numerators of coefficients arising from q-expansion of Integrate[eta[q^4]^8/eta[q^2]^4, q]/q where eta is the Dedekind eta function.

Offset 0, canonical program `A225699.P15182149105449095167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225699 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225699.P15182149105449095167.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225700.P11846201848307707302

`2*(n+1)/A339964(Δ[n²])`
-/

namespace A225700.P11846201848307707302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A339964 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A225700.P11846201848307707302

noncomputable section

/-- A225700: Denominators of coefficients arising from q-expansion of Integrate[eta[q^4]^8/eta[q^2]^4, q]/q where eta is the Dedekind eta function.

Offset 0, canonical program `A225700.P11846201848307707302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225700 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225700.P11846201848307707302.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225862.P12697072099318197817

`p?[A111333(2*n+1)+n]`
-/

namespace A225862.P12697072099318197817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225862.P12697072099318197817

noncomputable section

/-- A225862: Primes of the form (n + prime(n))/2.

Offset 1, canonical program `A225862.P12697072099318197817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. -/
def A225862 (n : ℕ) : ℤ :=
  A225862.P12697072099318197817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. -/
def A225862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225887.P18168249121695771555

`6*a(n-1)-A006318(n)` with `a(0)=1`
-/

namespace A225887.P18168249121695771555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A006318 n

end

end A225887.P18168249121695771555

noncomputable section

/-- A225887: a(n) = A212205(2*n + 1).

Offset 0, canonical program `A225887.P18168249121695771555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A225887 (n : ℕ) : ℤ :=
  A225887.P18168249121695771555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A225887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225954.P13746598503051587470

`Δ[A158525(n+11)]%15`
-/

namespace A225954.P13746598503051587470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158525 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 15

end

end A225954.P13746598503051587470

noncomputable section

/-- A225954: A primitive sequence of order n = 2 generated by f(x) = x^2 - (4*x + 13) over Z/(3*5) (see below).

Offset 0, canonical program `A225954.P13746598503051587470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A225954 (n : ℕ) : ℤ :=
  A225954.P13746598503051587470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A225954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225975.P14240903064831222647

`gcd(A109043(n), A227316(A026741(n)))`
-/

namespace A225975.P14240903064831222647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109043 n) (A227316 (A026741 n).toNat)

end

end A225975.P14240903064831222647

noncomputable section

/-- A225975: Square root of A226008(n).

Offset 0, canonical program `A225975.P14240903064831222647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225975 (n : ℕ) : ℤ :=
  (A225975.P14240903064831222647.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226132.P3984057379380350820

`(-1)^n*A121443(n+1)`
-/

namespace A226132.P3984057379380350820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121443 (n + 1)

end

end A226132.P3984057379380350820

noncomputable section

/-- A226132: Expansion of - c(-q) * c(q^2) / 9 in powers of q where c() is a cubic AGM theta function.

Offset 1, canonical program `A226132.P3984057379380350820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226132 (n : ℕ) : ℤ :=
  A226132.P3984057379380350820.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226208.P9905066037066462262

`A111982(record[A038554(n)])`
-/

namespace A226208.P9905066037066462262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226208.P9905066037066462262

noncomputable section

/-- A226208: Zeckendorf distance between n and n+1.

Offset 1, canonical program `A226208.P9905066037066462262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A226208 (n : ℕ) : ℤ :=
  A226208.P9905066037066462262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A226208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226217.P16285020928925633820

`p?[A007913(A000040(n+1)*A077648(n+1))]`
-/

namespace A226217.P16285020928925633820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000040 (n + 1) * A077648 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226217.P16285020928925633820

noncomputable section

/-- A226217: Primes whose first digit is a square.

Offset 1, canonical program `A226217.P16285020928925633820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A226217 (n : ℕ) : ℤ :=
  A226217.P16285020928925633820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A226217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226250.P13657873324624354211

`A136495(n+1)+n`
-/

namespace A226250.P13657873324624354211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + (n : ℤ)

end

end A226250.P13657873324624354211

noncomputable section

/-- A226250: Positions of positive numbers in the ordering of the rational numbers at A226247.

Offset 1, canonical program `A226250.P13657873324624354211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A226250 (n : ℕ) : ℤ :=
  A226250.P13657873324624354211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A226250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226523.P9443111382705884996

`A046980(A039714(n+1))`
-/

namespace A226523.P9443111382705884996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A039714 (n + 1)).toNat

end

end A226523.P9443111382705884996

noncomputable section

/-- A226523: a(n) = 0 if p=2, 1 if 2 is a square mod p, -1 otherwise, where p = prime(n).

Offset 1, canonical program `A226523.P9443111382705884996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226523 (n : ℕ) : ℤ :=
  A226523.P9443111382705884996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226567.P14814399466170142573

`eq[A003982(n), A101264(n)]`
-/

namespace A226567.P14814399466170142573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226567.P14814399466170142573

noncomputable section

/-- A226567: Numbers k such that 2*k+1 is neither a square nor a prime.

Offset 1, canonical program `A226567.P14814399466170142573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226567 (n : ℕ) : ℤ :=
  (A226567.P14814399466170142573.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226793.P10004698446441766598

`A055235(comp[A185869(1+n)])/2`
-/

namespace A226793.P10004698446441766598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185869 (1 + n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055235 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A226793.P10004698446441766598

noncomputable section

/-- A226793: Numbers of the form (3^j + 9^k)/2, for j and k >= 0.

Offset 1, canonical program `A226793.P10004698446441766598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7515 terms. -/
def A226793 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A226793.P10004698446441766598.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7515 terms. -/
def A226793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226894.P7504913734433053599

`A000027(A215001(n+1)+n)`
-/

namespace A226894.P7504913734433053599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A215001 (n + 1) + (n : ℤ)).toNat

end

end A226894.P7504913734433053599

noncomputable section

/-- A226894: Position of n-th harmonic number H(n) in the joint ranking of {H(k)} and {log k}, for k >= 1; complement of A226896.

Offset 1, canonical program `A226894.P7504913734433053599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A226894 (n : ℕ) : ℤ :=
  A226894.P7504913734433053599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A226894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226913.P8047699162367960814

`comp[A008347(n)]`
-/

namespace A226913.P8047699162367960814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A226913.P8047699162367960814

noncomputable section

/-- A226913: Not of form sum_{i=0..n-1} (-1)^i prime(n-i), where prime(k) denotes the k-th prime.

Offset 1, canonical program `A226913.P8047699162367960814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226913 (n : ℕ) : ℤ :=
  (A226913.P8047699162367960814.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226969.P9831287097395014531

`eq[4, A053737(n)]`
-/

namespace A226969.P9831287097395014531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226969.P9831287097395014531

noncomputable section

/-- A226969: Numbers whose base-4 sum of digits is 4.

Offset 1, canonical program `A226969.P9831287097395014531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A226969 (n : ℕ) : ℤ :=
  (A226969.P9831287097395014531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A226969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226995.P7493703247149475882

`A089165(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A226995.P7493703247149475882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089165 (n - 1) + a (n - 1)

end

end A226995.P7493703247149475882

noncomputable section

/-- A226995: Number of lattice paths from (0,0) to (n,n) consisting of steps U=(1,1), H=(1,0) and S=(0,1) such that the first step leaving the diagonal (if any) is an H step and the last step joining the diagonal (if any) is a S step.

Offset 0, canonical program `A226995.P7493703247149475882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A226995 (n : ℕ) : ℤ :=
  A226995.P7493703247149475882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A226995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227056.P12583909736503362194

`A184138(n+2)-(n+4)`
-/

namespace A227056.P12583909736503362194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184138 (n + 2) - (n + 4 : ℤ)

end

end A227056.P12583909736503362194

noncomputable section

/-- A227056: Number of n X 2 -2..2 arrays of 2 X 2 subblock diagonal sums minus antidiagonal sums for some (n+1) X 3 binary array with rows and columns of the latter in lexicographically nondecreasing order.

Offset 1, canonical program `A227056.P12583909736503362194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227056 (n : ℕ) : ℤ :=
  A227056.P12583909736503362194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227062.P17655102543388537746

`eq[5, A053824(n)]`
-/

namespace A227062.P17655102543388537746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227062.P17655102543388537746

noncomputable section

/-- A227062: Numbers whose base-5 sum of digits is 5.

Offset 1, canonical program `A227062.P17655102543388537746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A227062 (n : ℕ) : ℤ :=
  (A227062.P17655102543388537746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A227062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227080.P1696635524758973866

`eq[6, A053827(n)]`
-/

namespace A227080.P1696635524758973866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227080.P1696635524758973866

noncomputable section

/-- A227080: Numbers whose base-6 sum of digits is 6.

Offset 1, canonical program `A227080.P1696635524758973866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A227080 (n : ℕ) : ℤ :=
  (A227080.P1696635524758973866.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A227080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227081.P2793122902535332000

`∑{#}[n, C(n, #)*A126952(#)]`
-/

namespace A227081.P2793122902535332000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A126952 k

end

end A227081.P2793122902535332000

noncomputable section

/-- A227081: Row sums of A124576.

Offset 0, canonical program `A227081.P2793122902535332000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A227081 (n : ℕ) : ℤ :=
  A227081.P2793122902535332000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A227081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227131.P12309905687250345847

`gcd(∑{d}[A091703(n), #], A028887(n))`
-/

namespace A227131.P12309905687250345847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A028887 n)

end

end A227131.P12309905687250345847

noncomputable section

/-- A227131: Sum of divisors of n that are not divisible by 25. a(0) = 1.

Offset 0, canonical program `A227131.P12309905687250345847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227131 (n : ℕ) : ℤ :=
  (A227131.P12309905687250345847.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227216.P6671624915462471529

`A119428(2*n)+A119428(2*n)-A119428(n)`
-/

namespace A227216.P6671624915462471529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119428 (2 * n) + (A119428 (2 * n) - A119428 n)

end

end A227216.P6671624915462471529

noncomputable section

/-- A227216: Expansion of f(-q^2, -q^3)^5 / f(-q)^3 in powers of q where f() is a Ramanujan theta function.

Offset 0, canonical program `A227216.P6671624915462471529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A227216 (n : ℕ) : ℤ :=
  A227216.P6671624915462471529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A227216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227499.P775430752148590656

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A208895(n+1)`
-/

namespace A227499.P775430752148590656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A208895 (n + 1) : ℚ)

end

end A227499.P775430752148590656

noncomputable section

/-- A227499: Number of the Lipschitz quaternions in a reduced system modulo n.

Offset 1, canonical program `A227499.P775430752148590656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227499 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227499.P775430752148590656.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227559.P17297700120002775526

`A091954(n+3)-ceil(n/2)+n`
-/

namespace A227559.P17297700120002775526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 3) - ⌈(n : ℚ) / 2⌉ + (n : ℤ)

end

end A227559.P17297700120002775526

noncomputable section

/-- A227559: Number of partitions of n into distinct parts with boundary size 2.

Offset 3, canonical program `A227559.P17297700120002775526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A227559 (n : ℕ) : ℤ :=
  A227559.P17297700120002775526.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A227559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227675.P630598864551539950

`A223659(n+1)+∑[C(n, 3)]`
-/

namespace A227675.P630598864551539950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A227675.P630598864551539950

noncomputable section

/-- A227675: Number of n X 2 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 3 binary array having an odd sum, with rows and columns of the latter in lexicographically nondecreasing order.

Offset 1, canonical program `A227675.P630598864551539950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227675 (n : ℕ) : ℤ :=
  A227675.P630598864551539950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227858.P13927469057825440636

`record[gcd(A040163(n+1), n+1)]`
-/

namespace A227858.P13927469057825440636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040163 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227858.P13927469057825440636

noncomputable section

/-- A227858: Numbers which start and end with the same digit in decimal.

Offset 1, canonical program `A227858.P13927469057825440636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. -/
def A227858 (n : ℕ) : ℤ :=
  (A227858.P13927469057825440636.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. -/
def A227858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227896.P1502342098669639840

`A007887(A007775(n+1))`
-/

namespace A227896.P1502342098669639840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007887 (A007775 (n + 1)).toNat

end

end A227896.P1502342098669639840

noncomputable section

/-- A227896: 32-beat repeating palindromic sequence: digital roots of Fibonacci numbers indexed by the set of natural numbers not divisible by 2, 3 or 5 (A007775).

Offset 1, canonical program `A227896.P1502342098669639840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2666 terms. -/
def A227896 (n : ℕ) : ℤ :=
  A227896.P1502342098669639840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2666 terms. -/
def A227896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227897.P5297514277977047223

`eq[0, A400694(n)]`
-/

namespace A227897.P5297514277977047223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400694 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227897.P5297514277977047223

noncomputable section

/-- A227897: Numbers k such that k^2 + 2 is not squarefree.

Offset 1, canonical program `A227897.P5297514277977047223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A227897 (n : ℕ) : ℤ :=
  (A227897.P5297514277977047223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A227897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227992.P16096606270884194142

`and(A132679(n+1)-1, A179888(n+1))`
-/

namespace A227992.P16096606270884194142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132679 (n + 1) - 1) (A179888 (n + 1))

end

end A227992.P16096606270884194142

noncomputable section

/-- A227992: Numbers m such that the continuants of their binary representations defined in A072347 equal 1.

Offset 1, canonical program `A227992.P16096606270884194142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227992 (n : ℕ) : ℤ :=
  A227992.P16096606270884194142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228074.P13200969438260436398

`A136431(A061579(n))+A097805(A007401(n+1))`
-/

namespace A228074.P13200969438260436398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A061579 n).toNat + A097805 (A007401 (n + 1)).toNat

end

end A228074.P13200969438260436398

noncomputable section

/-- A228074: A Fibonacci-Pascal triangle read by rows: T(n,0) = Fibonacci(n), T(n,n) = n and for n > 0: T(n,k) = T(n-1,k-1) + T(n-1,k), 0 < k < n.

Offset 0, canonical program `A228074.P13200969438260436398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A228074 (n : ℕ) : ℤ :=
  A228074.P13200969438260436398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A228074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228102.P7143956737170160369

`eq[1, ∑{e}[A063960(2*n+1), #]]`
-/

namespace A228102.P7143956737170160369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228102.P7143956737170160369

noncomputable section

/-- A228102: Numbers n such that sum of all primes <=n is prime.

Offset 1, canonical program `A228102.P7143956737170160369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A228102 (n : ℕ) : ℤ :=
  (A228102.P7143956737170160369.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A228102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228180.P57070728468080363

`A131428(n)-abs(∑[A115140(n)])`
-/

namespace A228180.P57070728468080363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A228180.P57070728468080363

noncomputable section

/-- A228180: The number of single edges on the boundary of ordered trees with n edges.

Offset 0, canonical program `A228180.P57070728468080363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A228180 (n : ℕ) : ℤ :=
  A228180.P57070728468080363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A228180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228187.P1035965118323279461

`eq[A000038(n), A053186(A070565(n))]`
-/

namespace A228187.P1035965118323279461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A070565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228187.P1035965118323279461

noncomputable section

/-- A228187: Positive numbers which when decremented by the product of their digits produce a square.

Offset 1, canonical program `A228187.P1035965118323279461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A228187 (n : ℕ) : ℤ :=
  (A228187.P1035965118323279461.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A228187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228358.P14957160635234131478

`record[A271566(A018252(n+2))]`
-/

namespace A228358.P14957160635234131478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271566 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228358.P14957160635234131478

noncomputable section

/-- A228358: Numbers k such that 3*k - 4 is not prime.

Offset 1, canonical program `A228358.P14957160635234131478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228358 (n : ℕ) : ℤ :=
  A228358.P14957160635234131478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228374.P4332640910458039691

`eq[0, A049084(A062234(n+1))]+1`
-/

namespace A228374.P4332640910458039691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A062234 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A228374.P4332640910458039691

noncomputable section

/-- A228374: Numbers k such that 2*prime(k) - prime(k+1) is not prime.

Offset 1, canonical program `A228374.P4332640910458039691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228374 (n : ℕ) : ℤ :=
  (A228374.P4332640910458039691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228403.P6601110408836053115

`A071716(n+1)+A000245(n)`
-/

namespace A228403.P6601110408836053115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071716 (n + 1) + A000245 n

end

end A228403.P6601110408836053115

noncomputable section

/-- A228403: The number of boundary twigs for complete binary twigs. A twig is a vertex with one edge on the boundary and only one other descendant.

Offset 1, canonical program `A228403.P6601110408836053115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228403 (n : ℕ) : ℤ :=
  A228403.P6601110408836053115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228553.P13710171465297030698

`A243485(2*(1+n))`
-/

namespace A228553.P13710171465297030698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243485 (2 * (1 + n))

end

end A228553.P13710171465297030698

noncomputable section

/-- A228553: Sum of the products formed by multiplying together the smaller and larger parts of each Goldbach partition of 2n.

Offset 1, canonical program `A228553.P13710171465297030698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A228553 (n : ℕ) : ℤ :=
  A228553.P13710171465297030698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A228553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228649.P13260817488648530651

`A007675(n+1)+1`
-/

namespace A228649.P13260817488648530651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1) + 1

end

end A228649.P13260817488648530651

noncomputable section

/-- A228649: Numbers n such that n-1, n and n+1 are all squarefree.

Offset 1, canonical program `A228649.P13260817488648530651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228649 (n : ℕ) : ℤ :=
  A228649.P13260817488648530651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228822.P6281530338051954029

`A054055(n)-A055642(n)`
-/

namespace A228822.P6281530338051954029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n - A055642 n

end

end A228822.P6281530338051954029

noncomputable section

/-- A228822: Largest digit of n minus the number of digits of n.

Offset 0, canonical program `A228822.P6281530338051954029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228822 (n : ℕ) : ℤ :=
  A228822.P6281530338051954029.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228952.P2460723275869032099

`A010062(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228952.P2460723275869032099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010062 (2 ^ n - 1)

end

end A228952.P2460723275869032099

noncomputable section

/-- A228952: A010062(2^n-1).

Offset 0, canonical program `A228952.P2460723275869032099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228952 (n : ℕ) : ℤ :=
  A228952.P2460723275869032099.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229125.P17586178144269697586

`eq[1, A054024(A007913(n+2))]+2`
-/

namespace A229125.P17586178144269697586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A007913 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A229125.P17586178144269697586

noncomputable section

/-- A229125: Numbers of the form p * m^2, where p is prime and m > 0: union of A228056 and A000040.

Offset 1, canonical program `A229125.P17586178144269697586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229125 (n : ℕ) : ℤ :=
  (A229125.P17586178144269697586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229347.P15433898513579831732

`(n+1)*A052938(A087893(n+1))`
-/

namespace A229347.P15433898513579831732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052938 (A087893 (n + 1)).toNat

end

end A229347.P15433898513579831732

noncomputable section

/-- A229347: a(1) = 1, for n > 1 a(n) = n*2^(omega(n)-1) where omega is A001221.

Offset 1, canonical program `A229347.P15433898513579831732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229347 (n : ℕ) : ℤ :=
  A229347.P15433898513579831732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229496.P8914308033381578582

`p?[A069482(n+1)+1]`
-/

namespace A229496.P8914308033381578582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229496.P8914308033381578582

noncomputable section

/-- A229496: Primes p of the form prime(n+1)^2-prime(n)^2+1.

Offset 1, canonical program `A229496.P8914308033381578582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A229496 (n : ℕ) : ℤ :=
  A229496.P8914308033381578582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A229496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229615.P14699236150142978134

`A111932(2+n)-A121443(n+2)`
-/

namespace A229615.P14699236150142978134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111932 (2 + n) - A121443 (n + 2)

end

end A229615.P14699236150142978134

noncomputable section

/-- A229615: Expansion of q^2 * psi(q^3)^6 / psi(q)^2 in powers of q where psi() is a Ramanujan theta function.

Offset 2, canonical program `A229615.P14699236150142978134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A229615 (n : ℕ) : ℤ :=
  A229615.P14699236150142978134.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A229615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229784.P3983521032097858868

`∑[A120962(n)]%10`
-/

namespace A229784.P3983521032097858868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A229784.P3983521032097858868

noncomputable section

/-- A229784: a(n) = (1^1^1 + 2^2^2 . . . + n^n^n) mod 10.

Offset 0, canonical program `A229784.P3983521032097858868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229784 (n : ℕ) : ℤ :=
  A229784.P3983521032097858868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229854.P2402401608803055440

`∩[A142398(n+1), A229853(n)]`
-/

namespace A229854.P2402401608803055440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P2402401608803055440

noncomputable section

/-- A229854: Primes of the form 384*k + 1.

Offset 1, canonical program `A229854.P2402401608803055440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. -/
def A229854 (n : ℕ) : ℤ :=
  (A229854.P2402401608803055440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. -/
def A229854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230038.P15109469580640497621

`A064784(A022846(1+n))`
-/

namespace A230038.P15109469580640497621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 (A022846 (1 + n)).toNat

end

end A230038.P15109469580640497621

noncomputable section

/-- A230038: Distance between n^2 and the smallest triangular number >= n^2.

Offset 1, canonical program `A230038.P15109469580640497621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230038 (n : ℕ) : ℤ :=
  A230038.P15109469580640497621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230088.P11230979796823215461

`∑[A010062(n)]`
-/

namespace A230088.P11230979796823215461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230088.P11230979796823215461

noncomputable section

/-- A230088: Partial sums of A010062.

Offset 0, canonical program `A230088.P11230979796823215461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230088 (n : ℕ) : ℤ :=
  A230088.P11230979796823215461.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230225.P3425636386318015061

`p?[lt[3, A175851(2*n+3)]]`
-/

namespace A230225.P3425636386318015061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A230225.P3425636386318015061

noncomputable section

/-- A230225: Primes p such that 2*p+1 and 2*p+3 are not prime.

Offset 1, canonical program `A230225.P3425636386318015061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230225 (n : ℕ) : ℤ :=
  (A230225.P3425636386318015061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230298.P12076085931182459712

`A010062(n)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230298.P12076085931182459712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010062 n) 2

end

end A230298.P12076085931182459712

noncomputable section

/-- A230298: a(n) = A010062(n) mod 2.

Offset 0, canonical program `A230298.P12076085931182459712`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230298 (n : ℕ) : ℤ :=
  A230298.P12076085931182459712.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230298.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230549.P11351822998614377782

`(n+2)²-4*A230548(n+2)`
-/

namespace A230549.P11351822998614377782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 4 * A230548 (n + 2)

end

end A230549.P11351822998614377782

noncomputable section

/-- A230549: Coins left after packing twin hearts patterns into n X n coins.

Offset 2, canonical program `A230549.P11351822998614377782`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230549 (n : ℕ) : ℤ :=
  A230549.P11351822998614377782.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230550.P9251230265839186452

`(n+1)²-2*A230548(n+2)`
-/

namespace A230550.P9251230265839186452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 2 * A230548 (n + 2)

end

end A230550.P9251230265839186452

noncomputable section

/-- A230550: Voids left after packing twin hearts patterns into n X n coins.

Offset 2, canonical program `A230550.P9251230265839186452`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230550 (n : ℕ) : ℤ :=
  A230550.P9251230265839186452.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230585.P6348763636375271191

`record[abs(A120304(n))+2]`
-/

namespace A230585.P6348763636375271191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120304 n| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230585.P6348763636375271191

noncomputable section

/-- A230585: First terms of first rows of zigzag matrices as defined in A088961.

Offset 1, canonical program `A230585.P6348763636375271191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A230585 (n : ℕ) : ℤ :=
  A230585.P6348763636375271191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A230585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230597.P16336454087684677726

`eq[A000120(n), A062756(n)]`
-/

namespace A230597.P16336454087684677726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230597.P16336454087684677726

noncomputable section

/-- A230597: Numbers n such that (the binary weight of n) = (the ternary weight of n).

Offset 1, canonical program `A230597.P16336454087684677726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A230597 (n : ℕ) : ℤ :=
  (A230597.P16336454087684677726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A230597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230606.P12939679331434938356

`record[A339964(2+n)-1]`
-/

namespace A230606.P12939679331434938356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (2 + n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230606.P12939679331434938356

noncomputable section

/-- A230606: Numbers n such that sigma(n) = k*(n+1) for some integer k.

Offset 1, canonical program `A230606.P12939679331434938356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230606 (n : ℕ) : ℤ :=
  A230606.P12939679331434938356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230780.P4087628453053372881

`lt[gcd(3, A023900(n+1)), 2]+1`
-/

namespace A230780.P4087628453053372881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A023900 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A230780.P4087628453053372881

noncomputable section

/-- A230780: Positive numbers without a prime factor congruent to 1 (mod 6).

Offset 1, canonical program `A230780.P4087628453053372881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7431 terms. -/
def A230780 (n : ℕ) : ℤ :=
  (A230780.P4087628453053372881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7431 terms. -/
def A230780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230901.P17815976702079233727

`char[A184480(n+1)-1]`
-/

namespace A230901.P17815976702079233727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A230901.P17815976702079233727

noncomputable section

/-- A230901: Sturmian word: equals the limit word S(infinity) where S(0) = 0, S(1) = 1 and for n >= 1, S(n+1) = S(n)S(n)S(n)S(n-1).

Offset 0, canonical program `A230901.P17815976702079233727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230901 (n : ℕ) : ℤ :=
  (A230901.P17815976702079233727.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231479.P10423907028065435007

`p?[A001222(A037475(n+1))*(n+1)]`
-/

namespace A231479.P10423907028065435007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037475 (n + 1)).toNat * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231479.P10423907028065435007

noncomputable section

/-- A231479: Primes whose base-7 representation is also the base-9 representation of a prime.

Offset 1, canonical program `A231479.P10423907028065435007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A231479 (n : ℕ) : ℤ :=
  A231479.P10423907028065435007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A231479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231482.P13578622432860794418

`(n+1)*∑[A086871(n)]`
-/

namespace A231482.P13578622432860794418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231482.P13578622432860794418

noncomputable section

/-- A231482: The number of nonlinear normal modes for a fully resonant Hamiltonian system with n degrees of freedom.

Offset 1, canonical program `A231482.P13578622432860794418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A231482 (n : ℕ) : ℤ :=
  A231482.P13578622432860794418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A231482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231587.P4482613944097138198

`eq[1, A010051(A001065(∑{d}[n+1, #])+1)]+1`
-/

namespace A231587.P4482613944097138198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001065 (∑ d ∈ Nat.divisors (f3 n), d) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231587.P4482613944097138198

noncomputable section

/-- A231587: Numbers k such that sigma(sigma(k)) - sigma(k) + 1 is prime.

Offset 1, canonical program `A231587.P4482613944097138198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A231587 (n : ℕ) : ℤ :=
  (A231587.P4482613944097138198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A231587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231607.P13191046615176950809

`p?[A040976(n+1)-598]`
-/

namespace A231607.P13191046615176950809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 598

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231607.P13191046615176950809

noncomputable section

/-- A231607: Primes p such that p + 600 is also prime.

Offset 1, canonical program `A231607.P13191046615176950809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3366 terms. -/
def A231607 (n : ℕ) : ℤ :=
  A231607.P13191046615176950809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3366 terms. -/
def A231607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231665.P16382713433774330828

`∑[A053737(n)²]`
-/

namespace A231665.P16382713433774330828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231665.P16382713433774330828

noncomputable section

/-- A231665: a(n) = Sum_{i=0..n} digsum_4(i)^2, where digsum_4(i) = A053737(i).

Offset 0, canonical program `A231665.P16382713433774330828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231665 (n : ℕ) : ℤ :=
  A231665.P16382713433774330828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231666.P6388544758695979375

`∑[A053737(n)^3]`
-/

namespace A231666.P6388544758695979375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231666.P6388544758695979375

noncomputable section

/-- A231666: a(n) = Sum_{i=0..n} digsum_4(i)^3, where digsum_4(i) = A053737(i).

Offset 0, canonical program `A231666.P6388544758695979375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231666 (n : ℕ) : ℤ :=
  A231666.P6388544758695979375.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231667.P3413105081984781509

`∑[A053737(n)^4]`
-/

namespace A231667.P3413105081984781509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231667.P3413105081984781509

noncomputable section

/-- A231667: a(n) = Sum_{i=0..n} digsum_4(i)^4, where digsum_4(i) = A053737(i).

Offset 0, canonical program `A231667.P3413105081984781509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231667 (n : ℕ) : ℤ :=
  A231667.P3413105081984781509.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231668.P9102284697367683491

`∑[A053824(n)]`
-/

namespace A231668.P9102284697367683491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231668.P9102284697367683491

noncomputable section

/-- A231668: a(n) = Sum_{i=0..n} digsum_5(i), where digsum_5(i) = A053824(i).

Offset 0, canonical program `A231668.P9102284697367683491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231668 (n : ℕ) : ℤ :=
  A231668.P9102284697367683491.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231669.P3399117245193815518

`∑[A053824(n)²]`
-/

namespace A231669.P3399117245193815518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231669.P3399117245193815518

noncomputable section

/-- A231669: a(n) = Sum_{i=0..n} digsum_5(i)^2, where digsum_5(i) = A053824(i).

Offset 0, canonical program `A231669.P3399117245193815518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231669 (n : ℕ) : ℤ :=
  A231669.P3399117245193815518.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231670.P15139428656320515460

`∑[A053824(n)^3]`
-/

namespace A231670.P15139428656320515460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231670.P15139428656320515460

noncomputable section

/-- A231670: a(n) = Sum_{i=0..n} digsum_5(i)^3, where digsum_5(i) = A053824(i).

Offset 0, canonical program `A231670.P15139428656320515460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231670 (n : ℕ) : ℤ :=
  A231670.P15139428656320515460.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231671.P8639604201154569080

`∑[A053824(n)^4]`
-/

namespace A231671.P8639604201154569080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231671.P8639604201154569080

noncomputable section

/-- A231671: a(n) = Sum_{i=0..n} digsum_5(i)^4, where digsum_5(i) = A053824(i).

Offset 0, canonical program `A231671.P8639604201154569080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231671 (n : ℕ) : ℤ :=
  A231671.P8639604201154569080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231672.P15541814258976411712

`∑[A053827(n)]`
-/

namespace A231672.P15541814258976411712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231672.P15541814258976411712

noncomputable section

/-- A231672: a(n) = Sum_{i=0..n} digsum_6(i), where digsum_6(i) = A053827(i).

Offset 0, canonical program `A231672.P15541814258976411712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231672 (n : ℕ) : ℤ :=
  A231672.P15541814258976411712.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231673.P7565841286569407630

`∑[A053827(n)²]`
-/

namespace A231673.P7565841286569407630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231673.P7565841286569407630

noncomputable section

/-- A231673: a(n) = Sum_{i=0..n} digsum_6(i)^2, where digsum_6(i) = A053827(i).

Offset 0, canonical program `A231673.P7565841286569407630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231673 (n : ℕ) : ℤ :=
  A231673.P7565841286569407630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231674.P15630276326049919643

`∑[A053827(n)^3]`
-/

namespace A231674.P15630276326049919643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231674.P15630276326049919643

noncomputable section

/-- A231674: a(n) = Sum_{i=0..n} digsum_6(i)^3, where digsum_6(i) = A053827(i).

Offset 0, canonical program `A231674.P15630276326049919643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231674 (n : ℕ) : ℤ :=
  A231674.P15630276326049919643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231675.P2348544671511139733

`∑[A053827(n)^4]`
-/

namespace A231675.P2348544671511139733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231675.P2348544671511139733

noncomputable section

/-- A231675: a(n) = Sum_{i=0..n} digsum_6(i)^4, where digsum_6(i) = A053827(i).

Offset 0, canonical program `A231675.P2348544671511139733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231675 (n : ℕ) : ℤ :=
  A231675.P2348544671511139733.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231877.P9922668353028729998

`lt[n*char[A231876(n+1)], n]`
-/

namespace A231877.P9922668353028729998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231876 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A231877.P9922668353028729998

noncomputable section

/-- A231877: Numbers k such that omega(k)^2 (cf. A001221) does not divide k.

Offset 1, canonical program `A231877.P9922668353028729998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. -/
def A231877 (n : ℕ) : ℤ :=
  (A231877.P9922668353028729998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. -/
def A231877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231879.P1230613589456422052

`comp[A231878(n+1)-1]+1`
-/

namespace A231879.P1230613589456422052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A231879.P1230613589456422052

noncomputable section

/-- A231879: Numbers k such that bigomega(k)^2 (cf. A001222) does not divide k.

Offset 1, canonical program `A231879.P1230613589456422052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231879 (n : ℕ) : ℤ :=
  (A231879.P1230613589456422052.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231959.P9351094932317826349

`record[gcd(n+1, A132634(2*(n+1)))]`
-/

namespace A231959.P9351094932317826349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A132634 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231959.P9351094932317826349

noncomputable section

/-- A231959: Numbers n dividing the Lucas sequence u(n) defined by u(i) = 3*u(i-1) - u(i-2) with initial conditions u(0)=0, u(1)=1.

Offset 1, canonical program `A231959.P9351094932317826349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A231959 (n : ℕ) : ℤ :=
  (A231959.P9351094932317826349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A231959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232180.P7403348615314962087

`A001008(Δ[n²])`
-/

namespace A232180.P7403348615314962087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A232180.P7403348615314962087

noncomputable section

/-- A232180: First bisection of harmonic numbers (numerators).

Offset 1, canonical program `A232180.P7403348615314962087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A232180 (n : ℕ) : ℤ :=
  A232180.P7403348615314962087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A232180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232181.P8852575731093556452

`A002805(Δ[n²])`
-/

namespace A232181.P8852575731093556452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A232181.P8852575731093556452

noncomputable section

/-- A232181: First bisection of harmonic numbers (denominators).

Offset 1, canonical program `A232181.P8852575731093556452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A232181 (n : ℕ) : ℤ :=
  A232181.P8852575731093556452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A232181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232356.P2356897415690345151

`2*A121443(n+1)-A111932(n+1)`
-/

namespace A232356.P2356897415690345151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121443 (n + 1) - A111932 (n + 1)

end

end A232356.P2356897415690345151

noncomputable section

/-- A232356: Expansion of 2/9 * c(q) * c(q^2) - q * (psi(q) * psi(q^3))^2 in powers of q where psi() is a Ramanujan theta function and c(q) is a cubic AGM theta function.

Offset 1, canonical program `A232356.P2356897415690345151`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, A121443, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A232356 (n : ℕ) : ℤ :=
  A232356.P2356897415690345151.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, A121443, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A232356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232665.P5891118158449811280

`A222283(2*A028310(n))+1`
-/

namespace A232665.P5891118158449811280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222283 (2 * A028310 n).toNat + 1

end

end A232665.P5891118158449811280

noncomputable section

/-- A232665: Number of compositions of 2n such that the largest multiplicity of parts equals n.

Offset 0, canonical program `A232665.P5891118158449811280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A232665 (n : ℕ) : ℤ :=
  A232665.P5891118158449811280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A232665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233279.P10877154597455539139

`A006068(A063946(n))`
-/

namespace A233279.P10877154597455539139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A063946 n).toNat

end

end A233279.P10877154597455539139

noncomputable section

/-- A233279: Permutation of nonnegative integers: a(n) = A054429(A006068(n)).

Offset 0, canonical program `A233279.P10877154597455539139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233279 (n : ℕ) : ℤ :=
  A233279.P10877154597455539139.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A233280.P14130287684218724208

`A063946(A003188(n))`
-/

namespace A233280.P14130287684218724208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A003188 n).toNat

end

end A233280.P14130287684218724208

noncomputable section

/-- A233280: Permutation of nonnegative integers: a(n) = A003188(A054429(n)).

Offset 0, canonical program `A233280.P14130287684218724208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233280 (n : ℕ) : ℤ :=
  A233280.P14130287684218724208.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A233734.P9443075271952331602

`A129506(n+1)*(n+1)!`
-/

namespace A233734.P9443075271952331602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129506 (n + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A233734.P9443075271952331602

noncomputable section

/-- A233734: Central terms of triangles A019538 and A090582.

Offset 1, canonical program `A233734.P9443075271952331602`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233734 (n : ℕ) : ℤ :=
  A233734.P9443075271952331602.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A233774.P13113059997126762199

`A006046(n)+A193494(n)+1`
-/

namespace A233774.P13113059997126762199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n + (A193494 n + 1)

end

end A233774.P13113059997126762199

noncomputable section

/-- A233774: Total number of vertices in the first n rows of Sierpinski gasket, with a(0) = 1.

Offset 0, canonical program `A233774.P13113059997126762199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233774 (n : ℕ) : ℤ :=
  A233774.P13113059997126762199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233932.P2836833035610206240

`Δ[A008619(A004202(a(n-1)))]` with `a(0)=1`
-/

namespace A233932.P2836833035610206240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A008619 (A004202 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233932.P2836833035610206240

noncomputable section

/-- A233932: Irregular table read by rows: T(n,k) is the binary representation of n shifted right k times and incremented if the last bit shifted away was set.

Offset 1, canonical program `A233932.P2836833035610206240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A233932 (n : ℕ) : ℤ :=
  A233932.P2836833035610206240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A233932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234638.P1618051015318160246

`lt[A007913(A000203(n+1)), 3]+1`
-/

namespace A234638.P1618051015318160246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A234638.P1618051015318160246

noncomputable section

/-- A234638: Numbers n for which sigma(sigma(n)) is odd.

Offset 1, canonical program `A234638.P1618051015318160246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A234638 (n : ℕ) : ℤ :=
  (A234638.P1618051015318160246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A234638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234716.P16236947480037307532

`floor(n/2)-A060715(A028310(n))`
-/

namespace A234716.P16236947480037307532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - A060715 (A028310 n).toNat

end

end A234716.P16236947480037307532

noncomputable section

/-- A234716: Number of odd composite integers k, such that n-1 < k < 2n-2.

Offset 1, canonical program `A234716.P16236947480037307532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234716 (n : ℕ) : ℤ :=
  A234716.P16236947480037307532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234740.P15300457128372509592

`∑[A079395(1+n)]`
-/

namespace A234740.P15300457128372509592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079395 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234740.P15300457128372509592

noncomputable section

/-- A234740: Sum of the eleventh powers of the first n primes.

Offset 1, canonical program `A234740.P15300457128372509592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234740 (n : ℕ) : ℤ :=
  A234740.P15300457128372509592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234850.P3773910976127958889

`p?[A014692(n+1)]`
-/

namespace A234850.P3773910976127958889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P3773910976127958889

noncomputable section

/-- A234850: Primes in A014692, i.e., of the form prime(k)-k+1, for some k.

Offset 1, canonical program `A234850.P3773910976127958889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A234850 (n : ℕ) : ℤ :=
  A234850.P3773910976127958889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A234850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234851.P8996763833196832844

`lt[(1-∑{e}[A014692(n+1), #])², 1]+1`
-/

namespace A234851.P8996763833196832844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A234851.P8996763833196832844

noncomputable section

/-- A234851: Indices of primes in A014692, i.e., numbers k such that prime(k)-k+1 is prime.

Offset 1, canonical program `A234851.P8996763833196832844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A234851 (n : ℕ) : ℤ :=
  (A234851.P8996763833196832844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A234851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235265.P1717586972171710680

`p?[A004793(A000040(n+1))]`
-/

namespace A235265.P1717586972171710680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235265.P1717586972171710680

noncomputable section

/-- A235265: Primes whose base-3 representation also is the base-2 representation of a prime.

Offset 1, canonical program `A235265.P1717586972171710680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A235265 (n : ℕ) : ℤ :=
  A235265.P1717586972171710680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A235265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235398.P13717221228828732430

`∑{digits}[A030078(n+1), #]`
-/

namespace A235398.P13717221228828732430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A235398.P13717221228828732430

noncomputable section

/-- A235398: Sum of digits of the cubes of prime numbers.

Offset 1, canonical program `A235398.P13717221228828732430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235398 (n : ℕ) : ℤ :=
  (A235398.P13717221228828732430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235621.P10422737223195381463

`p?[A037475(A000040(n+1))]`
-/

namespace A235621.P10422737223195381463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235621.P10422737223195381463

noncomputable section

/-- A235621: Primes whose base-9 representation also is the base-7 representation of a prime.

Offset 1, canonical program `A235621.P10422737223195381463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A235621 (n : ℕ) : ℤ :=
  A235621.P10422737223195381463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A235621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235743.P3971823922931559072

`A000040(eq[A031131(n+1)+4, A031131(n+2)]+1)`
-/

namespace A235743.P3971823922931559072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A235743.P3971823922931559072

noncomputable section

/-- A235743: Primes p(k) such that p(k) + p(k+3) = p(k+1) + p(k+2) + 4.

Offset 1, canonical program `A235743.P3971823922931559072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A235743 (n : ℕ) : ℤ :=
  A235743.P3971823922931559072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A235743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235870.P554458521654699800

`∑{#}[n, A028887(#)*A028887(n-#)]`
-/

namespace A235870.P554458521654699800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028887 k * A028887 (n - k)

end

end A235870.P554458521654699800

noncomputable section

/-- A235870: Expansion of ( f(-q)^12 + 22 * q * f(-q)^6 * f(-q^5)^6 + 125 * q^2 * f(-q^5)^12 ) / (f(-q) * f(-q^5))^2 in powers of q where f() is a Ramanujan theta function.

Offset 0, canonical program `A235870.P554458521654699800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A235870 (n : ℕ) : ℤ :=
  A235870.P554458521654699800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A235870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235872.P7071108027476958609

`gcd(n+1, A358821(n+2))`
-/

namespace A235872.P7071108027476958609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A358821 (n + 2))

end

end A235872.P7071108027476958609

noncomputable section

/-- A235872: Number of solutions to the equation x^2=0 in the ring of Gaussian integers modulo n.

Offset 1, canonical program `A235872.P7071108027476958609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235872 (n : ℕ) : ℤ :=
  (A235872.P7071108027476958609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236182.P8812619462684082735

`∑[A030516(n+1)]`
-/

namespace A236182.P8812619462684082735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P8812619462684082735

noncomputable section

/-- A236182: Sum of the sixth powers of the first n primes.

Offset 1, canonical program `A236182.P8812619462684082735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236182 (n : ℕ) : ℤ :=
  A236182.P8812619462684082735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236209.P7119639684458657341

`∑[A092759(1+n)]`
-/

namespace A236209.P7119639684458657341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P7119639684458657341

noncomputable section

/-- A236209: Sum of the seventh powers of the first n primes.

Offset 1, canonical program `A236209.P7119639684458657341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236209 (n : ℕ) : ℤ :=
  A236209.P7119639684458657341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236214.P10912221979790008616

`∑[A179645(n+1)]`
-/

namespace A236214.P10912221979790008616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P10912221979790008616

noncomputable section

/-- A236214: Sum of the eighth powers of the first n primes.

Offset 1, canonical program `A236214.P10912221979790008616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236214 (n : ℕ) : ℤ :=
  A236214.P10912221979790008616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236215.P8665745897530177500

`∑[A179665(n+1)]`
-/

namespace A236215.P8665745897530177500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P8665745897530177500

noncomputable section

/-- A236215: Sum of the ninth powers of the first n primes.

Offset 1, canonical program `A236215.P8665745897530177500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236215 (n : ℕ) : ℤ :=
  A236215.P8665745897530177500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236216.P1602915673718246240

`∑[A030629(1+n)]`
-/

namespace A236216.P1602915673718246240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030629 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P1602915673718246240

noncomputable section

/-- A236216: Sum of the tenth powers of the first n primes.

Offset 1, canonical program `A236216.P1602915673718246240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236216 (n : ℕ) : ℤ :=
  A236216.P1602915673718246240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236218.P7494143856053409080

`∑[A030631(n+1)]`
-/

namespace A236218.P7494143856053409080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P7494143856053409080

noncomputable section

/-- A236218: Sum of the twelfth powers of the first n primes.

Offset 1, canonical program `A236218.P7494143856053409080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236218 (n : ℕ) : ℤ :=
  A236218.P7494143856053409080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236221.P10884310046436513075

`∑[A138031(n+1)]`
-/

namespace A236221.P10884310046436513075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236221.P10884310046436513075

noncomputable section

/-- A236221: Sum of the thirteenth powers of the first n primes.

Offset 1, canonical program `A236221.P10884310046436513075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236221 (n : ℕ) : ℤ :=
  A236221.P10884310046436513075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236222.P5013014953412716250

`∑[A092759(n+1)²]`
-/

namespace A236222.P5013014953412716250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236222.P5013014953412716250

noncomputable section

/-- A236222: Sum of the fourteenth powers of the first n primes.

Offset 1, canonical program `A236222.P5013014953412716250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236222 (n : ℕ) : ℤ :=
  A236222.P5013014953412716250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236223.P9577004228190771243

`∑[A050997(n+1)^3]`
-/

namespace A236223.P9577004228190771243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236223.P9577004228190771243

noncomputable section

/-- A236223: Sum of the fifteenth powers of the first n primes.

Offset 1, canonical program `A236223.P9577004228190771243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236223 (n : ℕ) : ℤ :=
  A236223.P9577004228190771243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236693.P4114692838688995240

`eq[A057427(n), A073816(n+1)]+1`
-/

namespace A236693.P4114692838688995240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A236693.P4114692838688995240

noncomputable section

/-- A236693: Numbers k such that 2^sigma(k) == 1 (mod k).

Offset 1, canonical program `A236693.P4114692838688995240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A236693 (n : ℕ) : ℤ :=
  (A236693.P4114692838688995240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A236693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236758.P18436612115019287046

`∑[A230980(n)+A082460(n+1)]`
-/

namespace A236758.P18436612115019287046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + A082460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236758.P18436612115019287046

noncomputable section

/-- A236758: Number of partitions of 3*n into 3 parts with smallest part prime.

Offset 1, canonical program `A236758.P18436612115019287046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236758 (n : ℕ) : ℤ :=
  A236758.P18436612115019287046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236917.P18043759810654327920

`eq[0, A236747(n+1)]+1`
-/

namespace A236917.P18043759810654327920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236917.P18043759810654327920

noncomputable section

/-- A236917: Numbers n for which there is no k such that n - k and n + k are both prime, with 0 <= k <= sqrt(n).

Offset 1, canonical program `A236917.P18043759810654327920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1194 terms. -/
def A236917 (n : ℕ) : ℤ :=
  (A236917.P18043759810654327920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1194 terms. -/
def A236917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237046.P16405713100893644750

`lt[1, A033879(n+1)]+1`
-/

namespace A237046.P16405713100893644750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A237046.P16405713100893644750

noncomputable section

/-- A237046: Numbers k such that sigma(k) < 2*k-1.

Offset 1, canonical program `A237046.P16405713100893644750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237046 (n : ℕ) : ℤ :=
  (A237046.P16405713100893644750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237353.P6068301606430795874

`A164560(n+1)%A287841(n+1)`
-/

namespace A237353.P6068301606430795874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164560 (n + 1)) (A287841 (n + 1))

end

end A237353.P6068301606430795874

noncomputable section

/-- A237353: For n=g+h, a(n) is the minimum value of omega(g)+omega(h).

Offset 2, canonical program `A237353.P6068301606430795874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A237353 (n : ℕ) : ℤ :=
  A237353.P6068301606430795874.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A237353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237448.P13955953425339463645

`A131818(n+1)-A080343(n)`
-/

namespace A237448.P13955953425339463645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - A080343 n

end

end A237448.P13955953425339463645

noncomputable section

/-- A237448: Square array T(row >= 1, col >= 1): The first row, row=1, T(1,col) = col = A000027. When row > col, T(row,col) = row, otherwise (when 1 < row <= col), T(row,col) = row-1.

Offset 1, canonical program `A237448.P13955953425339463645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237448 (n : ℕ) : ℤ :=
  A237448.P13955953425339463645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237622.P7177384520578188316

`n*A276666(n)+1`
-/

namespace A237622.P7177384520578188316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276666 n + 1

end

end A237622.P7177384520578188316

noncomputable section

/-- A237622: Interpolation polynomial through n points (0,1), (1,1), ..., (n-2,1) and (n-1,n) evaluated at 2n, a(0)=1.

Offset 0, canonical program `A237622.P7177384520578188316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A237622 (n : ℕ) : ℤ :=
  A237622.P7177384520578188316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A237622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237649.P15310033212845427612

`A163659((n+1)^3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A237649.P15310033212845427612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163659 ((n + 1) ^ 3)

end

end A237649.P15310033212845427612

noncomputable section

/-- A237649: a(n) = A163659(n^3), where A163659 is the logarithmic derivative of Stern's diatomic series (A002487).

Offset 1, canonical program `A237649.P15310033212845427612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237649 (n : ℕ) : ℤ :=
  A237649.P15310033212845427612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238204.P8101858339685720932

`2*eq[2, A175078(2*n+1)]`
-/

namespace A238204.P8101858339685720932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A238204.P8101858339685720932

noncomputable section

/-- A238204: Even numbers n such that the difference with the preceding prime is prime.

Offset 1, canonical program `A238204.P8101858339685720932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A238204 (n : ℕ) : ℤ :=
  (A238204.P8101858339685720932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A238204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238248.P15611988526877702072

`1+A043689(n+1)`
-/

namespace A238248.P15611988526877702072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A043689 (n + 1)

end

end A238248.P15611988526877702072

noncomputable section

/-- A238248: Numbers m such that A072219(m) = 7.

Offset 1, canonical program `A238248.P15611988526877702072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238248 (n : ℕ) : ℤ :=
  A238248.P15611988526877702072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238339.P679773765752699266

`2*A055129(A122797(n+1))-1`
-/

namespace A238339.P679773765752699266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055129 (A122797 (n + 1)).toNat - 1

end

end A238339.P679773765752699266

noncomputable section

/-- A238339: Square number array read by ascending antidiagonals: T(1,k) = 2*k + 1, and T(n,k) = (2*n^(k+1)-n-1)/(n-1) otherwise.

Offset 0, canonical program `A238339.P679773765752699266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4822 terms. -/
def A238339 (n : ℕ) : ℤ :=
  A238339.P679773765752699266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4822 terms. -/
def A238339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238362.P12922951587572492693

`p?[A000120(A000120(n)+1)*(8*n+3)]`
-/

namespace A238362.P12922951587572492693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n + 1).toNat * (8 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238362.P12922951587572492693

noncomputable section

/-- A238362: Primes p such that A000120(p - 1) = A000120(p + 1) = 2^k for some k.

Offset 1, canonical program `A238362.P12922951587572492693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A238362 (n : ℕ) : ℤ :=
  A238362.P12922951587572492693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A238362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238455.P12384802579070016511

`(A201125(n+1)-A084188(n))/2`
-/

namespace A238455.P12384802579070016511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201125 (n + 1) - A084188 n : ℚ) / 2

end

end A238455.P12384802579070016511

noncomputable section

/-- A238455: Difference between 4^n and the nearest triangular number.

Offset 0, canonical program `A238455.P12384802579070016511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A238455 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A238455.P12384802579070016511.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A238455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238737.P4243855582569951164

`A175851(2*(n+1))-1`
-/

namespace A238737.P4243855582569951164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * (n + 1)) - 1

end

end A238737.P4243855582569951164

noncomputable section

/-- A238737: a(n) = 2*n+2 - A224911(n).

Offset 0, canonical program `A238737.P4243855582569951164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238737 (n : ℕ) : ℤ :=
  A238737.P4243855582569951164.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239287.P8882484153100334312

`val(A115216(n), 4)`
-/

namespace A239287.P8882484153100334312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A115216 n).toNat 4

end

end A239287.P8882484153100334312

noncomputable section

/-- A239287: Triangle T(n,k), 0 <= k <= n, read by rows: T(n,k) = floor(n/2) - min(k,n-k).

Offset 0, canonical program `A239287.P8882484153100334312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A239287 (n : ℕ) : ℤ :=
  (A239287.P8882484153100334312.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A239287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239324.P18438988059213314958

`A090431(n)+a(n-1)` with `a(0)=0`
-/

namespace A239324.P18438988059213314958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A090431 n + a (n - 1)

end

end A239324.P18438988059213314958

noncomputable section

/-- A239324: Partial sums of A090431.

Offset 0, canonical program `A239324.P18438988059213314958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239324 (n : ℕ) : ℤ :=
  A239324.P18438988059213314958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239453.P10419208607055236630

`Δ[A057977(n+1)]+A077957(n)²`
-/

namespace A239453.P10419208607055236630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A077957 n ^ 2

end

end A239453.P10419208607055236630

noncomputable section

/-- A239453: Convolution of the generalized Catalan numbers A057977 with themselves.

Offset 0, canonical program `A239453.P10419208607055236630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A239453 (n : ℕ) : ℤ :=
  A239453.P10419208607055236630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A239453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239876.P15558078439029679300

`∑[A229110(1+n)]`
-/

namespace A239876.P15558078439029679300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239876.P15558078439029679300

noncomputable section

/-- A239876: Partial sums of A229110, where A229110(n) = antisigma(n) mod n = A024816(n) mod n.

Offset 1, canonical program `A239876.P15558078439029679300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239876 (n : ℕ) : ℤ :=
  A239876.P15558078439029679300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240231.P14758268946136650672

`A028310(∑{e}[n+1, A053735(#)])`
-/

namespace A240231.P14758268946136650672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ p ∈ Nat.primeFactors (f1 n), A053735 (Nat.factorization (f1 n) p)).toNat

end

end A240231.P14758268946136650672

noncomputable section

/-- A240231: Number of factors needed in the unique factorization of positive integers into terms of A186285 where any term is used at most twice.

Offset 1, canonical program `A240231.P14758268946136650672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240231 (n : ℕ) : ℤ :=
  A240231.P14758268946136650672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240569.P17904370683734456303

`p?[A018252(n+1)+A018252(n+3)]`
-/

namespace A240569.P17904370683734456303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + A018252 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240569.P17904370683734456303

noncomputable section

/-- A240569: Primes of the form k(m) + k(m+2) where k(m) = A018252(m) (nonprimes), m >= 1.

Offset 1, canonical program `A240569.P17904370683734456303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A240569 (n : ℕ) : ℤ :=
  A240569.P17904370683734456303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A240569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240571.P12608565179818551599

`xor(A185013(n), A235496(n))`
-/

namespace A240571.P12608565179818551599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185013 n) (A235496 n)

end

end A240571.P12608565179818551599

noncomputable section

/-- A240571: a(n) = round(n^n/n!) where round(1/2)=0.

Offset 0, canonical program `A240571.P12608565179818551599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A240571 (n : ℕ) : ℤ :=
  A240571.P12608565179818551599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A240571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240609.P9554572774244923858

`A342912(n+1)+A005043(n)-A082397(n+1)`
-/

namespace A240609.P9554572774244923858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342912 (n + 1) + (A005043 n - A082397 (n + 1))

end

end A240609.P9554572774244923858

noncomputable section

/-- A240609: Number of n-length words w over a 3-ary alphabet such that w is empty or a prefix z concatenated with letter a_i and i=1 or 0 < #(z,a_{i-1}) >= #(z,a_i), where #(z,a_i) counts the occurrences of the i-th letter in z.

Offset 0, canonical program `A240609.P9554572774244923858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A240609 (n : ℕ) : ℤ :=
  A240609.P9554572774244923858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A240609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240769.P16242250980846924409

`A080079(A051162(n)+1)`
-/

namespace A240769.P16242250980846924409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A051162 n + 1).toNat

end

end A240769.P16242250980846924409

noncomputable section

/-- A240769: Triangle read by rows: T(1,1) = 1; T(n+1,k) = T(n,k+1), 1 <= k < n; T(n+1,n) = 2*T(n,1); T(n+1,n+1) = 2*T(n,1) - 1.

Offset 1, canonical program `A240769.P16242250980846924409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A240769 (n : ℕ) : ℤ :=
  A240769.P16242250980846924409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A240769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240860.P9927518057295808665

`∑[A001248(n+1)*(-1)^n]`
-/

namespace A240860.P9927518057295808665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240860.P9927518057295808665

noncomputable section

/-- A240860: a(n) = Sum_{i=1..n} (-1)^{i+1} prime(i)^2, where prime(k) denotes the k-th prime: alternating sum of the squares of the first n primes.

Offset 1, canonical program `A240860.P9927518057295808665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240860 (n : ℕ) : ℤ :=
  A240860.P9927518057295808665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240879.P14005581407535111882

`A114121(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A240879.P14005581407535111882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114121 n + 4 * a (n - 1)

end

end A240879.P14005581407535111882

noncomputable section

/-- A240879: Self-convolution of Sum(binomial(2*n, i), i=0..n).

Offset 0, canonical program `A240879.P14005581407535111882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A240879 (n : ℕ) : ℤ :=
  A240879.P14005581407535111882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A240879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240923.P7245222179821891144

`A017665(n+1)-A000203(A017666(n+1))`
-/

namespace A240923.P7245222179821891144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - A000203 (A017666 (n + 1)).toNat

end

end A240923.P7245222179821891144

noncomputable section

/-- A240923: a(n) = numerator(sigma(n)/n) - sigma(denominator(sigma(n)/n)).

Offset 1, canonical program `A240923.P7245222179821891144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240923 (n : ℕ) : ℤ :=
  A240923.P7245222179821891144.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240939.P940604586909977599

`A068869(n+1)-A185012(n)`
-/

namespace A240939.P940604586909977599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068869 (n + 1) - A185012 n

end

end A240939.P940604586909977599

noncomputable section

/-- A240939: Least number k >= 0 such that n! + k is a perfect power.

Offset 1, canonical program `A240939.P940604586909977599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A240939 (n : ℕ) : ℤ :=
  A240939.P940604586909977599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A240939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241266.P8342663187428289721

`eq[0, A108151(2*n+1)]+1`
-/

namespace A241266.P8342663187428289721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241266.P8342663187428289721

noncomputable section

/-- A241266: Numbers n such that 4*n^2+2*n-1 is not prime.

Offset 1, canonical program `A241266.P8342663187428289721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3891 terms. -/
def A241266 (n : ℕ) : ℤ :=
  (A241266.P8342663187428289721.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3891 terms. -/
def A241266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241524.P1056954697449867720

`A002697(n)+A002457(n)`
-/

namespace A241524.P1056954697449867720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + A002457 n

end

end A241524.P1056954697449867720

noncomputable section

/-- A241524: a(n) = 4^n*(n/4 + binomial(n+1/2, 1/2)).

Offset 0, canonical program `A241524.P1056954697449867720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A241524 (n : ℕ) : ℤ :=
  A241524.P1056954697449867720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A241524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241566.P8126277569896418132

`∑[A307912(n+1)]`
-/

namespace A241566.P8126277569896418132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241566.P8126277569896418132

noncomputable section

/-- A241566: Number of 2-element subsets of {1,...,n} whose sum has more than 2 divisors.

Offset 1, canonical program `A241566.P8126277569896418132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241566 (n : ℕ) : ℤ :=
  A241566.P8126277569896418132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241575.P5643789270522155057

`A214848(n)-1`
-/

namespace A241575.P5643789270522155057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n - 1

end

end A241575.P5643789270522155057

noncomputable section

/-- A241575: Sturmian expansion of 1/2 in base sqrt(2)-1.

Offset 0, canonical program `A241575.P5643789270522155057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A241575 (n : ℕ) : ℤ :=
  A241575.P5643789270522155057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A241575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241587.P18432490739127419303

`Δ[A168597(n)/2]-A168597(n)`
-/

namespace A241587.P18432490739127419303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168597 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A168597 n : ℚ)

end

end A241587.P18432490739127419303

noncomputable section

/-- A241587: Coefficients in an expansion of the trace of the log of the adjacency operator on the infinite grid Z x Z.

Offset 1, canonical program `A241587.P18432490739127419303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A241587 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A241587.P18432490739127419303.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A241587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241816.P2851650172626581552

`A214546(and(n, n+1))-1+n`
-/

namespace A241816.P2851650172626581552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (Nat.land n (n + 1)) - 1 + (n : ℤ)

end

end A241816.P2851650172626581552

noncomputable section

/-- A241816: a(n) is the largest number smaller than n that can be obtained by swapping two adjacent bits in n, or n if no such number exists.

Offset 0, canonical program `A241816.P2851650172626581552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241816 (n : ℕ) : ℤ :=
  A241816.P2851650172626581552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241937.P14061841482093411935

`A108674(n+1)+A051877(n)`
-/

namespace A241937.P14061841482093411935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108674 (n + 1) + A051877 n

end

end A241937.P14061841482093411935

noncomputable section

/-- A241937: Number of length 1+4 0..n arrays with no consecutive five elements summing to more than 2*n.

Offset 1, canonical program `A241937.P14061841482093411935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241937 (n : ℕ) : ℤ :=
  A241937.P14061841482093411935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242136.P1263783666612363736

`2*A000260(n+1)-A197271(n+1)`
-/

namespace A242136.P1263783666612363736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000260 (n + 1) - A197271 (n + 1)

end

end A242136.P1263783666612363736

noncomputable section

/-- A242136: Number of strong triangulations of a fixed square with n interior vertices.

Offset 0, canonical program `A242136.P1263783666612363736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A242136 (n : ℕ) : ℤ :=
  A242136.P1263783666612363736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A242136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242137.P8379527440574402766

`lt[A076816(n), A054071(n+1)]`
-/

namespace A242137.P8379527440574402766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242137.P8379527440574402766

noncomputable section

/-- A242137: Numbers n such that there are no triangular numbers strictly between n^2 and n^2 + n.

Offset 1, canonical program `A242137.P8379527440574402766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2937 terms. -/
def A242137 (n : ℕ) : ℤ :=
  (A242137.P8379527440574402766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2937 terms. -/
def A242137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242256.P8815613757924160173

`p?[A175078(2*n+1)+A163985(n)]`
-/

namespace A242256.P8815613757924160173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (2 * n + 1) + A163985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242256.P8815613757924160173

noncomputable section

/-- A242256: Primes that are not primes-greedy summable, as defined at A242252.

Offset 1, canonical program `A242256.P8815613757924160173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242256 (n : ℕ) : ℤ :=
  A242256.P8815613757924160173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242287.P10008669521803803031

`A000217(A242286(1+n))`
-/

namespace A242287.P10008669521803803031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A242286 (1 + n)).toNat

end

end A242287.P10008669521803803031

noncomputable section

/-- A242287: Greedy-summable triangular numbers.

Offset 1, canonical program `A242287.P10008669521803803031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242287 (n : ℕ) : ℤ :=
  A242287.P10008669521803803031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242312.P5495476097644624386

`A010888(A096145(n))`
-/

namespace A242312.P5495476097644624386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A096145 n).toNat

end

end A242312.P5495476097644624386

noncomputable section

/-- A242312: Digital roots in Pascal's triangle, triangle read by rows, 0 <= k <= n.

Offset 0, canonical program `A242312.P5495476097644624386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242312 (n : ℕ) : ℤ :=
  A242312.P5495476097644624386.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242401.P14578160612207848124

`eq[A056926(n), A123110(n)]`
-/

namespace A242401.P14578160612207848124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242401.P14578160612207848124

noncomputable section

/-- A242401: Numbers that are neither triangular nor square.

Offset 1, canonical program `A242401.P14578160612207848124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242401 (n : ℕ) : ℤ :=
  (A242401.P14578160612207848124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242407.P18030510277826149703

`eq[A053735(n), A089643(2*n)]`
-/

namespace A242407.P18030510277826149703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242407.P18030510277826149703

noncomputable section

/-- A242407: Numbers such that in ternary representation all pairs of adjacent digits have sums not greater than 2.

Offset 1, canonical program `A242407.P18030510277826149703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A242407 (n : ℕ) : ℤ :=
  (A242407.P18030510277826149703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A242407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242483.P4194193378462052771

`2*lt[n, A054024(A004277(n))]`
-/

namespace A242483.P4194193378462052771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242483.P4194193378462052771

noncomputable section

/-- A242483: Numbers n such that A242481(n) = ((n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n) / n = 2.

Offset 1, canonical program `A242483.P4194193378462052771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6516 terms. -/
def A242483 (n : ℕ) : ℤ :=
  (A242483.P4194193378462052771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6516 terms. -/
def A242483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242515.P17523326989586538796

`lt[12, A175851(12*(n+1))]`
-/

namespace A242515.P17523326989586538796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (12 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242515.P17523326989586538796

noncomputable section

/-- A242515: Numbers n such that 12n+1, 12n+5, 12n+7, 12n+11 are all composite numbers.

Offset 1, canonical program `A242515.P17523326989586538796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1204 terms. -/
def A242515 (n : ℕ) : ℤ :=
  (A242515.P17523326989586538796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1204 terms. -/
def A242515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242594.P11226976374991562602

`eq[4, A008952(2*n)]`
-/

namespace A242594.P11226976374991562602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242594.P11226976374991562602

noncomputable section

/-- A242594: Numbers k such that 4^k has initial digit 4.

Offset 1, canonical program `A242594.P11226976374991562602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. -/
def A242594 (n : ℕ) : ℤ :=
  (A242594.P11226976374991562602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. -/
def A242594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242962.P14535489765730197107

`∑{d}[n+1, #]%(A080572(n)+1)`
-/

namespace A242962.P14535489765730197107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A080572 n + 1)

end

end A242962.P14535489765730197107

noncomputable section

/-- A242962: a(1) = a(2) = 0; for n >= 3: a(n) = (n*(n+1)/2) mod antisigma(n) = A000217(n) mod A024816(n).

Offset 1, canonical program `A242962.P14535489765730197107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242962 (n : ℕ) : ℤ :=
  A242962.P14535489765730197107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243111.P6016306481035327470

`A000217(A057062(n+1))-A000040(n+1)`
-/

namespace A243111.P6016306481035327470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A057062 (n + 1)).toNat - A000040 (n + 1)

end

end A243111.P6016306481035327470

noncomputable section

/-- A243111: Difference between the smallest triangular number >= n-th prime and the n-th prime.

Offset 1, canonical program `A243111.P6016306481035327470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243111 (n : ℕ) : ℤ :=
  A243111.P6016306481035327470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243203.P5495607087422076175

`A097805(n)*A350149(n)`
-/

namespace A243203.P5495607087422076175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A350149 n

end

end A243203.P5495607087422076175

noncomputable section

/-- A243203: Triangle read by rows: T(n, k) = k * n^(n - k - 1) * n! / (n - k)! for n >= 1, T(0, 0) = 1.

Offset 0, canonical program `A243203.P5495607087422076175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A243203 (n : ℕ) : ℤ :=
  A243203.P5495607087422076175.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A243203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243473.P145029483165858518

`A017665(n+1)-A017666(n+1)`
-/

namespace A243473.P145029483165858518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - A017666 (n + 1)

end

end A243473.P145029483165858518

noncomputable section

/-- A243473: a(n) = numerator(sigma(n)/n) - denominator(sigma(n)/n) where sigma(n) = sum of divisors of n.

Offset 1, canonical program `A243473.P145029483165858518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243473 (n : ℕ) : ℤ :=
  A243473.P145029483165858518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243515.P1271760465107560758

`A099265(n+1)+2`
-/

namespace A243515.P1271760465107560758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099265 (n + 1) + 2

end

end A243515.P1271760465107560758

noncomputable section

/-- A243515: Number of length n+2 0..6 arrays with no three elements in a row with pattern aba or abb (with a!=b) and new values 0..6 introduced in 0..6 order.

Offset 1, canonical program `A243515.P1271760465107560758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A243515 (n : ℕ) : ℤ :=
  A243515.P1271760465107560758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A243515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243589.P10297874337052836463

`xor(A006257(n+1), A038572(n+1))`
-/

namespace A243589.P10297874337052836463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006257 (n + 1)) (A038572 (n + 1))

end

end A243589.P10297874337052836463

noncomputable section

/-- A243589: Numbers returned when each binary digit of n is replaced by the sum modulo 2 of the digits to its (wrapped) left and (wrapped) right.

Offset 1, canonical program `A243589.P10297874337052836463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243589 (n : ℕ) : ℤ :=
  A243589.P10297874337052836463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243624.P9471385853595401028

`comp[∑[A117929(n+1)]+n]-n+1`
-/

namespace A243624.P9471385853595401028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A243624.P9471385853595401028

noncomputable section

/-- A243624: Numbers that are the sum of 2 different primes, with repetitions.

Offset 1, canonical program `A243624.P9471385853595401028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243624 (n : ℕ) : ℤ :=
  A243624.P9471385853595401028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243634.P1540940681044576467

`A247100(n+2)`
-/

namespace A243634.P1540940681044576467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247100 (n + 2)

end

end A243634.P1540940681044576467

noncomputable section

/-- A243634: Number of length n+2 0..n arrays with no three unequal elements in a row and new values 0..n introduced in 0..n order.

Offset 1, canonical program `A243634.P1540940681044576467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A243634 (n : ℕ) : ℤ :=
  A243634.P1540940681044576467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A243634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243987.P14044502209302201752

`A051731(n+1)+a(n-1)%A002260(n+1)` with `a(0)=1`
-/

namespace A243987.P14044502209302201752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051731 (n + 1) + Int.tmod (a (n - 1)) (A002260 (n + 1))

end

end A243987.P14044502209302201752

noncomputable section

/-- A243987: Triangle read by rows: T(n, k) is the number of divisors of n that are less than or equal to k for 1 <= k <= n.

Offset 1, canonical program `A243987.P14044502209302201752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243987 (n : ℕ) : ℤ :=
  A243987.P14044502209302201752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244041.P9196953694922478811

`∑{digits}[A024631(n), #]`
-/

namespace A244041.P9196953694922478811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A244041.P9196953694922478811

noncomputable section

/-- A244041: Sum of digits of n written in fractional base 4/3.

Offset 0, canonical program `A244041.P9196953694922478811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244041 (n : ℕ) : ℤ :=
  (A244041.P9196953694922478811.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244050.P4388915496307742353

`4*A175254(n+1)`
-/

namespace A244050.P4388915496307742353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A175254 (n + 1)

end

end A244050.P4388915496307742353

noncomputable section

/-- A244050: Partial sums of A243980.

Offset 1, canonical program `A244050.P4388915496307742353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244050 (n : ℕ) : ℤ :=
  A244050.P4388915496307742353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244092.P5012121100547918818

`p?[A002144(n+1)+2*A082074(n+1)]`
-/

namespace A244092.P5012121100547918818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) + 2 * A082074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244092.P5012121100547918818

noncomputable section

/-- A244092: Primes which are the arithmetic mean of two consecutive primes of the form 4n + 1.

Offset 1, canonical program `A244092.P5012121100547918818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A244092 (n : ℕ) : ℤ :=
  A244092.P5012121100547918818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A244092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244158.P16181830196420561079

`A028897(n)+A027870(A000196(n))`
-/

namespace A244158.P16181830196420561079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 n + A027870 (A000196 n).toNat

end

end A244158.P16181830196420561079

noncomputable section

/-- A244158: If n = Sum c_i * 10^i then a(n) = Sum c_i * Cat(i+1), where Cat(k) = A000108(k).

Offset 0, canonical program `A244158.P16181830196420561079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A244158 (n : ℕ) : ℤ :=
  A244158.P16181830196420561079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A244158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244160.P12813125502844365443

`∑[A010058(n)]`
-/

namespace A244160.P12813125502844365443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244160.P12813125502844365443

noncomputable section

/-- A244160: a(0)=0, and for n >= 1, a(n) = the largest k such that k-th Catalan number <= n.

Offset 0, canonical program `A244160.P12813125502844365443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244160 (n : ℕ) : ℤ :=
  A244160.P12813125502844365443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244221.P4166625272978156220

`a(n-A081290(n))` with `a(0)=0, a(1)=1`
-/

namespace A244221.P4166625272978156220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - A081290 n).toNat

end

end A244221.P4166625272978156220

noncomputable section

/-- A244221: Parity of Greedy Catalan Base representation for n: a(n) = A014418(n) reduced modulo 2.

Offset 0, canonical program `A244221.P4166625272978156220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244221 (n : ℕ) : ℤ :=
  (A244221.P4166625272978156220.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244325.P7029042646841468854

`floor((∑[n]-A001065(n+1))/(n+1))`
-/

namespace A244325.P7029042646841468854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001065 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A244325.P7029042646841468854

noncomputable section

/-- A244325: a(n) = floor(antisigma(n) / n), where antisigma(n) = A024816(n) = the sum of the non-divisors of n that are between 1 and n.

Offset 1, canonical program `A244325.P7029042646841468854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244325 (n : ℕ) : ℤ :=
  A244325.P7029042646841468854.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244374.P963690707800537045

`p?[A104635(n+2)+A104635(n+1)+1]`
-/

namespace A244374.P963690707800537045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 2) + (A104635 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244374.P963690707800537045

noncomputable section

/-- A244374: Primes which are the arithmetic mean of two consecutive primes of the form 4n+3.

Offset 1, canonical program `A244374.P963690707800537045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 619 terms. -/
def A244374 (n : ℕ) : ℤ :=
  A244374.P963690707800537045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 619 terms. -/
def A244374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244734.P1874380478709244094

`(n+1)/gcd(n+1, A057944(n))`
-/

namespace A244734.P1874380478709244094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A057944 n) : ℚ)

end

end A244734.P1874380478709244094

noncomputable section

/-- A244734: Numerators of the triangle T(n,k) = (n*(n+1)/2 + k + 1)/(k+1) for n >= k >= 0.

Offset 0, canonical program `A244734.P1874380478709244094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244734.P1874380478709244094.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244736.P9268599895378486618

`eq[2, gcd(2, A039703(n+1))]+1`
-/

namespace A244736.P9268599895378486618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A039703 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A244736.P9268599895378486618

noncomputable section

/-- A244736: Numbers k such that (prime(k) mod 5) is even.

Offset 1, canonical program `A244736.P9268599895378486618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A244736 (n : ℕ) : ℤ :=
  (A244736.P9268599895378486618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A244736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244887.P18085806586146032579

`A234950(C(n+3, 2)+2)`
-/

namespace A244887.P18085806586146032579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234950 (Nat.choose (n + 3) 2 + 2)

end

end A244887.P18085806586146032579

noncomputable section

/-- A244887: Third column of triangle in A234950.

Offset 2, canonical program `A244887.P18085806586146032579`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244887 (n : ℕ) : ℤ :=
  A244887.P18085806586146032579.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244911.P2421789843677533910

`A057145(n+2)-A002262(n)`
-/

namespace A244911.P2421789843677533910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - A002262 n

end

end A244911.P2421789843677533910

noncomputable section

/-- A244911: Table read by antidiagonals: T(n,k) = n*k + T(n-1,k) for n >=1, T(0,k) = 1.

Offset 0, canonical program `A244911.P2421789843677533910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244911 (n : ℕ) : ℤ :=
  A244911.P2421789843677533910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245111.P13739336468849869505

`A048993(n)*A097805(A245300(n))`
-/

namespace A245111.P13739336468849869505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A097805 (A245300 n).toNat

end

end A245111.P13739336468849869505

noncomputable section

/-- A245111: G.f.: A(x,y) = Sum_{n>=0} exp(-y/(1-n*x)) * y^n/(1-n*x)^n / n!.

Offset 0, canonical program `A245111.P13739336468849869505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A245111 (n : ℕ) : ℤ :=
  A245111.P13739336468849869505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A245111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245174.P12482961414910472085

`Δ[Δ[A006450(n+1)]]`
-/

namespace A245174.P12482961414910472085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P12482961414910472085

noncomputable section

/-- A245174: Second differences of A006450.

Offset 1, canonical program `A245174.P12482961414910472085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245174 (n : ℕ) : ℤ :=
  A245174.P12482961414910472085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245175.P15986975037316514887

`Δ[Δ[A038580(n+1)]]`
-/

namespace A245175.P15986975037316514887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245175.P15986975037316514887

noncomputable section

/-- A245175: Second differences of A038580.

Offset 1, canonical program `A245175.P15986975037316514887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A245175 (n : ℕ) : ℤ :=
  A245175.P15986975037316514887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A245175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245200.P9972553082105733129

`3*A286679(n+3)%A004139(n+1)`
-/

namespace A245200.P9972553082105733129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod (A286679 (n + 3)) (A004139 (n + 1))

end

end A245200.P9972553082105733129

noncomputable section

/-- A245200: Smallest positive solution to k == 0 mod 3 and k == 1 mod prime(n).

Offset 3, canonical program `A245200.P9972553082105733129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245200 (n : ℕ) : ℤ :=
  A245200.P9972553082105733129.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245219.P3406685564556385574

`xor(3, A144611(n))`
-/

namespace A245219.P3406685564556385574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A144611 n)

end

end A245219.P3406685564556385574

noncomputable section

/-- A245219: Continued fraction expansion of the constant c in A245218; c = sup{f(n,1)}, where f(1,x) = x + 1 and thereafter f(n,x) = x + 1 if n is in A001951, else f(n,x) = 1/x.

Offset 0, canonical program `A245219.P3406685564556385574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245219 (n : ℕ) : ℤ :=
  A245219.P3406685564556385574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245232.P15192089048372292749

`A005900(A103982(n+1))`
-/

namespace A245232.P15192089048372292749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (A103982 (n + 1)).toNat

end

end A245232.P15192089048372292749

noncomputable section

/-- A245232: Semiprimes of the form (2*n^3+n)/3.

Offset 1, canonical program `A245232.P15192089048372292749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A245232 (n : ℕ) : ℤ :=
  A245232.P15192089048372292749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A245232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245508.P16525106307191820182

`2*ceil(sqrt(A111333(n+1)))²`
-/

namespace A245508.P16525106307191820182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt (A111333 (n + 1) : ℝ)⌉ ^ 2

end

end A245508.P16525106307191820182

noncomputable section

/-- A245508: Smallest double square (cf. A001105) greater than n-th prime.

Offset 1, canonical program `A245508.P16525106307191820182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245508 (n : ℕ) : ℤ :=
  A245508.P16525106307191820182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245550.P6354447121910343670

`A006046(floor(n/2))+sqrt(A177241(n))`
-/

namespace A245550.P6354447121910343670
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006046 ⌊(n : ℚ) / 2⌋.toNat : ℝ) + Real.sqrt (A177241 n : ℝ)

end

end A245550.P6354447121910343670

noncomputable section

/-- A245550: a(0)=0; for n >= 1, a(n) = f(n) - 2*f(floor((n-1)/2)), where f(n) = A006046(n).

Offset 0, canonical program `A245550.P6354447121910343670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A245550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245550.P6354447121910343670.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A245550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245585.P6108915240535495460

`eq[0, A245575(n)]`
-/

namespace A245585.P6108915240535495460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245585.P6108915240535495460

noncomputable section

/-- A245585: Numbers that cannot be written as sum of two quarter-squares, cf. A002620.

Offset 1, canonical program `A245585.P6108915240535495460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2576 terms. -/
def A245585 (n : ℕ) : ℤ :=
  (A245585.P6108915240535495460.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2576 terms. -/
def A245585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245650.P3892271656114421038

`p?[A245071(n+1)]`
-/

namespace A245650.P3892271656114421038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245650.P3892271656114421038

noncomputable section

/-- A245650: Primes in the sequence 12*n - prime(n), (A245071).

Offset 1, canonical program `A245650.P3892271656114421038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245650 (n : ℕ) : ℤ :=
  A245650.P3892271656114421038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246062.P4162383363487901360

`abs(A193618(n))`
-/

namespace A246062.P4162383363487901360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A193618 n|

end

end A246062.P4162383363487901360

noncomputable section

/-- A246062: G.f.: sqrt( (1 + sqrt(1+8*x)) / (1 + sqrt(1-8*x)) ).

Offset 0, canonical program `A246062.P4162383363487901360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A246062 (n : ℕ) : ℤ :=
  A246062.P4162383363487901360.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A246062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246306.P12951552392633180147

`abs(1-A246305(n+1))`
-/

namespace A246306.P12951552392633180147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A246305 (n + 1)|

end

end A246306.P12951552392633180147

noncomputable section

/-- A246306: Numbers k such that cos(k) > cos(k+1) > cos(k+2) > cos(k+3) < cos(k+4).

Offset 1, canonical program `A246306.P12951552392633180147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246306 (n : ℕ) : ℤ :=
  A246306.P12951552392633180147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246413.P8427678712717733605

`A246407(n+7)-11`
-/

namespace A246413.P8427678712717733605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 7) - 11

end

end A246413.P8427678712717733605

noncomputable section

/-- A246413: Positive integers k satisfying csc(k) > csc(k+1).

Offset 1, canonical program `A246413.P8427678712717733605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A246413 (n : ℕ) : ℤ :=
  A246413.P8427678712717733605.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A246413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246447.P1059127038919390337

`(n+3)²-Δ[A118777(n+2)]`
-/

namespace A246447.P1059127038919390337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A246447.P1059127038919390337

noncomputable section

/-- A246447: The odd primes squared plus 1 and the composites squared minus 1.

Offset 1, canonical program `A246447.P1059127038919390337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A246447 (n : ℕ) : ℤ :=
  A246447.P1059127038919390337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A246447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246592.P8185262232204503921

`n-A053644(A038554(n))`
-/

namespace A246592.P8185262232204503921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053644 (A038554 n).toNat

end

end A246592.P8185262232204503921

noncomputable section

/-- A246592: Smallest number that can be obtained by swapping 2 adjacent bits in the binary expansion of n.

Offset 0, canonical program `A246592.P8185262232204503921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246592 (n : ℕ) : ℤ :=
  A246592.P8185262232204503921.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246594.P17130502543014025446

`A053644(A087734(n))+n`
-/

namespace A246594.P17130502543014025446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A087734 n).toNat + (n : ℤ)

end

end A246594.P17130502543014025446

noncomputable section

/-- A246594: a(n)=n for n <= 2; for n >= 3, a(n) = largest number that can be obtained by swapping two adjacent bits in the binary expansion of n.

Offset 0, canonical program `A246594.P17130502543014025446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A246594 (n : ℕ) : ℤ :=
  A246594.P17130502543014025446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A246594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246622.P10478257499552316779

`p?[A063114(n+1)]`
-/

namespace A246622.P10478257499552316779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246622.P10478257499552316779

noncomputable section

/-- A246622: Primes of the form n + product of nonzero digits of n, in order of their occurrence.

Offset 1, canonical program `A246622.P10478257499552316779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 784 terms. -/
def A246622 (n : ℕ) : ℤ :=
  A246622.P10478257499552316779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 784 terms. -/
def A246622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246692.P5270854730874171209

`record[gcd(n+1, A270388(2*(n+1)))]`
-/

namespace A246692.P5270854730874171209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A270388 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246692.P5270854730874171209

noncomputable section

/-- A246692: Numbers k such that k | A000129(k).

Offset 1, canonical program `A246692.P5270854730874171209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246692 (n : ℕ) : ℤ :=
  (A246692.P5270854730874171209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246694.P8696891911788978763

`A209278(A204164(n+1)+A161680(n))`
-/

namespace A246694.P8696891911788978763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A204164 (n + 1) + A161680 n).toNat

end

end A246694.P8696891911788978763

noncomputable section

/-- A246694: Triangle read by rows: T(n,k) = T(n,k-2) + 1 if n > 1 and 2 <= k <= n; T(0,0) = 1, T(1,0) = 1, T(1,1) = 2; if n > 1 is odd, then T(n,0) = T(n-1,n-2) + 1 and T(n,1) = T(n-1,n-1) + 1; if n > 1 is even, then T(n,0) = T(n-1,n-1) + 1 and T(n,1) = T(n-1,n-2) + 1.

Offset 0, canonical program `A246694.P8696891911788978763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A246694 (n : ℕ) : ℤ :=
  A246694.P8696891911788978763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A246694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246910.P10023558416160660707

`eq[3/2*A074400(n+1), A000203(A155085(n+1))]+1`
-/

namespace A246910.P10023558416160660707
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A074400 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A155085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A246910.P10023558416160660707

noncomputable section

/-- A246910: Numbers n such that sigma(n+sigma(n)) = 3*sigma(n).

Offset 1, canonical program `A246910.P10023558416160660707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A246910 (n : ℕ) : ℤ :=
  (A246910.P10023558416160660707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A246910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246934.P5973542768665934503

`ceil(sqrt(A112045(n+1)))²`
-/

namespace A246934.P5973542768665934503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A112045 (n + 1) : ℝ)⌉ ^ 2

end

end A246934.P5973542768665934503

noncomputable section

/-- A246934: The closest square to n-th prime.

Offset 1, canonical program `A246934.P5973542768665934503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246934 (n : ℕ) : ℤ :=
  A246934.P5973542768665934503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247287.P5555525899423498411

`∑[A097861(n)]`
-/

namespace A247287.P5555525899423498411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247287.P5555525899423498411

noncomputable section

/-- A247287: Number of weak peaks in all Motzkin paths of length n. A weak peak of a Motzkin path is a vertex on the top of a hump. A hump is an upstep followed by 0 or more flatsteps followed by a downstep. For example, the Motzkin path u*duu*h*h*dd, where u=(1,1), h=(1,0), d(1,-1), has 4 weak peaks (shown by the stars).

Offset 0, canonical program `A247287.P5555525899423498411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A247287 (n : ℕ) : ℤ :=
  A247287.P5555525899423498411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A247287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247343.P16054937885260863727

`∑{d}[n+1, A007427(#)*A007427((n+1)/#)]`
-/

namespace A247343.P16054937885260863727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247343.P16054937885260863727

noncomputable section

/-- A247343: Moebius transform applied four times to sequence 1,0,0,0,....

Offset 1, canonical program `A247343.P16054937885260863727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247343 (n : ℕ) : ℤ :=
  A247343.P16054937885260863727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247420.P9000325431005934409

`2*A000201(A000201(A242094(n+1)))+n+1`
-/

namespace A247420.P9000325431005934409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000201 (A000201 (A242094 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A247420.P9000325431005934409

noncomputable section

/-- A247420: Complement of A247419.

Offset 1, canonical program `A247420.P9000325431005934409`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247420 (n : ℕ) : ℤ :=
  A247420.P9000325431005934409.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247425.P17381508495483219201

`A005206(A003259(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A247425.P17381508495483219201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003259 (n + 1)).toNat

end

end A247425.P17381508495483219201

noncomputable section

/-- A247425: A005206(A003259(n)).

Offset 1, canonical program `A247425.P17381508495483219201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247425 (n : ℕ) : ℤ :=
  A247425.P17381508495483219201.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247515.P5212930640307927296

`eq[1, A067614(n+1)]+1`
-/

namespace A247515.P5212930640307927296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247515.P5212930640307927296

noncomputable section

/-- A247515: Numbers k such that 2*floor(sqrt(prime(k))) < floor(2*sqrt(prime(k))).

Offset 1, canonical program `A247515.P5212930640307927296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A247515 (n : ℕ) : ℤ :=
  (A247515.P5212930640307927296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A247515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247644.P317797350283830947

`A140751(n+1)*A140751(n)`
-/

namespace A247644.P317797350283830947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140751 (n + 1) * A140751 n

end

end A247644.P317797350283830947

noncomputable section

/-- A247644: Triangle formed from the odd-numbered rows of A088855.

Offset 1, canonical program `A247644.P317797350283830947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A247644 (n : ℕ) : ℤ :=
  A247644.P317797350283830947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A247644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247972.P1506214924061998001

`A247971(a(n-1)+5)+n` with `a(0)=5`
-/

namespace A247972.P1506214924061998001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A247971 (a (n - 1) + 5).toNat + (n : ℤ)

end

end A247972.P1506214924061998001

noncomputable section

/-- A247972: Numbers k such that A247971(k+1) = A247971(k).

Offset 1, canonical program `A247972.P1506214924061998001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A247972 (n : ℕ) : ℤ :=
  A247972.P1506214924061998001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A247972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247984.P15958932547498070819

`A307768(n+1)+A007877(n+1)*A063886(n+1)`
-/

namespace A247984.P15958932547498070819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307768 (n + 1) + A007877 (n + 1) * A063886 (n + 1)

end

end A247984.P15958932547498070819

noncomputable section

/-- A247984: Constant terms of congruences derived from a permutation polynomial motivated by generalized quadrangles.

Offset 1, canonical program `A247984.P15958932547498070819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A247984 (n : ℕ) : ℤ :=
  A247984.P15958932547498070819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A247984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247987.P17329123447741709562

`comp[A247986(n+1)-1]+1`
-/

namespace A247987.P17329123447741709562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247986 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247987.P17329123447741709562

noncomputable section

/-- A247987: Numbers k such that A247985(k+1) - A247985(k) = 3.

Offset 1, canonical program `A247987.P17329123447741709562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247987 (n : ℕ) : ℤ :=
  (A247987.P17329123447741709562.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248126.P4372670379426275761

`A338754((n+1)²)`
-/

namespace A248126.P4372670379426275761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 ((n + 1) ^ 2)

end

end A248126.P4372670379426275761

noncomputable section

/-- A248126: a(n) = n^2 with each digit repeated.

Offset 1, canonical program `A248126.P4372670379426275761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A248126 (n : ℕ) : ℤ :=
  A248126.P4372670379426275761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A248126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248150.P14883232548873335720

`lt[A105824(n+1), 1]+1`
-/

namespace A248150.P14883232548873335720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105824 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A248150.P14883232548873335720

noncomputable section

/-- A248150: Numbers whose sum of divisors (A000203) is divisible by 4.

Offset 1, canonical program `A248150.P14883232548873335720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248150 (n : ℕ) : ℤ :=
  (A248150.P14883232548873335720.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248156.P4251534176202152880

`2*A105810(n)-A097808(n)`
-/

namespace A248156.P4251534176202152880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105810 n - A097808 n

end

end A248156.P4251534176202152880

noncomputable section

/-- A248156: Inverse Riordan triangle of A106513: Riordan ((1 - 2*x^2 )/(1 + x), x/(1+x)).

Offset 0, canonical program `A248156.P4251534176202152880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A248156 (n : ℕ) : ℤ :=
  A248156.P4251534176202152880.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A248156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248184.P16797326836110857965

`record[n+1-A248183(n+1)%A248183(n+2)]`
-/

namespace A248184.P16797326836110857965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A248183 (n + 1)) (A248183 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248184.P16797326836110857965

noncomputable section

/-- A248184: Numbers k such that A248183(k+1) = A248183(k).

Offset 1, canonical program `A248184.P16797326836110857965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248184 (n : ℕ) : ℤ :=
  A248184.P16797326836110857965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248368.P16657822915587106588

`p?[A248221(n+1)]`
-/

namespace A248368.P16657822915587106588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248368.P16657822915587106588

noncomputable section

/-- A248368: Primes p such that 52*p + 1 is prime.

Offset 1, canonical program `A248368.P16657822915587106588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 670 terms. -/
def A248368 (n : ℕ) : ℤ :=
  A248368.P16657822915587106588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 670 terms. -/
def A248368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248502.P6195159982500652258

`comp[A248501(n+1)-1]+1`
-/

namespace A248502.P6195159982500652258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248501 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248502.P6195159982500652258

noncomputable section

/-- A248502: Numbers m that are not coprime to floor(m/16).

Offset 1, canonical program `A248502.P6195159982500652258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248502 (n : ℕ) : ℤ :=
  (A248502.P6195159982500652258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248806.P12635437797534997553

`Δ[eq[1, A000002(n+1)]]-1`
-/

namespace A248806.P12635437797534997553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A248806.P12635437797534997553

noncomputable section

/-- A248806: Number of 2's separating successive 1's in the Kolakoski sequence A000002.

Offset 1, canonical program `A248806.P12635437797534997553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. -/
def A248806 (n : ℕ) : ℤ :=
  A248806.P12635437797534997553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. -/
def A248806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248910.P11530105690920292692

`record[A054895(A234959(n+1))+1+n]`
-/

namespace A248910.P11530105690920292692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (A234959 (n + 1)).toNat + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248910.P11530105690920292692

noncomputable section

/-- A248910: Numbers with no zeros in base-6 representation.

Offset 1, canonical program `A248910.P11530105690920292692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A248910 (n : ℕ) : ℤ :=
  A248910.P11530105690920292692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A248910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248962.P12892924221916097292

`A000720(A250621(n+1)+A000007(n))`
-/

namespace A248962.P12892924221916097292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A250621 (n + 1) + A000007 n).toNat

end

end A248962.P12892924221916097292

noncomputable section

/-- A248962: a(n) = PrimePi(log(prime(n))*n).

Offset 1, canonical program `A248962.P12892924221916097292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8761 terms. -/
def A248962 (n : ℕ) : ℤ :=
  A248962.P12892924221916097292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8761 terms. -/
def A248962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249036.P2673849611643492835

`2-A078881(a(n-1))+n` with `a(0)=1`
-/

namespace A249036.P2673849611643492835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - A078881 (a (n - 1)).toNat + (n : ℤ)

end

end A249036.P2673849611643492835

noncomputable section

/-- A249036: a(1)=1, a(2)=2; thereafter a(n) = a(n-1-(number of even terms so far)) + a(n-1-(number of odd terms so far)).

Offset 1, canonical program `A249036.P2673849611643492835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249036 (n : ℕ) : ℤ :=
  A249036.P2673849611643492835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249074.P8729693032402954792

`A016116(A004736(1+n))*A248809(n)`
-/

namespace A249074.P8729693032402954792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004736 (1 + n)).toNat * A248809 n

end

end A249074.P8729693032402954792

noncomputable section

/-- A249074: Triangular array read by rows: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

Offset 0, canonical program `A249074.P8729693032402954792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A249074 (n : ℕ) : ℤ :=
  A249074.P8729693032402954792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A249074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249308.P11744014540350760347

`2^n*A128014(n)`
-/

namespace A249308.P11744014540350760347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A128014 n

end

end A249308.P11744014540350760347

noncomputable section

/-- A249308: Central terms of triangle A249307.

Offset 0, canonical program `A249308.P11744014540350760347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A249308 (n : ℕ) : ℤ :=
  A249308.P11744014540350760347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A249308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249670.P6555047459186973760

`A017665(n+1)*A017666(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249670.P6555047459186973760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) * A017666 (n + 1)

end

end A249670.P6555047459186973760

noncomputable section

/-- A249670: a(n) = A017665(n)*A017666(n).

Offset 1, canonical program `A249670.P6555047459186973760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249670 (n : ℕ) : ℤ :=
  A249670.P6555047459186973760.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249719.P10354154330167799316

`eq[9, A060011(n)]`
-/

namespace A249719.P10354154330167799316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249719.P10354154330167799316

noncomputable section

/-- A249719: Complement of A051382.

Offset 1, canonical program `A249719.P10354154330167799316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8464 terms. -/
def A249719 (n : ℕ) : ℤ :=
  (A249719.P10354154330167799316.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8464 terms. -/
def A249719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249758.P12334685138373324996

`A038207(n)+A112857(n)-A010054(n)`
-/

namespace A249758.P12334685138373324996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + (A112857 n - A010054 n)

end

end A249758.P12334685138373324996

noncomputable section

/-- A249758: Triangular array of coefficients of polynomials p(n,x) = (x + 2)*p(n-1,x) + x, p(0,x) = 1.

Offset 0, canonical program `A249758.P12334685138373324996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249758 (n : ℕ) : ℤ :=
  A249758.P12334685138373324996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249866.P2760361692551330954

`and(A054431(n+1), A073216(n))`
-/

namespace A249866.P2760361692551330954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A073216 n)

end

end A249866.P2760361692551330954

noncomputable section

/-- A249866: Characteristic triangle for primitive Pythagorean triples.

Offset 2, canonical program `A249866.P2760361692551330954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249866 (n : ℕ) : ℤ :=
  A249866.P2760361692551330954.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250155.P12803802932175960487

`(n+2)^7-A250060(n+1)`
-/

namespace A250155.P12803802932175960487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 7 : ℤ) - A250060 (n + 1)

end

end A250155.P12803802932175960487

noncomputable section

/-- A250155: Number of length 1+6 0..n arrays with every seven consecutive terms having the maximum of some two terms equal to the minimum of the remaining five terms.

Offset 1, canonical program `A250155.P12803802932175960487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250155 (n : ℕ) : ℤ :=
  A250155.P12803802932175960487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250427.P17058954788119591334

`(A005994(n+2)-A096338(n))²`
-/

namespace A250427.P17058954788119591334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005994 (n + 2) - A096338 n) ^ 2

end

end A250427.P17058954788119591334

noncomputable section

/-- A250427: Number of (n+1)X(3+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250427.P17058954788119591334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A250427 (n : ℕ) : ℤ :=
  A250427.P17058954788119591334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A250427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251634.P17680182308673229941

`A248810(C(n, n²)+n-A002024(n+1))`
-/

namespace A251634.P17680182308673229941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248810 ((Nat.choose n (n ^ 2) + n : ℤ) - A002024 (n + 1)).toNat

end

end A251634.P17680182308673229941

noncomputable section

/-- A251634: Numerators of inverse Riordan triangle of Riordan triangle A029635. Riordan (1/(1-x), x/(1+2*x)). Triangle read by rows for 0 <= m <= n.

Offset 0, canonical program `A251634.P17680182308673229941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251634 (n : ℕ) : ℤ :=
  A251634.P17680182308673229941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252055.P14347574890606999635

`∑{d}[n+1, A003849(#-1)*A005614((n+1)/#-1)]`
-/

namespace A252055.P14347574890606999635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003849 (d - 1) * A005614 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A252055.P14347574890606999635

noncomputable section

/-- A252055: Number of products A000201(i)*A001950(j) = n.

Offset 1, canonical program `A252055.P14347574890606999635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A252055 (n : ℕ) : ℤ :=
  A252055.P14347574890606999635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A252055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252651.P4540024866136707722

`A046913(2*n+1)/A061347(n+1)*A061347(n+2)`
-/

namespace A252651.P4540024866136707722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046913 (2 * n + 1) : ℚ) / (A061347 (n + 1) : ℚ) * (A061347 (n + 2) : ℚ)

end

end A252651.P4540024866136707722

noncomputable section

/-- A252651: Expansion of q^(-1/2) * (eta(q) * eta(q^2) * eta(q^6) / eta(q^3))^2 in powers of q.

Offset 0, canonical program `A252651.P4540024866136707722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A252651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A252651.P4540024866136707722.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A252651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252704.P14111611536729371917

`A337959(n+1)+A337960(n+1)`
-/

namespace A252704.P14111611536729371917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337959 (n + 1) + A337960 (n + 1)

end

end A252704.P14111611536729371917

noncomputable section

/-- A252704: The number of ways to color the faces of a regular icosahedron with n colors, counting mirror images as one.

Offset 1, canonical program `A252704.P14111611536729371917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252704 (n : ℕ) : ℤ :=
  A252704.P14111611536729371917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252871.P6032531055172696839

`A252815(n+1)-∑[C(n+3, 2)]`
-/

namespace A252871.P6032531055172696839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A252871.P6032531055172696839

noncomputable section

/-- A252871: Number of nX3 nonnegative integer arrays with upper left 0 and lower right n+3-4 and value increasing by 0 or 1 with every step right or down.

Offset 1, canonical program `A252871.P6032531055172696839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252871 (n : ℕ) : ℤ :=
  A252871.P6032531055172696839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253106.P15381254514479886503

`∪[A001748(n+1), A100484(n+1)]`
-/

namespace A253106.P15381254514479886503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253106.P15381254514479886503

noncomputable section

/-- A253106: Semiprimes with smallest factor <= 3.

Offset 1, canonical program `A253106.P15381254514479886503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253106 (n : ℕ) : ℤ :=
  (A253106.P15381254514479886503.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253169.P3897809180562102722

`A063656(∑[n]*A010054(n+1)+n+1)`
-/

namespace A253169.P3897809180562102722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010054 (n + 1) + (n + 1 : ℤ)).toNat

end

end A253169.P3897809180562102722

noncomputable section

/-- A253169: Smallest m such that A256188(m) = n.

Offset 1, canonical program `A253169.P3897809180562102722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A253169 (n : ℕ) : ℤ :=
  A253169.P3897809180562102722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A253169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253251.P7156480629485270913

`A052038(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A253251.P7156480629485270913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052038 (a (n - 1)).toNat + a (n - 1)

end

end A253251.P7156480629485270913

noncomputable section

/-- A253251: a(1) = 1, and for n > 0, a(n+1) = a(n) + floor(10^k/a(n)), where k is the least integer such that 10^k >= a(n).

Offset 1, canonical program `A253251.P7156480629485270913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7106 terms. -/
def A253251 (n : ℕ) : ℤ :=
  A253251.P7156480629485270913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7106 terms. -/
def A253251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253260.P9231036617430178530

`eq[n, A135684(A233583(n+1))]²`
-/

namespace A253260.P9231036617430178530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135684 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A253260.P9231036617430178530

noncomputable section

/-- A253260: Brazilian squares.

Offset 1, canonical program `A253260.P9231036617430178530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A253260 (n : ℕ) : ℤ :=
  (A253260.P9231036617430178530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A253260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253414.P8812429951265453479

`A073089(2*n+3)-A073089(A014681(n+1))`
-/

namespace A253414.P8812429951265453479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (2 * n + 3) - A073089 (A014681 (n + 1)).toNat

end

end A253414.P8812429951265453479

noncomputable section

/-- A253414: G.f. satisfies (1+x^2)*g(x) = 1 + x*g(x^2).

Offset 0, canonical program `A253414.P8812429951265453479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253414 (n : ℕ) : ℤ :=
  A253414.P8812429951265453479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253629.P1098263720651424872

`A003557(n+1)*A206787(n+1)`
-/

namespace A253629.P1098263720651424872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A206787 (n + 1)

end

end A253629.P1098263720651424872

noncomputable section

/-- A253629: Multiplicative function defined for prime powers by a(p^e) = p^(e-1)(p+1) if p > 2 and a(2^e) = 2^(e-1).

Offset 1, canonical program `A253629.P1098263720651424872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253629 (n : ℕ) : ℤ :=
  A253629.P1098263720651424872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253780.P12171033837205224752

`A253779(n+1)^3`
-/

namespace A253780.P12171033837205224752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253779 (n + 1) ^ 3

end

end A253780.P12171033837205224752

noncomputable section

/-- A253780: Cubes c^3 that are equal to the sum of m^3 consecutive cubes starting at b^3 with b (A253778) for m^3 not divisible by 3 (A118719).

Offset 1, canonical program `A253780.P12171033837205224752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253780 (n : ℕ) : ℤ :=
  A253780.P12171033837205224752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253969.P1574330651743664428

`A000040(eq[2, A006094(n+2)%3]+2)`
-/

namespace A253969.P1574330651743664428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A253969.P1574330651743664428

noncomputable section

/-- A253969: Primes p such that p + nextprime(p) is divisible by 6.

Offset 1, canonical program `A253969.P1574330651743664428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5979 terms. -/
def A253969 (n : ℕ) : ℤ :=
  A253969.P1574330651743664428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5979 terms. -/
def A253969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254111.P598288694993165657

`A254110(1+n)+1`
-/

namespace A254111.P598288694993165657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254110 (1 + n) + 1

end

end A254111.P598288694993165657

noncomputable section

/-- A254111: One-based column index of n in A254105: If A234017(n) = 0, then a(n) = 1, otherwise a(n) = 1 + a(A234017(n)).

Offset 1, canonical program `A254111.P598288694993165657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A254111 (n : ℕ) : ℤ :=
  A254111.P598288694993165657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A254111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254128.P15982088991823615533

`2*A094536(abs(1-n))`
-/

namespace A254128.P15982088991823615533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094536 |1 - (n : ℤ)|.toNat

end

end A254128.P15982088991823615533

noncomputable section

/-- A254128: Number of binary strings of length n that begin with an odd-length palindrome.

Offset 0, canonical program `A254128.P15982088991823615533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A254128 (n : ℕ) : ℤ :=
  A254128.P15982088991823615533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A254128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254146.P6523098754647194470

`A254145(n)+A001555(n)`
-/

namespace A254146.P6523098754647194470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254145 n + A001555 n

end

end A254146.P6523098754647194470

noncomputable section

/-- A254146: a(n) = 1*8^n + 2*7^n + 3*6^n + 4*5^n + 5*4^n + 6*3^n + 7*2^n + 8*1^n.

Offset 0, canonical program `A254146.P6523098754647194470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A254146 (n : ℕ) : ℤ :=
  A254146.P6523098754647194470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A254146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254316.P17326756687116975165

`∑{#}[n, C(n, #)*A157002(#)]`
-/

namespace A254316.P17326756687116975165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A157002 k

end

end A254316.P17326756687116975165

noncomputable section

/-- A254316: Hankel transform of a(n) is A006720(n+1). Hankel transform of a(n+1) is A006720(n+3).

Offset 0, canonical program `A254316.P17326756687116975165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A254316 (n : ℕ) : ℤ :=
  A254316.P17326756687116975165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A254316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254464.P2241084014738837999

`A254463(n)+A254145(n)`
-/

namespace A254464.P2241084014738837999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254463 n + A254145 n

end

end A254464.P2241084014738837999

noncomputable section

/-- A254464: a(n) = 21*2^n + 10*4^n + 15*3^n + 3*6^n + 6*5^n + 7^n + 28.

Offset 0, canonical program `A254464.P2241084014738837999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254464 (n : ℕ) : ℤ :=
  A254464.P2241084014738837999.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254671.P17194479350893143433

`lt[1, A296955(n+1)-2]`
-/

namespace A254671.P17194479350893143433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A254671.P17194479350893143433

noncomputable section

/-- A254671: Numbers that can be represented as x*y + x + y, where x >= y > 1.

Offset 1, canonical program `A254671.P17194479350893143433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254671 (n : ℕ) : ℤ :=
  (A254671.P17194479350893143433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255224.P15824476764255298837

`A255223(n+1)+12`
-/

namespace A255224.P15824476764255298837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255223 (n + 1) + 12

end

end A255224.P15824476764255298837

noncomputable section

/-- A255224: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255224.P15824476764255298837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255224 (n : ℕ) : ℤ :=
  A255224.P15824476764255298837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255225.P10298454783296627816

`A255223(n+1)+30`
-/

namespace A255225.P10298454783296627816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255223 (n + 1) + 30

end

end A255225.P10298454783296627816

noncomputable section

/-- A255225: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255225.P10298454783296627816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255225 (n : ℕ) : ℤ :=
  A255225.P10298454783296627816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255491.P15620683629542724992

`comp[A181732(n+1)-1]+1`
-/

namespace A255491.P15620683629542724992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181732 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A255491.P15620683629542724992

noncomputable section

/-- A255491: Numbers k such that 90*k+1 is composite.

Offset 1, canonical program `A255491.P15620683629542724992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255491 (n : ℕ) : ℤ :=
  (A255491.P15620683629542724992.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255527.P13612266625817391283

`A127739(A065033(n))+n`
-/

namespace A255527.P13612266625817391283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A065033 n).toNat + (n : ℤ)

end

end A255527.P13612266625817391283

noncomputable section

/-- A255527: Where records occur in A255437.

Offset 1, canonical program `A255527.P13612266625817391283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255527 (n : ℕ) : ℤ :=
  A255527.P13612266625817391283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255648.P2204606610145785971

`abs(A112848(n+1))`
-/

namespace A255648.P2204606610145785971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112848 (n + 1)|

end

end A255648.P2204606610145785971

noncomputable section

/-- A255648: Expansion of (a(q) + a(q^2) + a(q^3) + a(q^6) - 4) / 6 in powers of q where a() is a cubic AGM theta function.

Offset 1, canonical program `A255648.P2204606610145785971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255648 (n : ℕ) : ℤ :=
  A255648.P2204606610145785971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255743.P1815308521634170027

`A003951(A000120(n))`
-/

namespace A255743.P1815308521634170027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 (A000120 n).toNat

end

end A255743.P1815308521634170027

noncomputable section

/-- A255743: a(1) = 1; for n > 1, a(n) = 9*8^{A000120(n-1)-1}.

Offset 1, canonical program `A255743.P1815308521634170027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255743 (n : ℕ) : ℤ :=
  A255743.P1815308521634170027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255744.P326173307851122901

`A003952(A000120(n))`
-/

namespace A255744.P326173307851122901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003952 (A000120 n).toNat

end

end A255744.P326173307851122901

noncomputable section

/-- A255744: a(1) = 1; for n > 1, a(n) = 10*9^(A000120(n-1)-1).

Offset 1, canonical program `A255744.P326173307851122901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255744 (n : ℕ) : ℤ :=
  A255744.P326173307851122901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255766.P5457253108334879080

`∑[A003953(A000120(n))]`
-/

namespace A255766.P5457253108334879080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003953 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255766.P5457253108334879080

noncomputable section

/-- A255766: Partial sums of A255745.

Offset 1, canonical program `A255766.P5457253108334879080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255766 (n : ℕ) : ℤ :=
  A255766.P5457253108334879080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255812.P10331550004199229261

`A009998(n)/A152656(n)*A119502(n)`
-/

namespace A255812.P10331550004199229261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n : ℚ) / (A152656 n : ℚ) * (A119502 n : ℚ)

end

end A255812.P10331550004199229261

noncomputable section

/-- A255812: Rectangular array: row n gives the denominators in the positive convolutory n-th root of (1,1,1,...).

Offset 1, canonical program `A255812.P10331550004199229261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A255812 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A255812.P10331550004199229261.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A255812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255977.P171322725944610092

`A054347(n)-((n+1)²-3*(n+1))/2`
-/

namespace A255977.P171322725944610092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054347 n : ℚ) - (((n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) : ℚ) / 2

end

end A255977.P171322725944610092

noncomputable section

/-- A255977: The number of numbers j+k*r <= n, where r = golden ratio and j and k are nonnegative integers.

Offset 1, canonical program `A255977.P171322725944610092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255977 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A255977.P171322725944610092.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256095.P12103393017234258254

`gcd(A049780(n), A057944(n))`
-/

namespace A256095.P12103393017234258254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049780 n) (A057944 n)

end

end A256095.P12103393017234258254

noncomputable section

/-- A256095: Triangle of greatest common divisors of two triangular numbers (A000217).

Offset 0, canonical program `A256095.P12103393017234258254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256095 (n : ℕ) : ℤ :=
  (A256095.P12103393017234258254.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256737.P6811670045123415095

`A078584(n+1)-1`
-/

namespace A256737.P6811670045123415095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (n + 1) - 1

end

end A256737.P6811670045123415095

noncomputable section

/-- A256737: Number of composites lying between successive pairs of primes, beginning with pair (2,3). Bisection of A046933.

Offset 1, canonical program `A256737.P6811670045123415095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256737 (n : ℕ) : ℤ :=
  A256737.P6811670045123415095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256764.P16508789042629990084

`2^(n+3)*A204032(n+2)`
-/

namespace A256764.P16508789042629990084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) * A204032 (n + 2)

end

end A256764.P16508789042629990084

noncomputable section

/-- A256764: Number of (n+2)X(1+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

Offset 1, canonical program `A256764.P16508789042629990084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A256764 (n : ℕ) : ℤ :=
  A256764.P16508789042629990084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A256764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256765.P9408415703290799051

`A204032(n+2)²`
-/

namespace A256765.P9408415703290799051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204032 (n + 2) ^ 2

end

end A256765.P9408415703290799051

noncomputable section

/-- A256765: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

Offset 1, canonical program `A256765.P9408415703290799051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A256765 (n : ℕ) : ℤ :=
  A256765.P9408415703290799051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A256765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256966.P7229463913405472594

`∑[A095791(n)]+n`
-/

namespace A256966.P7229463913405472594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A256966.P7229463913405472594

noncomputable section

/-- A256966: Partial sums of A072649.

Offset 1, canonical program `A256966.P7229463913405472594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256966 (n : ℕ) : ℤ :=
  A256966.P7229463913405472594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257089.P3849951302181853917

`A007949(A256689(n+1))`
-/

namespace A257089.P3849951302181853917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A256689 (n + 1)).toNat

end

end A257089.P3849951302181853917

noncomputable section

/-- A257089: a(n) = log_3 (A256689(n)).

Offset 1, canonical program `A257089.P3849951302181853917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257089 (n : ℕ) : ℤ :=
  A257089.P3849951302181853917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257090.P18330022939788008876

`log2(A256691(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257090.P18330022939788008876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A256691 (n + 1) : ℝ)

end

end A257090.P18330022939788008876

noncomputable section

/-- A257090: a(n) = log_2 (A256691(n)).

Offset 1, canonical program `A257090.P18330022939788008876`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A257090.P18330022939788008876.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257213.P15189177021721227426

`A259361(n)+1+floor(sqrt(A232091(n+1)-1-n+A079813(n+1))+A079813(n+1)/2)`
-/

namespace A257213.P15189177021721227426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 n + 1 + ⌊Real.sqrt (A232091 (n + 1) - 1 - (n : ℤ) + A079813 (n + 1) : ℝ) + ((A079813 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A257213.P15189177021721227426

noncomputable section

/-- A257213: Least d>0 such that floor(n/d) = floor(n/(d+1)).

Offset 0, canonical program `A257213.P15189177021721227426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257213 (n : ℕ) : ℤ :=
  A257213.P15189177021721227426.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257213.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257531.P7062776360316150328

`A063524(A062173(n+1))`
-/

namespace A257531.P7062776360316150328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A062173 (n + 1)).toNat

end

end A257531.P7062776360316150328

noncomputable section

/-- A257531: If 2^(n-1) mod n = 1, then 1 else 0.

Offset 1, canonical program `A257531.P7062776360316150328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257531 (n : ℕ) : ℤ :=
  A257531.P7062776360316150328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257612.P2032820488222380078

`A060187(n+1)*A137688(n)`
-/

namespace A257612.P2032820488222380078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) * A137688 n

end

end A257612.P2032820488222380078

noncomputable section

/-- A257612: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 4*x + 2.

Offset 0, canonical program `A257612.P2032820488222380078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1454 terms. -/
def A257612 (n : ℕ) : ℤ :=
  A257612.P2032820488222380078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1454 terms. -/
def A257612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257613.P1281786670780744546

`A137688(n)*A256890(n)`
-/

namespace A257613.P1281786670780744546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n * A256890 n

end

end A257613.P1281786670780744546

noncomputable section

/-- A257613: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 2*x + 4.

Offset 0, canonical program `A257613.P1281786670780744546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1794 terms. -/
def A257613 (n : ℕ) : ℤ :=
  A257613.P1281786670780744546.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1794 terms. -/
def A257613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257616.P7186092579697854524

`A137688(n)*A142458(n+1)`
-/

namespace A257616.P7186092579697854524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n * A142458 (n + 1)

end

end A257616.P7186092579697854524

noncomputable section

/-- A257616: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 6*x + 2.

Offset 0, canonical program `A257616.P7186092579697854524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1294 terms. -/
def A257616 (n : ℕ) : ℤ :=
  A257616.P7186092579697854524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1294 terms. -/
def A257616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257618.P2906390378512934072

`A137688(n)*A142459(n+1)`
-/

namespace A257618.P2906390378512934072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n * A142459 (n + 1)

end

end A257618.P2906390378512934072

noncomputable section

/-- A257618: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 8*x + 2.

Offset 0, canonical program `A257618.P2906390378512934072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A257618 (n : ℕ) : ℤ :=
  A257618.P2906390378512934072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A257618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257832.P15250859016171194730

`∩[(n+1)*A005117(n+1), A005117(n+1)]`
-/

namespace A257832.P15250859016171194730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257832.P15250859016171194730

noncomputable section

/-- A257832: Squarefree numbers that are k*A005117(k) for some k.

Offset 1, canonical program `A257832.P15250859016171194730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A257832 (n : ℕ) : ℤ :=
  (A257832.P15250859016171194730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A257832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257920.P5446588784630324172

`A192013(8*n+3)`
-/

namespace A257920.P5446588784630324172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (8 * n + 3)

end

end A257920.P5446588784630324172

noncomputable section

/-- A257920: Expansion of phi(x) * psi(x^3) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A257920.P5446588784630324172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257920 (n : ℕ) : ℤ :=
  A257920.P5446588784630324172.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257920.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258316.P5658510745853391097

`A020706(A025581(n))+A001911(A002260(n+1))`
-/

namespace A258316.P5658510745853391097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (A025581 n).toNat + A001911 (A002260 (n + 1)).toNat

end

end A258316.P5658510745853391097

noncomputable section

/-- A258316: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 or 0011.

Offset 1, canonical program `A258316.P5658510745853391097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1104 terms. -/
def A258316 (n : ℕ) : ℤ :=
  A258316.P5658510745853391097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1104 terms. -/
def A258316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258415.P4473213064253829696

`A151575(A004736(n+1))+A054582(n)`
-/

namespace A258415.P4473213064253829696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 (A004736 (n + 1)).toNat + A054582 n

end

end A258415.P4473213064253829696

noncomputable section

/-- A258415: Array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = (2 + 2^(n-1)*(6*k - 3 + 2*(-1)^n))/3, n,k >= 1.

Offset 1, canonical program `A258415.P4473213064253829696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258415 (n : ℕ) : ℤ :=
  A258415.P4473213064253829696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258445.P3993367522767130701

`A140751(A023969(n)+n)`
-/

namespace A258445.P3993367522767130701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140751 (A023969 n + (n : ℤ)).toNat

end

end A258445.P3993367522767130701

noncomputable section

/-- A258445: Irregular triangle related to Pascal's triangle.

Offset 1, canonical program `A258445.P3993367522767130701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A258445 (n : ℕ) : ℤ :=
  A258445.P3993367522767130701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A258445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258578.P11835959862927243434

`A000040(eq[1, A006094(n+2)%3]+2)`
-/

namespace A258578.P11835959862927243434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A258578.P11835959862927243434

noncomputable section

/-- A258578: Primes p such that difference between p and next prime after p is multiple of 6.

Offset 1, canonical program `A258578.P11835959862927243434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4019 terms. -/
def A258578 (n : ℕ) : ℤ :=
  A258578.P11835959862927243434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4019 terms. -/
def A258578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258758.P2809109636177300966

`A007318(n)*A100100(A057944(n))`
-/

namespace A258758.P2809109636177300966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A100100 (A057944 n).toNat

end

end A258758.P2809109636177300966

noncomputable section

/-- A258758: Triangle T(n,k) = C(n+k-1,k)*C(2*n-1,n-k).

Offset 0, canonical program `A258758.P2809109636177300966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A258758 (n : ℕ) : ℤ :=
  A258758.P2809109636177300966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A258758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259222.P17040782005112290321

`2^(col(n)+2)+A001911(row(n)-col(n)+1)*A000045(col(n)+4)+A234933(row(n)-col(n)+2)`
-/

namespace A259222.P17040782005112290321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (SequenceMachineLib.triCol n + 2) : ℤ) + A001911 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A000045 (SequenceMachineLib.triCol n + 4) + A234933 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2).toNat

end

end A259222.P17040782005112290321

noncomputable section

/-- A259222: T(n,k) is the number of (n+1) X (k+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0101.

Offset 1, canonical program `A259222.P17040782005112290321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A259222 (n : ℕ) : ℤ :=
  A259222.P17040782005112290321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A259222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259285.P7376159365787076354

`A025426(16*n+13)`
-/

namespace A259285.P7376159365787076354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (16 * n + 13)

end

end A259285.P7376159365787076354

noncomputable section

/-- A259285: Expansion of psi(x^2) * f(x, x^7) in powers of x where psi(), f(,) are Ramanujan theta functions.

Offset 0, canonical program `A259285.P7376159365787076354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259285 (n : ℕ) : ℤ :=
  A259285.P7376159365787076354.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259287.P2593529225509960214

`A025426(16*n+5)`
-/

namespace A259287.P2593529225509960214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (16 * n + 5)

end

end A259287.P2593529225509960214

noncomputable section

/-- A259287: Expansion of psi(x^2) * f(x^3, x^5) in powers of x where psi(), f(, ) are Ramanujan theta functions.

Offset 0, canonical program `A259287.P2593529225509960214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259287 (n : ℕ) : ℤ :=
  A259287.P2593529225509960214.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259309.P893002542035354465

`eq[1, A193929(∑{d}[n, #])]`
-/

namespace A259309.P893002542035354465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259309.P893002542035354465

noncomputable section

/-- A259309: Numbers k such that 1 + sigma(k)^4 is prime.

Offset 1, canonical program `A259309.P893002542035354465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A259309 (n : ℕ) : ℤ :=
  (A259309.P893002542035354465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A259309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259324.P3208587440667658577

`A058398(n+1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A259324.P3208587440667658577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058398 (n + 1) + SequenceMachineLib.triUpLeft a n

end

end A259324.P3208587440667658577

noncomputable section

/-- A259324: Infinite square array read by antidiagonals: T(n,k) = number of ways of partitioning numbers <= n into k parts (n >= 0, k >= 1).

Offset 0, canonical program `A259324.P3208587440667658577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259324 (n : ℕ) : ℤ :=
  A259324.P3208587440667658577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259549.P10181913513683013065

`∑[A071028(n)]`
-/

namespace A259549.P10181913513683013065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259549.P10181913513683013065

noncomputable section

/-- A259549: Triangle T(n,k) with rows of length 2n-1 filled with consecutive integers, each appearing twice except for the last term, T(n,2n-1) = n(n+1)/2.

Offset 1, canonical program `A259549.P10181913513683013065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259549 (n : ℕ) : ℤ :=
  A259549.P10181913513683013065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259556.P7131408588609023786

`A001950(A004736(n+1))+A000201(A002260(n+1))`
-/

namespace A259556.P7131408588609023786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A004736 (n + 1)).toNat + A000201 (A002260 (n + 1)).toNat

end

end A259556.P7131408588609023786

noncomputable section

/-- A259556: Rectangular array, read by antidiagonals: T(h,k) = u(h) + v(k), where u = A000201 (lower Wythoff numbers), v = A001950 (upper Wythoff numbers), and h >= 1, k >= 1.

Offset 1, canonical program `A259556.P7131408588609023786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259556 (n : ℕ) : ℤ :=
  A259556.P7131408588609023786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259575.P7201171947853536315

`A259572(n+1)+A054431(n+1)`
-/

namespace A259575.P7201171947853536315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (n + 1) + A054431 (n + 1)

end

end A259575.P7201171947853536315

noncomputable section

/-- A259575: Reciprocity array of 1; rectangular, read by antidiagonals.

Offset 1, canonical program `A259575.P7201171947853536315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259575 (n : ℕ) : ℤ :=
  A259575.P7201171947853536315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259665.P16347607823842233365

`a(n-1)+A137688(n-1)²` with `a(0)=0`
-/

namespace A259665.P16347607823842233365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A137688 (n - 1) ^ 2

end

end A259665.P16347607823842233365

noncomputable section

/-- A259665: a(0)=0, a(1)=1, a(n) = min{4 a(k) + (4^(n-k)-1)/3, k=0..(n-1)} for n>=2.

Offset 0, canonical program `A259665.P16347607823842233365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259665 (n : ℕ) : ℤ :=
  A259665.P16347607823842233365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259709.P9823627250390288999

`A000129(n+2)-A045925(n+2)`
-/

namespace A259709.P9823627250390288999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - A045925 (n + 2)

end

end A259709.P9823627250390288999

noncomputable section

/-- A259709: a(n) = A259708(n,n-1).

Offset 1, canonical program `A259709.P9823627250390288999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A259709 (n : ℕ) : ℤ :=
  A259709.P9823627250390288999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A259709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259853.P5595594093719287469

`A001790(n+1)/gcd((n+1)², A001790(n+1))`
-/

namespace A259853.P5595594093719287469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 (n + 1) : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (A001790 (n + 1)) : ℚ)

end

end A259853.P5595594093719287469

noncomputable section

/-- A259853: Denominators of the terms of Lehmer's series S_2(2), where S_k(x) = Sum_{n>=1} n^k*x^n/binomial(2*n, n).

Offset 1, canonical program `A259853.P5595594093719287469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A259853 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A259853.P5595594093719287469.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A259853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260112.P11147998696318706904

`A053737(n)+A110591(n)-1`
-/

namespace A260112.P11147998696318706904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n + A110591 n - 1

end

end A260112.P11147998696318706904

noncomputable section

/-- A260112: Minimal number of steps to get from 0 to n by (a) adding 1 or (b) multiplying by 4.

Offset 0, canonical program `A260112.P11147998696318706904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260112 (n : ℕ) : ℤ :=
  A260112.P11147998696318706904.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260188.P14430406115504159420

`A002110(∑[char[A002110(n+1)-1]])`
-/

namespace A260188.P14430406115504159420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260188.P14430406115504159420

noncomputable section

/-- A260188: Greatest primorial less than or equal to n.

Offset 1, canonical program `A260188.P14430406115504159420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260188 (n : ℕ) : ℤ :=
  A260188.P14430406115504159420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260228.P14478418545957725030

`gcd(A051696(n+1), A059929(n))`
-/

namespace A260228.P14478418545957725030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051696 (n + 1)) (A059929 n)

end

end A260228.P14478418545957725030

noncomputable section

/-- A260228: a(n) = max(gcd(n,F(n-1)),gcd(n,F(n+1))), where F(n) is the n-th Fibonacci number.

Offset 1, canonical program `A260228.P14478418545957725030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A260228 (n : ℕ) : ℤ :=
  (A260228.P14478418545957725030.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A260228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260308.P1554636499835406594

`A192013(8*n+1)`
-/

namespace A260308.P1554636499835406594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (8 * n + 1)

end

end A260308.P1554636499835406594

noncomputable section

/-- A260308: Expansion of psi(x) * phi(x^3) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A260308.P1554636499835406594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260308 (n : ℕ) : ℤ :=
  A260308.P1554636499835406594.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260492.P11140523939615091371

`A071028(n)*A140751(n)`
-/

namespace A260492.P11140523939615091371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n * A140751 n

end

end A260492.P11140523939615091371

noncomputable section

/-- A260492: Pascal's triangle aerated with columns of zeros.

Offset 0, canonical program `A260492.P11140523939615091371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A260492 (n : ℕ) : ℤ :=
  A260492.P11140523939615091371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A260492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260626.P15351941485670242193

`A014491(A018252(n+1))`
-/

namespace A260626.P15351941485670242193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A018252 (n + 1)).toNat

end

end A260626.P15351941485670242193

noncomputable section

/-- A260626: a(n) = gcd(m, 2^m-1) where m is the n-th nonprime positive integer.

Offset 1, canonical program `A260626.P15351941485670242193`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260626 (n : ℕ) : ℤ :=
  A260626.P15351941485670242193.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260774.P1864445733643456348

`Δ[A122868(n)/2]`
-/

namespace A260774.P1864445733643456348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122868 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260774.P1864445733643456348

noncomputable section

/-- A260774: Certain directed lattice paths.

Offset 0, canonical program `A260774.P1864445733643456348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A260774 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A260774.P1864445733643456348.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A260774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260812.P13445173599127524008

`A060632(n)+a(A029578(n))` with `a(0)=1`
-/

namespace A260812.P13445173599127524008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060632 n + a (A029578 n).toNat

end

end A260812.P13445173599127524008

noncomputable section

/-- A260812: a(n) is the number of edges in a rooted 2-ary tree built from the binary representation of n: each vertex at level i (i=0,...,floor(log_2(n))) has two children if the i-th most significant bit is 1 and one child if the i-th bit is 0.

Offset 0, canonical program `A260812.P13445173599127524008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260812 (n : ℕ) : ℤ :=
  A260812.P13445173599127524008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260945.P4856476267328599373

`A062157(n)*A112848(A028310(n))`
-/

namespace A260945.P4856476267328599373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A112848 (A028310 n).toNat

end

end A260945.P4856476267328599373

noncomputable section

/-- A260945: Expansion of (2*b(q^4) - b(q) - b(q^2)) / 3 in powers of q where b() is a cubic AGM theta function.

Offset 0, canonical program `A260945.P4856476267328599373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260945 (n : ℕ) : ℤ :=
  A260945.P4856476267328599373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260963.P9935285251690812100

`eq[1, A129514(n+1)]+1`
-/

namespace A260963.P9935285251690812100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260963.P9935285251690812100

noncomputable section

/-- A260963: Numbers k such that gcd(sigma(k), k*(k+1)/2 - sigma(k)) = 1, where sigma(k) is sum of positive divisors of k.

Offset 1, canonical program `A260963.P9935285251690812100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A260963 (n : ℕ) : ℤ :=
  (A260963.P9935285251690812100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A260963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261115.P14557941267190981689

`A192013(6*n+1)`
-/

namespace A261115.P14557941267190981689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (6 * n + 1)

end

end A261115.P14557941267190981689

noncomputable section

/-- A261115: Expansion of f(x, x) * f(x^4, x^8) in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A261115.P14557941267190981689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261115 (n : ℕ) : ℤ :=
  A261115.P14557941267190981689.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261115.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261118.P17042699293542349779

`A192013(4*n+1)`
-/

namespace A261118.P17042699293542349779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (4 * n + 1)

end

end A261118.P17042699293542349779

noncomputable section

/-- A261118: Expansion of psi(x)^2 * psi(-x^3)^2 / (phi(-x^4) * psi(-x^6)) in power of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A261118.P17042699293542349779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261118 (n : ℕ) : ℤ :=
  A261118.P17042699293542349779.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261585.P15148700531395716474

`A204551(A011862(n+4)-n)`
-/

namespace A261585.P15148700531395716474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A011862 (n + 4) - (n : ℤ)).toNat

end

end A261585.P15148700531395716474

noncomputable section

/-- A261585: Number of sexagesimal digits of Fibonacci numbers in base-60 representation.

Offset 0, canonical program `A261585.P15148700531395716474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A261585 (n : ℕ) : ℤ :=
  A261585.P15148700531395716474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A261585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261792.P15740581189978020374

`p?[A128913(n+1)-1]`
-/

namespace A261792.P15740581189978020374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128913 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261792.P15740581189978020374

noncomputable section

/-- A261792: Primes of the form k*pi(k) - 1, where pi(k) is the number of primes <= k.

Offset 1, canonical program `A261792.P15740581189978020374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. -/
def A261792 (n : ℕ) : ℤ :=
  A261792.P15740581189978020374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. -/
def A261792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261869.P11309295285550165440

`Δ[A055615(n+1)]`
-/

namespace A261869.P11309295285550165440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P11309295285550165440

noncomputable section

/-- A261869: First differences of A055615.

Offset 1, canonical program `A261869.P11309295285550165440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261869 (n : ℕ) : ℤ :=
  A261869.P11309295285550165440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261884.P17761053337338084082

`A112848(n+1)/A177702(n)`
-/

namespace A261884.P17761053337338084082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (n + 1) : ℚ) / (A177702 n : ℚ)

end

end A261884.P17761053337338084082

noncomputable section

/-- A261884: Expansion of (a(q) - a(q^2) - 2*a(q^3) + 2*a(q^6)) / 6 in powers of q where a() is a cubic AGM function.

Offset 1, canonical program `A261884.P17761053337338084082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A261884.P17761053337338084082.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262085.P10166447916415025632

`eq[A082023(n+8), A082023(n)]`
-/

namespace A262085.P10166447916415025632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262085.P10166447916415025632

noncomputable section

/-- A262085: Numbers n such that phi(n + 8) = phi(n) + 8 where phi(n) = A000010(n) is Euler's totient function.

Offset 1, canonical program `A262085.P10166447916415025632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A262085 (n : ℕ) : ℤ :=
  (A262085.P10166447916415025632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A262085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262138.P14630279561213022384

`A109763(1+n)-A062234(A080513(n))`
-/

namespace A262138.P14630279561213022384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (1 + n) - A062234 (A080513 n).toNat

end

end A262138.P14630279561213022384

noncomputable section

/-- A262138: Interleaved first and second differences of the prime numbers.

Offset 1, canonical program `A262138.P14630279561213022384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262138 (n : ℕ) : ℤ :=
  A262138.P14630279561213022384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262248.P6925392583546764891

`C(A006005(n+1), 4)`
-/

namespace A262248.P6925392583546764891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006005 (n + 1)).toNat 4

end

end A262248.P6925392583546764891

noncomputable section

/-- A262248: Number of intersections of diagonals in the interior of a regular p-gon where p is the n-th prime.

Offset 1, canonical program `A262248.P6925392583546764891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262248 (n : ℕ) : ℤ :=
  (A262248.P6925392583546764891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262543.P13500433892424337736

`2*(A141351(n)-1)`
-/

namespace A262543.P13500433892424337736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A141351 n - 1)

end

end A262543.P13500433892424337736

noncomputable section

/-- A262543: Number of rooted asymmetrical polyenoids of type U_n* having n edges.

Offset 1, canonical program `A262543.P13500433892424337736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A262543 (n : ℕ) : ℤ :=
  A262543.P13500433892424337736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A262543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262717.P11064767684716280499

`A174687(n)%A264772(A000124(n))`
-/

namespace A262717.P11064767684716280499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174687 n) (A264772 (A000124 n).toNat)

end

end A262717.P11064767684716280499

noncomputable section

/-- A262717: a(n) = (n-1)*binomial(3*n-2,n)/(2*n-1) + (n+1)*binomial(3*n,n)/(2*n+1) - binomial(3*n-1,n).

Offset 0, canonical program `A262717.P11064767684716280499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A262717 (n : ℕ) : ℤ :=
  A262717.P11064767684716280499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A262717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262720.P7657853626115152366

`A014531(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A262720.P7657853626115152366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014531 (n + 1) - a (n - 1)

end

end A262720.P7657853626115152366

noncomputable section

/-- A262720: a(n) = Sum_{k=0..n/2} binomial(n+3,k)*binomial(n+1-k,k+1).

Offset 0, canonical program `A262720.P7657853626115152366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A262720 (n : ℕ) : ℤ :=
  A262720.P7657853626115152366.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A262720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262808.P9571554599653427594

`A071028(gcd(n, A027656(n)))`
-/

namespace A262808.P9571554599653427594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (Int.gcd (n : ℤ) (A027656 n))

end

end A262808.P9571554599653427594

noncomputable section

/-- A262808: Triangle read by rows giving successive states of cellular automaton generated by "Rule 147" initiated with a single ON (black) cell.

Offset 0, canonical program `A262808.P9571554599653427594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262808 (n : ℕ) : ℤ :=
  A262808.P9571554599653427594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262867.P11260331152945562372

`A171378(n)+1`
-/

namespace A262867.P11260331152945562372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171378 n + 1

end

end A262867.P11260331152945562372

noncomputable section

/-- A262867: Total number of ON (black) cells after n iterations of the "Rule 153" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A262867.P11260331152945562372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262867 (n : ℕ) : ℤ :=
  A262867.P11260331152945562372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263204.P2115118568935714077

`A071538((n+3)²)-A071538((n+1)²)`
-/

namespace A263204.P2115118568935714077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 ((n + 3) ^ 2) - A071538 ((n + 1) ^ 2)

end

end A263204.P2115118568935714077

noncomputable section

/-- A263204: Number of twin prime pairs between n^2 and (n+2)^2.

Offset 1, canonical program `A263204.P2115118568935714077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A263204 (n : ℕ) : ℤ :=
  A263204.P2115118568935714077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A263204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263529.P3881219160965345252

`Δ[A187044(n)]`
-/

namespace A263529.P3881219160965345252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263529.P3881219160965345252

noncomputable section

/-- A263529: Binomial transform of double factorial n!! (A006882).

Offset 0, canonical program `A263529.P3881219160965345252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A263529 (n : ℕ) : ℤ :=
  A263529.P3881219160965345252.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A263529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263548.P11786149498966106099

`A192013(3*n+2)`
-/

namespace A263548.P11786149498966106099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (3 * n + 2)

end

end A263548.P11786149498966106099

noncomputable section

/-- A263548: Expansion of f(x, x) * f(x^2, x^10) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A263548.P11786149498966106099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263548 (n : ℕ) : ℤ :=
  A263548.P11786149498966106099.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263571.P16011491440306678864

`A192013(3*n+1)`
-/

namespace A263571.P16011491440306678864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (3 * n + 1)

end

end A263571.P16011491440306678864

noncomputable section

/-- A263571: Expansion of f(x^2, x^2) * f(x, x^5) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A263571.P16011491440306678864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263571 (n : ℕ) : ℤ :=
  A263571.P16011491440306678864.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192013, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263729.P8218952625031793335

`p?[lt[A072627(n+1), 1]+2]`
-/

namespace A263729.P8218952625031793335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A263729.P8218952625031793335

noncomputable section

/-- A263729: Primes p where (p - 1)/k - 1 is not prime for any integer k >= 1.

Offset 1, canonical program `A263729.P8218952625031793335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A263729 (n : ℕ) : ℤ :=
  (A263729.P8218952625031793335.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A263729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263826.P15511005818763180610

`∑{d}[n+1, A000203(#)*A236283((n+1)/#)]`
-/

namespace A263826.P15511005818763180610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A236283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263826.P15511005818763180610

noncomputable section

/-- A263826: The number c_{Z3 pi_1(B_1)}(2n) of 3-torus 2n-coverings over the first amphicosm.

Offset 1, canonical program `A263826.P15511005818763180610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263826 (n : ℕ) : ℤ :=
  A263826.P15511005818763180610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263843.P1600026452523982827

`(2*A078531(n))%A085614(n+1)`
-/

namespace A263843.P1600026452523982827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A078531 n) (A085614 (n + 1))

end

end A263843.P1600026452523982827

noncomputable section

/-- A263843: Reversion of g.f. for A162395 (squares with signs).

Offset 0, canonical program `A263843.P1600026452523982827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A263843 (n : ℕ) : ℤ :=
  A263843.P1600026452523982827.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A263843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263844.P203203564096424831

`2-(A188374(n+1)+A080764(n))`
-/

namespace A263844.P203203564096424831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A188374 (n + 1) + A080764 n)

end

end A263844.P203203564096424831

noncomputable section

/-- A263844: Constant term in expansion of n in Fraenkel's exotic ternary representation.

Offset 1, canonical program `A263844.P203203564096424831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263844 (n : ℕ) : ℤ :=
  A263844.P203203564096424831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264054.P3050985151313136823

`A006500(Δ[n²])`
-/

namespace A264054.P3050985151313136823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A264054.P3050985151313136823

noncomputable section

/-- A264054: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

Offset 1, canonical program `A264054.P3050985151313136823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A264054 (n : ℕ) : ℤ :=
  A264054.P3050985151313136823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A264054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264091.P17815593426725919287

`abs(A097948(n+1))*A020695(n)`
-/

namespace A264091.P17815593426725919287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097948 (n + 1)| * A020695 n

end

end A264091.P17815593426725919287

noncomputable section

/-- A264091: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

Offset 1, canonical program `A264091.P17815593426725919287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A264091 (n : ℕ) : ℤ :=
  A264091.P17815593426725919287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A264091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264184.P10399417770699243344

`A031923(3*(n+1))`
-/

namespace A264184.P10399417770699243344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (3 * (n + 1))

end

end A264184.P10399417770699243344

noncomputable section

/-- A264184: Number of (n+1)X(2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,-1 or 2,2.

Offset 1, canonical program `A264184.P10399417770699243344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A264184 (n : ℕ) : ℤ :=
  A264184.P10399417770699243344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A264184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264202.P8990464749144740541

`Δ[A020706(n)]*A006253(n+2)`
-/

namespace A264202.P8990464749144740541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006253 (n + 2)

end

end A264202.P8990464749144740541

noncomputable section

/-- A264202: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,2 or 1,0.

Offset 1, canonical program `A264202.P8990464749144740541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A264202 (n : ℕ) : ℤ :=
  A264202.P8990464749144740541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A264202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264357.P4841253329854367094

`A110813(n)-A131085(n)`
-/

namespace A264357.P4841253329854367094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n - A131085 n

end

end A264357.P4841253329854367094

noncomputable section

/-- A264357: Array A(r, n) of number of independent components of a symmetric traceless tensor of rank r and dimension n, written as triangle T(n, r) = A(r, n-r+2), n >= 1, r = 2..n+1.

Offset 1, canonical program `A264357.P4841253329854367094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264357 (n : ℕ) : ℤ :=
  A264357.P4841253329854367094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264802.P4268355736184422513

`A137688(n)+A130321(n)`
-/

namespace A264802.P4268355736184422513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + A130321 n

end

end A264802.P4268355736184422513

noncomputable section

/-- A264802: Position of the n largest occurrences of a shortest addition chain of length n in A003313, written as a triangle.

Offset 1, canonical program `A264802.P4268355736184422513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264802 (n : ℕ) : ℤ :=
  A264802.P4268355736184422513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264847.P13254268273261031608

`∑[∑[A059939(A080686(2+n))]]`
-/

namespace A264847.P13254268273261031608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A080686 (2 + n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264847.P13254268273261031608

noncomputable section

/-- A264847: Pluritriangular numbers: a(0) = 0; a(n+1) = a(n) + the number of digits in terms a(0)..a(n).

Offset 0, canonical program `A264847.P13254268273261031608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A264847 (n : ℕ) : ℤ :=
  A264847.P13254268273261031608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A264847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265263.P13560857298709796040

`and(n, A066194(n+1)-1)`
-/

namespace A265263.P13560857298709796040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A066194 (n + 1) - 1)

end

end A265263.P13560857298709796040

noncomputable section

/-- A265263: Change every other 1 bit in binary expansion of n to 0.

Offset 0, canonical program `A265263.P13560857298709796040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A265263 (n : ℕ) : ℤ :=
  A265263.P13560857298709796040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A265263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265359.P15668175611696395647

`a(n-1)+A240025(n)+A240025(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A265359.P15668175611696395647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + A240025 n + A240025 (n - 1)

end

end A265359.P15668175611696395647

noncomputable section

/-- A265359: Spiralwise distance to the nearest inner neighbor in Ulam-style square-spirals using zero-based indexing: a(0) = 0, for n >= 1, a(n) = n - A265409(n).

Offset 0, canonical program `A265359.P15668175611696395647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265359 (n : ℕ) : ℤ :=
  A265359.P15668175611696395647.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265410.P7138294630023427214

`a(n-1)+(1-A240025(n-1))*(1-A240025(n))` with `a(0)=0, a(1)=1`
-/

namespace A265410.P7138294630023427214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (1 - A240025 (n - 1)) * (1 - A240025 n)

end

end A265410.P7138294630023427214

noncomputable section

/-- A265410: a(n) = one-based index to the nearest horizontally or vertically adjacent inner neighbor in square-grid spirals, and to the nearest diagonally adjacent inner neighbor when n is one of the corner cases A033638.

Offset 1, canonical program `A265410.P7138294630023427214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265410 (n : ℕ) : ℤ :=
  A265410.P7138294630023427214.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265609.P16748235149498157221

`A114219(n)!*A071919(n)`
-/

namespace A265609.P16748235149498157221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A114219 n).toNat : ℤ) * A071919 n

end

end A265609.P16748235149498157221

noncomputable section

/-- A265609: Array read by ascending antidiagonals: A(n,k) the rising factorial, also known as Pochhammer symbol, for n >= 0 and k >= 0.

Offset 0, canonical program `A265609.P16748235149498157221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A265609 (n : ℕ) : ℤ :=
  A265609.P16748235149498157221.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A265609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265610.P12741386361720664927

`A029651(n)-A005807(n)`
-/

namespace A265610.P12741386361720664927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n - A005807 n

end

end A265610.P12741386361720664927

noncomputable section

/-- A265610: a(n) = rf(n, n+2)/(n+2)! - rf(n, n)/n!, rf the rising factorial A265609.

Offset 0, canonical program `A265610.P12741386361720664927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A265610 (n : ℕ) : ℤ :=
  A265610.P12741386361720664927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A265610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265711.P15707034598538859304

`A266227(a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A265711.P15707034598538859304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266227 (a (n - 1) + 1).toNat + a (n - 1)

end

end A265711.P15707034598538859304

noncomputable section

/-- A265711: Numbers n such that floor(Sum_{d|n} 1 / sigma(d)) = 1.

Offset 1, canonical program `A265711.P15707034598538859304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265711 (n : ℕ) : ℤ :=
  A265711.P15707034598538859304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265712.P4281004375783898549

`eq[2, A266227(n+1)]+1`
-/

namespace A265712.P4281004375783898549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265712.P4281004375783898549

noncomputable section

/-- A265712: Numbers n such that floor(Sum_{d|n} 1 / sigma(d)) = 2.

Offset 1, canonical program `A265712.P4281004375783898549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. -/
def A265712 (n : ℕ) : ℤ :=
  (A265712.P4281004375783898549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. -/
def A265712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266188.P8279762912778917924

`A004001(A087686(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266188.P8279762912778917924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A087686 (n + 1)).toNat

end

end A266188.P8279762912778917924

noncomputable section

/-- A266188: a(n) = A004001(A087686(n)).

Offset 1, canonical program `A266188.P8279762912778917924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266188 (n : ℕ) : ℤ :=
  A266188.P8279762912778917924.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266341.P9671448473235777529

`A053644(A038554(n))+n-A053644(n)`
-/

namespace A266341.P9671448473235777529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A038554 n).toNat + ((n : ℤ) - A053644 n)

end

end A266341.P9671448473235777529

noncomputable section

/-- A266341: If A036987(n) = 1, a(n) = n - A053644(n), otherwise a(n) = n - A053644(n) + 2^(A063250(n)-1).

Offset 0, canonical program `A266341.P9671448473235777529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266341 (n : ℕ) : ℤ :=
  A266341.P9671448473235777529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266532.P17179654325174085964

`A160722(n)+ceil(n*sin(11))`
-/

namespace A266532.P17179654325174085964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160722 n + ⌈(n : ℝ) * Real.sin (11 : ℝ)⌉

end

end A266532.P17179654325174085964

noncomputable section

/-- A266532: Total number of Y-toothpicks after n-th stage in the "outward" version of the cellular automaton of A160120.

Offset 0, canonical program `A266532.P17179654325174085964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266532 (n : ℕ) : ℤ :=
  A266532.P17179654325174085964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266533.P8653958680206889612

`or(1, A160713(n)-3)`
-/

namespace A266533.P8653958680206889612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A160713 n - 3)

end

end A266533.P8653958680206889612

noncomputable section

/-- A266533: First differences of A266532.

Offset 1, canonical program `A266533.P8653958680206889612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266533 (n : ℕ) : ℤ :=
  A266533.P8653958680206889612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266978.P11450421611937941305

`A376583(A037458(n+1))`
-/

namespace A266978.P11450421611937941305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376583 (A037458 (n + 1)).toNat

end

end A266978.P11450421611937941305

noncomputable section

/-- A266978: Triangle read by rows giving successive states of cellular automaton generated by "Rule 79" initiated with a single ON (black) cell.

Offset 0, canonical program `A266978.P11450421611937941305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266978 (n : ℕ) : ℤ :=
  A266978.P11450421611937941305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266980.P14525064463920435922

`A266668(n)+A001045(n)`
-/

namespace A266980.P14525064463920435922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266668 n + A001045 n

end

end A266980.P14525064463920435922

noncomputable section

/-- A266980: Decimal representation of the n-th iteration of the "Rule 79" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266980.P14525064463920435922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266980 (n : ℕ) : ℤ :=
  A266980.P14525064463920435922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267034.P4851684498594056330

`A266982((n+1)%(2*n+1))`
-/

namespace A267034.P4851684498594056330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 ((n + 1) % (2 * n + 1))

end

end A267034.P4851684498594056330

noncomputable section

/-- A267034: Triangle read by rows giving successive states of cellular automaton generated by "Rule 85" initiated with a single ON (black) cell.

Offset 0, canonical program `A267034.P4851684498594056330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267034 (n : ℕ) : ℤ :=
  A267034.P4851684498594056330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267068.P17504432387453911525

`(n+1)/A189733(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267068.P17504432387453911525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A189733 n : ℚ)

end

end A267068.P17504432387453911525

noncomputable section

/-- A267068: a(n) = (n+1) / A189733(n).

Offset 0, canonical program `A267068.P17504432387453911525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267068 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A267068.P17504432387453911525.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267097.P13453783086901025802

`∑[A098033(n+1)]-1`
-/

namespace A267097.P13453783086901025802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A267097.P13453783086901025802

noncomputable section

/-- A267097: a(n) = number of 4k+1 primes among first n primes; least monotonic left inverse of A080147.

Offset 1, canonical program `A267097.P13453783086901025802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267097 (n : ℕ) : ℤ :=
  A267097.P13453783086901025802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267134.P15213870686594157141

`Δ[n²]-eq[5, A039704(n+3)]`
-/

namespace A267134.P15213870686594157141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A267134.P15213870686594157141

noncomputable section

/-- A267134: a(n) = n minus the number of primes of form 6m + 1 that are less than n-th prime of form 6m - 1.

Offset 1, canonical program `A267134.P15213870686594157141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267134 (n : ℕ) : ℤ :=
  A267134.P15213870686594157141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267145.P8428845315151898512

`(A027907(n)+A000196(n))%2`
-/

namespace A267145.P8428845315151898512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027907 n + A000196 n) 2

end

end A267145.P8428845315151898512

noncomputable section

/-- A267145: Triangle read by rows giving successive states of cellular automaton generated by "Rule 105" initiated with a single ON (black) cell.

Offset 0, canonical program `A267145.P8428845315151898512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267145 (n : ℕ) : ℤ :=
  A267145.P8428845315151898512.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267271.P1576574748171931790

`or(A029744(A016777(n)), A267003(n))`
-/

namespace A267271.P1576574748171931790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029744 (A016777 n).toNat) (A267003 n)

end

end A267271.P1576574748171931790

noncomputable section

/-- A267271: Decimal representation of the n-th iteration of the "Rule 115" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267271.P1576574748171931790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267271 (n : ℕ) : ℤ :=
  A267271.P1576574748171931790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267351.P7254378362285730718

`or(A146523(n), A266668(n))`
-/

namespace A267351.P7254378362285730718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146523 n) (A266668 n)

end

end A267351.P7254378362285730718

noncomputable section

/-- A267351: Decimal representation of the n-th iteration of the "Rule 123" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267351.P7254378362285730718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267351 (n : ℕ) : ℤ :=
  A267351.P7254378362285730718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267421.P8160187547805568179

`p?[A004232(n+1)+1+n]`
-/

namespace A267421.P8160187547805568179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004232 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P8160187547805568179

noncomputable section

/-- A267421: Primes of the form prime(n) + n + n^2.

Offset 1, canonical program `A267421.P8160187547805568179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A267421 (n : ℕ) : ℤ :=
  A267421.P8160187547805568179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A267421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267443.P4725894432829547169

`A043545(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A267443.P4725894432829547169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A043545 n + 10 * a (n - 1)

end

end A267443.P4725894432829547169

noncomputable section

/-- A267443: Binary representation of the middle column of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267443.P4725894432829547169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267443 (n : ℕ) : ℤ :=
  A267443.P4725894432829547169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267533.P12377575930394932186

`A152822(C(5, A053186(n)))`
-/

namespace A267533.P12377575930394932186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (Nat.choose 5 (A053186 n).toNat)

end

end A267533.P12377575930394932186

noncomputable section

/-- A267533: Triangle read by rows giving successive states of cellular automaton generated by "Rule 143" initiated with a single ON (black) cell.

Offset 0, canonical program `A267533.P12377575930394932186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267533 (n : ℕ) : ℤ :=
  A267533.P12377575930394932186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267605.P324515188696850996

`(∑[∑[A034870(n)]]+n)%2`
-/

namespace A267605.P324515188696850996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) 2

end

end A267605.P324515188696850996

noncomputable section

/-- A267605: Triangle read by rows giving successive states of cellular automaton generated by "Rule 181" initiated with a single ON (black) cell.

Offset 0, canonical program `A267605.P324515188696850996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267605 (n : ℕ) : ℤ :=
  A267605.P324515188696850996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267675.P16119488282880190552

`and(-A001317(n), A095121(2*n))`
-/

namespace A267675.P16119488282880190552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A001317 n) (A095121 (2 * n))

end

end A267675.P16119488282880190552

noncomputable section

/-- A267675: Decimal representation of the n-th iteration of the "Rule 195" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267675.P16119488282880190552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267675 (n : ℕ) : ℤ :=
  A267675.P16119488282880190552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267700.P3416915831248695542

`(A160720(n+1)-1)/4`
-/

namespace A267700.P3416915831248695542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160720 (n + 1) - 1 : ℚ) / 4

end

end A267700.P3416915831248695542

noncomputable section

/-- A267700: "Tree" sequence in a 90-degree sector of the cellular automaton of A160720.

Offset 0, canonical program `A267700.P3416915831248695542`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267700 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A267700.P3416915831248695542.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267700.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267729.P4113010895853328698

`Δ[A023610(n)]²`
-/

namespace A267729.P4113010895853328698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A267729.P4113010895853328698

noncomputable section

/-- A267729: Number of n X 2 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

Offset 1, canonical program `A267729.P4113010895853328698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A267729 (n : ℕ) : ℤ :=
  A267729.P4113010895853328698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A267729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267730.P9907999590693264910

`Δ[A023610(n)]^3`
-/

namespace A267730.P9907999590693264910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A267730.P9907999590693264910

noncomputable section

/-- A267730: Number of nX3 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

Offset 1, canonical program `A267730.P9907999590693264910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A267730 (n : ℕ) : ℤ :=
  A267730.P9907999590693264910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A267730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267773.P6472055355787003497

`C(n, A245552(n)²)`
-/

namespace A267773.P6472055355787003497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A245552 n ^ 2).toNat

end

end A267773.P6472055355787003497

noncomputable section

/-- A267773: Triangle read by rows giving successive states of cellular automaton generated by "Rule 207" initiated with a single ON (black) cell.

Offset 0, canonical program `A267773.P6472055355787003497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267773 (n : ℕ) : ℤ :=
  (A267773.P6472055355787003497.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267800.P2365698362491411621

`A267776(a(n-3)+n)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A267800.P2365698362491411621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A267776 (a (n - 3) + (n : ℤ)).toNat

end

end A267800.P2365698362491411621

noncomputable section

/-- A267800: Triangle read by rows giving successive states of cellular automaton generated by "Rule 213" initiated with a single ON (black) cell.

Offset 0, canonical program `A267800.P2365698362491411621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267800 (n : ℕ) : ℤ :=
  A267800.P2365698362491411621.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267810.P5765769009516729792

`A267683(n*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A267810.P5765769009516729792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A267683 ((n : ℤ) * a (n - 2)).toNat

end

end A267810.P5765769009516729792

noncomputable section

/-- A267810: Triangle read by rows giving successive states of cellular automaton generated by "Rule 217" initiated with a single ON (black) cell.

Offset 0, canonical program `A267810.P5765769009516729792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267810 (n : ℕ) : ℤ :=
  A267810.P5765769009516729792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267891.P13368573259135657762

`eq[16, A054844(n+1)]+1`
-/

namespace A267891.P13368573259135657762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A267891.P13368573259135657762

noncomputable section

/-- A267891: Numbers with 8 odd divisors.

Offset 1, canonical program `A267891.P13368573259135657762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267891 (n : ℕ) : ℤ :=
  (A267891.P13368573259135657762.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267991.P17804240115584663066

`a(n-2)+A226881(n+1)+1` with `a(0)=1, a(1)=4`
-/

namespace A267991.P17804240115584663066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (A226881 (n + 1) + 1)

end

end A267991.P17804240115584663066

noncomputable section

/-- A267991: Number of 2Xn arrays containing n copies of 0..2-1 with row sums and column sums nondecreasing.

Offset 1, canonical program `A267991.P17804240115584663066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267991 (n : ℕ) : ℤ :=
  A267991.P17804240115584663066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268174.P3160749783044655820

`eq[A001057(n), A213381(n)]`
-/

namespace A268174.P3160749783044655820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268174.P3160749783044655820

noncomputable section

/-- A268174: Integers m such that m^(m+1) == 1 (modulo (m+2)).

Offset 1, canonical program `A268174.P3160749783044655820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268174 (n : ℕ) : ℤ :=
  (A268174.P3160749783044655820.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268231.P13230118980298299093

`lt[A000217(A080098(n)), n+1]`
-/

namespace A268231.P13230118980298299093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A080098 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268231.P13230118980298299093

noncomputable section

/-- A268231: Indices of 1's in A047999.

Offset 1, canonical program `A268231.P13230118980298299093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7699 terms. -/
def A268231 (n : ℕ) : ℤ :=
  (A268231.P13230118980298299093.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7699 terms. -/
def A268231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268232.P6386950122841436999

`lt[n, A000217(A080098(n))]`
-/

namespace A268232.P6386950122841436999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A080098 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268232.P6386950122841436999

noncomputable section

/-- A268232: Indices of 0's in A047999.

Offset 1, canonical program `A268232.P6386950122841436999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268232 (n : ℕ) : ℤ :=
  (A268232.P6386950122841436999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268370.P12788103030648664107

`∑[A000344(n+3)-A099376(n)]`
-/

namespace A268370.P12788103030648664107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 3) - A099376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268370.P12788103030648664107

noncomputable section

/-- A268370: Number of North-East lattice paths from (0,0) to (n,n) that have exactly three east steps below the subdiagonal y = x-1.

Offset 4, canonical program `A268370.P12788103030648664107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A268370 (n : ℕ) : ℤ :=
  A268370.P12788103030648664107.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A268370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268444.P5634643260865107777

`∏{digits}[A007090(n), #+1]`
-/

namespace A268444.P5634643260865107777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A268444.P5634643260865107777

noncomputable section

/-- A268444: a(n) = Product_{i=0..k}(n_i+1) where n = Sum_{i=0..k}n_i*4^i is the base-4 representation of n.

Offset 0, canonical program `A268444.P5634643260865107777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268444 (n : ℕ) : ℤ :=
  (A268444.P5634643260865107777.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268447.P7684583934776672033

`A128899(A000124(n+9)+8)`
-/

namespace A268447.P7684583934776672033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A000124 (n + 9) + 8).toNat

end

end A268447.P7684583934776672033

noncomputable section

/-- A268447: Number of North-East lattice paths from (0,0) to (n,n) that cross the diagonal y = x horizontally exactly four times.

Offset 8, canonical program `A268447.P7684583934776672033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A268447 (n : ℕ) : ℤ :=
  A268447.P7684583934776672033.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A268447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268614.P14161750680680178419

`p?[A007675(n+1)]`
-/

namespace A268614.P14161750680680178419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268614.P14161750680680178419

noncomputable section

/-- A268614: Primes p such that p + 1 and p + 2 are squarefree.

Offset 1, canonical program `A268614.P14161750680680178419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2089 terms. -/
def A268614 (n : ℕ) : ℤ :=
  A268614.P14161750680680178419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2089 terms. -/
def A268614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268744.P7767334516591821469

`A286814(n+1)+A001333(n)`
-/

namespace A268744.P7767334516591821469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286814 (n + 1) + A001333 n

end

end A268744.P7767334516591821469

noncomputable section

/-- A268744: Number of n X 2 binary arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

Offset 1, canonical program `A268744.P7767334516591821469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A268744 (n : ℕ) : ℤ :=
  A268744.P7767334516591821469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A268744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268775.P165643180478746125

`A093835(n)+A079859(n+4)`
-/

namespace A268775.P165643180478746125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093835 n + A079859 (n + 4)

end

end A268775.P165643180478746125

noncomputable section

/-- A268775: Number of n X 2 binary arrays with some element plus some horizontally, vertically, diagonally or antidiagonally adjacent neighbor totalling two no more than once.

Offset 1, canonical program `A268775.P165643180478746125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A268775 (n : ℕ) : ℤ :=
  A268775.P165643180478746125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A268775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268836.P2302670208971616926

`∑[2*(A066194(n+1)-1)]`
-/

namespace A268836.P2302670208971616926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066194 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P2302670208971616926

noncomputable section

/-- A268836: Antidiagonal sums of array A268714: a(n) = Sum_{k=0..n} A006068(n)+A006068(n-k).

Offset 0, canonical program `A268836.P2302670208971616926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268836 (n : ℕ) : ℤ :=
  A268836.P2302670208971616926.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268900.P15039982914417740740

`6*A229582(n+1)`
-/

namespace A268900.P15039982914417740740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229582 (n + 1)

end

end A268900.P15039982914417740740

noncomputable section

/-- A268900: Number of n X 4 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

Offset 1, canonical program `A268900.P15039982914417740740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268900 (n : ℕ) : ℤ :=
  A268900.P15039982914417740740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268922.P7597364741946538744

`(2*A048899(n))%A000351(n)`
-/

namespace A268922.P7597364741946538744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A048899 n) (A000351 n)

end

end A268922.P7597364741946538744

noncomputable section

/-- A268922: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-4). These are the 1 mod 5 numbers, except for n = 0.

Offset 0, canonical program `A268922.P7597364741946538744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A268922 (n : ℕ) : ℤ :=
  A268922.P7597364741946538744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A268922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269054.P16165861731754942575

`A269037(n+1)+A232922(n+1)`
-/

namespace A269054.P16165861731754942575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269037 (n + 1) + A232922 (n + 1)

end

end A269054.P16165861731754942575

noncomputable section

/-- A269054: Number of 3 X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

Offset 1, canonical program `A269054.P16165861731754942575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A269054 (n : ℕ) : ℤ :=
  A269054.P16165861731754942575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A269054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269170.P17493611970187058046

`A003986(C(n+(n-A000035(n))/2+1, 2)+n)`
-/

namespace A269170.P17493611970187058046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (Nat.choose (SequenceMachineLib.roundAway ((n : ℚ) + ((n : ℤ) - A000035 n : ℚ) / 2 + 1)).toNat 2 + n)

end

end A269170.P17493611970187058046

noncomputable section

/-- A269170: a(n) = n OR floor(n/2), where OR is bitwise-OR (A003986).

Offset 0, canonical program `A269170.P17493611970187058046`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269170 (n : ℕ) : ℤ :=
  A269170.P17493611970187058046.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269246.P11189101600261398533

`∑{digits}[n*n², A085862(#)]`
-/

namespace A269246.P11189101600261398533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A085862 x).sum

end

end A269246.P11189101600261398533

noncomputable section

/-- A269246: Number of times the digit 6 appears in the decimal expansion of n^3.

Offset 0, canonical program `A269246.P11189101600261398533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269246 (n : ℕ) : ℤ :=
  A269246.P11189101600261398533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269250.P13199977431476461355

`∑{digits}[n^3, C(2, A006254(#+1))]`
-/

namespace A269250.P13199977431476461355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose 2 (A006254 (x + 1)).toNat).sum

end

end A269250.P13199977431476461355

noncomputable section

/-- A269250: Number of times the digit 0 appears in the decimal expansion of n^3.

Offset 0, canonical program `A269250.P13199977431476461355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269250 (n : ℕ) : ℤ :=
  (A269250.P13199977431476461355.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269381.P1411983519145448973

`∑[char[A233271(n+1)]]`
-/

namespace A269381.P1411983519145448973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269381.P1411983519145448973

noncomputable section

/-- A269381: Least monotonic left inverse of A233271.

Offset 0, canonical program `A269381.P1411983519145448973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A269381 (n : ℕ) : ℤ :=
  (A269381.P1411983519145448973.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A269381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269390.P13967432364545519165

`comp[A233271(n)]`
-/

namespace A269390.P13967432364545519165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A269390.P13967432364545519165

noncomputable section

/-- A269390: Complement of A233271.

Offset 1, canonical program `A269390.P13967432364545519165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269390 (n : ℕ) : ℤ :=
  (A269390.P13967432364545519165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269594.P601689813181141290

`(A269590(n)²+4)/5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269594.P601689813181141290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269590 n ^ 2 + 4 : ℚ) / (5 ^ n : ℚ)

end

end A269594.P601689813181141290

noncomputable section

/-- A269594: a(n) = (A269590(n)^2 + 4)/5^n, n >= 0.

Offset 0, canonical program `A269594.P601689813181141290`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269594 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A269594.P601689813181141290.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269601.P14206171943154091293

`A175654(n+1)+A175654(n)+A001787(n)`
-/

namespace A269601.P14206171943154091293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175654 (n + 1) + (A175654 n + A001787 n)

end

end A269601.P14206171943154091293

noncomputable section

/-- A269601: Number of length-n 0..2 arrays with no repeated value differing from the previous repeated value by one or less.

Offset 1, canonical program `A269601.P14206171943154091293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A269601 (n : ℕ) : ℤ :=
  A269601.P14206171943154091293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A269601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269849.P9914812276268584730

`∑[(A006094(n+1)%3+1)%2]`
-/

namespace A269849.P9914812276268584730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A006094 (n + 1)) 3 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269849.P9914812276268584730

noncomputable section

/-- A269849: a(n) = number of integers k <= n for which prime(k+1)-prime(k) is not a multiple of three.

Offset 1, canonical program `A269849.P9914812276268584730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269849 (n : ℕ) : ℤ :=
  A269849.P9914812276268584730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269903.P4765007722614101742

`eq[4, and(6, A126084(n))]`
-/

namespace A269903.P4765007722614101742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A126084 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269903.P4765007722614101742

noncomputable section

/-- A269903: Integers n such that A002110(n) / 2 is the sum of 4 but no fewer nonzero squares.

Offset 1, canonical program `A269903.P4765007722614101742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A269903 (n : ℕ) : ℤ :=
  (A269903.P4765007722614101742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A269903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270131.P3903911104145321744

`A270089(n)+4%A053439(n)`
-/

namespace A270131.P3903911104145321744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270089 n + Int.tmod 4 (A053439 n)

end

end A270131.P3903911104145321744

noncomputable section

/-- A270131: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270131.P3903911104145321744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3339 terms. -/
def A270131 (n : ℕ) : ℤ :=
  A270131.P3903911104145321744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3339 terms. -/
def A270131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270189.P472065122293905227

`lt[0, A001223(n+1)%3]+1`
-/

namespace A270189.P472065122293905227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A270189.P472065122293905227

noncomputable section

/-- A270189: Numbers n for which (prime(n+1)-prime(n)) is not a multiple of three.

Offset 1, canonical program `A270189.P472065122293905227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270189 (n : ℕ) : ℤ :=
  (A270189.P472065122293905227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270192.P15087363916483575460

`lt[1, A001223(n+1)%3]+1`
-/

namespace A270192.P15087363916483575460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A270192.P15087363916483575460

noncomputable section

/-- A270192: Numbers n for which (prime(n+1)-prime(n)) mod 3 = 2.

Offset 1, canonical program `A270192.P15087363916483575460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270192 (n : ℕ) : ℤ :=
  (A270192.P15087363916483575460.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270200.P3592585650237564585

`∪[A001015(n), A233273(n)]`
-/

namespace A270200.P3592585650237564585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270200.P3592585650237564585

noncomputable section

/-- A270200: a(0) = 0; for n >= 1, a(n) = A054429(A005187(1+A054429(n-1))).

Offset 0, canonical program `A270200.P3592585650237564585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270200 (n : ℕ) : ℤ :=
  (A270200.P3592585650237564585.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270298.P12968977381553057789

`4*A008364(n+2)`
-/

namespace A270298.P12968977381553057789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008364 (n + 2)

end

end A270298.P12968977381553057789

noncomputable section

/-- A270298: Numbers which are representable as a sum of eight but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270298.P12968977381553057789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270298 (n : ℕ) : ℤ :=
  A270298.P12968977381553057789.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270298.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270299.P14931526767613465720

`88*A236206(n+1)`
-/

namespace A270299.P14931526767613465720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  88 * A236206 (n + 1)

end

end A270299.P14931526767613465720

noncomputable section

/-- A270299: Numbers which are representable as a sum of eleven but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270299.P14931526767613465720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236206, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270299 (n : ℕ) : ℤ :=
  A270299.P14931526767613465720.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236206, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270342.P12478377227330995864

`eq[0, A270388(n+2)]+2`
-/

namespace A270342.P12478377227330995864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270388 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A270342.P12478377227330995864

noncomputable section

/-- A270342: Positive integers n such that the sum of the Pell numbers A000129(0) + ... + A000129(n-1) is divisible by n.

Offset 1, canonical program `A270342.P12478377227330995864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270342 (n : ℕ) : ℤ :=
  (A270342.P12478377227330995864.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270384.P1537396231614344993

`p?[ceil(A001749(n+1)/3)]`
-/

namespace A270384.P1537396231614344993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001749 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270384.P1537396231614344993

noncomputable section

/-- A270384: Primes p such that (3/4)(p + 1) - 1 is also prime.

Offset 1, canonical program `A270384.P1537396231614344993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270384 (n : ℕ) : ℤ :=
  A270384.P1537396231614344993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270440.P8383876616977072034

`round(sqrt(A028329(n)))+1`
-/

namespace A270440.P8383876616977072034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A028329 n : ℝ)) + 1

end

end A270440.P8383876616977072034

noncomputable section

/-- A270440: Least k such that binomial(k, 2) >= binomial(2*n, n).

Offset 0, canonical program `A270440.P8383876616977072034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A270440 (n : ℕ) : ℤ :=
  A270440.P8383876616977072034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A270440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270569.P10346104095745154860

`A269782(n)+A063524(n)`
-/

namespace A270569.P10346104095745154860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 n + A063524 n

end

end A270569.P10346104095745154860

noncomputable section

/-- A270569: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 323", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270569.P10346104095745154860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3220 terms. -/
def A270569 (n : ℕ) : ℤ :=
  A270569.P10346104095745154860.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3220 terms. -/
def A270569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270683.P14854626860996153548

`∑[n²+A266662(n)+A130824(n)]`
-/

namespace A270683.P14854626860996153548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A266662 n + A130824 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270683.P14854626860996153548

noncomputable section

/-- A270683: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 190", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270683.P14854626860996153548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3831 terms. -/
def A270683 (n : ℕ) : ℤ :=
  A270683.P14854626860996153548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3831 terms. -/
def A270683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270702.P2634944618740460900

`A123346(n)-Δ[A123346(n)]*A025581(n)`
-/

namespace A270702.P2634944618740460900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n - (f1 (n + 1) - f1 n) * A025581 n

end

end A270702.P2634944618740460900

noncomputable section

/-- A270702: Total sum T(n,k) of the sizes of all blocks with minimal element k in all set partitions of {1,2,...,n}; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

Offset 1, canonical program `A270702.P2634944618740460900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3916 terms. -/
def A270702 (n : ℕ) : ℤ :=
  A270702.P2634944618740460900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3916 terms. -/
def A270702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270742.P9511645227848509118

`and(1, A235963(n)+A000124(A235963(n+1)))`
-/

namespace A270742.P9511645227848509118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A235963 n + A000124 (A235963 (n + 1)).toNat)

end

end A270742.P9511645227848509118

noncomputable section

/-- A270742: Binary expansion of C = (1/2)*(3/4)*(7/8)*(15/16)... .

Offset 0, canonical program `A270742.P9511645227848509118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270742 (n : ℕ) : ℤ :=
  A270742.P9511645227848509118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270784.P8667028044449136656

`∑[A360046(n)]`
-/

namespace A270784.P8667028044449136656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270784.P8667028044449136656

noncomputable section

/-- A270784: Expansion of (1-sqrt(1-4*x^4/(1-x)^4))/(2*x^4*(1-x)).

Offset 0, canonical program `A270784.P8667028044449136656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. -/
def A270784 (n : ℕ) : ℤ :=
  A270784.P8667028044449136656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. -/
def A270784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270992.P11423849643885823458

`A001221(A063086(n+1))`
-/

namespace A270992.P11423849643885823458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A063086 (n + 1)).toNat

end

end A270992.P11423849643885823458

noncomputable section

/-- A270992: Number of distinct prime divisors of prime(n)+1 and prime(n+1)+1.

Offset 1, canonical program `A270992.P11423849643885823458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270992 (n : ℕ) : ℤ :=
  A270992.P11423849643885823458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271187.P2014690052428888649

`A007913(A007318(n))`
-/

namespace A271187.P2014690052428888649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007318 n).toNat

end

end A271187.P2014690052428888649

noncomputable section

/-- A271187: Triangle T(n,k) read by rows: T(n,k) is the squarefree part of C(n,k).

Offset 0, canonical program `A271187.P2014690052428888649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A271187 (n : ℕ) : ℤ :=
  A271187.P2014690052428888649.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A271187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271355.P12576549963311332079

`A254729(A004736(n+1))`
-/

namespace A271355.P12576549963311332079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (A004736 (n + 1)).toNat

end

end A271355.P12576549963311332079

noncomputable section

/-- A271355: Triangular array: T(n,k) = |round((r^n)*(s^k))|, where r = golden ratio = (1+sqrt(5))/2, s = (1-sqrt(5))/2, 1 <= k <= n, n >= 1.

Offset 1, canonical program `A271355.P12576549963311332079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271355 (n : ℕ) : ℤ :=
  A271355.P12576549963311332079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271439.P9966869928347178630

`(1-A010054(n))*A083920(n)`
-/

namespace A271439.P9966869928347178630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010054 n) * A083920 n

end

end A271439.P9966869928347178630

noncomputable section

/-- A271439: If n is a triangular number, a(n) = 0, otherwise a(n) = n - A002024(n) + 1.

Offset 0, canonical program `A271439.P9966869928347178630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271439 (n : ℕ) : ℤ :=
  A271439.P9966869928347178630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271484.P10642354924052871060

`A059169(n+1)%A008620(A026741(n))`
-/

namespace A271484.P10642354924052871060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059169 (n + 1)) (A008620 (A026741 n).toNat)

end

end A271484.P10642354924052871060

noncomputable section

/-- A271484: Expansion of x^5/((1-x^2)*(1-x^4))+x^10/((1-x^4)*(1-x^6)).

Offset 0, canonical program `A271484.P10642354924052871060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271484 (n : ℕ) : ℤ :=
  A271484.P10642354924052871060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271499.P15216955592391079473

`lt[1, A000120(2*n-A005187(n))]`
-/

namespace A271499.P15216955592391079473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A271499.P15216955592391079473

noncomputable section

/-- A271499: Positive numbers n such that the number of 1's in the binary expansion of n is not a power of 2.

Offset 1, canonical program `A271499.P15216955592391079473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271499 (n : ℕ) : ℤ :=
  (A271499.P15216955592391079473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271653.P7087006881751362329

`p?[A072473(n+1)+A031215(n+1)]`
-/

namespace A271653.P7087006881751362329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + A031215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271653.P7087006881751362329

noncomputable section

/-- A271653: Primes of the form 2*prime(2k) - prime(k).

Offset 1, canonical program `A271653.P7087006881751362329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A271653 (n : ℕ) : ℤ :=
  A271653.P7087006881751362329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A271653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271703.P14141859259640121610

`A097805(C(row(n)+1, 2)+col(n))*row(n)!/col(n)!`
-/

namespace A271703.P14141859259640121610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097805 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) * (Nat.factorial (SequenceMachineLib.triRow n) : ℤ) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) : ℚ)

end

end A271703.P14141859259640121610

noncomputable section

/-- A271703: Triangle read by rows: the unsigned Lah numbers T(n, k) = binomial(n-1, k-1)*n!/k! if n > 0 and k > 0, T(n, 0) = 0^n and otherwise 0, for n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A271703.P14141859259640121610`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271703 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A271703.P14141859259640121610.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271703.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A271704.P3422238079583772405

`A097805(n)*A143409(n)`
-/

namespace A271704.P3422238079583772405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A143409 n

end

end A271704.P3422238079583772405

noncomputable section

/-- A271704: Triangle read by rows, T(n,k) = Sum_{j=0..n} (-1)^(n-j)*C(-j,-n)*L(j,k), L the unsigned Lah numbers A271703, for n>=0 and 0<=k<=n.

Offset 0, canonical program `A271704.P3422238079583772405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A271704 (n : ℕ) : ℤ :=
  A271704.P3422238079583772405.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A271704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271787.P16430295729200728671

`comp[n-A229062(n)]`
-/

namespace A271787.P16430295729200728671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A229062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A271787.P16430295729200728671

noncomputable section

/-- A271787: Integers k that are the sum of two nonzero squares while k*(k+1) is not.

Offset 1, canonical program `A271787.P16430295729200728671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271787 (n : ℕ) : ℤ :=
  (A271787.P16430295729200728671.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271823.P6491372009511408679

`A115140(n)+A077587(abs(1-n))`
-/

namespace A271823.P6491372009511408679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n + A077587 |1 - (n : ℤ)|.toNat

end

end A271823.P6491372009511408679

noncomputable section

/-- A271823: a(n) = binomial(2*n-4,n-1)*(n+3)/n.

Offset 1, canonical program `A271823.P6491372009511408679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A271823 (n : ℕ) : ℤ :=
  A271823.P6491372009511408679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A271823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272008.P12989980508195434786

`A017665(n+1)%A017666(n+1)`
-/

namespace A272008.P12989980508195434786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017665 (n + 1)) (A017666 (n + 1))

end

end A272008.P12989980508195434786

noncomputable section

/-- A272008: a(n) is the numerator of the fractional part of sigma(n)/n, where sigma(n) is the sum of the divisors of n.

Offset 1, canonical program `A272008.P12989980508195434786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272008 (n : ℕ) : ℤ :=
  A272008.P12989980508195434786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272008.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272044.P11714011590249258596

`eq[A001222(abs(1-n)+1), A193330(n)]`
-/

namespace A272044.P11714011590249258596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272044.P11714011590249258596

noncomputable section

/-- A272044: Numbers n such that n and n^2+1 have the same number of prime factors (including multiplicities).

Offset 1, canonical program `A272044.P11714011590249258596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1768 terms. -/
def A272044 (n : ℕ) : ℤ :=
  (A272044.P11714011590249258596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1768 terms. -/
def A272044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272569.P17664590215106579410

`(A002487(n+1)-A020951(n))*A020951(n)`
-/

namespace A272569.P17664590215106579410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002487 (n + 1) - A020951 n) * A020951 n

end

end A272569.P17664590215106579410

noncomputable section

/-- A272569: A variation on Stern's diatomic sequence.

Offset 1, canonical program `A272569.P17664590215106579410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272569 (n : ℕ) : ℤ :=
  A272569.P17664590215106579410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272635.P7311207179197304679

`comp[A094570(n)%A094570(n+1)]`
-/

namespace A272635.P7311207179197304679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094570 n) (A094570 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272635.P7311207179197304679

noncomputable section

/-- A272635: Numbers that are not a sum or a difference of two Fibonacci numbers.

Offset 1, canonical program `A272635.P7311207179197304679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272635 (n : ℕ) : ℤ :=
  (A272635.P7311207179197304679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272756.P7505850742485616259

`ceil(A123753(A033156(n+1))/A123753(n))`
-/

namespace A272756.P7505850742485616259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123753 (A033156 (n + 1)).toNat : ℚ) / (A123753 n : ℚ)⌉

end

end A272756.P7505850742485616259

noncomputable section

/-- A272756: a(n) is the least k such that k > A070939(n * k).

Offset 1, canonical program `A272756.P7505850742485616259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A272756 (n : ℕ) : ℤ :=
  A272756.P7505850742485616259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A272756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272887.P6057499258403771745

`A091954(p?[xor(1, n)+1]+1)%(n+1)`
-/

namespace A272887.P6057499258403771745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091954 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)) (n + 1 : ℤ)

end

end A272887.P6057499258403771745

noncomputable section

/-- A272887: Number of ways to write prime(n) as (4*x + 2)*y + 4*x + 1 where x and y are nonnegative integers.

Offset 1, canonical program `A272887.P6057499258403771745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A272887 (n : ℕ) : ℤ :=
  A272887.P6057499258403771745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A272887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272898.P8267313110356408480

`eq[0, A272896(n)]`
-/

namespace A272898.P8267313110356408480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272898.P8267313110356408480

noncomputable section

/-- A272898: Numbers k such that 2^k has equal numbers of odd and even decimal digits.

Offset 1, canonical program `A272898.P8267313110356408480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A272898 (n : ℕ) : ℤ :=
  (A272898.P8267313110356408480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A272898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272902.P2391986581813364604

`eq[0, A101264(3*n)]+1`
-/

namespace A272902.P2391986581813364604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272902.P2391986581813364604

noncomputable section

/-- A272902: Numbers k such that 6*k - 5 is not prime.

Offset 1, canonical program `A272902.P2391986581813364604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272902 (n : ℕ) : ℤ :=
  (A272902.P2391986581813364604.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273221.P18280931573240640292

`A006564(A000040(n+1))-A262247(n+1)`
-/

namespace A273221.P18280931573240640292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006564 (A000040 (n + 1)).toNat - A262247 (n + 1)

end

end A273221.P18280931573240640292

noncomputable section

/-- A273221: a(n) = p*(p - 1)*(13*p - 5)/6, where p = prime(n).

Offset 1, canonical program `A273221.P18280931573240640292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A273221 (n : ℕ) : ℤ :=
  A273221.P18280931573240640292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A273221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273401.P1165814043605019566

`eq[A054844(n+2), A054844(n+1)]+1`
-/

namespace A273401.P1165814043605019566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273401.P1165814043605019566

noncomputable section

/-- A273401: Numbers n such that n and n + 1 have exactly the same number of odd divisors.

Offset 1, canonical program `A273401.P1165814043605019566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273401 (n : ℕ) : ℤ :=
  (A273401.P1165814043605019566.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273500.P16328251982798064153

`∑[A273499(n)]`
-/

namespace A273500.P16328251982798064153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273500.P16328251982798064153

noncomputable section

/-- A273500: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273500.P16328251982798064153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. -/
def A273500 (n : ℕ) : ℤ :=
  A273500.P16328251982798064153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. -/
def A273500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273501.P2635603986377445307

`Δ[A273499(n)]`
-/

namespace A273501.P2635603986377445307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273501.P2635603986377445307

noncomputable section

/-- A273501: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273501.P2635603986377445307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2767 terms. -/
def A273501 (n : ℕ) : ℤ :=
  A273501.P2635603986377445307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2767 terms. -/
def A273501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273514.P15425265425330946745

`floor(A120880(2*n)/2)`
-/

namespace A273514.P15425265425330946745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120880 (2 * n) : ℚ) / 2⌋

end

end A273514.P15425265425330946745

noncomputable section

/-- A273514: a(n) is the number of arithmetic progressions m < n < p (three numbers in arithmetic progression) such that m and p contain no 2's in their ternary representation.

Offset 0, canonical program `A273514.P15425265425330946745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A273514 (n : ℕ) : ℤ :=
  A273514.P15425265425330946745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A273514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273929.P9327079910848474256

`eq[n, A007913(or(4, n))]`
-/

namespace A273929.P9327079910848474256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.lor 4 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273929.P9327079910848474256

noncomputable section

/-- A273929: Numbers that are congruent to {5, 6, 7} mod 8 and are squarefree.

Offset 1, canonical program `A273929.P9327079910848474256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273929 (n : ℕ) : ℤ :=
  (A273929.P9327079910848474256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273939.P15009550147313335799

`A056921(n)+A056922(n)`
-/

namespace A273939.P15009550147313335799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056921 n + A056922 n

end

end A273939.P15009550147313335799

noncomputable section

/-- A273939: a(0) = 1, a(1) = 2; for k>0, a(2*k) = k*a(2*k-1) + a(2*k-2), a(2*k+1) = a(2*k) + a(2*k-1).

Offset 0, canonical program `A273939.P15009550147313335799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056921, A056922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273939 (n : ℕ) : ℤ :=
  A273939.P15009550147313335799.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056921, A056922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274017.P17464544538274726371

`∑{d}[n, A006206(#)]+1`
-/

namespace A274017.P17464544538274726371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006206 d + 1

end

end A274017.P17464544538274726371

noncomputable section

/-- A274017: Number of n-bead binary necklaces (no turning over allowed) that avoid the subsequence 110.

Offset 0, canonical program `A274017.P17464544538274726371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A274017 (n : ℕ) : ℤ :=
  A274017.P17464544538274726371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A274017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274473.P317316573485528462

`and(A001317(A042948(n)), A126646(n))`
-/

namespace A274473.P317316573485528462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001317 (A042948 n).toNat) (A126646 n)

end

end A274473.P317316573485528462

noncomputable section

/-- A274473: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A274473.P317316573485528462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A274473 (n : ℕ) : ℤ :=
  A274473.P317316573485528462.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A274473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274546.P10366663639167439236

`filter[A005117(n+1), A011558(#)]`
-/

namespace A274546.P10366663639167439236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A274546.P10366663639167439236

noncomputable section

/-- A274546: Numbers m such that 5*m is squarefree.

Offset 1, canonical program `A274546.P10366663639167439236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274546 (n : ℕ) : ℤ :=
  A274546.P10366663639167439236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274698.P9145926141844344103

`A000040(n+1)-2*A007652(n+1)`
-/

namespace A274698.P9145926141844344103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2 * A007652 (n + 1)

end

end A274698.P9145926141844344103

noncomputable section

/-- A274698: a(n)=prime(n)-(2*last digit of prime(n)).

Offset 1, canonical program `A274698.P9145926141844344103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274698 (n : ℕ) : ℤ :=
  A274698.P9145926141844344103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274828.P10579815518661466708

`floor(∑[(-1)^n/A001223(n+1)])`
-/

namespace A274828.P10579815518661466708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) / (A001223 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A274828.P10579815518661466708

noncomputable section

/-- A274828: Integer part of the alternating n-th partial sum of the reciprocals of the successive prime gaps.

Offset 1, canonical program `A274828.P10579815518661466708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274828 (n : ℕ) : ℤ :=
  A274828.P10579815518661466708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274954.P10035714956963324201

`A000217(p?[A133700(3*n+2)])*A006498(3*n+1)`
-/

namespace A274954.P10035714956963324201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A006498 (3 * n + 1)

end

end A274954.P10035714956963324201

noncomputable section

/-- A274954: Number of n X 3 0..2 arrays with no element equal to any value at offset (-1,-1) (-2,0) or (0,-2) and new values introduced in order 0..2.

Offset 1, canonical program `A274954.P10035714956963324201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A274954 (n : ℕ) : ℤ :=
  A274954.P10035714956963324201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A274954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274969.P429463321413355336

`2*A174687(n)-A026004(n)`
-/

namespace A274969.P429463321413355336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174687 n - A026004 n

end

end A274969.P429463321413355336

noncomputable section

/-- A274969: Number of walks in the first quadrant starting and ending at (0,0) consisting of 3n steps taken from {E=(1, 0), D=(-1, 1), S=(0, -1)}, no S step occurring before the final E step.

Offset 0, canonical program `A274969.P429463321413355336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A274969 (n : ℕ) : ℤ :=
  A274969.P429463321413355336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A274969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274987.P13758219418933082249

`p?[A274601(p?[A274601(n+1)])]`
-/

namespace A274987.P13758219418933082249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274601 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274601 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274987.P13758219418933082249

noncomputable section

/-- A274987: Primes p such that A274601(p) is a prime.

Offset 1, canonical program `A274987.P13758219418933082249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A274987 (n : ℕ) : ℤ :=
  A274987.P13758219418933082249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A274987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275161.P342480281307186842

`6-2*A240025(n+1)`
-/

namespace A275161.P342480281307186842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - 2 * A240025 (n + 1)

end

end A275161.P342480281307186842

noncomputable section

/-- A275161: Number of sides of a polygon formed by tiling n squares in a spiral.

Offset 1, canonical program `A275161.P342480281307186842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275161 (n : ℕ) : ℤ :=
  A275161.P342480281307186842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275257.P16383886443996261136

`A054431(n+1)+T(n-1,k)` with `a(0)=1`
-/

namespace A275257.P16383886443996261136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054431 (n + 1) + SequenceMachineLib.triUp a n

end

end A275257.P16383886443996261136

noncomputable section

/-- A275257: Array read by upwards antidiagonals: LegendrePhi phi(x,n), x,n >=1.

Offset 1, canonical program `A275257.P16383886443996261136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275257 (n : ℕ) : ℤ :=
  A275257.P16383886443996261136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275418.P17647390156546014803

`eq[A054844(n+3), A054844(n+1)]+2`
-/

namespace A275418.P17647390156546014803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A275418.P17647390156546014803

noncomputable section

/-- A275418: Numbers n such that n - 1 has exactly as many odd divisors as n + 1.

Offset 1, canonical program `A275418.P17647390156546014803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275418 (n : ℕ) : ℤ :=
  (A275418.P17647390156546014803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275671.P10918635563416212347

`eq[gcd(2, n), A175192(n+1)]+1`
-/

namespace A275671.P10918635563416212347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275671.P10918635563416212347

noncomputable section

/-- A275671: Even values produced by the sigma function A000203, in increasing order.

Offset 1, canonical program `A275671.P10918635563416212347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275671 (n : ℕ) : ℤ :=
  (A275671.P10918635563416212347.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275697.P6247169262184432070

`p?[p?[2*n+1]-A058263(n+1)]`
-/

namespace A275697.P6247169262184432070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - A058263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275697.P6247169262184432070

noncomputable section

/-- A275697: Primes p such that gcd(p-1, q-1) = q - p, where q is the next prime after p.

Offset 1, canonical program `A275697.P6247169262184432070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3977 terms. -/
def A275697 (n : ℕ) : ℤ :=
  A275697.P6247169262184432070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3977 terms. -/
def A275697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276129.P2467275896849965756

`Δ[A054455(n)-A239342(n+1)]`
-/

namespace A276129.P2467275896849965756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054455 n - A239342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276129.P2467275896849965756

noncomputable section

/-- A276129: a(n) is the number of ordered ways to tile a strip of length n+2 with white tiles of odd lengths summing to length n and two red squares.

Offset 0, canonical program `A276129.P2467275896849965756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. -/
def A276129 (n : ℕ) : ℤ :=
  A276129.P2467275896849965756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. -/
def A276129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276158.P15647600386181717088

`A004736(n+1)*A008458(A002262(n))`
-/

namespace A276158.P15647600386181717088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A008458 (A002262 n).toNat

end

end A276158.P15647600386181717088

noncomputable section

/-- A276158: Triangle read by rows: T(n,k) = 6*k*(n + 1 - k) for 0 < k <= n; for k = 0, T(n,0) = n + 1.

Offset 0, canonical program `A276158.P15647600386181717088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276158 (n : ℕ) : ℤ :=
  A276158.P15647600386181717088.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276189.P219610882621668333

`A004736(n+1)*A005914(A002262(n))`
-/

namespace A276189.P219610882621668333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A005914 (A002262 n).toNat

end

end A276189.P219610882621668333

noncomputable section

/-- A276189: Triangle read by rows: T(n,k) = 2*(6*k^2 + 1)*(n + 1 - k) for 0 < k <= n; for k = 0, T(n,0) = n + 1.

Offset 0, canonical program `A276189.P219610882621668333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276189 (n : ℕ) : ℤ :=
  A276189.P219610882621668333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276208.P11970610108144692030

`A028310(A067850(n+1)+n)`
-/

namespace A276208.P11970610108144692030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A067850 (n + 1) + (n : ℤ)).toNat

end

end A276208.P11970610108144692030

noncomputable section

/-- A276208: Position of n! in the joint ranking of {2^h} and {k!}, where h >= 0, k >= 0.

Offset 1, canonical program `A276208.P11970610108144692030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276208 (n : ℕ) : ℤ :=
  A276208.P11970610108144692030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276262.P9385478510724947906

`∩[A141849(n+1), A195043(n)]`
-/

namespace A276262.P9385478510724947906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276262.P9385478510724947906

noncomputable section

/-- A276262: Centered 22-gonal primes.

Offset 1, canonical program `A276262.P9385478510724947906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A276262 (n : ℕ) : ℤ :=
  (A276262.P9385478510724947906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A276262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276397.P8421453054304162173

`A188590(n+1)-3`
-/

namespace A276397.P8421453054304162173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188590 (n + 1) - 3

end

end A276397.P8421453054304162173

noncomputable section

/-- A276397: Trajectory of 0 under the morphism 0 -> 001, 1 -> 0010.

Offset 0, canonical program `A276397.P8421453054304162173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276397 (n : ℕ) : ℤ :=
  A276397.P8421453054304162173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276502.P6559098655028179355

`lcm(((n+1)%a(n-1))!, A055642(n+1))` with `a(0)=1`
-/

namespace A276502.P6559098655028179355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (Nat.factorial ((n + 1) % a (n - 1)) : ℤ) (A055642 (n + 1))

end

end A276502.P6559098655028179355

noncomputable section

/-- A276502: Least k > 0 such that A045876(n) divides A045876(n*10^k).

Offset 1, canonical program `A276502.P6559098655028179355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A276502 (n : ℕ) : ℤ :=
  (A276502.P6559098655028179355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A276502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276732.P8742035922757632699

`10*A158017(n+1)-1`
-/

namespace A276732.P8742035922757632699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A158017 (n + 1) - 1

end

end A276732.P8742035922757632699

noncomputable section

/-- A276732: Primes p such that (p + 1)/10 is also prime.

Offset 1, canonical program `A276732.P8742035922757632699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276732 (n : ℕ) : ℤ :=
  A276732.P8742035922757632699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276736.P6839819516574191289

`lcm(n+1, A007429(n+1))/(n+1)`
-/

namespace A276736.P6839819516574191289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A007429 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A276736.P6839819516574191289

noncomputable section

/-- A276736: a(n) = numerator of Sum_{d|n} tau(d)/d.

Offset 1, canonical program `A276736.P6839819516574191289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276736 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276736.P6839819516574191289.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276737.P10584001989765576024

`(n+1)/gcd(n+1, A007429(n+1))`
-/

namespace A276737.P10584001989765576024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A007429 (n + 1)) : ℚ)

end

end A276737.P10584001989765576024

noncomputable section

/-- A276737: a(n) = denominator of Sum_{d|n} tau(d)/d.

Offset 1, canonical program `A276737.P10584001989765576024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276737 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276737.P10584001989765576024.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277078.P923418389823604188

`A130595(∑[A198954(n)-1])+A130321(n)%2`
-/

namespace A277078.P923418389823604188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + Int.tmod (A130321 n) 2

end

end A277078.P923418389823604188

noncomputable section

/-- A277078: Triangular array similar to A255935 but with 0's and 2's swapped in the trailing diagonal. The columns alternate in signs.

Offset 0, canonical program `A277078.P923418389823604188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A277078 (n : ℕ) : ℤ :=
  A277078.P923418389823604188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A277078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210039.P13325331133632388062

`A034839(A049068(n+1))`
-/

namespace A210039.P13325331133632388062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (A049068 (n + 1)).toNat

end

end A210039.P13325331133632388062

noncomputable section

/-- A210039: Array of coefficients of polynomials u(n,x) jointly generated with A210040; see the Formula section.

Offset 1, canonical program `A210039.P13325331133632388062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A210039 (n : ℕ) : ℤ :=
  A210039.P13325331133632388062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A210039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210559.P15483149355384832

`A210565(n+1)+A038137(n)-A210595(n+1)`
-/

namespace A210559.P15483149355384832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210565 (n + 1) + (A038137 n - A210595 (n + 1))

end

end A210559.P15483149355384832

noncomputable section

/-- A210559: Triangle of coefficients of polynomials u(n,x) jointly generated with A210560; see the Formula section.

Offset 1, canonical program `A210559.P15483149355384832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210559 (n : ℕ) : ℤ :=
  A210559.P15483149355384832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210586.P6429781847398373433

`A003057(n+2)*A210587(n+2)`
-/

namespace A210586.P6429781847398373433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A210587 (n + 2)

end

end A210586.P6429781847398373433

noncomputable section

/-- A210586: Triangle T(n,k) read by rows: T(n,k) is the number of rooted hypertrees on n labeled vertices with k hyperedges, n >= 2, k >= 1.

Offset 2, canonical program `A210586.P6429781847398373433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A210586 (n : ℕ) : ℤ :=
  A210586.P6429781847398373433.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A210586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210635.P12986531844571725851

`A003056(n)-2*A051777(n+1)`
-/

namespace A210635.P12986531844571725851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - 2 * A051777 (n + 1)

end

end A210635.P12986531844571725851

noncomputable section

/-- A210635: Array read by descending antidiagonals: a(n,w) = ((w - (n mod w) - 1) + n) - (n mod w), n >= 0, w >= 1.

Offset 0, canonical program `A210635.P12986531844571725851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210635 (n : ℕ) : ℤ :=
  A210635.P12986531844571725851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211173.P7488017100782827256

`A101264(n)*A266303(n)`
-/

namespace A211173.P7488017100782827256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n * A266303 n

end

end A211173.P7488017100782827256

noncomputable section

/-- A211173: a(n) = (2n)!^n (modulo 2n+1).

Offset 0, canonical program `A211173.P7488017100782827256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211173 (n : ℕ) : ℤ :=
  A211173.P7488017100782827256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211324.P4978454997270415450

`A211114(n+1)+A090991(n+1)`
-/

namespace A211324.P4978454997270415450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211114 (n + 1) + A090991 (n + 1)

end

end A211324.P4978454997270415450

noncomputable section

/-- A211324: Number of (n+1) X (n+1) -3..3 symmetric matrices with every 2 X 2 subblock having sum zero and one or three distinct values.

Offset 1, canonical program `A211324.P4978454997270415450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A211324 (n : ℕ) : ℤ :=
  A211324.P4978454997270415450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A211324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211430.P8380286044930942036

`2*A211483(n)-A005408(n)`
-/

namespace A211430.P8380286044930942036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211483 n - A005408 n

end

end A211430.P8380286044930942036

noncomputable section

/-- A211430: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2+x+y=0.

Offset 0, canonical program `A211430.P8380286044930942036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A211430 (n : ℕ) : ℤ :=
  A211430.P8380286044930942036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A211430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213282.P9962592530736365046

`abs(Δ[A346626(abs(1-n))])`
-/

namespace A213282.P9962592530736365046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346626 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A213282.P9962592530736365046

noncomputable section

/-- A213282: G.f. satisfies A(x) = G(x/(1-x)^3) where G(x) = 1 + x*G(x)^3 is the g.f. of A001764.

Offset 0, canonical program `A213282.P9962592530736365046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A213282 (n : ℕ) : ℤ :=
  A213282.P9962592530736365046.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A213282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213369.P8237522146268580617

`A318163(2*A003817(n)-n)`
-/

namespace A213369.P8237522146268580617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318163 (2 * A003817 n - (n : ℤ)).toNat

end

end A213369.P8237522146268580617

noncomputable section

/-- A213369: The twisted Stern sequence: a(0) = 0, a(1) = 1 and a(2n) = -a(n), a(2n + 1) = -a(n)-a(n + 1) for n>=1.

Offset 0, canonical program `A213369.P8237522146268580617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A213369 (n : ℕ) : ℤ :=
  A213369.P8237522146268580617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A213369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213503.P14320887706154900592

`A213751(n+1)+T(n-1,k)` with `a(0)=1`
-/

namespace A213503.P14320887706154900592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213751 (n + 1) + SequenceMachineLib.triUp a n

end

end A213503.P14320887706154900592

noncomputable section

/-- A213503: Rectangular array: (row n) = b**c, where b(h) = h^2, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213503.P14320887706154900592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213503 (n : ℕ) : ℤ :=
  A213503.P14320887706154900592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213544.P18315218714805834190

`(A011755(n+1)+1)/2`
-/

namespace A213544.P18315218714805834190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011755 (n + 1) + 1 : ℚ) / 2

end

end A213544.P18315218714805834190

noncomputable section

/-- A213544: Sum of numerators of Farey Sequence of order n.

Offset 1, canonical program `A213544.P18315218714805834190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213544 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213544.P18315218714805834190.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213544.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214678.P6950269482527157551

`A052382(eq[1, A007095(n+1)/A052382(n+1)]+1)`
-/

namespace A214678.P6950269482527157551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007095 (n + 1) : ℚ) / (A052382 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A214678.P6950269482527157551

noncomputable section

/-- A214678: a(n) = n represented in bijective base-8 numeration.

Offset 1, canonical program `A214678.P6950269482527157551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A214678 (n : ℕ) : ℤ :=
  A214678.P6950269482527157551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A214678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215304.P5744718279713109426

`∪[A129484(n+1), A215281(n+1)]`
-/

namespace A215304.P5744718279713109426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215304.P5744718279713109426

noncomputable section

/-- A215304: Primes congruent to {1, 2, 3, 4} mod 17.

Offset 1, canonical program `A215304.P5744718279713109426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215304 (n : ℕ) : ℤ :=
  (A215304.P5744718279713109426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215316.P17217771670333190806

`∪[A138623(n+1), A215281(n+1)]`
-/

namespace A215316.P17217771670333190806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215316.P17217771670333190806

noncomputable section

/-- A215316: Primes congruent to {2, 3, 4, 5} mod 17.

Offset 1, canonical program `A215316.P17217771670333190806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215316 (n : ℕ) : ℤ :=
  (A215316.P17217771670333190806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215352.P9939805677576000821

`∪[A140545(n+1), A215281(n+1)]`
-/

namespace A215352.P9939805677576000821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215352.P9939805677576000821

noncomputable section

/-- A215352: Primes congruent to {2, 3, 4, 6} mod 17.

Offset 1, canonical program `A215352.P9939805677576000821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215352 (n : ℕ) : ℤ :=
  (A215352.P9939805677576000821.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215355.P3196433915697977544

`∪[A102732(n+1), A215359(n+1)]`
-/

namespace A215355.P3196433915697977544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215355.P3196433915697977544

noncomputable section

/-- A215355: Primes congruent to {0, 2, 3, 4, 5} mod 13.

Offset 1, canonical program `A215355.P3196433915697977544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215355 (n : ℕ) : ℤ :=
  (A215355.P3196433915697977544.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215356.P17842161571957885222

`∪[A138623(n+1), A215360(n+1)]`
-/

namespace A215356.P17842161571957885222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215356.P17842161571957885222

noncomputable section

/-- A215356: Primes congruent to {0, 2, 3, 4, 5} mod 17.

Offset 1, canonical program `A215356.P17842161571957885222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215356 (n : ℕ) : ℤ :=
  (A215356.P17842161571957885222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215358.P13244640912977840726

`∪[A141851(n+1), A215374(n+1)]`
-/

namespace A215358.P13244640912977840726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215358.P13244640912977840726

noncomputable section

/-- A215358: Primes congruent to {0, 2, 3, 4} mod 11.

Offset 1, canonical program `A215358.P13244640912977840726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215358 (n : ℕ) : ℤ :=
  (A215358.P13244640912977840726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216057.P3710212579143236931

`A045429(n+1)-A045356(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216057.P3710212579143236931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1) - A045356 (n + 1)

end

end A216057.P3710212579143236931

noncomputable section

/-- A216057: a(n) = A045429(n) - A045356(n).

Offset 1, canonical program `A216057.P3710212579143236931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045356, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216057 (n : ℕ) : ℤ :=
  A216057.P3710212579143236931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045356, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216220.P17504240697421346924

`A216238(row(n)+1+n)`
-/

namespace A216220.P17504240697421346924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216238 (SequenceMachineLib.triRow n + 1 + n)

end

end A216220.P17504240697421346924

noncomputable section

/-- A216220: Square array T, read by antidiagonals: T(n,k) = 0 if n-k>=2 or if k-n>=4, T(1,0) = T(0,0) = T(0,1) = T(0,2) = T(0,3) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

Offset 0, canonical program `A216220.P17504240697421346924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A216220 (n : ℕ) : ℤ :=
  A216220.P17504240697421346924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A216220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216274.P3180961564110894193

`A059214(n+1)/2`
-/

namespace A216274.P3180961564110894193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059214 (n + 1) : ℚ) / 2

end

end A216274.P3180961564110894193

noncomputable section

/-- A216274: Square array A(n,k) = maximal number of regions into which k-space can be divided by n hyperplanes (k >= 1, n >= 0), read by antidiagonals.

Offset 0, canonical program `A216274.P3180961564110894193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216274.P3180961564110894193.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216556.P12733436733351408315

`A053392(A051022(n)+10)`
-/

namespace A216556.P12733436733351408315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (A051022 n + 10).toNat

end

end A216556.P12733436733351408315

noncomputable section

/-- A216556: Concatenate decimal digits of n, each increased by 1.

Offset 0, canonical program `A216556.P12733436733351408315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A216556 (n : ℕ) : ℤ :=
  A216556.P12733436733351408315.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A216556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217009.P14255670570923127505

`A007094(A008589(n+1))`
-/

namespace A217009.P14255670570923127505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A008589 (n + 1)).toNat

end

end A217009.P14255670570923127505

noncomputable section

/-- A217009: Multiples of 7 in base 8.

Offset 1, canonical program `A217009.P14255670570923127505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217009 (n : ℕ) : ℤ :=
  A217009.P14255670570923127505.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217558.P16797002515684870992

`A008599(A053836(n))-n`
-/

namespace A217558.P16797002515684870992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (A053836 n).toNat - (n : ℤ)

end

end A217558.P16797002515684870992

noncomputable section

/-- A217558: Split-and-swap on 8-bit integers.

Offset 0, canonical program `A217558.P16797002515684870992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A217558 (n : ℕ) : ℤ :=
  A217558.P16797002515684870992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A217558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217740.P16415734012577998411

`A005101(A005101(1+n))`
-/

namespace A217740.P16415734012577998411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A005101 (1 + n)).toNat

end

end A217740.P16415734012577998411

noncomputable section

/-- A217740: Abundant numbers with abundant subscripts.

Offset 1, canonical program `A217740.P16415734012577998411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A217740 (n : ℕ) : ℤ :=
  A217740.P16415734012577998411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A217740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218227.P13857964789849217823

`A218281(2*(n+1))`
-/

namespace A218227.P13857964789849217823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218281 (2 * (n + 1))

end

end A218227.P13857964789849217823

noncomputable section

/-- A218227: Hilltop maps: number of n X 2 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..2 n X 2 array.

Offset 1, canonical program `A218227.P13857964789849217823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A218227 (n : ℕ) : ℤ :=
  A218227.P13857964789849217823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A218227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218291.P17440105116101161052

`filter[A274319(n+2), A079979(#)]`
-/

namespace A218291.P17440105116101161052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A218291.P17440105116101161052

noncomputable section

/-- A218291: Multiples of 6 such that the sum of their digits is also a multiple of 6.

Offset 1, canonical program `A218291.P17440105116101161052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A218291 (n : ℕ) : ℤ :=
  A218291.P17440105116101161052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A218291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219174.P8041433782300055859

`eq[1, A364252(n+1)]+1`
-/

namespace A219174.P8041433782300055859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A219174.P8041433782300055859

noncomputable section

/-- A219174: Numbers that have no other prime factors than 2 and/or Mersenne primes.

Offset 1, canonical program `A219174.P8041433782300055859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A219174 (n : ℕ) : ℤ :=
  (A219174.P8041433782300055859.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A219174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224705.P15495614676293168380

`filter[A231878(n+1), A005171(#)]`
-/

namespace A224705.P15495614676293168380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A224705.P15495614676293168380

noncomputable section

/-- A224705: Composite numbers n divisible by Omega(n)^2 (the square of the number of their prime factors, counted with multiplicity).

Offset 1, canonical program `A224705.P15495614676293168380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2621 terms. -/
def A224705 (n : ℕ) : ℤ :=
  A224705.P15495614676293168380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2621 terms. -/
def A224705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224907.P17184024121669876912

`2*A005101(n+1)`
-/

namespace A224907.P17184024121669876912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005101 (n + 1)

end

end A224907.P17184024121669876912

noncomputable section

/-- A224907: Numbers n such that the sum of reciprocals of even divisors of n > 1.

Offset 1, canonical program `A224907.P17184024121669876912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224907 (n : ℕ) : ℤ :=
  A224907.P17184024121669876912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224907.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225241.P5113222394722278636

`2*A005100(n+1)`
-/

namespace A225241.P5113222394722278636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005100 (n + 1)

end

end A225241.P5113222394722278636

noncomputable section

/-- A225241: Numbers n such that the sum of the reciprocals of the even divisors of n is greater than zero and less than one.

Offset 1, canonical program `A225241.P5113222394722278636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225241 (n : ℕ) : ℤ :=
  A225241.P5113222394722278636.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225241.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227179.P15689747325054342099

`A227181(n)-A227177(n)`
-/

namespace A227179.P15689747325054342099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227181 n - A227177 n

end

end A227179.P15689747325054342099

noncomputable section

/-- A227179: After initial 0, integers from 0 to n(n-1) followed by integers from 0 to n(n+1) and so on.

Offset 0, canonical program `A227179.P15689747325054342099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. -/
def A227179 (n : ℕ) : ℤ :=
  A227179.P15689747325054342099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. -/
def A227179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229423.P15058870928533988016

`A252815(n+1)+A062748(n)+1`
-/

namespace A229423.P15058870928533988016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 1) + (A062748 n + 1)

end

end A229423.P15058870928533988016

noncomputable section

/-- A229423: Number of n X 3 0..2 arrays with horizontal differences mod 3 never 1, vertical differences mod 3 never -1, rows lexicographically nondecreasing, and columns lexicographically nonincreasing.

Offset 1, canonical program `A229423.P15058870928533988016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229423 (n : ℕ) : ℤ :=
  A229423.P15058870928533988016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230044.P12949410562350280572

`∪[A000217(n), A281902(n+1)]`
-/

namespace A230044.P12949410562350280572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230044.P12949410562350280572

noncomputable section

/-- A230044: Nonnegative numbers k such that k plus a perfect square is a triangular number.

Offset 1, canonical program `A230044.P12949410562350280572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5080 terms. -/
def A230044 (n : ℕ) : ℤ :=
  (A230044.P12949410562350280572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5080 terms. -/
def A230044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230775.P17462288336970000234

`A000040(A230774(n+1))`
-/

namespace A230775.P17462288336970000234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230774 (n + 1)).toNat

end

end A230775.P17462288336970000234

noncomputable section

/-- A230775: Smallest prime number greater than or equal to the square root of n.

Offset 1, canonical program `A230775.P17462288336970000234`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230775 (n : ℕ) : ℤ :=
  A230775.P17462288336970000234.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A231680.P11557233718960307562

`∑[∑{digits}[A007094(n), #]]`
-/

namespace A231680.P11557233718960307562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231680.P11557233718960307562

noncomputable section

/-- A231680: a(n) = Sum_{i=0..n} digsum_8(i), where digsum_8(i) = A053829(i).

Offset 0, canonical program `A231680.P11557233718960307562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231680 (n : ℕ) : ℤ :=
  (A231680.P11557233718960307562.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231681.P15334397148565643114

`∑[∑{digits}[A007094(n), #]²]`
-/

namespace A231681.P15334397148565643114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231681.P15334397148565643114

noncomputable section

/-- A231681: a(n) = Sum_{i=0..n} digsum_8(i)^2, where digsum_8(i) = A053829(i).

Offset 0, canonical program `A231681.P15334397148565643114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231681 (n : ℕ) : ℤ :=
  (A231681.P15334397148565643114.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231683.P1273227042826182736

`∑[∑{digits}[A007094(n), #]²²]`
-/

namespace A231683.P1273227042826182736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231683.P1273227042826182736

noncomputable section

/-- A231683: a(n) = Sum_{i=0..n} digsum_8(i)^4, where digsum_8(i) = A053829(i).

Offset 0, canonical program `A231683.P1273227042826182736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231683 (n : ℕ) : ℤ :=
  (A231683.P1273227042826182736.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231684.P6020696567074052500

`∑[∑{digits}[A007095(n), #]]`
-/

namespace A231684.P6020696567074052500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231684.P6020696567074052500

noncomputable section

/-- A231684: a(n) = Sum_{i=0..n} digsum_9(i), where digsum_9(i) = A053830(i).

Offset 0, canonical program `A231684.P6020696567074052500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231684 (n : ℕ) : ℤ :=
  (A231684.P6020696567074052500.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231685.P1261863985809089979

`∑[∑{digits}[A007095(n), #]²]`
-/

namespace A231685.P1261863985809089979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231685.P1261863985809089979

noncomputable section

/-- A231685: a(n) = Sum_{i=0..n} digsum_9(i)^2, where digsum_9(i) = A053830(i).

Offset 0, canonical program `A231685.P1261863985809089979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231685 (n : ℕ) : ℤ :=
  (A231685.P1261863985809089979.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231686.P5166136307374724277

`∑[∑{digits}[A007095(n), #]^3]`
-/

namespace A231686.P5166136307374724277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231686.P5166136307374724277

noncomputable section

/-- A231686: a(n) = Sum_{i=0..n} digsum_9(i)^3, where digsum_9(i) = A053830(i).

Offset 0, canonical program `A231686.P5166136307374724277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231686 (n : ℕ) : ℤ :=
  (A231686.P5166136307374724277.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231687.P14861985078575087158

`∑[∑{digits}[A007095(n), #]^4]`
-/

namespace A231687.P14861985078575087158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231687.P14861985078575087158

noncomputable section

/-- A231687: a(n) = Sum_{i=0..n} digsum_9(i)^4, where digsum_9(i) = A053830(i).

Offset 0, canonical program `A231687.P14861985078575087158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231687 (n : ℕ) : ℤ :=
  (A231687.P14861985078575087158.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233131.P11554169254893934889

`A004125(A028310(n))-(n*A230980(n)-A024924(n))`
-/

namespace A233131.P11554169254893934889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A028310 n).toNat - ((n : ℤ) * A230980 n - A024924 n)

end

end A233131.P11554169254893934889

noncomputable section

/-- A233131: Sum of remainders of n modulo all smaller composite numbers.

Offset 0, canonical program `A233131.P11554169254893934889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233131 (n : ℕ) : ℤ :=
  A233131.P11554169254893934889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234586.P10206095258370351874

`n+2-A234587(C(or(1, n), n))`
-/

namespace A234586.P10206095258370351874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A234587 (Nat.choose (Nat.lor 1 n) n)

end

end A234586.P10206095258370351874

noncomputable section

/-- A234586: Odd-indexed terms are absolute values of differences.

Offset 1, canonical program `A234586.P10206095258370351874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234586 (n : ℕ) : ℤ :=
  A234586.P10206095258370351874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234646.P14047031751974978695

`A005070((1-n)²+n)+∑{p}[n+1, #]`
-/

namespace A234646.P14047031751974978695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005070 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A234646.P14047031751974978695

noncomputable section

/-- A234646: Sum of the distinct prime divisors of n^3 + 1.

Offset 0, canonical program `A234646.P14047031751974978695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A234646 (n : ℕ) : ℤ :=
  A234646.P14047031751974978695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A234646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237120.P7569863392014985922

`A118911(n)-1`
-/

namespace A237120.P7569863392014985922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118911 n - 1

end

end A237120.P7569863392014985922

noncomputable section

/-- A237120: Number of white areas in the graph of elementary cellular automaton with rule 150 at generation n.

Offset 0, canonical program `A237120.P7569863392014985922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A237120 (n : ℕ) : ℤ :=
  A237120.P7569863392014985922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A237120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237767.P18206314552424324483

`∩[A052382(n+1), A062372(n+1)]`
-/

namespace A237767.P18206314552424324483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237767.P18206314552424324483

noncomputable section

/-- A237767: Integers whose product of digits is a nonzero cube.

Offset 1, canonical program `A237767.P18206314552424324483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A237767 (n : ℕ) : ℤ :=
  (A237767.P18206314552424324483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A237767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238985.P10795254232173325653

`filter[A052382(n+1), A086299(#)]`
-/

namespace A238985.P10795254232173325653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A238985.P10795254232173325653

noncomputable section

/-- A238985: Zeroless 7-smooth numbers.

Offset 1, canonical program `A238985.P10795254232173325653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A238985 (n : ℕ) : ℤ :=
  A238985.P10795254232173325653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A238985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239201.P12977593979021015894

`3*A242586(n)-1`
-/

namespace A239201.P12977593979021015894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A242586 n - 1

end

end A239201.P12977593979021015894

noncomputable section

/-- A239201: Expansion of -(x * sqrt(5*x^2 -6*x +1) -2*x^3 +3*x^2 -x) / ((3*x^2 -4*x +1) * sqrt(5*x^2 -6*x +1) +5*x^3 -11*x^2 +7*x -1).

Offset 1, canonical program `A239201.P12977593979021015894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A239201 (n : ℕ) : ℤ :=
  A239201.P12977593979021015894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A239201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239733.P15139081428395781281

`∩[A023216(n+1), A023234(n+1)]`
-/

namespace A239733.P15139081428395781281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239733.P15139081428395781281

noncomputable section

/-- A239733: Primes p such that 4p+9 and 9p+4 are both prime.

Offset 1, canonical program `A239733.P15139081428395781281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239733 (n : ℕ) : ℤ :=
  (A239733.P15139081428395781281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239930.P8856580518813960922

`∑{d}[n+1, A240025(#)]`
-/

namespace A239930.P8856580518813960922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A240025 d

end

end A239930.P8856580518813960922

noncomputable section

/-- A239930: Number of distinct quarter-squares dividing n.

Offset 1, canonical program `A239930.P8856580518813960922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239930 (n : ℕ) : ℤ :=
  A239930.P8856580518813960922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239976.P10372821839735602561

`eq[1, A068426(n)]+1`
-/

namespace A239976.P10372821839735602561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A239976.P10372821839735602561

noncomputable section

/-- A239976: Positions of ones in binary representation of log(2).

Offset 1, canonical program `A239976.P10372821839735602561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A239976 (n : ℕ) : ℤ :=
  (A239976.P10372821839735602561.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A239976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241989.P18072735750899753269

`eq[n+1, lcm(n+1, A053836(n+1))]+1`
-/

namespace A241989.P18072735750899753269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A053836 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A241989.P18072735750899753269

noncomputable section

/-- A241989: Positive numbers n that are divisible by the sum of the digits of n in base 16.

Offset 1, canonical program `A241989.P18072735750899753269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1606 terms. -/
def A241989 (n : ℕ) : ℤ :=
  (A241989.P18072735750899753269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1606 terms. -/
def A241989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242002.P8299068809405779655

`∑[2^(n+1)*A065357(n+1)*A065357(n)]`
-/

namespace A242002.P8299068809405779655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A065357 (n + 1) * A065357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242002.P8299068809405779655

noncomputable section

/-- A242002: Sum_{k=1..n} (-1)^isprime(k)*2^k.

Offset 1, canonical program `A242002.P8299068809405779655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A242002 (n : ℕ) : ℤ :=
  A242002.P8299068809405779655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A242002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242252.P7500226852341842309

`A370482(A001223(n+1)-1)`
-/

namespace A242252.P7500226852341842309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 (A001223 (n + 1) - 1).toNat

end

end A242252.P7500226852341842309

noncomputable section

/-- A242252: Start with n-th odd prime, and repeatedly subtract the greatest prime until either 0 or 1 remains. (The result is the "primes-greedy residue" of the n-th odd prime, which is "primes-greedy summable" if its residue = 0, as at A242255; see Comments.)

Offset 1, canonical program `A242252.P7500226852341842309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A242252 (n : ℕ) : ℤ :=
  A242252.P7500226852341842309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A242252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243516.P4744664137421621857

`A099266(n+1)+2`
-/

namespace A243516.P4744664137421621857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099266 (n + 1) + 2

end

end A243516.P4744664137421621857

noncomputable section

/-- A243516: Number of length n+2 0..7 arrays with no three elements in a row with pattern aba or abb (with a!=b) and new values 0..7 introduced in 0..7 order.

Offset 1, canonical program `A243516.P4744664137421621857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A243516 (n : ℕ) : ℤ :=
  A243516.P4744664137421621857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A243516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244048.P6865276920681536651

`A024816(n+1)-A004125(n+1)`
-/

namespace A244048.P6865276920681536651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) - A004125 (n + 1)

end

end A244048.P6865276920681536651

noncomputable section

/-- A244048: Antisigma(n) minus the sum of remainders of n mod k, for k = 1,2,3,...,n.

Offset 1, canonical program `A244048.P6865276920681536651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244048 (n : ℕ) : ℤ :=
  A244048.P6865276920681536651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244118.P17660869933743092581

`A244119(n)/A007318(n)`
-/

namespace A244118.P17660869933743092581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244119 n : ℚ) / (A007318 n : ℚ)

end

end A244118.P17660869933743092581

noncomputable section

/-- A244118: Triangle read by rows: coefficients T(n,k) of a binomial decomposition of 1 as Sum_{k=0..n} T(n,k)*binomial(n,k).

Offset 0, canonical program `A244118.P17660869933743092581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1580 terms. -/
def A244118 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244118.P17660869933743092581.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1580 terms. -/
def A244118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244469.P1780399125717107610

`A244039(n)%A348618(n)`
-/

namespace A244469.P1780399125717107610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244039 n) (A348618 n)

end

end A244469.P1780399125717107610

noncomputable section

/-- A244469: a(0) = 0, thereafter, a(n) = 2^(2*n-1)*( binomial((3*n-1)/2,n) - binomial(3*n/2, n)/3 ).

Offset 0, canonical program `A244469.P1780399125717107610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A244469 (n : ℕ) : ℤ :=
  A244469.P1780399125717107610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A244469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244607.P4839199191391835478

`eq[1, ∑{e}[1-A007954(n), #]]`
-/

namespace A244607.P4839199191391835478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244607.P4839199191391835478

noncomputable section

/-- A244607: Numbers k such that (product of digits of k) - 1 is prime.

Offset 1, canonical program `A244607.P4839199191391835478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A244607 (n : ℕ) : ℤ :=
  (A244607.P4839199191391835478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A244607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244637.P8806266305917714625

`p?[A048261(n+1)]`
-/

namespace A244637.P8806266305917714625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244637.P8806266305917714625

noncomputable section

/-- A244637: Primes that are the sum of the squares of distinct primes.

Offset 1, canonical program `A244637.P8806266305917714625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A244637 (n : ℕ) : ℤ :=
  A244637.P8806266305917714625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A244637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245382.P3222382834720020531

`p?[A245383(n+1)]`
-/

namespace A245382.P3222382834720020531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245382.P3222382834720020531

noncomputable section

/-- A245382: Primes whose product of digits is a semiprime.

Offset 1, canonical program `A245382.P3222382834720020531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A245382 (n : ℕ) : ℤ :=
  A245382.P3222382834720020531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A245382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245639.P3877904969913949712

`p?[A143827(n+1)]`
-/

namespace A245639.P3877904969913949712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245639.P3877904969913949712

noncomputable section

/-- A245639: Prime numbers P such that 8*P^2-1 is also prime.

Offset 1, canonical program `A245639.P3877904969913949712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. -/
def A245639 (n : ℕ) : ℤ :=
  A245639.P3877904969913949712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. -/
def A245639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246294.P17393245477566257957

`A327139(Δ[n²])`
-/

namespace A246294.P17393245477566257957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A246294.P17393245477566257957

noncomputable section

/-- A246294: Numbers k such that sin(k) < sin(k+1) > sin(k+2).

Offset 1, canonical program `A246294.P17393245477566257957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246294 (n : ℕ) : ℤ :=
  A246294.P17393245477566257957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246297.P8914562729595011779

`A327139(2*(n+1))`
-/

namespace A246297.P8914562729595011779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (2 * (n + 1))

end

end A246297.P8914562729595011779

noncomputable section

/-- A246297: Numbers k such that sin(k) > sin(k+1) < sin(k+2).

Offset 1, canonical program `A246297.P8914562729595011779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246297 (n : ℕ) : ℤ :=
  A246297.P8914562729595011779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A246297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246406.P15282604472216613680

`∩[A246407(n+1)-1, A246407(n+1)]`
-/

namespace A246406.P15282604472216613680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246406.P15282604472216613680

noncomputable section

/-- A246406: Nonnegative integers k satisfying sec(k) > sec(k+1) > sec(k+2) < sec(k+3).

Offset 1, canonical program `A246406.P15282604472216613680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A246406 (n : ℕ) : ℤ :=
  (A246406.P15282604472216613680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A246406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246558.P11717952315131037420

`A007954(A000045(n))`
-/

namespace A246558.P11717952315131037420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A000045 n).toNat

end

end A246558.P11717952315131037420

noncomputable section

/-- A246558: Product of the digits of the n-th Fibonacci number.

Offset 0, canonical program `A246558.P11717952315131037420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246558 (n : ℕ) : ℤ :=
  A246558.P11717952315131037420.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246788.P913895177884739949

`A002260(n+1)*A248810(A014132(n+1))`
-/

namespace A246788.P913895177884739949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A248810 (A014132 (n + 1)).toNat

end

end A246788.P913895177884739949

noncomputable section

/-- A246788: Triangle read by rows: T(n,k) is the coefficient A_k in the transformation Sum_{k=0..n} (k+1)*x^k = Sum_{k=0..n} A_k*(x+2)^k.

Offset 0, canonical program `A246788.P913895177884739949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A246788 (n : ℕ) : ℤ :=
  A246788.P913895177884739949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A246788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247328.P9082448071886118941

`record[A000265(A005100(n+1))]`
-/

namespace A247328.P9082448071886118941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247328.P9082448071886118941

noncomputable section

/-- A247328: Odd deficient numbers.

Offset 1, canonical program `A247328.P9082448071886118941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6625 terms. -/
def A247328 (n : ℕ) : ℤ :=
  A247328.P9082448071886118941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6625 terms. -/
def A247328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247678.P17590283635497127436

`filter[A063305(n+3), A373977(#)]`
-/

namespace A247678.P17590283635497127436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A247678.P17590283635497127436

noncomputable section

/-- A247678: Odd composite numbers congruent to 4 modulo 9.

Offset 1, canonical program `A247678.P17590283635497127436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3954 terms. -/
def A247678 (n : ℕ) : ℤ :=
  A247678.P17590283635497127436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3954 terms. -/
def A247678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248365.P6680227823295661139

`A001704(4*(n+1))-1`
-/

namespace A248365.P6680227823295661139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (4 * (n + 1)) - 1

end

end A248365.P6680227823295661139

noncomputable section

/-- A248365: 4n concatenated with itself.

Offset 1, canonical program `A248365.P6680227823295661139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6250 terms. -/
def A248365 (n : ℕ) : ℤ :=
  A248365.P6680227823295661139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6250 terms. -/
def A248365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248565.P6743472506241932522

`comp[A248567(n+1)+n]+1`
-/

namespace A248565.P6743472506241932522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248567 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248565.P6743472506241932522

noncomputable section

/-- A248565: Least k such that log(4/3) - sum{1/(h*4^h), h = 1..k} < 1/8^n.

Offset 1, canonical program `A248565.P6743472506241932522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248565 (n : ℕ) : ℤ :=
  (A248565.P6743472506241932522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249102.P1085466036066387248

`eq[0, A268643(A307913(n+1))]`
-/

namespace A249102.P1085466036066387248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249102.P1085466036066387248

noncomputable section

/-- A249102: Numbers with no 1's in base-7 expansion.

Offset 1, canonical program `A249102.P1085466036066387248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. -/
def A249102 (n : ℕ) : ℤ :=
  (A249102.P1085466036066387248.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. -/
def A249102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249755.P5124840259879627293

`2*A249756(n)-A184049(n)`
-/

namespace A249755.P5124840259879627293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249756 n - A184049 n

end

end A249755.P5124840259879627293

noncomputable section

/-- A249755: Triangular array of coefficients of polynomials p(n,x) = (x + 1)*p(n-1,x) + (n + 1)*x, p(0,x) = 1.

Offset 0, canonical program `A249755.P5124840259879627293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249755 (n : ℕ) : ℤ :=
  A249755.P5124840259879627293.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250430.P15424429207822931623

`sqrt(A250429(n+1)*A250431(n+1))`
-/

namespace A250430.P15424429207822931623
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250429 (n + 1) * A250431 (n + 1) : ℝ)

end

end A250430.P15424429207822931623

noncomputable section

/-- A250430: Number of (n+1)X(6+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250430.P15424429207822931623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250430 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A250430.P15424429207822931623.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252480.P15877996964888360874

`∩[A011540(n+1)-1, A011540(n+1)]`
-/

namespace A252480.P15877996964888360874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252480.P15877996964888360874

noncomputable section

/-- A252480: Numbers whose decimal representation has at least one '0' digit in a position other than the final digit.

Offset 1, canonical program `A252480.P15877996964888360874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7721 terms. -/
def A252480 (n : ℕ) : ℤ :=
  (A252480.P15877996964888360874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7721 terms. -/
def A252480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254105.P16731552791873516864

`A254107(A038722(n+1))%A017186(n)`
-/

namespace A254105.P16731552791873516864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254107 (A038722 (n + 1)).toNat) (A017186 n)

end

end A254105.P16731552791873516864

noncomputable section

/-- A254105: Dispersion of A055938; starting from its complementary sequence A005187 as the first column of square array A(row,col), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A254105.P16731552791873516864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A254105 (n : ℕ) : ℤ :=
  A254105.P16731552791873516864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A254105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254958.P15726477760308022044

`∩[A052382(n+1), A175396(n+1)]`
-/

namespace A254958.P15726477760308022044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254958.P15726477760308022044

noncomputable section

/-- A254958: Zeroless numbers n with digits d_1, d_2, ... d_k such that d_1^2 + ... + d_k^2 is a square.

Offset 1, canonical program `A254958.P15726477760308022044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A254958 (n : ℕ) : ℤ :=
  (A254958.P15726477760308022044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A254958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255178.P1809111956897378111

`∑[A255182(n)]`
-/

namespace A255178.P1809111956897378111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255178.P1809111956897378111

noncomputable section

/-- A255178: Second differences of eighth powers (A001016).

Offset 0, canonical program `A255178.P1809111956897378111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255178 (n : ℕ) : ℤ :=
  A255178.P1809111956897378111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255415.P4478179475312166102

`A260715(A017401(n))`
-/

namespace A255415.P4478179475312166102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260715 (A017401 n).toNat

end

end A255415.P4478179475312166102

noncomputable section

/-- A255415: Row 5 of Ludic array A255127.

Offset 1, canonical program `A255415.P4478179475312166102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A255415 (n : ℕ) : ℤ :=
  A255415.P4478179475312166102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A255415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255808.P14703978000163478120

`record[A052382(n+1)+n+1-A007095(n+1)]`
-/

namespace A255808.P14703978000163478120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1) + ((n + 1 : ℤ) - A007095 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255808.P14703978000163478120

noncomputable section

/-- A255808: Numbers with no zeros in base-9 representation.

Offset 1, canonical program `A255808.P14703978000163478120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A255808 (n : ℕ) : ℤ :=
  A255808.P14703978000163478120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A255808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256532.P7056753071363475223

`(n+1)*A004125(n+1)`
-/

namespace A256532.P7056753071363475223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004125 (n + 1)

end

end A256532.P7056753071363475223

noncomputable section

/-- A256532: Product of n and the sum of remainders of n mod k, for k = 1, 2, 3, ..., n.

Offset 1, canonical program `A256532.P7056753071363475223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256532 (n : ℕ) : ℤ :=
  A256532.P7056753071363475223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256532.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256533.P5671197403926202284

`A332264(n+1)+A175254(n+1)`
-/

namespace A256533.P5671197403926202284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332264 (n + 1) + A175254 (n + 1)

end

end A256533.P5671197403926202284

noncomputable section

/-- A256533: Product of n and the sum of all divisors of all positive integers <= n.

Offset 1, canonical program `A256533.P5671197403926202284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, A332264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256533 (n : ℕ) : ℤ :=
  A256533.P5671197403926202284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175254, A332264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256533.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256862.P1813085850284359841

`A013632(3*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A256862.P1813085850284359841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013632 (3 * a (n - 1)).toNat + a (n - 1)

end

end A256862.P1813085850284359841

noncomputable section

/-- A256862: a(1)=1, then a(n) = least number > a(n-1) such that 2*a(n-1)+a(n) is prime.

Offset 1, canonical program `A256862.P1813085850284359841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A256862 (n : ℕ) : ℤ :=
  A256862.P1813085850284359841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A256862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257220.P8696948705799715242

`lt[25, 4*a(A387463(n))]` with `a(0)=2, a(1)=7`
-/

namespace A257220.P8696948705799715242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f2 =>
  4 * f2 (A387463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257220.P8696948705799715242

noncomputable section

/-- A257220: Numbers that have at least one divisor containing the digit 3 in base 10.

Offset 1, canonical program `A257220.P8696948705799715242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8394 terms. -/
def A257220 (n : ℕ) : ℤ :=
  (A257220.P8696948705799715242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8394 terms. -/
def A257220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257282.P3133761122508046710

`comp[A257292(n+1)]`
-/

namespace A257282.P3133761122508046710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257282.P3133761122508046710

noncomputable section

/-- A257282: Numbers whose square is not the sum of two consecutive nonsquares.

Offset 1, canonical program `A257282.P3133761122508046710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257282 (n : ℕ) : ℤ :=
  (A257282.P3133761122508046710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257294.P9500194499461381062

`floor(A007954(n)^(1/A055642(n))*10^(A055642(n)-1))`
-/

namespace A257294.P9500194499461381062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007954 n : ℝ) ^ (1 / (A055642 n : ℚ) : ℝ) * ((10 : ℚ) ^ (A055642 n - 1 : ℤ) : ℝ)⌋

end

end A257294.P9500194499461381062

noncomputable section

/-- A257294: The first d decimal digits of the geometric mean of the digits of n, where d is the number of digits of n, without leading zeros.

Offset 0, canonical program `A257294.P9500194499461381062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257294 (n : ℕ) : ℤ :=
  A257294.P9500194499461381062.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259024.P17201124140699928540

`A084091(n+1)-A084091(A175676(n+1))`
-/

namespace A259024.P17201124140699928540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (n + 1) - A084091 (A175676 (n + 1)).toNat

end

end A259024.P17201124140699928540

noncomputable section

/-- A259024: a(4*n) = a(n). a(4*n + 2) = 0. a(4*n + 1) = - A259022(n+2). a(4*n + 3) = - A259022(n-2).

Offset 1, canonical program `A259024.P17201124140699928540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259024 (n : ℕ) : ℤ :=
  A259024.P17201124140699928540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259315.P8137311913003913152

`comp[∪[A000040(n+1), A011540(n+1)]]`
-/

namespace A259315.P8137311913003913152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A259315.P8137311913003913152

noncomputable section

/-- A259315: Nonprimes containing no zeros in decimal representation.

Offset 1, canonical program `A259315.P8137311913003913152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259315 (n : ℕ) : ℤ :=
  (A259315.P8137311913003913152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259773.P1634430538473741223

`A007954(A000032(n))`
-/

namespace A259773.P1634430538473741223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A000032 n).toNat

end

end A259773.P1634430538473741223

noncomputable section

/-- A259773: Product of the digits of the n-th Lucas number.

Offset 0, canonical program `A259773.P1634430538473741223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259773 (n : ℕ) : ℤ :=
  A259773.P1634430538473741223.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261969.P5982450597750301384

`A078615(n+1)/gcd(A078615(n+1), A304768(n+1))`
-/

namespace A261969.P5982450597750301384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078615 (n + 1) : ℚ) / (Int.gcd (A078615 (n + 1)) (A304768 (n + 1)) : ℚ)

end

end A261969.P5982450597750301384

noncomputable section

/-- A261969: Product of primes dividing n with maximum multiplicity.

Offset 1, canonical program `A261969.P5982450597750301384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261969 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A261969.P5982450597750301384.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262866.P18281721116564885018

`A290682(A004277(n))-A001317(n)*A016116(2*n)`
-/

namespace A262866.P18281721116564885018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 (A004277 n).toNat - A001317 n * A016116 (2 * n)

end

end A262866.P18281721116564885018

noncomputable section

/-- A262866: Decimal representation of the n-th iteration of the "Rule 153" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A262866.P18281721116564885018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A262866 (n : ℕ) : ℤ :=
  A262866.P18281721116564885018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A262866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263243.P14781637449265801547

`A267520(n*and(1, ∑[n]))`
-/

namespace A263243.P14781637449265801547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267520 (n * Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A263243.P14781637449265801547

noncomputable section

/-- A263243: Triangle read by rows giving successive states of cellular automaton generated by "Rule 155" initiated with a single ON (black) cell.

Offset 0, canonical program `A263243.P14781637449265801547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263243 (n : ℕ) : ℤ :=
  A263243.P14781637449265801547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263919.P4377395564244564805

`(A266982(n)+n)%2`
-/

namespace A263919.P4377395564244564805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266982 n + (n : ℤ)) 2

end

end A263919.P4377395564244564805

noncomputable section

/-- A263919: Triangle read by rows giving successive states of cellular automaton generated by "Rule 163" initiated with a single ON (black) cell.

Offset 0, canonical program `A263919.P4377395564244564805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263919 (n : ℕ) : ℤ :=
  A263919.P4377395564244564805.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265412.P11385853226138778996

`A265411(n)+a(n-1)` with `a(0)=1`
-/

namespace A265412.P11385853226138778996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265411 n + a (n - 1)

end

end A265412.P11385853226138778996

noncomputable section

/-- A265412: Partial sums of A265411.

Offset 0, canonical program `A265412.P11385853226138778996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265412 (n : ℕ) : ℤ :=
  A265412.P11385853226138778996.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265412.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266090.P15536049013854608840

`and(A266671(n), A267003(n))`
-/

namespace A266090.P15536049013854608840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266671 n) (A267003 n)

end

end A266090.P15536049013854608840

noncomputable section

/-- A266090: Decimal representation of the n-th iteration of the "Rule 17" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266090.P15536049013854608840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266090 (n : ℕ) : ℤ :=
  A266090.P15536049013854608840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266155.P15383333705459464585

`A266377(xor(n, a(n-1)))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A266155.P15383333705459464585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A266377 (Int.xor (n : ℤ) (a (n - 1))).toNat

end

end A266155.P15383333705459464585

noncomputable section

/-- A266155: Triangle read by rows giving successive states of cellular automaton generated by "Rule 19" initiated with a single ON (black) cell.

Offset 0, canonical program `A266155.P15383333705459464585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266155 (n : ℕ) : ℤ :=
  A266155.P15383333705459464585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266176.P15973943140520790239

`A266668(n)-Δ[A016116(n)²]`
-/

namespace A266176.P15973943140520790239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266668 n - (f1 (n + 1) - f1 n)

end

end A266176.P15973943140520790239

noncomputable section

/-- A266176: Decimal representation of the n-th iteration of the "Rule 5" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266176.P15973943140520790239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266176 (n : ℕ) : ℤ :=
  A266176.P15973943140520790239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266718.P2106620432007152276

`(2-A165326(n))*A266461(n)`
-/

namespace A266718.P2106620432007152276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A165326 n) * A266461 n

end

end A266718.P2106620432007152276

noncomputable section

/-- A266718: Decimal representation of the n-th iteration of the "Rule 59" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266718.P2106620432007152276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266718 (n : ℕ) : ℤ :=
  A266718.P2106620432007152276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266840.P13252579903726433232

`A267053(n)*A267704(n)`
-/

namespace A266840.P13252579903726433232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 n * A267704 n

end

end A266840.P13252579903726433232

noncomputable section

/-- A266840: Triangle read by rows giving successive states of cellular automaton generated by "Rule 69" initiated with a single ON (black) cell.

Offset 0, canonical program `A266840.P13252579903726433232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266840 (n : ℕ) : ℤ :=
  A266840.P13252579903726433232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267044.P17562880071829113964

`A267538(n)-a(n-1)` with `a(0)=1`
-/

namespace A267044.P17562880071829113964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267538 n - a (n - 1)

end

end A267044.P17562880071829113964

noncomputable section

/-- A267044: Binary representation of the middle column of the "Rule 91" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267044.P17562880071829113964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267044 (n : ℕ) : ℤ :=
  A267044.P17562880071829113964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268317.P13150400514428310603

`a(A268318(n-1))+1` with `a(0)=0`
-/

namespace A268317.P13150400514428310603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A268318 (n - 1)).toNat + 1

end

end A268317.P13150400514428310603

noncomputable section

/-- A268317: Irregular triangle read by rows: T(n,k) gives the columns sum in the table Fib(n+1) X Fib(n), where k = 1..Fib(n), and 1's are assigned to cells on the longest diagonal path.

Offset 0, canonical program `A268317.P13150400514428310603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268317 (n : ℕ) : ℤ :=
  (A268317.P13150400514428310603.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268388.P181920710593903785

`eq[0, A302777(n+2)]+2`
-/

namespace A268388.P181920710593903785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A268388.P181920710593903785

noncomputable section

/-- A268388: "Fermi-Dirac composites": numbers k for which A064547(k) > 1.

Offset 1, canonical program `A268388.P181920710593903785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268388 (n : ℕ) : ℤ :=
  (A268388.P181920710593903785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268438.P6453878173920205538

`A269940(n)*A357013(n)`
-/

namespace A268438.P6453878173920205538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269940 n * A357013 n

end

end A268438.P6453878173920205538

noncomputable section

/-- A268438: Triangle read by rows, T(n,k) = (-1)^k*(2*n)!*P[n,k](n/(n+1)) where P is the P-transform, for n>=0 and 0<=k<=n.

Offset 0, canonical program `A268438.P6453878173920205538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A268438 (n : ℕ) : ℤ :=
  A268438.P6453878173920205538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A268438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269160.P5728616991785596865

`A387312(2*n)`
-/

namespace A269160.P5728616991785596865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387312 (2 * n)

end

end A269160.P5728616991785596865

noncomputable section

/-- A269160: Formula for Wolfram's Rule 30 cellular automaton: a(n) = n XOR (2n OR 4n).

Offset 0, canonical program `A269160.P5728616991785596865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A387312, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269160 (n : ℕ) : ℤ :=
  A269160.P5728616991785596865.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A387312, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269454.P4242820123996942999

`p?[A294091(n+1)]`
-/

namespace A269454.P4242820123996942999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269454.P4242820123996942999

noncomputable section

/-- A269454: Safe primes that are not congruent to -1 mod 8.

Offset 1, canonical program `A269454.P4242820123996942999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1126 terms. -/
def A269454 (n : ℕ) : ℤ :=
  A269454.P4242820123996942999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1126 terms. -/
def A269454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270088.P5283542168159360007

`abs(or(8, -A273767(n)))`
-/

namespace A270088.P5283542168159360007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 8 (-A273767 n)|

end

end A270088.P5283542168159360007

noncomputable section

/-- A270088: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270088.P5283542168159360007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A270088 (n : ℕ) : ℤ :=
  A270088.P5283542168159360007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A270088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270130.P16178713870882663809

`-or(4, -A273767(n))`
-/

namespace A270130.P16178713870882663809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 4 (-A273767 n)

end

end A270130.P16178713870882663809

noncomputable section

/-- A270130: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 89", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270130.P16178713870882663809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A270130 (n : ℕ) : ℤ :=
  A270130.P16178713870882663809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A270130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271056.P15190929235682603079

`∑[A271054(n)]`
-/

namespace A271056.P15190929235682603079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271056.P15190929235682603079

noncomputable section

/-- A271056: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271056.P15190929235682603079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3159 terms. -/
def A271056 (n : ℕ) : ℤ :=
  A271056.P15190929235682603079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3159 terms. -/
def A271056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271183.P13519153737086807592

`eq[1, A353816(A353816(n)+n)]`
-/

namespace A271183.P13519153737086807592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 (A353816 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271183.P13519153737086807592

noncomputable section

/-- A271183: Löschian numbers (A003136) k such that k + 1 is also Löschian number.

Offset 1, canonical program `A271183.P13519153737086807592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1128 terms. -/
def A271183 (n : ℕ) : ℤ :=
  (A271183.P13519153737086807592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1128 terms. -/
def A271183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272441.P11204430094904168973

`filter[A380788(n+1), A010051(#)]`
-/

namespace A272441.P11204430094904168973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A272441.P11204430094904168973

noncomputable section

/-- A272441: Primes with a prime number of binary digits.

Offset 1, canonical program `A272441.P11204430094904168973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1052 terms. -/
def A272441 (n : ℕ) : ℤ :=
  A272441.P11204430094904168973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1052 terms. -/
def A272441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272933.P1769940145584880595

`lt[and(2, n), A353816(n)]`
-/

namespace A272933.P1769940145584880595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272933.P1769940145584880595

noncomputable section

/-- A272933: Numbers of the form x^2 + 12*y^2.

Offset 1, canonical program `A272933.P1769940145584880595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6625 terms. -/
def A272933 (n : ℕ) : ℤ :=
  (A272933.P1769940145584880595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6625 terms. -/
def A272933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273460.P16091352189442865612

`eq[A007954(n+1), A048050(n+1)]+1`
-/

namespace A273460.P16091352189442865612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273460.P16091352189442865612

noncomputable section

/-- A273460: Numbers n such that sum of the divisors of n (except 1 and n) is equal to the product of the digits of n.

Offset 1, canonical program `A273460.P16091352189442865612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A273460 (n : ℕ) : ℤ :=
  (A273460.P16091352189442865612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A273460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274612.P12827660095432405851

`filter[A043489(n+1), A168184(#)]`
-/

namespace A274612.P12827660095432405851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A274612.P12827660095432405851

noncomputable section

/-- A274612: Numbers not divisible by 10 with at least one zero but no two adjacent 0's among its decimal digits.

Offset 1, canonical program `A274612.P12827660095432405851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1539 terms. -/
def A274612 (n : ℕ) : ℤ :=
  A274612.P12827660095432405851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1539 terms. -/
def A274612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274685.P1074266660649065575

`filter[A274397(n+1), A379952(#)]`
-/

namespace A274685.P1074266660649065575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A274685.P1074266660649065575

noncomputable section

/-- A274685: Odd numbers n such that sigma(n) is divisible by 5.

Offset 1, canonical program `A274685.P1074266660649065575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4521 terms. -/
def A274685 (n : ℕ) : ℤ :=
  A274685.P1074266660649065575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4521 terms. -/
def A274685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275202.P2888438390454499260

`A005942(n+2)/2`
-/

namespace A275202.P2888438390454499260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005942 (n + 2) : ℚ) / 2

end

end A275202.P2888438390454499260

noncomputable section

/-- A275202: Subword complexity (number of distinct blocks of length n) of the period doubling sequence A096268.

Offset 1, canonical program `A275202.P2888438390454499260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005942, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275202 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A275202.P2888438390454499260.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005942, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275202.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276038.P2474071255086564491

`eq[A007954(n), A234959(A051801(n))]`
-/

namespace A276038.P2474071255086564491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234959 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276038.P2474071255086564491

noncomputable section

/-- A276038: Numbers n such that product of digits of n is a power of 6.

Offset 1, canonical program `A276038.P2474071255086564491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A276038 (n : ℕ) : ℤ :=
  (A276038.P2474071255086564491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A276038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253315.P14136227825810400919

`A261283(floor(n/2))`
-/

namespace A253315.P14136227825810400919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261283 ⌊(n : ℚ) / 2⌋.toNat

end

end A253315.P14136227825810400919

noncomputable section

/-- A253315: a(n) = bitwise XOR of all the bit numbers for the bits that are set in n.

Offset 0, canonical program `A253315.P14136227825810400919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A253315 (n : ℕ) : ℤ :=
  A253315.P14136227825810400919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A253315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267259.P16464707296081217590

`Δ[n²]-A267261(n)`
-/

namespace A267259.P16464707296081217590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267261 n

end

end A267259.P16464707296081217590

noncomputable section

/-- A267259: Number of ON (black) cells in the n-th iteration of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267259.P16464707296081217590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267259 (n : ℕ) : ℤ :=
  A267259.P16464707296081217590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230745.P17335340068142128914

`filter[A091855(n+1), A353816(#)]`
-/

namespace A230745.P17335340068142128914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A230745.P17335340068142128914

noncomputable section

/-- A230745: Odious Loeschian numbers.

Offset 1, canonical program `A230745.P17335340068142128914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3697 terms. -/
def A230745 (n : ℕ) : ℤ :=
  A230745.P17335340068142128914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3697 terms. -/
def A230745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231086.P17079081046421122854

`A173490(eq[2, A173490(n+2)-A173490(n+1)]+1)`
-/

namespace A231086.P17079081046421122854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173490 (n + 2) - A173490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231086.P17079081046421122854

noncomputable section

/-- A231086: Initial members of abundant twins, i.e., values of k such that (k, k+2) are both abundant numbers.

Offset 1, canonical program `A231086.P17079081046421122854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3278 terms. -/
def A231086 (n : ℕ) : ℤ :=
  A231086.P17079081046421122854.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3278 terms. -/
def A231086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233905.P15948617020059089414

`A264596(n)-A000120(n)`
-/

namespace A233905.P15948617020059089414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 n - A000120 n

end

end A233905.P15948617020059089414

noncomputable section

/-- A233905: a(2n) = a(n), a(2n+1) = a(n) + n, with a(0)=0.

Offset 0, canonical program `A233905.P15948617020059089414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233905 (n : ℕ) : ℤ :=
  A233905.P15948617020059089414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249345.P5584176250624842080

`A246839(n)-∑[A027868(n)]`
-/

namespace A249345.P5584176250624842080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246839 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249345.P5584176250624842080

noncomputable section

/-- A249345: The exponent of the highest power of 5 dividing the product of the elements on the n-th row of Pascal's triangle.

Offset 0, canonical program `A249345.P5584176250624842080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A249345 (n : ℕ) : ℤ :=
  A249345.P5584176250624842080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A249345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249942.P9237157470274512187

`∩[A156242(n+1)+1, A156243(n+1)]`
-/

namespace A249942.P9237157470274512187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249942.P9237157470274512187

noncomputable section

/-- A249942: Ranks of single 1's in the Kolakoski sequence A000002.

Offset 1, canonical program `A249942.P9237157470274512187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A249942 (n : ℕ) : ℤ :=
  (A249942.P9237157470274512187.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A249942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253180.P12215385652287182854

`A048993(n)*A168256(n)`
-/

namespace A253180.P12215385652287182854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A168256 n

end

end A253180.P12215385652287182854

noncomputable section

/-- A253180: Number T(n,k) of 2n-length strings of balanced parentheses of exactly k different types that are introduced in ascending order; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

Offset 0, canonical program `A253180.P12215385652287182854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A253180 (n : ℕ) : ℤ :=
  A253180.P12215385652287182854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A253180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260298.P4761561818638806536

`A000040(eq[A260611(n+1)+1, A000040(n+1)]+1)`
-/

namespace A260298.P4761561818638806536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260611 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A260298.P4761561818638806536

noncomputable section

/-- A260298: Primes p such that hyperfactorial(p-1) == 1 (mod p).

Offset 1, canonical program `A260298.P4761561818638806536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A260298 (n : ℕ) : ℤ :=
  A260298.P4761561818638806536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A260298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260456.P8742662874947804953

`A359794(n+1)%2`
-/

namespace A260456.P8742662874947804953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359794 (n + 1)) 2

end

end A260456.P8742662874947804953

noncomputable section

/-- A260456: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = 1 and midword sequence (0,null,0,null,0,null,...); see Comments.

Offset 1, canonical program `A260456.P8742662874947804953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260456 (n : ℕ) : ℤ :=
  A260456.P8742662874947804953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263649.P4471014820221520966

`A061347(n+1)*A115660(n+1)`
-/

namespace A263649.P4471014820221520966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A115660 (n + 1)

end

end A263649.P4471014820221520966

noncomputable section

/-- A263649: a(n) is multiplicative with a(2^e) = (-1)^e, a(3^e) = -2*(-1)^e if e>0, a(p^e) = e+1 if p == 1, 7 (mod 24), a(p^e) = (e+1) * (-1)^e if p == 5, 11 (mod 24), a(p^e) = (1 + (-1)^e) / 2 if p == 13, 17, 19, 23 (mod 24).

Offset 1, canonical program `A263649.P4471014820221520966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263649 (n : ℕ) : ℤ :=
  A263649.P4471014820221520966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266288.P2981641528736582152

`∑{d}[n+1, A002324(#)*A059377((n+1)/#)]`
-/

namespace A266288.P2981641528736582152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002324 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A266288.P2981641528736582152

noncomputable section

/-- A266288: Expansion of a(q)^2 * (c(q)/3)^3 in powers of q where a(), c() are cubic AGM theta functions.

Offset 1, canonical program `A266288.P2981641528736582152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266288 (n : ℕ) : ℤ :=
  A266288.P2981641528736582152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269399.P17209248092647305028

`eq[3, gcd(3, A001223(n+6))]`
-/

namespace A269399.P17209248092647305028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A001223 (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269399.P17209248092647305028

noncomputable section

/-- A269399: Numbers n for which prime(n+7)-prime(n+6) is a multiple of three.

Offset 1, canonical program `A269399.P17209248092647305028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269399 (n : ℕ) : ℤ :=
  (A269399.P17209248092647305028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274437.P16973748106690964927

`lt[A005090(n+1), A005088(n+1)]+1`
-/

namespace A274437.P16973748106690964927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A274437.P16973748106690964927

noncomputable section

/-- A274437: Numbers having more distinct prime factors of form 3*k+1 than of the form 3*k+2.

Offset 1, canonical program `A274437.P16973748106690964927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A274437 (n : ℕ) : ℤ :=
  (A274437.P16973748106690964927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A274437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274913.P16127943024732483463

`A274912(n)+1`
-/

namespace A274913.P16127943024732483463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274912 n + 1

end

end A274913.P16127943024732483463

noncomputable section

/-- A274913: Square array read by antidiagonals upwards in which each new term is the least positive integer distinct from its neighbors.

Offset 1, canonical program `A274913.P16127943024732483463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274913 (n : ℕ) : ℤ :=
  A274913.P16127943024732483463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A210510.P16744658977364096029

`comp[A187793(n+1)-1]+1`
-/

namespace A210510.P16744658977364096029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A210510.P16744658977364096029

noncomputable section

/-- A210510: Numbers not in the range of the sum of deficient divisors function.

Offset 1, canonical program `A210510.P16744658977364096029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A210510 (n : ℕ) : ℤ :=
  (A210510.P16744658977364096029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A210510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212529.P13831011610352375140

`A007088(A005352(n+1))`
-/

namespace A212529.P13831011610352375140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A005352 (n + 1)).toNat

end

end A212529.P13831011610352375140

noncomputable section

/-- A212529: Negative numbers in base -2.

Offset 1, canonical program `A212529.P13831011610352375140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A212529 (n : ℕ) : ℤ :=
  A212529.P13831011610352375140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A212529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212591.P6513515405958816910

`floor((A000695(n+1)+A000695(n))/4)`
-/

namespace A212591.P6513515405958816910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000695 (n + 1) + A000695 n : ℚ) / 4⌋

end

end A212591.P6513515405958816910

noncomputable section

/-- A212591: a(n) is the smallest value of k for which A020986(k) = n.

Offset 1, canonical program `A212591.P6513515405958816910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A212591 (n : ℕ) : ℤ :=
  A212591.P6513515405958816910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A212591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212794.P5040853150289294086

`A000217(∑[runs[A005078(n+1)]])`
-/

namespace A212794.P5040853150289294086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212794.P5040853150289294086

noncomputable section

/-- A212794: Triangular numbers (A000217) which are also hypotenuse numbers (A009003).

Offset 1, canonical program `A212794.P5040853150289294086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8837 terms. -/
def A212794 (n : ℕ) : ℤ :=
  A212794.P5040853150289294086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8837 terms. -/
def A212794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213673.P3226696509757726817

`(n²-A000695(n))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213673.P3226696509757726817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A000695 n : ℚ) / 4

end

end A213673.P3226696509757726817

noncomputable section

/-- A213673: (n^2 - A000695(n))/4.

Offset 0, canonical program `A213673.P3226696509757726817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213673 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213673.P3226696509757726817.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214282.P2833437964249261638

`A214283(n+1)+A001405(n+1)`
-/

namespace A214282.P2833437964249261638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214283 (n + 1) + A001405 (n + 1)

end

end A214282.P2833437964249261638

noncomputable section

/-- A214282: Largest Euler characteristic of a downset on an n-dimensional cube.

Offset 1, canonical program `A214282.P2833437964249261638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214282 (n : ℕ) : ℤ :=
  A214282.P2833437964249261638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217856.P13198607299286411855

`eq[3, A318475(n+1)]+1`
-/

namespace A217856.P13198607299286411855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A217856.P13198607299286411855

noncomputable section

/-- A217856: Numbers with three prime factors, not necessarily distinct, except cubes of primes.

Offset 1, canonical program `A217856.P13198607299286411855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217856 (n : ℕ) : ℤ :=
  (A217856.P13198607299286411855.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228071.P9444289082571793754

`A007088(n)-n`
-/

namespace A228071.P9444289082571793754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n - (n : ℤ)

end

end A228071.P9444289082571793754

noncomputable section

/-- A228071: Write n in binary and interpret as a decimal number; a(n) is this quantity minus n.

Offset 0, canonical program `A228071.P9444289082571793754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228071 (n : ℕ) : ℤ :=
  A228071.P9444289082571793754.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228071.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229758.P9160867256716329137

`A007953(row(n)+1)*A007953(col(n)+1)-A007953((row(n)+1)*(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A229758.P9160867256716329137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.triRow n + 1) * A007953 (SequenceMachineLib.triCol n + 1) - A007953 ((SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triCol n + 1))

end

end A229758.P9160867256716329137

noncomputable section

/-- A229758: Triangle T(n,k) = A007953(n) * A007953(k) - A007953(n*k) with 1 <= k <= n.

Offset 1, canonical program `A229758.P9160867256716329137`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229758 (n : ℕ) : ℤ :=
  A229758.P9160867256716329137.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229758.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230297.P11014700209546004921

`A007088(A010062(n))`
-/

namespace A230297.P11014700209546004921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A010062 n).toNat

end

end A230297.P11014700209546004921

noncomputable section

/-- A230297: a(n) = A010062(n) written in binary: a(n+1) = a(n) + hammingweight(a(n)) in binary.

Offset 0, canonical program `A230297.P11014700209546004921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A010062, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230297 (n : ℕ) : ℤ :=
  A230297.P11014700209546004921.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A010062, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230297.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230724.P11052356802034479438

`A007953(A000073(n))`
-/

namespace A230724.P11052356802034479438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000073 n).toNat

end

end A230724.P11052356802034479438

noncomputable section

/-- A230724: Digital sum of tribonacci numbers with a(0)=a(1)=0, a(2)=1.

Offset 0, canonical program `A230724.P11052356802034479438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230724 (n : ℕ) : ℤ :=
  A230724.P11052356802034479438.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230725.P18115786073558631145

`A007953(A000213(n))`
-/

namespace A230725.P18115786073558631145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000213 n).toNat

end

end A230725.P18115786073558631145

noncomputable section

/-- A230725: Digital sum of tribonacci numbers with a(0)=a(1)=a(2)=1.

Offset 0, canonical program `A230725.P18115786073558631145`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230725 (n : ℕ) : ℤ :=
  A230725.P18115786073558631145.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239694.P16976564839662586664

`A053829(A000040(n+1))`
-/

namespace A239694.P16976564839662586664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A000040 (n + 1)).toNat

end

end A239694.P16976564839662586664

noncomputable section

/-- A239694: Base 8 sum of digits of prime(n).

Offset 1, canonical program `A239694.P16976564839662586664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239694 (n : ℕ) : ℤ :=
  A239694.P16976564839662586664.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240848.P13107810746749667617

`n+A007953(n)+A055642(n)`
-/

namespace A240848.P13107810746749667617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A007953 n + A055642 n

end

end A240848.P13107810746749667617

noncomputable section

/-- A240848: Sum of n, digitsum(n) and number of digits of n.

Offset 0, canonical program `A240848.P13107810746749667617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240848 (n : ℕ) : ℤ :=
  A240848.P13107810746749667617.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243586.P11937443837050676484

`p?[n*A010051(A007953(n)+3)]`
-/

namespace A243586.P11937443837050676484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (A007953 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243586.P11937443837050676484

noncomputable section

/-- A243586: Primes p such that sum of digits + 3 is prime.

Offset 1, canonical program `A243586.P11937443837050676484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A243586 (n : ℕ) : ℤ :=
  A243586.P11937443837050676484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A243586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243615.P8785003313074137621

`eq[A007953(n), A070939(n)]`
-/

namespace A243615.P8785003313074137621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243615.P8785003313074137621

noncomputable section

/-- A243615: Numbers n whose digital sum equals the number of binary digits in its binary expansion.

Offset 1, canonical program `A243615.P8785003313074137621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A243615 (n : ℕ) : ℤ :=
  (A243615.P8785003313074137621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A243615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243616.P4113993082893584915

`p?[A007953(n+1)+A000040(n+1)]`
-/

namespace A243616.P4113993082893584915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243616.P4113993082893584915

noncomputable section

/-- A243616: Primes p of the form prime(n) + digitsum(n).

Offset 1, canonical program `A243616.P4113993082893584915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A243616 (n : ℕ) : ℤ :=
  A243616.P4113993082893584915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A243616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245354.P11124633670853891194

`A007953(A024653(n))`
-/

namespace A245354.P11124633670853891194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024653 n).toNat

end

end A245354.P11124633670853891194

noncomputable section

/-- A245354: Sum of digits of n in fractional base 9/5.

Offset 0, canonical program `A245354.P11124633670853891194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245354 (n : ℕ) : ℤ :=
  A245354.P11124633670853891194.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245627.P1916089901175552377

`A007953(11*n)`
-/

namespace A245627.P1916089901175552377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (11 * n)

end

end A245627.P1916089901175552377

noncomputable section

/-- A245627: Base 10 digit sum of 11*n.

Offset 0, canonical program `A245627.P1916089901175552377`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245627 (n : ℕ) : ℤ :=
  A245627.P1916089901175552377.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245802.P6380090416342982397

`eq[0, (n+1)%A053829(n+1)]+1`
-/

namespace A245802.P6380090416342982397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A053829 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245802.P6380090416342982397

noncomputable section

/-- A245802: Numbers that are divisible by the sum of their base 8 digits.

Offset 1, canonical program `A245802.P6380090416342982397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A245802 (n : ℕ) : ℤ :=
  (A245802.P6380090416342982397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A245802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247083.P17136360663830774539

`a(n-1)+A007953(a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A247083.P17136360663830774539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) + A007953 (a (n - 3)).toNat

end

end A247083.P17136360663830774539

noncomputable section

/-- A247083: a(n) = 0 for n <= 0: Starting with n=1, a(n) = 1 + the sum of the digital sums of a(0) through a(n-3).

Offset 0, canonical program `A247083.P17136360663830774539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247083 (n : ℕ) : ℤ :=
  A247083.P17136360663830774539.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249183.P13548390400809222770

`A007088(A249184(n))`
-/

namespace A249183.P13548390400809222770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A249184 n).toNat

end

end A249183.P13548390400809222770

noncomputable section

/-- A249183: a(n) = row n of triangle A249133, concatenated.

Offset 0, canonical program `A249183.P13548390400809222770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A249184, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249183 (n : ℕ) : ℤ :=
  A249183.P13548390400809222770.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A249184, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249183.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249919.P15917977027172728127

`A010371(A007088(n))`
-/

namespace A249919.P15917977027172728127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 (A007088 n).toNat

end

end A249919.P15917977027172728127

noncomputable section

/-- A249919: Number of LCD (liquid-crystal display) segments needed to display n in binary.

Offset 0, canonical program `A249919.P15917977027172728127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249919 (n : ℕ) : ℤ :=
  A249919.P15917977027172728127.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249919.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254278.P16788914304829267329

`record[(2+n)%A187793(n+2)]`
-/

namespace A254278.P16788914304829267329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 + n : ℤ) (A187793 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254278.P16788914304829267329

noncomputable section

/-- A254278: Numbers that are smaller than the sum of their deficient divisors.

Offset 1, canonical program `A254278.P16788914304829267329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8454 terms. -/
def A254278 (n : ℕ) : ℤ :=
  A254278.P16788914304829267329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8454 terms. -/
def A254278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257295.P17273272147279927714

`round(A007953(n)/A055642(n))`
-/

namespace A257295.P17273272147279927714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007953 n : ℚ) / (A055642 n : ℚ))

end

end A257295.P17273272147279927714

noncomputable section

/-- A257295: Arithmetic mean of the digits of n, rounded to the nearest integer.

Offset 0, canonical program `A257295.P17273272147279927714`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257295 (n : ℕ) : ℤ :=
  A257295.P17273272147279927714.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257296.P8153982668821683699

`floor(A007953(n)/A055642(n)*10^(A055642(n)-1))`
-/

namespace A257296.P8153982668821683699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007953 n : ℚ) / (A055642 n : ℚ) * (10 : ℚ) ^ (A055642 n - 1 : ℤ)⌋

end

end A257296.P8153982668821683699

noncomputable section

/-- A257296: Arithmetic mean of the digits of n, multiplied by 10^(d-1) and rounded down, where d is the number of digits of n.

Offset 0, canonical program `A257296.P8153982668821683699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257296 (n : ℕ) : ℤ :=
  A257296.P8153982668821683699.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A264663.P2079914734675243927

`A007088(A000108(n))`
-/

namespace A264663.P2079914734675243927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000108 n).toNat

end

end A264663.P2079914734675243927

noncomputable section

/-- A264663: Catalan numbers written in base 2.

Offset 0, canonical program `A264663.P2079914734675243927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264663 (n : ℕ) : ℤ :=
  A264663.P2079914734675243927.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266809.P9129826628413284547

`A007088(A266810(n))`
-/

namespace A266809.P9129826628413284547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266810 n).toNat

end

end A266809.P9129826628413284547

noncomputable section

/-- A266809: Binary representation of the n-th iteration of the "Rule 62" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266809.P9129826628413284547`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A266810, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266809 (n : ℕ) : ℤ :=
  A266809.P9129826628413284547.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A266810, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266809.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267257.P4515086165542725921

`A007088(A267258(n))`
-/

namespace A267257.P4515086165542725921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267258 n).toNat

end

end A267257.P4515086165542725921

noncomputable section

/-- A267257: Binary representation of the middle column of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267257.P4515086165542725921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A267258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267257 (n : ℕ) : ℤ :=
  A267257.P4515086165542725921.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A267258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268227.P16957043161676864909

`A007953((2*n)²)`
-/

namespace A268227.P16957043161676864909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((2 * n) ^ 2)

end

end A268227.P16957043161676864909

noncomputable section

/-- A268227: a(n) = sum of digits of (2n)^2.

Offset 0, canonical program `A268227.P16957043161676864909`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268227 (n : ℕ) : ℤ :=
  A268227.P16957043161676864909.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268228.P13943223951008201596

`A007953((2*n+1)²)`
-/

namespace A268228.P13943223951008201596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((2 * n + 1) ^ 2)

end

end A268228.P13943223951008201596

noncomputable section

/-- A268228: a(n) = sum of digits of (2n + 1)^2.

Offset 0, canonical program `A268228.P13943223951008201596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268228 (n : ℕ) : ℤ :=
  A268228.P13943223951008201596.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268383.P1822048145753504683

`n-A268382(n)`
-/

namespace A268383.P1822048145753504683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268382 n

end

end A268383.P1822048145753504683

noncomputable section

/-- A268383: Least monotonic left inverse of A268412.

Offset 0, canonical program `A268383.P1822048145753504683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268382, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268383 (n : ℕ) : ℤ :=
  A268383.P1822048145753504683.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268382, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268383.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268620.P8472382142886893102

`lt[A007953(n)%4, 1]`
-/

namespace A268620.P8472382142886893102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 n) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268620.P8472382142886893102

noncomputable section

/-- A268620: Numbers whose digital sum is a multiple of 4.

Offset 1, canonical program `A268620.P8472382142886893102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A268620 (n : ℕ) : ℤ :=
  (A268620.P8472382142886893102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A268620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269130.P11293985648693636355

`A007088(n)+n`
-/

namespace A269130.P11293985648693636355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n + (n : ℤ)

end

end A269130.P11293985648693636355

noncomputable section

/-- A269130: a(n) = n + (n base 2 regarded as a decimal number).

Offset 0, canonical program `A269130.P11293985648693636355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269130 (n : ℕ) : ℤ :=
  A269130.P11293985648693636355.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269221.P1374925129774373028

`A007953(n)!`
-/

namespace A269221.P1374925129774373028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007953 n).toNat

end

end A269221.P1374925129774373028

noncomputable section

/-- A269221: Factorial of the sum of decimal digits of n.

Offset 0, canonical program `A269221.P1374925129774373028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269221 (n : ℕ) : ℤ :=
  (A269221.P1374925129774373028.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273188.P10817074238036710104

`eq[8, gcd(8, A007953(n))]`
-/

namespace A273188.P10817074238036710104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273188.P10817074238036710104

noncomputable section

/-- A273188: Numbers whose digit sum is divisible by 8.

Offset 1, canonical program `A273188.P10817074238036710104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A273188 (n : ℕ) : ℤ :=
  (A273188.P10817074238036710104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A273188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276049.P10431965570969386100

`p?[(n+1)*A294936(n-A294936(n+2)+1)]`
-/

namespace A276049.P10431965570969386100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294936 ((n : ℤ) - A294936 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276049.P10431965570969386100

noncomputable section

/-- A276049: Isolated deficient numbers that are prime.

Offset 1, canonical program `A276049.P10431965570969386100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2649 terms. -/
def A276049 (n : ℕ) : ℤ :=
  A276049.P10431965570969386100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2649 terms. -/
def A276049.provenance : SequenceMachineLib.Provenance := .conjectured

