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
import Seq.B000.C025
import Seq.B000.C026
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
import Seq.B000.C045
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A215161.P11448201851860339282

`∪[A140542(n+1), A215156(n+1)]`
-/

namespace A215161.P11448201851860339282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215161.P11448201851860339282

noncomputable section

/-- A215161: Primes congruent to {2, 3, 5, 7, 11} mod 17.

Offset 1, canonical program `A215161.P11448201851860339282`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215161.anchor (n : ℕ) (hn : 1 ≤ n) : A215161 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 3, 5, 7, 11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215161`. -/
def A215161 (n : ℕ) : ℤ :=
  (A215161.P11448201851860339282.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215161.anchor (n : ℕ) (hn : 1 ≤ n) : A215161 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 3, 5, 7, 11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215161`. -/
def A215161.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215162.P12842036876452639844

`∪[A141876(n+1), A215157(n+1)]`
-/

namespace A215162.P12842036876452639844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215162.P12842036876452639844

noncomputable section

/-- A215162: Primes congruent to {2, 3, 5, 7, 11} mod 19.

Offset 1, canonical program `A215162.P12842036876452639844`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215162.anchor (n : ℕ) (hn : 1 ≤ n) : A215162 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({2, 3, 5, 7, 11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215162`. -/
def A215162 (n : ℕ) : ℤ :=
  (A215162.P12842036876452639844.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215162.anchor (n : ℕ) (hn : 1 ≤ n) : A215162 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({2, 3, 5, 7, 11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215162`. -/
def A215162.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215302.P2678401142277637227

`∪[A141851(n+1), A215134(n+1)]`
-/

namespace A215302.P2678401142277637227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215302.P2678401142277637227

noncomputable section

/-- A215302: Primes congruent to {1, 2, 3, 4} mod 11.

Offset 1, canonical program `A215302.P2678401142277637227`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215302.anchor (n : ℕ) (hn : 1 ≤ n) : A215302 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({1, 2, 3, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215302`. -/
def A215302 (n : ℕ) : ℤ :=
  (A215302.P2678401142277637227.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215302.anchor (n : ℕ) (hn : 1 ≤ n) : A215302 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({1, 2, 3, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215302`. -/
def A215302.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215306.P3529849924513493806

`∪[A141849(n+1), A215102(n+1)]`
-/

namespace A215306.P3529849924513493806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215306.P3529849924513493806

noncomputable section

/-- A215306: Primes congruent to {1, 2, 3, 5} mod 11.

Offset 1, canonical program `A215306.P3529849924513493806`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215306.anchor (n : ℕ) (hn : 1 ≤ n) : A215306 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({1, 2, 3, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215306`. -/
def A215306 (n : ℕ) : ℤ :=
  (A215306.P3529849924513493806.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215306.anchor (n : ℕ) (hn : 1 ≤ n) : A215306 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({1, 2, 3, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215306`. -/
def A215306.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215313.P14218060251309606385

`∪[A102851(n+1), A215305(n+1)]`
-/

namespace A215313.P14218060251309606385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P14218060251309606385

noncomputable section

/-- A215313: Primes congruent to {1, 2, 3, 4, 5} mod 19.

Offset 1, canonical program `A215313.P14218060251309606385`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215313.anchor (n : ℕ) (hn : 1 ≤ n) : A215313 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2, 3, 4, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215313`. -/
def A215313 (n : ℕ) : ℤ :=
  (A215313.P14218060251309606385.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215313.anchor (n : ℕ) (hn : 1 ≤ n) : A215313 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2, 3, 4, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215313`. -/
def A215313.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215314.P15003749524856667591

`∪[A141851(n+1), A215102(n+1)]`
-/

namespace A215314.P15003749524856667591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215314.P15003749524856667591

noncomputable section

/-- A215314: Primes congruent to {2, 3, 4, 5} mod 11.

Offset 1, canonical program `A215314.P15003749524856667591`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215314.anchor (n : ℕ) (hn : 1 ≤ n) : A215314 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 3, 4, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215314`. -/
def A215314 (n : ℕ) : ℤ :=
  (A215314.P15003749524856667591.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215314.anchor (n : ℕ) (hn : 1 ≤ n) : A215314 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 3, 4, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215314`. -/
def A215314.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215320.P3172696357784485875

`∪[A140545(n+1), A215308(n+1)]`
-/

namespace A215320.P3172696357784485875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215320.P3172696357784485875

noncomputable section

/-- A215320: Primes congruent to {1, 2, 3, 5, 6} mod 17.

Offset 1, canonical program `A215320.P3172696357784485875`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215320.anchor (n : ℕ) (hn : 1 ≤ n) : A215320 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({1, 2, 3, 5, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215320`. -/
def A215320 (n : ℕ) : ℤ :=
  (A215320.P3172696357784485875.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215320.anchor (n : ℕ) (hn : 1 ≤ n) : A215320 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({1, 2, 3, 5, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215320`. -/
def A215320.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215321.P2990805988694639767

`∪[A141871(n+1), A215309(n+1)]`
-/

namespace A215321.P2990805988694639767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215321.P2990805988694639767

noncomputable section

/-- A215321: Primes congruent to {1, 2, 3, 5, 6} mod 19.

Offset 1, canonical program `A215321.P2990805988694639767`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215321.anchor (n : ℕ) (hn : 1 ≤ n) : A215321 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2, 3, 5, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215321`. -/
def A215321 (n : ℕ) : ℤ :=
  (A215321.P2990805988694639767.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215321.anchor (n : ℕ) (hn : 1 ≤ n) : A215321 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2, 3, 5, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215321`. -/
def A215321.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215325.P6103314079684101461

`∪[A141871(n+1), A215305(n+1)]`
-/

namespace A215325.P6103314079684101461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P6103314079684101461

noncomputable section

/-- A215325: Primes congruent to {1, 2, 3, 4, 6} mod 19.

Offset 1, canonical program `A215325.P6103314079684101461`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215325.anchor (n : ℕ) (hn : 1 ≤ n) : A215325 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2, 3, 4, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215325`. -/
def A215325 (n : ℕ) : ℤ :=
  (A215325.P6103314079684101461.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215325.anchor (n : ℕ) (hn : 1 ≤ n) : A215325 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2, 3, 4, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215325`. -/
def A215325.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215155.P12284036453472301963

`∪[A100202(n+1), A215211(n+1)]`
-/

namespace A215155.P12284036453472301963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215155.P12284036453472301963

noncomputable section

/-- A215155: Primes congruent to {2, 3, 5, 7} mod 13.

Offset 1, canonical program `A215155.P12284036453472301963`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215155.anchor (n : ℕ) (hn : 1 ≤ n) : A215155 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 3, 5, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215155`. -/
def A215155 (n : ℕ) : ℤ :=
  (A215155.P12284036453472301963.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215155.anchor (n : ℕ) (hn : 1 ≤ n) : A215155 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 3, 5, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215155`. -/
def A215155.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215303.P1432680102437036267

`∪[A093191(n+1), A215135(n+1)]`
-/

namespace A215303.P1432680102437036267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215303.P1432680102437036267

noncomputable section

/-- A215303: Primes congruent to {1, 2, 3, 4} mod 13.

Offset 1, canonical program `A215303.P1432680102437036267`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215303.anchor (n : ℕ) (hn : 1 ≤ n) : A215303 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1, 2, 3, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215303`. -/
def A215303 (n : ℕ) : ℤ :=
  (A215303.P1432680102437036267.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215303.anchor (n : ℕ) (hn : 1 ≤ n) : A215303 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1, 2, 3, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215303`. -/
def A215303.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215307.P10886749593874814575

`∪[A102732(n+1), A215135(n+1)]`
-/

namespace A215307.P10886749593874814575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215307.P10886749593874814575

noncomputable section

/-- A215307: Primes congruent to {1, 2, 3, 5} mod 13.

Offset 1, canonical program `A215307.P10886749593874814575`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215307.anchor (n : ℕ) (hn : 1 ≤ n) : A215307 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1, 2, 3, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215307`. -/
def A215307 (n : ℕ) : ℤ :=
  (A215307.P10886749593874814575.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215307.anchor (n : ℕ) (hn : 1 ≤ n) : A215307 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1, 2, 3, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215307`. -/
def A215307.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215315.P1023930215791107352

`∪[A093191(n+1), A215103(n+1)]`
-/

namespace A215315.P1023930215791107352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215315.P1023930215791107352

noncomputable section

/-- A215315: Primes congruent to {2, 3, 4, 5} mod 13.

Offset 1, canonical program `A215315.P1023930215791107352`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215315.anchor (n : ℕ) (hn : 1 ≤ n) : A215315 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 3, 4, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215315`. -/
def A215315 (n : ℕ) : ℤ :=
  (A215315.P1023930215791107352.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215315.anchor (n : ℕ) (hn : 1 ≤ n) : A215315 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 3, 4, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215315`. -/
def A215315.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215383.P317313801147762073

`∪[A093350(n+1), A215135(n+1)]`
-/

namespace A215383.P317313801147762073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215383.P317313801147762073

noncomputable section

/-- A215383: Primes congruent to {1, 2, 3, 6} mod 13.

Offset 1, canonical program `A215383.P317313801147762073`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215383.anchor (n : ℕ) (hn : 1 ≤ n) : A215383 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1, 2, 3, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215383`. -/
def A215383 (n : ℕ) : ℤ :=
  (A215383.P317313801147762073.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A215383.anchor (n : ℕ) (hn : 1 ≤ n) : A215383 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1, 2, 3, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A215.A215383`. -/
def A215383.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A295310.P15878343265230964827

`gcd(n+1, A062401(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295310.P15878343265230964827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A062401 (n + 1))

end

end A295310.P15878343265230964827

noncomputable section

/-- A295310: a(n) = gcd(n, A062401(n)), where A062401(n) = phi(sigma(n)).

Offset 1, canonical program `A295310.P15878343265230964827`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A062401(n+1))` (program `A295310.P15878343265230964827`, by `A295310.P15878343265230964827.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A295310 (n : ℕ) : ℤ :=
  (A295310.P15878343265230964827.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A062401(n+1))` (program `A295310.P15878343265230964827`, by `A295310.P15878343265230964827.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A295310.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A178881.P10769260265071727443

`(A018806(n+1)-(n+1)*(n+2)/2)/2`
-/

namespace A178881.P10769260265071727443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A018806 (n + 1) : ℚ) - ((n + 1) * (n + 2) : ℚ) / 2) / 2

end

end A178881.P10769260265071727443

noncomputable section

/-- A178881: Sum of all pairs of greatest common divisors for (i,j) where 1 <= i < j <= n.

Offset 1, canonical program `A178881.P10769260265071727443`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178881 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178881.P10769260265071727443.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179020.P13298888622046712416

`1-A095190(n)`
-/

namespace A179020.P13298888622046712416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095190 n

end

end A179020.P13298888622046712416

noncomputable section

/-- A179020: Doubled Thue-Morse sequence: the A010059 sequence replacing 0 with 0,0 and 1 with 1,1.

Offset 0, canonical program `A179020.P13298888622046712416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179020 (n : ℕ) : ℤ :=
  A179020.P13298888622046712416.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179020.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A194532.P2568676926494303915

`A069091(n+1)/A007434(n+1)`
-/

namespace A194532.P2568676926494303915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ)

end

end A194532.P2568676926494303915

noncomputable section

/-- A194532: Jordan function ratio J_6(n)/J_2(n).

Offset 1, canonical program `A194532.P2568676926494303915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194532 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A194532.P2568676926494303915.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A198286.P6929741441836458733

`∑{d}[n+1, A053143(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198286.P6929741441836458733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053143 d

end

end A198286.P6929741441836458733

noncomputable section

/-- A198286: a(n) = Sum_{d|n} (A053143(d) or smallest square divisible by d).

Offset 1, canonical program `A198286.P6929741441836458733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A198286 (n : ℕ) : ℤ :=
  A198286.P6929741441836458733.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A198286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A206258.P13828075839344405108

`8*A002088(n+1)-3`
-/

namespace A206258.P13828075839344405108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002088 (n + 1) - 3

end

end A206258.P13828075839344405108

noncomputable section

/-- A206258: 1/8 the number of 2 X 2 -n..n arrays with a 2 X 2 -n..n inverse, i.e., with determinant +-1.

Offset 1, canonical program `A206258.P13828075839344405108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206258 (n : ℕ) : ℤ :=
  A206258.P13828075839344405108.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A206475.P1877464860005906929

`A206369(n+2)-A206369(n+1)`
-/

namespace A206475.P1877464860005906929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (n + 2) - A206369 (n + 1)

end

end A206475.P1877464860005906929

noncomputable section

/-- A206475: First differences of A206369.

Offset 1, canonical program `A206475.P1877464860005906929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206475 (n : ℕ) : ℤ :=
  A206475.P1877464860005906929.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A209187.P1822992089248699320

`A000203(n+1)-A051953(n+1)`
-/

namespace A209187.P1822992089248699320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A051953 (n + 1)

end

end A209187.P1822992089248699320

noncomputable section

/-- A209187: Sum of divisors of n minus cototient of n.

Offset 1, canonical program `A209187.P1822992089248699320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209187 (n : ℕ) : ℤ :=
  A209187.P1822992089248699320.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A210000.P5435968868787770991

`2*A171503(n)`
-/

namespace A210000.P5435968868787770991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171503 n

end

end A210000.P5435968868787770991

noncomputable section

/-- A210000: Number of unimodular 2 X 2 matrices having all terms in {0,1,...,n}.

Offset 0, canonical program `A210000.P5435968868787770991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210000 (n : ℕ) : ℤ :=
  A210000.P5435968868787770991.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A210000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213723.P16906504039314298671

`2*A213714(n)`
-/

namespace A213723.P16906504039314298671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213714 n

end

end A213723.P16906504039314298671

noncomputable section

/-- A213723: a(n) = smallest natural number x such that x=n+A000120(x), otherwise zero.

Offset 0, canonical program `A213723.P16906504039314298671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213723 (n : ℕ) : ℤ :=
  A213723.P16906504039314298671.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A220466.P5608170771874935148

`(n+2)/2*A060818(n+1)/A060818(n)`
-/

namespace A220466.P5608170771874935148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * ((A060818 (n + 1) : ℚ) / (A060818 n : ℚ))

end

end A220466.P5608170771874935148

noncomputable section

/-- A220466: a((2*n-1)*2^p) = 4^p*(n-1) + 2^(p-1)*(1+2^p), p >= 0 and n >= 1.

Offset 1, canonical program `A220466.P5608170771874935148`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220466 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A220466.P5608170771874935148.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A220466.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227873.P3410460234799286399

`∑{d}[n+1, A102392(#)]`
-/

namespace A227873.P3410460234799286399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A102392 d

end

end A227873.P3410460234799286399

noncomputable section

/-- A227873: Sum of odious divisors of n. See A000069 for odious numbers.

Offset 1, canonical program `A227873.P3410460234799286399`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227873 (n : ℕ) : ℤ :=
  A227873.P3410460234799286399.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227944.P6444077743464981226

`1+a(A053575(n+1)-1)` with `a(0)=0`
-/

namespace A227944.P6444077743464981226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A053575 (n + 1) - 1).toNat

end

end A227944.P6444077743464981226

noncomputable section

/-- A227944: Number of iterations of "take odd part of phi" (A053575) to reach 1 from n.

Offset 1, canonical program `A227944.P6444077743464981226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227944 (n : ℕ) : ℤ :=
  (A227944.P6444077743464981226.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227944.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234017.P14444333569528327869

`(1-A079559(n))*A234016(n)`
-/

namespace A234017.P14444333569528327869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A079559 n) * A234016 n

end

end A234017.P14444333569528327869

noncomputable section

/-- A234017: Inverse function for injection A055938.

Offset 0, canonical program `A234017.P14444333569528327869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234017 (n : ℕ) : ℤ :=
  A234017.P14444333569528327869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234431.P6979625768694921759

`A001969(n+1)+A001969(n+2)`
-/

namespace A234431.P6979625768694921759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) + A001969 (n + 2)

end

end A234431.P6979625768694921759

noncomputable section

/-- A234431: Numbers that are the sum of 2 successive evil numbers (A001969).

Offset 1, canonical program `A234431.P6979625768694921759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234431 (n : ℕ) : ℤ :=
  A234431.P6979625768694921759.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243305.P11485261021790212205

`A066781(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243305.P11485261021790212205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) + 1

end

end A243305.P11485261021790212205

noncomputable section

/-- A243305: a(n) = 2^phi(n)+1 = A066781(n)+1.

Offset 1, canonical program `A243305.P11485261021790212205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243305 (n : ℕ) : ℤ :=
  A243305.P11485261021790212205.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243305.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243306.P11123591734652521989

`A066781(n+1)-A000010(n+1)`
-/

namespace A243306.P11123591734652521989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) - A000010 (n + 1)

end

end A243306.P11123591734652521989

noncomputable section

/-- A243306: 2^phi(n) - phi(n).

Offset 1, canonical program `A243306.P11123591734652521989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243306 (n : ℕ) : ℤ :=
  A243306.P11123591734652521989.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243307.P15340824748724089513

`A066781(n+1)+A000010(n+1)`
-/

namespace A243307.P15340824748724089513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) + A000010 (n + 1)

end

end A243307.P15340824748724089513

noncomputable section

/-- A243307: a(n) = 2^phi(n) + phi(n).

Offset 1, canonical program `A243307.P15340824748724089513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243307 (n : ℕ) : ℤ :=
  A243307.P15340824748724089513.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243307.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245710.P15631509805562168488

`A010059(n)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A245710.P15631509805562168488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A010059 n + a (n - 1)

end

end A245710.P15631509805562168488

noncomputable section

/-- A245710: Number of nonzero evil numbers <= n, see A001969.

Offset 0, canonical program `A245710.P15631509805562168488`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245710 (n : ℕ) : ℤ :=
  A245710.P15631509805562168488.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245710.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254377.P13394934176457571448

`1-A228495(n)`
-/

namespace A254377.P13394934176457571448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A228495 n

end

end A254377.P13394934176457571448

noncomputable section

/-- A254377: Characteristic function of A230709: a(n) = 1 if n is either evil (A001969) or even odious (A128309), otherwise 0 (when n is odd odious).

Offset 0, canonical program `A254377.P13394934176457571448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254377 (n : ℕ) : ℤ :=
  A254377.P13394934176457571448.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254651.P5982598180716446576

`1-A254379(n)`
-/

namespace A254651.P5982598180716446576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A254379 n

end

end A254651.P5982598180716446576

noncomputable section

/-- A254651: Characteristic function of A254614, numbers that are either odd or evil (or both).

Offset 0, canonical program `A254651.P5982598180716446576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254651 (n : ℕ) : ℤ :=
  A254651.P5982598180716446576.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255070.P12600322617074170858

`A236840(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255070.P12600322617074170858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236840 n : ℚ) / 2

end

end A255070.P12600322617074170858

noncomputable section

/-- A255070: (1/2)*(n minus number of runs in the binary expansion of n): a(n) = (n - A005811(n)) / 2 = A236840(n)/2.

Offset 0, canonical program `A255070.P12600322617074170858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255070 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A255070.P12600322617074170858.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255070.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255072.P11066675909169792664

`1+a(A236840(n))` with `a(0)=0, a(1)=1`
-/

namespace A255072.P11066675909169792664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A236840 n).toNat

end

end A255072.P11066675909169792664

noncomputable section

/-- A255072: Number of steps to reach 0 starting with n and using the iterated process: x -> x - (number of runs in binary representation of x).

Offset 0, canonical program `A255072.P11066675909169792664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255072 (n : ℕ) : ℤ :=
  (A255072.P11066675909169792664.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261227.P15274673965007870817

`A261226(n^3)`
-/

namespace A261227.P15274673965007870817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (n ^ 3)

end

end A261227.P15274673965007870817

noncomputable section

/-- A261227: a(n) = number of steps to reach 0 when starting from k = n^3 and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

Offset 0, canonical program `A261227.P15274673965007870817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261227 (n : ℕ) : ℤ :=
  A261227.P15274673965007870817.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261228.P14680234118456696822

`A261226((n+1)^3-1)`
-/

namespace A261228.P14680234118456696822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 ((n + 1) ^ 3 - 1)

end

end A261228.P14680234118456696822

noncomputable section

/-- A261228: a(n) = number of steps to reach 0 when starting from k = (n^3)-1 and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

Offset 1, canonical program `A261228.P14680234118456696822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261228 (n : ℕ) : ℤ :=
  A261228.P14680234118456696822.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261768.P4235035151799676691

`A000010(n+1)^(n+1)-A062981(n+1)`
-/

namespace A261768.P4235035151799676691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ (n + 1) - A062981 (n + 1)

end

end A261768.P4235035151799676691

noncomputable section

/-- A261768: a(n) = phi(n)^n - n^phi(n), where phi(n) is Euler's totient function.

Offset 1, canonical program `A261768.P4235035151799676691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261768 (n : ℕ) : ℤ :=
  A261768.P4235035151799676691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261768.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268289.P17910930367041413554

`a(n-1)-A037861(n)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268289.P17910930367041413554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A037861 n

end

end A268289.P17910930367041413554

noncomputable section

/-- A268289: a(0)=0; thereafter a(n) = a(n-1) - A037861(n).

Offset 0, canonical program `A268289.P17910930367041413554`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268289 (n : ℕ) : ℤ :=
  A268289.P17910930367041413554.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268289.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268676.P8159254776456483871

`2-A106400(n)`
-/

namespace A268676.P8159254776456483871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A106400 n

end

end A268676.P8159254776456483871

noncomputable section

/-- A268676: a(n) = A101080(n,A268823(3+n)), where A101080(x,y) gives the Hamming distance between binary expansions of x and y.

Offset 0, canonical program `A268676.P8159254776456483871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268676 (n : ℕ) : ℤ :=
  A268676.P8159254776456483871.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268676.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273060.P12650829157669879632

`A048855(n+1)/A000010(n+1)`
-/

namespace A273060.P12650829157669879632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048855 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A273060.P12650829157669879632

noncomputable section

/-- A273060: a(n) = phi(n!)/phi(n).

Offset 1, canonical program `A273060.P12650829157669879632`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273060 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A273060.P12650829157669879632.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274008.P14054883072027176064

`2*A005598(n)-1`
-/

namespace A274008.P14054883072027176064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005598 n - 1

end

end A274008.P14054883072027176064

noncomputable section

/-- A274008: Number of length-n ternary sequences where the sum of each block differs by at most 1 from every other block of the same length.

Offset 0, canonical program `A274008.P14054883072027176064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274008 (n : ℕ) : ℤ :=
  A274008.P14054883072027176064.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275812.P13506188268199266465

`A001222(n+1)-A056169(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275812.P13506188268199266465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A056169 (n + 1)

end

end A275812.P13506188268199266465

noncomputable section

/-- A275812: Sum of exponents larger than one in the prime factorization of n: A001222(n) - A056169(n).

Offset 1, canonical program `A275812.P13506188268199266465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275812 (n : ℕ) : ℤ :=
  A275812.P13506188268199266465.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275812.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276497.P12344191866663872486

`A048862(n+1)+1`
-/

namespace A276497.P12344191866663872486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048862 (n + 1) + 1

end

end A276497.P12344191866663872486

noncomputable section

/-- A276497: Number of noncomposites in the reduced residue system of n-th primorial number, A002110(n).

Offset 1, canonical program `A276497.P12344191866663872486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276497 (n : ℕ) : ℤ :=
  A276497.P12344191866663872486.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277561.P11433701935081207187

`2^A069010(n)`
-/

namespace A277561.P11433701935081207187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A069010 n : ℤ)

end

end A277561.P11433701935081207187

noncomputable section

/-- A277561: a(n) = Sum_{k=0..n} ({binomial(n+2k,2k)*binomial(n,k)} mod 2).

Offset 0, canonical program `A277561.P11433701935081207187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277561 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A277561.P11433701935081207187.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A278350.P8625627632809308465

`A051953(A000045(n+1))`
-/

namespace A278350.P8625627632809308465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000045 (n + 1)).toNat

end

end A278350.P8625627632809308465

noncomputable section

/-- A278350: Cototient of Fibonacci(n).

Offset 1, canonical program `A278350.P8625627632809308465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A278350 (n : ℕ) : ℤ :=
  A278350.P8625627632809308465.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A278350.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285881.P15118884319307160235

`A013928(n+2)-A285879(n+1)`
-/

namespace A285881.P15118884319307160235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A285879 (n + 1)

end

end A285881.P15118884319307160235

noncomputable section

/-- A285881: Number of even squarefree numbers <= n.

Offset 1, canonical program `A285881.P15118884319307160235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285881 (n : ℕ) : ℤ :=
  A285881.P15118884319307160235.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286424.P15733506448346967103

`A048862(n)-2*A117929(A002110(n))`
-/

namespace A286424.P15733506448346967103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048862 n - 2 * A117929 (A002110 n).toNat

end

end A286424.P15733506448346967103

noncomputable section

/-- A286424: Number of partitions of p_n# into parts (q, k) both coprime to p_n#, with q prime and k nonprime, where p_n# = A002110(n).

Offset 0, canonical program `A286424.P15733506448346967103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286424 (n : ℕ) : ℤ :=
  A286424.P15733506448346967103.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286424.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A290090.P12479799207567123634

`A227872(n+1)-A010060(n+1)`
-/

namespace A290090.P12479799207567123634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (n + 1) - A010060 (n + 1)

end

end A290090.P12479799207567123634

noncomputable section

/-- A290090: a(n) is the number of proper divisors of n that are odious (A000069).

Offset 1, canonical program `A290090.P12479799207567123634`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290090 (n : ℕ) : ℤ :=
  A290090.P12479799207567123634.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291782.P13217686668389589060

`(n+1)*A092694(n+1)`
-/

namespace A291782.P13217686668389589060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A092694 (n + 1)

end

end A291782.P13217686668389589060

noncomputable section

/-- A291782: Let f_k(n) be the result of applying phi (the Euler totient function A000010) k times to n; a(n) = n*Product_{k=1..oo} f_k(n).

Offset 1, canonical program `A291782.P13217686668389589060`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291782 (n : ℕ) : ℤ :=
  A291782.P13217686668389589060.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294101.P14662150348021070417

`A262991(n+1)-2*A071068(n+1)`
-/

namespace A294101.P14662150348021070417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (n + 1) - 2 * A071068 (n + 1)

end

end A294101.P14662150348021070417

noncomputable section

/-- A294101: Number of partitions of n into two parts such that one is squarefree and the other is nonsquarefree.

Offset 1, canonical program `A294101.P14662150348021070417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294101 (n : ℕ) : ℤ :=
  A294101.P14662150348021070417.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294628.P17732687691627968368

`4*A294015(n+1)`
-/

namespace A294628.P17732687691627968368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A294015 (n + 1)

end

end A294628.P17732687691627968368

noncomputable section

/-- A294628: a(n) = 8*(sigma(n) - n + (1/2)).

Offset 1, canonical program `A294628.P17732687691627968368`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(A000203(n+1)-(n+1)+1/2)` (program `A294628.P9545602862444620034`, by `A294628.P9545602862444620034.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A294628 (n : ℕ) : ℤ :=
  A294628.P17732687691627968368.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(A000203(n+1)-(n+1)+1/2)` (program `A294628.P9545602862444620034`, by `A294628.P9545602862444620034.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A294628.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A295314.P2490447409591246023

`A000203(n+1)/A295313(n+1)`
-/

namespace A295314.P2490447409591246023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A295313 (n + 1) : ℚ)

end

end A295314.P2490447409591246023

noncomputable section

/-- A295314: a(n) = sigma(n) / gcd(sigma(n), phi(sigma(n))).

Offset 1, canonical program `A295314.P2490447409591246023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295314 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295314.P2490447409591246023.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295314.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295315.P724021200967414565

`A062401(n+1)/A295313(n+1)`
-/

namespace A295315.P724021200967414565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A295313 (n + 1) : ℚ)

end

end A295315.P724021200967414565

noncomputable section

/-- A295315: a(n) = phi(sigma(n)) / gcd(sigma(n), phi(sigma(n))).

Offset 1, canonical program `A295315.P724021200967414565`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295315 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295315.P724021200967414565.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295315.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A296079.P15018280529446540256

`A010051(A039649(n+1))`
-/

namespace A296079.P15018280529446540256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A039649 (n + 1)).toNat

end

end A296079.P15018280529446540256

noncomputable section

/-- A296079: a(n) = 1 if 1+phi(n) is prime, 0 otherwise, where phi = A000010, Euler totient function.

Offset 1, canonical program `A296079.P15018280529446540256`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296079 (n : ℕ) : ℤ :=
  A296079.P15018280529446540256.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296079.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297115.P17041612972225485539

`A083254(n+1)-A297114(n+1)`
-/

namespace A297115.P17041612972225485539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) - A297114 (n + 1)

end

end A297115.P17041612972225485539

noncomputable section

/-- A297115: Möbius transform of A000120, binary weight of n.

Offset 1, canonical program `A297115.P17041612972225485539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297115 (n : ℕ) : ℤ :=
  A297115.P17041612972225485539.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297117.P14003803636479694355

`A297114(n+1)+A051953(n+1)`
-/

namespace A297117.P14003803636479694355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (n + 1) + A051953 (n + 1)

end

end A297117.P14003803636479694355

noncomputable section

/-- A297117: Möbius transform of A011371, n minus (number of 1's in binary expansion of n).

Offset 1, canonical program `A297117.P14003803636479694355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297117 (n : ℕ) : ℤ :=
  A297117.P14003803636479694355.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297117.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300718.P14759680827716810888

`A000010(n+1)-A300717(n+1)`
-/

namespace A300718.P14759680827716810888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A300717 (n + 1)

end

end A300718.P14759680827716810888

noncomputable section

/-- A300718: Möbius transform of A010848, number of numbers k <= n such that at least one prime factor of n is not a prime factor of k.

Offset 1, canonical program `A300718.P14759680827716810888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300718 (n : ℕ) : ℤ :=
  A300718.P14759680827716810888.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300718.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300719.P3463294975664283293

`A003557(n+1)-A300717(n+1)`
-/

namespace A300719.P3463294975664283293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) - A300717 (n + 1)

end

end A300719.P3463294975664283293

noncomputable section

/-- A300719: Difference between A003557 (n divided by largest squarefree divisor of n) and its Möbius transform.

Offset 1, canonical program `A300719.P3463294975664283293`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300719 (n : ℕ) : ℤ :=
  A300719.P3463294975664283293.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304275.P15555862402224262054

`A069097(2*n+1)`
-/

namespace A304275.P15555862402224262054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069097 (2 * n + 1)

end

end A304275.P15555862402224262054

noncomputable section

/-- A304275: a(n) = Sum_{k = 1..n} gcd(k,n) / cos(Pi*k/n)^2 for odd n.

Offset 1, canonical program `A304275.P15555862402224262054`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304275 (n : ℕ) : ℤ :=
  A304275.P15555862402224262054.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306897.P7907252615614501728

`A306896(n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306897.P7907252615614501728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306896 (n + 1) : ℚ) / 6

end

end A306897.P7907252615614501728

noncomputable section

/-- A306897: a(n) = A306896(n)/6.

Offset 1, canonical program `A306897.P7907252615614501728`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306897 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306897.P7907252615614501728.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306897.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306906.P14077871062807347448

`A306899(n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306906.P14077871062807347448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306899 (n + 1) : ℚ) / 6

end

end A306906.P14077871062807347448

noncomputable section

/-- A306906: a(n) = A306899(n)/6.

Offset 1, canonical program `A306906.P14077871062807347448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306906 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306906.P14077871062807347448.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306906.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A307924.P12587202113129683290

`A234365(n+1)/2`
-/

namespace A307924.P12587202113129683290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234365 (n + 1) : ℚ) / 2

end

end A307924.P12587202113129683290

noncomputable section

/-- A307924: Number of (undirected) Hamiltonian cycles in the complete tripartite graph K_{n,n,n}.

Offset 1, canonical program `A307924.P12587202113129683290`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307924 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307924.P12587202113129683290.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177082.P1291897975373638475

`2*(n+1)*A071148(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177082.P1291897975373638475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A071148 (n + 1)

end

end A177082.P1291897975373638475

noncomputable section

/-- A177082: a(n) = 2*n*A071148(n).

Offset 1, canonical program `A177082.P1291897975373638475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177082 (n : ℕ) : ℤ :=
  A177082.P1291897975373638475.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177082.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177687.P13636215687742854353

`A178244(A000040(n+1))`
-/

namespace A177687.P13636215687742854353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (A000040 (n + 1)).toNat

end

end A177687.P13636215687742854353

noncomputable section

/-- A177687: Number of distinct transpositions of digits (zeros and units) in n-th prime written in base 2.

Offset 1, canonical program `A177687.P13636215687742854353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177687 (n : ℕ) : ℤ :=
  A177687.P13636215687742854353.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181733.P2943246372235819364

`A139708(n+1)-A092323(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181733.P2943246372235819364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (n + 1) - A092323 (n + 1)

end

end A181733.P2943246372235819364

noncomputable section

/-- A181733: a(n) = A139708(n) - A092323(n).

Offset 1, canonical program `A181733.P2943246372235819364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181733 (n : ℕ) : ℤ :=
  A181733.P2943246372235819364.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182241.P14117920830445222152

`A161151(2*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182241.P14117920830445222152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161151 (2 * (n + 1)) : ℚ) / 2

end

end A182241.P14117920830445222152

noncomputable section

/-- A182241: a(n) = A161151(2*n)/2.

Offset 1, canonical program `A182241.P14117920830445222152`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182241 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182241.P14117920830445222152.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182241.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193388.P4473864990657091494

`A062402(n+1)-A193454(n+1)`
-/

namespace A193388.P4473864990657091494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - A193454 (n + 1)

end

end A193388.P4473864990657091494

noncomputable section

/-- A193388: Sum of even divisors of phi(n).

Offset 1, canonical program `A193388.P4473864990657091494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193388 (n : ℕ) : ℤ :=
  A193388.P4473864990657091494.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A208667.P16891552016121104606

`(2*A208723(n+1)+A090991(n+1))/4`
-/

namespace A208667.P16891552016121104606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A208723 (n + 1) + A090991 (n + 1) : ℚ) / 4

end

end A208667.P16891552016121104606

noncomputable section

/-- A208667: Number of 2n-bead necklaces labeled with numbers 1..4 allowing reversal, with neighbors differing by exactly 1.

Offset 1, canonical program `A208667.P16891552016121104606`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208667.P16891552016121104606.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A208668.P1079484261684294791

`(2*A208724(n+1)+A090993(n+1))/4`
-/

namespace A208668.P1079484261684294791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A208724 (n + 1) + A090993 (n + 1) : ℚ) / 4

end

end A208668.P1079484261684294791

noncomputable section

/-- A208668: Number of 2n-bead necklaces labeled with numbers 1..5 allowing reversal, with neighbors differing by exactly 1.

Offset 1, canonical program `A208668.P1079484261684294791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208668 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208668.P1079484261684294791.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A208669.P18070253735021277602

`(2*A208725(n+1)+A090995(n+1))/4`
-/

namespace A208669.P18070253735021277602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A208725 (n + 1) + A090995 (n + 1) : ℚ) / 4

end

end A208669.P18070253735021277602

noncomputable section

/-- A208669: Number of 2n-bead necklaces labeled with numbers 1..6 allowing reversal, with neighbors differing by exactly 1.

Offset 1, canonical program `A208669.P18070253735021277602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208669 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208669.P18070253735021277602.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208669.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A211991.P15084257827643114560

`A003415(n+1)-A001065(n+1)`
-/

namespace A211991.P15084257827643114560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A001065 (n + 1)

end

end A211991.P15084257827643114560

noncomputable section

/-- A211991: Difference between the arithmetic derivative of n and the sum of proper divisors of n.

Offset 1, canonical program `A211991.P15084257827643114560`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211991 (n : ℕ) : ℤ :=
  A211991.P15084257827643114560.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A216244.P11756277930264745226

`4*A061066(n+2)`
-/

namespace A216244.P11756277930264745226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061066 (n + 2)

end

end A216244.P11756277930264745226

noncomputable section

/-- A216244: a(n) = (prime(n)^2 - 1)/2 for n >= 2.

Offset 2, canonical program `A216244.P11756277930264745226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216244 (n : ℕ) : ℤ :=
  A216244.P11756277930264745226.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227184.P3484603111831403944

`A243499(A003188(n))`
-/

namespace A227184.P3484603111831403944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A003188 n).toNat

end

end A227184.P3484603111831403944

noncomputable section

/-- A227184: a(n) = product of parts of the unordered partition encoded with the runlengths of binary expansion of n.

Offset 0, canonical program `A227184.P3484603111831403944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227184 (n : ℕ) : ℤ :=
  A227184.P3484603111831403944.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228628.P1311672402623493656

`A160668(n+1)-1`
-/

namespace A228628.P1311672402623493656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1) - 1

end

end A228628.P1311672402623493656

noncomputable section

/-- A228628: 9's complement of prime(n).

Offset 1, canonical program `A228628.P1311672402623493656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228628 (n : ℕ) : ℤ :=
  A228628.P1311672402623493656.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229342.P3262806412783250556

`A000203(A003415(n+2))`
-/

namespace A229342.P3262806412783250556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003415 (n + 2)).toNat

end

end A229342.P3262806412783250556

noncomputable section

/-- A229342: a(n) = sigma(n'), the sum of divisors of the arithmetic derivative of n.

Offset 2, canonical program `A229342.P3262806412783250556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229342 (n : ℕ) : ℤ :=
  A229342.P3262806412783250556.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229343.P14743053429634653820

`A008683(A003415(n+2))`
-/

namespace A229343.P14743053429634653820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A003415 (n + 2)).toNat

end

end A229343.P14743053429634653820

noncomputable section

/-- A229343: Moebius function of the arithmetic derivative of n: a(n) = mu(n').

Offset 2, canonical program `A229343.P14743053429634653820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229343 (n : ℕ) : ℤ :=
  A229343.P14743053429634653820.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A235711.P5553264463072486028

`A003415(A002620(n))`
-/

namespace A235711.P5553264463072486028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002620 n).toNat

end

end A235711.P5553264463072486028

noncomputable section

/-- A235711: Arithmetic derivative of quarter squares.

Offset 0, canonical program `A235711.P5553264463072486028`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235711 (n : ℕ) : ℤ :=
  A235711.P5553264463072486028.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235711.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238778.P6326797725337615963

`(n+2)*A035026(n+2)`
-/

namespace A238778.P6326797725337615963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A035026 (n + 2)

end

end A238778.P6326797725337615963

noncomputable section

/-- A238778: Sum of all primes p such that 2n - p is also a prime.

Offset 2, canonical program `A238778.P6326797725337615963`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238778 (n : ℕ) : ℤ :=
  A238778.P6326797725337615963.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245235.P8719259522222867100

`2^n/A059268(n)`
-/

namespace A245235.P8719259522222867100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / (A059268 n : ℚ)

end

end A245235.P8719259522222867100

noncomputable section

/-- A245235: Repeat 2^(n*(n+1)/2) n+1 times.

Offset 0, canonical program `A245235.P8719259522222867100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245235 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245235.P8719259522222867100.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245235.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245838.P8667444233947326687

`A003415(A016777(n+1))`
-/

namespace A245838.P8667444233947326687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A016777 (n + 1)).toNat

end

end A245838.P8667444233947326687

noncomputable section

/-- A245838: Arithmetic derivative of (3*n + 1), n >= 1, (A016777)'.

Offset 1, canonical program `A245838.P8667444233947326687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245838 (n : ℕ) : ℤ :=
  A245838.P8667444233947326687.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A248764.P11887348063717219244

`(n+1)!/A248766(n+1)`
-/

namespace A248764.P11887348063717219244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A248766 (n + 1) : ℚ)

end

end A248764.P11887348063717219244

noncomputable section

/-- A248764: Greatest 4th power integer that divides n!

Offset 1, canonical program `A248764.P11887348063717219244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248764 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248764.P11887348063717219244.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248764.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A250474.P15580657759443600580

`A250473(n+1)+1`
-/

namespace A250474.P15580657759443600580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) + 1

end

end A250474.P15580657759443600580

noncomputable section

/-- A250474: Number of times prime(n) occurs as the least prime factor among numbers 1 .. prime(n)^3: a(n) = A078898(A030078(n)).

Offset 1, canonical program `A250474.P15580657759443600580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250474 (n : ℕ) : ℤ :=
  A250474.P15580657759443600580.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A250474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258057.P7998122190271459586

`A003415(n+1)-A003415(n)`
-/

namespace A258057.P7998122190271459586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A003415 n

end

end A258057.P7998122190271459586

noncomputable section

/-- A258057: First differences of the arithmetic derivative sequence A003415.

Offset 0, canonical program `A258057.P7998122190271459586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258057 (n : ℕ) : ℤ :=
  A258057.P7998122190271459586.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258197.P15390791753644415480

`A003415(A007318(n))`
-/

namespace A258197.P15390791753644415480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007318 n).toNat

end

end A258197.P15390791753644415480

noncomputable section

/-- A258197: Arithmetic derivative of Pascal's triangle.

Offset 0, canonical program `A258197.P15390791753644415480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258197 (n : ℕ) : ℤ :=
  A258197.P15390791753644415480.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258290.P2763848387023428005

`A003415(A000984(n))`
-/

namespace A258290.P2763848387023428005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000984 n).toNat

end

end A258290.P2763848387023428005

noncomputable section

/-- A258290: Arithmetic derivative of central binomial coefficients, cf. A000984.

Offset 0, canonical program `A258290.P2763848387023428005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258290 (n : ℕ) : ℤ :=
  A258290.P2763848387023428005.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258290.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259566.P1447897168910659284

`A032924(2*n+1)`
-/

namespace A259566.P1447897168910659284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (2 * n + 1)

end

end A259566.P1447897168910659284

noncomputable section

/-- A259566: Numbers following gaps in the sequence of base-3 numbers that don't contain 0.

Offset 1, canonical program `A259566.P1447897168910659284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259566 (n : ℕ) : ℤ :=
  A259566.P1447897168910659284.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259566.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260620.P4707896754255925943

`A003415(A000178(n))`
-/

namespace A260620.P4707896754255925943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000178 n).toNat

end

end A260620.P4707896754255925943

noncomputable section

/-- A260620: Arithmetic derivative of superfactorial(n).

Offset 0, canonical program `A260620.P4707896754255925943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260620 (n : ℕ) : ℤ :=
  A260620.P4707896754255925943.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262807.P14126293923301256309

`A070826(n+2)%A071148(n+1)`
-/

namespace A262807.P14126293923301256309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070826 (n + 2)) (A071148 (n + 1))

end

end A262807.P14126293923301256309

noncomputable section

/-- A262807: a(n) = (Product_{k=1..n} prime(k+1)) mod (Sum_{k=1..n} prime(k+1)) where prime(k) is the k-th prime number.

Offset 1, canonical program `A262807.P14126293923301256309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262807 (n : ℕ) : ℤ :=
  A262807.P14126293923301256309.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262807.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265157.P8146945990280447041

`A260683(n)-A000035(n)`
-/

namespace A265157.P8146945990280447041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260683 n - A000035 n

end

end A265157.P8146945990280447041

noncomputable section

/-- A265157: Number of 2's in the base-3 representation of 2^n - 1.

Offset 0, canonical program `A265157.P8146945990280447041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265157 (n : ℕ) : ℤ :=
  A265157.P8146945990280447041.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277455.P11217868120756742316

`A003415(A001006(n))`
-/

namespace A277455.P11217868120756742316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001006 n).toNat

end

end A277455.P11217868120756742316

noncomputable section

/-- A277455: Arithmetic derivatives of the Motzkin numbers.

Offset 0, canonical program `A277455.P11217868120756742316`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277455 (n : ℕ) : ℤ :=
  A277455.P11217868120756742316.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283363.P9051439283470971273

`abs(A090396(n+2)-A090396(n+1))`
-/

namespace A283363.P9051439283470971273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090396 (n + 2) - A090396 (n + 1)|

end

end A283363.P9051439283470971273

noncomputable section

/-- A283363: Absolute values of first differences of A090396.

Offset 1, canonical program `A283363.P9051439283470971273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283363 (n : ℕ) : ℤ :=
  A283363.P9051439283470971273.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300251.P1650091160704991913

`∑{d}[n+1, A008683((n+1)/#)*A003415(#)]`
-/

namespace A300251.P1650091160704991913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A003415 d

end

end A300251.P1650091160704991913

noncomputable section

/-- A300251: Möbius transform of arithmetic derivative (A003415).

Offset 1, canonical program `A300251.P1650091160704991913`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300251 (n : ℕ) : ℤ :=
  A300251.P1650091160704991913.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A305809.P13406550948487456153

`∑{d}[n+1, A003415((n+1)/#)*A003415(#)]`
-/

namespace A305809.P13406550948487456153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A003415 d

end

end A305809.P13406550948487456153

noncomputable section

/-- A305809: Dirichlet convolution of A003415 (Arithmetic derivative) with itself.

Offset 1, canonical program `A305809.P13406550948487456153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305809 (n : ℕ) : ℤ :=
  A305809.P13406550948487456153.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305809.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178664.P2807692713744163170

`A020338(2^n)`
-/

namespace A178664.P2807692713744163170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (2 ^ n)

end

end A178664.P2807692713744163170

noncomputable section

/-- A178664: a(n) = 2^n concatenated with itself.

Offset 0, canonical program `A178664.P2807692713744163170`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178664 (n : ℕ) : ℤ :=
  A178664.P2807692713744163170.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183037.P2429531646680014753

`A001511(n+1)*2^A001511(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A183037.P2429531646680014753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001511 (n + 1) : ℚ) * (2 : ℚ) ^ (A001511 (n + 1) : ℤ)

end

end A183037.P2429531646680014753

noncomputable section

/-- A183037: a(n) = A001511(n)*2^A001511(n) where A001511(n) equals the 2-adic valuation of 2n.

Offset 1, canonical program `A183037.P2429531646680014753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183037 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183037.P2429531646680014753.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A206527.P17662321040219862947

`A020338(3^n)`
-/

namespace A206527.P17662321040219862947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (3 ^ n)

end

end A206527.P17662321040219862947

noncomputable section

/-- A206527: 3^n concatenated with itself.

Offset 0, canonical program `A206527.P17662321040219862947`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206527 (n : ℕ) : ℤ :=
  A206527.P17662321040219862947.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A206528.P3167642556267065851

`A020338(5^n)`
-/

namespace A206528.P3167642556267065851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (5 ^ n)

end

end A206528.P3167642556267065851

noncomputable section

/-- A206528: 5^n concatenated with itself.

Offset 0, canonical program `A206528.P3167642556267065851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206528 (n : ℕ) : ℤ :=
  A206528.P3167642556267065851.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A206529.P17804462601865261922

`A020338(7^n)`
-/

namespace A206529.P17804462601865261922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (7 ^ n)

end

end A206529.P17804462601865261922

noncomputable section

/-- A206529: 7^n concatenated with itself.

Offset 0, canonical program `A206529.P17804462601865261922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206529 (n : ℕ) : ℤ :=
  A206529.P17804462601865261922.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A206529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228367.P1353796914564076815

`A001511(n+1)+A006519(n+1)`
-/

namespace A228367.P1353796914564076815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + A006519 (n + 1)

end

end A228367.P1353796914564076815

noncomputable section

/-- A228367: n-th element of the ruler function plus the highest power of 2 dividing n.

Offset 1, canonical program `A228367.P1353796914564076815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228367 (n : ℕ) : ℤ :=
  A228367.P1353796914564076815.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228368.P14038538055200218841

`A001511(n+1)-A006519(n+1)`
-/

namespace A228368.P14038538055200218841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - A006519 (n + 1)

end

end A228368.P14038538055200218841

noncomputable section

/-- A228368: Difference between the n-th element of the ruler function and the highest power of 2 dividing n.

Offset 1, canonical program `A228368.P14038538055200218841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228368 (n : ℕ) : ℤ :=
  A228368.P14038538055200218841.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239462.P29377133976315736

`(n+1)*A020338(n+1)-A005563(n)`
-/

namespace A239462.P29377133976315736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020338 (n + 1) - A005563 n

end

end A239462.P29377133976315736

noncomputable section

/-- A239462: A239459(n) / n.

Offset 1, canonical program `A239462.P29377133976315736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239462 (n : ℕ) : ℤ :=
  A239462.P29377133976315736.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253445.P3990577317114025195

`A020338((n+1)²)`
-/

namespace A253445.P3990577317114025195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 ((n + 1) ^ 2)

end

end A253445.P3990577317114025195

noncomputable section

/-- A253445: a(n) = concatenation of n^2 with itself.

Offset 1, canonical program `A253445.P3990577317114025195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253445 (n : ℕ) : ℤ :=
  A253445.P3990577317114025195.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254503.P16877197465467938331

`A002618(n+1)/A384050(n+1)`
-/

namespace A254503.P16877197465467938331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A384050 (n + 1) : ℚ)

end

end A254503.P16877197465467938331

noncomputable section

/-- A254503: Möbius transform of A034448.

Offset 1, canonical program `A254503.P16877197465467938331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A254503.P16877197465467938331.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257806.P8895059565627793606

`A257808(n)-A257807(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257806.P8895059565627793606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257808 n - A257807 n

end

end A257806.P8895059565627793606

noncomputable section

/-- A257806: a(n) = A257808(n) - A257807(n).

Offset 0, canonical program `A257806.P8895059565627793606`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257806 (n : ℕ) : ℤ :=
  A257806.P8895059565627793606.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262209.P6934688457999335665

`∑{d}[n+1, A002654(#)]`
-/

namespace A262209.P6934688457999335665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d

end

end A262209.P6934688457999335665

noncomputable section

/-- A262209: Inverse Möbius transform of A002654.

Offset 1, canonical program `A262209.P6934688457999335665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262209 (n : ℕ) : ℤ :=
  A262209.P6934688457999335665.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268361.P14641184472888620429

`A000045(A001511(n+1)+1)`
-/

namespace A268361.P14641184472888620429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001511 (n + 1) + 1).toNat

end

end A268361.P14641184472888620429

noncomputable section

/-- A268361: Lexicographically least sequence of a certain form that avoids additive squares.

Offset 1, canonical program `A268361.P14641184472888620429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268361 (n : ℕ) : ℤ :=
  A268361.P14641184472888620429.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268727.P7725352305021057032

`A001511(1+A006068(n))`
-/

namespace A268727.P7725352305021057032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (1 + A006068 n).toNat

end

end A268727.P7725352305021057032

noncomputable section

/-- A268727: One-based index of the toggled bit between n and A268717(n+1): a(n) = A070939(A003987(n,A268717(1+n))).

Offset 0, canonical program `A268727.P7725352305021057032`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268727 (n : ℕ) : ℤ :=
  A268727.P7725352305021057032.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274593.P8766669261268767539

`(2^A001511(n+1)-1)*(2*A025480(n)+1)-A001511(n+1)`
-/

namespace A274593.P8766669261268767539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A001511 (n + 1) : ℤ) - 1) * (2 * A025480 n + 1 : ℚ) - (A001511 (n + 1) : ℚ)

end

end A274593.P8766669261268767539

noncomputable section

/-- A274593: a(0) = 0; thereafter, a(2*n+1) = a(n)+2*n+1, otherwise a(n) = n.

Offset 0, canonical program `A274593.P8766669261268767539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274593 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A274593.P8766669261268767539.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276391.P10040952499910227078

`(2+4^A001511(n+1))/6`
-/

namespace A276391.P10040952499910227078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (4 : ℚ) ^ (A001511 (n + 1) : ℤ)) / 6

end

end A276391.P10040952499910227078

noncomputable section

/-- A276391: G.f. satisfies A(x) - 4*A(x^2) = x/(1+x).

Offset 1, canonical program `A276391.P10040952499910227078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276391 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276391.P10040952499910227078.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277808.P4452036695971771112

`A010059(n+1)*A001511(n+1)`
-/

namespace A277808.P4452036695971771112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 1) * A001511 (n + 1)

end

end A277808.P4452036695971771112

noncomputable section

/-- A277808: a(n) = number of iterations of map k -> A003188(A006068(k)/2) that are required (when starting from k = n) until k is an odious number.

Offset 1, canonical program `A277808.P4452036695971771112`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277808 (n : ℕ) : ℤ :=
  A277808.P4452036695971771112.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277808.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284006.P12312417108895449444

`a(a(n-A001511(n+1))-1)+a(n-a(n-A001511(n+1)))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284006.P12312417108895449444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a ((n : ℤ) - A001511 (n + 1)).toNat - 1) + a (n - a ((n : ℤ) - A001511 (n + 1)).toNat)

end

end A284006.P12312417108895449444

noncomputable section

/-- A284006: a(n) = a(a(n-A001511(n))) + a(n-a(n-A001511(n))) with a(1) = a(2) = 1, where A001511(n) = 1 + exponent of the highest power of 2 dividing n.

Offset 1, canonical program `A284006.P12312417108895449444`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-A001511(n+1))-1)+a(n-a(n-A001511(n+1)))` (program `A284006.P12312417108895449444`, by `A284006.P12312417108895449444.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A284006 (n : ℕ) : ℤ :=
  (A284006.P12312417108895449444.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-A001511(n+1))-1)+a(n-a(n-A001511(n+1)))` (program `A284006.P12312417108895449444`, by `A284006.P12312417108895449444.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A284006.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A286260.P15780052579751368646

`(2+(A001511(n+1)+A161942(n+1))²-A001511(n+1)-3*A161942(n+1))/2`
-/

namespace A286260.P15780052579751368646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A001511 (n + 1) + A161942 (n + 1)) ^ 2 - A001511 (n + 1) - 3 * A161942 (n + 1) : ℚ) / 2

end

end A286260.P15780052579751368646

noncomputable section

/-- A286260: Compound filter: a(n) = P(A001511(n), A161942(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286260.P15780052579751368646`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286260 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286260.P15780052579751368646.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286357.P14769850405548421969

`A001511(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286357.P14769850405548421969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000203 (n + 1)).toNat

end

end A286357.P14769850405548421969

noncomputable section

/-- A286357: One more than the exponent of the highest power of 2 dividing sigma(n): a(n) = A001511(A000203(n)).

Offset 1, canonical program `A286357.P14769850405548421969`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(A000203(n+1))` (program `A286357.P14769850405548421969`, by `A286357.P14769850405548421969.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A286357 (n : ℕ) : ℤ :=
  A286357.P14769850405548421969.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(A000203(n+1))` (program `A286357.P14769850405548421969`, by `A286357.P14769850405548421969.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A286357.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A286460.P13247630279209113175

`1/2*(2+(A001511(n+1)+A000203(n+1))²-A001511(n+1)-3*A000203(n+1))`
-/

namespace A286460.P13247630279209113175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A001511 (n + 1) + A000203 (n + 1)) ^ 2 - A001511 (n + 1) - 3 * A000203 (n + 1) : ℚ)

end

end A286460.P13247630279209113175

noncomputable section

/-- A286460: Compound filter (2-adic valuation & sum of the divisors): a(n) = P(A001511(n), A000203(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286460.P13247630279209113175`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286460 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286460.P13247630279209113175.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286460.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A287896.P4517701552711881970

`A002487(n+1)*A001511(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A287896.P4517701552711881970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) * A001511 (n + 1)

end

end A287896.P4517701552711881970

noncomputable section

/-- A287896: a(n) = A002487(n)*A001511(n).

Offset 1, canonical program `A287896.P4517701552711881970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287896 (n : ℕ) : ℤ :=
  A287896.P4517701552711881970.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293513.P2913360707613170259

`A091954(n+1)-A293451(n+1)`
-/

namespace A293513.P2913360707613170259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - A293451 (n + 1)

end

end A293513.P2913360707613170259

noncomputable section

/-- A293513: Number of proper divisors of n of the form 4k+3.

Offset 1, canonical program `A293513.P2913360707613170259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293513 (n : ℕ) : ℤ :=
  A293513.P2913360707613170259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175917.P5961217577201396990

`A003817(n)-A175298(n)`
-/

namespace A175917.P5961217577201396990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A175298 n

end

end A175917.P5961217577201396990

noncomputable section

/-- A175917: Convert n to binary. NOR each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

Offset 0, canonical program `A175917.P5961217577201396990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175917 (n : ℕ) : ℤ :=
  A175917.P5961217577201396990.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175920.P6563318181034372295

`A003817(n)-A175919(n)`
-/

namespace A175920.P6563318181034372295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A175919 n

end

end A175920.P6563318181034372295

noncomputable section

/-- A175920: Convert n to binary. XNOR each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

Offset 0, canonical program `A175920.P6563318181034372295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175920 (n : ℕ) : ℤ :=
  A175920.P6563318181034372295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176597.P3154790645961376923

`A020338(record[p?[∏{p}[n+1, #]]])`
-/

namespace A176597.P3154790645961376923
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A176597.P3154790645961376923

noncomputable section

/-- A176597: Double primes: concatenation of the n-th prime with itself.

Offset 1, canonical program `A176597.P3154790645961376923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176597 (n : ℕ) : ℤ :=
  A176597.P3154790645961376923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176865.P3555741230070737167

`eq[0, A007920(A055400(n))]`
-/

namespace A176865.P3555741230070737167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A055400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176865.P3555741230070737167

noncomputable section

/-- A176865: Numbers n such that n-LargestCube is prime, (LargestCube <= n).

Offset 1, canonical program `A176865.P3555741230070737167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176865 (n : ℕ) : ℤ :=
  (A176865.P3555741230070737167.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176890.P508741093252212917

`A057427(n)-abs(A155031(n+1))`
-/

namespace A176890.P508741093252212917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - |A155031 (n + 1)|

end

end A176890.P508741093252212917

noncomputable section

/-- A176890: Triangle T(n,k) read by rows. Signed subsequence of A051731.

Offset 1, canonical program `A176890.P508741093252212917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176890 (n : ℕ) : ℤ :=
  A176890.P508741093252212917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177017.P2945231276214916138

`p?[eq[1, A010051(A151800(n)+1+n)]]`
-/

namespace A177017.P2945231276214916138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A151800 n + 1 + (n : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A177017.P2945231276214916138

noncomputable section

/-- A177017: Primes prime(n) such that prime(n) + prime(n+1) + 1 is also prime.

Offset 1, canonical program `A177017.P2945231276214916138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1258 terms. -/
def A177017 (n : ℕ) : ℤ :=
  (A177017.P2945231276214916138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1258 terms. -/
def A177017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177424.P5885346958814520556

`A000120(C(n, 2))-A232243(n)`
-/

namespace A177424.P5885346958814520556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose n 2) - A232243 n

end

end A177424.P5885346958814520556

noncomputable section

/-- A177424: Exponent of the highest power of 2 dividing binomial(n^2,n).

Offset 0, canonical program `A177424.P5885346958814520556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A177424 (n : ℕ) : ℤ :=
  A177424.P5885346958814520556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A177424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177718.P13912368437558654364

`abs(A014499(n+1)-A035103(n+1))`
-/

namespace A177718.P13912368437558654364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014499 (n + 1) - A035103 (n + 1)|

end

end A177718.P13912368437558654364

noncomputable section

/-- A177718: a(n) = |(number of 1's in binary representation of prime(n)) - (number of 0's in binary representation of prime(n))|.

Offset 1, canonical program `A177718.P13912368437558654364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177718 (n : ℕ) : ℤ :=
  A177718.P13912368437558654364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177796.P16609661293602541890

`eq[A014499(n+1), A035103(n+1)]+1`
-/

namespace A177796.P16609661293602541890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177796.P16609661293602541890

noncomputable section

/-- A177796: Numbers n such that number of 1's in binary representation of n-th prime = number of 0's in binary representation of n-th prime.

Offset 1, canonical program `A177796.P16609661293602541890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 772 terms. -/
def A177796 (n : ℕ) : ℤ :=
  (A177796.P16609661293602541890.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 772 terms. -/
def A177796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177959.P3892879503494814762

`A000040(n+1)-A035103(n+1)`
-/

namespace A177959.P3892879503494814762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A035103 (n + 1)

end

end A177959.P3892879503494814762

noncomputable section

/-- A177959: n-th prime minus number of 0's in binary representation of n-th prime.

Offset 1, canonical program `A177959.P3892879503494814762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177959 (n : ℕ) : ℤ :=
  A177959.P3892879503494814762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178225.P3234126825915487550

`C(2, A175919(n))`
-/

namespace A178225.P3234126825915487550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A175919 n).toNat

end

end A178225.P3234126825915487550

noncomputable section

/-- A178225: Characteristic function of A006995 (binary palindromes).

Offset 0, canonical program `A178225.P3234126825915487550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178225 (n : ℕ) : ℤ :=
  (A178225.P3234126825915487550.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178549.P1842072267796147829

`1+A070866(n+2)`
-/

namespace A178549.P1842072267796147829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A070866 (n + 2)

end

end A178549.P1842072267796147829

noncomputable section

/-- A178549: a(n) is a composite number at the start of an interval of consecutive integers, ending in a prime, and non-overlapping with and at least as long as the interval addressed by a(n-1).

Offset 1, canonical program `A178549.P1842072267796147829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070866, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178549 (n : ℕ) : ℤ :=
  A178549.P1842072267796147829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070866, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178570.P12530827425225912041

`eq[1, A130291(n+1)%A162345(n+1)]`
-/

namespace A178570.P12530827425225912041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130291 (n + 1)) (A162345 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178570.P12530827425225912041

noncomputable section

/-- A178570: Numbers k such that prime(k+1) == 1 (mod (prime(k+2) - prime(k))).

Offset 1, canonical program `A178570.P12530827425225912041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1574 terms. -/
def A178570 (n : ℕ) : ℤ :=
  (A178570.P12530827425225912041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1574 terms. -/
def A178570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181538.P2422341693197598264

`A050873(n+1)*A054526(n+1)`
-/

namespace A181538.P2422341693197598264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A054526 (n + 1)

end

end A181538.P2422341693197598264

noncomputable section

/-- A181538: T(n, k) = sum_(1 <= j <= k) [j | k] j mu(k / j) gcd(n, k), triangle read by rows.

Offset 1, canonical program `A181538.P2422341693197598264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181538 (n : ℕ) : ℤ :=
  A181538.P2422341693197598264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181794.P10753813683387248145

`∩[A120351(n+1), A348005(n+1)]`
-/

namespace A181794.P10753813683387248145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181794.P10753813683387248145

noncomputable section

/-- A181794: Numbers n such that the number of even divisors of n is an even divisor of n.

Offset 1, canonical program `A181794.P10753813683387248145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3309 terms. -/
def A181794 (n : ℕ) : ℤ :=
  (A181794.P10753813683387248145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3309 terms. -/
def A181794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182047.P2101095333412928792

`A151800(A002378(n))`
-/

namespace A182047.P2101095333412928792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A002378 n).toNat

end

end A182047.P2101095333412928792

noncomputable section

/-- A182047: Smallest prime > n*(n+1).

Offset 0, canonical program `A182047.P2101095333412928792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182047 (n : ℕ) : ℤ :=
  A182047.P2101095333412928792.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182167.P1515146561545747847

`A053616(A002708(n+1)+∑[n])`
-/

namespace A182167.P1515146561545747847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A002708 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A182167.P1515146561545747847

noncomputable section

/-- A182167: Min( f(n), n-f(n) ), where f(n) = A002708(n) = Fibonacci(n) mod n.

Offset 1, canonical program `A182167.P1515146561545747847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A182167 (n : ℕ) : ℤ :=
  A182167.P1515146561545747847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A182167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182664.P15945012330009958967

`A088828(n+1)+A157502(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182664.P15945012330009958967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1) + A157502 (n + 1)

end

end A182664.P15945012330009958967

noncomputable section

/-- A182664: a(n) = A088828(n) + A157502(n).

Offset 1, canonical program `A182664.P15945012330009958967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088828, A157502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182664 (n : ℕ) : ℤ :=
  A182664.P15945012330009958967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088828, A157502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182664.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182817.P14309563797210267358

`A182816(A018252(n+1))`
-/

namespace A182817.P14309563797210267358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182816 (A018252 (n + 1)).toNat

end

end A182817.P14309563797210267358

noncomputable section

/-- A182817: Number of elements k in Z/mZ such that k^m=k, for nonprime m = A018252(n).

Offset 1, canonical program `A182817.P14309563797210267358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A182816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182817 (n : ℕ) : ℤ :=
  A182817.P14309563797210267358.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A182816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183225.P13096611461435880722

`A025581(n)+A003057(A050206(n+2))`
-/

namespace A183225.P13096611461435880722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A003057 (A050206 (n + 2)).toNat

end

end A183225.P13096611461435880722

noncomputable section

/-- A183225: Array: row r is the complement of the (r+2)-gonal numbers; by antidiagonals.

Offset 1, canonical program `A183225.P13096611461435880722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183225 (n : ℕ) : ℤ :=
  A183225.P13096611461435880722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184034.P8692255249367243317

`A184033(n+1)+42`
-/

namespace A184034.P8692255249367243317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184033 (n + 1) + 42

end

end A184034.P8692255249367243317

noncomputable section

/-- A184034: 1/16 the number of (n+1) X 5 0..3 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184034.P8692255249367243317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184034 (n : ℕ) : ℤ :=
  A184034.P8692255249367243317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184046.P17356359777739550745

`A184041(n+1)+274`
-/

namespace A184046.P17356359777739550745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184041 (n + 1) + 274

end

end A184046.P17356359777739550745

noncomputable section

/-- A184046: 1/9 the number of (n+1) X 8 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184046.P17356359777739550745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184046 (n : ℕ) : ℤ :=
  A184046.P17356359777739550745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184486.P235648414909405234

`comp[A007064(2*n+1)-1]`
-/

namespace A184486.P235648414909405234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184486.P235648414909405234

noncomputable section

/-- A184486: Lower s-Wythoff sequence, where s(n)=4n+1. Complement of A184487.

Offset 1, canonical program `A184486.P235648414909405234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184486 (n : ℕ) : ℤ :=
  (A184486.P235648414909405234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184863.P11681446772865368955

`A005206(A005206(p?[A007064(n+1)]))`
-/

namespace A184863.P11681446772865368955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A184863.P11681446772865368955

noncomputable section

/-- A184863: Numbers k such that floor(n+nr-r/2) are prime, where r=(1+sqrt(5))/2.

Offset 1, canonical program `A184863.P11681446772865368955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. -/
def A184863 (n : ℕ) : ℤ :=
  A184863.P11681446772865368955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. -/
def A184863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185027.P10949511265756633877

`∑{d}[n+1, A127773(#)]`
-/

namespace A185027.P10949511265756633877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127773 d

end

end A185027.P10949511265756633877

noncomputable section

/-- A185027: Sum of the triangular divisors of n.

Offset 1, canonical program `A185027.P10949511265756633877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185027 (n : ℕ) : ℤ :=
  A185027.P10949511265756633877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185256.P14243737951295279238

`A033161(n+1)-2`
-/

namespace A185256.P14243737951295279238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033161 (n + 1) - 2

end

end A185256.P14243737951295279238

noncomputable section

/-- A185256: Stanley Sequence S(0,3).

Offset 1, canonical program `A185256.P14243737951295279238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185256 (n : ℕ) : ℤ :=
  A185256.P14243737951295279238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185410.P16147584212960793980

`A059268(n)*A102365(n)`
-/

namespace A185410.P16147584212960793980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A102365 n

end

end A185410.P16147584212960793980

noncomputable section

/-- A185410: A decomposition of the double factorials A001147.

Offset 0, canonical program `A185410.P16147584212960793980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1920 terms. -/
def A185410 (n : ℕ) : ℤ :=
  A185410.P16147584212960793980.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1920 terms. -/
def A185410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185874.P1314293558067631427

`A082652(A014132(n+1))%(n+2)²/2*val(A043569(n+1), 2)`
-/

namespace A185874.P1314293558067631427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A082652 (A014132 (n + 1)).toNat) ((n + 2) ^ 2 : ℤ) : ℚ) / 2 * (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2 : ℚ)

end

end A185874.P1314293558067631427

noncomputable section

/-- A185874: Second accumulation array of A051340, by antidiagonals.

Offset 1, canonical program `A185874.P1314293558067631427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A185874 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A185874.P1314293558067631427.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A185874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185914.P13255273733279209154

`A004736(n+1)-A053616(n)`
-/

namespace A185914.P13255273733279209154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A053616 n

end

end A185914.P13255273733279209154

noncomputable section

/-- A185914: Array: T(n,k)=k-n+1 for k>=n; T(n,k)=0 for k<n; by antidiagonals.

Offset 1, canonical program `A185914.P13255273733279209154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185914 (n : ℕ) : ℤ :=
  A185914.P13255273733279209154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186031.P15911966878136021821

`A000108(n)-A126120(n)²`
-/

namespace A186031.P15911966878136021821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A126120 n ^ 2

end

end A186031.P15911966878136021821

noncomputable section

/-- A186031: Number of Dyck paths of semilength n with a valley (DU) spanning the midpoint.

Offset 1, canonical program `A186031.P15911966878136021821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A186031 (n : ℕ) : ℤ :=
  A186031.P15911966878136021821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A186031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187285.P11288562697878379650

`(n+1)*A097327(n+1)%(A000030(n+1)*A097326(n+1))`
-/

namespace A187285.P11288562697878379650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A097327 (n + 1)) (A000030 (n + 1) * A097326 (n + 1))

end

end A187285.P11288562697878379650

noncomputable section

/-- A187285: Smallest multiple of n beginning with 1.

Offset 1, canonical program `A187285.P11288562697878379650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187285 (n : ℕ) : ℤ :=
  A187285.P11288562697878379650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187873.P9292529575938143401

`A151800(A151800(n²))`
-/

namespace A187873.P9292529575938143401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (n ^ 2)).toNat

end

end A187873.P9292529575938143401

noncomputable section

/-- A187873: Second smallest prime after n^2.

Offset 0, canonical program `A187873.P9292529575938143401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A187873 (n : ℕ) : ℤ :=
  A187873.P9292529575938143401.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A187873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187916.P6304784313382651331

`∑[A099363(n)+A000245(n)]`
-/

namespace A187916.P6304784313382651331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099363 n + A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187916.P6304784313382651331

noncomputable section

/-- A187916: a(n) = C(n) if n is odd, else C(n) - C(n/2); C(n) are Catalan numbers.

Offset 1, canonical program `A187916.P6304784313382651331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A187916 (n : ℕ) : ℤ :=
  A187916.P6304784313382651331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A187916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187973.P3184457284106312056

`A008619(n)+2*A187968(n+1)`
-/

namespace A187973.P3184457284106312056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + 2 * A187968 (n + 1)

end

end A187973.P3184457284106312056

noncomputable section

/-- A187973: Positions of 0 in A187972; complement of A187974.

Offset 1, canonical program `A187973.P3184457284106312056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187973 (n : ℕ) : ℤ :=
  A187973.P3184457284106312056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188078.P9220553595696871983

`record[2*A188076(n+2)+n]`
-/

namespace A188078.P9220553595696871983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188076 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188078.P9220553595696871983

noncomputable section

/-- A188078: Positions of 1 in A188076; complement of A188077.

Offset 1, canonical program `A188078.P9220553595696871983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6602 terms. -/
def A188078 (n : ℕ) : ℤ :=
  A188078.P9220553595696871983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6602 terms. -/
def A188078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188079.P8949217459454897257

`A188076(n+1-A188068(n+1))`
-/

namespace A188079.P8949217459454897257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 ((n + 1 : ℤ) - A188068 (n + 1)).toNat

end

end A188079.P8949217459454897257

noncomputable section

/-- A188079: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(3), k=6, [ ]=floor.

Offset 1, canonical program `A188079.P8949217459454897257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188079 (n : ℕ) : ℤ :=
  A188079.P8949217459454897257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188171.P17289095504074848112

`A001842(n+1)+A002654(n+1)-A188169(n+1)`
-/

namespace A188171.P17289095504074848112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1) + (A002654 (n + 1) - A188169 (n + 1))

end

end A188171.P17289095504074848112

noncomputable section

/-- A188171: The number of divisors d of n of the form d == 5 (mod 8).

Offset 1, canonical program `A188171.P17289095504074848112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188171 (n : ℕ) : ℤ :=
  A188171.P17289095504074848112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188323.P13904417183950677068

`record[A087057(n+1)*A188044(A136119(n+1))]`
-/

namespace A188323.P13904417183950677068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) * A188044 (A136119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188323.P13904417183950677068

noncomputable section

/-- A188323: Positions of 1 in A188321; complement of A188322.

Offset 1, canonical program `A188323.P13904417183950677068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5355 terms. -/
def A188323 (n : ℕ) : ℤ :=
  A188323.P13904417183950677068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5355 terms. -/
def A188323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188559.P6003239586972994998

`A188558(n+1)+A008861(n)`
-/

namespace A188559.P6003239586972994998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1) + A008861 n

end

end A188559.P6003239586972994998

noncomputable section

/-- A188559: Number of 8 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

Offset 1, canonical program `A188559.P6003239586972994998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188559 (n : ℕ) : ℤ :=
  A188559.P6003239586972994998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189151.P4362739467928619395

`A185871(n+1)-A061885(n)`
-/

namespace A189151.P4362739467928619395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185871 (n + 1) - A061885 n

end

end A189151.P4362739467928619395

noncomputable section

/-- A189151: Numbers k such that k < floor(sqrt(k)) * ceiling(sqrt(k)).

Offset 1, canonical program `A189151.P4362739467928619395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189151 (n : ℕ) : ℤ :=
  A189151.P4362739467928619395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189720.P18273419159078696727

`lt[A117942(n), 0]+1`
-/

namespace A189720.P18273419159078696727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189720.P18273419159078696727

noncomputable section

/-- A189720: Positions of 1 in A189718; complement of A189719.

Offset 1, canonical program `A189720.P18273419159078696727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9843 terms. -/
def A189720 (n : ℕ) : ℤ :=
  (A189720.P18273419159078696727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9843 terms. -/
def A189720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190429.P12891291036984290959

`∪[A007064(n+1), A189379(n+1)]`
-/

namespace A190429.P12891291036984290959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190429.P12891291036984290959

noncomputable section

/-- A190429: Positions of 1 in A190427.

Offset 1, canonical program `A190429.P12891291036984290959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190429 (n : ℕ) : ℤ :=
  (A190429.P12891291036984290959.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190459.P17714069434607776697

`eq[1, A190457(n+1)]+1`
-/

namespace A190459.P17714069434607776697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190459.P17714069434607776697

noncomputable section

/-- A190459: Positions of 1 in A190457.

Offset 1, canonical program `A190459.P17714069434607776697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190459 (n : ℕ) : ℤ :=
  (A190459.P17714069434607776697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190460.P12275995598528564661

`eq[2, A190457(n+1)]+1`
-/

namespace A190460.P12275995598528564661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190460.P12275995598528564661

noncomputable section

/-- A190460: Positions of 2 in A190457.

Offset 1, canonical program `A190460.P12275995598528564661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190460 (n : ℕ) : ℤ :=
  (A190460.P12275995598528564661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190461.P4265382622330275703

`eq[3, A190457(n+1)]+1`
-/

namespace A190461.P4265382622330275703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190461.P4265382622330275703

noncomputable section

/-- A190461: Positions of 3 in A190457.

Offset 1, canonical program `A190461.P4265382622330275703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190461 (n : ℕ) : ℤ :=
  (A190461.P4265382622330275703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190463.P7208781064280862474

`eq[4, A190457(n+1)]+1`
-/

namespace A190463.P7208781064280862474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190463.P7208781064280862474

noncomputable section

/-- A190463: Positions of 4 in A190457.

Offset 1, canonical program `A190463.P7208781064280862474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2135 terms. -/
def A190463 (n : ℕ) : ℤ :=
  (A190463.P7208781064280862474.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2135 terms. -/
def A190463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190508.P2114487042302130325

`A000027(A189378(n+1)+A001950(n+1))`
-/

namespace A190508.P2114487042302130325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A189378 (n + 1) + A001950 (n + 1)).toNat

end

end A190508.P2114487042302130325

noncomputable section

/-- A190508: a(n) = n+[n*s/r]+[n*t/r]+[n*u/r]; r=golden ratio, s=r^2, t=r^3, u=r^4.

Offset 1, canonical program `A190508.P2114487042302130325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190508 (n : ℕ) : ℤ :=
  A190508.P2114487042302130325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190684.P7022410837627210472

`A003512(A190677(n+1))`
-/

namespace A190684.P7022410837627210472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (A190677 (n + 1)).toNat

end

end A190684.P7022410837627210472

noncomputable section

/-- A190684: Positions of 0 in A190683.

Offset 1, canonical program `A190684.P7022410837627210472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190684 (n : ℕ) : ℤ :=
  A190684.P7022410837627210472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190769.P6494637925840641307

`∩[A120753(n+1), A190193(n+1)]`
-/

namespace A190769.P6494637925840641307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190769.P6494637925840641307

noncomputable section

/-- A190769: Positions of 2 in A190766.

Offset 1, canonical program `A190769.P6494637925840641307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A190769 (n : ℕ) : ℤ :=
  (A190769.P6494637925840641307.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A190769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191330.P17506206293950054102

`lt[(n+7)*A191329(n+1), 1]+1`
-/

namespace A191330.P17506206293950054102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A191329 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A191330.P17506206293950054102

noncomputable section

/-- A191330: Positions of 0 in A191329.

Offset 1, canonical program `A191330.P17506206293950054102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191330 (n : ℕ) : ℤ :=
  (A191330.P17506206293950054102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191907.P6778175255354609110

`A023532(n)*A177121(n+1)`
-/

namespace A191907.P6778175255354609110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n * A177121 (n + 1)

end

end A191907.P6778175255354609110

noncomputable section

/-- A191907: Square array read by antidiagonals up: T(n,k) = -(n-1) if n divides k, else 1.

Offset 1, canonical program `A191907.P6778175255354609110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191907 (n : ℕ) : ℤ :=
  A191907.P6778175255354609110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192255.P15495661104029478180

`∑[(A157726(n)-3)*(n+1)²]*A001511(2*n+5)`
-/

namespace A192255.P15495661104029478180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157726 n - 3) * ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001511 (2 * n + 5)

end

end A192255.P15495661104029478180

noncomputable section

/-- A192255: 1-sequence of reduction of (n^2) by x^2 -> x+1.

Offset 1, canonical program `A192255.P15495661104029478180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A192255 (n : ℕ) : ℤ :=
  A192255.P15495661104029478180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A192255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192656.P15892552188693503180

`∑[A192655(n)]`
-/

namespace A192656.P15892552188693503180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192656.P15892552188693503180

noncomputable section

/-- A192656: Partial sums of the Floor-Sqrt transform of central binomial coefficients.

Offset 0, canonical program `A192656.P15892552188693503180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A192656 (n : ℕ) : ℤ :=
  A192656.P15892552188693503180.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A192656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192672.P1400011279283696610

`floor(sqrt(abs(A080243(n))))`
-/

namespace A192672.P1400011279283696610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A080243 n|

end

end A192672.P1400011279283696610

noncomputable section

/-- A192672: Floor-Sqrt transform of little Schroeder numbers (A001003).

Offset 0, canonical program `A192672.P1400011279283696610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A192672 (n : ℕ) : ℤ :=
  A192672.P1400011279283696610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A192672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192673.P17428601771079711106

`floor(sqrt(abs(2*A080243(n))))`
-/

namespace A192673.P17428601771079711106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |2 * A080243 n|

end

end A192673.P17428601771079711106

noncomputable section

/-- A192673: Floor-Sqrt transform of large Schroder numbers (A006318).

Offset 0, canonical program `A192673.P17428601771079711106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A192673 (n : ℕ) : ℤ :=
  A192673.P17428601771079711106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A192673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193815.P12377440765464689058

`A074909(abs(n-A127648(n)))`
-/

namespace A193815.P12377440765464689058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 |(n : ℤ) - A127648 n|.toNat

end

end A193815.P12377440765464689058

noncomputable section

/-- A193815: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x) = x^n + x^(n-1) + ... + x+1 and q(n,x)=(x+1)^n.

Offset 0, canonical program `A193815.P12377440765464689058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193815 (n : ℕ) : ℤ :=
  A193815.P12377440765464689058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193849.P10773639131772552231

`A059268(n)*A193843(n)`
-/

namespace A193849.P10773639131772552231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A193843 n

end

end A193849.P10773639131772552231

noncomputable section

/-- A193849: Triangular array: (1/2)*A193847.

Offset 0, canonical program `A193849.P10773639131772552231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193849 (n : ℕ) : ℤ :=
  A193849.P10773639131772552231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193853.P9377099089315167757

`A059268(n)*A106516(A014132(n+1))`
-/

namespace A193853.P9377099089315167757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A106516 (A014132 (n + 1)).toNat

end

end A193853.P9377099089315167757

noncomputable section

/-- A193853: Triangular array: (1/2)*A193851.

Offset 0, canonical program `A193853.P9377099089315167757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A193853 (n : ℕ) : ℤ :=
  A193853.P9377099089315167757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A193853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193859.P4797482589767653868

`A059268(n)*A193845(n)`
-/

namespace A193859.P4797482589767653868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A193845 n

end

end A193859.P4797482589767653868

noncomputable section

/-- A193859: Mirror of the triangle A193858.

Offset 0, canonical program `A193859.P4797482589767653868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193859 (n : ℕ) : ℤ :=
  A193859.P4797482589767653868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194258.P6130564753522000528

`A194195(A020703(n+1))`
-/

namespace A194258.P6130564753522000528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (A020703 (n + 1)).toNat

end

end A194258.P6130564753522000528

noncomputable section

/-- A194258: Second inverse function (numbers of columns) for pairing function A060734.

Offset 1, canonical program `A194258.P6130564753522000528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194258 (n : ℕ) : ℤ :=
  A194258.P6130564753522000528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194723.P1002386468947181605

`A089022(n)/and(3, A089022(n))`
-/

namespace A194723.P1002386468947181605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089022 n : ℚ) / (Int.land 3 (A089022 n) : ℚ)

end

end A194723.P1002386468947181605

noncomputable section

/-- A194723: Number of ternary words either empty or beginning with the first character of the alphabet, that can be built by inserting n doublets into the initially empty word.

Offset 0, canonical program `A194723.P1002386468947181605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A194723 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A194723.P1002386468947181605.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A194723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194735.P10653237601226367426

`(n*A194138(n+1))%(n+2)`
-/

namespace A194735.P10653237601226367426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A194138 (n + 1)) (n + 2 : ℤ)

end

end A194735.P10653237601226367426

noncomputable section

/-- A194735: Number of positive integers k <= n such that {k*sqrt(2)} > {n*sqrt(2)}, where { } = fractional part.

Offset 1, canonical program `A194735.P10653237601226367426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A194735 (n : ℕ) : ℤ :=
  A194735.P10653237601226367426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A194735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194744.P9313095797038209416

`A194743(n+1)+1`
-/

namespace A194744.P9313095797038209416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194743 (n + 1) + 1

end

end A194744.P9313095797038209416

noncomputable section

/-- A194744: Number of k such that {-k*sqrt(5)} < {-n*sqrt(5)}, where { } = fractional part.

Offset 1, canonical program `A194744.P9313095797038209416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194744 (n : ℕ) : ℤ :=
  A194744.P9313095797038209416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194814.P16521420712131060021

`1-A194813(n+1)+n`
-/

namespace A194814.P16521420712131060021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194813 (n + 1) + (n : ℤ)

end

end A194814.P16521420712131060021

noncomputable section

/-- A194814: Number of integers k in [1,n] such that {n*r+k*r} > {n*r-k*r}, where { } = fractional part and r=(1+sqrt(5))/2 (the golden ratio).

Offset 1, canonical program `A194814.P16521420712131060021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194814 (n : ℕ) : ℤ :=
  A194814.P16521420712131060021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194827.P12693509753425005756

`∑[A000120(n)-A240883(n)]`
-/

namespace A194827.P12693509753425005756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A240883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194827.P12693509753425005756

noncomputable section

/-- A194827: 2-adic valuation of the number of n X n Alternating Sign Matrices (A005130(n)).

Offset 1, canonical program `A194827.P12693509753425005756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A194827 (n : ℕ) : ℤ :=
  A194827.P12693509753425005756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A194827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194848.P4641627590667546157

`A056557(n)+1`
-/

namespace A194848.P4641627590667546157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 n + 1

end

end A194848.P4641627590667546157

noncomputable section

/-- A194848: Write n = C(i,3)+C(j,2)+C(k,1) with i>j>k>=0; sequence gives j values.

Offset 0, canonical program `A194848.P4641627590667546157`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194848 (n : ℕ) : ℤ :=
  A194848.P4641627590667546157.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194991.P2956389845314371910

`p?[n*A228039(n)]`
-/

namespace A194991.P2956389845314371910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A228039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194991.P2956389845314371910

noncomputable section

/-- A194991: Primes whose squares are odious.

Offset 1, canonical program `A194991.P2956389845314371910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3380 terms. -/
def A194991 (n : ℕ) : ℤ :=
  A194991.P2956389845314371910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3380 terms. -/
def A194991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195608.P1474095549682633673

`record[(n+1)*A228495(A228495(n)+1+n)]`
-/

namespace A195608.P1474095549682633673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A228495 (A228495 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195608.P1474095549682633673

noncomputable section

/-- A195608: Numbers n such that Sum_{i=1..n} A(i) = A(n)*A(n+1)/4, where A(n) = A001969(n).

Offset 1, canonical program `A195608.P1474095549682633673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195608 (n : ℕ) : ℤ :=
  A195608.P1474095549682633673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196276.P9076072526218901477

`comp[A008507(n+1)]+1`
-/

namespace A196276.P9076072526218901477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A196276.P9076072526218901477

noncomputable section

/-- A196276: Numbers m such that A196274(m) = 1.

Offset 1, canonical program `A196276.P9076072526218901477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196276 (n : ℕ) : ℤ :=
  (A196276.P9076072526218901477.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198069.P6078617313314915995

`A135517(lt[A006257(n), A053644(n+1)])`
-/

namespace A198069.P6078617313314915995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A198069.P6078617313314915995

noncomputable section

/-- A198069: Table read by rows, T(0,0) = 1 and for n>0, 0<=k<=2^(n-1) T(n,k) = gcd(k,2^(n-1)).

Offset 0, canonical program `A198069.P6078617313314915995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5917 terms. -/
def A198069 (n : ℕ) : ℤ :=
  A198069.P6078617313314915995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5917 terms. -/
def A198069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199332.P8726158095478974099

`∑[(A130855(n)+1)%2]`
-/

namespace A199332.P8726158095478974099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130855 n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199332.P8726158095478974099

noncomputable section

/-- A199332: Triangle read by rows, where even numbered rows contain the nonsquares (cf. A000037) and odd rows contain replicated squares.

Offset 1, canonical program `A199332.P8726158095478974099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199332 (n : ℕ) : ℤ :=
  A199332.P8726158095478974099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199514.P11177618966910493986

`(A066779(n+2)-A066779(n+1))/A009195(n+2)`
-/

namespace A199514.P11177618966910493986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066779 (n + 2) - A066779 (n + 1) : ℚ) / (A009195 (n + 2) : ℚ)

end

end A199514.P11177618966910493986

noncomputable section

/-- A199514: Numerators of zeros to a symmetric polynomial. Numerators of mu(n)^2*(n/(n - phi(n))).

Offset 2, canonical program `A199514.P11177618966910493986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A199514 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A199514.P11177618966910493986.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A199514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200245.P5209616361364891102

`∑[A200244(n+1)]`
-/

namespace A200245.P5209616361364891102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200245.P5209616361364891102

noncomputable section

/-- A200245: Partial sums of A200244.

Offset 1, canonical program `A200245.P5209616361364891102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200245 (n : ℕ) : ℤ :=
  A200245.P5209616361364891102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200779.P665373488790890752

`A004741(A000037(n+1))/Δ[A164386(n+1)]`
-/

namespace A200779.P665373488790890752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164386 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004741 (A000037 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A200779.P665373488790890752

noncomputable section

/-- A200779: a(n) = number of i in the range 1 <= i <= n such that b(i)=b(n), where b is the sequence A053615 taken with offset 1.

Offset 1, canonical program `A200779.P665373488790890752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A200779 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A200779.P665373488790890752.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A200779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201462.P13807279662606650267

`1+lt[1, A109848(n+1)]`
-/

namespace A201462.P13807279662606650267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A201462.P13807279662606650267

noncomputable section

/-- A201462: Numbers that are not coprime to their 9's complement.

Offset 1, canonical program `A201462.P13807279662606650267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3955 terms. -/
def A201462 (n : ℕ) : ℤ :=
  (A201462.P13807279662606650267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3955 terms. -/
def A201462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202149.P16063485969264472822

`(2*A059268(n))%A003057(n+2)`
-/

namespace A202149.P16063485969264472822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A059268 n) (A003057 (n + 2))

end

end A202149.P16063485969264472822

noncomputable section

/-- A202149: Triangle read by rows: T(n, k) = mod(2^k, n), where 1 <= k < n.

Offset 2, canonical program `A202149.P16063485969264472822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A202149 (n : ℕ) : ℤ :=
  A202149.P16063485969264472822.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A202149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202301.P8679729127631786445

`A151800(A007504(n+1))`
-/

namespace A202301.P8679729127631786445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A007504 (n + 1)).toNat

end

end A202301.P8679729127631786445

noncomputable section

/-- A202301: Next prime after the partial sum of the first n primes.

Offset 1, canonical program `A202301.P8679729127631786445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202301 (n : ℕ) : ℤ :=
  A202301.P8679729127631786445.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A203990.P14919765066385001405

`A106314(n+1)+A003991(n+1)`
-/

namespace A203990.P14919765066385001405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106314 (n + 1) + A003991 (n + 1)

end

end A203990.P14919765066385001405

noncomputable section

/-- A203990: Symmetric matrix based on f(i,j) = (i+j)*min(i,j), by antidiagonals.

Offset 1, canonical program `A203990.P14919765066385001405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203990 (n : ℕ) : ℤ :=
  A203990.P14919765066385001405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203996.P4927933465799713350

`A094053(n+1)+A185908(n+1)+1`
-/

namespace A203996.P4927933465799713350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + (A185908 (n + 1) + 1)

end

end A203996.P4927933465799713350

noncomputable section

/-- A203996: Symmetric matrix based on f(i,j)=min{i(j+1),j(i+1)}, by antidiagonals.

Offset 1, canonical program `A203996.P4927933465799713350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203996 (n : ℕ) : ℤ :=
  A203996.P4927933465799713350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204018.P15878726800504496581

`A204016(n+1)+1`
-/

namespace A204018.P15878726800504496581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (n + 1) + 1

end

end A204018.P15878726800504496581

noncomputable section

/-- A204018: Symmetric matrix based on f(i,j)=1+max(j mod i, i mod j), by antidiagonals.

Offset 1, canonical program `A204018.P15878726800504496581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204018 (n : ℕ) : ℤ :=
  A204018.P15878726800504496581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204133.P15490279526159944465

`A059268(n*A003982(n))`
-/

namespace A204133.P15490279526159944465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 ((n : ℤ) * A003982 n).toNat

end

end A204133.P15490279526159944465

noncomputable section

/-- A204133: Symmetric matrix based on f(i,j)=(2^(i-1) if i=j and 1 otherwise), by antidiagonals.

Offset 1, canonical program `A204133.P15490279526159944465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204133 (n : ℕ) : ℤ :=
  A204133.P15490279526159944465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204154.P17367594193220542085

`A111650(n+1)-A204028(n+1)`
-/

namespace A204154.P17367594193220542085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A204028 (n + 1)

end

end A204154.P17367594193220542085

noncomputable section

/-- A204154: Symmetric matrix based on f(i,j) = max(2i-j, 2j-i), by antidiagonals.

Offset 1, canonical program `A204154.P17367594193220542085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204154 (n : ℕ) : ℤ :=
  A204154.P17367594193220542085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204179.P16416840978499100433

`A128227(n)*A204177(n+1)`
-/

namespace A204179.P16416840978499100433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A204177 (n + 1)

end

end A204179.P16416840978499100433

noncomputable section

/-- A204179: Symmetric matrix based on f(i,j) defined by f(i,1)=f(1,j)=1; f(i,i)= i; f(i,j)=0 otherwise; by antidiagonals.

Offset 1, canonical program `A204179.P16416840978499100433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204179 (n : ℕ) : ℤ :=
  A204179.P16416840978499100433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204183.P6031694459473628253

`A009531(A204181(n+1))`
-/

namespace A204183.P6031694459473628253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A204181 (n + 1)).toNat

end

end A204183.P6031694459473628253

noncomputable section

/-- A204183: Symmetric matrix based on f(i,j) defined by f(i,1)=f(1,j)=1; f(i,i)= (-1)^(i-1); f(i,j)=0 otherwise; by antidiagonals.

Offset 1, canonical program `A204183.P6031694459473628253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204183 (n : ℕ) : ℤ :=
  A204183.P6031694459473628253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204386.P12533597244492937321

`∑{d}[n+1, A133657(#)*A208895((n+1)/#)]`
-/

namespace A204386.P12533597244492937321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133657 d * A208895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A204386.P12533597244492937321

noncomputable section

/-- A204386: Expansion of (theta_2(q)^8 + 4 * theta_2(q^2)^8) / 256 in powers of q^2.

Offset 1, canonical program `A204386.P12533597244492937321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204386 (n : ℕ) : ℤ :=
  A204386.P12533597244492937321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204850.P1575492180072976004

`(-1)^n*A202394(n)`
-/

namespace A204850.P1575492180072976004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A202394 n

end

end A204850.P1575492180072976004

noncomputable section

/-- A204850: Expansion of f(x)^3 - 9 * x * f(x^9)^3 in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A204850.P1575492180072976004`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A202394, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204850 (n : ℕ) : ℤ :=
  A204850.P1575492180072976004.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A202394, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A205511.P14836272613106091644

`A000040(eq[1, A205510(n+1)]+1)`
-/

namespace A205511.P14836272613106091644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205511.P14836272613106091644

noncomputable section

/-- A205511: Lesser of the n-th pair of Hamming twin primes.

Offset 1, canonical program `A205511.P14836272613106091644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A205511 (n : ℕ) : ℤ :=
  A205511.P14836272613106091644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A205511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205558.P3325342254299425434

`A089253(A003057(n+2))-A089253(A002260(n+1))`
-/

namespace A205558.P3325342254299425434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (A003057 (n + 2)).toNat - A089253 (A002260 (n + 1)).toNat

end

end A205558.P3325342254299425434

noncomputable section

/-- A205558: (A204898)/2 = (prime(k)-prime(j))/2; A086802 without its zeros.

Offset 1, canonical program `A205558.P3325342254299425434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205558 (n : ℕ) : ℤ :=
  A205558.P3325342254299425434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205678.P13105615205405818687

`A002260(A205676(n+1))`
-/

namespace A205678.P13105615205405818687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205676 (n + 1)).toNat

end

end A205678.P13105615205405818687

noncomputable section

/-- A205678: The number j such that 4 divides prime(k)-prime(j), where k(n)=A205677(n).

Offset 1, canonical program `A205678.P13105615205405818687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205678 (n : ℕ) : ℤ :=
  A205678.P13105615205405818687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205690.P15675749625037910183

`∩[A205559(n+1), A080036(n)]`
-/

namespace A205690.P15675749625037910183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205690.P15675749625037910183

noncomputable section

/-- A205690: Positions of multiples of 6 in A204890 (differences of primes).

Offset 1, canonical program `A205690.P15675749625037910183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205690 (n : ℕ) : ℤ :=
  (A205690.P15675749625037910183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205718.P15912331110075494012

`∩[A205683(n+1), A080036(n)]`
-/

namespace A205718.P15912331110075494012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205718.P15912331110075494012

noncomputable section

/-- A205718: Positions of multiples of 10 in A204890 (differences of primes).

Offset 1, canonical program `A205718.P15912331110075494012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A205718 (n : ℕ) : ℤ :=
  (A205718.P15912331110075494012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A205718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205857.P17589815892520553844

`A003057(A205856(n+1)+1)`
-/

namespace A205857.P17589815892520553844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205856 (n + 1) + 1).toNat

end

end A205857.P17589815892520553844

noncomputable section

/-- A205857: Numbers k for which 6 divides s(k)-s(j) for some j<k; each k occurs once for each such j; s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205857.P17589815892520553844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A205857 (n : ℕ) : ℤ :=
  A205857.P17589815892520553844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A205857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205858.P7887194990483068320

`A002260(A205856(n+1))`
-/

namespace A205858.P7887194990483068320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205856 (n + 1)).toNat

end

end A205858.P7887194990483068320

noncomputable section

/-- A205858: The least number j such that 6 divides s(k)-s(j), where k(n)=A205857(n) and s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205858.P7887194990483068320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2103 terms. -/
def A205858 (n : ℕ) : ℤ :=
  A205858.P7887194990483068320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2103 terms. -/
def A205858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205877.P15389907545694943149

`A003057(A205876(n+1)+1)`
-/

namespace A205877.P15389907545694943149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205876 (n + 1) + 1).toNat

end

end A205877.P15389907545694943149

noncomputable section

/-- A205877: Numbers k for which 10 divides s(k)-s(j) for some j<k; each k occurs once for each such j; s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205877.P15389907545694943149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A205877 (n : ℕ) : ℤ :=
  A205877.P15389907545694943149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A205877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205878.P6519794814124573053

`A002260(A205876(n+1))`
-/

namespace A205878.P6519794814124573053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205876 (n + 1)).toNat

end

end A205878.P6519794814124573053

noncomputable section

/-- A205878: The least number j such that 10 divides s(k)-s(j), where k(n)=A205877(n) and s(k) denotes the (k+1)-st Fibonacci number.

Offset 1, canonical program `A205878.P6519794814124573053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. -/
def A205878 (n : ℕ) : ℤ :=
  A205878.P6519794814124573053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. -/
def A205878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206036.P10851375619231835458

`lt[1, A070242(n+1)]+1`
-/

namespace A206036.P10851375619231835458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A206036.P10851375619231835458

noncomputable section

/-- A206036: Numbers m such that sigma(m) = sigma(k) has solution for distinct numbers m and k.

Offset 1, canonical program `A206036.P10851375619231835458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206036 (n : ℕ) : ℤ :=
  (A206036.P10851375619231835458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206771.P12055563301580654612

`A098597(abs(1-n))*A191871(n)`
-/

namespace A206771.P12055563301580654612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098597 |1 - (n : ℤ)|.toNat * A191871 n

end

end A206771.P12055563301580654612

noncomputable section

/-- A206771: 0 followed by the numerators of the reduced (A001803(n) + A001790(n)) / (2*A046161(n)).

Offset 0, canonical program `A206771.P12055563301580654612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A206771 (n : ℕ) : ℤ :=
  A206771.P12055563301580654612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A206771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207543.P2222567261959713361

`2*A119900(n)-A098158(n)`
-/

namespace A207543.P2222567261959713361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119900 n - A098158 n

end

end A207543.P2222567261959713361

noncomputable section

/-- A207543: Triangle read by rows, expansion of (1+y*x)/(1-2*y*x+y*(y-1)*x^2).

Offset 0, canonical program `A207543.P2222567261959713361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207543 (n : ℕ) : ℤ :=
  A207543.P2222567261959713361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207676.P1860184903875247083

`A207328(2*∑[and(n, -n)²]+n)/2`
-/

namespace A207676.P1860184903875247083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207328 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat : ℚ) / 2

end

end A207676.P1860184903875247083

noncomputable section

/-- A207676: Nonlinearities of 3-variable Boolean functions ordered lexicographically.

Offset 0, canonical program `A207676.P1860184903875247083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A207676 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207676.P1860184903875247083.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A207676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208328.P11399055652064399149

`A125690(and(1, A099627(n))*A061579(n))`
-/

namespace A208328.P11399055652064399149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125690 (Int.land 1 (A099627 n) * A061579 n).toNat

end

end A208328.P11399055652064399149

noncomputable section

/-- A208328: Triangle of coefficients of polynomials u(n,x) jointly generated with A208329; see the Formula section.

Offset 1, canonical program `A208328.P11399055652064399149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A208328 (n : ℕ) : ℤ :=
  A208328.P11399055652064399149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A208328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208510.P9937072583222605301

`A029655(A083920(n))`
-/

namespace A208510.P9937072583222605301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (A083920 n).toNat

end

end A208510.P9937072583222605301

noncomputable section

/-- A208510: Triangle of coefficients of polynomials u(n,x) jointly generated with A029653; see the Formula section.

Offset 1, canonical program `A208510.P9937072583222605301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208510 (n : ℕ) : ℤ :=
  A208510.P9937072583222605301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208747.P1926894875507570

`A059268(n)*A208342(n+1)`
-/

namespace A208747.P1926894875507570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A208342 (n + 1)

end

end A208747.P1926894875507570

noncomputable section

/-- A208747: Triangle of coefficients of polynomials u(n,x) jointly generated with A208748; see the Formula section.

Offset 1, canonical program `A208747.P1926894875507570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208747 (n : ℕ) : ℤ :=
  A208747.P1926894875507570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208882.P1883116852521567448

`abs(floor(A073579(n+1)/8))`
-/

namespace A208882.P1883116852521567448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A073579 (n + 1) : ℚ) / 8⌋|

end

end A208882.P1883116852521567448

noncomputable section

/-- A208882: Number of representations of square of prime(n) as a^2 + b^2 + c^2 with 0 < a <= b <= c.

Offset 1, canonical program `A208882.P1883116852521567448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A208882 (n : ℕ) : ℤ :=
  A208882.P1883116852521567448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A208882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208913.P2125602932926388690

`A059268(n)*A133567(n+1)`
-/

namespace A208913.P2125602932926388690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A133567 (n + 1)

end

end A208913.P2125602932926388690

noncomputable section

/-- A208913: Triangle of coefficients of polynomials u(n,x) jointly generated with A208914; see the Formula section.

Offset 1, canonical program `A208913.P2125602932926388690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208913 (n : ℕ) : ℤ :=
  A208913.P2125602932926388690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208914.P18164605293524257971

`A059268(n)*A133084(n+1)`
-/

namespace A208914.P18164605293524257971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A133084 (n + 1)

end

end A208914.P18164605293524257971

noncomputable section

/-- A208914: Triangle of coefficients of polynomials v(n,x) jointly generated with A208913; see the Formula section.

Offset 1, canonical program `A208914.P18164605293524257971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208914 (n : ℕ) : ℤ :=
  A208914.P18164605293524257971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208917.P12345461414326027757

`(A208515(A014132(n+1)+1)-A208515(n+1))*A059268(n)`
-/

namespace A208917.P12345461414326027757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A208515 (A014132 (n + 1) + 1).toNat - A208515 (n + 1)) * A059268 n

end

end A208917.P12345461414326027757

noncomputable section

/-- A208917: Triangle of coefficients of polynomials u(n,x) jointly generated with A208918; see the Formula section.

Offset 1, canonical program `A208917.P12345461414326027757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A208917 (n : ℕ) : ℤ :=
  A208917.P12345461414326027757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A208917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208918.P1927240516366514660

`A059268(n)*A208515(n+1)`
-/

namespace A208918.P1927240516366514660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A208515 (n + 1)

end

end A208918.P1927240516366514660

noncomputable section

/-- A208918: Triangle of coefficients of polynomials v(n,x) jointly generated with A208917; see the Formula section.

Offset 1, canonical program `A208918.P1927240516366514660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208918 (n : ℕ) : ℤ :=
  A208918.P1927240516366514660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209202.P7856621708581531134

`A000203(A023207(n+4))-10`
-/

namespace A209202.P7856621708581531134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A023207 (n + 4)).toNat - 10

end

end A209202.P7856621708581531134

noncomputable section

/-- A209202: Values of the difference d for 3 primes in geometric-arithmetic progression with the minimal sequence {3*3^j + j*d}, j = 0 to 2.

Offset 1, canonical program `A209202.P7856621708581531134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A209202 (n : ℕ) : ℤ :=
  A209202.P7856621708581531134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A209202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209982.P8895213020285602242

`4*(A057428(n)+2*A171503(n))`
-/

namespace A209982.P8895213020285602242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A057428 n + 2 * A171503 n)

end

end A209982.P8895213020285602242

noncomputable section

/-- A209982: Number of 2 X 2 matrices having all elements in {-n,...,n} and determinant 1.

Offset 0, canonical program `A209982.P8895213020285602242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A209982 (n : ℕ) : ℤ :=
  A209982.P8895213020285602242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A209982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209983.P18438858037986034788

`2*(A057428(n)+2*A171503(n))`
-/

namespace A209983.P18438858037986034788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057428 n + 2 * A171503 n)

end

end A209983.P18438858037986034788

noncomputable section

/-- A209983: (A209982)/2.

Offset 0, canonical program `A209983.P18438858037986034788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A209983 (n : ℕ) : ℤ :=
  A209983.P18438858037986034788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A209983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210196.P11515123120557541586

`A059268(n)*A124927(n)`
-/

namespace A210196.P11515123120557541586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A124927 n

end

end A210196.P11515123120557541586

noncomputable section

/-- A210196: Triangle of coefficients of polynomials v(n,x) jointly generated with A210195; see the Formula section.

Offset 1, canonical program `A210196.P11515123120557541586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210196 (n : ℕ) : ℤ :=
  A210196.P11515123120557541586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210535.P1061241870078406260

`A004736(A185180(n+1))`
-/

namespace A210535.P1061241870078406260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A185180 (n + 1)).toNat

end

end A210535.P1061241870078406260

noncomputable section

/-- A210535: Second inverse function (numbers of columns) for pairing function A209293.

Offset 1, canonical program `A210535.P1061241870078406260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A210535 (n : ℕ) : ℤ :=
  A210535.P1061241870078406260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A210535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210939.P14413920442416085938

`∪[A136798(n+1), A165972(n+1)]`
-/

namespace A210939.P14413920442416085938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210939.P14413920442416085938

noncomputable section

/-- A210939: Nonprime nearest-neighbors of the primes.

Offset 1, canonical program `A210939.P14413920442416085938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210939 (n : ℕ) : ℤ :=
  (A210939.P14413920442416085938.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210999.P457972312276480137

`filter[A005451(n+1), A131378(#)]`
-/

namespace A210999.P457972312276480137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A210999.P457972312276480137

noncomputable section

/-- A210999: Composite numbers that are in the gap between an odd-indexed prime and an even-indexed prime.

Offset 1, canonical program `A210999.P457972312276480137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A210999 (n : ℕ) : ℤ :=
  A210999.P457972312276480137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A210999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211056.P4517017241335993892

`2*(∑[A005898(n)]-A018806(n+1))`
-/

namespace A211056.P4517017241335993892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A018806 (n + 1))

end

end A211056.P4517017241335993892

noncomputable section

/-- A211056: Number of 2 X 2 nonsingular matrices having all terms in {1,...,n}.

Offset 1, canonical program `A211056.P4517017241335993892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A211056 (n : ℕ) : ℤ :=
  A211056.P4517017241335993892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A211056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211058.P5210931366542978941

`A018806(n+1)+C((n+1)², 2)`
-/

namespace A211058.P5210931366542978941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018806 (n + 1) + (Nat.choose ((n + 1) ^ 2) 2 : ℤ)

end

end A211058.P5210931366542978941

noncomputable section

/-- A211058: Number of 2 X 2 matrices having all terms in {1,...,n} and nonnegative determinant.

Offset 1, canonical program `A211058.P5210931366542978941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A211058 (n : ℕ) : ℤ :=
  A211058.P5210931366542978941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A211058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211066.P8286299359558462828

`A018806(n+1)+A083374(n+1)-A211068(n+1)`
-/

namespace A211066.P8286299359558462828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018806 (n + 1) + (A083374 (n + 1) - A211068 (n + 1))

end

end A211066.P8286299359558462828

noncomputable section

/-- A211066: Number of 2 X 2 matrices having all terms in {1,...,n} and nonnegative even determinant.

Offset 1, canonical program `A211066.P8286299359558462828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211066 (n : ℕ) : ℤ :=
  A211066.P8286299359558462828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211170.P10008061104866407627

`∩[A034962(n+1), A034965(n+1)]`
-/

namespace A211170.P10008061104866407627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211170.P10008061104866407627

noncomputable section

/-- A211170: Primes that are sum of both three and five consecutive primes.

Offset 1, canonical program `A211170.P10008061104866407627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A211170 (n : ℕ) : ℤ :=
  (A211170.P10008061104866407627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A211170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212303.P5682405961031894287

`gcd(A100071(n), A138364(n))`
-/

namespace A212303.P5682405961031894287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100071 n) (A138364 n)

end

end A212303.P5682405961031894287

noncomputable section

/-- A212303: a(n) = n!/([(n-1)/2]!*[(n+1)/2]!) for n>0, a(0)=0, and where [ ] = floor.

Offset 0, canonical program `A212303.P5682405961031894287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A212303 (n : ℕ) : ℤ :=
  (A212303.P5682405961031894287.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A212303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213408.P6728982217744308874

`filter[A002654(n+1), A011558(#)]`
-/

namespace A213408.P6728982217744308874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A213408.P6728982217744308874

noncomputable section

/-- A213408: Sequence A002654 with the zero terms omitted.

Offset 1, canonical program `A213408.P6728982217744308874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A213408 (n : ℕ) : ℤ :=
  A213408.P6728982217744308874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A213408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213539.P12768956684686906977

`eq[1, char[A119733(n+1)]]`
-/

namespace A213539.P12768956684686906977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213539.P12768956684686906977

noncomputable section

/-- A213539: Numbers for which there is at least one 3-smooth representation that is special of level k.

Offset 1, canonical program `A213539.P12768956684686906977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A213539 (n : ℕ) : ℤ :=
  (A213539.P12768956684686906977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A213539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213650.P4295961381760451156

`eq[2, A102862(n+1)]+1`
-/

namespace A213650.P4295961381760451156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213650.P4295961381760451156

noncomputable section

/-- A213650: Numbers k such that the sum of the first k primes is semiprime.

Offset 1, canonical program `A213650.P4295961381760451156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1701 terms. -/
def A213650 (n : ℕ) : ℤ :=
  (A213650.P4295961381760451156.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1701 terms. -/
def A213650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213706.P17260508495557102754

`a(n-1)+A071542(n)` with `a(0)=0`
-/

namespace A213706.P17260508495557102754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A071542 n

end

end A213706.P17260508495557102754

noncomputable section

/-- A213706: Partial sums of A071542.

Offset 0, canonical program `A213706.P17260508495557102754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213706 (n : ℕ) : ℤ :=
  A213706.P17260508495557102754.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213706.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213709.P17085692847900461859

`A071542(2^(n+1)-1)-A071542(2^n-1)`
-/

namespace A213709.P17085692847900461859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (2 ^ (n + 1) - 1) - A071542 (2 ^ n - 1)

end

end A213709.P17085692847900461859

noncomputable section

/-- A213709: Number of steps to go from 2^(n+1)-1 to (2^n)-1 using the iterative process described in A071542.

Offset 0, canonical program `A213709.P17085692847900461859`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213709 (n : ℕ) : ℤ :=
  A213709.P17085692847900461859.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213709.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213710.P973503051556971072

`A071542(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213710.P973503051556971072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (2 ^ n)

end

end A213710.P973503051556971072

noncomputable section

/-- A213710: Number of steps to reach 0 when starting from 2^n and iterating the map x -> x - (number of 1's in binary representation of x): a(n) = A071542(2^n) = A218600(n)+1.

Offset 0, canonical program `A213710.P973503051556971072`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213710 (n : ℕ) : ℤ :=
  A213710.P973503051556971072.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213710.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213741.P11773447692620937170

`eq[3, A102862(n+1)]+1`
-/

namespace A213741.P11773447692620937170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213741.P11773447692620937170

noncomputable section

/-- A213741: Numbers n such that the sum of the first n primes is divisible by exactly 3 prime powers (not including 1).

Offset 1, canonical program `A213741.P11773447692620937170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A213741 (n : ℕ) : ℤ :=
  (A213741.P11773447692620937170.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A213741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213761.P7356628059179805218

`2*A213750(n+1)-A213500(n+1)`
-/

namespace A213761.P7356628059179805218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213750 (n + 1) - A213500 (n + 1)

end

end A213761.P7356628059179805218

noncomputable section

/-- A213761: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 3*n-5+3*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213761.P7356628059179805218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213761 (n : ℕ) : ℤ :=
  A213761.P7356628059179805218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213774.P653417461158321534

`A213768(A014132(n+1))-A005408(A002024(n+1))`
-/

namespace A213774.P653417461158321534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A014132 (n + 1)).toNat - A005408 (A002024 (n + 1)).toNat

end

end A213774.P653417461158321534

noncomputable section

/-- A213774: Rectangular array: (row n) = b**c, where b(h) = F(h+1), c(h) = 2*n-3+2*h, F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213774.P653417461158321534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213774 (n : ℕ) : ℤ :=
  A213774.P653417461158321534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213822.P7065334176716146466

`A213750(n+1)+A213821(n+1)+A213752(n+1)`
-/

namespace A213822.P7065334176716146466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213750 (n + 1) + (A213821 (n + 1) + A213752 (n + 1))

end

end A213822.P7065334176716146466

noncomputable section

/-- A213822: Rectangular array: (row n) = b**c, where b(h) = 3*h-1, c(h) = 3*n-4+3*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213822.P7065334176716146466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213822 (n : ℕ) : ℤ :=
  A213822.P7065334176716146466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213835.P6060374703208332894

`2*A213750(n+1)-abs(A122432(n))`
-/

namespace A213835.P6060374703208332894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213750 (n + 1) - |A122432 n|

end

end A213835.P6060374703208332894

noncomputable section

/-- A213835: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 4*n-7+4*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213835.P6060374703208332894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213835 (n : ℕ) : ℤ :=
  A213835.P6060374703208332894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213847.P13086117806875613018

`A213752(n+1)+2*A213750(n+1)`
-/

namespace A213847.P13086117806875613018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + 2 * A213750 (n + 1)

end

end A213847.P13086117806875613018

noncomputable section

/-- A213847: Rectangular array: (row n) = b**c, where b(h) = 4*h-1, c(h) = 2*n-3+2*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213847.P13086117806875613018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213847 (n : ℕ) : ℤ :=
  A213847.P13086117806875613018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214195.P1409231567041737422

`eq[(n+1)^3, A290480(n+1)]+1`
-/

namespace A214195.P1409231567041737422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214195.P1409231567041737422

noncomputable section

/-- A214195: Numbers with the number of distinct prime factors a multiple of 3.

Offset 1, canonical program `A214195.P1409231567041737422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214195 (n : ℕ) : ℤ :=
  (A214195.P1409231567041737422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214585.P2727886227339530422

`eq[1, A214054(n+1)]+1`
-/

namespace A214585.P2727886227339530422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214585.P2727886227339530422

noncomputable section

/-- A214585: Numbers k such that gcd(k!!+1,k-1) > 1.

Offset 1, canonical program `A214585.P2727886227339530422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4300 terms. -/
def A214585 (n : ℕ) : ℤ :=
  (A214585.P2727886227339530422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4300 terms. -/
def A214585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214586.P4542991298950632381

`lt[1, A214054(n+1)]+1`
-/

namespace A214586.P4542991298950632381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A214586.P4542991298950632381

noncomputable section

/-- A214586: Numbers k such that gcd(k!!+1,k-1) = 1.

Offset 1, canonical program `A214586.P4542991298950632381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3655 terms. -/
def A214586 (n : ℕ) : ℤ :=
  (A214586.P4542991298950632381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3655 terms. -/
def A214586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214711.P10925273728456051061

`eq[2, A214710(n+1)]+1`
-/

namespace A214711.P10925273728456051061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214711.P10925273728456051061

noncomputable section

/-- A214711: Positions of 2 in A214710.

Offset 1, canonical program `A214711.P10925273728456051061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A214711 (n : ℕ) : ℤ :=
  (A214711.P10925273728456051061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A214711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214923.P17745120934001476500

`∑[A011373(n)-A059016(n)]`
-/

namespace A214923.P17745120934001476500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n - A059016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214923.P17745120934001476500

noncomputable section

/-- A214923: Total count of 1's in binary representation of Fibonacci(n) and previous Fibonacci numbers, minus total count of 0's. That is, partial sums of b(n) = -A037861(Fibonacci(n)).

Offset 0, canonical program `A214923.P17745120934001476500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214923 (n : ℕ) : ℤ :=
  A214923.P17745120934001476500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214990.P627774021900434845

`A007064(A005206(n)+1)`
-/

namespace A214990.P627774021900434845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A005206 n + 1).toNat

end

end A214990.P627774021900434845

noncomputable section

/-- A214990: Second nearest integer to n*r, where r = (1+ sqrt(5))/2, the golden ratio.

Offset 1, canonical program `A214990.P627774021900434845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214990 (n : ℕ) : ℤ :=
  A214990.P627774021900434845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215028.P4106407671865329416

`2-(a(n-1)-(A111708(n)+A004273(n)))` with `a(0)=1`
-/

namespace A215028.P4106407671865329416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) - (A111708 n + A004273 n))

end

end A215028.P4106407671865329416

noncomputable section

/-- A215028: a(1) = 1; for n >= 1, a(n+1) = (concatenation of n+1 and n) - a(n).

Offset 1, canonical program `A215028.P4106407671865329416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215028 (n : ℕ) : ℤ :=
  A215028.P4106407671865329416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215028.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A215099.P78987894132717335

`A151800(a(n-2)+a(n-1))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A215099.P78987894132717335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A151800 (a (n - 2) + a (n - 1)).toNat - a (n - 2)

end

end A215099.P78987894132717335

noncomputable section

/-- A215099: a(0)=0, a(1)=1, a(n) = least k>a(n-1) such that k+a(n-2) is prime.

Offset 0, canonical program `A215099.P78987894132717335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5512 terms. -/
def A215099 (n : ℕ) : ℤ :=
  A215099.P78987894132717335.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5512 terms. -/
def A215099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215379.P3185768796367872946

`∪[A215135(n+1), A215375(n+1)]`
-/

namespace A215379.P3185768796367872946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215379.P3185768796367872946

noncomputable section

/-- A215379: Primes congruent to {0, 1, 2, 3} mod 13.

Offset 1, canonical program `A215379.P3185768796367872946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215379 (n : ℕ) : ℤ :=
  (A215379.P3185768796367872946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215762.P9255059313311877312

`A151800(a(n-1)+2*n)` with `a(0)=2`
-/

namespace A215762.P9255059313311877312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) + (2 * n : ℤ)).toNat

end

end A215762.P9255059313311877312

noncomputable section

/-- A215762: a(n) = smallest prime > a(n-1) + 2(n-1), a(1)=2.

Offset 1, canonical program `A215762.P9255059313311877312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A215762 (n : ℕ) : ℤ :=
  A215762.P9255059313311877312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A215762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216157.P14329396617965940493

`A215947(A055684(n+3)+1)`
-/

namespace A216157.P14329396617965940493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (A055684 (n + 3) + 1).toNat

end

end A216157.P14329396617965940493

noncomputable section

/-- A216157: Difference between the sum of the even divisors and the sum of the odd divisors of phi(n).

Offset 3, canonical program `A216157.P14329396617965940493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A216157 (n : ℕ) : ℤ :=
  A216157.P14329396617965940493.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A216157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216412.P4166279177706564649

`A000010(A039771(n+1))`
-/

namespace A216412.P4166279177706564649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A039771 (n + 1)).toNat

end

end A216412.P4166279177706564649

noncomputable section

/-- A216412: The cubes arising in A039771.

Offset 1, canonical program `A216412.P4166279177706564649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039771, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216412 (n : ℕ) : ℤ :=
  A216412.P4166279177706564649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039771, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216412.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217445.P645570032554833675

`eq[1, or(A057427(n), A180017(n))]`
-/

namespace A217445.P645570032554833675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 n) (A180017 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217445.P645570032554833675

noncomputable section

/-- A217445: Numbers n such that n! has the same number of terminating zeros in bases 3 and 4.

Offset 1, canonical program `A217445.P645570032554833675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A217445 (n : ℕ) : ℤ :=
  (A217445.P645570032554833675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A217445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217792.P9875595306642364827

`p?[A095375(n+1)]`
-/

namespace A217792.P9875595306642364827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217792.P9875595306642364827

noncomputable section

/-- A217792: Primes which are equal to the sum of the binary digits of consecutive primes starting with 2.

Offset 1, canonical program `A217792.P9875595306642364827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. -/
def A217792 (n : ℕ) : ℤ :=
  A217792.P9875595306642364827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. -/
def A217792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218255.P890284629792750492

`A151800(10*n)`
-/

namespace A218255.P890284629792750492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (10 * n)

end

end A218255.P890284629792750492

noncomputable section

/-- A218255: Next prime after 10*n.

Offset 0, canonical program `A218255.P890284629792750492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218255 (n : ℕ) : ℤ :=
  A218255.P890284629792750492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218450.P5670755410383586897

`∑{digits}[n+1, A214054(A270572(#²+1)+1)]`
-/

namespace A218450.P5670755410383586897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A214054 (A270572 (x ^ 2 + 1) + 1).toNat).sum

end

end A218450.P5670755410383586897

noncomputable section

/-- A218450: Number of digits of n plus number of digits of n equal to 1, 2, 4, or 8.

Offset 1, canonical program `A218450.P5670755410383586897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218450 (n : ℕ) : ℤ :=
  A218450.P5670755410383586897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219028.P14180676015968789505

`A057000(A039915(n+1))`
-/

namespace A219028.P14180676015968789505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (A039915 (n + 1)).toNat

end

end A219028.P14180676015968789505

noncomputable section

/-- A219028: Number of non-primitive roots for prime(n), less than prime(n).

Offset 1, canonical program `A219028.P14180676015968789505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A219028 (n : ℕ) : ℤ :=
  A219028.P14180676015968789505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A219028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219238.P3363625506201266281

`ceil(A178952(3*(n+1))/6)`
-/

namespace A219238.P3363625506201266281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178952 (3 * (n + 1)) : ℚ) / 6⌉

end

end A219238.P3363625506201266281

noncomputable section

/-- A219238: Coefficient table for the first differences of table A047971: Coefficients of the difference of Gauss polynomials [n+3,3]_q - [n+2,3]_q.

Offset 0, canonical program `A219238.P3363625506201266281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A219238 (n : ℕ) : ℤ :=
  A219238.P3363625506201266281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A219238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219525.P6968393615433371645

`A003991(n+1)-A178952(n+1)`
-/

namespace A219525.P6968393615433371645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A178952 (n + 1)

end

end A219525.P6968393615433371645

noncomputable section

/-- A219525: T(n,k)=Sum of neighbor maps: log base 2 of the number of nXk binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their king-move neighbors in a random 0..1 nXk array.

Offset 1, canonical program `A219525.P6968393615433371645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A219525 (n : ℕ) : ℤ :=
  A219525.P6968393615433371645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A219525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219839.P1850322905401694183

`floor(A176095(n+1)/2)`
-/

namespace A219839.P1850322905401694183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A176095 (n + 1) : ℚ) / 2⌋

end

end A219839.P1850322905401694183

noncomputable section

/-- A219839: a(n) is the number of odd integers in 2..(n-1) that have a common factor (other than 1) with n.

Offset 1, canonical program `A219839.P1850322905401694183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219839 (n : ℕ) : ℤ :=
  A219839.P1850322905401694183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221280.P2827351552118637345

`eq[A066829(n+2), A066829(n+1)]+1`
-/

namespace A221280.P2827351552118637345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A221280.P2827351552118637345

noncomputable section

/-- A221280: Numbers m such that lambda(m) = lambda(m+1), where lambda(n) = A008836(n) is the Liouville function.

Offset 1, canonical program `A221280.P2827351552118637345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221280 (n : ℕ) : ℤ :=
  (A221280.P2827351552118637345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221837.P10112316691659458481

`A046079(n+1)²`
-/

namespace A221837.P10112316691659458481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) ^ 2

end

end A221837.P10112316691659458481

noncomputable section

/-- A221837: Number of integer Heron triangles of height n such that the angles adjacent to the base are not right.

Offset 1, canonical program `A221837.P10112316691659458481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A221837 (n : ℕ) : ℤ :=
  A221837.P10112316691659458481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A221837.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A222405.P12488114317644509065

`A222404(n)+A007318(n)`
-/

namespace A222405.P12488114317644509065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 n + A007318 n

end

end A222405.P12488114317644509065

noncomputable section

/-- A222405: Triangle read by rows: left and right edges are A002061 (1,3,7,13,21,...), interior entries are filled in using the Pascal triangle rule.

Offset 0, canonical program `A222405.P12488114317644509065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222405 (n : ℕ) : ℤ :=
  A222405.P12488114317644509065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224072.P16968694920148514415

`filter[A016945(n), A228495(#)]`
-/

namespace A224072.P16968694920148514415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A224072.P16968694920148514415

noncomputable section

/-- A224072: Odd odious numbers divisible by 3.

Offset 1, canonical program `A224072.P16968694920148514415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4058 terms. -/
def A224072 (n : ℕ) : ℤ :=
  A224072.P16968694920148514415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4058 terms. -/
def A224072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224339.P7859266464313089744

`A113184((n+1)²)`
-/

namespace A224339.P7859266464313089744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 ((n + 1) ^ 2)

end

end A224339.P7859266464313089744

noncomputable section

/-- A224339: Absolute difference between sum of odd divisors of n^2 and sum of even divisors of n^2.

Offset 1, canonical program `A224339.P7859266464313089744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113184, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224339 (n : ℕ) : ℤ :=
  A224339.P7859266464313089744.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113184, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224339.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224380.P18395391775735731980

`4*A224195(n+1)-1`
-/

namespace A224380.P18395391775735731980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A224195 (n + 1) - 1

end

end A224380.P18395391775735731980

noncomputable section

/-- A224380: Table read by antidiagonals of numbers of form (2^n -1)*2^(m+2) + 3 where n>=1, m>=1.

Offset 1, canonical program `A224380.P18395391775735731980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224380 (n : ℕ) : ℤ :=
  A224380.P18395391775735731980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224709.P12316341642076637087

`A224708(2*(n+1))`
-/

namespace A224709.P12316341642076637087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (2 * (n + 1))

end

end A224709.P12316341642076637087

noncomputable section

/-- A224709: The number of unordered partitions {a,b} of the even numbers 2n such that a and b are composite.

Offset 1, canonical program `A224709.P12316341642076637087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A224709 (n : ℕ) : ℤ :=
  A224709.P12316341642076637087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A224709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224712.P17796603799228668468

`A062602(n+1)-and(1, A105700(n))`
-/

namespace A224712.P17796603799228668468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n + 1) - Int.land 1 (A105700 n)

end

end A224712.P17796603799228668468

noncomputable section

/-- A224712: The number of unordered partitions {a, b} of n such that a or b is composite and the other is prime.

Offset 1, canonical program `A224712.P17796603799228668468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224712 (n : ℕ) : ℤ :=
  A224712.P17796603799228668468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225399.P2768579610231320138

`A076982(round(acot(n)+n))-2`
-/

namespace A225399.P2768579610231320138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 2

end

end A225399.P2768579610231320138

noncomputable section

/-- A225399: Number of nontrivial triangular numbers dividing triangular(n).

Offset 0, canonical program `A225399.P2768579610231320138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225399 (n : ℕ) : ℤ :=
  A225399.P2768579610231320138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225534.P13308665992946786377

`eq[0, A007920(A055012(n))]`
-/

namespace A225534.P13308665992946786377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225534.P13308665992946786377

noncomputable section

/-- A225534: Numbers whose sum of cubed digits is prime.

Offset 1, canonical program `A225534.P13308665992946786377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1754 terms. -/
def A225534 (n : ℕ) : ℤ :=
  (A225534.P13308665992946786377.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1754 terms. -/
def A225534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225854.P1162875142972506100

`Δ[A061568(abs(1-n)+1)%A002522(n)]`
-/

namespace A225854.P1162875142972506100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061568 (|1 - (n : ℤ)| + 1).toNat) (A002522 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225854.P1162875142972506100

noncomputable section

/-- A225854: Frequency of prime numbers between consecutive partial sums of primes.

Offset 1, canonical program `A225854.P1162875142972506100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. -/
def A225854 (n : ℕ) : ℤ :=
  A225854.P1162875142972506100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. -/
def A225854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225892.P12355316938491472002

`A071253(p?[A049533(n+1)])`
-/

namespace A225892.P12355316938491472002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071253 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A225892.P12355316938491472002

noncomputable section

/-- A225892: Numbers of the form p^2 * (p^2 + 1) where p is in A225856.

Offset 1, canonical program `A225892.P12355316938491472002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1066 terms. -/
def A225892 (n : ℕ) : ℤ :=
  A225892.P12355316938491472002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1066 terms. -/
def A225892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226133.P1863923535064680015

`eq[2, A051709(24*n+1)]`
-/

namespace A226133.P1863923535064680015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (24 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226133.P1863923535064680015

noncomputable section

/-- A226133: Integers of the form (p*q-1)/24 where p < q are primes.

Offset 1, canonical program `A226133.P1863923535064680015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A226133 (n : ℕ) : ℤ :=
  (A226133.P1863923535064680015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A226133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226386.P1965072438224400353

`lt[A080400(n+1), A173557(n+1)]+1`
-/

namespace A226386.P1965072438224400353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A226386.P1965072438224400353

noncomputable section

/-- A226386: Numbers n such that rad(phi(n)) < phi(rad(n)), where rad(n) is the squarefree kernel of n, and phi is Euler's totient function.

Offset 1, canonical program `A226386.P1965072438224400353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226386 (n : ℕ) : ℤ :=
  (A226386.P1965072438224400353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226555.P5954910614484465652

`(A344598(n+1)+1)/gcd(2, n)`
-/

namespace A226555.P5954910614484465652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344598 (n + 1) + 1 : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A226555.P5954910614484465652

noncomputable section

/-- A226555: Numerators of row sums of the triangular enumeration of rational numbers A226314(n,k) / A054531(n,k), 1 <= k <= n.

Offset 1, canonical program `A226555.P5954910614484465652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A226555.P5954910614484465652.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226946.P9210141251982775955

`eq[0, A000086(n+2)]+2`
-/

namespace A226946.P9210141251982775955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A226946.P9210141251982775955

noncomputable section

/-- A226946: Numbers that can't be written as x^2 + x*y + y^2, with 0 <= x <= y and gcd(x,y) = 1.

Offset 1, canonical program `A226946.P9210141251982775955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8667 terms. -/
def A226946 (n : ℕ) : ℤ :=
  (A226946.P9210141251982775955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8667 terms. -/
def A226946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227314.P12819489629831864701

`A001222(A053767(n+1))`
-/

namespace A227314.P12819489629831864701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053767 (n + 1)).toNat

end

end A227314.P12819489629831864701

noncomputable section

/-- A227314: Number of prime factors, with multiplicity, of the sum of the first n composite numbers.

Offset 1, canonical program `A227314.P12819489629831864701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053767, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227314 (n : ℕ) : ℤ :=
  A227314.P12819489629831864701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053767, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227453.P812764055664269610

`lt[A118111(n), 1]+1`
-/

namespace A227453.P812764055664269610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118111 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A227453.P812764055664269610

noncomputable section

/-- A227453: Numbers k such that the distance to the largest square less than k is a multiple of 4.

Offset 1, canonical program `A227453.P812764055664269610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227453 (n : ℕ) : ℤ :=
  (A227453.P812764055664269610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227506.P1241765352015404149

`A010683(n)+A000035(n)*A080243(n)`
-/

namespace A227506.P1241765352015404149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010683 n + A000035 n * A080243 n

end

end A227506.P1241765352015404149

noncomputable section

/-- A227506: Schroeder triangle sums: a(2*n-1) = A010683(2*n-2) and a(2*n) = A010683(2*n-1) - A001003(2*n-1).

Offset 1, canonical program `A227506.P1241765352015404149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A227506 (n : ℕ) : ℤ :=
  A227506.P1241765352015404149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A227506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227623.P9837027504325705862

`eq[1, A001222(A082515(n+1))]+1`
-/

namespace A227623.P9837027504325705862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A082515 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A227623.P9837027504325705862

noncomputable section

/-- A227623: Numbers k such that phi(k) + pi(k) is prime.

Offset 1, canonical program `A227623.P9837027504325705862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A227623 (n : ℕ) : ℤ :=
  (A227623.P9837027504325705862.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A227623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227740.P15268518559073972483

`n+1-(1+A173318(A227737(n+1)-1))`
-/

namespace A227740.P15268518559073972483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (1 + A173318 (A227737 (n + 1) - 1).toNat)

end

end A227740.P15268518559073972483

noncomputable section

/-- A227740: Integers from 0 to A037834(n) followed by integers from 0 to A037834(n+1) and so on.

Offset 1, canonical program `A227740.P15268518559073972483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, A227737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227740 (n : ℕ) : ℤ :=
  A227740.P15268518559073972483.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, A227737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227740.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229344.P6312581941137850236

`A002321(abs(A003415(n+1)-1)+1)`
-/

namespace A229344.P6312581941137850236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (|A003415 (n + 1) - 1| + 1).toNat

end

end A229344.P6312581941137850236

noncomputable section

/-- A229344: Mertens's function of the arithmetic derivative of n: a(n) = M(n'), a(1) = 0.

Offset 1, canonical program `A229344.P6312581941137850236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A229344 (n : ℕ) : ℤ :=
  A229344.P6312581941137850236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A229344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229511.P11562683010761712362

`eq[1, A002260(A003415(n)+1)]`
-/

namespace A229511.P11562683010761712362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229511.P11562683010761712362

noncomputable section

/-- A229511: Numbers k whose arithmetic derivative (k') is a triangular number.

Offset 0, canonical program `A229511.P11562683010761712362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A229511 (n : ℕ) : ℤ :=
  (A229511.P11562683010761712362.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A229511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229937.P7651752296760210712

`∪[A125495(n+1), A014769(n)]`
-/

namespace A229937.P7651752296760210712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229937.P7651752296760210712

noncomputable section

/-- A229937: Nonprime odious numbers.

Offset 1, canonical program `A229937.P7651752296760210712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229937 (n : ℕ) : ℤ :=
  (A229937.P7651752296760210712.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230117.P7534826294184350368

`∩[A163769(n+1), A215751(n+1)]`
-/

namespace A230117.P7534826294184350368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P7534826294184350368

noncomputable section

/-- A230117: Primes p such that 2*p+1 is prime and 2*p+3 is not prime.

Offset 1, canonical program `A230117.P7534826294184350368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1235 terms. -/
def A230117 (n : ℕ) : ℤ :=
  (A230117.P7534826294184350368.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1235 terms. -/
def A230117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230124.P9922372933548285315

`∩[A001969(n+1), A005117(n+1)]`
-/

namespace A230124.P9922372933548285315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230124.P9922372933548285315

noncomputable section

/-- A230124: Squarefree evil numbers.

Offset 1, canonical program `A230124.P9922372933548285315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A230124 (n : ℕ) : ℤ :=
  (A230124.P9922372933548285315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A230124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230203.P13072862272042323846

`lt[0, A295302(n+1)]+1`
-/

namespace A230203.P13072862272042323846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295302 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A230203.P13072862272042323846

noncomputable section

/-- A230203: Numbers k such that sigma(phi(k)) > k.

Offset 1, canonical program `A230203.P13072862272042323846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230203 (n : ℕ) : ℤ :=
  (A230203.P13072862272042323846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230720.P14814653341307924643

`A003071(A092246(n+1))`
-/

namespace A230720.P14814653341307924643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A092246 (n + 1)).toNat

end

end A230720.P14814653341307924643

noncomputable section

/-- A230720: Even sorting numbers, cf. A003071.

Offset 1, canonical program `A230720.P14814653341307924643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A230720 (n : ℕ) : ℤ :=
  A230720.P14814653341307924643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A230720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230721.P1031067549909490488

`A003071(A230709(n+2))`
-/

namespace A230721.P1031067549909490488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A230709 (n + 2)).toNat

end

end A230721.P1031067549909490488

noncomputable section

/-- A230721: Odd sorting numbers, cf. A003071.

Offset 1, canonical program `A230721.P1031067549909490488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A230721 (n : ℕ) : ℤ :=
  A230721.P1031067549909490488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A230721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231099.P2171262129548700046

`p?[A000010(A000203(n+1))+A295302(n+1)+1+n]`
-/

namespace A231099.P2171262129548700046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat + (A295302 (n + 1) + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231099.P2171262129548700046

noncomputable section

/-- A231099: Primes expressible as phi(sigma(n)) + sigma(phi(n)), in order of their occurrence.

Offset 1, canonical program `A231099.P2171262129548700046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A231099 (n : ℕ) : ℤ :=
  A231099.P2171262129548700046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A231099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231117.P8746599892828268148

`A008966(n+1)*A073311(n+1)+A107078(n+1)*A073312(n+1)`
-/

namespace A231117.P8746599892828268148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A073311 (n + 1) + A107078 (n + 1) * A073312 (n + 1)

end

end A231117.P8746599892828268148

noncomputable section

/-- A231117: Number of positive integers <= n and relatively prime to n which are squarefree if and only if n is squarefree.

Offset 1, canonical program `A231117.P8746599892828268148`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073312, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A231117 (n : ℕ) : ℤ :=
  A231117.P8746599892828268148.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073312, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A231117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A231946.P13868030303102611269

`∑[A003415(n+1)^3]`
-/

namespace A231946.P13868030303102611269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231946.P13868030303102611269

noncomputable section

/-- A231946: Partial sums of the third power of the arithmetic derivative function A003415.

Offset 1, canonical program `A231946.P13868030303102611269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231946 (n : ℕ) : ℤ :=
  A231946.P13868030303102611269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232533.P1925257348327096795

`∑[A057661(n+1)]`
-/

namespace A232533.P1925257348327096795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232533.P1925257348327096795

noncomputable section

/-- A232533: a(n) = Sum_{i=1...n} Sum_{j=1..i} lcm(i,j)/i.

Offset 1, canonical program `A232533.P1925257348327096795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232533 (n : ℕ) : ℤ :=
  A232533.P1925257348327096795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235336.P14959383341618179848

`eq[1, A001285(log2(A001316(n)))]`
-/

namespace A235336.P14959383341618179848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235336.P14959383341618179848

noncomputable section

/-- A235336: Numbers having evil number of 1's in their binary representation.

Offset 0, canonical program `A235336.P14959383341618179848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235336 (n : ℕ) : ℤ :=
  (A235336.P14959383341618179848.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235497.P16290766832587102791

`A105814(n+1)+A068824(n+1)`
-/

namespace A235497.P16290766832587102791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105814 (n + 1) + A068824 (n + 1)

end

end A235497.P16290766832587102791

noncomputable section

/-- A235497: 2n concatenated with n.

Offset 1, canonical program `A235497.P16290766832587102791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235497 (n : ℕ) : ℤ :=
  A235497.P16290766832587102791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235985.P10362651167329117926

`p?[n*(2-A293162(n))]`
-/

namespace A235985.P10362651167329117926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A293162 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235985.P10362651167329117926

noncomputable section

/-- A235985: Primes p such that 3p-1 has even Hamming weight.

Offset 1, canonical program `A235985.P10362651167329117926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A235985 (n : ℕ) : ℤ :=
  A235985.P10362651167329117926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A235985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237719.P13944446607882022738

`eq[A000035(n), A242481(n+1)]+1`
-/

namespace A237719.P13944446607882022738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A237719.P13944446607882022738

noncomputable section

/-- A237719: Numbers n such that k(n) = (n(n+1)/2 mod n) = (antisigma(n) mod n) + (sigma(n) mod n).

Offset 1, canonical program `A237719.P13944446607882022738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1756 terms. -/
def A237719 (n : ℕ) : ℤ :=
  (A237719.P13944446607882022738.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1756 terms. -/
def A237719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238111.P18207636509686923299

`Δ[2*A176006(n)]`
-/

namespace A238111.P18207636509686923299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238111.P18207636509686923299

noncomputable section

/-- A238111: Twice the large Schroeder numbers A006318.

Offset 0, canonical program `A238111.P18207636509686923299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A238111 (n : ℕ) : ℤ :=
  A238111.P18207636509686923299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A238111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238392.P14356481744646416300

`A018819(A194959(n+1)-1)`
-/

namespace A238392.P14356481744646416300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (A194959 (n + 1) - 1).toNat

end

end A238392.P14356481744646416300

noncomputable section

/-- A238392: Triangle read by rows: each row is an initial segment of the terms of A000123 followed by its reflection.

Offset 0, canonical program `A238392.P14356481744646416300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A238392 (n : ℕ) : ℤ :=
  A238392.P14356481744646416300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A238392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240332.P2811997264391864732

`∑[A014016(n)]*A014016(A003415(n))`
-/

namespace A240332.P2811997264391864732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A014016 (A003415 n).toNat

end

end A240332.P2811997264391864732

noncomputable section

/-- A240332: Inverse of 49th cyclotomic polynomial.

Offset 0, canonical program `A240332.P2811997264391864732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A240332 (n : ℕ) : ℤ :=
  A240332.P2811997264391864732.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A240332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240353.P18059484953993133542

`A014043(A025480(n))%A010127(n)`
-/

namespace A240353.P18059484953993133542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014043 (A025480 n).toNat) (A010127 n)

end

end A240353.P18059484953993133542

noncomputable section

/-- A240353: Inverse of 68th cyclotomic polynomial.

Offset 0, canonical program `A240353.P18059484953993133542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240353 (n : ℕ) : ℤ :=
  A240353.P18059484953993133542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240505.P9700052559506088263

`sqrt(A248766(n+1)/A055204(n+1))`
-/

namespace A240505.P9700052559506088263
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A248766 (n + 1) : ℚ) / (A055204 (n + 1) : ℚ) : ℝ)

end

end A240505.P9700052559506088263

noncomputable section

/-- A240505: Products of primes the squares of which are Fermi-Dirac divisors of n!

Offset 1, canonical program `A240505.P9700052559506088263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A240505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240505.P9700052559506088263.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A240505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240668.P2555984127848424708

`val(A336510(2*(n+1))+1, 2)`
-/

namespace A240668.P2555984127848424708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336510 (2 * (n + 1)) + 1).toNat 2

end

end A240668.P2555984127848424708

noncomputable section

/-- A240668: Number of the first odd exponents in the prime power factorization of (2*n)!.

Offset 1, canonical program `A240668.P2555984127848424708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. -/
def A240668 (n : ℕ) : ℤ :=
  (A240668.P2555984127848424708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. -/
def A240668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240688.P11995940089545582235

`2*A006139(n)-A238578(n+1)`
-/

namespace A240688.P11995940089545582235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006139 n - A238578 (n + 1)

end

end A240688.P11995940089545582235

noncomputable section

/-- A240688: Expansion of -(x*sqrt(-4*x^2-4*x+1)-2*x^2-3*x) / ((x+1)*sqrt(-4*x^2-4*x+1)+ 4*x^3+8*x^2+3*x-1).

Offset 0, canonical program `A240688.P11995940089545582235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A240688 (n : ℕ) : ℤ :=
  A240688.P11995940089545582235.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A240688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240877.P3561136259224989296

`a(n-1)+A046151(n)+1` with `a(0)=1`
-/

namespace A240877.P3561136259224989296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A046151 n + 1)

end

end A240877.P3561136259224989296

noncomputable section

/-- A240877: Sum of the denominators of the Farey series of order n (A006843).

Offset 0, canonical program `A240877.P3561136259224989296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240877 (n : ℕ) : ℤ :=
  A240877.P3561136259224989296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241534.P3870875932930930674

`∑{d}[n+1, A046079(#)]`
-/

namespace A241534.P3870875932930930674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046079 d

end

end A241534.P3870875932930930674

noncomputable section

/-- A241534: Number of integer arithmetic means of 2 distinct divisors of n.

Offset 1, canonical program `A241534.P3870875932930930674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241534 (n : ℕ) : ℤ :=
  A241534.P3870875932930930674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242219.P5269030228670689026

`lcm(2, A038388(n+1))+1+n`
-/

namespace A242219.P5269030228670689026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A038388 (n + 1)) + 1 + n

end

end A242219.P5269030228670689026

noncomputable section

/-- A242219: Smallest a(n) in Pythagorean triple (a, b, c) such that c(n) - b(n) = n.

Offset 1, canonical program `A242219.P5269030228670689026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242219 (n : ℕ) : ℤ :=
  (A242219.P5269030228670689026.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242398.P7293458686205379350

`∑[A048614(n+1)]`
-/

namespace A242398.P7293458686205379350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242398.P7293458686205379350

noncomputable section

/-- A242398: Partial sums of the number of primes separating successive pairs of twin primes.

Offset 1, canonical program `A242398.P7293458686205379350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242398 (n : ℕ) : ℤ :=
  A242398.P7293458686205379350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242482.P4940555900676613198

`eq[1, A242481(n+1)]+1`
-/

namespace A242482.P4940555900676613198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242482.P4940555900676613198

noncomputable section

/-- A242482: Numbers n such that A242481(n) = ((n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n) / n = 1.

Offset 1, canonical program `A242482.P4940555900676613198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A242482 (n : ℕ) : ℤ :=
  (A242482.P4940555900676613198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A242482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242738.P6755084381788697046

`A151800(A002379(n+1))`
-/

namespace A242738.P6755084381788697046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A002379 (n + 1)).toNat

end

end A242738.P6755084381788697046

noncomputable section

/-- A242738: Smallest prime > (3/2)^n.

Offset 1, canonical program `A242738.P6755084381788697046`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242738 (n : ℕ) : ℤ :=
  A242738.P6755084381788697046.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242738.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242768.P9991712360003241980

`A242767(A082462(n+1)+2)`
-/

namespace A242768.P9991712360003241980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (A082462 (n + 1) + 2).toNat

end

end A242768.P9991712360003241980

noncomputable section

/-- A242768: Indices of twin primes in {A242758(n)-3}.

Offset 2, canonical program `A242768.P9991712360003241980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A242768 (n : ℕ) : ℤ :=
  A242768.P9991712360003241980.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A242768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242913.P1693692054052103084

`eq[1, A048614(n+1)]+2`
-/

namespace A242913.P1693692054052103084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242913.P1693692054052103084

noncomputable section

/-- A242913: Positions of smaller of twin primes in A001359 with index 3.

Offset 1, canonical program `A242913.P1693692054052103084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. -/
def A242913 (n : ℕ) : ℤ :=
  (A242913.P1693692054052103084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. -/
def A242913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242917.P14744434532373284957

`eq[2, A048614(n+1)]+2`
-/

namespace A242917.P14744434532373284957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242917.P14744434532373284957

noncomputable section

/-- A242917: Positions of smaller of twin primes in A001359 with index 4.

Offset 1, canonical program `A242917.P14744434532373284957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. -/
def A242917 (n : ℕ) : ℤ :=
  (A242917.P14744434532373284957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. -/
def A242917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242918.P2919703663841079381

`eq[3, A048614(n+1)]+2`
-/

namespace A242918.P2919703663841079381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242918.P2919703663841079381

noncomputable section

/-- A242918: Positions of smaller of twin primes in A001359 with index 5.

Offset 1, canonical program `A242918.P2919703663841079381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A242918 (n : ℕ) : ℤ :=
  (A242918.P2919703663841079381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A242918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242919.P10807504010628949303

`eq[4, A048614(n+1)]+2`
-/

namespace A242919.P10807504010628949303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242919.P10807504010628949303

noncomputable section

/-- A242919: Positions of smaller of twin primes in A001359 with index 6.

Offset 1, canonical program `A242919.P10807504010628949303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A242919 (n : ℕ) : ℤ :=
  (A242919.P10807504010628949303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A242919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243442.P18328848742917092236

`p?[A000040(n+1)*A001222(A080085(n+1))]`
-/

namespace A243442.P18328848742917092236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A080085 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243442.P18328848742917092236

noncomputable section

/-- A243442: Primes p such that, in base 2, p - digitsum(p) is also a prime.

Offset 1, canonical program `A243442.P18328848742917092236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A243442 (n : ℕ) : ℤ :=
  A243442.P18328848742917092236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A243442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244223.P4164142307862508594

`comp[A244222(n)]`
-/

namespace A244223.P4164142307862508594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A244223.P4164142307862508594

noncomputable section

/-- A244223: Numbers k which have an odd representation in Greedy Catalan Base, i.e., where A014418(k) ends with digit one.

Offset 1, canonical program `A244223.P4164142307862508594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7354 terms. -/
def A244223 (n : ℕ) : ℤ :=
  (A244223.P4164142307862508594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7354 terms. -/
def A244223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244229.P10812629268547515881

`A244224(n)-1`
-/

namespace A244229.P10812629268547515881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244224 n - 1

end

end A244229.P10812629268547515881

noncomputable section

/-- A244229: a(n) = Number of integers 0 < k <= n, which have an even representation in Greedy Catalan Base (A014418).

Offset 0, canonical program `A244229.P10812629268547515881`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244224, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244229 (n : ℕ) : ℤ :=
  A244229.P10812629268547515881.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244224, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244417.P18318086271130608872

`A051903(A065331(n+1))`
-/

namespace A244417.P18318086271130608872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A065331 (n + 1)).toNat

end

end A244417.P18318086271130608872

noncomputable section

/-- A244417: Exponents of 6 in appearing in the 6-adic value of 1/n, n>=1 (A244416).

Offset 1, canonical program `A244417.P18318086271130608872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244417 (n : ℕ) : ℤ :=
  A244417.P18318086271130608872.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246591.P17759261953792450585

`n-A086099(n)`
-/

namespace A246591.P17759261953792450585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A086099 n

end

end A246591.P17759261953792450585

noncomputable section

/-- A246591: Smallest number that can be obtained by swapping 2 bits in the binary expansion of n.

Offset 0, canonical program `A246591.P17759261953792450585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A246591 (n : ℕ) : ℤ :=
  A246591.P17759261953792450585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A246591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246593.P14183238413555450199

`A086099(A035327(n))+n`
-/

namespace A246593.P14183238413555450199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A035327 n).toNat + (n : ℤ)

end

end A246593.P14183238413555450199

noncomputable section

/-- A246593: a(n)=n for n <= 2; for n >= 3, a(n) = largest number that can be obtained by swapping two bits in the binary expansion of n.

Offset 0, canonical program `A246593.P14183238413555450199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A246593 (n : ℕ) : ℤ :=
  A246593.P14183238413555450199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A246593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246803.P15239765525824187154

`eq[A000010(n+1), A295301(n+1)]+1`
-/

namespace A246803.P15239765525824187154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246803.P15239765525824187154

noncomputable section

/-- A246803: Solutions of phi(sigma(x)) = x-phi(x).

Offset 1, canonical program `A246803.P15239765525824187154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A246803 (n : ℕ) : ℤ :=
  (A246803.P15239765525824187154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A246803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247900.P2545362560867208788

`Δ[A247681(n+1)]`
-/

namespace A247900.P2545362560867208788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247900.P2545362560867208788

noncomputable section

/-- A247900: First differences of A247681.

Offset 1, canonical program `A247900.P2545362560867208788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247900 (n : ℕ) : ℤ :=
  A247900.P2545362560867208788.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248038.P16100474791484475395

`A020338(3*(n+1))`
-/

namespace A248038.P16100474791484475395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (3 * (n + 1))

end

end A248038.P16100474791484475395

noncomputable section

/-- A248038: 3n concatenated with itself.

Offset 1, canonical program `A248038.P16100474791484475395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A248038 (n : ℕ) : ℤ :=
  A248038.P16100474791484475395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A248038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249017.P1336065343539493697

`record[A055460(n+1)]`
-/

namespace A249017.P1336065343539493697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249017.P1336065343539493697

noncomputable section

/-- A249017: Records in A055460 (number of primes dividing the squarefree part of n!).

Offset 1, canonical program `A249017.P1336065343539493697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4799 terms. -/
def A249017 (n : ℕ) : ℤ :=
  A249017.P1336065343539493697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4799 terms. -/
def A249017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249133.P6513466101138431158

`A249095(n)%2`
-/

namespace A249133.P6513466101138431158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249095 n) 2

end

end A249133.P6513466101138431158

noncomputable section

/-- A249133: Triangle read by rows: interleaving successive pairs of rows of Sierpiński's triangle.

Offset 0, canonical program `A249133.P6513466101138431158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249133 (n : ℕ) : ℤ :=
  A249133.P6513466101138431158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249252.P10988775486435734646

`A035607(n)*A059268(n)`
-/

namespace A249252.P10988775486435734646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n * A059268 n

end

end A249252.P10988775486435734646

noncomputable section

/-- A249252: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

Offset 0, canonical program `A249252.P10988775486435734646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A249252 (n : ℕ) : ℤ :=
  A249252.P10988775486435734646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A249252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249307.P11332962648986991517

`A000079(n-floor(sqrt(n))²)*A249095(n)`
-/

namespace A249307.P11332962648986991517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n - Nat.sqrt n ^ 2) * A249095 n

end

end A249307.P11332962648986991517

noncomputable section

/-- A249307: Triangle read by rows: A249095(n,k) * 2^k, k = 0 .. 2*n+1.

Offset 0, canonical program `A249307.P11332962648986991517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249307 (n : ℕ) : ℤ :=
  A249307.P11332962648986991517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249609.P17891411427779254111

`val(A249664(n)+1, 2)%(n+1)`
-/

namespace A249609.P17891411427779254111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A249664 n + 1).toNat 2 % (n + 1)

end

end A249609.P17891411427779254111

noncomputable section

/-- A249609: a(n) is the smallest m, 1<=m<=n, such that binomial(n,m) is evil (A001969); a(n)=0 if there is no such m.

Offset 0, canonical program `A249609.P17891411427779254111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A249609 (n : ℕ) : ℤ :=
  (A249609.P17891411427779254111.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A249609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250406.P11635683072405501755

`A112660(n+1)%A008864(n+1)`
-/

namespace A250406.P11635683072405501755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112660 (n + 1)) (A008864 (n + 1))

end

end A250406.P11635683072405501755

noncomputable section

/-- A250406: Values of B such that p = prime(n) satisfies (p-1)! == -1-B*p (mod p^2), i.e., p is a near-Wilson prime.

Offset 1, canonical program `A250406.P11635683072405501755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A250406 (n : ℕ) : ℤ :=
  A250406.P11635683072405501755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A250406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251092.P10184513225157479240

`Δ[lt[1, A074927(n+1)]]`
-/

namespace A251092.P10184513225157479240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074927 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A251092.P10184513225157479240

noncomputable section

/-- A251092: a(n) is the number of primes in the n-th group of consecutive primes among the odd numbers.

Offset 1, canonical program `A251092.P10184513225157479240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A251092 (n : ℕ) : ℤ :=
  A251092.P10184513225157479240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A251092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251719.P1076790489604256652

`∑[char[A250473(n+1)]]+1`
-/

namespace A251719.P1076790489604256652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A251719.P1076790489604256652

noncomputable section

/-- A251719: a(n) = the least k such that A250474(k) > n.

Offset 1, canonical program `A251719.P1076790489604256652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251719 (n : ℕ) : ℤ :=
  (A251719.P1076790489604256652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253146.P8353781513861575822

`A131225(A185180(n+1))`
-/

namespace A253146.P8353781513861575822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131225 (A185180 (n + 1)).toNat

end

end A253146.P8353781513861575822

noncomputable section

/-- A253146: A fractal tree, read by rows: for n > 2, T(n,1) = T(n-1,1)+2, T(n,n) = T(n-1,1)+3, and for k=2..n-1, T(n,k) = T(n-2,k-1).

Offset 1, canonical program `A253146.P8353781513861575822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A253146 (n : ℕ) : ℤ :=
  A253146.P8353781513861575822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A253146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253157.P13407665018278730026

`A253156(n+1)+A124512(A004139(n+1))`
-/

namespace A253157.P13407665018278730026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253156 (n + 1) + A124512 (A004139 (n + 1)).toNat

end

end A253157.P13407665018278730026

noncomputable section

/-- A253157: Number of (n+1) X (6+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

Offset 1, canonical program `A253157.P13407665018278730026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253157 (n : ℕ) : ℤ :=
  A253157.P13407665018278730026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253433.P18384616751291201725

`A253432(n+1)+A124512(p?[A014681(n)])`
-/

namespace A253433.P18384616751291201725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253432 (n + 1) + A124512 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A253433.P18384616751291201725

noncomputable section

/-- A253433: Number of (n+1) X (6+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

Offset 1, canonical program `A253433.P18384616751291201725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253433 (n : ℕ) : ℤ :=
  A253433.P18384616751291201725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253580.P15714201682578060032

`A004741(n+1)-1`
-/

namespace A253580.P15714201682578060032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1) - 1

end

end A253580.P15714201682578060032

noncomputable section

/-- A253580: A fractal tree, read by rows: for n > 1: T(n,0) = T(n-1,0)+2, T(n,2*n) = T(n-1,0)+3, and for k=1..2*n-1: T(n,k) = T(n-1,k-1).

Offset 0, canonical program `A253580.P15714201682578060032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253580 (n : ℕ) : ℤ :=
  A253580.P15714201682578060032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254148.P9928434026570908053

`A254147(n)+A001557(n)`
-/

namespace A254148.P9928434026570908053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254147 n + A001557 n

end

end A254148.P9928434026570908053

noncomputable section

/-- A254148: a(n) = 9*2^n + 7*4^n + 3*8^n + 8*3^n + 2*9^n + 6*5^n + 5*6^n + 4*7^n + 10^n + 10.

Offset 0, canonical program `A254148.P9928434026570908053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A254148 (n : ℕ) : ℤ :=
  A254148.P9928434026570908053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A254148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254468.P17164874337159960283

`A254467(n)+A254466(n)`
-/

namespace A254468.P17164874337159960283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254467 n + A254466 n

end

end A254468.P17164874337159960283

noncomputable section

/-- A254468: a(n) = 35*4^n + 126*2^n + 70*3^n + 15*5^n + 5*6^n + 7^n + 210.

Offset 0, canonical program `A254468.P17164874337159960283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254468 (n : ℕ) : ℤ :=
  A254468.P17164874337159960283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254655.P16126583742751402593

`Δ[eq[A001285(n), A040001(n)]]`
-/

namespace A254655.P16126583742751402593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A254655.P16126583742751402593

noncomputable section

/-- A254655: Run lengths of A254379 (Characteristic function of the even odious numbers).

Offset 1, canonical program `A254655.P16126583742751402593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A254655 (n : ℕ) : ℤ :=
  A254655.P16126583742751402593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A254655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254734.P5864895102281337725

`A053166(n+1)+1+n`
-/

namespace A254734.P5864895102281337725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (n + 1) + 1 + (n : ℤ)

end

end A254734.P5864895102281337725

noncomputable section

/-- A254734: a(n) is the least k > n such that n divides k^4.

Offset 1, canonical program `A254734.P5864895102281337725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A254734 (n : ℕ) : ℤ :=
  A254734.P5864895102281337725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A254734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255645.P7683674713413729439

`∑[A134660(n)]`
-/

namespace A255645.P7683674713413729439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P7683674713413729439

noncomputable section

/-- A255645: Partial sums of A134660.

Offset 0, canonical program `A255645.P7683674713413729439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255645 (n : ℕ) : ℤ :=
  A255645.P7683674713413729439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256276.P17919701624986751523

`(n+1)%3*A002654(n+1)`
-/

namespace A256276.P17919701624986751523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℤ) * A002654 (n + 1)

end

end A256276.P17919701624986751523

noncomputable section

/-- A256276: Expansion of q * phi(q) * chi(q^3) * psi(-q^9) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

Offset 1, canonical program `A256276.P17919701624986751523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256276 (n : ℕ) : ℤ :=
  A256276.P17919701624986751523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256288.P3413659148463275734

`7*n*A256287(n)`
-/

namespace A256288.P3413659148463275734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) * A256287 n

end

end A256288.P3413659148463275734

noncomputable section

/-- A256288: Sum of all the parts in the partitions of 7n into 7 parts.

Offset 0, canonical program `A256288.P3413659148463275734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256287, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256288 (n : ℕ) : ℤ :=
  A256288.P3413659148463275734.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256287, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256702.P6496352478846748862

`A256701(n+1)-(n+1)`
-/

namespace A256702.P6496352478846748862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256701 (n + 1) - (n + 1 : ℤ)

end

end A256702.P6496352478846748862

noncomputable section

/-- A256702: Nonpositive part of the minimal alternating binary representation of n (defined at A256696).

Offset 1, canonical program `A256702.P6496352478846748862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256702 (n : ℕ) : ℤ :=
  A256702.P6496352478846748862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257020.P12343170561729900275

`eq[2, A001285(A055087(A055087(n)))]`
-/

namespace A257020.P12343170561729900275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A055087 (A055087 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257020.P12343170561729900275

noncomputable section

/-- A257020: Numbers whose quarter-square representation consists of three terms.

Offset 1, canonical program `A257020.P12343170561729900275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A257020 (n : ℕ) : ℤ :=
  (A257020.P12343170561729900275.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A257020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257445.P15690453960209871658

`A255226(n+1)+A000034(A001316(n))`
-/

namespace A257445.P15690453960209871658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255226 (n + 1) + A000034 (A001316 n).toNat

end

end A257445.P15690453960209871658

noncomputable section

/-- A257445: Number of (n+2) X (6+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

Offset 1, canonical program `A257445.P15690453960209871658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257445 (n : ℕ) : ℤ :=
  A257445.P15690453960209871658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257446.P10810494062127799661

`A255227(n+1)+1`
-/

namespace A257446.P10810494062127799661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255227 (n + 1) + 1

end

end A257446.P10810494062127799661

noncomputable section

/-- A257446: Number of (n+2) X (7+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

Offset 1, canonical program `A257446.P10810494062127799661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257446 (n : ℕ) : ℤ :=
  A257446.P10810494062127799661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257803.P5745170931242880120

`record[gcd(n+1, A257808(n+1)-A257808(n))]`
-/

namespace A257803.P5745170931242880120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A257808 (n + 1) - A257808 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257803.P5745170931242880120

noncomputable section

/-- A257803: Positions of odd numbers in A233271, the infinite trunk of inverted binary beanstalk.

Offset 1, canonical program `A257803.P5745170931242880120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7973 terms. -/
def A257803 (n : ℕ) : ℤ :=
  (A257803.P5745170931242880120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7973 terms. -/
def A257803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258026.P15713230575811532906

`lt[0, A079054(n+2)]+1`
-/

namespace A258026.P15713230575811532906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258026.P15713230575811532906

noncomputable section

/-- A258026: Numbers k such that prime(k+2) - 2*prime(k+1) + prime(k) < 0.

Offset 1, canonical program `A258026.P15713230575811532906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9557 terms. -/
def A258026 (n : ℕ) : ℤ :=
  (A258026.P15713230575811532906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9557 terms. -/
def A258026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258031.P14878230134695789763

`A000040(A258028(n+1))`
-/

namespace A258031.P14878230134695789763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258028 (n + 1)).toNat

end

end A258031.P14878230134695789763

noncomputable section

/-- A258031: Numbers prime(k) such that D(prime(k), 3) < 0, where D( * , 3) = 3rd difference.

Offset 1, canonical program `A258031.P14878230134695789763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258031 (n : ℕ) : ℤ :=
  A258031.P14878230134695789763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258430.P13140593724657171995

`A088580(A065512(n+1))`
-/

namespace A258430.P13140593724657171995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A065512 (n + 1)).toNat

end

end A258430.P13140593724657171995

noncomputable section

/-- A258430: Primes in A088580.

Offset 1, canonical program `A258430.P13140593724657171995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258430 (n : ℕ) : ℤ :=
  A258430.P13140593724657171995.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258430.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258432.P15631992266083377163

`comp[A257762(n+1)]+1`
-/

namespace A258432.P15631992266083377163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A258432.P15631992266083377163

noncomputable section

/-- A258432: Smallest number m such that A062234(m) = A062234(m-1+k) for k = 1..A258383(n).

Offset 1, canonical program `A258432.P15631992266083377163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258432 (n : ℕ) : ℤ :=
  (A258432.P15631992266083377163.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258877.P7623926527182171937

`A000040(A258876(n+1))`
-/

namespace A258877.P7623926527182171937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258876 (n + 1)).toNat

end

end A258877.P7623926527182171937

noncomputable section

/-- A258877: Primes p=prime(m) such that both p and m have the same digital root.

Offset 1, canonical program `A258877.P7623926527182171937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258877 (n : ℕ) : ℤ :=
  A258877.P7623926527182171937.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259558.P10968134983978428309

`eq[A008334(n+2), A008334(n+1)]+1`
-/

namespace A259558.P10968134983978428309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008334 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A259558.P10968134983978428309

noncomputable section

/-- A259558: Numbers n such that prime(n)-1 and prime(n+1)-1 have the same number of distinct prime factors.

Offset 1, canonical program `A259558.P10968134983978428309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3249 terms. -/
def A259558 (n : ℕ) : ℤ :=
  (A259558.P10968134983978428309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3249 terms. -/
def A259558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259897.P2407533474827309403

`val(A066973(round(sqrt(n²+1))), 2)`
-/

namespace A259897.P2407533474827309403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066973 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat 2

end

end A259897.P2407533474827309403

noncomputable section

/-- A259897: a(n) is the 2-adic valuation of phi(binomial(2*n,n)).

Offset 0, canonical program `A259897.P2407533474827309403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A259897 (n : ℕ) : ℤ :=
  (A259897.P2407533474827309403.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A259897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259942.P4163868911876891632

`lt[A224787(abs(1-n)+1), n]`
-/

namespace A259942.P4163868911876891632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A259942.P4163868911876891632

noncomputable section

/-- A259942: Numbers that are larger than or equal to the sum of the cubes of their prime factors (with multiplicity).

Offset 1, canonical program `A259942.P4163868911876891632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A259942 (n : ℕ) : ℤ :=
  (A259942.P4163868911876891632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A259942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260942.P8665585250651046300

`A253243(Δ[n²])/2`
-/

namespace A260942.P8665585250651046300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253243 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A260942.P8665585250651046300

noncomputable section

/-- A260942: Expansion of x * phi(-x) * psi(x^12) / chi(-x^3) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A260942.P8665585250651046300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A260942.P8665585250651046300.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262406.P13591506646915870537

`record[∏{p}[A039770(n+1), #]]`
-/

namespace A262406.P13591506646915870537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262406.P13591506646915870537

noncomputable section

/-- A262406: Squarefree k such that phi(k) is a perfect square.

Offset 1, canonical program `A262406.P13591506646915870537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3694 terms. -/
def A262406 (n : ℕ) : ℤ :=
  (A262406.P13591506646915870537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3694 terms. -/
def A262406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262610.P17210216451198933661

`∑[Δ[A245092(n)]-A001057(n)]`
-/

namespace A262610.P17210216451198933661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262610.P17210216451198933661

noncomputable section

/-- A262610: The values of sigma function (A000203) and the positive integers interleaved.

Offset 1, canonical program `A262610.P17210216451198933661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262610 (n : ℕ) : ℤ :=
  A262610.P17210216451198933661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264029.P7631594702276918908

`A119963(eq[0, A172090(n)])`
-/

namespace A264029.P7631594702276918908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264029.P7631594702276918908

noncomputable section

/-- A264029: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows lexicographically nondecreasing and columns lexicographically nonincreasing.

Offset 1, canonical program `A264029.P7631594702276918908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A264029 (n : ℕ) : ℤ :=
  A264029.P7631594702276918908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A264029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264721.P17314925042243665480

`A053726(n+1)+A005097(A053726(n+1)-(n+1))`
-/

namespace A264721.P17314925042243665480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + A005097 (A053726 (n + 1) - (n + 1 : ℤ)).toNat

end

end A264721.P17314925042243665480

noncomputable section

/-- A264721: Composite numbers that are greater than the average of their closest flanking primes.

Offset 1, canonical program `A264721.P17314925042243665480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264721 (n : ℕ) : ℤ :=
  A264721.P17314925042243665480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264810.P5749480952070146331

`∑[A264739(n+1)]`
-/

namespace A264810.P5749480952070146331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264810.P5749480952070146331

noncomputable section

/-- A264810: Number of numbers k <= n such that phi(m) = k for some m.

Offset 1, canonical program `A264810.P5749480952070146331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264810 (n : ℕ) : ℤ :=
  A264810.P5749480952070146331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265848.P6844072925367765983

`A107430(A185180(n+1)-1)`
-/

namespace A265848.P6844072925367765983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A185180 (n + 1) - 1).toNat

end

end A265848.P6844072925367765983

noncomputable section

/-- A265848: Pascal's triangle, right and left halves interchanged.

Offset 0, canonical program `A265848.P6844072925367765983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A265848 (n : ℕ) : ℤ :=
  A265848.P6844072925367765983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A265848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267103.P16478775800267878693

`A087686(1+A266109(n+1))`
-/

namespace A267103.P16478775800267878693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (1 + A266109 (n + 1)).toNat

end

end A267103.P16478775800267878693

noncomputable section

/-- A267103: Row 3 of A265903; numbers that occur exactly three times in A004001.

Offset 1, canonical program `A267103.P16478775800267878693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, A266109, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267103 (n : ℕ) : ℤ :=
  A267103.P16478775800267878693.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087686, A266109, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A267103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267135.P1163518685697158345

`2*(n+1)-A138971(n+1)`
-/

namespace A267135.P1163518685697158345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A138971 (n + 1)

end

end A267135.P1163518685697158345

noncomputable section

/-- A267135: a(n) = n minus the number of primes of form 4m + 1 that are less than n-th prime of form 4m + 3.

Offset 1, canonical program `A267135.P1163518685697158345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267135 (n : ℕ) : ℤ :=
  A267135.P1163518685697158345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267369.P3092922467413671371

`(n+1)²-A267368(n)`
-/

namespace A267369.P3092922467413671371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267368 n

end

end A267369.P3092922467413671371

noncomputable section

/-- A267369: Total number of OFF (white) cells after n iterations of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267369.P3092922467413671371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267369 (n : ℕ) : ℤ :=
  A267369.P3092922467413671371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267446.P12235518874921593537

`∑[A267445(n)]`
-/

namespace A267446.P12235518874921593537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267446.P12235518874921593537

noncomputable section

/-- A267446: Total number of ON (black) cells after n iterations of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267446.P12235518874921593537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267446 (n : ℕ) : ℤ :=
  A267446.P12235518874921593537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267447.P294490523274346836

`Δ[n²]-A267445(n)`
-/

namespace A267447.P294490523274346836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267445 n

end

end A267447.P294490523274346836

noncomputable section

/-- A267447: Number of OFF (white) cells in the n-th iteration of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267447.P294490523274346836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267447 (n : ℕ) : ℤ :=
  A267447.P294490523274346836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267582.P17996107973821825514

`A048967(floor(n²/(n+1)))+n+1`
-/

namespace A267582.P17996107973821825514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat + (n + 1 : ℤ)

end

end A267582.P17996107973821825514

noncomputable section

/-- A267582: Number of ON (black) cells in the n-th iteration of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267582.P17996107973821825514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267582 (n : ℕ) : ℤ :=
  A267582.P17996107973821825514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267814.P10011190658344609298

`A267813(n+1)`
-/

namespace A267814.P10011190658344609298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267813 (n + 1)

end

end A267814.P10011190658344609298

noncomputable section

/-- A267814: Triangle read by rows giving successive states of cellular automaton generated by "Rule 221" initiated with a single ON (black) cell.

Offset 0, canonical program `A267814.P10011190658344609298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267814 (n : ℕ) : ℤ :=
  A267814.P10011190658344609298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268000.P6584107503855115913

`(A112660(n+1)+A008864(n+1))%A001248(n+1)`
-/

namespace A268000.P6584107503855115913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112660 (n + 1) + A008864 (n + 1)) (A001248 (n + 1))

end

end A268000.P6584107503855115913

noncomputable section

/-- A268000: p*B_(p-1)+1 modulo p^2, where p = prime(n) and B_i denotes the i-th Bernoulli number.

Offset 1, canonical program `A268000.P6584107503855115913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268000 (n : ℕ) : ℤ :=
  A268000.P6584107503855115913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268272.P11859881272063941346

`eq[0, A027615(n)%2]`
-/

namespace A268272.P11859881272063941346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027615 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268272.P11859881272063941346

noncomputable section

/-- A268272: Negabinary evil numbers (see comment).

Offset 0, canonical program `A268272.P11859881272063941346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A268272 (n : ℕ) : ℤ :=
  (A268272.P11859881272063941346.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A268272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268273.P3579278689426774091

`eq[1, A027615(n)%2]`
-/

namespace A268273.P3579278689426774091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027615 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268273.P3579278689426774091

noncomputable section

/-- A268273: Negabinary odious numbers (see comment).

Offset 1, canonical program `A268273.P3579278689426774091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A268273 (n : ℕ) : ℤ :=
  (A268273.P3579278689426774091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A268273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269709.P13202328295007541821

`∑[A169703(n)]`
-/

namespace A269709.P13202328295007541821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269709.P13202328295007541821

noncomputable section

/-- A269709: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 14", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A269709.P13202328295007541821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4006 terms. -/
def A269709 (n : ℕ) : ℤ :=
  A269709.P13202328295007541821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4006 terms. -/
def A269709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271410.P2034698396170665635

`lcm(a(and(n, n-1)), A001511(n))` with `a(0)=1`
-/

namespace A271410.P2034698396170665635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ) (A001511 n)

end

end A271410.P2034698396170665635

noncomputable section

/-- A271410: LCM of exponents in binary expansion of 2n.

Offset 0, canonical program `A271410.P2034698396170665635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271410 (n : ℕ) : ℤ :=
  (A271410.P2034698396170665635.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271710.P8123047399099080066

`xor(A059268(n), A130321(n))`
-/

namespace A271710.P8123047399099080066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059268 n) (A130321 n)

end

end A271710.P8123047399099080066

noncomputable section

/-- A271710: Table T(n,k) = 2^n XOR 2^k read by antidiagonals, where XOR is the binary exclusive or operator.

Offset 0, canonical program `A271710.P8123047399099080066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271710 (n : ℕ) : ℤ :=
  A271710.P8123047399099080066.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271784.P18244264633262029210

`eq[2, A037861(A292272(n))-2]`
-/

namespace A271784.P18244264633262029210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A292272 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271784.P18244264633262029210

noncomputable section

/-- A271784: Numbers that have exactly five zeros when written in binary balanced system (A270885).

Offset 1, canonical program `A271784.P18244264633262029210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1601 terms. -/
def A271784 (n : ℕ) : ℤ :=
  (A271784.P18244264633262029210.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1601 terms. -/
def A271784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271974.P704651561551889404

`ceil(A073579(n+2)/2)`
-/

namespace A271974.P704651561551889404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A073579 (n + 2) : ℚ) / 2⌉

end

end A271974.P704651561551889404

noncomputable section

/-- A271974: Let p = prime(n): if p mod 4 == 1 then a(n) = (1+p)/2 otherwise if p mod 4 == 3 then a(n) = (1-p)/2.

Offset 2, canonical program `A271974.P704651561551889404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A271974 (n : ℕ) : ℤ :=
  A271974.P704651561551889404.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A271974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273283.P12673250565840435264

`A007918(A079870(n+2))`
-/

namespace A273283.P12673250565840435264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A079870 (n + 2)).toNat

end

end A273283.P12673250565840435264

noncomputable section

/-- A273283: Least prime not less than the geometric mean of all prime divisors of n counted with multiplicity.

Offset 2, canonical program `A273283.P12673250565840435264`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, A079870, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273283 (n : ℕ) : ℤ :=
  A273283.P12673250565840435264.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, A079870, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273283.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273561.P17437193732767183359

`∑[4*(n+1)-A270107(n)]`
-/

namespace A273561.P17437193732767183359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A270107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273561.P17437193732767183359

noncomputable section

/-- A273561: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273561.P17437193732767183359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3409 terms. -/
def A273561 (n : ℕ) : ℤ :=
  A273561.P17437193732767183359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3409 terms. -/
def A273561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273578.P16949239199051931656

`∑[A273577(n)]`
-/

namespace A273578.P16949239199051931656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273578.P16949239199051931656

noncomputable section

/-- A273578: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 803", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273578.P16949239199051931656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. -/
def A273578 (n : ℕ) : ℤ :=
  A273578.P16949239199051931656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. -/
def A273578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273579.P3856066556281764701

`Δ[A273577(n)]`
-/

namespace A273579.P3856066556281764701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273579.P3856066556281764701

noncomputable section

/-- A273579: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 803", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273579.P3856066556281764701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2671 terms. -/
def A273579 (n : ℕ) : ℤ :=
  A273579.P3856066556281764701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2671 terms. -/
def A273579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274094.P5521899497297854027

`-A274093(n)`
-/

namespace A274094.P5521899497297854027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A274093 n

end

end A274094.P5521899497297854027

noncomputable section

/-- A274094: a(0)=0; thereafter (-1)^(n+1)*n appears n times.

Offset 0, canonical program `A274094.P5521899497297854027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274094 (n : ℕ) : ℤ :=
  A274094.P5521899497297854027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274707.P10103696147558758885

`A237884(n)+A138364(n)`
-/

namespace A274707.P10103696147558758885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237884 n + A138364 n

end

end A274707.P10103696147558758885

noncomputable section

/-- A274707: a(n) = A(n) if n is even else a(n) = A(n)*(n-1)/(n+1) with A(n) = ((n-1)!/ floor((n-1)/2)!^2).

Offset 1, canonical program `A274707.P10103696147558758885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A274707 (n : ℕ) : ℤ :=
  A274707.P10103696147558758885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A274707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274773.P11672624379083383188

`2*A053616(n)+1`
-/

namespace A274773.P11672624379083383188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053616 n + 1

end

end A274773.P11672624379083383188

noncomputable section

/-- A274773: a(n) = floor(sqrt(2*n-1) + 1/2) - abs(2*(n-1) - (floor(sqrt(2*n-1) + 1/2))^2) + 1.

Offset 1, canonical program `A274773.P11672624379083383188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274773 (n : ℕ) : ℤ :=
  A274773.P11672624379083383188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275059.P1792862244400861378

`floor(sqrt(p?[A264724(n+1)]))`
-/

namespace A275059.P1792862244400861378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275059.P1792862244400861378

noncomputable section

/-- A275059: Numbers n such that A000010(n) + n^2 is a prime.

Offset 1, canonical program `A275059.P1792862244400861378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A275059 (n : ℕ) : ℤ :=
  A275059.P1792862244400861378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A275059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275238.P2529277380881640300

`xor(1, n*(A178914(n)+1+n))`
-/

namespace A275238.P2529277380881640300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * (A178914 n + 1 + (n : ℤ)))

end

end A275238.P2529277380881640300

noncomputable section

/-- A275238: a(n) = n*(10^floor(log_10(n)+1) + 1) + (-1)^n.

Offset 0, canonical program `A275238.P2529277380881640300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275238 (n : ℕ) : ℤ :=
  A275238.P2529277380881640300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275534.P744122955191144669

`A278114(n+1)-A267098(A278114(n+1))`
-/

namespace A275534.P744122955191144669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (n + 1) - A267098 (A278114 (n + 1)).toNat

end

end A275534.P744122955191144669

noncomputable section

/-- A275534: Number of primes of the form x^2 + y^2 less than or equal to 2*n^2.

Offset 1, canonical program `A275534.P744122955191144669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 640 terms. -/
def A275534 (n : ℕ) : ℤ :=
  A275534.P744122955191144669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 640 terms. -/
def A275534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275966.P4192951619174800952

`∑{d}[n+1, A002654(#)*A007427((n+1)/#)]`
-/

namespace A275966.P4192951619174800952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P4192951619174800952

noncomputable section

/-- A275966: a(n) is the real part of -I*Sum_{d|n}(mobius(d)*I^(n/d)), I=sqrt(-1), mobius(n) is A008683.

Offset 1, canonical program `A275966.P4192951619174800952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275966 (n : ℕ) : ℤ :=
  A275966.P4192951619174800952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276133.P16912241071794328455

`Δ[A080085(n+1)]`
-/

namespace A276133.P16912241071794328455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P16912241071794328455

noncomputable section

/-- A276133: Exponent of highest power of 2 dividing the product of the composite numbers between the n-th prime and the (n+1)-st prime.

Offset 1, canonical program `A276133.P16912241071794328455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A276133 (n : ℕ) : ℤ :=
  A276133.P16912241071794328455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A276133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276151.P6895795867125702309

`n-A343048(1-Δ[A276150(n)])`
-/

namespace A276151.P6895795867125702309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A343048 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A276151.P6895795867125702309

noncomputable section

/-- A276151: n minus the greatest primorial number (A002110) which divides n: a(n) = n - A053589(n).

Offset 1, canonical program `A276151.P6895795867125702309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276151 (n : ℕ) : ℤ :=
  A276151.P6895795867125702309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276194.P6934674265485080533

`A001969(eq[2%A001316(n+1), A001285(n)]+1)`
-/

namespace A276194.P6934674265485080533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A001316 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A276194.P6934674265485080533

noncomputable section

/-- A276194: Odd numbers whose binary representation contains an even number of 1's and at least one 0.

Offset 1, canonical program `A276194.P6934674265485080533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A276194 (n : ℕ) : ℤ :=
  A276194.P6934674265485080533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A276194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276273.P16785661812156744009

`A088748(A003188(n))`
-/

namespace A276273.P16785661812156744009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A003188 n).toNat

end

end A276273.P16785661812156744009

noncomputable section

/-- A276273: Replacing every "mixed pair" of integers (as defined in the comments) with the smaller integer of the pair rebuilds the sequence.

Offset 1, canonical program `A276273.P16785661812156744009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276273 (n : ℕ) : ℤ :=
  A276273.P16785661812156744009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276378.P5512391112950635308

`2*A097702(n+1)+1`
-/

namespace A276378.P5512391112950635308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097702 (n + 1) + 1

end

end A276378.P5512391112950635308

noncomputable section

/-- A276378: Numbers k such that 6*k is squarefree.

Offset 1, canonical program `A276378.P5512391112950635308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276378 (n : ℕ) : ℤ :=
  A276378.P5512391112950635308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276618.P14344532738654526043

`or(A059268(n), A099884(A061579(n)))`
-/

namespace A276618.P14344532738654526043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059268 n) (A099884 (A061579 n).toNat)

end

end A276618.P14344532738654526043

noncomputable section

/-- A276618: Transpose of table A099884.

Offset 0, canonical program `A276618.P14344532738654526043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A276618 (n : ℕ) : ℤ :=
  A276618.P14344532738654526043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A276618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276670.P10613911067036995534

`3*A138190((2*n)%(n+1)+1)`
-/

namespace A276670.P10613911067036995534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138190 (2 * n % (n + 1) + 1)

end

end A276670.P10613911067036995534

noncomputable section

/-- A276670: Numerator of (n-1)*n*(n+1)/4.

Offset 0, canonical program `A276670.P10613911067036995534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276670 (n : ℕ) : ℤ :=
  A276670.P10613911067036995534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277910.P10787059213023238981

`1+A277909(n+1)`
-/

namespace A277910.P10787059213023238981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A277909 (n + 1)

end

end A277910.P10787059213023238981

noncomputable section

/-- A277910: Numbers n for which A277911(n) = n-1.

Offset 1, canonical program `A277910.P10787059213023238981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277910 (n : ℕ) : ℤ :=
  A277910.P10787059213023238981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278049.P11985461488246088473

`∑[A200905(n+1)]-1`
-/

namespace A278049.P11985461488246088473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A278049.P11985461488246088473

noncomputable section

/-- A278049: a(n) = 3*(Sum_{k=1..n} phi(k)) - 1, where phi = A000010.

Offset 1, canonical program `A278049.P11985461488246088473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278049 (n : ℕ) : ℤ :=
  A278049.P11985461488246088473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278711.P2667105724991810827

`lcm(A140978(n+1), A225950(n+2))`
-/

namespace A278711.P2667105724991810827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A140978 (n + 1)) (A225950 (n + 2))

end

end A278711.P2667105724991810827

noncomputable section

/-- A278711: Triangle T read by rows: T(n, m), for n >= 2, and m=1, 2, ..., n-1, equals the positive integer solution x of y^2 = x^3 - A(n, m)^2*x with the area A(n, m) = A249869(n, m) of the primitive Pythagorean triangle characterized by (n, m) or 0 if no such triangle exists.

Offset 2, canonical program `A278711.P2667105724991810827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278711 (n : ℕ) : ℤ :=
  (A278711.P2667105724991810827.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278712.P11642607934964256146

`lcm(∑[A073423(n)], A225950(n+2))`
-/

namespace A278712.P11642607934964256146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A225950 (n + 2))

end

end A278712.P11642607934964256146

noncomputable section

/-- A278712: Triangle T read by rows: T(n, m), for n >= 2, and m = 1, 2, ..., n-1, equals the square root of the positive integer solution y of y^2 = x^3 - A(n, m)^2*x with the area A(n, m) = A249869(n, m) of the primitive Pythagorean triangle characterized by (n, m) or 0 if no such triangle exists.

Offset 2, canonical program `A278712.P11642607934964256146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278712 (n : ℕ) : ℤ :=
  (A278712.P11642607934964256146.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278959.P17833903646216685810

`A068670(∑[char[p?[round(8*n/7)]+1]])`
-/

namespace A278959.P17833903646216685810
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278959.P17833903646216685810

noncomputable section

/-- A278959: Length of the string that is generated by the concatenation of all the prime numbers < n.

Offset 0, canonical program `A278959.P17833903646216685810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278959 (n : ℕ) : ℤ :=
  A278959.P17833903646216685810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279480.P1875435745998994455

`p?[A180648(n+1)]-1`
-/

namespace A279480.P1875435745998994455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A279480.P1875435745998994455

noncomputable section

/-- A279480: Numbers k such that k+1 and k^4+1 are primes.

Offset 1, canonical program `A279480.P1875435745998994455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 943 terms. -/
def A279480 (n : ℕ) : ℤ :=
  A279480.P1875435745998994455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 943 terms. -/
def A279480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279733.P15757647906941129304

`A023531(A061579(n)-A087401(n))`
-/

namespace A279733.P15757647906941129304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A061579 n - A087401 n).toNat

end

end A279733.P15757647906941129304

noncomputable section

/-- A279733: Triangle read by rows which is constructed with the diagram of the triangle of A237048 and filling the empty cells with zeros.

Offset 1, canonical program `A279733.P15757647906941129304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A279733 (n : ℕ) : ℤ :=
  A279733.P15757647906941129304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A279733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279760.P659119532778669263

`char[A224787(n+1)]`
-/

namespace A279760.P659119532778669263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A279760.P659119532778669263

noncomputable section

/-- A279760: Expansion of Product_{k>=1} 1/(1 - x^(prime(k)^3)).

Offset 0, canonical program `A279760.P659119532778669263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A279760 (n : ℕ) : ℤ :=
  (A279760.P659119532778669263.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A279760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280131.P12740549784646320561

`∑[A029940(n+1)]`
-/

namespace A280131.P12740549784646320561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280131.P12740549784646320561

noncomputable section

/-- A280131: Partial sums of A029940 (Product_{d|n} phi(d)).

Offset 1, canonical program `A280131.P12740549784646320561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A280131 (n : ℕ) : ℤ :=
  A280131.P12740549784646320561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A280131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280184.P6105905186965531621

`∑{d}[n+1, A160891(#)]`
-/

namespace A280184.P6105905186965531621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160891 d

end

end A280184.P6105905186965531621

noncomputable section

/-- A280184: Number of cyclic subgroups of the group C_n x C_n x C_n x C_n, where C_n is the cyclic group of order n.

Offset 1, canonical program `A280184.P6105905186965531621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280184 (n : ℕ) : ℤ :=
  A280184.P6105905186965531621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280411.P16062598287580684843

`A309761(∑[xor(1, n)])`
-/

namespace A280411.P16062598287580684843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280411.P16062598287580684843

noncomputable section

/-- A280411: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 261", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A280411.P16062598287580684843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A280411 (n : ℕ) : ℤ :=
  A280411.P16062598287580684843.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A280411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280514.P1420355641287953879

`A246104(n+1)-(n+2)`
-/

namespace A280514.P1420355641287953879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (n + 1) - (n + 2 : ℤ)

end

end A280514.P1420355641287953879

noncomputable section

/-- A280514: Index sequence of the reverse block-fractal sequence A003849.

Offset 1, canonical program `A280514.P1420355641287953879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280514 (n : ℕ) : ℤ :=
  A280514.P1420355641287953879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280729.P13621898540149842299

`2*A005097(n+1)-A098006(n+2)`
-/

namespace A280729.P13621898540149842299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005097 (n + 1) - A098006 (n + 2)

end

end A280729.P13621898540149842299

noncomputable section

/-- A280729: (p-1)/2 + phi(p-1) as p runs through the odd primes.

Offset 1, canonical program `A280729.P13621898540149842299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280729 (n : ℕ) : ℤ :=
  A280729.P13621898540149842299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283316.P17339832045397034403

`A160383(n)%2`
-/

namespace A283316.P17339832045397034403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160383 n) 2

end

end A283316.P17339832045397034403

noncomputable section

/-- A283316: Image of 0 under repeated applications of the morphism 0 -> 0,0,0,1, 1 -> 1,1,1,0.

Offset 1, canonical program `A283316.P17339832045397034403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283316 (n : ℕ) : ℤ :=
  A283316.P17339832045397034403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283909.P7601031243717363811

`A267247(n)%A198633(n)`
-/

namespace A283909.P7601031243717363811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267247 n) (A198633 n)

end

end A283909.P7601031243717363811

noncomputable section

/-- A283909: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A283909.P7601031243717363811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A283909 (n : ℕ) : ℤ :=
  A283909.P7601031243717363811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A283909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284131.P15303166683764381892

`A284115(A185871(n+1))`
-/

namespace A284131.P15303166683764381892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (A185871 (n + 1)).toNat

end

end A284131.P15303166683764381892

noncomputable section

/-- A284131: Hosoya triangle of Morgan Voyce type, read by rows.

Offset 1, canonical program `A284131.P15303166683764381892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A284131 (n : ℕ) : ℤ :=
  A284131.P15303166683764381892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A284131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284483.P4989402952069662796

`A284351(n)-A000035(A007920(n))`
-/

namespace A284483.P4989402952069662796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284351 n - A000035 (A007920 n).toNat

end

end A284483.P4989402952069662796

noncomputable section

/-- A284483: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A284483.P4989402952069662796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A284483 (n : ℕ) : ℤ :=
  A284483.P4989402952069662796.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A284483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284973.P12250254518392136044

`A284963(n+1)+A256077(n+1)`
-/

namespace A284973.P12250254518392136044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) + A256077 (n + 1)

end

end A284973.P12250254518392136044

noncomputable section

/-- A284973: Numbers with digits 4 and 9 only.

Offset 1, canonical program `A284973.P12250254518392136044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284973 (n : ℕ) : ℤ :=
  A284973.P12250254518392136044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285474.P15837645706445647605

`A309761(∑[A266303(n)])`
-/

namespace A285474.P15837645706445647605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285474.P15837645706445647605

noncomputable section

/-- A285474: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285474.P15837645706445647605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285474 (n : ℕ) : ℤ :=
  A285474.P15837645706445647605.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285541.P13893119404520415230

`A309761(∑[A266981(n)])`
-/

namespace A285541.P13893119404520415230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285541.P13893119404520415230

noncomputable section

/-- A285541: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285541.P13893119404520415230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A285541 (n : ℕ) : ℤ :=
  A285541.P13893119404520415230.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A285541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285779.P3124785709148883009

`floor(xor(n, A106400(n))/2)`
-/

namespace A285779.P3124785709148883009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor (n : ℤ) (A106400 n) : ℚ) / 2⌋

end

end A285779.P3124785709148883009

noncomputable section

/-- A285779: Parity index: number of integers z with 1 <= z <= n for which A010060(z) = A010060(n), negated if A010060(n) = 1.

Offset 0, canonical program `A285779.P3124785709148883009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285779 (n : ℕ) : ℤ :=
  A285779.P3124785709148883009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285917.P12135390314754956376

`∑[2^(n+1)-Δ[A138364(n)]]`
-/

namespace A285917.P12135390314754956376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285917.P12135390314754956376

noncomputable section

/-- A285917: Number of ordered set partitions of [n] into two blocks such that equal-sized blocks are ordered with increasing least elements.

Offset 2, canonical program `A285917.P12135390314754956376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A285917 (n : ℕ) : ℤ :=
  A285917.P12135390314754956376.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A285917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285949.P15970173890661859112

`A082446(A091684(n))`
-/

namespace A285949.P15970173890661859112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082446 (A091684 n).toNat

end

end A285949.P15970173890661859112

noncomputable section

/-- A285949: {0->01, 1->0}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285949.P15970173890661859112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285949 (n : ℕ) : ℤ :=
  A285949.P15970173890661859112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285954.P14356408792107538698

`1+A026430(n)`
-/

namespace A285954.P14356408792107538698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A026430 n

end

end A285954.P14356408792107538698

noncomputable section

/-- A285954: Positions of 1 in A285952; complement of A285953.

Offset 1, canonical program `A285954.P14356408792107538698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285954 (n : ℕ) : ℤ :=
  A285954.P14356408792107538698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286050.P16642162876214931589

`A285957(n+1)+Δ[n²]`
-/

namespace A286050.P16642162876214931589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285957 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286050.P16642162876214931589

noncomputable section

/-- A286050: Positions of 0 in A286049; complement of A286051.

Offset 1, canonical program `A286050.P16642162876214931589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286050 (n : ℕ) : ℤ :=
  A286050.P16642162876214931589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286051.P3921126115596038729

`2*(n+1)-A285957(n+1)`
-/

namespace A286051.P3921126115596038729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A285957 (n + 1)

end

end A286051.P3921126115596038729

noncomputable section

/-- A286051: Positions of 1 in A286049; complement of A286050.

Offset 1, canonical program `A286051.P3921126115596038729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286051 (n : ℕ) : ℤ :=
  A286051.P3921126115596038729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286063.P1257865481194737079

`A254379(lt[val(n+1, 2), 2])`
-/

namespace A286063.P1257865481194737079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A286063.P1257865481194737079

noncomputable section

/-- A286063: Fixed point of the mapping 00->001, 1->100, starting with 00.

Offset 1, canonical program `A286063.P1257865481194737079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286063 (n : ℕ) : ℤ :=
  A286063.P1257865481194737079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286108.P8792181165033674960

`A221146(n)+A057944(n)`
-/

namespace A286108.P8792181165033674960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221146 n + A057944 n

end

end A286108.P8792181165033674960

noncomputable section

/-- A286108: Square array read by antidiagonals: A(n,k) = T(2*(n AND k), n XOR k), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286108.P8792181165033674960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286108 (n : ℕ) : ℤ :=
  A286108.P8792181165033674960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286727.P12806024800689892931

`A095190(n)+A001651(n+1)`
-/

namespace A286727.P12806024800689892931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 n + A001651 (n + 1)

end

end A286727.P12806024800689892931

noncomputable section

/-- A286727: Positions of 0 in A286063; complement of A286728.

Offset 1, canonical program `A286727.P12806024800689892931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286727 (n : ℕ) : ℤ :=
  A286727.P12806024800689892931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286803.P3688873761259965348

`A286692(n+1)-A286665(n+1)`
-/

namespace A286803.P3688873761259965348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286692 (n + 1) - A286665 (n + 1)

end

end A286803.P3688873761259965348

noncomputable section

/-- A286803: Positions of 1 in A286801; complement of A286802.

Offset 1, canonical program `A286803.P3688873761259965348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286803 (n : ℕ) : ℤ :=
  A286803.P3688873761259965348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286900.P7686726523732709747

`A000217(A151800(n+1))-∑[n]`
-/

namespace A286900.P7686726523732709747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A151800 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A286900.P7686726523732709747

noncomputable section

/-- A286900: Sum of the numbers from n to nextprime(n).

Offset 1, canonical program `A286900.P7686726523732709747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286900 (n : ℕ) : ℤ :=
  A286900.P7686726523732709747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287555.P853673800569344600

`A004766(n+1)-A273149(n)`
-/

namespace A287555.P853673800569344600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1) - A273149 n

end

end A287555.P853673800569344600

noncomputable section

/-- A287555: Positions of 3 in A053839.

Offset 1, canonical program `A287555.P853673800569344600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287555 (n : ℕ) : ℤ :=
  A287555.P853673800569344600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288349.P2654528822955700226

`∑[A059268(n)]`
-/

namespace A288349.P2654528822955700226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P2654528822955700226

noncomputable section

/-- A288349: Partial sums of A059268.

Offset 1, canonical program `A288349.P2654528822955700226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288349 (n : ℕ) : ℤ :=
  A288349.P2654528822955700226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288811.P11306443262646702706

`A095121(n)+1-A288807(n)`
-/

namespace A288811.P11306443262646702706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288807 n)

end

end A288811.P11306443262646702706

noncomputable section

/-- A288811: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288811.P11306443262646702706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288811 (n : ℕ) : ℤ :=
  A288811.P11306443262646702706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289035.P15604890525171698629

`A188297(n+1)-A188300(n+1)`
-/

namespace A289035.P15604890525171698629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (n + 1) - A188300 (n + 1)

end

end A289035.P15604890525171698629

noncomputable section

/-- A289035: Fixed point of the mapping 00->0010, 01->010, 10->010, starting with 00.

Offset 1, canonical program `A289035.P15604890525171698629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289035 (n : ℕ) : ℤ :=
  A289035.P15604890525171698629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289279.P13898592628160016869

`2*(n+1)-1-A285786(n+1)`
-/

namespace A289279.P13898592628160016869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 1 - A285786 (n + 1)

end

end A289279.P13898592628160016869

noncomputable section

/-- A289279: Number of odd composite numbers in ]2*(n-1)^2, 2*n^2[.

Offset 1, canonical program `A289279.P13898592628160016869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285786, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289279 (n : ℕ) : ℤ :=
  A289279.P13898592628160016869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285786, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289336.P13059549218811230367

`Δ[A160664(n)]/A009223(n+1)`
-/

namespace A289336.P13059549218811230367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A009223 (n + 1) : ℚ)

end

end A289336.P13059549218811230367

noncomputable section

/-- A289336: a(n) = numerator of (sigma(n) / phi(n)).

Offset 1, canonical program `A289336.P13059549218811230367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289336 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A289336.P13059549218811230367.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289412.P16736095440430260150

`A062354(n+1)/(A000203(n+1)*A009223(n+1))`
-/

namespace A289412.P16736095440430260150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A000203 (n + 1) * A009223 (n + 1) : ℚ)

end

end A289412.P16736095440430260150

noncomputable section

/-- A289412: a(n) = denominator of (sigma(n) / phi(n)).

Offset 1, canonical program `A289412.P16736095440430260150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A289412.P16736095440430260150.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289449.P3532913622229080160

`∑[abs(A104496(n))]`
-/

namespace A289449.P3532913622229080160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104496 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289449.P3532913622229080160

noncomputable section

/-- A289449: a(n) is the number of permutations of length n that avoid the pattern 231 and the mesh pattern (12, 281) or the same sequence for the mesh patterns (12, 313), (12, 345), (12, 377), (12, 401), (12, 403), (12, 465), (12, 467).

Offset 0, canonical program `A289449.P3532913622229080160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289449 (n : ℕ) : ℤ :=
  A289449.P3532913622229080160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289450.P12865695419556516410

`A120588(n)+A141351(n)-A155587(n)`
-/

namespace A289450.P12865695419556516410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + (A141351 n - A155587 n)

end

end A289450.P12865695419556516410

noncomputable section

/-- A289450: Related to number of mesh patterns of length 2 that avoid the pattern 231 or 321. For details see the comment section.

Offset 0, canonical program `A289450.P12865695419556516410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289450 (n : ℕ) : ℤ :=
  A289450.P12865695419556516410.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289496.P2094922246552871225

`A289493(A103517(n))-A289495(n+1)`
-/

namespace A289496.P2094922246552871225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (A103517 n).toNat - A289495 (n + 1)

end

end A289496.P2094922246552871225

noncomputable section

/-- A289496: Number of primes in the interval [5n, 6n].

Offset 1, canonical program `A289496.P2094922246552871225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289496 (n : ℕ) : ℤ :=
  A289496.P2094922246552871225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289866.P13807419711234569525

`p?[A160668(n+1)+A100484(n+1)]`
-/

namespace A289866.P13807419711234569525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1) + A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289866.P13807419711234569525

noncomputable section

/-- A289866: Primes obtained from other primes by prefixing a 1.

Offset 1, canonical program `A289866.P13807419711234569525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1476 terms. -/
def A289866 (n : ℕ) : ℤ :=
  A289866.P13807419711234569525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1476 terms. -/
def A289866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290012.P1928420523366165154

`A151800(A127719(n+1)-A000007(n))`
-/

namespace A290012.P1928420523366165154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A127719 (n + 1) - A000007 n).toNat

end

end A290012.P1928420523366165154

noncomputable section

/-- A290012: a(n) is the smallest prime number p satisfying p^2 >= Sum_{1 <= k <= n} prime(k)^2.

Offset 1, canonical program `A290012.P1928420523366165154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. -/
def A290012 (n : ℕ) : ℤ :=
  A290012.P1928420523366165154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. -/
def A290012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290231.P14487216163094283759

`or(A277928(n), A288812(n))`
-/

namespace A290231.P14487216163094283759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277928 n) (A288812 n)

end

end A290231.P14487216163094283759

noncomputable section

/-- A290231: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290231.P14487216163094283759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290231 (n : ℕ) : ℤ :=
  A290231.P14487216163094283759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290232.P11019390822315618094

`A309761(A093005(n+1))`
-/

namespace A290232.P11019390822315618094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A093005 (n + 1)).toNat

end

end A290232.P11019390822315618094

noncomputable section

/-- A290232: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 773", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290232.P11019390822315618094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290232 (n : ℕ) : ℤ :=
  A290232.P11019390822315618094.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290277.P11056597028354566118

`∑{d}[n+1, A008683(#)*A208602((n+1)/#)]`
-/

namespace A290277.P11056597028354566118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A208602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A290277.P11056597028354566118

noncomputable section

/-- A290277: Inverse Euler Transform of the Motzkin Numbers.

Offset 1, canonical program `A290277.P11056597028354566118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A290277 (n : ℕ) : ℤ :=
  A290277.P11056597028354566118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A290277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290418.P2473438558105985708

`A052551(n+1)-A285773(n+1)`
-/

namespace A290418.P2473438558105985708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (n + 1) - A285773 (n + 1)

end

end A290418.P2473438558105985708

noncomputable section

/-- A290418: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290418.P2473438558105985708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A290418 (n : ℕ) : ℤ :=
  A290418.P2473438558105985708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A290418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290527.P16475586415095143845

`xor(A186741(A128059(n)), A290414(n))`
-/

namespace A290527.P16475586415095143845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A186741 (A128059 n).toNat) (A290414 n)

end

end A290527.P16475586415095143845

noncomputable section

/-- A290527: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290527.P16475586415095143845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290527 (n : ℕ) : ℤ :=
  A290527.P16475586415095143845.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290739.P10153310189044843911

`A089802(n)*A089802(∑[A089802(n)]²)`
-/

namespace A290739.P10153310189044843911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089802 n * A089802 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A290739.P10153310189044843911

noncomputable section

/-- A290739: a(n) = 0 unless n = 3j^2+2j or 3j^2+4j+1 for some j>=0, in which case a(n) = (-1)^(j+1).

Offset 0, canonical program `A290739.P10153310189044843911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290739 (n : ℕ) : ℤ :=
  A290739.P10153310189044843911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290825.P15737516132095807789

`(A088917(n)+1)*char[A032924(n+1)]`
-/

namespace A290825.P15737516132095807789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088917 n + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290825.P15737516132095807789

noncomputable section

/-- A290825: Least base-3 digit of n.

Offset 0, canonical program `A290825.P15737516132095807789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290825 (n : ℕ) : ℤ :=
  A290825.P15737516132095807789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291549.P17778341340060570744

`∩[A039770(n+1), A291167(n+1)]`
-/

namespace A291549.P17778341340060570744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291549.P17778341340060570744

noncomputable section

/-- A291549: Numbers n such that both phi(n) and psi(n) are perfect squares.

Offset 1, canonical program `A291549.P17778341340060570744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A291549 (n : ℕ) : ℤ :=
  (A291549.P17778341340060570744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A291549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291708.P680071887614674239

`floor((n+1)/2)-A062602(n+1)`
-/

namespace A291708.P680071887614674239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - A062602 (n + 1)

end

end A291708.P680071887614674239

noncomputable section

/-- A291708: Number of partitions of n into two prime parts or two nonprime parts.

Offset 1, canonical program `A291708.P680071887614674239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291708 (n : ℕ) : ℤ :=
  A291708.P680071887614674239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291708.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292441.P17800705899153561225

`A056043(2*gcd(n, C(2, n)))`
-/

namespace A292441.P17800705899153561225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (2 * Nat.gcd n (Nat.choose 2 n))

end

end A292441.P17800705899153561225

noncomputable section

/-- A292441: Largest m such that m^2 divides A000984(n).

Offset 0, canonical program `A292441.P17800705899153561225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3009 terms. -/
def A292441 (n : ℕ) : ℤ :=
  A292441.P17800705899153561225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3009 terms. -/
def A292441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292769.P7637608606255069320

`∑[A228947(n+1)+1+n]`
-/

namespace A292769.P7637608606255069320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228947 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P7637608606255069320

noncomputable section

/-- A292769: Partial sums of A051612.

Offset 1, canonical program `A292769.P7637608606255069320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292769 (n : ℕ) : ℤ :=
  A292769.P7637608606255069320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292770.P13773517797988369441

`A027656(A065387(n+1))-1`
-/

namespace A292770.P13773517797988369441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A065387 (n + 1)).toNat - 1

end

end A292770.P13773517797988369441

noncomputable section

/-- A292770: If sigma(n)+phi(n) is even then a(n) = (sigma(n)+phi(n))/2 otherwise -1.

Offset 1, canonical program `A292770.P13773517797988369441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2879 terms. -/
def A292770 (n : ℕ) : ℤ :=
  A292770.P13773517797988369441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2879 terms. -/
def A292770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292771.P12174660936694892643

`A027656(A051612(n+1))-1`
-/

namespace A292771.P12174660936694892643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A051612 (n + 1)).toNat - 1

end

end A292771.P12174660936694892643

noncomputable section

/-- A292771: If sigma(n)-phi(n) is even then (sigma(n)-phi(n))/2 otherwise -1.

Offset 1, canonical program `A292771.P12174660936694892643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3239 terms. -/
def A292771 (n : ℕ) : ℤ :=
  A292771.P12174660936694892643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3239 terms. -/
def A292771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293975.P1441853442646380636

`A026741(n)+A000035(n)*A151800(n)`
-/

namespace A293975.P1441853442646380636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + A000035 n * A151800 n

end

end A293975.P1441853442646380636

noncomputable section

/-- A293975: If n is even, divide by 2; otherwise, add the next larger prime.

Offset 0, canonical program `A293975.P1441853442646380636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293975 (n : ℕ) : ℤ :=
  A293975.P1441853442646380636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294649.P10310509611923292318

`lcm(n+1, A206369(n+1))/(n+1)`
-/

namespace A294649.P10310509611923292318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A206369 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A294649.P10310509611923292318

noncomputable section

/-- A294649: a(n) = numerator(A206369(n))/n.

Offset 1, canonical program `A294649.P10310509611923292318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294649 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294649.P10310509611923292318.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295303.P8470606991534144988

`round(sin(atan(A295301(n+1))))`
-/

namespace A295303.P8470606991534144988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A295301 (n + 1) : ℝ)))

end

end A295303.P8470606991534144988

noncomputable section

/-- A295303: a(n) = +1 if n > phi(sigma(n)), -1 if n < phi(sigma(n)), and 0 if n = phi(sigma(n)), where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295303.P8470606991534144988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295303 (n : ℕ) : ℤ :=
  A295303.P8470606991534144988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295304.P8804302237955418523

`round(sin(atan(A295302(n+1))))`
-/

namespace A295304.P8804302237955418523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A295302 (n + 1) : ℝ)))

end

end A295304.P8804302237955418523

noncomputable section

/-- A295304: a(n) = +1 if sigma(phi(n)) > n, -1 if sigma(phi(n)) < n, and 0 if sigma(phi(n)) = n, where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295304.P8804302237955418523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295304 (n : ℕ) : ℤ :=
  A295304.P8804302237955418523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295309.P8495486040454173549

`ceil(A295301(n+1)/A160664(n))`
-/

namespace A295309.P8495486040454173549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295301 (n + 1) : ℚ) / (A160664 n : ℚ)⌉

end

end A295309.P8495486040454173549

noncomputable section

/-- A295309: Characteristic function for A295307: a(n) = 1 if n > phi(sigma(n)), 0 otherwise.

Offset 1, canonical program `A295309.P8495486040454173549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295309 (n : ℕ) : ℤ :=
  A295309.P8495486040454173549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295584.P3807937795834831549

`eq[char[A182139(n+1)], A126120(n)]`
-/

namespace A295584.P3807937795834831549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182139 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A295584.P3807937795834831549

noncomputable section

/-- A295584: Odd numbers that are not a product of Mersenne numbers (A000225).

Offset 1, canonical program `A295584.P3807937795834831549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A295584 (n : ℕ) : ℤ :=
  (A295584.P3807937795834831549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A295584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295661.P311646455530732485

`lt[1, A056191(n+1)]+1`
-/

namespace A295661.P311646455530732485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A295661.P311646455530732485

noncomputable section

/-- A295661: Numbers with at least one odd exponent larger than one in their prime factorization.

Offset 1, canonical program `A295661.P311646455530732485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A295661 (n : ℕ) : ℤ :=
  (A295661.P311646455530732485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A295661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295878.P12559335493611426634

`∏{e}[A071975(n+1), A000040(#)]`
-/

namespace A295878.P12559335493611426634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A295878.P12559335493611426634

noncomputable section

/-- A295878: Multiplicative with a(p^(2e)) = 1, a(p^(2e-1)) = prime(e).

Offset 1, canonical program `A295878.P12559335493611426634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295878 (n : ℕ) : ℤ :=
  A295878.P12559335493611426634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295996.P15464028350351248957

`A057427(n)+∑[A055029(4*n+1)]`
-/

namespace A295996.P15464028350351248957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295996.P15464028350351248957

noncomputable section

/-- A295996: One quarter of number of Gaussian primes whose norm is 4*n+1 or less.

Offset 0, canonical program `A295996.P15464028350351248957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A295996 (n : ℕ) : ℤ :=
  A295996.P15464028350351248957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A295996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296206.P7932008658707431913

`xor(A011262(A011262(n+1)), A063658(n+1))`
-/

namespace A296206.P7932008658707431913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011262 (A011262 (n + 1)).toNat) (A063658 (n + 1))

end

end A296206.P7932008658707431913

noncomputable section

/-- A296206: Xor-Moebius transform applied twice to natural numbers.

Offset 1, canonical program `A296206.P7932008658707431913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A296206 (n : ℕ) : ℤ :=
  A296206.P7932008658707431913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A296206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296304.P12505462346226864270

`lt[Δ[A128059(n)]², 1]²`
-/

namespace A296304.P12505462346226864270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n ^ 2

end

end A296304.P12505462346226864270

noncomputable section

/-- A296304: Numbers whose absolute difference from a square is never a prime.

Offset 1, canonical program `A296304.P12505462346226864270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. -/
def A296304 (n : ℕ) : ℤ :=
  (A296304.P12505462346226864270.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. -/
def A296304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297086.P2157316894102876955

`A063524(A009195(n+1))`
-/

namespace A297086.P2157316894102876955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A009195 (n + 1)).toNat

end

end A297086.P2157316894102876955

noncomputable section

/-- A297086: a(n) = 1 if gcd(n, phi(n)) == 1 otherwise 0.

Offset 1, canonical program `A297086.P2157316894102876955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297086 (n : ℕ) : ℤ :=
  A297086.P2157316894102876955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297153.P15480407933502326326

`xor(A083254(n+1)+A074057(n+3), A074057(n+3))`
-/

namespace A297153.P15480407933502326326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083254 (n + 1) + A074057 (n + 3)) (A074057 (n + 3))

end

end A297153.P15480407933502326326

noncomputable section

/-- A297153: Reversing binary representation of A083254(n), 2*phi(n) - n.

Offset 1, canonical program `A297153.P15480407933502326326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297153 (n : ℕ) : ℤ :=
  A297153.P15480407933502326326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298468.P9775696212957372657

`floor(A026491(n)+n/2)`
-/

namespace A298468.P9775696212957372657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026491 n : ℚ) + (n : ℚ) / 2⌋

end

end A298468.P9775696212957372657

noncomputable section

/-- A298468: Solution (aa(n)) of the system of 3 complementary equations in Comments.

Offset 0, canonical program `A298468.P9775696212957372657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298468 (n : ℕ) : ℤ :=
  A298468.P9775696212957372657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298879.P12503287432390370405

`eq[0, A228039(n)]`
-/

namespace A298879.P12503287432390370405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298879.P12503287432390370405

noncomputable section

/-- A298879: Numbers whose square is not odious.

Offset 1, canonical program `A298879.P12503287432390370405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298879 (n : ℕ) : ℤ :=
  (A298879.P12503287432390370405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298944.P11431826460709050354

`A220105(Δ[A053767(n)])`
-/

namespace A298944.P11431826460709050354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (f1 (n + 1) - f1 n).toNat

end

end A298944.P11431826460709050354

noncomputable section

/-- A298944: a(n) = 2^(c-1) mod c^2, where c is the n-th composite number.

Offset 1, canonical program `A298944.P11431826460709050354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A298944 (n : ℕ) : ℤ :=
  A298944.P11431826460709050354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A298944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298971.P5502893336547545168

`A008965(n+1)-A059966(n+1)`
-/

namespace A298971.P5502893336547545168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) - A059966 (n + 1)

end

end A298971.P5502893336547545168

noncomputable section

/-- A298971: Number of compositions of n that are proper powers of Lyndon words.

Offset 1, canonical program `A298971.P5502893336547545168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298971 (n : ℕ) : ℤ :=
  A298971.P5502893336547545168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300853.P6382502425334761752

`∑{d}[n+1, #*A118209((n+1)/#)]`
-/

namespace A300853.P6382502425334761752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A118209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300853.P6382502425334761752

noncomputable section

/-- A300853: L.g.f.: log(Product_{k>=1} (1 + x^(k^2))) = Sum_{n>=1} a(n)*x^n/n.

Offset 1, canonical program `A300853.P6382502425334761752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300853 (n : ℕ) : ℤ :=
  A300853.P6382502425334761752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302182.P4159746645078977634

`∑{#}[n, C(n, #)*A126120(#)*A018224(n-#)]`
-/

namespace A302182.P4159746645078977634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A126120 k * A018224 (n - k)

end

end A302182.P4159746645078977634

noncomputable section

/-- A302182: Number of 3D walks of type abc.

Offset 0, canonical program `A302182.P4159746645078977634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A302182 (n : ℕ) : ℤ :=
  A302182.P4159746645078977634.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A302182.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302184.P240451508757268033

`∑{#}[n, C(n, #)*A126120(#)*A000984(n-#)]`
-/

namespace A302184.P240451508757268033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A126120 k * A000984 (n - k)

end

end A302184.P240451508757268033

noncomputable section

/-- A302184: Number of 3D walks of type abe.

Offset 0, canonical program `A302184.P240451508757268033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A302184 (n : ℕ) : ℤ :=
  A302184.P240451508757268033.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A302184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A303481.P903145872744022410

`(n+1)*A303385(n+1)`
-/

namespace A303481.P903145872744022410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A303385 (n + 1)

end

end A303481.P903145872744022410

noncomputable section

/-- A303481: Total volume of the family of rectangular prisms with dimensions p, q and p + q where p divides q, n = p + q and p < q.

Offset 1, canonical program `A303481.P903145872744022410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303481 (n : ℕ) : ℤ :=
  A303481.P903145872744022410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A303581.P15071600454215095240

`A070941(n)-A010059(n)`
-/

namespace A303581.P15071600454215095240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n - A010059 n

end

end A303581.P15071600454215095240

noncomputable section

/-- A303581: Add i (>= 0) to the i-th block of terms in the Thue-Morse sequence A010060.

Offset 0, canonical program `A303581.P15071600454215095240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303581 (n : ℕ) : ℤ :=
  A303581.P15071600454215095240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303973.P17946534861844191776

`∑{d}[n+1, A053191(#)*A303385((n+1)/#)]`
-/

namespace A303973.P17946534861844191776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A303385 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303973.P17946534861844191776

noncomputable section

/-- A303973: Total volume of all rectangular prisms with dimensions (p,p,q) such that n = p + q, p divides q and p < q.

Offset 1, canonical program `A303973.P17946534861844191776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303973 (n : ℕ) : ℤ :=
  A303973.P17946534861844191776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304685.P4730161233825574462

`C(A204697(n+1), A286577(A038502(n+1)))`
-/

namespace A304685.P4730161233825574462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A204697 (n + 1)).toNat (A286577 (A038502 (n + 1)).toNat).toNat

end

end A304685.P4730161233825574462

noncomputable section

/-- A304685: a(n) = A000699(n) (mod 3).

Offset 1, canonical program `A304685.P4730161233825574462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A304685 (n : ℕ) : ℤ :=
  (A304685.P4730161233825574462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A304685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305006.P10100576833363132034

`lcm((n+1)², A326238(n+1))/A162395(n+1)`
-/

namespace A305006.P10100576833363132034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) (A326238 (n + 1)) : ℚ) / (A162395 (n + 1) : ℚ)

end

end A305006.P10100576833363132034

noncomputable section

/-- A305006: Numerators of coefficients in expansion of Sum_{k>=1} x^k/(k*(1 + x^k)).

Offset 1, canonical program `A305006.P10100576833363132034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305006 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A305006.P10100576833363132034.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305722.P15996365835608789780

`∑[A019564(n)]`
-/

namespace A305722.P15996365835608789780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305722.P15996365835608789780

noncomputable section

/-- A305722: Crystal ball sequence for the lattice C_8.

Offset 0, canonical program `A305722.P15996365835608789780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305722 (n : ℕ) : ℤ :=
  A305722.P15996365835608789780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305723.P14653554493018338077

`∑[A035746(n)]`
-/

namespace A305723.P14653554493018338077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305723.P14653554493018338077

noncomputable section

/-- A305723: Crystal ball sequence for the lattice C_9.

Offset 0, canonical program `A305723.P14653554493018338077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305723 (n : ℕ) : ℤ :=
  A305723.P14653554493018338077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305800.P15822938426651104625

`A066246(n+1)+2-A000007(n)`
-/

namespace A305800.P15822938426651104625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + (2 - A000007 n)

end

end A305800.P15822938426651104625

noncomputable section

/-- A305800: Filter sequence for a(prime) = constant sequences.

Offset 1, canonical program `A305800.P15822938426651104625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305800 (n : ℕ) : ℤ :=
  A305800.P15822938426651104625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306198.P7323652723329886433

`A003557(n+1)*A389775(n+1)`
-/

namespace A306198.P7323652723329886433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A389775 (n + 1)

end

end A306198.P7323652723329886433

noncomputable section

/-- A306198: Multiplicative with a(p^e) = p^(e-1)*(p^2 - p - 1).

Offset 1, canonical program `A306198.P7323652723329886433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306198 (n : ℕ) : ℤ :=
  A306198.P7323652723329886433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307673.P7363177245116075700

`∑[A108754(n+1)]`
-/

namespace A307673.P7363177245116075700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P7363177245116075700

noncomputable section

/-- A307673: Partial sums of A108754.

Offset 1, canonical program `A307673.P7363177245116075700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307673 (n : ℕ) : ℤ :=
  A307673.P7363177245116075700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307980.P14907760515223499407

`eq[(2*A055642(n))², A145154(n)]`
-/

namespace A307980.P14907760515223499407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A055642 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307980.P14907760515223499407

noncomputable section

/-- A307980: Numbers k whose number of divisors is the square of the number of decimal digits of k.

Offset 1, canonical program `A307980.P14907760515223499407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A307980 (n : ℕ) : ℤ :=
  (A307980.P14907760515223499407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A307980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308046.P12778737970063889955

`2*A151800(n)-2*(n+1)`
-/

namespace A308046.P12778737970063889955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151800 n - (2 * (n + 1) : ℤ)

end

end A308046.P12778737970063889955

noncomputable section

/-- A308046: a(n) = 2*nextprime(n - 1) - 2*n, where nextprime(n) is the smallest prime > n.

Offset 1, canonical program `A308046.P12778737970063889955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308046 (n : ℕ) : ℤ :=
  A308046.P12778737970063889955.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175787.P10024478366857533250

`A046022(n+2)`
-/

namespace A175787.P10024478366857533250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 2)

end

end A175787.P10024478366857533250

noncomputable section

/-- A175787: Primes together with 4.

Offset 1, canonical program `A175787.P10024478366857533250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175787 (n : ℕ) : ℤ :=
  A175787.P10024478366857533250.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175787.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176831.P10048569203297585884

`p?[A147846(n+3)-A147846(n+1)]`
-/

namespace A176831.P10048569203297585884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147846 (n + 3) - A147846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176831.P10048569203297585884

noncomputable section

/-- A176831: List of all primes p such that 2*A099609(2n-1)<p<2*A099609(2n).

Offset 1, canonical program `A176831.P10048569203297585884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A176831 (n : ℕ) : ℤ :=
  A176831.P10048569203297585884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A176831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176841.P12208208766662245832

`a(n-A163109(n+1))+1` with `a(0)=0`
-/

namespace A176841.P12208208766662245832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A163109 (n + 1)).toNat + 1

end

end A176841.P12208208766662245832

noncomputable section

/-- A176841: a(n) is the number of iterations of f(n) = n-phi(tau(n)) needed to reach 1.

Offset 1, canonical program `A176841.P12208208766662245832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176841 (n : ℕ) : ℤ :=
  (A176841.P12208208766662245832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177445.P17038729610874168570

`∑[A120562(n)]`
-/

namespace A177445.P17038729610874168570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177445.P17038729610874168570

noncomputable section

/-- A177445: Partial sums of A120562.

Offset 0, canonical program `A177445.P17038729610874168570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177445 (n : ℕ) : ℤ :=
  A177445.P17038729610874168570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178450.P13297792227575131152

`∑{d}[n+1, A327960(#)*A340774((n+1)/#)]`
-/

namespace A178450.P13297792227575131152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327960 d * A340774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A178450.P13297792227575131152

noncomputable section

/-- A178450: Dirichlet inverse of A034448 (unitary sigma).

Offset 1, canonical program `A178450.P13297792227575131152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178450 (n : ℕ) : ℤ :=
  A178450.P13297792227575131152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178752.P10634294460120603498

`∑{d}[n+1, (n+1)/#*A001037(#)]`
-/

namespace A178752.P10634294460120603498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A001037 d : ℚ)

end

end A178752.P10634294460120603498

noncomputable section

/-- A178752: a(n) gives the number of conjugacy classes in the permutation group generated by transposition (1 2) and double n-cycle (1 3 5 7 ... 2n-1)(2 4 6 8 ... 2n). This group is a semidirect product formed by a cyclic group acting on an elementary abelian 2-group of rank n by cyclically permuting the factors.

Offset 1, canonical program `A178752.P10634294460120603498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A178752 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178752.P10634294460120603498.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A178752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178764.P6787649848818472228

`A061446(n+1)/A178763(n+1)`
-/

namespace A178764.P6787649848818472228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061446 (n + 1) : ℚ) / (A178763 (n + 1) : ℚ)

end

end A178764.P6787649848818472228

noncomputable section

/-- A178764: Ratio of the primitive part of Fibonacci(n) to the product of primitive prime factors of Fibonacci(n).

Offset 1, canonical program `A178764.P6787649848818472228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061446, A178763, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A178764 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178764.P6787649848818472228.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061446, A178763, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A178764.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179012.P1284403483129430649

`p?[A163631(n+4)-A163631(n+1)]`
-/

namespace A179012.P1284403483129430649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163631 (n + 4) - A163631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179012.P1284403483129430649

noncomputable section

/-- A179012: Primes that are the sum of three consecutive composite odd numbers.

Offset 1, canonical program `A179012.P1284403483129430649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179012 (n : ℕ) : ℤ :=
  A179012.P1284403483129430649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179067.P13388217006194654114

`Δ[comp[A242881(n+1)-1]]`
-/

namespace A179067.P13388217006194654114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242881 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A179067.P13388217006194654114

noncomputable section

/-- A179067: Orders of consecutive clusters of twin primes.

Offset 1, canonical program `A179067.P13388217006194654114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179067 (n : ℕ) : ℤ :=
  A179067.P13388217006194654114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179188.P9691688414308048865

`record[A103391(A217139(n+1)-2)]`
-/

namespace A179188.P9691688414308048865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A217139 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179188.P9691688414308048865

noncomputable section

/-- A179188: Numbers n such that phi(n) = phi(n+6), with Euler's totient function phi=A000010.

Offset 1, canonical program `A179188.P9691688414308048865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A179188 (n : ℕ) : ℤ :=
  A179188.P9691688414308048865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A179188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179873.P14238685673315478080

`A053818(A179871(n+1))/A023896(A179871(n+1))`
-/

namespace A179873.P14238685673315478080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053818 (A179871 (n + 1)).toNat : ℚ) / (A023896 (A179871 (n + 1)).toNat : ℚ)

end

end A179873.P14238685673315478080

noncomputable section

/-- A179873: Corresponding values of antiharmonic means B(h) to numbers h from A179871 (numbers h such that antiharmonic mean of the numbers k < h such that gcd(k, h) = 1 is an integer).

Offset 1, canonical program `A179873.P14238685673315478080`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, A053818, A179871, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179873 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A179873.P14238685673315478080.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, A053818, A179871, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179873.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179887.P13528417586907878350

`filter[A179871(n+1), A005171(#)]`
-/

namespace A179887.P13528417586907878350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A179887.P13528417586907878350

noncomputable section

/-- A179887: Nonprimes q such that antiharmonic mean B(q) of the numbers k < q such that gcd(k, q) = 1 is an integer, where B(q) = A053818(q) / A023896(q) = A175505(q) / A175506(q).

Offset 1, canonical program `A179887.P13528417586907878350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7706 terms. -/
def A179887 (n : ℕ) : ℤ :=
  A179887.P13528417586907878350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7706 terms. -/
def A179887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179891.P781335319700463557

`filter[A179872(n+1), A066247(#)]`
-/

namespace A179891.P781335319700463557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A179891.P781335319700463557

noncomputable section

/-- A179891: Composites h such that antiharmonic mean B(h) of the numbers k < h such that gcd(k, h) = 1 is not integer.

Offset 1, canonical program `A179891.P781335319700463557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9236 terms. -/
def A179891 (n : ℕ) : ℤ :=
  A179891.P781335319700463557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9236 terms. -/
def A179891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180097.P10343464858030569198

`record[A000027(n+1)*A112526(A000203(n+1))]`
-/

namespace A180097.P10343464858030569198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A112526 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180097.P10343464858030569198

noncomputable section

/-- A180097: Numbers k such that sigma(k) is powerful.

Offset 1, canonical program `A180097.P10343464858030569198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A180097 (n : ℕ) : ℤ :=
  A180097.P10343464858030569198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A180097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180365.P9491354516201512416

`A061201(10^n)`
-/

namespace A180365.P9491354516201512416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 (10 ^ n)

end

end A180365.P9491354516201512416

noncomputable section

/-- A180365: Partial sums up to 10^n of A007425.

Offset 0, canonical program `A180365.P9491354516201512416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180365 (n : ℕ) : ℤ :=
  A180365.P9491354516201512416.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180365.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181173.P4927634658876330475

`p?[A023721(n+1)]`
-/

namespace A181173.P4927634658876330475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181173.P4927634658876330475

noncomputable section

/-- A181173: Primes whose base 5 representation does not contain a 0.

Offset 1, canonical program `A181173.P4927634658876330475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1356 terms. -/
def A181173 (n : ℕ) : ℤ :=
  A181173.P4927634658876330475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1356 terms. -/
def A181173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181328.P11141749099102399961

`A181296(n)+A181300(n)-A181326(n)`
-/

namespace A181328.P11141749099102399961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181296 n + (A181300 n - A181326 n)

end

end A181328.P11141749099102399961

noncomputable section

/-- A181328: Number of columns with an even sum in all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181328.P11141749099102399961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181328 (n : ℕ) : ℤ :=
  A181328.P11141749099102399961.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181363.P272929501792705759

`A008578(A025480(n)+1)`
-/

namespace A181363.P272929501792705759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A025480 n + 1).toNat

end

end A181363.P272929501792705759

noncomputable section

/-- A181363: 1 followed by the primes, interleaved recursively.

Offset 1, canonical program `A181363.P272929501792705759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181363 (n : ℕ) : ℤ :=
  A181363.P272929501792705759.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181650.P7495452160807174074

`A070909(n)*A141679(n+1)`
-/

namespace A181650.P7495452160807174074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 n * A141679 (n + 1)

end

end A181650.P7495452160807174074

noncomputable section

/-- A181650: Inverse of number triangle A070909.

Offset 0, canonical program `A181650.P7495452160807174074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181650 (n : ℕ) : ℤ :=
  A181650.P7495452160807174074.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181938.P3732360409968739230

`∩[A151800(A253969(2*n+1)), A253969(n+2)]`
-/

namespace A181938.P3732360409968739230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A253969 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253969 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181938.P3732360409968739230

noncomputable section

/-- A181938: Isolated primes = 1 mod 6: sandwiched by primes = 5 mod 6.

Offset 1, canonical program `A181938.P3732360409968739230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A181938 (n : ℕ) : ℤ :=
  (A181938.P3732360409968739230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A181938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182093.P17307292128728891994

`∑[A005590(n)]`
-/

namespace A182093.P17307292128728891994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182093.P17307292128728891994

noncomputable section

/-- A182093: Partial sums of A005590.

Offset 0, canonical program `A182093.P17307292128728891994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182093 (n : ℕ) : ℤ :=
  A182093.P17307292128728891994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182339.P2554287700400521995

`∪[A036554(n+1), A072587(n+1)]`
-/

namespace A182339.P2554287700400521995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182339.P2554287700400521995

noncomputable section

/-- A182339: List of positive integers whose prime tower factorization, as defined in comments, contains the prime 2.

Offset 1, canonical program `A182339.P2554287700400521995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182339 (n : ℕ) : ℤ :=
  (A182339.P2554287700400521995.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183002.P1082009122046195699

`2*(A091627(n+1)-n)`
-/

namespace A183002.P1082009122046195699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A091627 (n + 1) - (n : ℤ))

end

end A183002.P1082009122046195699

noncomputable section

/-- A183002: a(n) is the total number of noncentral divisors in all positive integers <= n.

Offset 1, canonical program `A183002.P1082009122046195699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183002 (n : ℕ) : ℤ :=
  A183002.P1082009122046195699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183095.P16118821317782953757

`A183093(n+1)+1`
-/

namespace A183095.P16118821317782953757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (n + 1) + 1

end

end A183095.P16118821317782953757

noncomputable section

/-- A183095: a(n) = number of divisors d of n that are either 1 or of the form Product_(i) (p_i^e_i) where e_i = 1 for at least one i.

Offset 1, canonical program `A183095.P16118821317782953757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183095 (n : ℕ) : ℤ :=
  A183095.P16118821317782953757.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183095.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184247.P435976798172402380

`A000040(eq[1, A272863(n+1)]+2)`
-/

namespace A184247.P435976798172402380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A184247.P435976798172402380

noncomputable section

/-- A184247: Primes, q, such that for three consecutive primes, p, q & r, with p<q<r, (q - p)/(r - q) is an integer.

Offset 1, canonical program `A184247.P435976798172402380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A184247 (n : ℕ) : ℤ :=
  A184247.P435976798172402380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A184247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185725.P4132825737576595347

`A194959(n+1)+A003984(n)²`
-/

namespace A185725.P4132825737576595347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 1) + A003984 n ^ 2

end

end A185725.P4132825737576595347

noncomputable section

/-- A185725: Array associated with squares, by antidiagonals.

Offset 1, canonical program `A185725.P4132825737576595347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185725 (n : ℕ) : ℤ :=
  A185725.P4132825737576595347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186099.P16380765776800973491

`A284098(n+1)+A284104(n+1)`
-/

namespace A186099.P16380765776800973491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284098 (n + 1) + A284104 (n + 1)

end

end A186099.P16380765776800973491

noncomputable section

/-- A186099: Sum of divisors of n congruent to 1 or 5 mod 6.

Offset 1, canonical program `A186099.P16380765776800973491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284098, A284104, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A186099 (n : ℕ) : ℤ :=
  A186099.P16380765776800973491.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284098, A284104, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A186099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186697.P1665573472131375262

`A246104(p?[a(n-1)+2]-1)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A186697.P1665573472131375262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A186697.P1665573472131375262

noncomputable section

/-- A186697: Next Fibonacci number after n-th prime number.

Offset 1, canonical program `A186697.P1665573472131375262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. -/
def A186697 (n : ℕ) : ℤ :=
  A186697.P1665573472131375262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. -/
def A186697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186994.P7214231733505960877

`A000005(A038610(n+1)/A066838(n+1))`
-/

namespace A186994.P7214231733505960877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A038610 (n + 1) : ℚ) / (A066838 (n + 1) : ℚ))).toNat

end

end A186994.P7214231733505960877

noncomputable section

/-- A186994: Number of maximum subsets of {1, 2, ..., n} containing n and having pairwise coprime elements.

Offset 1, canonical program `A186994.P7214231733505960877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A186994 (n : ℕ) : ℤ :=
  A186994.P7214231733505960877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A186994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187615.P16899303713262803839

`A133985(3*n)`
-/

namespace A187615.P16899303713262803839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 (3 * n)

end

end A187615.P16899303713262803839

noncomputable section

/-- A187615: Expansion of f(-x^17, -x^19) + x^4 * f(-x, -x^35) in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A187615.P16899303713262803839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187615 (n : ℕ) : ℤ :=
  A187615.P16899303713262803839.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187615.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A187801.P9725530492111839525

`A087698(n+3)+A071919(n+2)`
-/

namespace A187801.P9725530492111839525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087698 (n + 3) + A071919 (n + 2)

end

end A187801.P9725530492111839525

noncomputable section

/-- A187801: Pascal's triangle construction method applied to {1,1,2} as an initial term.

Offset 2, canonical program `A187801.P9725530492111839525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1272 terms. -/
def A187801 (n : ℕ) : ℤ :=
  A187801.P9725530492111839525.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1272 terms. -/
def A187801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188029.P9852327037226438625

`∪[A188025(n+1)+2, A188025(n+1)]`
-/

namespace A188029.P9852327037226438625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188029.P9852327037226438625

noncomputable section

/-- A188029: Positions of 1 in A188027; complement of A188028.

Offset 1, canonical program `A188029.P9852327037226438625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188029 (n : ℕ) : ℤ :=
  (A188029.P9852327037226438625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188265.P1760849739698113654

`∪[A120753(n+1), A187975(n+1)]`
-/

namespace A188265.P1760849739698113654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188265.P1760849739698113654

noncomputable section

/-- A188265: Positions of 1 in A188398; complement of A188399.

Offset 1, canonical program `A188265.P1760849739698113654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188265 (n : ℕ) : ℤ :=
  (A188265.P1760849739698113654.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188470.P15419413521546564423

`A188467(A187950(n+1)+n)`
-/

namespace A188470.P15419413521546564423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (A187950 (n + 1) + (n : ℤ)).toNat

end

end A188470.P15419413521546564423

noncomputable section

/-- A188470: a(n) = [5r]-[nr]-[5r-nr], where r=(1+sqrt(5))/2 and []=floor.

Offset 1, canonical program `A188470.P15419413521546564423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188470 (n : ℕ) : ℤ :=
  A188470.P15419413521546564423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189659.P14804931919716832985

`eq[2, A122864(A006047(n))]+1`
-/

namespace A189659.P14804931919716832985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122864 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189659.P14804931919716832985

noncomputable section

/-- A189659: Positions of 1 in A064990; complement of A189658.

Offset 1, canonical program `A189659.P14804931919716832985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A189659 (n : ℕ) : ℤ :=
  (A189659.P14804931919716832985.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A189659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189817.P5095028548418174896

`eq[1, cos(A189816(n+1))]+1`
-/

namespace A189817.P5095028548418174896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A189816 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1

end

end A189817.P5095028548418174896

noncomputable section

/-- A189817: Positions of 0 in A189816; complement of A189818.

Offset 1, canonical program `A189817.P5095028548418174896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6050 terms. -/
def A189817 (n : ℕ) : ℤ :=
  (A189817.P5095028548418174896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6050 terms. -/
def A189817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190222.P6549821447653687319

`∩[A001742(n+1), A160337(n+1)]`
-/

namespace A190222.P6549821447653687319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190222.P6549821447653687319

noncomputable section

/-- A190222: Noncomposite numbers all of whose decimal digits are noncomposite numbers (1,2,3,5,7).

Offset 1, canonical program `A190222.P6549821447653687319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A190222 (n : ℕ) : ℤ :=
  (A190222.P6549821447653687319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A190222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190435.P4495769777369891294

`filter[A184659(n+1), A327174(#)]`
-/

namespace A190435.P4495769777369891294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A190435.P4495769777369891294

noncomputable section

/-- A190435: Positions of 3 in A190431.

Offset 1, canonical program `A190435.P4495769777369891294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5394 terms. -/
def A190435 (n : ℕ) : ℤ :=
  A190435.P4495769777369891294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5394 terms. -/
def A190435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190455.P12633995412954827223

`eq[1, A191329(A016825(n))+A078588(n)]`
-/

namespace A190455.P12633995412954827223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (A016825 n).toNat + A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190455.P12633995412954827223

noncomputable section

/-- A190455: Positions of 3 in A190451.

Offset 1, canonical program `A190455.P12633995412954827223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190455 (n : ℕ) : ℤ :=
  (A190455.P12633995412954827223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190700.P18144237897161414675

`eq[1, A190698(n+1)]+1`
-/

namespace A190700.P18144237897161414675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190700.P18144237897161414675

noncomputable section

/-- A190700: Positions of 1 in A190698.

Offset 1, canonical program `A190700.P18144237897161414675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A190700 (n : ℕ) : ℤ :=
  (A190700.P18144237897161414675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A190700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190701.P8397655334725418112

`eq[2, A190698(n+1)]+1`
-/

namespace A190701.P8397655334725418112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190701.P8397655334725418112

noncomputable section

/-- A190701: Positions of 2 in A190698.

Offset 1, canonical program `A190701.P8397655334725418112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190701 (n : ℕ) : ℤ :=
  (A190701.P8397655334725418112.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190702.P10150179771770399436

`eq[3, A190698(n+1)]+1`
-/

namespace A190702.P10150179771770399436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190702.P10150179771770399436

noncomputable section

/-- A190702: Positions of 3 in A190698.

Offset 1, canonical program `A190702.P10150179771770399436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190702 (n : ℕ) : ℤ :=
  (A190702.P10150179771770399436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190703.P3098781758247083285

`eq[4, A190698(n+2)]+2`
-/

namespace A190703.P3098781758247083285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A190703.P3098781758247083285

noncomputable section

/-- A190703: Positions of 4 in A190698.

Offset 1, canonical program `A190703.P3098781758247083285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1831 terms. -/
def A190703 (n : ℕ) : ℤ :=
  (A190703.P3098781758247083285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1831 terms. -/
def A190703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190757.P10981793899459881199

`gcd(A061447(10*(n+1)-5), A027941(n)*A106729(n)+1)`
-/

namespace A190757.P10981793899459881199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061447 (10 * (n + 1) - 5)) (A027941 n * A106729 n + 1)

end

end A190757.P10981793899459881199

noncomputable section

/-- A190757: Lucas Aurifeuillian primitive part A of Lucas(10*n - 5).

Offset 1, canonical program `A190757.P10981793899459881199`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190757 (n : ℕ) : ℤ :=
  (A190757.P10981793899459881199.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190781.P17856108577842530239

`gcd(A061447(10*(n+1)-5), A032908(n+1)*A106729(n)+1)`
-/

namespace A190781.P17856108577842530239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061447 (10 * (n + 1) - 5)) (A032908 (n + 1) * A106729 n + 1)

end

end A190781.P17856108577842530239

noncomputable section

/-- A190781: Lucas Aurifeuillian primitive part B of Lucas(10*n - 5).

Offset 1, canonical program `A190781.P17856108577842530239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190781 (n : ℕ) : ℤ :=
  (A190781.P17856108577842530239.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190781.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191483.P18427046693413308703

`4*A089269(n+1)`
-/

namespace A191483.P18427046693413308703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A089269 (n + 1)

end

end A191483.P18427046693413308703

noncomputable section

/-- A191483: Even discriminants of imaginary quadratic fields, negated.

Offset 1, canonical program `A191483.P18427046693413308703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089269, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191483 (n : ℕ) : ℤ :=
  A191483.P18427046693413308703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089269, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191906.P12727792690230933810

`A007956(n+2)%A001065(n+2)`
-/

namespace A191906.P12727792690230933810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007956 (n + 2)) (A001065 (n + 2))

end

end A191906.P12727792690230933810

noncomputable section

/-- A191906: The remainder of (product of proper divisors of n) mod (sum of proper divisors of n).

Offset 2, canonical program `A191906.P12727792690230933810`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191906 (n : ℕ) : ℤ :=
  A191906.P12727792690230933810.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191906.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192854.P480192498423683373

`eq[A183063(n+1)+A051951(n), A000007(n)]`
-/

namespace A192854.P480192498423683373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A051951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192854.P480192498423683373

noncomputable section

/-- A192854: Places n where tau(n) + tau(n+2) = tau(2*n+2).

Offset 1, canonical program `A192854.P480192498423683373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 545 terms. -/
def A192854 (n : ℕ) : ℤ :=
  (A192854.P480192498423683373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 545 terms. -/
def A192854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192868.P10087640679497259836

`A108144(n+1)-2`
-/

namespace A192868.P10087640679497259836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108144 (n + 1) - 2

end

end A192868.P10087640679497259836

noncomputable section

/-- A192868: Thin numbers: odd numbers k > 1 such that k+1 is a prime times a power of two.

Offset 1, canonical program `A192868.P10087640679497259836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192868 (n : ℕ) : ℤ :=
  A192868.P10087640679497259836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193291.P12186419772948378566

`A183063(A000045(n+1))`
-/

namespace A193291.P12186419772948378566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A000045 (n + 1)).toNat

end

end A193291.P12186419772948378566

noncomputable section

/-- A193291: Number of even divisors of Fibonacci(n).

Offset 1, canonical program `A193291.P12186419772948378566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193291 (n : ℕ) : ℤ :=
  A193291.P12186419772948378566.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193334.P16944727795109553516

`A183063(A000203(n+1))`
-/

namespace A193334.P16944727795109553516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A000203 (n + 1)).toNat

end

end A193334.P16944727795109553516

noncomputable section

/-- A193334: Number of even divisors of sigma(n).

Offset 1, canonical program `A193334.P16944727795109553516`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193334 (n : ℕ) : ℤ :=
  A193334.P16944727795109553516.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193386.P2341240866290404182

`A062821(n+1)-A193453(n+1)`
-/

namespace A193386.P2341240866290404182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1) - A193453 (n + 1)

end

end A193386.P2341240866290404182

noncomputable section

/-- A193386: Number of even divisors of phi(n).

Offset 1, canonical program `A193386.P2341240866290404182`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193386 (n : ℕ) : ℤ :=
  A193386.P2341240866290404182.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193386.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A194122.P1212420979446489230

`A194119(eq[0, A103516(n)])+A144394(n+4)`
-/

namespace A194122.P1212420979446489230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A144394 (n + 4)

end

end A194122.P1212420979446489230

noncomputable section

/-- A194122: Triangular array: T(n,k) = C(n+4,k) + C(n+4,k+1) + C(n+4,k+2) + C(n+4,k+3) + C(n+4,k+4), 0 <= k <= n.

Offset 0, canonical program `A194122.P1212420979446489230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6903 terms. -/
def A194122 (n : ℕ) : ℤ :=
  A194122.P1212420979446489230.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6903 terms. -/
def A194122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194123.P9267081841225222537

`abs(A104712(n+2)-A209518(n))`
-/

namespace A194123.P9267081841225222537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104712 (n + 2) - A209518 n|

end

end A194123.P9267081841225222537

noncomputable section

/-- A194123: Triangular array: T(n,k)=|C(n+2,k)-C(n+2,k+2)|, 0<=k<=n.

Offset 0, canonical program `A194123.P9267081841225222537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194123 (n : ℕ) : ℤ :=
  A194123.P9267081841225222537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194815.P14592877283953287193

`∑[A327177(n)]`
-/

namespace A194815.P14592877283953287193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194815.P14592877283953287193

noncomputable section

/-- A194815: Number of integers k in [1,n] such that {n*r+k*r} < {n*r-k*r}, where { } = fractional part and r=sqrt(2).

Offset 1, canonical program `A194815.P14592877283953287193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194815 (n : ℕ) : ℤ :=
  A194815.P14592877283953287193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194816.P12578202600685302847

`∑[1-A327177(n)]`
-/

namespace A194816.P12578202600685302847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A327177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194816.P12578202600685302847

noncomputable section

/-- A194816: Number of integers k in [1,n] such that {n*r+k*r} > {n*r-k*r}, where { } = fractional part and r=sqrt(2).

Offset 1, canonical program `A194816.P12578202600685302847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194816 (n : ℕ) : ℤ :=
  A194816.P12578202600685302847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195065.P14907772542944478463

`lt[n, A036044(n)]`
-/

namespace A195065.P14907772542944478463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195065.P14907772542944478463

noncomputable section

/-- A195065: Numbers n such that BCR(n) is greater than n, where BCR = binary-complement-and-reverse = A036044.

Offset 1, canonical program `A195065.P14907772542944478463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A195065 (n : ℕ) : ℤ :=
  (A195065.P14907772542944478463.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A195065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196274.P15919097305767155130

`A067970(n+1)/2`
-/

namespace A196274.P15919097305767155130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067970 (n + 1) : ℚ) / 2

end

end A196274.P15919097305767155130

noncomputable section

/-- A196274: Half of the gaps A067970 between odd nonprimes A014076.

Offset 1, canonical program `A196274.P15919097305767155130`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A196274.P15919097305767155130.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A199206.P10239576524448886382

`(1+A034939(n)²)/5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199206.P10239576524448886382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A034939 n ^ 2 : ℚ) / (5 ^ n : ℚ)

end

end A199206.P10239576524448886382

noncomputable section

/-- A199206: a(n) = (1+(A034939(n))^2)/5^n.

Offset 0, canonical program `A199206.P10239576524448886382`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199206 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A199206.P10239576524448886382.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A199206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A199716.P7143510606697811794

`∩[A046953(n+1), A272902(n+1)]`
-/

namespace A199716.P7143510606697811794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199716.P7143510606697811794

noncomputable section

/-- A199716: Numbers k such that 6k-5 and 6k-1 are both composite.

Offset 1, canonical program `A199716.P7143510606697811794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. -/
def A199716 (n : ℕ) : ℤ :=
  (A199716.P7143510606697811794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. -/
def A199716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199718.P15975727589693316819

`∩[A024898(n+2), A046954(n+2)+1]`
-/

namespace A199718.P15975727589693316819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046954 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199718.P15975727589693316819

noncomputable section

/-- A199718: Numbers k such that 6*k-5 is composite, but 6*k-1 is prime.

Offset 1, canonical program `A199718.P15975727589693316819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3083 terms. -/
def A199718 (n : ℕ) : ℤ :=
  (A199718.P15975727589693316819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3083 terms. -/
def A199718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199855.P14212829303038593170

`1-(a(n-1)-eq[A005369(n), A266666(n)])` with `a(0)=1`
-/

namespace A199855.P14212829303038593170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ))

end

end A199855.P14212829303038593170

noncomputable section

/-- A199855: Inverse permutation to A210521.

Offset 1, canonical program `A199855.P14212829303038593170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4951 terms. -/
def A199855 (n : ℕ) : ℤ :=
  A199855.P14212829303038593170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4951 terms. -/
def A199855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201147.P7622297176965063272

`∩[A063642(n+1), A065966(n+1)]`
-/

namespace A201147.P7622297176965063272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201147.P7622297176965063272

noncomputable section

/-- A201147: Numbers m such that m, m-1 and m-2 are 1,2,3-almost primes respectively.

Offset 1, canonical program `A201147.P7622297176965063272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. -/
def A201147 (n : ℕ) : ℤ :=
  (A201147.P7622297176965063272.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. -/
def A201147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202137.P10979129982781156413

`eq[A010051(A103214(n)), A133985(n)]`
-/

namespace A202137.P10979129982781156413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A103214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202137.P10979129982781156413

noncomputable section

/-- A202137: Numbers k such that 24k + 1 is neither square nor prime.

Offset 1, canonical program `A202137.P10979129982781156413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2881 terms. -/
def A202137 (n : ℕ) : ℤ :=
  (A202137.P10979129982781156413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2881 terms. -/
def A202137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202268.P10475302286849161585

`A084984(A248910(n+1)+1)`
-/

namespace A202268.P10475302286849161585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (A248910 (n + 1) + 1).toNat

end

end A202268.P10475302286849161585

noncomputable section

/-- A202268: Numbers in which all digits are neither primes nor zero, i.e., are members of (1, 4, 6, 8, 9).

Offset 1, canonical program `A202268.P10475302286849161585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. -/
def A202268 (n : ℕ) : ℤ :=
  A202268.P10475302286849161585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. -/
def A202268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203463.P15275112682331819246

`lt[A065620(and(n, 2*n)/2), 1]`
-/

namespace A203463.P15275112682331819246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (SequenceMachineLib.roundAway ((Nat.land n (2 * n) : ℚ) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A203463.P15275112682331819246

noncomputable section

/-- A203463: Where Golay-Rudin-Shapiro sequence A020985 is positive.

Offset 1, canonical program `A203463.P15275112682331819246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203463 (n : ℕ) : ℤ :=
  (A203463.P15275112682331819246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203468.P281610576651752722

`eq[A035214(n), A325334(n)]`
-/

namespace A203468.P281610576651752722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203468.P281610576651752722

noncomputable section

/-- A203468: Numbers that have a unique triangular proper divisor greater than 1.

Offset 1, canonical program `A203468.P281610576651752722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. -/
def A203468 (n : ℕ) : ℤ :=
  (A203468.P281610576651752722.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. -/
def A203468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204014.P10436582750078122122

`A049581(n)%A008621(A115281(n))+1`
-/

namespace A204014.P10436582750078122122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049581 n) (A008621 (A115281 n).toNat) + 1

end

end A204014.P10436582750078122122

noncomputable section

/-- A204014: Symmetric matrix based by antidiagonals, based on f(i,j)=min{1+(j mod i), 1+( i mod j)}.

Offset 1, canonical program `A204014.P10436582750078122122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204014 (n : ℕ) : ℤ :=
  A204014.P10436582750078122122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204201.P4812556110496593180

`2*A054143(n)-A008949(n)`
-/

namespace A204201.P4812556110496593180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054143 n - A008949 n

end

end A204201.P4812556110496593180

noncomputable section

/-- A204201: Triangle based on (0,1/3,1) averaging array.

Offset 1, canonical program `A204201.P4812556110496593180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204201 (n : ℕ) : ℤ :=
  A204201.P4812556110496593180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204202.P1024099258740543106

`A054143(n)+A008949(n)`
-/

namespace A204202.P1024099258740543106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + A008949 n

end

end A204202.P1024099258740543106

noncomputable section

/-- A204202: Triangle based on (0,2/3,1) averaging array.

Offset 1, canonical program `A204202.P1024099258740543106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204202 (n : ℕ) : ℤ :=
  A204202.P1024099258740543106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204203.P18355877739269611644

`2*A054143(n)-A007318(n)`
-/

namespace A204203.P18355877739269611644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054143 n - A007318 n

end

end A204203.P18355877739269611644

noncomputable section

/-- A204203: Triangle based on (0,1/4,1) averaging array.

Offset 1, canonical program `A204203.P18355877739269611644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204203 (n : ℕ) : ℤ :=
  A204203.P18355877739269611644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204232.P14925845568226415786

`eq[1, ∑{e}[A030101(n), #]]`
-/

namespace A204232.P14925845568226415786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204232.P14925845568226415786

noncomputable section

/-- A204232: Numbers whose binary reversal is prime.

Offset 1, canonical program `A204232.P14925845568226415786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A204232 (n : ℕ) : ℤ :=
  (A204232.P14925845568226415786.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A204232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205302.P14954641894090934178

`A065091(eq[1, A205510(n+1)]+1)`
-/

namespace A205302.P14954641894090934178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205302.P14954641894090934178

noncomputable section

/-- A205302: Greater of Hamming's twin primes.

Offset 1, canonical program `A205302.P14954641894090934178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A205302 (n : ℕ) : ℤ :=
  A205302.P14954641894090934178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A205302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205547.P16237328813757143675

`A002260(A205559(n+1))`
-/

namespace A205547.P16237328813757143675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205559 (n + 1)).toNat

end

end A205547.P16237328813757143675

noncomputable section

/-- A205547: The number j such that 3 divides prime(k)-prime(j), where k(n)=A205560(n).

Offset 1, canonical program `A205547.P16237328813757143675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205547 (n : ℕ) : ℤ :=
  A205547.P16237328813757143675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206286.P5854580810556654288

`record[A018252(n+2)/A077649(n+1)]`
-/

namespace A206286.P5854580810556654288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) / (A077649 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206286.P5854580810556654288

noncomputable section

/-- A206286: Nonprime numbers starting with a digit 1.

Offset 1, canonical program `A206286.P5854580810556654288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2182 terms. -/
def A206286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A206286.P5854580810556654288.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2182 terms. -/
def A206286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208609.P10537684362394957244

`2*A208337(n+1)-A209127(n+1)`
-/

namespace A208609.P10537684362394957244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208337 (n + 1) - A209127 (n + 1)

end

end A208609.P10537684362394957244

noncomputable section

/-- A208609: Triangle of coefficients of polynomials v(n,x) jointly generated with A208608; see the Formula section.

Offset 1, canonical program `A208609.P10537684362394957244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208609 (n : ℕ) : ℤ :=
  A208609.P10537684362394957244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208659.P4846878712330380114

`A029653(n)*A059268(n)`
-/

namespace A208659.P4846878712330380114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n * A059268 n

end

end A208659.P4846878712330380114

noncomputable section

/-- A208659: Triangle of coefficients of polynomials v(n,x) jointly generated with A185045; see the Formula section.

Offset 1, canonical program `A208659.P4846878712330380114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208659 (n : ℕ) : ℤ :=
  A208659.P4846878712330380114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208773.P6564407814693536226

`A208723(n+1)+A000358(n+1)`
-/

namespace A208773.P6564407814693536226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208723 (n + 1) + A000358 (n + 1)

end

end A208773.P6564407814693536226

noncomputable section

/-- A208773: Number of n-bead necklaces labeled with numbers 1..4 not allowing reversal, with no adjacent beads differing by more than 1.

Offset 1, canonical program `A208773.P6564407814693536226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A208773 (n : ℕ) : ℤ :=
  A208773.P6564407814693536226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A208773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209624.P7224047817522038513

`p?[(n+1)*(A175078(n+1)-1)]`
-/

namespace A209624.P7224047817522038513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A175078 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209624.P7224047817522038513

noncomputable section

/-- A209624: Primes separated from their previous adjacent primes by a prime number of successive composites.

Offset 1, canonical program `A209624.P7224047817522038513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A209624 (n : ℕ) : ℤ :=
  A209624.P7224047817522038513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A209624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209697.P9498463174537726618

`A121462(n+1)+A208511(n+1)-A160232(n+1)`
-/

namespace A209697.P9498463174537726618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121462 (n + 1) + (A208511 (n + 1) - A160232 (n + 1))

end

end A209697.P9498463174537726618

noncomputable section

/-- A209697: Triangle of coefficients of polynomials u(n,x) jointly generated with A209698; see the Formula section.

Offset 1, canonical program `A209697.P9498463174537726618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209697 (n : ℕ) : ℤ :=
  A209697.P9498463174537726618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210256.P198618298556542039

`Δ[A051201(n+1)]`
-/

namespace A210256.P198618298556542039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210256.P198618298556542039

noncomputable section

/-- A210256: Differences of the sum of distinct values of {floor(n/k), k=1,...,n}.

Offset 1, canonical program `A210256.P198618298556542039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210256 (n : ℕ) : ℤ :=
  A210256.P198618298556542039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210882.P18029080820007784071

`A136548(n+1)+A013632(n)-A000038(n)`
-/

namespace A210882.P18029080820007784071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1) + (A013632 n - A000038 n)

end

end A210882.P18029080820007784071

noncomputable section

/-- A210882: a(1)=1, a(n)=a(n-1)-1 if a(n-1)-1 > 0 is not in the set {a(k)| 1<=k<n}, else a(n)=p, where p is the least prime number not yet in the sequence.

Offset 1, canonical program `A210882.P18029080820007784071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A210882 (n : ℕ) : ℤ :=
  A210882.P18029080820007784071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A210882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211273.P13713686683909964253

`A091627(2*(n+1))-n`
-/

namespace A211273.P13713686683909964253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091627 (2 * (n + 1)) - (n : ℤ)

end

end A211273.P13713686683909964253

noncomputable section

/-- A211273: Number of integer pairs (x,y) such that 0<x<=y<=n and x*y<=2n.

Offset 1, canonical program `A211273.P13713686683909964253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A211273 (n : ℕ) : ℤ :=
  A211273.P13713686683909964253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A211273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211339.P2984226944041453084

`∑[A110654(A063725(n+1))]`
-/

namespace A211339.P2984226944041453084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A063725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211339.P2984226944041453084

noncomputable section

/-- A211339: Number of integer pairs (x,y) such that 1 < x <= y <= n and x^2 + y^2 <= n.

Offset 1, canonical program `A211339.P2984226944041453084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211339 (n : ℕ) : ℤ :=
  A211339.P2984226944041453084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212671.P4871280416965862351

`A001037(n)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212671.P4871280416965862351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001037 n).toNat

end

end A212671.P4871280416965862351

noncomputable section

/-- A212671: A001037(n)!.

Offset 0, canonical program `A212671.P4871280416965862351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212671 (n : ℕ) : ℤ :=
  (A212671.P4871280416965862351.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213514.P4233426757645372914

`A233583(A002808(n+1))%A073256(n+1)`
-/

namespace A213514.P4233426757645372914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A002808 (n + 1)).toNat) (A073256 (n + 1))

end

end A213514.P4233426757645372914

noncomputable section

/-- A213514: For composite n, remainder of n - 1 when divided by phi(n), where phi(n) is the totient function (A000010).

Offset 1, canonical program `A213514.P4233426757645372914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A213514 (n : ℕ) : ℤ :=
  A213514.P4233426757645372914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A213514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213595.P12443528902880694475

`A048784(n+1)/2^A213594(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213595.P12443528902880694475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048784 (n + 1) : ℚ) / (2 : ℚ) ^ (A213594 (n + 1) : ℤ)

end

end A213595.P12443528902880694475

noncomputable section

/-- A213595: a(n) = A048784(n) / 2^A213594(n).

Offset 1, canonical program `A213595.P12443528902880694475`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213595 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213595.P12443528902880694475.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214126.P17152753333875042592

`A120562(A004760(n+1))`
-/

namespace A214126.P17152753333875042592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A004760 (n + 1)).toNat

end

end A214126.P17152753333875042592

noncomputable section

/-- A214126: a(2n)=a(n-1)+a(n) and a(2n+1)=a(n+1) for n>=1, with a(0)=a(1)=1.

Offset 0, canonical program `A214126.P17152753333875042592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A214126 (n : ℕ) : ℤ :=
  A214126.P17152753333875042592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A214126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214284.P5212717974546388228

`A035187(A028310(n))%2`
-/

namespace A214284.P5212717974546388228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035187 (A028310 n).toNat) 2

end

end A214284.P5212717974546388228

noncomputable section

/-- A214284: Characteristic function of squares or five times squares.

Offset 0, canonical program `A214284.P5212717974546388228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214284 (n : ℕ) : ℤ :=
  A214284.P5212717974546388228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214361.P18114527469717323411

`(-1)^n*A124449(n+1)`
-/

namespace A214361.P18114527469717323411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A124449 (n + 1)

end

end A214361.P18114527469717323411

noncomputable section

/-- A214361: Expansion of c(q^2) * (c(q) + 2 * c(q^4)) / 9 in powers of q where c() is a cubic AGM theta function.

Offset 1, canonical program `A214361.P18114527469717323411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214361 (n : ℕ) : ℤ :=
  A214361.P18114527469717323411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214870.P14474937078078779627

`A045901(A060734(n+1))`
-/

namespace A214870.P14474937078078779627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045901 (A060734 (n + 1)).toNat

end

end A214870.P14474937078078779627

noncomputable section

/-- A214870: Natural numbers placed in table T(n,k) layer by layer. The order of placement: at the beginning filled odd places of layer clockwise, next - even places counterclockwise. T(n,k) read by antidiagonals.

Offset 1, canonical program `A214870.P14474937078078779627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A214870 (n : ℕ) : ℤ :=
  A214870.P14474937078078779627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A214870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215350.P655104726170058786

`∪[A141853(n+1), A215279(n+1)]`
-/

namespace A215350.P655104726170058786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215350.P655104726170058786

noncomputable section

/-- A215350: Primes congruent to {2, 3, 4, 6} mod 11.

Offset 1, canonical program `A215350.P655104726170058786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215350 (n : ℕ) : ℤ :=
  (A215350.P655104726170058786.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215382.P13591723540297022784

`∪[A141853(n+1), A215134(n+1)]`
-/

namespace A215382.P13591723540297022784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215382.P13591723540297022784

noncomputable section

/-- A215382: Primes congruent to {1, 2, 3, 6} mod 11.

Offset 1, canonical program `A215382.P13591723540297022784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215382 (n : ℕ) : ℤ :=
  (A215382.P13591723540297022784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215523.P5248230795343589178

`A005097(∑[A091237(n+1)])`
-/

namespace A215523.P5248230795343589178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215523.P5248230795343589178

noncomputable section

/-- A215523: Slowest increasing sequence of alternate-parity integers m such that 2m+1 is prime.

Offset 1, canonical program `A215523.P5248230795343589178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215523 (n : ℕ) : ℤ :=
  A215523.P5248230795343589178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216301.P11893625468491235529

`∩[A008471(n+1), A153308(n+1)]`
-/

namespace A216301.P11893625468491235529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216301.P11893625468491235529

noncomputable section

/-- A216301: Numbers k such that 10k+7 is composite but 10k+1, 10k+3, 10k+9 are all prime.

Offset 1, canonical program `A216301.P11893625468491235529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A216301 (n : ℕ) : ℤ :=
  (A216301.P11893625468491235529.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A216301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216302.P95029662313042903

`∩[A008471(n+1), A153380(n+1)]`
-/

namespace A216302.P95029662313042903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216302.P95029662313042903

noncomputable section

/-- A216302: Numbers k such that 10k+9 is composite but 10k+1, 10k+3, 10k+7 are all prime.

Offset 1, canonical program `A216302.P95029662313042903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A216302 (n : ℕ) : ℤ :=
  (A216302.P95029662313042903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A216302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216780.P3237457974216524300

`eq[1, A361024(n+1)]+1`
-/

namespace A216780.P3237457974216524300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216780.P3237457974216524300

noncomputable section

/-- A216780: Numbers n such that numerator(sigma(n)/n) and denominator(sigma(n)/n) are both odd.

Offset 1, canonical program `A216780.P3237457974216524300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3944 terms. -/
def A216780 (n : ℕ) : ℤ :=
  (A216780.P3237457974216524300.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3944 terms. -/
def A216780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217029.P14938499860737606038

`A003990(n+1)/A003983(n+1)`
-/

namespace A217029.P14938499860737606038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A003983 (n + 1) : ℚ)

end

end A217029.P14938499860737606038

noncomputable section

/-- A217029: Array T(i,j) read by antidiagonals, where T(i,j) is the height of i/j, that is max(|m|,|n|) with m/n = i/j and gcd(m, n) = 1.

Offset 1, canonical program `A217029.P14938499860737606038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A217029 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A217029.P14938499860737606038.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A217029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217038.P18316143875162456827

`A112526(n)+a(n-1)` with `a(0)=0`
-/

namespace A217038.P18316143875162456827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A112526 n + a (n - 1)

end

end A217038.P18316143875162456827

noncomputable section

/-- A217038: Number of powerful numbers < n.

Offset 1, canonical program `A217038.P18316143875162456827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217038 (n : ℕ) : ℤ :=
  A217038.P18316143875162456827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217659.P12603984998292989845

`A151800(A185934(n+1))`
-/

namespace A217659.P12603984998292989845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A185934 (n + 1)).toNat

end

end A217659.P12603984998292989845

noncomputable section

/-- A217659: Larger of two consecutive primes which both equal 1 (mod 3).

Offset 1, canonical program `A217659.P12603984998292989845`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, A185934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A217659 (n : ℕ) : ℤ :=
  A217659.P12603984998292989845.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, A185934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A217659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217854.P9671442733473030747

`A158387(n+1)*A062758(n+1)`
-/

namespace A217854.P9671442733473030747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 (n + 1) * A062758 (n + 1)

end

end A217854.P9671442733473030747

noncomputable section

/-- A217854: Product of all divisors of n, positive or negative.

Offset 1, canonical program `A217854.P9671442733473030747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217854 (n : ℕ) : ℤ :=
  A217854.P9671442733473030747.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A219009.P4084313568037727888

`∑{d}[n+1, A007427(#)*A063775((n+1)/#)]`
-/

namespace A219009.P4084313568037727888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A063775 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A219009.P4084313568037727888

noncomputable section

/-- A219009: Coefficients of the Dirichlet series for zeta(4s)/zeta(s).

Offset 1, canonical program `A219009.P4084313568037727888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219009 (n : ℕ) : ℤ :=
  A219009.P4084313568037727888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220846.P4568934254118068041

`∑{d}[n+1, #]*A007956(n+1)`
-/

namespace A220846.P4568934254118068041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A007956 (n + 1)

end

end A220846.P4568934254118068041

noncomputable section

/-- A220846: a(n) = sum_(d|n) ((product_(d|n) d) / d).

Offset 1, canonical program `A220846.P4568934254118068041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A220846 (n : ℕ) : ℤ :=
  A220846.P4568934254118068041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A220846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220968.P10713292117237987633

`eq[1, A030229(n+1)%2]+1`
-/

namespace A220968.P10713292117237987633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030229 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A220968.P10713292117237987633

noncomputable section

/-- A220968: Positions in A030229 where odd terms occur.

Offset 1, canonical program `A220968.P10713292117237987633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6650 terms. -/
def A220968 (n : ℕ) : ℤ :=
  (A220968.P10713292117237987633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6650 terms. -/
def A220968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220969.P3764813406142439732

`eq[0, A030229(n+2)%2]+2`
-/

namespace A220969.P3764813406142439732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030229 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A220969.P3764813406142439732

noncomputable section

/-- A220969: Positions in A030229 where even terms occur.

Offset 1, canonical program `A220969.P3764813406142439732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3350 terms. -/
def A220969 (n : ℕ) : ℤ :=
  (A220969.P3764813406142439732.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3350 terms. -/
def A220969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221309.P7335009920877620027

`∩[A123608(n+1)+1, A123608(n+1)]`
-/

namespace A221309.P7335009920877620027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123608 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221309.P7335009920877620027

noncomputable section

/-- A221309: Numbers m such that no subset of {m-1, m, m+1} sums up to a prime number.

Offset 1, canonical program `A221309.P7335009920877620027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6656 terms. -/
def A221309 (n : ℕ) : ℤ :=
  (A221309.P7335009920877620027.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6656 terms. -/
def A221309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222763.P9947241186755586665

`(n+1)*A046736(n+2)`
-/

namespace A222763.P9947241186755586665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A046736 (n + 2)

end

end A222763.P9947241186755586665

noncomputable section

/-- A222763: Number of n X 2 0..1 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

Offset 0, canonical program `A222763.P9947241186755586665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046736, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222763 (n : ℕ) : ℤ :=
  A222763.P9947241186755586665.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046736, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225467.P4528055149051954675

`A059268(n)²*A225469(n)`
-/

namespace A225467.P4528055149051954675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A225469 n

end

end A225467.P4528055149051954675

noncomputable section

/-- A225467: Triangle read by rows, T(n, k) = 4^k*S_4(n, k) where S_m(n, k) are the Stirling-Frobenius subset numbers of order m; n >= 0, k >= 0.

Offset 0, canonical program `A225467.P4528055149051954675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. -/
def A225467 (n : ℕ) : ℤ :=
  A225467.P4528055149051954675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. -/
def A225467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225531.P17187753474832379472

`floor(A049632(n)/2)+1`
-/

namespace A225531.P17187753474832379472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049632 n : ℚ) / 2⌋ + 1

end

end A225531.P17187753474832379472

noncomputable section

/-- A225531: Number of ordered pairs (i, j) with i, j >= 0, i + j <= n and gcd(i, j) <= 1.

Offset 0, canonical program `A225531.P17187753474832379472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A225531 (n : ℕ) : ℤ :=
  A225531.P17187753474832379472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A225531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226084.P639156218572003738

`(A189835(n+1)-A346759(n+1))/2`
-/

namespace A226084.P639156218572003738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189835 (n + 1) - A346759 (n + 1) : ℚ) / 2

end

end A226084.P639156218572003738

noncomputable section

/-- A226084: Number of partitions of n with Cookie Monster number 2.

Offset 1, canonical program `A226084.P639156218572003738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226084 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A226084.P639156218572003738.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226381.P1779935612286312944

`eq[A053000(n)*A151800(n), A139693(n)]`
-/

namespace A226381.P1779935612286312944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n * A151800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226381.P1779935612286312944

noncomputable section

/-- A226381: Numbers n such that the distance from n to the next prime is the same as the distance from n^2 to the next prime.

Offset 1, canonical program `A226381.P1779935612286312944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A226381 (n : ℕ) : ℤ :=
  (A226381.P1779935612286312944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A226381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226600.P13950365899487578283

`A061201(n+1)+A003215(n)-A007425(n+1)`
-/

namespace A226600.P13950365899487578283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 (n + 1) + (A003215 n - A007425 (n + 1))

end

end A226600.P13950365899487578283

noncomputable section

/-- A226600: Number of ordered triples (i,j,k) with i*j*k <= n and i,j,k >= 0.

Offset 0, canonical program `A226600.P13950365899487578283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226600 (n : ℕ) : ℤ :=
  A226600.P13950365899487578283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226953.P559492349388349855

`eq[A163109(n+1)², A062821(n+1)]+1`
-/

namespace A226953.P559492349388349855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226953.P559492349388349855

noncomputable section

/-- A226953: Leap year numbers: numbers n such that tau(phi(n)) = phi(tau(n))^2, where tau(n) is the number of divisors of n and phi(n) the Euler totient function.

Offset 1, canonical program `A226953.P559492349388349855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A226953 (n : ℕ) : ℤ :=
  (A226953.P559492349388349855.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A226953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227127.P510515048403085324

`gcd(n+1, C(5, n²))*Δ[A028815(n)]`
-/

namespace A227127.P510515048403085324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (Nat.choose 5 (n ^ 2)) : ℤ) * (f1 (n + 1) - f1 n)

end

end A227127.P510515048403085324

noncomputable section

/-- A227127: The Akiyama-Tanigawa algorithm applied to 1/(1,2,3,5,... old prime numbers). Reduced numerators of the second row.

Offset 0, canonical program `A227127.P510515048403085324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227127 (n : ℕ) : ℤ :=
  A227127.P510515048403085324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227396.P8334619770337946253

`A074909(n)-A127648(A316669(n+1))`
-/

namespace A227396.P8334619770337946253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A127648 (A316669 (n + 1)).toNat

end

end A227396.P8334619770337946253

noncomputable section

/-- A227396: Triangle A074909(n) with the first column equal to 1 followed by -A000027(n) instead of A000012.

Offset 0, canonical program `A227396.P8334619770337946253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227396 (n : ℕ) : ℤ :=
  A227396.P8334619770337946253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227501.P13056102669558752893

`(n%3)!*A227128(n+1)`
-/

namespace A227501.P13056102669558752893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 3) : ℤ) * A227128 (n + 1)

end

end A227501.P13056102669558752893

noncomputable section

/-- A227501: Number of non-congruent solutions of x^2 - xy + y^2 == 1 (mod n).

Offset 1, canonical program `A227501.P13056102669558752893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227501 (n : ℕ) : ℤ :=
  A227501.P13056102669558752893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227756.P7600126737696958243

`p?[A141545(n+1)-1]`
-/

namespace A227756.P7600126737696958243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141545 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227756.P7600126737696958243

noncomputable section

/-- A227756: Primes p such that antisigma(p) = antisigma(p+1) + 12, where antisigma = A024816.

Offset 1, canonical program `A227756.P7600126737696958243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2218 terms. -/
def A227756 (n : ℕ) : ℤ :=
  A227756.P7600126737696958243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2218 terms. -/
def A227756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227921.P15568228381888625967

`filter[A093696(n+1), A093719(#)]`
-/

namespace A227921.P15568228381888625967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A227921.P15568228381888625967

noncomputable section

/-- A227921: Odd odious numbers (A000069), all divisors of which are odious.

Offset 1, canonical program `A227921.P15568228381888625967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4692 terms. -/
def A227921 (n : ℕ) : ℤ :=
  A227921.P15568228381888625967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4692 terms. -/
def A227921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229341.P12246436327909898701

`A000005(A003415(n+2))`
-/

namespace A229341.P12246436327909898701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003415 (n + 2)).toNat

end

end A229341.P12246436327909898701

noncomputable section

/-- A229341: a(n) = tau(n'), the number of divisors of the arithmetic derivative of n.

Offset 2, canonical program `A229341.P12246436327909898701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229341 (n : ℕ) : ℤ :=
  A229341.P12246436327909898701.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230217.P14626932815808286926

`p?[A023210(n+1)+6]-6`
-/

namespace A230217.P14626932815808286926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6

end

end A230217.P14626932815808286926

noncomputable section

/-- A230217: List of those primes p with p + 6 and 3*p + 8 also prime.

Offset 1, canonical program `A230217.P14626932815808286926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2684 terms. -/
def A230217 (n : ℕ) : ℤ :=
  A230217.P14626932815808286926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2684 terms. -/
def A230217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230404.P3760350599277947129

`A230403(2*(n+1))`
-/

namespace A230404.P3760350599277947129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (2 * (n + 1))

end

end A230404.P3760350599277947129

noncomputable section

/-- A230404: a(n) = the largest k such that (k+1)! divides 2n; the number of trailing zeros in the factorial base representation of even numbers.

Offset 1, canonical program `A230404.P3760350599277947129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230403, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230404 (n : ℕ) : ℤ :=
  A230404.P3760350599277947129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230403, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230846.P382823846826996037

`1+A075526(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230846.P382823846826996037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A075526 n

end

end A230846.P382823846826996037

noncomputable section

/-- A230846: 1 + A075526(n).

Offset 1, canonical program `A230846.P382823846826996037`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A075526(n)` (program `A230846.P382823846826996037`, by `A230846.P382823846826996037.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A230846 (n : ℕ) : ℤ :=
  A230846.P382823846826996037.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A075526(n)` (program `A230846.P382823846826996037`, by `A230846.P382823846826996037.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A230846.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A231232.P3424992460991075841

`A000040(A076297(n+1))`
-/

namespace A231232.P3424992460991075841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A076297 (n + 1)).toNat

end

end A231232.P3424992460991075841

noncomputable section

/-- A231232: Primes p = prime(k) such that p + 2*k is prime.

Offset 1, canonical program `A231232.P3424992460991075841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A231232 (n : ℕ) : ℤ :=
  A231232.P3424992460991075841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A231232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232437.P68544861243217390

`eq[2, A000005(A248909(n+1))]+1`
-/

namespace A232437.P68544861243217390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A248909 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232437.P68544861243217390

noncomputable section

/-- A232437: Numbers whose square is expressible in only one way as x^2+xy+y^2, with x and y > 0.

Offset 1, canonical program `A232437.P68544861243217390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4712 terms. -/
def A232437 (n : ℕ) : ℤ :=
  (A232437.P68544861243217390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4712 terms. -/
def A232437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232745.P11759041676394614836

`record[Δ[(A232744(n+1)/2)²]]`
-/

namespace A232745.P11759041676394614836
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A232744 (n + 1) : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232745.P11759041676394614836

noncomputable section

/-- A232745: Numbers k for which the largest m such that m! divides k is even.

Offset 1, canonical program `A232745.P11759041676394614836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5562 terms. -/
def A232745 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A232745.P11759041676394614836.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5562 terms. -/
def A232745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233286.P14086924426959048452

`A233285(n+1)-1`
-/

namespace A233286.P14086924426959048452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233285 (n + 1) - 1

end

end A233286.P14086924426959048452

noncomputable section

/-- A233286: Number of trailing zeros in the factorial base representation of n-th Fibonacci number.

Offset 1, canonical program `A233286.P14086924426959048452`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233286 (n : ℕ) : ℤ :=
  A233286.P14086924426959048452.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A233345.P582782782341846025

`∩[A011540(n+1), A109303(n+1)]`
-/

namespace A233345.P582782782341846025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233345.P582782782341846025

noncomputable section

/-- A233345: Numbers having at least one digit 0 and at least two identical digits (which may be two 0's), in their decimal expansion.

Offset 1, canonical program `A233345.P582782782341846025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A233345 (n : ℕ) : ℤ :=
  (A233345.P582782782341846025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A233345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234648.P5813461578857952792

`A225822(n+1)+(-1)^(n+1)`
-/

namespace A234648.P5813461578857952792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225822 (n + 1) + (-1) ^ (n + 1)

end

end A234648.P5813461578857952792

noncomputable section

/-- A234648: Even sums of 2 consecutive odious numbers (A000069).

Offset 1, canonical program `A234648.P5813461578857952792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A225822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234648 (n : ℕ) : ℤ :=
  A234648.P5813461578857952792.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A225822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234648.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A234852.P16185758610676893289

`A000720(A234695(n+1))`
-/

namespace A234852.P16185758610676893289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A234695 (n + 1)).toNat

end

end A234852.P16185758610676893289

noncomputable section

/-- A234852: Indices k of primes p=prime(k) such that prime(p)-p+1 is prime.

Offset 1, canonical program `A234852.P16185758610676893289`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234852 (n : ℕ) : ℤ :=
  A234852.P16185758610676893289.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235143.P16098229146506641936

`2*eq[2, A063725(A001481(n+1))]`
-/

namespace A235143.P16098229146506641936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A001481 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235143.P16098229146506641936

noncomputable section

/-- A235143: Positions of -2 in A235141, the first differences of A234300.

Offset 1, canonical program `A235143.P16098229146506641936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1533 terms. -/
def A235143 (n : ℕ) : ℤ :=
  (A235143.P16098229146506641936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1533 terms. -/
def A235143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236575.P12514269811901278447

`A000720(A013929(n+2))-A000720(A013929(n+1))`
-/

namespace A236575.P12514269811901278447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A013929 (n + 2)).toNat - A000720 (A013929 (n + 1)).toNat

end

end A236575.P12514269811901278447

noncomputable section

/-- A236575: Number of primes between successive numbers that are not squarefree.

Offset 1, canonical program `A236575.P12514269811901278447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236575 (n : ℕ) : ℤ :=
  A236575.P12514269811901278447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A237124.P1225317986327375735

`A033184(n+1)-A059365(n+2)%A039599(n)`
-/

namespace A237124.P1225317986327375735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1) - Int.tmod (A059365 (n + 2)) (A039599 n)

end

end A237124.P1225317986327375735

noncomputable section

/-- A237124: Triangle of numbers related to Catalan numbers (A000108).

Offset 0, canonical program `A237124.P1225317986327375735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 496 terms. -/
def A237124 (n : ℕ) : ℤ :=
  A237124.P1225317986327375735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 496 terms. -/
def A237124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237349.P13854550475832125326

`∑[A211776(n+1)]`
-/

namespace A237349.P13854550475832125326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237349.P13854550475832125326

noncomputable section

/-- A237349: a(n) = Sum_{i=1..n} ( Product_{k|i} d(k) ), where d(n) = A000005(n).

Offset 1, canonical program `A237349.P13854550475832125326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237349 (n : ℕ) : ℤ :=
  A237349.P13854550475832125326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238013.P18117388732455638620

`A237452(n+1)+1`
-/

namespace A238013.P18117388732455638620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237452 (n + 1) + 1

end

end A238013.P18117388732455638620

noncomputable section

/-- A238013: List n copies of each k in {1,2,...,n}, for n=1,2,3,...

Offset 1, canonical program `A238013.P18117388732455638620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A237452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238013 (n : ℕ) : ℤ :=
  A238013.P18117388732455638620.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A237452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A238013.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A239114.P10150466013173584691

`A001511((A014076(n+1)+1)/2)`
-/

namespace A239114.P10150466013173584691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A014076 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A239114.P10150466013173584691

noncomputable section

/-- A239114: Exponent of 2 in prime factorization (i.e., 2-adic valuation) of odd nonprimes A014076(n) + 1.

Offset 1, canonical program `A239114.P10150466013173584691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239114 (n : ℕ) : ℤ :=
  A239114.P10150466013173584691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239114.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239732.P10526106354442783034

`∩[A023207(n+1), A023233(n+1)]`
-/

namespace A239732.P10526106354442783034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239732.P10526106354442783034

noncomputable section

/-- A239732: Primes p such that 2p+9 and 9p+2 are both prime.

Offset 1, canonical program `A239732.P10526106354442783034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239732 (n : ℕ) : ℤ :=
  (A239732.P10526106354442783034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240680.P8776622975220520957

`p?[A008471(n+1)]`
-/

namespace A240680.P8776622975220520957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240680.P8776622975220520957

noncomputable section

/-- A240680: Primes p such that p*10+k is prime for exactly three values of the digit k.

Offset 1, canonical program `A240680.P8776622975220520957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240680 (n : ℕ) : ℤ :=
  A240680.P8776622975220520957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240839.P18193742884803591972

`∩[A030431(n+1), A271043(n+1)]`
-/

namespace A240839.P18193742884803591972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240839.P18193742884803591972

noncomputable section

/-- A240839: Both n and prime(n) are primes congruent to 3 (mod 10).

Offset 1, canonical program `A240839.P18193742884803591972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A240839 (n : ℕ) : ℤ :=
  (A240839.P18193742884803591972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A240839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240960.P3834821827547813831

`filter[A062972(n+1), A296211(#)]`
-/

namespace A240960.P3834821827547813831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A240960.P3834821827547813831

noncomputable section

/-- A240960: Numbers m such that sigma(m) - phi(m) = tau(m)^omega(m), where sigma=A000203, phi=A000010, tau=A000005 and omega=A001221.

Offset 1, canonical program `A240960.P3834821827547813831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240960 (n : ℕ) : ℤ :=
  A240960.P3834821827547813831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241543.P17870996406380725953

`gcd(xor(1, -n), ∑[n])*A089408(n)`
-/

namespace A241543.P17870996406380725953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) * A089408 n

end

end A241543.P17870996406380725953

noncomputable section

/-- A241543: a(n) = A241477(n, n).

Offset 0, canonical program `A241543.P17870996406380725953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A241543 (n : ℕ) : ℤ :=
  A241543.P17870996406380725953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A241543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242214.P18435104598137080333

`filter[A291639(n+1), A168184(#)]`
-/

namespace A242214.P18435104598137080333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A242214.P18435104598137080333

noncomputable section

/-- A242214: Numbers n not divisible by 10 such that n^3 contains at least one 0.

Offset 1, canonical program `A242214.P18435104598137080333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A242214 (n : ℕ) : ℤ :=
  A242214.P18435104598137080333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A242214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242255.P8978324754123545430

`A000040(A242254(n+1))`
-/

namespace A242255.P8978324754123545430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A242254 (n + 1)).toNat

end

end A242255.P8978324754123545430

noncomputable section

/-- A242255: Primes-greedy summable primes, as defined at A242252.

Offset 1, canonical program `A242255.P8978324754123545430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A242255 (n : ℕ) : ℤ :=
  A242255.P8978324754123545430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A242255.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A242357.P2496803421774203751

`abs(A246575(A193832(n+1)+n+1))`
-/

namespace A242357.P2496803421774203751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246575 (A193832 (n + 1) + (n + 1 : ℤ)).toNat|

end

end A242357.P2496803421774203751

noncomputable section

/-- A242357: Crescendo trapezoidal.

Offset 1, canonical program `A242357.P2496803421774203751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A242357 (n : ℕ) : ℤ :=
  A242357.P2496803421774203751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A242357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242559.P4660459681427850123

`∩[A052382(n+1), A291639(n+1)]`
-/

namespace A242559.P4660459681427850123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242559.P4660459681427850123

noncomputable section

/-- A242559: Zeroless numbers n such that n^3 contains a 0.

Offset 1, canonical program `A242559.P4660459681427850123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6255 terms. -/
def A242559 (n : ℕ) : ℤ :=
  (A242559.P4660459681427850123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6255 terms. -/
def A242559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243823.P1309405451730701218

`A045763(n+1)-A243822(n+1)`
-/

namespace A243823.P1309405451730701218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - A243822 (n + 1)

end

end A243823.P1309405451730701218

noncomputable section

/-- A243823: Number of k < n such that gcd(k,n) > 1 but rad(k) does not divide n, where rad = A007947.

Offset 1, canonical program `A243823.P1309405451730701218`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243823 (n : ℕ) : ℤ :=
  A243823.P1309405451730701218.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243997.P13681003671720194849

`∑{d}[A046520(n+1), A007431(#)]`
-/

namespace A243997.P13681003671720194849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A243997.P13681003671720194849

noncomputable section

/-- A243997: a(n) = phi(sigma(n) - phi(n) - d(n)), where phi(n) is the Euler totient function, sigma(n) the sum of divisors of n and d(n) the number of divisors of n.

Offset 1, canonical program `A243997.P13681003671720194849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A243997 (n : ℕ) : ℤ :=
  A243997.P13681003671720194849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A243997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244466.P1490577025563346596

`record[A056653(n+1)^A008683(A073256(n+1))]`
-/

namespace A244466.P1490577025563346596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056653 (n + 1) : ℚ) ^ (A008683 (A073256 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244466.P1490577025563346596

noncomputable section

/-- A244466: Nonprimes n such that mu(phi(n)) = 1.

Offset 1, canonical program `A244466.P1490577025563346596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A244466 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244466.P1490577025563346596.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A244466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244576.P4626810035088509024

`A244049(A000040(n+1))`
-/

namespace A244576.P4626810035088509024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (A000040 (n + 1)).toNat

end

end A244576.P4626810035088509024

noncomputable section

/-- A244576: Sum of all proper divisors of all positive integers <= prime(n).

Offset 1, canonical program `A244576.P4626810035088509024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244049, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244576 (n : ℕ) : ℤ :=
  A244576.P4626810035088509024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244049, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244576.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244723.P2769561214562301981

`filter[A255199(n+1), A005171(#)]`
-/

namespace A244723.P2769561214562301981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A244723.P2769561214562301981

noncomputable section

/-- A244723: Nonprimes n such that, mu(n) = mu(phi(n)).

Offset 1, canonical program `A244723.P2769561214562301981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9491 terms. -/
def A244723 (n : ℕ) : ℤ :=
  A244723.P2769561214562301981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9491 terms. -/
def A244723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245017.P7747278623458680335

`∩[A081988(n+1), A244748(n+1)]`
-/

namespace A245017.P7747278623458680335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245017.P7747278623458680335

noncomputable section

/-- A245017: Numbers k such that (product of digits of k) + 1 and (product of digits of k)^2 + 1 are both prime.

Offset 1, canonical program `A245017.P7747278623458680335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A245017 (n : ℕ) : ℤ :=
  (A245017.P7747278623458680335.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A245017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245199.P15657518765040660811

`∩[A036436(n+1), A039770(n+1)]`
-/

namespace A245199.P15657518765040660811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245199.P15657518765040660811

noncomputable section

/-- A245199: Numbers n where phi(n) and tau(n) are perfect squares.

Offset 1, canonical program `A245199.P15657518765040660811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A245199 (n : ℕ) : ℤ :=
  (A245199.P15657518765040660811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A245199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245202.P1209277125421135516

`eq[1, A007913(A073757(n+1)+1)]+1`
-/

namespace A245202.P1209277125421135516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A073757 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245202.P1209277125421135516

noncomputable section

/-- A245202: Numbers k such that tau(k) + phi(k) is a perfect square.

Offset 1, canonical program `A245202.P1209277125421135516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A245202 (n : ℕ) : ℤ :=
  (A245202.P1209277125421135516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A245202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245212.P13496061215896948389

`A038040(n+1)-A245211(n+1)`
-/

namespace A245212.P13496061215896948389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A245211 (n + 1)

end

end A245212.P13496061215896948389

noncomputable section

/-- A245212: a(n) = n * tau(n) - Sum_{(d<n) | n} (d * tau(d)).

Offset 1, canonical program `A245212.P13496061215896948389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245212 (n : ℕ) : ℤ :=
  A245212.P13496061215896948389.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245904.P7718430387775165049

`A036453(n+1)*A259858(n)`
-/

namespace A245904.P7718430387775165049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A259858 n

end

end A245904.P7718430387775165049

noncomputable section

/-- A245904: a(n) is the number of permutations avoiding 231 and 312 realizable on increasing strict binary trees with 2n-1 nodes.

Offset 1, canonical program `A245904.P7718430387775165049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A245904 (n : ℕ) : ℤ :=
  A245904.P7718430387775165049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A245904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246296.P14387227478916711438

`A246295(n+2)-1`
-/

namespace A246296.P14387227478916711438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246295 (n + 2) - 1

end

end A246296.P14387227478916711438

noncomputable section

/-- A246296: Numbers k such that sin(k) < sin(k+1) < sin(k+2) < sin(k+3) > sin(k+4).

Offset 1, canonical program `A246296.P14387227478916711438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A246296 (n : ℕ) : ℤ :=
  A246296.P14387227478916711438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A246296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246299.P187487161401922223

`A246298(n+1)-1`
-/

namespace A246299.P187487161401922223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246298 (n + 1) - 1

end

end A246299.P187487161401922223

noncomputable section

/-- A246299: Numbers k such that sin(k) > sin(k+1) > sin(k+2) > sin(k+3) < sin(k+4).

Offset 1, canonical program `A246299.P187487161401922223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246299 (n : ℕ) : ℤ :=
  A246299.P187487161401922223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246590.P10952296055587311205

`2*A091067(n+1)`
-/

namespace A246590.P10952296055587311205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091067 (n + 1)

end

end A246590.P10952296055587311205

noncomputable section

/-- A246590: Even numbers whose odd part is of the form 4m+3; Numbers missing from A241816.

Offset 1, canonical program `A246590.P10952296055587311205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246590 (n : ℕ) : ℤ :=
  A246590.P10952296055587311205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247419.P14392471895866897531

`A003256(∑[char[2*n]])-char[2*n]`
-/

namespace A247419.P14392471895866897531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A247419.P14392471895866897531

noncomputable section

/-- A247419: a(2n) = A003256(n); a(2n-1) = A003256(n) - 1.

Offset 1, canonical program `A247419.P14392471895866897531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247419 (n : ℕ) : ℤ :=
  A247419.P14392471895866897531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248793.P15653904006312426899

`A000203(A248792(n+1))-1`
-/

namespace A248793.P15653904006312426899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A248792 (n + 1)).toNat - 1

end

end A248793.P15653904006312426899

noncomputable section

/-- A248793: Sigma(n) - 1 for n such that sigma(n) - 1 is prime.

Offset 1, canonical program `A248793.P15653904006312426899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248792, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248793 (n : ℕ) : ℤ :=
  A248793.P15653904006312426899.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248792, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249728.P8976673975456800970

`∑[char[A061536(n+1)]]+1`
-/

namespace A249728.P8976673975456800970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061536 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A249728.P8976673975456800970

noncomputable section

/-- A249728: After a(1) = 1 each n appears A000720(n) times.

Offset 1, canonical program `A249728.P8976673975456800970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249728 (n : ℕ) : ℤ :=
  (A249728.P8976673975456800970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249743.P9211820019658507526

`A083141(n+1)-1`
-/

namespace A249743.P9211820019658507526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083141 (n + 1) - 1

end

end A249743.P9211820019658507526

noncomputable section

/-- A249743: Main diagonal of square arrays A114881 and A249741.

Offset 1, canonical program `A249743.P9211820019658507526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083141, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249743 (n : ℕ) : ℤ :=
  A249743.P9211820019658507526.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083141, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A250039.P11073604648966551140

`A248502(n+1)*A341644(A156112(n+1))`
-/

namespace A250039.P11073604648966551140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248502 (n + 1) * A341644 (A156112 (n + 1)).toNat

end

end A250039.P11073604648966551140

noncomputable section

/-- A250039: Numbers n such that m = floor(n/16) is not coprime to n and, if nonzero, m is also a term of the sequence.

Offset 1, canonical program `A250039.P11073604648966551140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A250039 (n : ℕ) : ℤ :=
  A250039.P11073604648966551140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A250039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250437.P375934551708024128

`A250427(n+1)/A250426(n+1)*A250428(n+1)`
-/

namespace A250437.P375934551708024128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250427 (n + 1) : ℚ) / (A250426 (n + 1) : ℚ) * (A250428 (n + 1) : ℚ)

end

end A250437.P375934551708024128

noncomputable section

/-- A250437: Number of (n+1)X(2+1) 0..2 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250437.P375934551708024128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250437 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A250437.P375934551708024128.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252021.P7800136030572691619

`p?[A063080(n+1)+1]`
-/

namespace A252021.P7800136030572691619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063080 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252021.P7800136030572691619

noncomputable section

/-- A252021: Primes p such that (p - 1)/tau(p - 1) is also prime.

Offset 1, canonical program `A252021.P7800136030572691619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1581 terms. -/
def A252021 (n : ℕ) : ℤ :=
  A252021.P7800136030572691619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1581 terms. -/
def A252021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253137.P13322010452455234093

`(n+1)*A009191(Δ[A053767(n)])`
-/

namespace A253137.P13322010452455234093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A009191 (f1 (n + 1) - f1 n).toNat

end

end A253137.P13322010452455234093

noncomputable section

/-- A253137: a(n) = n*gcd(c(n), d(n)), where c(n) = composite numbers, d(n) = number of divisors of c(n).

Offset 1, canonical program `A253137.P13322010452455234093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253137 (n : ℕ) : ℤ :=
  A253137.P13322010452455234093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253283.P6460536467449515030

`A059481(n)*A097805(n)`
-/

namespace A253283.P6460536467449515030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A097805 n

end

end A253283.P6460536467449515030

noncomputable section

/-- A253283: Triangle read by rows: coefficients of the partial fraction decomposition of [d^n/dx^n] (x/(1-x))^n/n!.

Offset 0, canonical program `A253283.P6460536467449515030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9268 terms. -/
def A253283 (n : ℕ) : ℤ :=
  A253283.P6460536467449515030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9268 terms. -/
def A253283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253473.P17226977604656821504

`A049820(A073256(n+1))`
-/

namespace A253473.P17226977604656821504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A073256 (n + 1)).toNat

end

end A253473.P17226977604656821504

noncomputable section

/-- A253473: a(n) = phi(c(n)) - tau(phi(c(n))), where c(n) is the n-th composite number.

Offset 1, canonical program `A253473.P17226977604656821504`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253473 (n : ℕ) : ℤ :=
  A253473.P17226977604656821504.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255068.P12646045524398561054

`A091067(n+1)-1`
-/

namespace A255068.P12646045524398561054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1) - 1

end

end A255068.P12646045524398561054

noncomputable section

/-- A255068: a(n) is the largest k such that A255070(k) = n.

Offset 0, canonical program `A255068.P12646045524398561054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255068 (n : ℕ) : ℤ :=
  A255068.P12646045524398561054.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255769.P10219843264777276091

`p?[A022449(n+2)+1]`
-/

namespace A255769.P10219843264777276091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022449 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P10219843264777276091

noncomputable section

/-- A255769: Primes p such that there are a prime number of composite numbers less than p.

Offset 1, canonical program `A255769.P10219843264777276091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A255769 (n : ℕ) : ℤ :=
  A255769.P10219843264777276091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A255769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256605.P16508351430174737042

`A003418(n+3)/A136548(n+3)`
-/

namespace A256605.P16508351430174737042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 3) : ℚ) / (A136548 (n + 3) : ℚ)

end

end A256605.P16508351430174737042

noncomputable section

/-- A256605: Least k such that n+1 is the n-th divisor of k.

Offset 2, canonical program `A256605.P16508351430174737042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A256605 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256605.P16508351430174737042.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A256605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256688.P10016313267920444038

`∏{e}[n+1, A004117(#)]`
-/

namespace A256688.P10016313267920444038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A004117 (Nat.factorization (f1 n) p)

end

end A256688.P10016313267920444038

noncomputable section

/-- A256688: From third root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose cube is zeta function; sequence gives numerator of b(n).

Offset 1, canonical program `A256688.P10016313267920444038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256688 (n : ℕ) : ℤ :=
  A256688.P10016313267920444038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257077.P17026154758205929853

`A037125(A000040(n+1))`
-/

namespace A257077.P17026154758205929853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (A000040 (n + 1)).toNat

end

end A257077.P17026154758205929853

noncomputable section

/-- A257077: a(n) = prime(n)-prime(1)-prime(2)-...-prime(k), while the result > 0.

Offset 1, canonical program `A257077.P17026154758205929853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A257077 (n : ℕ) : ℤ :=
  A257077.P17026154758205929853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A257077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257852.P9714662518285997073

`A257791(n+1)-A257499(n+1)`
-/

namespace A257852.P9714662518285997073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257791 (n + 1) - A257499 (n + 1)

end

end A257852.P9714662518285997073

noncomputable section

/-- A257852: Array A read by upward antidiagonals in which the entry A(n,k) in row n and column k is defined by A(n,k) = (2^n*(6*k - 3 - 2*(-1)^n) - 1)/3, n,k >= 1.

Offset 1, canonical program `A257852.P9714662518285997073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257852 (n : ℕ) : ℤ :=
  A257852.P9714662518285997073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257921.P8097478838852839712

`(-1)^n*A261119(n)`
-/

namespace A257921.P8097478838852839712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A261119 n

end

end A257921.P8097478838852839712

noncomputable section

/-- A257921: Expansion of f(x^2, -x^4) * f(-x, -x^5)^2 / f(-x^12, -x^12) in powers of x where f(, ) is Ramanujan's general theta functions.

Offset 0, canonical program `A257921.P8097478838852839712`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261119, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257921 (n : ℕ) : ℤ :=
  A257921.P8097478838852839712.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261119, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257921.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258027.P8926715394870140338

`lt[1, Δ[A008578(n+1)-A118534(n+1)]]`
-/

namespace A258027.P8926715394870140338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A118534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258027.P8926715394870140338

noncomputable section

/-- A258027: Numbers k such that D(prime(k), 3) < 0, where D( * , 3) = 3rd difference.

Offset 1, canonical program `A258027.P8926715394870140338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258027 (n : ℕ) : ℤ :=
  (A258027.P8926715394870140338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258977.P6713999893642362193

`A258974(A258976(n+1))`
-/

namespace A258977.P6713999893642362193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258974 (A258976 (n + 1)).toNat

end

end A258977.P6713999893642362193

noncomputable section

/-- A258977: Primes in A258974.

Offset 1, canonical program `A258977.P6713999893642362193`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258977 (n : ℕ) : ℤ :=
  A258977.P6713999893642362193.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258976, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259876.P5719759569284510818

`A286331(A061579(n))/A157963(n)`
-/

namespace A259876.P5719759569284510818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286331 (A061579 n).toNat : ℚ) / (A157963 n : ℚ)

end

end A259876.P5719759569284510818

noncomputable section

/-- A259876: Triangle of numbers S(n,k) (0 <= k <= n) arising in the enumeration of interval orders without duplicated holdings.

Offset 0, canonical program `A259876.P5719759569284510818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A259876 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A259876.P5719759569284510818.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A259876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259896.P523730154750983543

`ceil(A261119(2*n+1)/2)`
-/

namespace A259896.P523730154750983543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A261119 (2 * n + 1) : ℚ) / 2⌉

end

end A259896.P523730154750983543

noncomputable section

/-- A259896: Expansion of psi(x) * psi(x^6) in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A259896.P523730154750983543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A259896 (n : ℕ) : ℤ :=
  A259896.P523730154750983543.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A259896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260118.P8765775058433154880

`(-1)^n*A128582(n)`
-/

namespace A260118.P8765775058433154880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A128582 n

end

end A260118.P8765775058433154880

noncomputable section

/-- A260118: Expansion of f(-x, -x^5) * psi(x^4) in powers of x where psi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A260118.P8765775058433154880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260118 (n : ℕ) : ℤ :=
  A260118.P8765775058433154880.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260401.P2046318254898871270

`record[n+1-A112604(xor(n, n+1))]`
-/

namespace A260401.P2046318254898871270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A112604 (Nat.xor n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260401.P2046318254898871270

noncomputable section

/-- A260401: Positions of 1 in the infinite palindromic word at A259599.

Offset 1, canonical program `A260401.P2046318254898871270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5589 terms. -/
def A260401 (n : ℕ) : ℤ :=
  A260401.P2046318254898871270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5589 terms. -/
def A260401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260624.P16422047914652395802

`A003415(A002808(n+1))`
-/

namespace A260624.P16422047914652395802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002808 (n + 1)).toNat

end

end A260624.P16422047914652395802

noncomputable section

/-- A260624: a(n) = arithmetic derivative of the n-th composite number.

Offset 1, canonical program `A260624.P16422047914652395802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260624 (n : ℕ) : ℤ :=
  A260624.P16422047914652395802.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260640.P3177031407237678079

`record[n+1-A120624(n+1)*A260636(n+1)]`
-/

namespace A260640.P3177031407237678079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A120624 (n + 1) * A260636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260640.P3177031407237678079

noncomputable section

/-- A260640: Numbers n such that binomial(3*n,n) == 0 (mod n).

Offset 1, canonical program `A260640.P3177031407237678079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1183 terms. -/
def A260640 (n : ℕ) : ℤ :=
  A260640.P3177031407237678079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1183 terms. -/
def A260640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260682.P10691635331888986917

`filter[A202822(n+1), A373156(#)]`
-/

namespace A260682.P10691635331888986917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A260682.P10691635331888986917

noncomputable section

/-- A260682: Löschian numbers (A003136) of the form 6*k+1.

Offset 1, canonical program `A260682.P10691635331888986917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7312 terms. -/
def A260682 (n : ℕ) : ℤ :=
  A260682.P10691635331888986917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7312 terms. -/
def A260682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261085.P10967970624675834494

`A155043(A000040(n+1))`
-/

namespace A261085.P10967970624675834494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A000040 (n + 1)).toNat

end

end A261085.P10967970624675834494

noncomputable section

/-- A261085: Number of steps needed to reach zero when starting from the n-th prime [i.e., setting k to A000040(n)] and repeatedly applying the map that replaces k with k - d(k), where d(k) is the number of divisors of k (A000005).

Offset 1, canonical program `A261085.P10967970624675834494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261085 (n : ℕ) : ℤ :=
  A261085.P10967970624675834494.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261088.P12367769580199237088

`A155043(n²)`
-/

namespace A261088.P12367769580199237088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (n ^ 2)

end

end A261088.P12367769580199237088

noncomputable section

/-- A261088: Number of steps needed to reach zero when starting from k = n^2 and repeatedly applying the map that replaces k with k - d(k), where d(k) is the number of divisors of k (A000005).

Offset 0, canonical program `A261088.P12367769580199237088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261088 (n : ℕ) : ℤ :=
  A261088.P12367769580199237088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261609.P15255296728293898829

`A055212(A002522(n+1))`
-/

namespace A261609.P15255296728293898829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (A002522 (n + 1)).toNat

end

end A261609.P15255296728293898829

noncomputable section

/-- A261609: Number of composite divisors of n^2+1.

Offset 1, canonical program `A261609.P15255296728293898829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261609 (n : ℕ) : ℤ :=
  A261609.P15255296728293898829.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262044.P8753774164014263887

`∑[A071904(n+1)]`
-/

namespace A262044.P8753774164014263887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262044.P8753774164014263887

noncomputable section

/-- A262044: Partial sum of the first n odd composite numbers.

Offset 1, canonical program `A262044.P8753774164014263887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262044 (n : ℕ) : ℤ :=
  A262044.P8753774164014263887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262198.P508349440457690952

`lt[A262190(n), A055642(n)]`
-/

namespace A262198.P508349440457690952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262198.P508349440457690952

noncomputable section

/-- A262198: Numbers such that the number of distinct palindromes contained as substring in their decimal representation differs from the length thereof.

Offset 1, canonical program `A262198.P508349440457690952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A262198 (n : ℕ) : ℤ :=
  (A262198.P508349440457690952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A262198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262202.P13375608111952426789

`∑{d}[n+1, A353669(#)]`
-/

namespace A262202.P13375608111952426789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353669 d

end

end A262202.P13375608111952426789

noncomputable section

/-- A262202: Number of divisors d | n such that d^2 < n and d^2 does not divide n.

Offset 1, canonical program `A262202.P13375608111952426789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262202 (n : ℕ) : ℤ :=
  A262202.P13375608111952426789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262262.P1658621310215384767

`A063962(n+1)-A063962(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A262262.P1658621310215384767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (n + 1) - A063962 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A262262.P1658621310215384767

noncomputable section

/-- A262262: Number of prime divisors p | n such that p^2 < n and p^2 does not divide n.

Offset 1, canonical program `A262262.P1658621310215384767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262262 (n : ℕ) : ℤ :=
  A262262.P1658621310215384767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262518.P4745405101441477404

`A155043(2*n)`
-/

namespace A262518.P4745405101441477404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (2 * n)

end

end A262518.P4745405101441477404

noncomputable section

/-- A262518: Even bisection of A155043.

Offset 0, canonical program `A262518.P4745405101441477404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262518 (n : ℕ) : ℤ :=
  A262518.P4745405101441477404.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262518.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262519.P6612858690634746410

`A155043(2*n+1)`
-/

namespace A262519.P6612858690634746410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (2 * n + 1)

end

end A262519.P6612858690634746410

noncomputable section

/-- A262519: Odd bisection of A155043.

Offset 0, canonical program `A262519.P6612858690634746410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262519 (n : ℕ) : ℤ :=
  A262519.P6612858690634746410.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262519.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262681.P5069097334866241517

`A262680(2*n+1)`
-/

namespace A262681.P5069097334866241517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 (2 * n + 1)

end

end A262681.P5069097334866241517

noncomputable section

/-- A262681: Odd bisection of A262680.

Offset 0, canonical program `A262681.P5069097334866241517`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262681 (n : ℕ) : ℤ :=
  A262681.P5069097334866241517.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262682.P796108545495164690

`A262680(2*n)`
-/

namespace A262682.P796108545495164690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 (2 * n)

end

end A262682.P796108545495164690

noncomputable section

/-- A262682: Even bisection of A262680.

Offset 0, canonical program `A262682.P796108545495164690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262682 (n : ℕ) : ℤ :=
  A262682.P796108545495164690.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262682.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262708.P6887640225270983865

`A086304(n+1)+or(5, A090722(n+4))`
-/

namespace A262708.P6887640225270983865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) + Int.lor 5 (A090722 (n + 4))

end

end A262708.P6887640225270983865

noncomputable section

/-- A262708: a(n) = p-(p/5) where p = prime(n) and (p/5) is a Legendre symbol.

Offset 4, canonical program `A262708.P6887640225270983865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262708 (n : ℕ) : ℤ :=
  A262708.P6887640225270983865.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262774.P1314283626335343178

`(-1)^n*A112604(n)`
-/

namespace A262774.P1314283626335343178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112604 n

end

end A262774.P1314283626335343178

noncomputable section

/-- A262774: Expansion of psi(x^2) * phi(-x^3) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A262774.P1314283626335343178`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262774 (n : ℕ) : ℤ :=
  A262774.P1314283626335343178.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262774.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262855.P8894309601039071380

`A267673(A020703(n+1)-1)`
-/

namespace A262855.P8894309601039071380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267673 (A020703 (n + 1) - 1).toNat

end

end A262855.P8894309601039071380

noncomputable section

/-- A262855: Triangle read by rows giving successive states of cellular automaton generated by "Rule 153" initiated with a single ON (black) cell.

Offset 0, canonical program `A262855.P8894309601039071380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262855 (n : ℕ) : ℤ :=
  A262855.P8894309601039071380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263804.P1371526510976708710

`A267687(A020703(n+1)-1)`
-/

namespace A263804.P1371526510976708710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267687 (A020703 (n + 1) - 1).toNat

end

end A263804.P1371526510976708710

noncomputable section

/-- A263804: Triangle read by rows giving successive states of cellular automaton generated by "Rule 157" initiated with a single ON (black) cell.

Offset 0, canonical program `A263804.P1371526510976708710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263804 (n : ℕ) : ℤ :=
  A263804.P1371526510976708710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264441.P18237955088571379997

`floor(sqrt(A045763(n+1)²+1))`
-/

namespace A264441.P18237955088571379997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A045763 (n + 1) ^ 2 + 1)

end

end A264441.P18237955088571379997

noncomputable section

/-- A264441: Length of row n of the irregular triangle A133995 (positive integers <= n which are neither divisors of n nor coprime to n).

Offset 1, canonical program `A264441.P18237955088571379997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264441 (n : ℕ) : ℤ :=
  A264441.P18237955088571379997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264893.P14059623397412482726

`Δ[A155043(n)]`
-/

namespace A264893.P14059623397412482726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264893.P14059623397412482726

noncomputable section

/-- A264893: First differences of A155043.

Offset 0, canonical program `A264893.P14059623397412482726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264893 (n : ℕ) : ℤ :=
  A264893.P14059623397412482726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264898.P3004184521614351433

`eq[A155043(n+1), A155043(n)]`
-/

namespace A264898.P3004184521614351433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264898.P3004184521614351433

noncomputable section

/-- A264898: Numbers m such that A155043(n+1) = A155043(n).

Offset 1, canonical program `A264898.P3004184521614351433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A264898 (n : ℕ) : ℤ :=
  (A264898.P3004184521614351433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A264898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265332.P14034574010007287764

`A051135(abs(1-n)+2)`
-/

namespace A265332.P14034574010007287764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (|1 - (n : ℤ)| + 2).toNat

end

end A265332.P14034574010007287764

noncomputable section

/-- A265332: a(n) is the index of the column in A265901 where n appears; also the index of the row in A265903 where n appears.

Offset 1, canonical program `A265332.P14034574010007287764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265332 (n : ℕ) : ℤ :=
  A265332.P14034574010007287764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265370.P3607156033040373403

`ceil(log2(A078510(n)+1))`
-/

namespace A265370.P3607156033040373403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A078510 n + 1 : ℝ)⌉

end

end A265370.P3607156033040373403

noncomputable section

/-- A265370: a(0) = 0; for n >= 1, a(n) = A070939(A078510(n)).

Offset 0, canonical program `A265370.P3607156033040373403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265370 (n : ℕ) : ℤ :=
  A265370.P3607156033040373403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265404.P15777867062804018376

`A001227(A156300(n+1))-char[A078510(n)]`
-/

namespace A265404.P15777867062804018376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A156300 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265404.P15777867062804018376

noncomputable section

/-- A265404: a(n) = number of Spironacci numbers (A078510) needed to sum to n using the greedy algorithm.

Offset 0, canonical program `A265404.P15777867062804018376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A265404 (n : ℕ) : ℤ :=
  A265404.P15777867062804018376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A265404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265718.P12554410647525554970

`A266666(n)*A267704(n)`
-/

namespace A265718.P12554410647525554970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 n * A267704 n

end

end A265718.P12554410647525554970

noncomputable section

/-- A265718: Triangle read by rows giving successive states of cellular automaton generated by "Rule 1" initiated with a single ON (black) cell.

Offset 0, canonical program `A265718.P12554410647525554970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265718 (n : ℕ) : ℤ :=
  A265718.P12554410647525554970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265905.P17623149438114299411

`a(n-1)+A153880(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265905.P17623149438114299411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A153880 (a (n - 1)).toNat

end

end A265905.P17623149438114299411

noncomputable section

/-- A265905: a(1) = 1; for n > 1, a(n) = a(n-1) + A153880(a(n-1)).

Offset 1, canonical program `A265905.P17623149438114299411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265905 (n : ℕ) : ℤ :=
  A265905.P17623149438114299411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266659.P421182450732641634

`A267272(A020703(n+1)-1)`
-/

namespace A266659.P421182450732641634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267272 (A020703 (n + 1) - 1).toNat

end

end A266659.P421182450732641634

noncomputable section

/-- A266659: Triangle read by rows giving successive states of cellular automaton generated by "Rule 47" initiated with a single ON (black) cell.

Offset 0, canonical program `A266659.P421182450732641634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266659 (n : ℕ) : ℤ :=
  A266659.P421182450732641634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266836.P4349394875853698873

`A003136(A024609(n+1))`
-/

namespace A266836.P4349394875853698873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (A024609 (n + 1)).toNat

end

end A266836.P4349394875853698873

noncomputable section

/-- A266836: Odd Löschian numbers.

Offset 1, canonical program `A266836.P4349394875853698873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7280 terms. -/
def A266836 (n : ℕ) : ℤ :=
  A266836.P4349394875853698873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7280 terms. -/
def A266836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266843.P15807973679981638370

`A266502(n-2*A196199(n))`
-/

namespace A266843.P15807973679981638370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 ((n : ℤ) - 2 * A196199 n).toNat

end

end A266843.P15807973679981638370

noncomputable section

/-- A266843: Triangle read by rows giving successive states of cellular automaton generated by "Rule 70" initiated with a single ON (black) cell.

Offset 0, canonical program `A266843.P15807973679981638370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266843 (n : ℕ) : ℤ :=
  A266843.P15807973679981638370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266848.P10124636830213584024

`A266666(xor(n, A267034(n)))`
-/

namespace A266848.P10124636830213584024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 (Int.xor (n : ℤ) (A267034 n)).toNat

end

end A266848.P10124636830213584024

noncomputable section

/-- A266848: Triangle read by rows giving successive states of cellular automaton generated by "Rule 71" initiated with a single ON (black) cell.

Offset 0, canonical program `A266848.P10124636830213584024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266848 (n : ℕ) : ℤ :=
  A266848.P10124636830213584024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267050.P6583964261662905485

`or(A266502(n), A267006(n))`
-/

namespace A267050.P6583964261662905485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266502 n) (A267006 n)

end

end A267050.P6583964261662905485

noncomputable section

/-- A267050: Triangle read by rows giving successive states of cellular automaton generated by "Rule 92" initiated with a single ON (black) cell.

Offset 0, canonical program `A267050.P6583964261662905485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267050 (n : ℕ) : ℤ :=
  A267050.P6583964261662905485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267067.P6649657315045138186

`p?[A056913(n+1)+2]`
-/

namespace A267067.P6649657315045138186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267067.P6649657315045138186

noncomputable section

/-- A267067: Primes p such that mu(p-2) = 1; that is, p-2 is squarefree and has an even number of prime factors, where mu is the Moebius function (A008683).

Offset 1, canonical program `A267067.P6649657315045138186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1902 terms. -/
def A267067 (n : ℕ) : ℤ :=
  A267067.P6649657315045138186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1902 terms. -/
def A267067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267263.P541567630172199219

`a(A260187(n))+1` with `a(0)=0`
-/

namespace A267263.P541567630172199219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A260187 n).toNat + 1

end

end A267263.P541567630172199219

noncomputable section

/-- A267263: Number of nonzero digits in representation of n in primorial base.

Offset 0, canonical program `A267263.P541567630172199219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267263 (n : ℕ) : ℤ :=
  (A267263.P541567630172199219.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267349.P897274427643744679

`A266666(n*A267704(n))`
-/

namespace A267349.P897274427643744679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 ((n : ℤ) * A267704 n).toNat

end

end A267349.P897274427643744679

noncomputable section

/-- A267349: Triangle read by rows giving successive states of cellular automaton generated by "Rule 123" initiated with a single ON (black) cell.

Offset 0, canonical program `A267349.P897274427643744679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267349 (n : ℕ) : ℤ :=
  A267349.P897274427643744679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267676.P4684612888645743978

`char[A183569(n+1)*A267687(n)]`
-/

namespace A267676.P4684612888645743978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183569 (n + 1) * A267687 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267676.P4684612888645743978

noncomputable section

/-- A267676: Triangle read by rows giving successive states of cellular automaton generated by "Rule 197" initiated with a single ON (black) cell.

Offset 0, canonical program `A267676.P4684612888645743978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5143 terms. -/
def A267676 (n : ℕ) : ℤ :=
  (A267676.P4684612888645743978.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5143 terms. -/
def A267676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267778.P18033994300650970323

`1-A267006(A266502(n)+n)`
-/

namespace A267778.P18033994300650970323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267006 (A266502 n + (n : ℤ)).toNat

end

end A267778.P18033994300650970323

noncomputable section

/-- A267778: Triangle read by rows giving successive states of cellular automaton generated by "Rule 211" initiated with a single ON (black) cell.

Offset 0, canonical program `A267778.P18033994300650970323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267778 (n : ℕ) : ℤ :=
  A267778.P18033994300650970323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267845.P5263829636429714484

`and(1, A189827(n+2)%A097922(n)+1)`
-/

namespace A267845.P5263829636429714484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (A189827 (n + 2)) (A097922 n) + 1)

end

end A267845.P5263829636429714484

noncomputable section

/-- A267845: Triangle read by rows giving successive states of cellular automaton generated by "Rule 227" initiated with a single ON (black) cell.

Offset 0, canonical program `A267845.P5263829636429714484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267845 (n : ℕ) : ℤ :=
  A267845.P5263829636429714484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269364.P12160389382123291649

`A269849(n+1)-A269850(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269364.P12160389382123291649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269849 (n + 1) - A269850 (n + 1)

end

end A269364.P12160389382123291649

noncomputable section

/-- A269364: Difference between the number of occurrences of prime gaps not divisible by 3, versus number of prime gaps that are multiples of 3, up to n-th prime gap: a(n) = A269849(n) - A269850(n).

Offset 1, canonical program `A269364.P12160389382123291649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269849, A269850, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A269364 (n : ℕ) : ℤ :=
  A269364.P12160389382123291649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269849, A269850, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A269364.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270248.P13305958007717822557

`2*A270050(n+1)`
-/

namespace A270248.P13305958007717822557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270050 (n + 1)

end

end A270248.P13305958007717822557

noncomputable section

/-- A270248: Even Löschian numbers.

Offset 1, canonical program `A270248.P13305958007717822557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270248 (n : ℕ) : ℤ :=
  A270248.P13305958007717822557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272334.P18035456064944277151

`gcd(A038388(n+1), A290683(n))`
-/

namespace A272334.P18035456064944277151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038388 (n + 1)) (A290683 n)

end

end A272334.P18035456064944277151

noncomputable section

/-- A272334: Square root of the largest square dividing 2^n - 1.

Offset 1, canonical program `A272334.P18035456064944277151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A272334 (n : ℕ) : ℤ :=
  (A272334.P18035456064944277151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A272334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273020.P8082277504351008940

`Δ[A097861(n)+∑[A099323(n)]]`
-/

namespace A273020.P8082277504351008940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273020.P8082277504351008940

noncomputable section

/-- A273020: a(n) = Sum_{k=0..n} C(n,k)*((-1)^n*(C(k,n-k)-C(k,n-k-1))+C(n-k,k+1)).

Offset 0, canonical program `A273020.P8082277504351008940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A273020 (n : ℕ) : ℤ :=
  A273020.P8082277504351008940.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A273020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273165.P13852452285329225728

`A000005(A091236(n+1))/2`
-/

namespace A273165.P13852452285329225728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A091236 (n + 1)).toNat : ℚ) / 2

end

end A273165.P13852452285329225728

noncomputable section

/-- A273165: One half the number of divisors of nonprime numbers that are 3 (mod 4).

Offset 1, canonical program `A273165.P13852452285329225728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273165 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A273165.P13852452285329225728.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273670.P14908057013433481843

`comp[A153880(n)]`
-/

namespace A273670.P14908057013433481843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273670.P14908057013433481843

noncomputable section

/-- A273670: Numbers with at least one maximal digit in their factorial base representation.

Offset 0, canonical program `A273670.P14908057013433481843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273670 (n : ℕ) : ℤ :=
  (A273670.P14908057013433481843.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274044.P18314180091191824190

`filter[A071011(n+1), A359377(#)]`
-/

namespace A274044.P18314180091191824190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A274044.P18314180091191824190

noncomputable section

/-- A274044: Squarefree numbers that are the sum of two squares in more than one way.

Offset 1, canonical program `A274044.P18314180091191824190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6269 terms. -/
def A274044 (n : ℕ) : ℤ :=
  A274044.P18314180091191824190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6269 terms. -/
def A274044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274357.P15400264292422820349

`A030626(eq[1, A030626(n+1)-A111398(n+1)])`
-/

namespace A274357.P15400264292422820349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1) - A111398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274357.P15400264292422820349

noncomputable section

/-- A274357: Numbers n such that n and n+1 both have 8 divisors.

Offset 1, canonical program `A274357.P15400264292422820349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A274357 (n : ℕ) : ℤ :=
  A274357.P15400264292422820349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A274357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275384.P6749027416274283310

`filter[A072697(n+1), A005171(#)]`
-/

namespace A275384.P6749027416274283310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A275384.P6749027416274283310

noncomputable section

/-- A275384: Composite squarefree numbers such that the arithmetic mean of its prime factors is an integer.

Offset 1, canonical program `A275384.P6749027416274283310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7056 terms. -/
def A275384 (n : ℕ) : ℤ :=
  A275384.P6749027416274283310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7056 terms. -/
def A275384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275699.P9019799113090837571

`A046660(A013929(n+1))`
-/

namespace A275699.P9019799113090837571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A013929 (n + 1)).toNat

end

end A275699.P9019799113090837571

noncomputable section

/-- A275699: Excess of numbers that are not squarefree.

Offset 1, canonical program `A275699.P9019799113090837571`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275699 (n : ℕ) : ℤ :=
  A275699.P9019799113090837571.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275699.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276788.P8117237613989876869

`A003144(n+2)-A003144(n+1)`
-/

namespace A276788.P8117237613989876869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 2) - A003144 (n + 1)

end

end A276788.P8117237613989876869

noncomputable section

/-- A276788: First differences of A003144.

Offset 1, canonical program `A276788.P8117237613989876869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276788 (n : ℕ) : ℤ :=
  A276788.P8117237613989876869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276788.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277169.P7870320882973460960

`A000290(A007956(n+1))`
-/

namespace A277169.P7870320882973460960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A007956 (n + 1)).toNat

end

end A277169.P7870320882973460960

noncomputable section

/-- A277169: Product of squares of proper divisors of n.

Offset 1, canonical program `A277169.P7870320882973460960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277169 (n : ℕ) : ℤ :=
  A277169.P7870320882973460960.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277567.P15704819305109196933

`filter[A189715(n+1), A373156(#)]`
-/

namespace A277567.P15704819305109196933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A277567.P15704819305109196933

noncomputable section

/-- A277567: Numbers k such that k/6^m == 1 (mod 6), where 6^m is the greatest power of 6 that divides k.

Offset 1, canonical program `A277567.P15704819305109196933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. -/
def A277567 (n : ℕ) : ℤ :=
  A277567.P15704819305109196933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. -/
def A277567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277571.P535996432442128007

`filter[A225838(n+1), A373156(#)]`
-/

namespace A277571.P535996432442128007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A277571.P535996432442128007

noncomputable section

/-- A277571: Numbers k such that k/6^m == 5 (mod 6), where 6^m is the greatest power of 6 that divides k.

Offset 1, canonical program `A277571.P535996432442128007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4010 terms. -/
def A277571 (n : ℕ) : ℤ :=
  A277571.P535996432442128007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4010 terms. -/
def A277571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278039.P16218767788797619260

`A003144(n+1)-1`
-/

namespace A278039.P16218767788797619260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) - 1

end

end A278039.P16218767788797619260

noncomputable section

/-- A278039: The tribonacci representation of a(n) is obtained by appending a 0 to the tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A278039.P16218767788797619260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278039 (n : ℕ) : ℤ :=
  A278039.P16218767788797619260.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278083.P13856348263400599348

`A060968(Δ[n²])`
-/

namespace A278083.P13856348263400599348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278083.P13856348263400599348

noncomputable section

/-- A278083: a(n) is 1/6 of the number of primitive integral quadruples with sum = 2*m and sum of squares = 2*m^2, where m = 2*n-1.

Offset 1, canonical program `A278083.P13856348263400599348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A278083 (n : ℕ) : ℤ :=
  A278083.P13856348263400599348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A278083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279051.P13470628447190644571

`A300893(A153733(n)+1)`
-/

namespace A279051.P13470628447190644571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300893 (A153733 n + 1).toNat

end

end A279051.P13470628447190644571

noncomputable section

/-- A279051: Sum of odd nonprime divisors of n.

Offset 1, canonical program `A279051.P13470628447190644571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279051 (n : ℕ) : ℤ :=
  A279051.P13470628447190644571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279287.P12267829467651088072

`A062354(n+1)/gcd(A062354(n+1), A064840(n+1))`
-/

namespace A279287.P12267829467651088072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (Int.gcd (A062354 (n + 1)) (A064840 (n + 1)) : ℚ)

end

end A279287.P12267829467651088072

noncomputable section

/-- A279287: a(n) = numerator of (phi(n)/tau(n)).

Offset 1, canonical program `A279287.P12267829467651088072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279287 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A279287.P12267829467651088072.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279288.P12363136388556004692

`A064840(n+1)/gcd(A062354(n+1), A064840(n+1))`
-/

namespace A279288.P12363136388556004692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (Int.gcd (A062354 (n + 1)) (A064840 (n + 1)) : ℚ)

end

end A279288.P12363136388556004692

noncomputable section

/-- A279288: a(n) = denominator of (phi(n)/tau(n)).

Offset 1, canonical program `A279288.P12363136388556004692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A279288.P12363136388556004692.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279458.P16976233013369130140

`∩[A028260(n+1), A030231(n+1)]`
-/

namespace A279458.P16976233013369130140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279458.P16976233013369130140

noncomputable section

/-- A279458: Numbers k such that number of distinct primes dividing k is even and number of prime divisors (counted with multiplicity) of k is even.

Offset 1, canonical program `A279458.P16976233013369130140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7333 terms. -/
def A279458 (n : ℕ) : ℤ :=
  (A279458.P16976233013369130140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7333 terms. -/
def A279458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279497.P13199051140231990892

`∑{d}[n+1, A255849(#)]`
-/

namespace A279497.P13199051140231990892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A255849 d

end

end A279497.P13199051140231990892

noncomputable section

/-- A279497: Number of pentagonal numbers dividing n.

Offset 1, canonical program `A279497.P13199051140231990892`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279497 (n : ℕ) : ℤ :=
  A279497.P13199051140231990892.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280114.P2386266783669017223

`∑[A175317(n+1)]`
-/

namespace A280114.P2386266783669017223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280114.P2386266783669017223

noncomputable section

/-- A280114: Partial sums of A175317 (Sum_{d|n} pod(d)).

Offset 1, canonical program `A280114.P2386266783669017223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A280114 (n : ℕ) : ℤ :=
  A280114.P2386266783669017223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A280114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280116.P3577260603132501466

`∑[∏{d}[n+1, #*A007956(#)]]`
-/

namespace A280116.P3577260603132501466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (d : ℤ) * A007956 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280116.P3577260603132501466

noncomputable section

/-- A280116: Partial sums of A266265 (Product_{d|n} pod(d)).

Offset 1, canonical program `A280116.P3577260603132501466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A280116 (n : ℕ) : ℤ :=
  A280116.P3577260603132501466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A280116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280728.P2681727417312641949

`A183063(A000032(n))`
-/

namespace A280728.P2681727417312641949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A000032 n).toNat

end

end A280728.P2681727417312641949

noncomputable section

/-- A280728: Number of even divisors of Lucas(n).

Offset 0, canonical program `A280728.P2681727417312641949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280728 (n : ℕ) : ℤ :=
  A280728.P2681727417312641949.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A281048.P3938855718998279442

`Δ[A005590(n)]`
-/

namespace A281048.P3938855718998279442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281048.P3938855718998279442

noncomputable section

/-- A281048: Expansion of x*(1 - x)*Product_{k>=0} (1 + x^(2^k) - x^(2^(k+1))).

Offset 1, canonical program `A281048.P3938855718998279442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281048 (n : ℕ) : ℤ :=
  A281048.P3938855718998279442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281499.P7725258825879446995

`A036044(A003188(n))`
-/

namespace A281499.P7725258825879446995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A003188 n).toNat

end

end A281499.P7725258825879446995

noncomputable section

/-- A281499: Write n in binary reflected Gray code, interchange the 1's and 0's, reverse the code and convert it back to decimal.

Offset 0, canonical program `A281499.P7725258825879446995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281499 (n : ℕ) : ℤ :=
  A281499.P7725258825879446995.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282806.P5522376432113910485

`A052955(A004277(n))-A288807(2*n+1)`
-/

namespace A282806.P5522376432113910485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288807 (2 * n + 1)

end

end A282806.P5522376432113910485

noncomputable section

/-- A282806: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282806.P5522376432113910485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A282806 (n : ℕ) : ℤ :=
  A282806.P5522376432113910485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A282806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284120.P6392286246842557568

`A258746(A117120(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284120.P6392286246842557568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (A117120 (n + 1)).toNat

end

end A284120.P6392286246842557568

noncomputable section

/-- A284120: Permutation of the positive integers: a(n) = A258746(A117120(n)) = A117120(A258746(n)).

Offset 1, canonical program `A284120.P6392286246842557568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117120, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284120 (n : ℕ) : ℤ :=
  A284120.P6392286246842557568.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117120, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284120.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284203.P3141137211132390266

`∑{d}[n+1, A164292(#)]`
-/

namespace A284203.P3141137211132390266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A164292 d

end

end A284203.P3141137211132390266

noncomputable section

/-- A284203: Number of twin prime (A001097) divisors of n.

Offset 1, canonical program `A284203.P3141137211132390266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284203 (n : ℕ) : ℤ :=
  A284203.P3141137211132390266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284281.P9191018554184866651

`A116073(n+1)-(A284280(n+1)+A284150(n+1))`
-/

namespace A284281.P9191018554184866651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116073 (n + 1) - (A284280 (n + 1) + A284150 (n + 1))

end

end A284281.P9191018554184866651

noncomputable section

/-- A284281: a(n) = Sum_{d|n, d == 3 (mod 5)} d.

Offset 1, canonical program `A284281.P9191018554184866651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284281 (n : ℕ) : ℤ :=
  A284281.P9191018554184866651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284295.P11532458388642063606

`∩[A050626(n+1), A174813(n+1)]`
-/

namespace A284295.P11532458388642063606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284295.P11532458388642063606

noncomputable section

/-- A284295: Numbers k such that product of digits of k is a power of 9.

Offset 1, canonical program `A284295.P11532458388642063606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A284295 (n : ℕ) : ℤ :=
  (A284295.P11532458388642063606.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A284295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284531.P11943089900125186726

`p?[ceil(A031928(n+1)/6)]`
-/

namespace A284531.P11943089900125186726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A031928 (n + 1) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284531.P11943089900125186726

noncomputable section

/-- A284531: Primes p such that 6p - 5 and 6p + 5 are consecutive primes.

Offset 1, canonical program `A284531.P11943089900125186726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. -/
def A284531 (n : ℕ) : ℤ :=
  A284531.P11943089900125186726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. -/
def A284531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284599.P274400123540582278

`∑{d}[n+1, #*A164292(#)]`
-/

namespace A284599.P274400123540582278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A164292 d

end

end A284599.P274400123540582278

noncomputable section

/-- A284599: Sum of twin prime (A001097) divisors of n.

Offset 1, canonical program `A284599.P274400123540582278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284599 (n : ℕ) : ℤ :=
  A284599.P274400123540582278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284751.P4794700435670867007

`A285301(xor(1, n)+1)`
-/

namespace A284751.P4794700435670867007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (Nat.xor 1 n + 1)

end

end A284751.P4794700435670867007

noncomputable section

/-- A284751: Fixed point of the morphism 0 -> 01, 1 -> 0001.

Offset 1, canonical program `A284751.P4794700435670867007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284751 (n : ℕ) : ℤ :=
  A284751.P4794700435670867007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284752.P1214330946785391422

`a(n-1)+A284369(n)+1` with `a(0)=1`
-/

namespace A284752.P1214330946785391422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284369 n + 1)

end

end A284752.P1214330946785391422

noncomputable section

/-- A284752: Positions of 0 in A284751; complement of A284753.

Offset 1, canonical program `A284752.P1214330946785391422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284752 (n : ℕ) : ℤ :=
  A284752.P1214330946785391422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284794.P2972452500732799436

`2*A189665(n+1)`
-/

namespace A284794.P2972452500732799436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189665 (n + 1)

end

end A284794.P2972452500732799436

noncomputable section

/-- A284794: Positions of -1 in A284793.

Offset 1, canonical program `A284794.P2972452500732799436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284794 (n : ℕ) : ℤ :=
  A284794.P2972452500732799436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284818.P2162458952130043232

`∪[A189665(n+1), n²]+1`
-/

namespace A284818.P2162458952130043232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n + 1

end

end A284818.P2162458952130043232

noncomputable section

/-- A284818: Positions of 0 in A284817.

Offset 1, canonical program `A284818.P2162458952130043232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284818 (n : ℕ) : ℤ :=
  (A284818.P2162458952130043232.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284881.P16258864461448778512

`Δ[A284878(n+1)+n]-1`
-/

namespace A284881.P16258864461448778512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A284881.P16258864461448778512

noncomputable section

/-- A284881: Difference sequence of A284878.

Offset 1, canonical program `A284881.P16258864461448778512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284881 (n : ℕ) : ℤ :=
  A284881.P16258864461448778512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284882.P13401279417778518260

`A284878(n+1)+2*A189629(n+1)`
-/

namespace A284882.P13401279417778518260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (n + 1) + 2 * A189629 (n + 1)

end

end A284882.P13401279417778518260

noncomputable section

/-- A284882: Positions of -1 in A284881.

Offset 1, canonical program `A284882.P13401279417778518260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284882 (n : ℕ) : ℤ :=
  A284882.P13401279417778518260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284883.P7296943405471408281

`∪[A189634(2*(n+1)), A189634(2*(n+1))-2]`
-/

namespace A284883.P7296943405471408281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189634 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189634 (2 * (n + 1)) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A284883.P7296943405471408281

noncomputable section

/-- A284883: Positions of 0 in A284881.

Offset 1, canonical program `A284883.P7296943405471408281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284883 (n : ℕ) : ℤ :=
  (A284883.P7296943405471408281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284905.P11490552408293159038

`char[A285347(n+1)]`
-/

namespace A284905.P11490552408293159038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284905.P11490552408293159038

noncomputable section

/-- A284905: Fixed point of the morphism 0 -> 01, 1 -> 1001.

Offset 1, canonical program `A284905.P11490552408293159038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284905 (n : ℕ) : ℤ :=
  (A284905.P11490552408293159038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284934.P7002224388800912769

`4*(n+1)-(A285976(n+1)+1)`
-/

namespace A284934.P7002224388800912769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - (A285976 (n + 1) + 1)

end

end A284934.P7002224388800912769

noncomputable section

/-- A284934: Positions of 1 in A284792; complement of A284933.

Offset 1, canonical program `A284934.P7002224388800912769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284934 (n : ℕ) : ℤ :=
  A284934.P7002224388800912769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285302.P16715383448792695938

`∑[A284369(n+1)+1]`
-/

namespace A285302.P16715383448792695938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284369 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285302.P16715383448792695938

noncomputable section

/-- A285302: Positions of 0 in A285301, complement of A086398.

Offset 1, canonical program `A285302.P16715383448792695938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285302 (n : ℕ) : ℤ :=
  A285302.P16715383448792695938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285346.P16359284748052672519

`∑[4-A326420(n+1)]`
-/

namespace A285346.P16359284748052672519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A326420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285346.P16359284748052672519

noncomputable section

/-- A285346: Positions of 0 in A285345; complement of A285347.

Offset 1, canonical program `A285346.P16359284748052672519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285346 (n : ℕ) : ℤ :=
  A285346.P16359284748052672519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286047.P5733247358110953504

`A285972(n+2)+Δ[n²]`
-/

namespace A286047.P5733247358110953504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285972 (n + 2) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286047.P5733247358110953504

noncomputable section

/-- A286047: Positions of 0 in A286046; complement of A286048.

Offset 1, canonical program `A286047.P5733247358110953504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A286047 (n : ℕ) : ℤ :=
  A286047.P5733247358110953504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A286047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286057.P3029216040997174688

`1+eq[1, A286055(n+1)]`
-/

namespace A286057.P3029216040997174688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286057.P3029216040997174688

noncomputable section

/-- A286057: Positions of 1 in A286055; complement of A286056.

Offset 1, canonical program `A286057.P3029216040997174688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A286057 (n : ℕ) : ℤ :=
  (A286057.P3029216040997174688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. -/
def A286057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286259.P18123077156284400842

`(2+(A001511(n+1)+A049820(n+1))²-A001511(n+1)-3*A049820(n+1))/2`
-/

namespace A286259.P18123077156284400842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A001511 (n + 1) + A049820 (n + 1)) ^ 2 - A001511 (n + 1) - 3 * A049820 (n + 1) : ℚ) / 2

end

end A286259.P18123077156284400842

noncomputable section

/-- A286259: Compound filter: a(n) = P(A001511(n), A049820(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286259.P18123077156284400842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286259.P18123077156284400842.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286259.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286324.P10528776469317877690

`A000005(A350390(n+1))`
-/

namespace A286324.P10528776469317877690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A350390 (n + 1)).toNat

end

end A286324.P10528776469317877690

noncomputable section

/-- A286324: a(n) is the number of bi-unitary divisors of n.

Offset 1, canonical program `A286324.P10528776469317877690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286324 (n : ℕ) : ℤ :=
  A286324.P10528776469317877690.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286530.P8332738514861168906

`A286529(n+1)-A000005(n+1)`
-/

namespace A286530.P8332738514861168906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (n + 1) - A000005 (n + 1)

end

end A286530.P8332738514861168906

noncomputable section

/-- A286530: a(n) = d(n+d(n)) - d(n), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A286530.P8332738514861168906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286530 (n : ℕ) : ℤ :=
  A286530.P8332738514861168906.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286990.P5038761849871249141

`A286726(A133310(n))`
-/

namespace A286990.P5038761849871249141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A133310 n).toNat

end

end A286990.P5038761849871249141

noncomputable section

/-- A286990: {0->010, 1->101}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286990.P5038761849871249141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286990 (n : ℕ) : ℤ :=
  A286990.P5038761849871249141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287526.P12703940711411786649

`A189725(A189633(2*n+1)-n)`
-/

namespace A287526.P12703940711411786649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (A189633 (2 * n + 1) - (n : ℤ)).toNat

end

end A287526.P12703940711411786649

noncomputable section

/-- A287526: Positions of 1 in A287524.

Offset 1, canonical program `A287526.P12703940711411786649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A287526 (n : ℕ) : ℤ :=
  A287526.P12703940711411786649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A287526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287801.P16564018995618813451

`A079978(A287773(n+1)+n)`
-/

namespace A287801.P16564018995618813451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A287773 (n + 1) + (n : ℤ)).toNat

end

end A287801.P16564018995618813451

noncomputable section

/-- A287801: {0->100, 1->001}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287801.P16564018995618813451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287801 (n : ℕ) : ℤ :=
  A287801.P16564018995618813451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289055.P12978513394096284979

`(col(n)+1)*A028815(row(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289055.P12978513394096284979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * A028815 (SequenceMachineLib.triRow n)

end

end A289055.P12978513394096284979

noncomputable section

/-- A289055: Triangle read by rows: T(n,k) = (k+1)*A028815(n) for 0 <= k <= n.

Offset 0, canonical program `A289055.P12978513394096284979`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)*A028815(row(n))` (program `A289055.P12978513394096284979`, by `A289055.P12978513394096284979.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A289055 (n : ℕ) : ℤ :=
  A289055.P12978513394096284979.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)*A028815(row(n))` (program `A289055.P12978513394096284979`, by `A289055.P12978513394096284979.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A289055.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A289616.P6968600782892435759

`A289654(n+1)-A289207(n)`
-/

namespace A289616.P6968600782892435759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289654 (n + 1) - A289207 n

end

end A289616.P6968600782892435759

noncomputable section

/-- A289616: A246604 (Catalan(n)-n) with initial terms 1,0,0,2,10 changed to 1,1,1,2,11.

Offset 0, canonical program `A289616.P6968600782892435759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289616 (n : ℕ) : ℤ :=
  A289616.P6968600782892435759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289982.P14518482289595983886

`A054723(eq[2, A054723(n+2)-A054723(n+1)]+1)`
-/

namespace A289982.P14518482289595983886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 2) - A054723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A289982.P14518482289595983886

noncomputable section

/-- A289982: Lesser member p of twin primes in A054723 (Prime exponents of composite Mersenne numbers).

Offset 1, canonical program `A289982.P14518482289595983886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A289982 (n : ℕ) : ℤ :=
  A289982.P14518482289595983886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A289982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292145.P11540186890732361601

`A292144(A013929(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292145.P11540186890732361601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292144 (A013929 (n + 1)).toNat

end

end A292145.P11540186890732361601

noncomputable section

/-- A292145: A permutation of the natural numbers: A292144(A013929(n)).

Offset 1, canonical program `A292145.P11540186890732361601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A292144, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292145 (n : ℕ) : ℤ :=
  A292145.P11540186890732361601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A292144, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293575.P9230853573519528425

`A056595(n+1)-1`
-/

namespace A293575.P9230853573519528425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1) - 1

end

end A293575.P9230853573519528425

noncomputable section

/-- A293575: Difference between the number of proper divisors of n and the number of squares dividing n.

Offset 1, canonical program `A293575.P9230853573519528425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293575 (n : ℕ) : ℤ :=
  A293575.P9230853573519528425.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294442.P13782676266892454172

`A093873(A092754(n+1))`
-/

namespace A294442.P13782676266892454172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A092754 (n + 1)).toNat

end

end A294442.P13782676266892454172

noncomputable section

/-- A294442: Kepler's tree of fractions, read across rows (the fraction i/j is represented as the pair i,j).

Offset 0, canonical program `A294442.P13782676266892454172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5905 terms. -/
def A294442 (n : ℕ) : ℤ :=
  A294442.P13782676266892454172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5905 terms. -/
def A294442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294612.P4833185872788990948

`A007504(n+1)/A024450(n+1)*A296199(n+1)`
-/

namespace A294612.P4833185872788990948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A024450 (n + 1) : ℚ) * (A296199 (n + 1) : ℚ)

end

end A294612.P4833185872788990948

noncomputable section

/-- A294612: Denominator of the contraharmonic mean of the first n primes.

Offset 1, canonical program `A294612.P4833185872788990948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294612 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294612.P4833185872788990948.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295820.P16692635017392490781

`a(n-1)+A295819(n)` with `a(0)=0`
-/

namespace A295820.P16692635017392490781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A295819 n

end

end A295820.P16692635017392490781

noncomputable section

/-- A295820: Number of nonnegative solutions to (x,y) = 1 and x^2 + y^2 <= n.

Offset 0, canonical program `A295820.P16692635017392490781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295820 (n : ℕ) : ℤ :=
  A295820.P16692635017392490781.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296302.P8637239320253714587

`∑{d}[n+1, A034771(#)*A247343((n+1)/#)]`
-/

namespace A296302.P8637239320253714587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034771 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296302.P8637239320253714587

noncomputable section

/-- A296302: Number of aperiodic compositions of n with relatively prime parts. Number of compositions of n with relatively prime parts and relatively prime run-lengths.

Offset 1, canonical program `A296302.P8637239320253714587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A296302 (n : ℕ) : ℤ :=
  A296302.P8637239320253714587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A296302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298861.P498187030667195910

`a(n-1)+A217564(n)+1` with `a(0)=1`
-/

namespace A298861.P498187030667195910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A217564 n + 1)

end

end A298861.P498187030667195910

noncomputable section

/-- A298861: Rank of n-th prime when all the primes and twice-primes are jointly ranked.

Offset 1, canonical program `A298861.P498187030667195910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298861 (n : ℕ) : ℤ :=
  A298861.P498187030667195910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299991.P4270556615329755926

`lt[0, A299990(n+1)]+1`
-/

namespace A299991.P4270556615329755926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A299991.P4270556615329755926

noncomputable section

/-- A299991: Numbers n for which A243822(n) > A000005(n).

Offset 1, canonical program `A299991.P4270556615329755926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6114 terms. -/
def A299991 (n : ℕ) : ℤ :=
  (A299991.P4270556615329755926.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6114 terms. -/
def A299991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300155.P11709344862786057600

`eq[0, A299990(n+1)]+1`
-/

namespace A300155.P11709344862786057600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300155.P11709344862786057600

noncomputable section

/-- A300155: Numbers n for which A243822(n) = A000005(n).

Offset 1, canonical program `A300155.P11709344862786057600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 434 terms. -/
def A300155 (n : ℕ) : ℤ :=
  (A300155.P11709344862786057600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 434 terms. -/
def A300155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300852.P6997038708606362003

`∑{d}[n+1, #*#%2]-A300893(n+1)`
-/

namespace A300852.P6997038708606362003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ) - A300893 (n + 1)

end

end A300852.P6997038708606362003

noncomputable section

/-- A300852: L.g.f.: log(Product_{k>=1} (1 + x^prime(k))) = Sum_{n>=1} a(n)*x^n/n.

Offset 1, canonical program `A300852.P6997038708606362003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300852 (n : ℕ) : ℤ :=
  A300852.P6997038708606362003.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304095.P8518165107337469446

`∑{d}[n+1, A157658(#)*A304096((n+1)/#)]`
-/

namespace A304095.P8518165107337469446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A304096 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304095.P8518165107337469446

noncomputable section

/-- A304095: a(n) is the number of the proper divisors of n that are Lucas numbers larger than 3 (4, 7, 11, 18, ...).

Offset 1, canonical program `A304095.P8518165107337469446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304095 (n : ℕ) : ℤ :=
  A304095.P8518165107337469446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304571.P9163030136196335364

`A000007(A127368(n+1)+A051731(n+1))`
-/

namespace A304571.P9163030136196335364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A127368 (n + 1) + A051731 (n + 1)).toNat

end

end A304571.P9163030136196335364

noncomputable section

/-- A304571: Triangle read by rows: T(n,k) = 1 if gcd(k,n) > 1 and n mod k != 0.

Offset 1, canonical program `A304571.P9163030136196335364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304571 (n : ℕ) : ℤ :=
  A304571.P9163030136196335364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305543.P8141347739697117408

`(A056284(n+1)-A056490(n+1))/2`
-/

namespace A305543.P8141347739697117408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056284 (n + 1) - A056490 (n + 1) : ℚ) / 2

end

end A305543.P8141347739697117408

noncomputable section

/-- A305543: Number of chiral pairs of color loops of length n with exactly 4 different colors.

Offset 1, canonical program `A305543.P8141347739697117408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056284, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305543 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A305543.P8141347739697117408.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056284, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306156.P7321451468610362585

`∑{d}[A006519(n+1), A001037((n+1)/#)]`
-/

namespace A306156.P7321451468610362585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001037 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306156.P7321451468610362585

noncomputable section

/-- A306156: Inverse Weigh transform of 2^n.

Offset 1, canonical program `A306156.P7321451468610362585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A306156 (n : ℕ) : ℤ :=
  A306156.P7321451468610362585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A306156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306345.P6612547379326574336

`abs(A001221(n+1)-A055212(n+1))`
-/

namespace A306345.P6612547379326574336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001221 (n + 1) - A055212 (n + 1)|

end

end A306345.P6612547379326574336

noncomputable section

/-- A306345: Absolute difference between the number of prime divisors and the number of composite divisors of n.

Offset 1, canonical program `A306345.P6612547379326574336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306345 (n : ℕ) : ℤ :=
  A306345.P6612547379326574336.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306345.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306682.P11360712118956145825

`gcd(A000203(n+1), A187680(n+1))`
-/

namespace A306682.P11360712118956145825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A187680 (n + 1))

end

end A306682.P11360712118956145825

noncomputable section

/-- A306682: a(n) = gcd(sigma(n), pod(n)) where sigma(k) = the sum of the divisors of k (A000203) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A306682.P11360712118956145825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306682 (n : ℕ) : ℤ :=
  (A306682.P11360712118956145825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306705.P258986654421283042

`A211776(n+1)*A007955(n+1)`
-/

namespace A306705.P258986654421283042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1) * A007955 (n + 1)

end

end A306705.P258986654421283042

noncomputable section

/-- A306705: a(n) = Product_{d|n} d*tau(d), where tau(k) = the number of the divisors of k (A000005).

Offset 1, canonical program `A306705.P258986654421283042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306705 (n : ℕ) : ℤ :=
  A306705.P258986654421283042.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306705.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307101.P8537828544159030044

`A211776(n+1)*A266265(n+1)`
-/

namespace A307101.P8537828544159030044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1) * A266265 (n + 1)

end

end A307101.P8537828544159030044

noncomputable section

/-- A307101: a(n) = Product_{d|n} (tau(d)*pod(d)) where tau(k) = the number of divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A307101.P8537828544159030044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307101 (n : ℕ) : ℤ :=
  A307101.P8537828544159030044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307360.P8284333854152591718

`∪[A089581(n+1), A166684(n+1)]`
-/

namespace A307360.P8284333854152591718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307360.P8284333854152591718

noncomputable section

/-- A307360: A sequence in which every divisor other than 1 is used at most three times.

Offset 1, canonical program `A307360.P8284333854152591718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307360 (n : ℕ) : ℤ :=
  (A307360.P8284333854152591718.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307508.P1138066095491844169

`A000040(A247514(n+1))`
-/

namespace A307508.P1138066095491844169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A247514 (n + 1)).toNat

end

end A307508.P1138066095491844169

noncomputable section

/-- A307508: Primes p for which the continued fraction expansion of sqrt(p) does not have a 1 in the second position.

Offset 1, canonical program `A307508.P1138066095491844169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A307508 (n : ℕ) : ℤ :=
  A307508.P1138066095491844169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A307508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307716.P13840358709468437809

`∑[A000040(n+1)]/A309036(n+1)`
-/

namespace A307716.P13840358709468437809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A309036 (n + 1) : ℚ)

end

end A307716.P13840358709468437809

noncomputable section

/-- A307716: Denominator of the barycenter of first n primes defined as a(n) = denominator(Sum_{i=1..n} (i*prime(i)) / Sum_{i=1..n} prime(i)).

Offset 1, canonical program `A307716.P13840358709468437809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307716 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307716.P13840358709468437809.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175746.P1226812714063518705

`filter[A081619(n+2), A181183(#)]`
-/

namespace A175746.P1226812714063518705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A175746.P1226812714063518705

noncomputable section

/-- A175746: Numbers with 36 divisors.

Offset 1, canonical program `A175746.P1226812714063518705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 743 terms. -/
def A175746 (n : ℕ) : ℤ :=
  A175746.P1226812714063518705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 743 terms. -/
def A175746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176081.P16384484336768310434

`A176080(A061579(n))+A176080(n)`
-/

namespace A176081.P16384484336768310434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176080 (A061579 n).toNat + A176080 n

end

end A176081.P16384484336768310434

noncomputable section

/-- A176081: Triangle, read by rows, T(n, k) = Sum_{j=0..k} (n+k)!/((n-j)!*(k-j)!*j!) + Sum_{j=0..n-k} (2*n-k)!/((n-j)!*(n-k-j)!*j!).

Offset 0, canonical program `A176081.P16384484336768310434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A176081 (n : ℕ) : ℤ :=
  A176081.P16384484336768310434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A176081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176121.P3699890935683436362

`A176120(n)*A178300(n+1)`
-/

namespace A176121.P3699890935683436362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 n * A178300 (n + 1)

end

end A176121.P3699890935683436362

noncomputable section

/-- A176121: Triangle, read by rows, T(n,k) = binomial(n+k+1, n+1) * Sum_{j=0..k} j!*binomial(n,j)*binomial(k, j).

Offset 0, canonical program `A176121.P3699890935683436362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A176121 (n : ℕ) : ℤ :=
  A176121.P3699890935683436362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A176121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176562.P7798059674671749075

`A305117(n²)`
-/

namespace A176562.P7798059674671749075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n ^ 2)

end

end A176562.P7798059674671749075

noncomputable section

/-- A176562: a(n) = A175341(n)/4.

Offset 0, canonical program `A176562.P7798059674671749075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176562 (n : ℕ) : ℤ :=
  A176562.P7798059674671749075.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181132.P3293973136529451721

`A059015(n)-1`
-/

namespace A181132.P3293973136529451721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 n - 1

end

end A181132.P3293973136529451721

noncomputable section

/-- A181132: a(0)=0; thereafter a(n) = total number of 0's in binary expansions of 1, ..., n.

Offset 0, canonical program `A181132.P3293973136529451721`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181132 (n : ℕ) : ℤ :=
  A181132.P3293973136529451721.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059015, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181298.P4944943515467020596

`2*A181337(n)`
-/

namespace A181298.P4944943515467020596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181337 n

end

end A181298.P4944943515467020596

noncomputable section

/-- A181298: The number of even entries in all the 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181298.P4944943515467020596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181298 (n : ℕ) : ℤ :=
  A181298.P4944943515467020596.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181298.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181371.P3047154225030384075

`A125662(A091018(n))`
-/

namespace A181371.P3047154225030384075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125662 (A091018 n).toNat

end

end A181371.P3047154225030384075

noncomputable section

/-- A181371: Triangle read by rows: T(n,k) is the number of ternary words (i.e., finite sequences of 0's, 1's and 2's) of length n having k occurrences of 01's (0 <= k <= floor(n/2)).

Offset 0, canonical program `A181371.P3047154225030384075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A181371 (n : ℕ) : ℤ :=
  A181371.P3047154225030384075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A181371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182318.P12456302042161532717

`filter[A047501(n+1), A295316(#)]`
-/

namespace A182318.P12456302042161532717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A182318.P12456302042161532717

noncomputable section

/-- A182318: List of positive integers whose prime tower factorization, as defined in comments, does not contain the prime 2.

Offset 1, canonical program `A182318.P12456302042161532717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6763 terms. -/
def A182318 (n : ℕ) : ℤ :=
  A182318.P12456302042161532717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6763 terms. -/
def A182318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182340.P464581348279077059

`eq[5, gcd(5, A000026(n+1))]+1`
-/

namespace A182340.P464581348279077059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A000026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A182340.P464581348279077059

noncomputable section

/-- A182340: List of positive integers whose prime tower factorization, as defined in comments, contains the prime 5.

Offset 1, canonical program `A182340.P464581348279077059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2150 terms. -/
def A182340 (n : ℕ) : ℤ :=
  (A182340.P464581348279077059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2150 terms. -/
def A182340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182341.P1387839447626138029

`eq[7, gcd(7, A000026(n+1))]+1`
-/

namespace A182341.P1387839447626138029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A000026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A182341.P1387839447626138029

noncomputable section

/-- A182341: List of positive integers whose prime tower factorization, as defined in comments, contains the prime 7.

Offset 1, canonical program `A182341.P1387839447626138029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. -/
def A182341 (n : ℕ) : ℤ :=
  (A182341.P1387839447626138029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. -/
def A182341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182471.P3637716054381294582

`floor(A008474(n+1)/A000026(A034444(n+1)))`
-/

namespace A182471.P3637716054381294582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008474 (n + 1) : ℚ) / (A000026 (A034444 (n + 1)).toNat : ℚ)⌋

end

end A182471.P3637716054381294582

noncomputable section

/-- A182471: If n = Product (p_j^k_j), j=1 to m, then a(n) = Floor( Sum (p_j + k_j) / 2m ) (a(1) = 0 by convention).

Offset 1, canonical program `A182471.P3637716054381294582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182471 (n : ℕ) : ℤ :=
  A182471.P3637716054381294582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186129.P8547217690229078494

`lt[5, A293235(n+1)]+1`
-/

namespace A186129.P8547217690229078494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A186129.P8547217690229078494

noncomputable section

/-- A186129: Numbers that can be partitioned into four parts s, t, u, v such that s+k = t-k = u*k = v/k for some k > 1.

Offset 1, canonical program `A186129.P8547217690229078494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1178 terms. -/
def A186129 (n : ℕ) : ℤ :=
  (A186129.P8547217690229078494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1178 terms. -/
def A186129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187974.P12540977451401628100

`comp[A188045(n+1)-4]`
-/

namespace A187974.P12540977451401628100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187974.P12540977451401628100

noncomputable section

/-- A187974: Positions of 1 in A187972; complement of A187973.

Offset 1, canonical program `A187974.P12540977451401628100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187974 (n : ℕ) : ℤ :=
  (A187974.P12540977451401628100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187978.P14878399714927445587

`record[A080755(n+1)*A188395(n+1)]`
-/

namespace A187978.P14878399714927445587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1) * A188395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187978.P14878399714927445587

noncomputable section

/-- A187978: Positions of 1 in A187976; complement of A187977.

Offset 1, canonical program `A187978.P14878399714927445587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A187978 (n : ℕ) : ℤ :=
  A187978.P14878399714927445587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A187978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188024.P14928406718776886035

`comp[A026351(n+1)*A188467(n+1)]`
-/

namespace A188024.P14928406718776886035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 1) * A188467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188024.P14928406718776886035

noncomputable section

/-- A188024: Positions of 0 in A188020; complement of A188025.

Offset 1, canonical program `A188024.P14928406718776886035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5452 terms. -/
def A188024 (n : ℕ) : ℤ :=
  (A188024.P14928406718776886035.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5452 terms. -/
def A188024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188030.P265076706034375144

`A188435(n+1)+2*A188016(n+1)`
-/

namespace A188030.P265076706034375144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (n + 1) + 2 * A188016 (n + 1)

end

end A188030.P265076706034375144

noncomputable section

/-- A188030: Positions of 1 in the zero-one sequence given by [nr]-[nr-10r]-[10r], where r=(1+sqrt(5))/2, [ ]=floor, n>=1.

Offset 1, canonical program `A188030.P265076706034375144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188030 (n : ℕ) : ℤ :=
  A188030.P265076706034375144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188473.P2410951327315252382

`A188435(n+1)+A188016(n+1)`
-/

namespace A188473.P2410951327315252382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (n + 1) + A188016 (n + 1)

end

end A188473.P2410951327315252382

noncomputable section

/-- A188473: Positions of 1 in A188472.

Offset 1, canonical program `A188473.P2410951327315252382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188473 (n : ℕ) : ℤ :=
  A188473.P2410951327315252382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189022.P14953887359045575583

`∑{d}[n+1, A307445(#)*A365348((n+1)/#)]`
-/

namespace A189022.P14953887359045575583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A365348 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A189022.P14953887359045575583

noncomputable section

/-- A189022: Apostol's third-order Möbius function mu_3(n).

Offset 1, canonical program `A189022.P14953887359045575583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189022 (n : ℕ) : ℤ :=
  A189022.P14953887359045575583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189707.P8858125208000123597

`comp[A189708(n+1)-1]+1`
-/

namespace A189707.P8858125208000123597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189708 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189707.P8858125208000123597

noncomputable section

/-- A189707: Positions of 0 in A189706; complement of A189708.

Offset 1, canonical program `A189707.P8858125208000123597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189707 (n : ℕ) : ℤ :=
  (A189707.P8858125208000123597.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191528.P9215815392354335812

`A007318(A091018(n)-A000194(n))`
-/

namespace A191528.P9215815392354335812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A091018 n - A000194 n).toNat

end

end A191528.P9215815392354335812

noncomputable section

/-- A191528: Triangle read by rows: T(n,k) is the number of left factors of Dyck paths of length n that have k returns to the axis.

Offset 0, canonical program `A191528.P9215815392354335812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A191528 (n : ℕ) : ℤ :=
  A191528.P9215815392354335812.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A191528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193138.P12552581172921823484

`A004525(Δ[A305117(n+2)])`
-/

namespace A193138.P12552581172921823484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A193138.P12552581172921823484

noncomputable section

/-- A193138: Number of square satins of order n.

Offset 3, canonical program `A193138.P12552581172921823484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A193138 (n : ℕ) : ℤ :=
  A193138.P12552581172921823484.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A193138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195896.P14358306679495744766

`∪[A001747(n+1), A112773(n+1)]-1`
-/

namespace A195896.P14358306679495744766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A195896.P14358306679495744766

noncomputable section

/-- A195896: Numbers of the form 2*p-1 or 3*p-1 where p is 1 or a prime.

Offset 1, canonical program `A195896.P14358306679495744766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195896 (n : ℕ) : ℤ :=
  A195896.P14358306679495744766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199478.P6630177777262602825

`A081277(A091018(n+2))`
-/

namespace A199478.P6630177777262602825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 (A091018 (n + 2)).toNat

end

end A199478.P6630177777262602825

noncomputable section

/-- A199478: Irregular triangle read by rows: T(n,i) = 2^(i-1)*(binomial(n-i+1,i)+binomial(n-i,i)), n >= 1, 0 <= i <= (n+1)/2.

Offset 1, canonical program `A199478.P6630177777262602825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A199478 (n : ℕ) : ℤ :=
  A199478.P6630177777262602825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A199478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201259.P11575144589005381822

`A049441(n+1)^3+3`
-/

namespace A201259.P11575144589005381822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049441 (n + 1) ^ 3 + 3

end

end A201259.P11575144589005381822

noncomputable section

/-- A201259: Primes of the form n^3+3.

Offset 1, canonical program `A201259.P11575144589005381822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201259 (n : ℕ) : ℤ :=
  A201259.P11575144589005381822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202090.P4126079562617871700

`A049711(A000045(n+5))`
-/

namespace A202090.P4126079562617871700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A000045 (n + 5)).toNat

end

end A202090.P4126079562617871700

noncomputable section

/-- A202090: a(n) = Fibonacci(n) - p, where p is the largest prime < Fibonacci(n).

Offset 5, canonical program `A202090.P4126079562617871700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202090 (n : ℕ) : ℤ :=
  A202090.P4126079562617871700.a (n - 5)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A202095.P12678363989807783651

`A250428(n+2)`
-/

namespace A202095.P12678363989807783651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250428 (n + 2)

end

end A202095.P12678363989807783651

noncomputable section

/-- A202095: Number of (n+2)X5 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202095.P12678363989807783651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202095 (n : ℕ) : ℤ :=
  A202095.P12678363989807783651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202111.P12212055803023361538

`A049711(A000203(n+2))`
-/

namespace A202111.P12212055803023361538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A000203 (n + 2)).toNat

end

end A202111.P12212055803023361538

noncomputable section

/-- A202111: a(n) = sigma(n) - p, where p is the largest prime < sigma(n).

Offset 2, canonical program `A202111.P12212055803023361538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202111 (n : ℕ) : ℤ :=
  A202111.P12212055803023361538.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202111.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A202334.P8072250924669287975

`A202335(∑[n+6]+22)`
-/

namespace A202334.P8072250924669287975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A202334.P8072250924669287975

noncomputable section

/-- A202334: Number of (n+1) X 8 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

Offset 1, canonical program `A202334.P8072250924669287975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A202334 (n : ℕ) : ℤ :=
  A202334.P8072250924669287975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A202334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203074.P7851202269046150314

`A014210((n-1)%a(n-1))` with `a(0)=1`
-/

namespace A203074.P7851202269046150314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014210 (Int.tmod ((n : ℤ) - 1) (a (n - 1))).toNat

end

end A203074.P7851202269046150314

noncomputable section

/-- A203074: a(0) = 1; for n > 0, a(n) = next prime after 2^(n-1).

Offset 0, canonical program `A203074.P7851202269046150314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A203074 (n : ℕ) : ℤ :=
  A203074.P7851202269046150314.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A203074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207537.P9241399492848314122

`A200139(A091018(n+1))`
-/

namespace A207537.P9241399492848314122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 (A091018 (n + 1)).toNat

end

end A207537.P9241399492848314122

noncomputable section

/-- A207537: Triangle of coefficients of polynomials u(n,x) jointly generated with A207538; see Formula section.

Offset 1, canonical program `A207537.P9241399492848314122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A207537 (n : ℕ) : ℤ :=
  A207537.P9241399492848314122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A207537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207617.P12486162294747434692

`A236376(A091018(n+1))`
-/

namespace A207617.P12486162294747434692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236376 (A091018 (n + 1)).toNat

end

end A207617.P12486162294747434692

noncomputable section

/-- A207617: Triangle of coefficients of polynomials v(n,x) jointly generated with A207616; see the Formula section.

Offset 1, canonical program `A207617.P12486162294747434692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A207617 (n : ℕ) : ℤ :=
  A207617.P12486162294747434692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A207617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207622.P11482556725908799106

`A000079(n%floor(sqrt(n+1)))*A207616(n+1)`
-/

namespace A207622.P11482556725908799106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n % Nat.sqrt (n + 1)) * A207616 (n + 1)

end

end A207622.P11482556725908799106

noncomputable section

/-- A207622: Triangle of coefficients of polynomials u(n,x) jointly generated with A207623; see the Formula section.

Offset 1, canonical program `A207622.P11482556725908799106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207622 (n : ℕ) : ℤ :=
  A207622.P11482556725908799106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208117.P2010372378160813750

`A208115(n+1)/A207363(n+1)*A208552(n+1)`
-/

namespace A208117.P2010372378160813750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208115 (n + 1) : ℚ) / (A207363 (n + 1) : ℚ) * (A208552 (n + 1) : ℚ)

end

end A208117.P2010372378160813750

noncomputable section

/-- A208117: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

Offset 1, canonical program `A208117.P2010372378160813750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208117 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208117.P2010372378160813750.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208508.P9829869949086533994

`A208513(A056536(n+2))`
-/

namespace A208508.P9829869949086533994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208513 (A056536 (n + 2)).toNat

end

end A208508.P9829869949086533994

noncomputable section

/-- A208508: Triangle of coefficients of polynomials u(n,x) jointly generated with A208509; see the Formula section.

Offset 1, canonical program `A208508.P9829869949086533994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A208508 (n : ℕ) : ℤ :=
  A208508.P9829869949086533994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A208508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208754.P18207085302697048033

`A059268(A091018(n))*A208509(n+1)`
-/

namespace A208754.P18207085302697048033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A208509 (n + 1)

end

end A208754.P18207085302697048033

noncomputable section

/-- A208754: Triangle of coefficients of polynomials v(n,x) jointly generated with A208753; see the Formula section.

Offset 1, canonical program `A208754.P18207085302697048033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A208754 (n : ℕ) : ℤ :=
  A208754.P18207085302697048033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A208754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210197.P2839348897359410372

`A193845(A091018(n))`
-/

namespace A210197.P2839348897359410372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 (A091018 n).toNat

end

end A210197.P2839348897359410372

noncomputable section

/-- A210197: Triangle of coefficients of polynomials u(n,x) jointly generated with A210198; see the Formula section.

Offset 1, canonical program `A210197.P2839348897359410372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A210197 (n : ℕ) : ℤ :=
  A210197.P2839348897359410372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A210197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211271.P4906391338954789075

`A038548(3*(n+1))-gcd(2, n+1)`
-/

namespace A211271.P4906391338954789075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (3 * (n + 1)) - (Nat.gcd 2 (n + 1) : ℤ)

end

end A211271.P4906391338954789075

noncomputable section

/-- A211271: Number of integer pairs (x,y) such that 0<x<=y<=n and x*y=3n.

Offset 1, canonical program `A211271.P4906391338954789075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A211271 (n : ℕ) : ℤ :=
  A211271.P4906391338954789075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A211271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211275.P17918795795607819298

`A362059(n+1)-A181972(n+1)`
-/

namespace A211275.P17918795795607819298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (n + 1) - A181972 (n + 1)

end

end A211275.P17918795795607819298

noncomputable section

/-- A211275: Number of integer pairs (x,y) such that 0 < x <= y <= n and x*y <= floor(n/2).

Offset 1, canonical program `A211275.P17918795795607819298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211275 (n : ℕ) : ℤ :=
  A211275.P17918795795607819298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211484.P16708190854633799120

`∩[A030231(n+1), A366762(n+1)]`
-/

namespace A211484.P16708190854633799120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211484.P16708190854633799120

noncomputable section

/-- A211484: Numbers for which the canonical prime factorization contains only an even number of exponents, all of which are congruent to 1 modulo 3.

Offset 1, canonical program `A211484.P16708190854633799120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A211484 (n : ℕ) : ℤ :=
  (A211484.P16708190854633799120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A211484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211485.P8134217445044999600

`∩[A366762(n+1), A375960(n+1)]`
-/

namespace A211485.P8134217445044999600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211485.P8134217445044999600

noncomputable section

/-- A211485: Numbers for which the canonical prime factorization contains only an odd number of exponents, all of which are congruent to 1 modulo 3.

Offset 1, canonical program `A211485.P8134217445044999600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A211485 (n : ℕ) : ℤ :=
  (A211485.P8134217445044999600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A211485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213343.P5626630658667177083

`A000267(n)/A122197(n+1)*A051288(n)`
-/

namespace A213343.P5626630658667177083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000267 n : ℚ) / (A122197 (n + 1) : ℚ) * (A051288 n : ℚ)

end

end A213343.P5626630658667177083

noncomputable section

/-- A213343: 1-quantum transitions in systems of N spin 1/2 particles, in columns by combination indices. Triangle read by rows, T(n, k) for n >= 1 and 0 <= k <= floor((n-1)/2).

Offset 1, canonical program `A213343.P5626630658667177083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7266 terms. -/
def A213343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213343.P5626630658667177083.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7266 terms. -/
def A213343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216887.P7016313047720049362

`eq[A003415(A050376(2*(n+2))), A003415(n)]`
-/

namespace A216887.P7016313047720049362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A050376 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216887.P7016313047720049362

noncomputable section

/-- A216887: Primes p such that x^67 = 2 has a solution mod p.

Offset 1, canonical program `A216887.P7016313047720049362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A216887 (n : ℕ) : ℤ :=
  (A216887.P7016313047720049362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A216887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224450.P3123032026514639829

`filter[A008784(n+2), A354924(#)]`
-/

namespace A224450.P3123032026514639829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A224450.P3123032026514639829

noncomputable section

/-- A224450: Numbers that are the primitive sum of two nonzero squares in exactly one way.

Offset 1, canonical program `A224450.P3123032026514639829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5204 terms. -/
def A224450 (n : ℕ) : ℤ :=
  A224450.P3123032026514639829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5204 terms. -/
def A224450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228382.P1375136025872469721

`A005101(A316095(n+1))`
-/

namespace A228382.P1375136025872469721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A316095 (n + 1)).toNat

end

end A228382.P1375136025872469721

noncomputable section

/-- A228382: Abundant numbers that differ from the next abundant number by 3.

Offset 1, canonical program `A228382.P1375136025872469721`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A316095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228382 (n : ℕ) : ℤ :=
  A228382.P1375136025872469721.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A316095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229972.P9080360286845708223

`filter[A375960(n+1), A005171(#)]`
-/

namespace A229972.P9080360286845708223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A229972.P9080360286845708223

noncomputable section

/-- A229972: Nonprime numbers whose product of proper divisors is a perfect cube.

Offset 1, canonical program `A229972.P9080360286845708223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7016 terms. -/
def A229972 (n : ℕ) : ℤ :=
  A229972.P9080360286845708223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7016 terms. -/
def A229972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230095.P4209829393180644445

`filter[A230048(n+2), A354927(#)]`
-/

namespace A230095.P4209829393180644445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A230095.P4209829393180644445

noncomputable section

/-- A230095: Odious numbers (A000069) that are the product of exactly two distinct primes.

Offset 1, canonical program `A230095.P4209829393180644445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4157 terms. -/
def A230095 (n : ℕ) : ℤ :=
  A230095.P4209829393180644445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4157 terms. -/
def A230095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230294.P9485852536752022539

`∑[A095374(2*(n+1))-A095374(n+1)]`
-/

namespace A230294.P9485852536752022539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095374 (2 * (n + 1)) - A095374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230294.P9485852536752022539

noncomputable section

/-- A230294: a(n) = Sum_{i=1..n} d(4*i+1) - Sum_{i=1..n} d(2*i+1), where d(n) = A000005(n).

Offset 1, canonical program `A230294.P9485852536752022539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A230294 (n : ℕ) : ℤ :=
  A230294.P9485852536752022539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A230294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230542.P15479602818993290102

`lt[1, (n+2)%A000026(n+1)]+1`
-/

namespace A230542.P15479602818993290102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A230542.P15479602818993290102

noncomputable section

/-- A230542: Numbers that cannot be divided by their multiplicative projection (A000026).

Offset 1, canonical program `A230542.P15479602818993290102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A230542 (n : ℕ) : ℤ :=
  (A230542.P15479602818993290102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A230542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231720.P17111948023975065534

`A153880(n)+A073575(A048765(n+1))`
-/

namespace A231720.P17111948023975065534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n + A073575 (A048765 (n + 1)).toNat

end

end A231720.P17111948023975065534

noncomputable section

/-- A231720: a(0)=1, after which, for any n uniquely written as du*u! + ... + d2*2! + d1*1! (each di in range 0..i), a(n) = (du+1)*(u+1)! + ... + (d2+1)*3! + (d1+1)*2! + 1; the natural numbers with their factorial base representation (A007623) shifted left one step and each digit incremented by one, converted back to decimal.

Offset 0, canonical program `A231720.P17111948023975065534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A231720 (n : ℕ) : ℤ :=
  A231720.P17111948023975065534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A231720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233562.P4039187579232823503

`2*A234098(n+1)-1`
-/

namespace A233562.P4039187579232823503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234098 (n + 1) - 1

end

end A233562.P4039187579232823503

noncomputable section

/-- A233562: Products p*q of distinct primes such that (p*q + 1)/2 is a prime.

Offset 1, canonical program `A233562.P4039187579232823503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3672 terms. -/
def A233562 (n : ℕ) : ℤ :=
  A233562.P4039187579232823503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3672 terms. -/
def A233562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235062.P12767841605931254477

`A000178(n+1)/2^A174605(n+1)`
-/

namespace A235062.P12767841605931254477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 (n + 1) : ℚ) / (2 : ℚ) ^ (A174605 (n + 1) : ℤ)

end

end A235062.P12767841605931254477

noncomputable section

/-- A235062: Odd part of n-th superfactorial (A000178).

Offset 1, canonical program `A235062.P12767841605931254477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235062 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A235062.P12767841605931254477.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235062.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235620.P8527257182076827454

`p?[A037477(A000040(n+1))]`
-/

namespace A235620.P8527257182076827454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235620.P8527257182076827454

noncomputable section

/-- A235620: Primes whose base-9 representation also is the base-8 representation of a prime.

Offset 1, canonical program `A235620.P8527257182076827454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A235620 (n : ℕ) : ℤ :=
  A235620.P8527257182076827454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A235620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235872.P17023247656904306328

`lcm(A118830(n+1), A358272(n+1))`
-/

namespace A235872.P17023247656904306328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A118830 (n + 1)) (A358272 (n + 1))

end

end A235872.P17023247656904306328

noncomputable section

/-- A235872: Number of solutions to the equation x^2=0 in the ring of Gaussian integers modulo n.

Offset 1, canonical program `A235872.P17023247656904306328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235872 (n : ℕ) : ℤ :=
  (A235872.P17023247656904306328.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240521.P8578861033948740818

`A050376(n+1)*A050376(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A240521.P8578861033948740818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 2)

end

end A240521.P8578861033948740818

noncomputable section

/-- A240521: a(n) = A050376(n)*A050376(n+1) where A050376(n) is the n-th number of the form p^(2^k) with p is prime and k >= 0.

Offset 1, canonical program `A240521.P8578861033948740818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240521 (n : ℕ) : ℤ :=
  A240521.P8578861033948740818.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240536.P362324169712596171

`A050376(n+1)*A050376(n+4)`
-/

namespace A240536.P362324169712596171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 4)

end

end A240536.P362324169712596171

noncomputable section

/-- A240536: S_9 sequence in partition of integers > 1 described in A240521.

Offset 1, canonical program `A240536.P362324169712596171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240536 (n : ℕ) : ℤ :=
  A240536.P362324169712596171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A241024.P7090105526242822996

`A050376(n+1)*A050376(n+3)*A050376(n+4)`
-/

namespace A241024.P7090105526242822996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 3) * A050376 (n + 4)

end

end A241024.P7090105526242822996

noncomputable section

/-- A241024: S_11 sequence in partition of integers > 1 described in A240521.

Offset 1, canonical program `A241024.P7090105526242822996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241024 (n : ℕ) : ℤ :=
  A241024.P7090105526242822996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A241025.P8181339160921596088

`A050376(n+1)*A050376(n+2)*A050376(n+4)`
-/

namespace A241025.P8181339160921596088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 2) * A050376 (n + 4)

end

end A241025.P8181339160921596088

noncomputable section

/-- A241025: S_13 sequence in partition of integers > 1 described in A240521.

Offset 1, canonical program `A241025.P8181339160921596088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241025 (n : ℕ) : ℤ :=
  A241025.P8181339160921596088.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241025.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243067.P1645064430872176748

`n+1-(1+A000788(A100922(n)-1))`
-/

namespace A243067.P1645064430872176748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (1 + A000788 (A100922 n - 1).toNat)

end

end A243067.P1645064430872176748

noncomputable section

/-- A243067: Integers from 0 to A000120(n)-1 followed by integers from 0 to A000120(n+1)-1 and so on, starting with n=1.

Offset 1, canonical program `A243067.P1645064430872176748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, A100922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243067 (n : ℕ) : ℤ :=
  A243067.P1645064430872176748.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, A100922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244218.P10883957659016357263

`A244219(n+1)-1`
-/

namespace A244218.P10883957659016357263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 (n + 1) - 1

end

end A244218.P10883957659016357263

noncomputable section

/-- A244218: The ending points of runs of consecutive terms with the same parity in A014418 (n represented in Greedy Catalan Base).

Offset 0, canonical program `A244218.P10883957659016357263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4121 terms. -/
def A244218 (n : ℕ) : ℤ :=
  A244218.P10883957659016357263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4121 terms. -/
def A244218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245365.P4902612867877700399

`A000326(A114439(n+1))`
-/

namespace A245365.P4902612867877700399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A114439 (n + 1)).toNat

end

end A245365.P4902612867877700399

noncomputable section

/-- A245365: Semiprimes of the form n*(3*n-1)/2.

Offset 1, canonical program `A245365.P4902612867877700399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A245365 (n : ℕ) : ℤ :=
  A245365.P4902612867877700399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A245365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246408.P3496905763118372023

`A004526(A246411(2*n+1))%A000290(A000217(n+9))`
-/

namespace A246408.P3496905763118372023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A246411 (2 * n + 1)).toNat) (A000290 (A000217 (n + 9)).toNat)

end

end A246408.P3496905763118372023

noncomputable section

/-- A246408: Nonnegative integers k satisfying sec(k) < sec(k+1) > sec(k+2).

Offset 1, canonical program `A246408.P3496905763118372023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A246408 (n : ℕ) : ℤ :=
  A246408.P3496905763118372023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A246408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246956.P14999203751813535719

`2^n*A014210(n+1)`
-/

namespace A246956.P14999203751813535719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A014210 (n + 1)

end

end A246956.P14999203751813535719

noncomputable section

/-- A246956: Numbers a(n) = 2^(n-1) * f(n), where n >= 1 and f(n) is the smallest prime number larger than 2^n (A014210).

Offset 1, canonical program `A246956.P14999203751813535719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A246956 (n : ℕ) : ℤ :=
  A246956.P14999203751813535719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A246956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247114.P1905435717442076473

`p?[2*A259504(n+1)+1]`
-/

namespace A247114.P1905435717442076473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259504 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247114.P1905435717442076473

noncomputable section

/-- A247114: Primes sandwiched between 4-almost primes (A014613).

Offset 1, canonical program `A247114.P1905435717442076473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1638 terms. -/
def A247114 (n : ℕ) : ℤ :=
  A247114.P1905435717442076473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1638 terms. -/
def A247114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247679.P17770235383496582350

`record[A171435(A239129(n+2))]`
-/

namespace A247679.P17770235383496582350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A239129 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247679.P17770235383496582350

noncomputable section

/-- A247679: Composite numbers congruent to 17 modulo 18.

Offset 1, canonical program `A247679.P17770235383496582350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3956 terms. -/
def A247679 (n : ℕ) : ℤ :=
  A247679.P17770235383496582350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3956 terms. -/
def A247679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247682.P4172309602348026969

`record[A171435(A242215(n+4))]`
-/

namespace A247682.P4172309602348026969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A242215 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247682.P4172309602348026969

noncomputable section

/-- A247682: Odd composite numbers congruent to 5 modulo 9.

Offset 1, canonical program `A247682.P4172309602348026969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3952 terms. -/
def A247682 (n : ℕ) : ℤ :=
  A247682.P4172309602348026969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3952 terms. -/
def A247682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247683.P2843368647040740458

`record[A171435(A242215(n+1)+2)]`
-/

namespace A247683.P2843368647040740458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A242215 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247683.P2843368647040740458

noncomputable section

/-- A247683: Odd composite numbers congruent to 7 modulo 9.

Offset 1, canonical program `A247683.P2843368647040740458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3965 terms. -/
def A247683 (n : ℕ) : ℤ :=
  A247683.P2843368647040740458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3965 terms. -/
def A247683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248591.P1269342593046905817

`(n+1)/A171435(n+1)*A001316(n)`
-/

namespace A248591.P1269342593046905817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A171435 (n + 1) : ℚ) * (A001316 n : ℚ)

end

end A248591.P1269342593046905817

noncomputable section

/-- A248591: Numerators of the (simplified) rationals n*2^(n - 1)/(n - 1)! .

Offset 1, canonical program `A248591.P1269342593046905817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6018 terms. -/
def A248591 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248591.P1269342593046905817.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6018 terms. -/
def A248591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248663.P4155660683917625723

`A048675(A007913(n+1))`
-/

namespace A248663.P4155660683917625723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A007913 (n + 1)).toNat

end

end A248663.P4155660683917625723

noncomputable section

/-- A248663: Binary encoding of the prime factors of the squarefree part of n.

Offset 1, canonical program `A248663.P4155660683917625723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248663 (n : ℕ) : ℤ :=
  A248663.P4155660683917625723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249139.P9059059770418363528

`A073370(A091018(n+1))`
-/

namespace A249139.P9059059770418363528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A091018 (n + 1)).toNat

end

end A249139.P9059059770418363528

noncomputable section

/-- A249139: Triangular array read by rows: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

Offset 0, canonical program `A249139.P9059059770418363528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2651 terms. -/
def A249139 (n : ℕ) : ℤ :=
  A249139.P9059059770418363528.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2651 terms. -/
def A249139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249152.P735864470480457739

`A174605(n)+A187059(n)`
-/

namespace A249152.P735864470480457739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174605 n + A187059 n

end

end A249152.P735864470480457739

noncomputable section

/-- A249152: Exponent of 2 in the hyperfactorials: a(n) = A007814(A002109(n)).

Offset 0, canonical program `A249152.P735864470480457739`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174605, A187059, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249152 (n : ℕ) : ℤ :=
  A249152.P735864470480457739.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174605, A187059, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249303.P140894087376217444

`A101950(A091018(n+1))`
-/

namespace A249303.P140894087376217444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101950 (A091018 (n + 1)).toNat

end

end A249303.P140894087376217444

noncomputable section

/-- A249303: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

Offset 0, canonical program `A249303.P140894087376217444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2651 terms. -/
def A249303 (n : ℕ) : ℤ :=
  A249303.P140894087376217444.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2651 terms. -/
def A249303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258776.P5594703475324302981

`A258774(A258775(n+1))`
-/

namespace A258776.P5594703475324302981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258774 (A258775 (n + 1)).toNat

end

end A258776.P5594703475324302981

noncomputable section

/-- A258776: Primes in A258774.

Offset 1, canonical program `A258776.P5594703475324302981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258776 (n : ℕ) : ℤ :=
  A258776.P5594703475324302981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258775, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258776.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259186.P17881752095375684835

`A259184(A259185(n+1))`
-/

namespace A259186.P17881752095375684835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259184 (A259185 (n + 1)).toNat

end

end A259186.P17881752095375684835

noncomputable section

/-- A259186: Primes in A259184.

Offset 1, canonical program `A259186.P17881752095375684835`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259186 (n : ℕ) : ℤ :=
  A259186.P17881752095375684835.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259676.P16720077974617783061

`A000566(A114517(n+1))`
-/

namespace A259676.P16720077974617783061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A114517 (n + 1)).toNat

end

end A259676.P16720077974617783061

noncomputable section

/-- A259676: Heptagonal numbers (A000566) that are semiprimes (A001358).

Offset 1, canonical program `A259676.P16720077974617783061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A259676 (n : ℕ) : ℤ :=
  A259676.P16720077974617783061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A259676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259978.P11955456678990968788

`2*A275770(n+1)+1`
-/

namespace A259978.P11955456678990968788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275770 (n + 1) + 1

end

end A259978.P11955456678990968788

noncomputable section

/-- A259978: Terms in A053177 that are relatively prime to 3.

Offset 1, canonical program `A259978.P11955456678990968788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259978 (n : ℕ) : ℤ :=
  A259978.P11955456678990968788.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260872.P7246468917083718781

`∩[A008784(n+1)-1, A039955(n+1)]`
-/

namespace A260872.P7246468917083718781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260872.P7246468917083718781

noncomputable section

/-- A260872: Squarefree numbers k such that k+1 has no primes of the form 4*m-1 and at most one 2 in its prime factorization.

Offset 1, canonical program `A260872.P7246468917083718781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1897 terms. -/
def A260872 (n : ℕ) : ℤ :=
  (A260872.P7246468917083718781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1897 terms. -/
def A260872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261711.P12008416668888732034

`A207823(A091018(n))`
-/

namespace A261711.P12008416668888732034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207823 (A091018 n).toNat

end

end A261711.P12008416668888732034

noncomputable section

/-- A261711: Triangle read by rows: T(n,k) is the number of words over alphabet {0,1,2,3} having exactly k occurrences of the string 01, where n>=0 and k>=0.

Offset 0, canonical program `A261711.P12008416668888732034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A261711 (n : ℕ) : ℤ :=
  A261711.P12008416668888732034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A261711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262685.P16456492644422870268

`A262683(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A262685.P16456492644422870268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262683 (n + 1) + a (n - 1)

end

end A262685.P16456492644422870268

noncomputable section

/-- A262685: Least monotonic left inverse for A182859.

Offset 1, canonical program `A262685.P16456492644422870268`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262685 (n : ℕ) : ℤ :=
  A262685.P16456492644422870268.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262726.P18314210768648216299

`A262780(2*n+1)`
-/

namespace A262726.P18314210768648216299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262780 (2 * n + 1)

end

end A262726.P18314210768648216299

noncomputable section

/-- A262726: Expansion of phi(-x) * psi(x^6) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A262726.P18314210768648216299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262780, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262726 (n : ℕ) : ℤ :=
  A262726.P18314210768648216299.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262780, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268066.P13943974798166471358

`filter[A016742(n+1), A322980(#)]`
-/

namespace A268066.P13943974798166471358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P13943974798166471358

noncomputable section

/-- A268066: Even numbers coprime to the number of their divisors.

Offset 1, canonical program `A268066.P13943974798166471358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A268066 (n : ℕ) : ℤ :=
  A268066.P13943974798166471358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A268066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268335.P2949356212945410865

`eq[1, A295316(n+1)]+1`
-/

namespace A268335.P2949356212945410865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268335.P2949356212945410865

noncomputable section

/-- A268335: Exponentially odd numbers.

Offset 1, canonical program `A268335.P2949356212945410865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268335 (n : ℕ) : ℤ :=
  (A268335.P2949356212945410865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270428.P3446457217873923368

`eq[1, A355825(n+1)]+1`
-/

namespace A270428.P3446457217873923368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A270428.P3446457217873923368

noncomputable section

/-- A270428: Exponentially odious numbers: 1 together with positive integers n such that all exponents in prime factorization of n are odious numbers (A000069).

Offset 1, canonical program `A270428.P3446457217873923368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270428 (n : ℕ) : ℤ :=
  (A270428.P3446457217873923368.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271568.P11000683878390668970

`filter[A050704(n+2), A354927(#)]`
-/

namespace A271568.P11000683878390668970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A271568.P11000683878390668970

noncomputable section

/-- A271568: Squarefree semiprimes n such that phi(n) - 1 is prime.

Offset 1, canonical program `A271568.P11000683878390668970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4674 terms. -/
def A271568 (n : ℕ) : ℤ :=
  A271568.P11000683878390668970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4674 terms. -/
def A271568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274555.P2558607527214522533

`∩[A140612(n+1), A000415(n+5)]`
-/

namespace A274555.P2558607527214522533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274555.P2558607527214522533

noncomputable section

/-- A274555: Nonsquare n such that n*(n+1)/2 is the sum of two nonzero squares.

Offset 1, canonical program `A274555.P2558607527214522533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2067 terms. -/
def A274555 (n : ℕ) : ℤ :=
  (A274555.P2558607527214522533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2067 terms. -/
def A274555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276254.P9589331955149899379

`A069513(2*A292264(n+1))`
-/

namespace A276254.P9589331955149899379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (2 * A292264 (n + 1)).toNat

end

end A276254.P9589331955149899379

noncomputable section

/-- A276254: With respect to the dictionary ordering of words over the alphabet {a,b}, i.e., e,a,b,aa,ab,ba,bb,aaa,..., the sequence is the characteristic function of the language of words that have no consecutive b's.

Offset 0, canonical program `A276254.P9589331955149899379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276254 (n : ℕ) : ℤ :=
  A276254.P9589331955149899379.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277892.P15975992819171420890

`A001222(A048675(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277892.P15975992819171420890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048675 (n + 2)).toNat

end

end A277892.P15975992819171420890

noncomputable section

/-- A277892: a(n) = A001222(A048675(n)).

Offset 2, canonical program `A277892.P15975992819171420890`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277892 (n : ℕ) : ℤ :=
  A277892.P15975992819171420890.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278536.P10927879092705534477

`A273324(n+2)-A273324(n+1)`
-/

namespace A278536.P10927879092705534477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273324 (n + 2) - A273324 (n + 1)

end

end A278536.P10927879092705534477

noncomputable section

/-- A278536: First differences of A273324.

Offset 1, canonical program `A278536.P10927879092705534477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A273324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278536 (n : ℕ) : ℤ :=
  A278536.P10927879092705534477.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A273324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278754.P1604936635740070644

`floor(A288661(n+1)/10)`
-/

namespace A278754.P1604936635740070644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A288661 (n + 1) : ℚ) / 10⌋

end

end A278754.P1604936635740070644

noncomputable section

/-- A278754: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A278754.P1604936635740070644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A278754 (n : ℕ) : ℤ :=
  A278754.P1604936635740070644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A278754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280878.P12461695525565810277

`∩[A280877(n+1), A100490(n)]`
-/

namespace A280878.P12461695525565810277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280878.P12461695525565810277

noncomputable section

/-- A280878: Occurrences of decrease of the probability density P(n) of coprime numbers k,m, satisfying 1 <= k <= a(n) and 1 <= m <= a(n), and a(n) congruent to 1(mod 2) and a(n) congruent to {3,9,21,27}(mod 30).

Offset 1, canonical program `A280878.P12461695525565810277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A280878 (n : ℕ) : ℤ :=
  (A280878.P12461695525565810277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A280878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283611.P7753238100296088695

`A007095(comp[A037477(n)])`
-/

namespace A283611.P7753238100296088695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A283611.P7753238100296088695

noncomputable section

/-- A283611: Numbers whose largest decimal digit is 8.

Offset 1, canonical program `A283611.P7753238100296088695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A283611 (n : ℕ) : ℤ :=
  A283611.P7753238100296088695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A283611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284388.P4360297033908615493

`A284391(a(a(n-1))+n)` with `a(0)=0, a(1)=0`
-/

namespace A284388.P4360297033908615493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A284391 (a (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A284388.P4360297033908615493

noncomputable section

/-- A284388: 0-limiting word of the morphism 0 -> 1, 1 -> 001.

Offset 1, canonical program `A284388.P4360297033908615493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284388 (n : ℕ) : ℤ :=
  A284388.P4360297033908615493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284763.P1069890231272640625

`eq[1, A008833(A000026(n+1))]+1`
-/

namespace A284763.P1069890231272640625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A000026 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284763.P1069890231272640625

noncomputable section

/-- A284763: Numbers n such that A279513(n) is squarefree.

Offset 1, canonical program `A284763.P1069890231272640625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7335 terms. -/
def A284763 (n : ℕ) : ℤ :=
  (A284763.P1069890231272640625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7335 terms. -/
def A284763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284790.P18153554382833569304

`A285972(n+1)+A285970(n+1)`
-/

namespace A284790.P18153554382833569304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285972 (n + 1) + A285970 (n + 1)

end

end A284790.P18153554382833569304

noncomputable section

/-- A284790: Positions of 0 in A284789; complement of A284791.

Offset 1, canonical program `A284790.P18153554382833569304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284790 (n : ℕ) : ℤ :=
  A284790.P18153554382833569304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285094.P16350561640069672631

`A004428(A061430(n+1))`
-/

namespace A285094.P16350561640069672631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 (A061430 (n + 1)).toNat

end

end A285094.P16350561640069672631

noncomputable section

/-- A285094: Corresponding values of geometric means of digits of numbers from A061430.

Offset 0, canonical program `A285094.P16350561640069672631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. -/
def A285094 (n : ℕ) : ℤ :=
  A285094.P16350561640069672631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. -/
def A285094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285335.P14240308816044716378

`A048675(2*(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285335.P14240308816044716378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048675 (2 * (n + 1) - 1) : ℚ) / 2

end

end A285335.P14240308816044716378

noncomputable section

/-- A285335: Odd bisection of A048675 divided by two: a(n) = A048675((2*n)-1)/2.

Offset 1, canonical program `A285335.P14240308816044716378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285335 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285335.P14240308816044716378.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285678.P5257345093601625963

`A188016(n+1)+or(1, n-1)`
-/

namespace A285678.P5257345093601625963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1) + Int.lor 1 ((n : ℤ) - 1)

end

end A285678.P5257345093601625963

noncomputable section

/-- A285678: Positions of 0 in A285677.

Offset 1, canonical program `A285678.P5257345093601625963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285678 (n : ℕ) : ℤ :=
  A285678.P5257345093601625963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285959.P12122029514880620375

`A285961(n+1)-A104248(n+1)`
-/

namespace A285959.P12122029514880620375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285961 (n + 1) - A104248 (n + 1)

end

end A285959.P12122029514880620375

noncomputable section

/-- A285959: Positions of 1 in A285957; complement of A285958.

Offset 1, canonical program `A285959.P12122029514880620375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285959 (n : ℕ) : ℤ :=
  A285959.P12122029514880620375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286693.P502539275683704723

`∑[A286991(n+1)%3]+n`
-/

namespace A286693.P502539275683704723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286991 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A286693.P502539275683704723

noncomputable section

/-- A286693: Positions of 1 in A286691; complement of A286692.

Offset 1, canonical program `A286693.P502539275683704723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286693 (n : ℕ) : ℤ :=
  A286693.P502539275683704723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287073.P14749507163745126481

`A287074(A287106(n+1))-A287106(n+1)`
-/

namespace A287073.P14749507163745126481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287074 (A287106 (n + 1)).toNat - A287106 (n + 1)

end

end A287073.P14749507163745126481

noncomputable section

/-- A287073: Positions of 0 in A287072.

Offset 1, canonical program `A287073.P14749507163745126481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4302 terms. -/
def A287073 (n : ℕ) : ℤ :=
  A287073.P14749507163745126481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4302 terms. -/
def A287073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291186.P9759207513551932445

`∏{d}[n+1, #]/A306671(n+1)`
-/

namespace A291186.P9759207513551932445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A306671 (n + 1) : ℚ)

end

end A291186.P9759207513551932445

noncomputable section

/-- A291186: a(n) = numerator of (pod(n) / tau(n)).

Offset 1, canonical program `A291186.P9759207513551932445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A291186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291186.P9759207513551932445.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A291186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301896.P13543893688146725157

`A059015(n)*A000788(n)`
-/

namespace A301896.P13543893688146725157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 n * A000788 n

end

end A301896.P13543893688146725157

noncomputable section

/-- A301896: a(n) = product of total number of 0's and total number of 1's in binary expansions of 0, ..., n.

Offset 0, canonical program `A301896.P13543893688146725157`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, A059015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A301896 (n : ℕ) : ℤ :=
  A301896.P13543893688146725157.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, A059015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A301896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A188015.P4944563327904613526

`comp[A188016(n+1)-1]+1`
-/

namespace A188015.P4944563327904613526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188015.P4944563327904613526

noncomputable section

/-- A188015: Positions of 0 in A188014; complement of A188016.

Offset 1, canonical program `A188015.P4944563327904613526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188015 (n : ℕ) : ℤ :=
  (A188015.P4944563327904613526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214677.P15757122612619513849

`A007094(A255805(n+1)-1)+1`
-/

namespace A214677.P15757122612619513849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A255805 (n + 1) - 1).toNat + 1

end

end A214677.P15757122612619513849

noncomputable section

/-- A214677: a(n) = n represented in bijective base-7 numeration.

Offset 1, canonical program `A214677.P15757122612619513849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. -/
def A214677 (n : ℕ) : ℤ :=
  A214677.P15757122612619513849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. -/
def A214677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178834.P16895514089838133752

`A102839(n+1)-A109196(n+2)`
-/

namespace A178834.P16895514089838133752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102839 (n + 1) - A109196 (n + 2)

end

end A178834.P16895514089838133752

noncomputable section

/-- A178834: a(n) counts anti-chains of size two in "0,1,2" Motzkin trees on n edges.

Offset 0, canonical program `A178834.P16895514089838133752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A178834 (n : ℕ) : ℤ :=
  A178834.P16895514089838133752.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A178834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179017.P6095337465077806677

`filter[A295243(n+1), A008966(#)]`
-/

namespace A179017.P6095337465077806677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A179017.P6095337465077806677

noncomputable section

/-- A179017: Odd numbers c such that c*(c^2 - 1)/4 is squarefree.

Offset 1, canonical program `A179017.P6095337465077806677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7776 terms. -/
def A179017 (n : ℕ) : ℤ :=
  A179017.P6095337465077806677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7776 terms. -/
def A179017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182105.P6910077357457844647

`2^(A082850(n+1)-1)`
-/

namespace A182105.P6910077357457844647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A082850 (n + 1) - 1 : ℤ)

end

end A182105.P6910077357457844647

noncomputable section

/-- A182105: Number of elements merged by bottom-up merge sort.

Offset 1, canonical program `A182105.P6910077357457844647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182105 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182105.P6910077357457844647.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183097.P3908447792888475748

`∑{d}[n+1, #*A112526(#)]`
-/

namespace A183097.P3908447792888475748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A112526 d

end

end A183097.P3908447792888475748

noncomputable section

/-- A183097: a(n) = sum of powerful divisors d (including 1) of n.

Offset 1, canonical program `A183097.P3908447792888475748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183097 (n : ℕ) : ℤ :=
  A183097.P3908447792888475748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185059.P3995956921967741887

`A010815(7*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185059.P3995956921967741887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (7 * n)

end

end A185059.P3995956921967741887

noncomputable section

/-- A185059: a(n) = A010815(7*n).

Offset 0, canonical program `A185059.P3995956921967741887`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185059 (n : ℕ) : ℤ :=
  A185059.P3995956921967741887.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185175.P11623372724660659512

`A010815(7*n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185175.P11623372724660659512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (7 * n + 5)

end

end A185175.P11623372724660659512

noncomputable section

/-- A185175: a(n) = A010815(7*n + 5).

Offset 0, canonical program `A185175.P11623372724660659512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185175 (n : ℕ) : ℤ :=
  A185175.P11623372724660659512.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185175.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185295.P11341972992585939006

`-A010815(7*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185295.P11341972992585939006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010815 (7 * n + 1)

end

end A185295.P11341972992585939006

noncomputable section

/-- A185295: a(n) = - A010815(7*n + 1).

Offset 0, canonical program `A185295.P11341972992585939006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185295 (n : ℕ) : ℤ :=
  A185295.P11341972992585939006.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190276.P1290073502243581009

`(A066692(n+1)+1)/2`
-/

namespace A190276.P1290073502243581009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066692 (n + 1) + 1 : ℚ) / 2

end

end A190276.P1290073502243581009

noncomputable section

/-- A190276: Numbers k such that tau(2k-1) = tau(2k+1) where tau(k) = A000005(k).

Offset 1, canonical program `A190276.P1290073502243581009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190276 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A190276.P1290073502243581009.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190276.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190615.P11815131085267303083

`(-1)^n*A129402(n)`
-/

namespace A190615.P11815131085267303083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A129402 n

end

end A190615.P11815131085267303083

noncomputable section

/-- A190615: Expansion of f(x^2) * f(x^3) / (chi(x) * chi(x^6)) in powers of x where f(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A190615.P11815131085267303083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190615 (n : ℕ) : ℤ :=
  A190615.P11815131085267303083.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190615.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193583.P1735472173273638827

`Δ[2*A147806(n+1)]+1`
-/

namespace A193583.P1735472173273638827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A193583.P1735472173273638827

noncomputable section

/-- A193583: Number of fixed points under iteration of sum of squares of digits in base b.

Offset 2, canonical program `A193583.P1735472173273638827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A193583 (n : ℕ) : ℤ :=
  A193583.P1735472173273638827.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A193583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200214.P8720410556555359477

`6*A122180(n+1)`
-/

namespace A200214.P8720410556555359477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A122180 (n + 1)

end

end A200214.P8720410556555359477

noncomputable section

/-- A200214: Ordered factorizations of n with 3 distinct parts, all > 1.

Offset 1, canonical program `A200214.P8720410556555359477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122180, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A200214 (n : ℕ) : ℤ :=
  A200214.P8720410556555359477.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122180, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A200214.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206958.P12180534930543884821

`(1-and(2, n))*A010815(n)`
-/

namespace A206958.P12180534930543884821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A010815 n

end

end A206958.P12180534930543884821

noncomputable section

/-- A206958: Expansion of f(x^5, -x^7) - x * f(-x, x^11) in powers of x where f() is Ramanujan's two-variable theta function.

Offset 0, canonical program `A206958.P12180534930543884821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206958 (n : ℕ) : ℤ :=
  A206958.P12180534930543884821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209978.P9884269907601599260

`floor(A171503(n)/2-n)`
-/

namespace A209978.P9884269907601599260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171503 n : ℚ) / 2 - (n : ℚ)⌋

end

end A209978.P9884269907601599260

noncomputable section

/-- A209978: a(n) = A196227(n)/2.

Offset 0, canonical program `A209978.P9884269907601599260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A209978 (n : ℕ) : ℤ :=
  A209978.P9884269907601599260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A209978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215020.P5100721215331730801

`A082850(n+1)-1`
-/

namespace A215020.P5100721215331730801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (n + 1) - 1

end

end A215020.P5100721215331730801

noncomputable section

/-- A215020: a(n) = log_2( A182105(n) ).

Offset 1, canonical program `A215020.P5100721215331730801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215020 (n : ℕ) : ℤ :=
  A215020.P5100721215331730801.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215020.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218171.P11355719928321184254

`A010815(2*n)`
-/

namespace A218171.P11355719928321184254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (2 * n)

end

end A218171.P11355719928321184254

noncomputable section

/-- A218171: Expansion of f(x^11, x^13) - x * f(x^5, x^19) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A218171.P11355719928321184254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218171 (n : ℕ) : ℤ :=
  A218171.P11355719928321184254.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218173.P4391662376202428754

`-A010815(2*n+1)`
-/

namespace A218173.P4391662376202428754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010815 (2 * n + 1)

end

end A218173.P4391662376202428754

noncomputable section

/-- A218173: Expansion of f(x^7, x^17) - x^2 * f(x, x^23) in powers of x where f(,) is Ramanujan's two-variable theta function.

Offset 0, canonical program `A218173.P4391662376202428754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218173 (n : ℕ) : ℤ :=
  A218173.P4391662376202428754.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218622.P5261897689198646449

`A001316(A184616(n))%4`
-/

namespace A218622.P5261897689198646449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (A184616 n).toNat) 4

end

end A218622.P5261897689198646449

noncomputable section

/-- A218622: a(n) = A183161(n) (mod 4), n>=0.

Offset 0, canonical program `A218622.P5261897689198646449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3790 terms. -/
def A218622 (n : ℕ) : ℤ :=
  A218622.P5261897689198646449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3790 terms. -/
def A218622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227346.P17862458044584444554

`A023201(n+2)-A023201(n+1)`
-/

namespace A227346.P17862458044584444554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 2) - A023201 (n + 1)

end

end A227346.P17862458044584444554

noncomputable section

/-- A227346: Distance between consecutive pairs of primes differing by 6 (p, p+6).

Offset 1, canonical program `A227346.P17862458044584444554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227346 (n : ℕ) : ℤ :=
  A227346.P17862458044584444554.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A231088.P9425386829451350861

`A231086(eq[2, A231086(n+2)-A231086(n+1)]+1)`
-/

namespace A231088.P9425386829451350861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231086 (n + 2) - A231086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231088.P9425386829451350861

noncomputable section

/-- A231088: Initial members of abundant triples, i.e., values of k such that (k, k+2, k+4) are all abundant numbers.

Offset 1, canonical program `A231088.P9425386829451350861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1920 terms. -/
def A231088 (n : ℕ) : ℤ :=
  A231088.P9425386829451350861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1920 terms. -/
def A231088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231204.P13163929619996957332

`A230877(n)-A000120(n)`
-/

namespace A231204.P13163929619996957332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n - A000120 n

end

end A231204.P13163929619996957332

noncomputable section

/-- A231204: If n = Sum_{i=0..m} c(i)*2^i, c(i) = 0 or 1, then a(n) = Sum_{i=0..m} (m-i)*c(i).

Offset 0, canonical program `A231204.P13163929619996957332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A231204 (n : ℕ) : ℤ :=
  A231204.P13163929619996957332.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A231204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235001.P4979446370708647522

`lt[0, A228039(n)]²`
-/

namespace A235001.P4979446370708647522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A235001.P4979446370708647522

noncomputable section

/-- A235001: Odious squares.

Offset 1, canonical program `A235001.P4979446370708647522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235001 (n : ℕ) : ℤ :=
  (A235001.P4979446370708647522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237283.P6867739282526891379

`p?[A096477(n+1)]`
-/

namespace A237283.P6867739282526891379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237283.P6867739282526891379

noncomputable section

/-- A237283: Primes p with prime(prime(p)) + 2 also prime.

Offset 1, canonical program `A237283.P6867739282526891379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A237283 (n : ℕ) : ℤ :=
  A237283.P6867739282526891379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A237283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244375.P14907623755703960831

`(-1)^n*A112298(n+1)`
-/

namespace A244375.P14907623755703960831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112298 (n + 1)

end

end A244375.P14907623755703960831

noncomputable section

/-- A244375: Expansion of (a(q) + 3*a(q^2) - 4*a(q^4)) / 6 in powers of q where a() is a cubic AGM theta function.

Offset 1, canonical program `A244375.P14907623755703960831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244375 (n : ℕ) : ℤ :=
  A244375.P14907623755703960831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246405.P16491160402709366502

`A004526(A246411(2*(n+1)))%A186083(A017377(n))`
-/

namespace A246405.P16491160402709366502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A246411 (2 * (n + 1))).toNat) (A186083 (A017377 n).toNat)

end

end A246405.P16491160402709366502

noncomputable section

/-- A246405: Nonnegative integers k satisfying sec(k) > sec(k+1) < sec(k+2).

Offset 1, canonical program `A246405.P16491160402709366502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A246405 (n : ℕ) : ℤ :=
  A246405.P16491160402709366502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A246405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248886.P18163405162273270776

`(-1)^n*A123884(n)`
-/

namespace A248886.P18163405162273270776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A123884 n

end

end A248886.P18163405162273270776

noncomputable section

/-- A248886: Expansion of f(-x, -x) * f(x^2, x^4) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A248886.P18163405162273270776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248886 (n : ℕ) : ℤ :=
  A248886.P18163405162273270776.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248886.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A254578.P12489297454804418568

`2*(A088434(n+1)-A122180(n+1))+A004220(4^A122180(n+1))+1`
-/

namespace A254578.P12489297454804418568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088434 (n + 1) - A122180 (n + 1)) + (A004220 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A122180 (n + 1) : ℤ))).toNat + 1)

end

end A254578.P12489297454804418568

noncomputable section

/-- A254578: Number of ordered factorizations into distinct factors.

Offset 1, canonical program `A254578.P12489297454804418568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254578 (n : ℕ) : ℤ :=
  A254578.P12489297454804418568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256446.P17907843069056531532

`A250477(n+2)-A250477(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256446.P17907843069056531532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 2) - A250477 (n + 1)

end

end A256446.P17907843069056531532

noncomputable section

/-- A256446: First differences of A250477: a(n) = A250477(n+1) - A250477(n).

Offset 1, canonical program `A256446.P17907843069056531532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256446 (n : ℕ) : ℤ :=
  A256446.P17907843069056531532.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256446.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259668.P461830478156031097

`A134177(2*n)`
-/

namespace A259668.P461830478156031097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134177 (2 * n)

end

end A259668.P461830478156031097

noncomputable section

/-- A259668: Expansion of psi(-x)^2 * psi(x^3)^2 / (phi(-x^4) * psi(-x^6)) in power of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A259668.P461830478156031097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259668 (n : ℕ) : ℤ :=
  A259668.P461830478156031097.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260110.P11591153875866362843

`A134177(3*n)`
-/

namespace A260110.P11591153875866362843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134177 (3 * n)

end

end A260110.P11591153875866362843

noncomputable section

/-- A260110: Expansion of f(-x, -x) * f(x^4, x^8) in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A260110.P11591153875866362843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260110 (n : ℕ) : ℤ :=
  A260110.P11591153875866362843.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260110.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261122.P12383584343872181735

`(-1)^floor(n/2)*A190611(n)`
-/

namespace A261122.P12383584343872181735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A190611 n : ℚ)

end

end A261122.P12383584343872181735

noncomputable section

/-- A261122: Expansion of f(-x) * f(x^4, x^8)^2 / f(-x^3, -x^9) in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A261122.P12383584343872181735`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261122 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A261122.P12383584343872181735.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274719.P15727446664512670220

`A089806(n)*A010815(floor(n/2))`
-/

namespace A274719.P15727446664512670220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089806 n * A010815 ⌊(n : ℚ) / 2⌋.toNat

end

end A274719.P15727446664512670220

noncomputable section

/-- A274719: Expansion of Product_{k >= 1} (1-q^(2*k)).

Offset 0, canonical program `A274719.P15727446664512670220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274719 (n : ℕ) : ℤ :=
  A274719.P15727446664512670220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283982.P10832225324888640207

`A283981(n)-A124757(n)`
-/

namespace A283982.P10832225324888640207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283981 n - A124757 n

end

end A283982.P10832225324888640207

noncomputable section

/-- A283982: a(0) = 0, and for n > 0, a(n) = A070939(n) - A280700(n).

Offset 0, canonical program `A283982.P10832225324888640207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124757, A283981, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283982 (n : ℕ) : ℤ :=
  A283982.P10832225324888640207.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124757, A283981, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283982.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283988.P2763794539889423270

`A283978(2*(n+1)-1)`
-/

namespace A283988.P2763794539889423270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (2 * (n + 1) - 1)

end

end A283988.P2763794539889423270

noncomputable section

/-- A283988: a(n) = A002487(n-1) AND A002487(n), where AND is bitwise-and (A004198).

Offset 1, canonical program `A283988.P2763794539889423270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283988 (n : ℕ) : ℤ :=
  A283988.P2763794539889423270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286956.P16005335099664677132

`A010815(n)+n`
-/

namespace A286956.P16005335099664677132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n + (n : ℤ)

end

end A286956.P16005335099664677132

noncomputable section

/-- A286956: Main diagonal of A286950.

Offset 0, canonical program `A286956.P16005335099664677132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286956 (n : ℕ) : ℤ :=
  A286956.P16005335099664677132.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288915.P17477177874724802117

`Δ[comp[A270190(n+1)]]`
-/

namespace A288915.P17477177874724802117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270190 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A288915.P17477177874724802117

noncomputable section

/-- A288915: Run lengths in A039704.

Offset 1, canonical program `A288915.P17477177874724802117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A288915 (n : ℕ) : ℤ :=
  A288915.P17477177874724802117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A288915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288930.P1598540981707641911

`2*A288625(n+1)-(n+2)`
-/

namespace A288930.P1598540981707641911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288625 (n + 1) - (n + 2 : ℤ)

end

end A288930.P1598540981707641911

noncomputable section

/-- A288930: Positions of 0 in A288929; complement of A288931.

Offset 1, canonical program `A288930.P1598540981707641911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288930 (n : ℕ) : ℤ :=
  A288930.P1598540981707641911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289322.P2431377451658955017

`(2^n+A088568(2^n))/2`
-/

namespace A289322.P2431377451658955017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) + A088568 (2 ^ n) : ℚ) / 2

end

end A289322.P2431377451658955017

noncomputable section

/-- A289322: Number of 1s in the first 2^n entries of the Kolakoski sequence, A000002.

Offset 0, canonical program `A289322.P2431377451658955017`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289322 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A289322.P2431377451658955017.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293140.P3221199790550330238

`n!*A010815(n)`
-/

namespace A293140.P3221199790550330238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A010815 n

end

end A293140.P3221199790550330238

noncomputable section

/-- A293140: E.g.f.: Product_{m>0} (1-x^m).

Offset 0, canonical program `A293140.P3221199790550330238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293140 (n : ℕ) : ℤ :=
  A293140.P3221199790550330238.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293140.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293903.P13391266891711295931

`A091570(n+1)-A293901(n+1)`
-/

namespace A293903.P13391266891711295931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (n + 1) - A293901 (n + 1)

end

end A293903.P13391266891711295931

noncomputable section

/-- A293903: Sum of proper divisors of n of the form 4k+3.

Offset 1, canonical program `A293903.P13391266891711295931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091570, A293901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293903 (n : ℕ) : ℤ :=
  A293903.P13391266891711295931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091570, A293901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294109.P16701193320608045315

`A294023(n+1)+A063960(n+1)`
-/

namespace A294109.P16701193320608045315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294023 (n + 1) + A063960 (n + 1)

end

end A294109.P16701193320608045315

noncomputable section

/-- A294109: Sum of the larger parts of the partitions of n into two parts with smaller part prime.

Offset 1, canonical program `A294109.P16701193320608045315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294109 (n : ℕ) : ℤ :=
  A294109.P16701193320608045315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297054.P13522774236223344451

`∑{#}[floor(n/2), A010815(n-2*#)]`
-/

namespace A297054.P13522774236223344451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A010815 (n - 2 * k)

end

end A297054.P13522774236223344451

noncomputable section

/-- A297054: The coefficients of the product (1-x^2)(1-x^3)(1-x^4)... / (1+x).

Offset 0, canonical program `A297054.P13522774236223344451`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297054 (n : ℕ) : ℤ :=
  A297054.P13522774236223344451.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A303741.P16042547146136321047

`A091194(A231086(n+1))`
-/

namespace A303741.P16042547146136321047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A231086 (n + 1)).toNat

end

end A303741.P16042547146136321047

noncomputable section

/-- A303741: Numbers k such that A(k+1) = A(k) + 2, where A() = A005101() are the abundant numbers.

Offset 1, canonical program `A303741.P16042547146136321047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A231086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303741 (n : ℕ) : ℤ :=
  A303741.P16042547146136321047.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A231086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303741.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306323.P12186467086008578801

`A074286(Δ[record[A074288(n+1)]])`
-/

namespace A306323.P12186467086008578801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074288 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (f1 (n + 1) - f1 n).toNat

end

end A306323.P12186467086008578801

noncomputable section

/-- A306323: Break up the Kolakoski sequence A000002 into pieces by inserting a space between every pair of equal terms; sequence gives lengths of successive pieces.

Offset 1, canonical program `A306323.P12186467086008578801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A306323 (n : ℕ) : ℤ :=
  A306323.P12186467086008578801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A306323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179308.P10714640380013412472

`filter[A179239(n+1), A178788(#)]`
-/

namespace A179308.P10714640380013412472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A179308.P10714640380013412472

noncomputable section

/-- A179308: List of positive integers, omitting any number n if another number with the same set of digits as n has already been listed.

Offset 1, canonical program `A179308.P10714640380013412472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A179308 (n : ℕ) : ℤ :=
  A179308.P10714640380013412472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A179308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179694.P2135230186693000708

`A054753(n+1)^3`
-/

namespace A179694.P2135230186693000708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1) ^ 3

end

end A179694.P2135230186693000708

noncomputable section

/-- A179694: Numbers of the form p^6*q^3 where p and q are distinct primes.

Offset 1, canonical program `A179694.P2135230186693000708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179694 (n : ℕ) : ℤ :=
  A179694.P2135230186693000708.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182535.P17468542528139783195

`A007895(A000040(n+1))`
-/

namespace A182535.P17468542528139783195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A000040 (n + 1)).toNat

end

end A182535.P17468542528139783195

noncomputable section

/-- A182535: Number of terms in Zeckendorf representation of prime(n).

Offset 1, canonical program `A182535.P17468542528139783195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182535 (n : ℕ) : ℤ :=
  A182535.P17468542528139783195.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186647.P15378219803120056282

`eq[A000034(n), A003415(A007953(n))]`
-/

namespace A186647.P15378219803120056282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186647.P15378219803120056282

noncomputable section

/-- A186647: Even numbers whose decimal digits sum to a prime.

Offset 1, canonical program `A186647.P15378219803120056282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A186647 (n : ℕ) : ℤ :=
  (A186647.P15378219803120056282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A186647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189988.P7148530891049410471

`A054753(n+1)²`
-/

namespace A189988.P7148530891049410471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1) ^ 2

end

end A189988.P7148530891049410471

noncomputable section

/-- A189988: Numbers with prime factorization p^2*q^4.

Offset 1, canonical program `A189988.P7148530891049410471`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189988 (n : ℕ) : ℤ :=
  A189988.P7148530891049410471.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191228.P7558607639382217669

`A107347(∑[C(2, ∑{e}[n+1, #+1])])`
-/

namespace A191228.P7558607639382217669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191228.P7558607639382217669

noncomputable section

/-- A191228: Greatest Ramanujan prime index less than x, eta(x).

Offset 1, canonical program `A191228.P7558607639382217669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A191228 (n : ℕ) : ℤ :=
  A191228.P7558607639382217669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A191228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193564.P10859496068576138660

`A026242(n+1)-1`
-/

namespace A193564.P10859496068576138660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (n + 1) - 1

end

end A193564.P10859496068576138660

noncomputable section

/-- A193564: In A014675, replace the n-th occurrence of 1 with n-1 and also replace the n-th occurrence of 2 with n-1.

Offset 1, canonical program `A193564.P10859496068576138660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193564 (n : ℕ) : ℤ :=
  A193564.P10859496068576138660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194002.P11828501953942630914

`∩[A004273(A007675(n+1)), A124569(n+1)]`
-/

namespace A194002.P11828501953942630914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A007675 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194002.P11828501953942630914

noncomputable section

/-- A194002: Numbers k that are the start of a sequence of 7 maximally-squarefree numbers.

Offset 1, canonical program `A194002.P11828501953942630914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A194002 (n : ℕ) : ℤ :=
  (A194002.P11828501953942630914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A194002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197129.P9586474388136463062

`∩[A197039(n+1), A197125(n+1)]`
-/

namespace A197129.P9586474388136463062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197129.P9586474388136463062

noncomputable section

/-- A197129: Numbers such that the sum, sum of the squares, and sum of the cubes of the decimal digits are each a perfect square.

Offset 1, canonical program `A197129.P9586474388136463062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A197129 (n : ℕ) : ℤ :=
  (A197129.P9586474388136463062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A197129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200648.P286470985086155592

`a(A026242(n-1))+1` with `a(0)=1, a(1)=1`
-/

namespace A200648.P286470985086155592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A026242 (n - 1)).toNat + 1

end

end A200648.P286470985086155592

noncomputable section

/-- A200648: Length of Stolarsky representation of n.

Offset 1, canonical program `A200648.P286470985086155592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200648 (n : ℕ) : ℤ :=
  (A200648.P286470985086155592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213911.P10704289243874186372

`A007895(n)-A003849(n)`
-/

namespace A213911.P10704289243874186372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n - A003849 n

end

end A213911.P10704289243874186372

noncomputable section

/-- A213911: Number of runs of consecutive zeros in the Zeckendorf (binary) representation of n.

Offset 0, canonical program `A213911.P10704289243874186372`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213911 (n : ℕ) : ℤ :=
  A213911.P10704289243874186372.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213911.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214629.P6159312016029750256

`p?[A185300(n+1)]`
-/

namespace A214629.P6159312016029750256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214629.P6159312016029750256

noncomputable section

/-- A214629: Primes p such that the sum of the digits plus the product of the digits is a prime.

Offset 1, canonical program `A214629.P6159312016029750256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. -/
def A214629 (n : ℕ) : ℤ :=
  A214629.P6159312016029750256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. -/
def A214629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216687.P16719336148888210859

`record[A093178(n+11)*A188641(n+10)]`
-/

namespace A216687.P16719336148888210859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 11) * A188641 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216687.P16719336148888210859

noncomputable section

/-- A216687: Odd numbers > 10 that can be written as m*s - m + 1, where s is the sum of their digits and m >= 1.

Offset 1, canonical program `A216687.P16719336148888210859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A216687 (n : ℕ) : ℤ :=
  A216687.P16719336148888210859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A216687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217973.P11846285657803405566

`filter[A052382(n+1), A188641(#)]`
-/

namespace A217973.P11846285657803405566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A217973.P11846285657803405566

noncomputable section

/-- A217973: Niven (or Harshad) numbers not containing the digit 0.

Offset 1, canonical program `A217973.P11846285657803405566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 841 terms. -/
def A217973 (n : ℕ) : ℤ :=
  A217973.P11846285657803405566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 841 terms. -/
def A217973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219641.P1602393212941527080

`n-A007895(n)`
-/

namespace A219641.P1602393212941527080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007895 n

end

end A219641.P1602393212941527080

noncomputable section

/-- A219641: a(n) = n minus (number of 1's in Zeckendorf expansion of n).

Offset 0, canonical program `A219641.P1602393212941527080`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219641 (n : ℕ) : ℤ :=
  A219641.P1602393212941527080.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220115.P11390568708152913507

`A000120(n)-A007895(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220115.P11390568708152913507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A007895 n

end

end A220115.P11390568708152913507

noncomputable section

/-- A220115: a(n) = A000120(n) - A007895(n), the number of 1's in binary expansion of n minus the number of terms in Zeckendorf representation of n.

Offset 0, canonical program `A220115.P11390568708152913507`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220115 (n : ℕ) : ℤ :=
  A220115.P11390568708152913507.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220115.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230843.P11108055546362958893

`∪[A054753(n+1), A166684(n+1)]`
-/

namespace A230843.P11108055546362958893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230843.P11108055546362958893

noncomputable section

/-- A230843: Cubefree numbers which in their canonical prime factorization have mutually distinct exponents.

Offset 1, canonical program `A230843.P11108055546362958893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230843 (n : ℕ) : ℤ :=
  (A230843.P11108055546362958893.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233904.P1500390034095797774

`A233905(n)-A233931(n)`
-/

namespace A233904.P1500390034095797774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n - A233931 n

end

end A233904.P1500390034095797774

noncomputable section

/-- A233904: a(2n) = a(n) - n, a(2n+1) = a(n) + n, with a(0)=0.

Offset 0, canonical program `A233904.P1500390034095797774`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233905, A233931, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A233904 (n : ℕ) : ℤ :=
  A233904.P1500390034095797774.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233905, A233931, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A233904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A234474.P13636113180550074245

`filter[A064807(n+1), A188641(#)]`
-/

namespace A234474.P13636113180550074245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A234474.P13636113180550074245

noncomputable section

/-- A234474: Numbers that are divisible by their digital sum and digital root.

Offset 1, canonical program `A234474.P13636113180550074245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234474 (n : ℕ) : ℤ :=
  A234474.P13636113180550074245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242188.P14005786775646046571

`∑[record[A005064(n+1)]*A062157(n)]`
-/

namespace A242188.P14005786775646046571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242188.P14005786775646046571

noncomputable section

/-- A242188: a(n) = Sum_{i=1..n} (-1)^(i+1) prime(i)^3.

Offset 0, canonical program `A242188.P14005786775646046571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A242188 (n : ℕ) : ℤ :=
  A242188.P14005786775646046571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A242188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243620.P13122354162749420895

`p?[A243617(n+1)]`
-/

namespace A243620.P13122354162749420895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243620.P13122354162749420895

noncomputable section

/-- A243620: Prime numbers whose digital sum equals the number of bits in its binary expansion. No zeros allowed in the decimal expansion.

Offset 1, canonical program `A243620.P13122354162749420895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. -/
def A243620 (n : ℕ) : ℤ :=
  A243620.P13122354162749420895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. -/
def A243620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256303.P17390221643236458087

`A007089(A256293(n))`
-/

namespace A256303.P17390221643236458087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A256293 n).toNat

end

end A256303.P17390221643236458087

noncomputable section

/-- A256303: Apply the transformation 0 -> 1 -> 2 -> 0 to the digits of n written in base 3; do not convert back to base 10.

Offset 0, canonical program `A256303.P17390221643236458087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A256303 (n : ℕ) : ℤ :=
  A256303.P17390221643236458087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A256303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258438.P1507217286969799084

`n^3+n²-A224924(n)`
-/

namespace A258438.P1507217286969799084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 + n ^ 2 : ℤ) - A224924 n

end

end A258438.P1507217286969799084

noncomputable section

/-- A258438: Sum_{i=1..n} Sum_{j=1..n} (i OR j), where OR is the binary logical OR operator.

Offset 0, canonical program `A258438.P1507217286969799084`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258438 (n : ℕ) : ℤ :=
  A258438.P1507217286969799084.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A264822.P10679971076099386625

`∩[A030430(n+1), A194275(n)]`
-/

namespace A264822.P10679971076099386625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264822.P10679971076099386625

noncomputable section

/-- A264822: Centered 15-gonal (or pentadecagonal) primes.

Offset 1, canonical program `A264822.P10679971076099386625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A264822 (n : ℕ) : ℤ :=
  (A264822.P10679971076099386625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A264822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276305.P15088986145936003847

`p?[floor(A054753(n+1)/2)]`
-/

namespace A276305.P15088986145936003847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054753 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276305.P15088986145936003847

noncomputable section

/-- A276305: Primes p such that d(p*(2p+1)) = 12 where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A276305.P15088986145936003847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A276305 (n : ℕ) : ℤ :=
  A276305.P15088986145936003847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A276305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278044.P17470812905146498962

`A278042(n)+A278043(n)`
-/

namespace A278044.P17470812905146498962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278042 n + A278043 n

end

end A278044.P17470812905146498962

noncomputable section

/-- A278044: Length of tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A278044.P17470812905146498962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278042, A278043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278044 (n : ℕ) : ℤ :=
  A278044.P17470812905146498962.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278042, A278043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278044.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279290.P4214688874557127316

`A001158(n+1)-A005064(n+1)`
-/

namespace A279290.P4214688874557127316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - A005064 (n + 1)

end

end A279290.P4214688874557127316

noncomputable section

/-- A279290: Sum of cubes of nonprime divisors of n.

Offset 1, canonical program `A279290.P4214688874557127316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279290 (n : ℕ) : ℤ :=
  A279290.P4214688874557127316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005064, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279290.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280469.P12523109073399917992

`filter[A067888(n+1), A379971(#)]`
-/

namespace A280469.P12523109073399917992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280469.P12523109073399917992

noncomputable section

/-- A280469: Numbers n such that n-1 and n+1 are squarefree and have the same number of prime factors.

Offset 1, canonical program `A280469.P12523109073399917992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6388 terms. -/
def A280469 (n : ℕ) : ℤ :=
  A280469.P12523109073399917992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6388 terms. -/
def A280469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280919.P2165921723752371989

`A280223(A071562(n+1))`
-/

namespace A280919.P2165921723752371989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280223 (A071562 (n + 1)).toNat

end

end A280919.P2165921723752371989

noncomputable section

/-- A280919: Precipices from the successive terraces, descending by the main diagonal of the pyramid described in A245092. Also first differences of A071562.

Offset 1, canonical program `A280919.P2165921723752371989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, A280223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280919 (n : ℕ) : ℤ :=
  A280919.P2165921723752371989.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, A280223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280919.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282462.P16013334496872017195

`(n+1)*(A103164(n)-n)+n`
-/

namespace A282462.P16013334496872017195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A103164 n - (n : ℤ)) + (n : ℤ)

end

end A282462.P16013334496872017195

noncomputable section

/-- A282462: Integers but with the primes cubed.

Offset 0, canonical program `A282462.P16013334496872017195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282462 (n : ℕ) : ℤ :=
  A282462.P16013334496872017195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283737.P2852708590030688587

`∩[A085370(n+1), A143164(n+1)]`
-/

namespace A283737.P2852708590030688587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283737.P2852708590030688587

noncomputable section

/-- A283737: Numbers with digit sum 13 that are multiples of 13.

Offset 1, canonical program `A283737.P2852708590030688587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A283737 (n : ℕ) : ℤ :=
  (A283737.P2852708590030688587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A283737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283977.P3008186910418949964

`A283976(n)-A283978(n)`
-/

namespace A283977.P3008186910418949964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n - A283978 n

end

end A283977.P3008186910418949964

noncomputable section

/-- A283977: a(2n) = A002487(n), a(2n+1) = A002487(n) XOR A002487(n+1), where XOR is bitwise-xor (A003987).

Offset 0, canonical program `A283977.P3008186910418949964`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, A283978, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283977 (n : ℕ) : ℤ :=
  A283977.P3008186910418949964.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, A283978, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285093.P12873639855771182747

`A007953(A061383(n))/A055642(A061383(n))`
-/

namespace A285093.P12873639855771182747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (A061383 n).toNat : ℚ) / (A055642 (A061383 n).toNat : ℚ)

end

end A285093.P12873639855771182747

noncomputable section

/-- A285093: Corresponding values of arithmetic means of digits of numbers from A061383.

Offset 0, canonical program `A285093.P12873639855771182747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A061383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285093 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285093.P12873639855771182747.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A061383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285508.P10690134456776123429

`∪[A030078(n+1), A054753(n+1)]`
-/

namespace A285508.P10690134456776123429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285508.P10690134456776123429

noncomputable section

/-- A285508: Numbers with exactly three prime factors, not all distinct.

Offset 1, canonical program `A285508.P10690134456776123429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285508 (n : ℕ) : ℤ :=
  (A285508.P10690134456776123429.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286228.P2619244444952308733

`∪[A054753(n+1), A280076(n+1)]`
-/

namespace A286228.P2619244444952308733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286228.P2619244444952308733

noncomputable section

/-- A286228: Numbers n such that d(n) = 2^omega(n) + omega(n) where d = A000005 and omega = A001221.

Offset 1, canonical program `A286228.P2619244444952308733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286228 (n : ℕ) : ℤ :=
  (A286228.P2619244444952308733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288375.P15167059163787172092

`char[comp[A288625(n+1)-1]]`
-/

namespace A288375.P15167059163787172092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288625 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288375.P15167059163787172092

noncomputable section

/-- A288375: Fixed point of the mapping 00->1000, 10->1001, starting at 00.

Offset 1, canonical program `A288375.P15167059163787172092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288375 (n : ℕ) : ℤ :=
  (A288375.P15167059163787172092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289353.P4800151085491080530

`p?[A030430(n+1)-4]`
-/

namespace A289353.P4800151085491080530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289353.P4800151085491080530

noncomputable section

/-- A289353: Primes p such that (p,p+4) is a pair of cousin primes and p == 7 (mod 10).

Offset 1, canonical program `A289353.P4800151085491080530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2759 terms. -/
def A289353 (n : ℕ) : ℤ :=
  A289353.P4800151085491080530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2759 terms. -/
def A289353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289831.P1355285298190598776

`A289813(n)+A289814(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289831.P1355285298190598776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n + A289814 n

end

end A289831.P1355285298190598776

noncomputable section

/-- A289831: a(n) = A289813(n) + A289814(n).

Offset 0, canonical program `A289831.P1355285298190598776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289831 (n : ℕ) : ℤ :=
  A289831.P1355285298190598776.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289831.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297044.P13798135279491243698

`A359326(A175144(floor(log2(n+1))!))`
-/

namespace A297044.P13798135279491243698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (A175144 (Nat.factorial (Nat.log 2 (n + 1)))).toNat

end

end A297044.P13798135279491243698

noncomputable section

/-- A297044: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-16 digits of n; see Comments.

Offset 1, canonical program `A297044.P13798135279491243698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A297044 (n : ℕ) : ℤ :=
  A297044.P13798135279491243698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A297044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300823.P4910350933719634808

`A051953(n+1)-A300824(n+1)`
-/

namespace A300823.P4910350933719634808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A300824 (n + 1)

end

end A300823.P4910350933719634808

noncomputable section

/-- A300823: Difference between A244042 and its Möbius transform.

Offset 1, canonical program `A300823.P4910350933719634808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300823 (n : ℕ) : ℤ :=
  A300823.P4910350933719634808.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300823.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300836.P11681242100459120982

`∑{d}[n+1, A007895(#%(n+1))]`
-/

namespace A300836.P11681242100459120982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007895 (d % (n + 1))

end

end A300836.P11681242100459120982

noncomputable section

/-- A300836: a(n) is the total number of terms (1-digits) in Zeckendorf representation of all proper divisors of n.

Offset 1, canonical program `A300836.P11681242100459120982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300836 (n : ℕ) : ℤ :=
  A300836.P11681242100459120982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305989.P15521024914226202803

`A007088(A030101(n))`
-/

namespace A305989.P15521024914226202803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A030101 n).toNat

end

end A305989.P15521024914226202803

noncomputable section

/-- A305989: Numbers in binary reversed.

Offset 0, canonical program `A305989.P15521024914226202803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305989 (n : ℕ) : ℤ :=
  A305989.P15521024914226202803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306263.P2796597650289034260

`record[gcd(n+1, A324393(n+1))]`
-/

namespace A306263.P2796597650289034260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A324393 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306263.P2796597650289034260

noncomputable section

/-- A306263: Numbers k such that, for any divisor d of k, the Hamming weight of d divides k.

Offset 1, canonical program `A306263.P2796597650289034260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A306263 (n : ℕ) : ℤ :=
  (A306263.P2796597650289034260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. -/
def A306263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306510.P7325178267120369206

`eq[2*A145154(n), A145154(A007953(n))]`
-/

namespace A306510.P7325178267120369206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306510.P7325178267120369206

noncomputable section

/-- A306510: Numbers k such that twice the number of divisors of k is equal to the number of divisors of the sum of digits of k.

Offset 1, canonical program `A306510.P7325178267120369206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A306510 (n : ℕ) : ℤ :=
  (A306510.P7325178267120369206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A306510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176718.P17709274811728577594

`∑[A004207(n)]`
-/

namespace A176718.P17709274811728577594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176718.P17709274811728577594

noncomputable section

/-- A176718: Partial sums of A004207.

Offset 0, canonical program `A176718.P17709274811728577594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176718 (n : ℕ) : ℤ :=
  A176718.P17709274811728577594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186281.P5592322813747269097

`p?[A186278(n+1)]`
-/

namespace A186281.P5592322813747269097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186281.P5592322813747269097

noncomputable section

/-- A186281: Primes within A186278.

Offset 1, canonical program `A186281.P5592322813747269097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A186281 (n : ℕ) : ℤ :=
  A186281.P5592322813747269097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A186281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200260.P581452882919251261

`comp[A200259(n+1)-1]+1`
-/

namespace A200260.P581452882919251261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200259 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A200260.P581452882919251261

noncomputable section

/-- A200260: Numbers k such that k-th prime has an odd digit sum.

Offset 1, canonical program `A200260.P581452882919251261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200260 (n : ℕ) : ℤ :=
  (A200260.P581452882919251261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200262.P13695405948688906386

`∑[A200261(n+1)]`
-/

namespace A200262.P13695405948688906386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200262.P13695405948688906386

noncomputable section

/-- A200262: Partial sums of A200261.

Offset 1, canonical program `A200262.P13695405948688906386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200262 (n : ℕ) : ℤ :=
  A200262.P13695405948688906386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200263.P276379876242031562

`1-A200261(n+1)`
-/

namespace A200263.P276379876242031562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A200261 (n + 1)

end

end A200263.P276379876242031562

noncomputable section

/-- A200263: a(n) = 1 iff n-th prime has an odd digit sum.

Offset 1, canonical program `A200263.P276379876242031562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200263 (n : ℕ) : ℤ :=
  A200263.P276379876242031562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219675.P3662688382853343317

`A004207(n)-A000007(n)`
-/

namespace A219675.P3662688382853343317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n - A000007 n

end

end A219675.P3662688382853343317

noncomputable section

/-- A219675: Starting with a(0)=0, a(n) = 1 + the sum of the digital sums of a(0) through a(n-1).

Offset 0, canonical program `A219675.P3662688382853343317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219675 (n : ℕ) : ℤ :=
  A219675.P3662688382853343317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222423.P10040492677139867736

`(A045943(n)-A224915(n))/2`
-/

namespace A222423.P10040492677139867736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045943 n - A224915 n : ℚ) / 2

end

end A222423.P10040492677139867736

noncomputable section

/-- A222423: Sum of (n AND k) for k = 0, 1, 2, ..., n, where AND is the bitwise AND operator.

Offset 0, canonical program `A222423.P10040492677139867736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222423 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A222423.P10040492677139867736.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222423.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226993.P10032319242996008587

`p?[A272799(n+1)]`
-/

namespace A226993.P10032319242996008587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226993.P10032319242996008587

noncomputable section

/-- A226993: Primes p such that 2p - 1 and 2p + 1 are squarefree.

Offset 1, canonical program `A226993.P10032319242996008587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 967 terms. -/
def A226993 (n : ℕ) : ℤ :=
  A226993.P10032319242996008587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 967 terms. -/
def A226993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230286.P917926184221838479

`A016052(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230286.P917926184221838479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016052 (n + 1) : ℚ) / 3

end

end A230286.P917926184221838479

noncomputable section

/-- A230286: a(n) = A016052(n)/3.

Offset 1, canonical program `A230286.P917926184221838479`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A016052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A230286.P917926184221838479.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A016052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235225.P2460599509591164425

`∩[A273159(n+1), A017221(n)]`
-/

namespace A235225.P2460599509591164425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235225.P2460599509591164425

noncomputable section

/-- A235225: Numbers whose sum of digits is 14.

Offset 1, canonical program `A235225.P2460599509591164425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A235225 (n : ℕ) : ℤ :=
  (A235225.P2460599509591164425.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A235225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240754.P6827576315638044596

`eq[1, A240752(n+1)+2]`
-/

namespace A240754.P6827576315638044596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240754.P6827576315638044596

noncomputable section

/-- A240754: Numbers k with digit_sum(k*k) - 1 = digit_sum((k+1)*(k+1)).

Offset 1, canonical program `A240754.P6827576315638044596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A240754 (n : ℕ) : ℤ :=
  (A240754.P6827576315638044596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A240754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254066.P6804668024201466388

`∩[A058369(n+1), A067251(n+1)]`
-/

namespace A254066.P6804668024201466388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254066.P6804668024201466388

noncomputable section

/-- A254066: Primitive numbers n such that the sums of the digits of n and n^2 coincide.

Offset 1, canonical program `A254066.P6804668024201466388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A254066 (n : ℕ) : ℤ :=
  (A254066.P6804668024201466388.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A254066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254621.P1888052046391958266

`∩[A052382(n+1), A062996(n+1)]`
-/

namespace A254621.P1888052046391958266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254621.P1888052046391958266

noncomputable section

/-- A254621: Zerofree numbers having product of digits less than or equal to sum of digits.

Offset 1, canonical program `A254621.P1888052046391958266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A254621 (n : ℕ) : ℤ :=
  (A254621.P1888052046391958266.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A254621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275082.P12631991313375267517

`filter[A374198(n+1), A294930(#)]`
-/

namespace A275082.P12631991313375267517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A275082.P12631991313375267517

noncomputable section

/-- A275082: Primitive abundant numbers (having no abundant proper divisors) that have perfect proper divisors.

Offset 1, canonical program `A275082.P12631991313375267517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1730 terms. -/
def A275082 (n : ℕ) : ℤ :=
  A275082.P12631991313375267517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1730 terms. -/
def A275082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279776.P18021118608583568116

`∩[2*n, A235151(n+1)]/6`
-/

namespace A279776.P18021118608583568116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 6

end

end A279776.P18021118608583568116

noncomputable section

/-- A279776: Numbers n such that the sum of digits of 6n equals 12.

Offset 1, canonical program `A279776.P18021118608583568116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 981 terms. -/
def A279776 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A279776.P18021118608583568116.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 981 terms. -/
def A279776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285095.P226835775559454231

`A004427(p?[A061383(n)])`
-/

namespace A285095.P226835775559454231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285095.P226835775559454231

noncomputable section

/-- A285095: Corresponding values of arithmetic means of digits of primes from A069709.

Offset 1, canonical program `A285095.P226835775559454231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 576 terms. -/
def A285095 (n : ℕ) : ℤ :=
  A285095.P226835775559454231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 576 terms. -/
def A285095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294888.P2385972138544037667

`A294886(n+1)+A082551(n+1)*A187794(n+1)`
-/

namespace A294888.P2385972138544037667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (n + 1) + A082551 (n + 1) * A187794 (n + 1)

end

end A294888.P2385972138544037667

noncomputable section

/-- A294888: Sum of nonabundant proper divisors of n.

Offset 1, canonical program `A294888.P2385972138544037667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294888 (n : ℕ) : ℤ :=
  A294888.P2385972138544037667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294890.P1055268764117149013

`∑{d}[n+1, A294930(#)]`
-/

namespace A294890.P1055268764117149013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294930 d

end

end A294890.P1055268764117149013

noncomputable section

/-- A294890: Number of divisors of n that are primitively abundant (A091191).

Offset 1, canonical program `A294890.P1055268764117149013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294890 (n : ℕ) : ℤ :=
  A294890.P1055268764117149013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294890.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294927.P17135175495355119695

`floor(n*A341620(n+1)/(n+1))`
-/

namespace A294927.P17135175495355119695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * A341620 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A294927.P17135175495355119695

noncomputable section

/-- A294927: Number of proper divisors of n that are nondeficient (A023196).

Offset 1, canonical program `A294927.P17135175495355119695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294927 (n : ℕ) : ℤ :=
  A294927.P17135175495355119695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294927.provenance : SequenceMachineLib.Provenance := .conjectured

