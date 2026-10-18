import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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
# A378900: Squares of numbers divisible by the squares of two distinct primes.

The programs for A378900, there is no canonical definition to state claims against.
-/

/-! ## A378900.P17865616450240600759

`A036785(n+1)²`
-/

namespace A378900.P17865616450240600759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1) ^ 2

end

end A378900.P17865616450240600759

/-! ## A378900.P13633097918574254863

`∪[A378768(n+1), A378984(n+1)]`
-/

namespace A378900.P13633097918574254863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378900.P13633097918574254863

/-! ## A378900.P836628107162910441

`∪[A072412(n+1), A072413(n+1)]²`
-/

namespace A378900.P836628107162910441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378900.P836628107162910441

/-! ## A378900.P3823855311135984343

`∪[A318720(n+1), A338539(n+1)]²`
-/

namespace A378900.P3823855311135984343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378900.P3823855311135984343

/-! ## A378900.P14951002015766698670

`∩[A062320(n+1), A376936(n+1)]`
-/

namespace A378900.P14951002015766698670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378900.P14951002015766698670

/-! ## A378900.P5515396418742190674

`∩[A321070(n+1), A376936(n+1)]`
-/

namespace A378900.P5515396418742190674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378900.P5515396418742190674

/-! ## A378900.P7189994046937922928

`∩[A376936(n+1), A380857(n+1)]`
-/

namespace A378900.P7189994046937922928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378900.P7189994046937922928

/-! ## A378900.P1916602190952223505

`∩[A062312(n+1), A376936(n+1)]`
-/

namespace A378900.P1916602190952223505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378900.P1916602190952223505

/-! ## A378900.P8442638701437183714

`∩[A161753(n+1), A376936(n+1)]`
-/

namespace A378900.P8442638701437183714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378900.P8442638701437183714

/-! ## A378900.P14253558174061147078

`∩[A328558(n+1), A376936(n+1)]`
-/

namespace A378900.P14253558174061147078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378900.P14253558174061147078

/-! ## A378900.P11758060920357468190

`∩[A169580(n+1), A376936(n+1)]`
-/

namespace A378900.P11758060920357468190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378900.P11758060920357468190

/-! ## A378900.P2557942647006010061

`∩[A319388(n+1), A376936(n+1)]`
-/

namespace A378900.P2557942647006010061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378900.P2557942647006010061

/-! ## A378900.P5184750110479667182

`lt[1, A056170(A028310(n))]²`
-/

namespace A378900.P5184750110479667182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A378900.P5184750110479667182

/-! ## A378900.P1479046857638741288

`A020725(lt[1, A056170(n+1)])²`
-/

namespace A378900.P1479046857638741288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A378900.P1479046857638741288

/-! ## A378900.P5369594058962378307

`A153152(lt[1, A056170(n+1)])²`
-/

namespace A378900.P5369594058962378307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A378900.P5369594058962378307

/-! ## A378900.P4276411512323446213

`∩[A085960(n+1), A376936(n+1)]`
-/

namespace A378900.P4276411512323446213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378900.P4276411512323446213

/-! ## A378900.P15629608809255795763

`∩[A347535(n+1), A376936(n+1)]`
-/

namespace A378900.P15629608809255795763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378900.P15629608809255795763

/-! ## A378900.P15654557542019400108

`A020725(eq[A198954(n), A346485(n+1)])²`
-/

namespace A378900.P15654557542019400108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A378900.P15654557542019400108

/-! ## A378900.P12245203441887128669

`∩[A376936(n+1), n²]`
-/

namespace A378900.P12245203441887128669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A378900.P12245203441887128669

/-! ## A378900.P12674506842984682913

`∩[A363284(n+1), A376936(n+1)]`
-/

namespace A378900.P12674506842984682913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378900.P12674506842984682913

/-!
# A378901: a(n) = 0 if s(n) is nonprime, a(n) = 1 if s(n) is prime, where s = A005117.

The programs for A378901, the canonical program `A378901.P14259229191590537326` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378901 has offset 1).

The definition of A378901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378901.P8306170645107939498

`char[A112929(n+1)]`
-/

namespace A378901.P8306170645107939498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378901.P8306170645107939498

namespace A378901

/-- `char[A112929(n+1)]` -/
def P8306170645107939498.Spec : Prop :=
  ∀ n, (P8306170645107939498.a n : ℤ) = A378901 (n + 1)

end A378901

/-! ## A378901.P3613315629463137788

`∑{e}[A372112(n+1), #]`
-/

namespace A378901.P3613315629463137788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A378901.P3613315629463137788

namespace A378901

/-- `∑{e}[A372112(n+1), #]` -/
def P3613315629463137788.Spec : Prop :=
  ∀ n, (P3613315629463137788.a n : ℤ) = A378901 (n + 1)

end A378901

/-! ## A378901.P3525436083202709043

`char[record[A265675(n+2)]]`
-/

namespace A378901.P3525436083202709043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265675 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378901.P3525436083202709043

namespace A378901

/-- `char[record[A265675(n+2)]]` -/
def P3525436083202709043.Spec : Prop :=
  ∀ n, (P3525436083202709043.a n : ℤ) = A378901 (n + 1)

end A378901

/-! ## A378901.P14259229191590537326

`C(C(2, A072047(n+1)), 2)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378901

/-- `C(C(2, A072047(n+1)), 2)` -/
def P14259229191590537326.Spec : Prop :=
  ∀ n, (P14259229191590537326.a n : ℤ) = A378901 (n + 1)

theorem P14259229191590537326.correct : P14259229191590537326.Spec := by
  intro n
  simp only [A378901, Nat.add_sub_cancel]

end A378901

/-! ## A378901.P16111544317104359725

`A010051(A005117(n+1))`
-/

namespace A378901.P16111544317104359725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A005117 (n + 1)).toNat

end

end A378901.P16111544317104359725

namespace A378901

/-- `A010051(A005117(n+1))` -/
def P16111544317104359725.Spec : Prop :=
  ∀ n, P16111544317104359725.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P16482490587244895641

`A005369(A072048(n+1))`
-/

namespace A378901.P16482490587244895641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A072048 (n + 1)).toNat

end

end A378901.P16482490587244895641

namespace A378901

/-- `A005369(A072048(n+1))` -/
def P16482490587244895641.Spec : Prop :=
  ∀ n, P16482490587244895641.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P7402561641831077565

`A063524(A068328(n+1))`
-/

namespace A378901.P7402561641831077565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A068328 (n + 1)).toNat

end

end A378901.P7402561641831077565

namespace A378901

/-- `A063524(A068328(n+1))` -/
def P7402561641831077565.Spec : Prop :=
  ∀ n, P7402561641831077565.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P11383617338981784877

`A001221(A372112(n+1))`
-/

namespace A378901.P11383617338981784877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A372112 (n + 1)).toNat

end

end A378901.P11383617338981784877

namespace A378901

/-- `A001221(A372112(n+1))` -/
def P11383617338981784877.Spec : Prop :=
  ∀ n, P11383617338981784877.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P10139995871191745061

`A069513(A005117(2*n+1-n))`
-/

namespace A378901.P10139995871191745061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A005117 (2 * n + 1 - n)).toNat

end

end A378901.P10139995871191745061

namespace A378901

/-- `A069513(A005117(2*n+1-n))` -/
def P10139995871191745061.Spec : Prop :=
  ∀ n, P10139995871191745061.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P14840959364387229840

`A062822(n+1)%A372112(n+1)`
-/

namespace A378901.P14840959364387229840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062822 (n + 1)) (A372112 (n + 1))

end

end A378901.P14840959364387229840

namespace A378901

/-- `A062822(n+1)%A372112(n+1)` -/
def P14840959364387229840.Spec : Prop :=
  ∀ n, P14840959364387229840.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P12674040710584724146

`A068328(n+1)%A372112(n+1)`
-/

namespace A378901.P12674040710584724146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068328 (n + 1)) (A372112 (n + 1))

end

end A378901.P12674040710584724146

namespace A378901

/-- `A068328(n+1)%A372112(n+1)` -/
def P12674040710584724146.Spec : Prop :=
  ∀ n, P12674040710584724146.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P11347019910857248508

`A077619(n+1)%A372112(n+1)`
-/

namespace A378901.P11347019910857248508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077619 (n + 1)) (A372112 (n + 1))

end

end A378901.P11347019910857248508

namespace A378901

/-- `A077619(n+1)%A372112(n+1)` -/
def P11347019910857248508.Spec : Prop :=
  ∀ n, P11347019910857248508.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P6512899089770176191

`A327521(n+1)%A372112(n+1)`
-/

namespace A378901.P6512899089770176191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327521 (n + 1)) (A372112 (n + 1))

end

end A378901.P6512899089770176191

namespace A378901

/-- `A327521(n+1)%A372112(n+1)` -/
def P6512899089770176191.Spec : Prop :=
  ∀ n, P6512899089770176191.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P13017236994572586828

`A349394(A005117(n+1))*A380529(n+1)`
-/

namespace A378901.P13017236994572586828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349394 (A005117 (n + 1)).toNat * A380529 (n + 1)

end

end A378901.P13017236994572586828

namespace A378901

/-- `A349394(A005117(n+1))*A380529(n+1)` -/
def P13017236994572586828.Spec : Prop :=
  ∀ n, P13017236994572586828.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P3310947240750193951

`A010051(record[A076685(n+1)])`
-/

namespace A378901.P3310947240750193951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A378901.P3310947240750193951

namespace A378901

/-- `A010051(record[A076685(n+1)])` -/
def P3310947240750193951.Spec : Prop :=
  ∀ n, P3310947240750193951.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P9616608486921659326

`A304326(A034444(A005117(n+1))²)`
-/

namespace A378901.P9616608486921659326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304326 (A034444 (A005117 (n + 1)).toNat ^ 2).toNat

end

end A378901.P9616608486921659326

namespace A378901

/-- `A304326(A034444(A005117(n+1))²)` -/
def P9616608486921659326.Spec : Prop :=
  ∀ n, P9616608486921659326.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P3400205912221080319

`A341994(A347149(A005117(n+1))²)`
-/

namespace A378901.P3400205912221080319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (A347149 (A005117 (n + 1)).toNat ^ 2).toNat

end

end A378901.P3400205912221080319

namespace A378901

/-- `A341994(A347149(A005117(n+1))²)` -/
def P3400205912221080319.Spec : Prop :=
  ∀ n, P3400205912221080319.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P15325211362874176843

`A366078(A366147(A005117(n+1))²)`
-/

namespace A378901.P15325211362874176843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366078 (A366147 (A005117 (n + 1)).toNat ^ 2).toNat

end

end A378901.P15325211362874176843

namespace A378901

/-- `A366078(A366147(A005117(n+1))²)` -/
def P15325211362874176843.Spec : Prop :=
  ∀ n, P15325211362874176843.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P7696740876296768912

`A059841(A073898(A088610(2*n+1)))`
-/

namespace A378901.P7696740876296768912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A073898 (A088610 (2 * n + 1)).toNat).toNat

end

end A378901.P7696740876296768912

namespace A378901

/-- `A059841(A073898(A088610(2*n+1)))` -/
def P7696740876296768912.Spec : Prop :=
  ∀ n, P7696740876296768912.a n = A378901 (n + 1)

end A378901

/-! ## A378901.P4009208943108716229

`A055976(A163814(n+1))`
-/

namespace A378901.P4009208943108716229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055976 (A163814 (n + 1)).toNat

end

end A378901.P4009208943108716229

namespace A378901

/-- `A055976(A163814(n+1))` -/
def P4009208943108716229.Spec : Prop :=
  ∀ n, P4009208943108716229.a n = A378901 (n + 1)

end A378901

/-!
# A378904: 2*a(n) are the gaps that correspond to A350100(n).

The programs for A378904, there is no canonical definition to state claims against.
-/

/-! ## A378904.P10432282163296179568

`record[A058043(n+2)/2]`
-/

namespace A378904.P10432282163296179568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058043 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378904.P10432282163296179568

/-! ## A378904.P9078189089512445957

`A006370(record[A058043(n+2)])`
-/

namespace A378904.P9078189089512445957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A378904.P9078189089512445957

/-! ## A378904.P11054607308795030815

`A246277(record[A058043(n+2)])`
-/

namespace A378904.P11054607308795030815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A378904.P11054607308795030815

/-! ## A378904.P15590242690620596095

`A252463(record[A058043(n+2)])`
-/

namespace A378904.P15590242690620596095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A378904.P15590242690620596095

/-! ## A378904.P7795806081454917070

`A289435(record[A058043(n+2)])`
-/

namespace A378904.P7795806081454917070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A378904.P7795806081454917070

/-!
# A378905: a(n) is the number of odd squarefree semiprimes (A046388) < prime(n).

The programs for A378905, the canonical program `A378905.P7465809574805371409` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378905 has offset 1).

The definition of A378905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378905.P7465809574805371409

`A302643(A000040(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A378905

/-- `A302643(A000040(n+1))` -/
def P7465809574805371409.Spec : Prop :=
  ∀ n, P7465809574805371409.a n = A378905 (n + 1)

theorem P7465809574805371409.correct : P7465809574805371409.Spec := by
  intro n
  simp only [A378905, Nat.add_sub_cancel]

end A378905

/-! ## A378905.P4278411808461047274

`A302643(A006005(n+1))`
-/

namespace A378905.P4278411808461047274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A006005 (n + 1)).toNat

end

end A378905.P4278411808461047274

namespace A378905

/-- `A302643(A006005(n+1))` -/
def P4278411808461047274.Spec : Prop :=
  ∀ n, P4278411808461047274.a n = A378905 (n + 1)

end A378905

/-! ## A378905.P5938007034867122450

`A302643(A052147(n+1))`
-/

namespace A378905.P5938007034867122450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A052147 (n + 1)).toNat

end

end A378905.P5938007034867122450

namespace A378905

/-- `A302643(A052147(n+1))` -/
def P5938007034867122450.Spec : Prop :=
  ∀ n, P5938007034867122450.a n = A378905 (n + 1)

end A378905

/-! ## A378905.P9264809263673494457

`A302643(A123123(n+1))`
-/

namespace A378905.P9264809263673494457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A123123 (n + 1)).toNat

end

end A378905.P9264809263673494457

namespace A378905

/-- `A302643(A123123(n+1))` -/
def P9264809263673494457.Spec : Prop :=
  ∀ n, P9264809263673494457.a n = A378905 (n + 1)

end A378905

/-! ## A378905.P6086408866970413640

`A302643(A161847(n+1))`
-/

namespace A378905.P6086408866970413640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A161847 (n + 1)).toNat

end

end A378905.P6086408866970413640

namespace A378905

/-- `A302643(A161847(n+1))` -/
def P6086408866970413640.Spec : Prop :=
  ∀ n, P6086408866970413640.a n = A378905 (n + 1)

end A378905

/-! ## A378905.P10607522723328241236

`A302643(A393828(n+1))`
-/

namespace A378905.P10607522723328241236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A393828 (n + 1)).toNat

end

end A378905.P10607522723328241236

namespace A378905

/-- `A302643(A393828(n+1))` -/
def P10607522723328241236.Spec : Prop :=
  ∀ n, P10607522723328241236.a n = A378905 (n + 1)

end A378905

/-! ## A378905.P11811204317984491112

`A302643(A008578(n+2))`
-/

namespace A378905.P11811204317984491112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A008578 (n + 2)).toNat

end

end A378905.P11811204317984491112

namespace A378905

/-- `A302643(A008578(n+2))` -/
def P11811204317984491112.Spec : Prop :=
  ∀ n, P11811204317984491112.a n = A378905 (n + 1)

end A378905

/-! ## A378905.P1640619728411083365

`A302643(A075643(n+2))`
-/

namespace A378905.P1640619728411083365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A075643 (n + 2)).toNat

end

end A378905.P1640619728411083365

namespace A378905

/-- `A302643(A075643(n+2))` -/
def P1640619728411083365.Spec : Prop :=
  ∀ n, P1640619728411083365.a n = A378905 (n + 1)

end A378905

/-! ## A378905.P4258758605778656080

`A302643(A116974(n+2))`
-/

namespace A378905.P4258758605778656080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A116974 (n + 2)).toNat

end

end A378905.P4258758605778656080

namespace A378905

/-- `A302643(A116974(n+2))` -/
def P4258758605778656080.Spec : Prop :=
  ∀ n, P4258758605778656080.a n = A378905 (n + 1)

end A378905

/-! ## A378905.P9619490358561008534

`A302643(A137922(n+2))`
-/

namespace A378905.P9619490358561008534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A137922 (n + 2)).toNat

end

end A378905.P9619490358561008534

namespace A378905

/-- `A302643(A137922(n+2))` -/
def P9619490358561008534.Spec : Prop :=
  ∀ n, P9619490358561008534.a n = A378905 (n + 1)

end A378905

/-!
# A378907: Number of permutations of [n] with at least one hit on both main diagonals.

The programs for A378907, there is no canonical definition to state claims against.
-/

/-! ## A378907.P9307020208895528651

`A000142(n)-2*A000166(n)+A003471(n)`
-/

namespace A378907.P9307020208895528651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - 2 * A000166 n + A003471 n

end

end A378907.P9307020208895528651

/-!
# A378912: Irregular triangle read by rows: row n lists all positive m such that sigma(m) divides n, where sigma is the sum-of-divisors function (A000203).

The programs for A378912, there is no canonical definition to state claims against.
-/

/-! ## A378912.P17973713405281486010

`A000688(A386310(2*(n+2))+A005803(n))`
-/

namespace A378912.P17973713405281486010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A386310 (2 * (n + 2)) + A005803 n).toNat

end

end A378912.P17973713405281486010

/-! ## A378912.P10322538151134735778

`A039997(A367675(2*(n+2))+A000010(n+1))`
-/

namespace A378912.P10322538151134735778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A367675 (2 * (n + 2)) + A000010 (n + 1)).toNat

end

end A378912.P10322538151134735778

/-! ## A378912.P2332344689655668259

`A175685(A120242(n+2))`
-/

namespace A378912.P2332344689655668259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175685 (A120242 (n + 2)).toNat

end

end A378912.P2332344689655668259

/-! ## A378912.P17307013618279102090

`A324924(A039870(n+2))`
-/

namespace A378912.P17307013618279102090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324924 (A039870 (n + 2)).toNat

end

end A378912.P17307013618279102090

/-! ## A378912.P4021447276016485756

`A184319(A293598(n+2))`
-/

namespace A378912.P4021447276016485756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184319 (A293598 (n + 2)).toNat

end

end A378912.P4021447276016485756

/-!
# A378913: a(n) = sum of all positive m such that sigma(m) divides n, where sigma is the sum-of-divisors function (A000203).

The programs for A378913, there is no canonical definition to state claims against.
-/

/-! ## A378913.P5317173280352782428

`∑{d}[n+1, A258913(#)]`
-/

namespace A378913.P5317173280352782428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A258913 d

end

end A378913.P5317173280352782428

/-!
# A378914: Smallest positive m such that sigma(m) does not divide n, where sigma is the sum-of-divisors function (A000203).

The programs for A378914, there is no canonical definition to state claims against.
-/

/-! ## A378914.P8885419000568132064

`A055881(A055881(n+1)*A158060(2*n+1))`
-/

namespace A378914.P8885419000568132064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A055881 (n + 1) * A158060 (2 * n + 1)).toNat

end

end A378914.P8885419000568132064

/-!
# A378915: Positive integers k such that k is not divisible by sigma(m) for any m >= 2, where sigma is the sum-of-divisors function (A000203).

The programs for A378915, there is no canonical definition to state claims against.
-/

/-! ## A378915.P8989790686636086374

`eq[1, A074754(n+1)]+1`
-/

namespace A378915.P8989790686636086374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A378915.P8989790686636086374

/-! ## A378915.P15651144048496348901

`eq[1, A319068(n+1)]+1`
-/

namespace A378915.P15651144048496348901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A378915.P15651144048496348901

/-! ## A378915.P3714162684002011503

`record[A000027(n+1)/A319068(n+1)]`
-/

namespace A378915.P3714162684002011503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A319068 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378915.P3714162684002011503

/-! ## A378915.P2843850882926238901

`lt[A378913(n+1), 2]+1`
-/

namespace A378915.P2843850882926238901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378913 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A378915.P2843850882926238901

/-!
# A378917: a(n) is the smallest positive integer having n decompositions of twice its value into ordered sums of two odd primes.

The programs for A378917, there is no canonical definition to state claims against.
-/

/-! ## A378917.P5953293152567691343

`A298990(n)+char[1]`
-/

namespace A378917.P5953293152567691343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A378917.P5953293152567691343

/-! ## A378917.P3666116030808801093

`or(A000035(n), A298990(n))`
-/

namespace A378917.P3666116030808801093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A298990 n)

end

end A378917.P3666116030808801093

/-! ## A378917.P2030312671797038063

`or(A298990(n), A379275(n))`
-/

namespace A378917.P2030312671797038063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A298990 n) (A379275 n)

end

end A378917.P2030312671797038063

/-! ## A378917.P17686361043170310381

`xor(A063524(n), A298990(n))`
-/

namespace A378917.P17686361043170310381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A298990 n)

end

end A378917.P17686361043170310381

/-! ## A378917.P270958774886534653

`xor(A178333(n), A298990(n))`
-/

namespace A378917.P270958774886534653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178333 n) (A298990 n)

end

end A378917.P270958774886534653

/-! ## A378917.P3965870178666066759

`or(A019590(n+1), A298990(n))`
-/

namespace A378917.P3965870178666066759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (n + 1)) (A298990 n)

end

end A378917.P3965870178666066759

/-! ## A378917.P17623810155518397103

`xor(A084928(n+1), A298990(n))`
-/

namespace A378917.P17623810155518397103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084928 (n + 1)) (A298990 n)

end

end A378917.P17623810155518397103

/-! ## A378917.P16962349880837877451

`A035026(n+1)+A298990(n)-A002372(n+1)`
-/

namespace A378917.P16962349880837877451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (n + 1) + (A298990 n - A002372 (n + 1))

end

end A378917.P16962349880837877451

/-!
# A378919: G.f. A(x) satisfies A(x) = 1 + x*A(x)^6/(1 + x*A(x)).

The programs for A378919, there is no canonical definition to state claims against.
-/

/-! ## A378919.P9710425584657880878

`A336708(eq[6, A025581(n)])`
-/

namespace A378919.P9710425584657880878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A378919.P9710425584657880878

/-!
# A378920: G.f. A(x) satisfies A(x) = 1 + x*A(x)^6/(1 + x*A(x)^2).

The programs for A378920, there is no canonical definition to state claims against.
-/

/-! ## A378920.P12609552275100396168

`or(A032742(A355349(n)), A051953(n+1))`
-/

namespace A378920.P12609552275100396168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032742 (A355349 n).toNat) (A051953 (n + 1))

end

end A378920.P12609552275100396168

/-!
# A378921: Number of binary n X n matrices that do not possess both horizontal and vertical symmetry.

The programs for A378921, the canonical program `A378921.P7692019774090697772` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378921 has offset 0).

The definition of A378921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378921.P7692019774090697772

`2^n²-2^ceil(n/2)²`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A378921

/-- `2^n²-2^ceil(n/2)²` -/
def P7692019774090697772.Spec : Prop :=
  ∀ n, P7692019774090697772.a n = (A378921 n : ℚ)

end A378921

/-!
# A378922: Number of minimal edge cuts in the n-antiprism graph.

The programs for A378922, the canonical program `A378922.P11278662101119650117` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378922 has offset 0).

The definition of A378922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378922.P13660383695940038216

`(2*n^4-3*n^3+13*n²-12*n+6)/6`
-/

namespace A378922.P13660383695940038216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 4 : ℤ) - (3 * n ^ 3 : ℤ) + (13 * n ^ 2 : ℤ) - (12 * n : ℤ) + 6 : ℚ) / 6

end

end A378922.P13660383695940038216

namespace A378922

/-- `(2*n^4-3*n^3+13*n²-12*n+6)/6` -/
def P13660383695940038216.Spec : Prop :=
  ∀ n, P13660383695940038216.a n = (A378922 n : ℚ)

theorem P13660383695940038216.correct : P13660383695940038216.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A378922, Nat.add_sub_cancel, A378922.P13660383695940038216.a, A378922.P11278662101119650117.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A378922, Nat.add_sub_cancel, A378922.P13660383695940038216.a, A378922.P11278662101119650117.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A378922

/-! ## A378922.P11278662101119650117

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=28, a(4)=81`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A378922

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11278662101119650117.Spec : Prop :=
  ∀ n, P11278662101119650117.a n = A378922 n

theorem P11278662101119650117.correct : P11278662101119650117.Spec := by
  intro n
  simp only [A378922]

end A378922

/-!
# A378923: Number of minimal edge cuts in the n-cycle complement and (n+1)-wheel complement graphs.

The programs for A378923, there is no canonical definition to state claims against.
-/

/-! ## A378923.P1972314168972542662

`A345915(A018004(n))-n`
-/

namespace A378923.P1972314168972542662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345915 (A018004 n).toNat - (n : ℤ)

end

end A378923.P1972314168972542662

/-! ## A378923.P17337355875749325407

`A345915(A100938(n))-n`
-/

namespace A378923.P17337355875749325407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345915 (A100938 n).toNat - (n : ℤ)

end

end A378923.P17337355875749325407

/-!
# A378924: Number of minimal edge cuts in the n-Plummer-Toft graph.

The programs for A378924, the canonical program `A378924.P11425580596668215402` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378924 has offset 0).

The definition of A378924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378924.P11425580596668215402

`5*2^n+(n+2)*(n+7)/2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A378924

/-- `5*2^n+(n+2)*(n+7)/2` -/
def P11425580596668215402.Spec : Prop :=
  ∀ n, P11425580596668215402.a n = (A378924 n : ℚ)

end A378924

/-! ## A378924.P16230818553371387912

`abs(A186347(2*n+5)+5*2^n-1)`
-/

namespace A378924.P16230818553371387912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A186347 (2 * n + 5) + ((5 * 2 ^ n : ℤ) - 1)|

end

end A378924.P16230818553371387912

namespace A378924

/-- `abs(A186347(2*n+5)+5*2^n-1)` -/
def P16230818553371387912.Spec : Prop :=
  ∀ n, P16230818553371387912.a n = A378924 n

end A378924

/-!
# A378927: Positive numbers whose squares have at most three digits less than 9.

The programs for A378927, there is no canonical definition to state claims against.
-/

/-! ## A378927.P7762698926328276530

`lt[A264991(A350948(n)), A061204(n+1)]`
-/

namespace A378927.P7762698926328276530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264991 (A350948 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061204 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378927.P7762698926328276530

/-! ## A378927.P1612781917590301649

`lt[A242882(n), A108302(n²)]`
-/

namespace A378927.P1612781917590301649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242882 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108302 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378927.P1612781917590301649

/-! ## A378927.P5181423611613834344

`lt[A035699(A080653(n+1)), A004159(n)]`
-/

namespace A378927.P5181423611613834344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035699 (A080653 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378927.P5181423611613834344

/-! ## A378927.P18075288986603922169

`lt[A000700(n), A000010(A380845(n+1))]`
-/

namespace A378927.P18075288986603922169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A380845 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378927.P18075288986603922169

/-! ## A378927.P15016434857132160677

`lt[A062190(A120186(n+1)), A226492(n)]`
-/

namespace A378927.P15016434857132160677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A120186 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378927.P15016434857132160677

/-!
# A378929: Number of steps it takes for the chain of f(n) = n * d(n) / gcd(n, d(n))^2 to reach a cycle from a starting number n.

The programs for A378929, there is no canonical definition to state claims against.
-/

/-! ## A378929.P1194883600414915205

`A268386(n+1)-A328308(6*A065856(n))`
-/

namespace A378929.P1194883600414915205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268386 (n + 1) - A328308 (6 * A065856 n).toNat

end

end A378929.P1194883600414915205

/-! ## A378929.P16506970166165810606

`xor(A000035(A204512(n+1)), A268387(n+1))`
-/

namespace A378929.P16506970166165810606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A204512 (n + 1)).toNat) (A268387 (n + 1))

end

end A378929.P16506970166165810606

/-! ## A378929.P16243000120838652089

`A124763(A003415(3*n+1)+64)`
-/

namespace A378929.P16243000120838652089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A003415 (3 * n + 1) + 64).toNat

end

end A378929.P16243000120838652089

/-! ## A378929.P12937937743700105666

`A227320(n+1)%A001222(A129150(n))`
-/

namespace A378929.P12937937743700105666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227320 (n + 1)) (A001222 (A129150 n).toNat)

end

end A378929.P12937937743700105666

/-! ## A378929.P4649304242287193927

`A078711(A324844(n+1))-A010060(n+2)`
-/

namespace A378929.P4649304242287193927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078711 (A324844 (n + 1)).toNat - A010060 (n + 2)

end

end A378929.P4649304242287193927

/-!
# A378930: a(n) = n * d(n) / gcd(n, d(n))^2, where d = A000005.

The programs for A378930, the canonical program `A378930.P6933035363972546027` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378930 has offset 1).

The definition of A378930 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009191, A009230, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378930.P6933035363972546027

`A009230(n+1)/A009191(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A378930

/-- `A009230(n+1)/A009191(n+1)` -/
def P6933035363972546027.Spec : Prop :=
  ∀ n, P6933035363972546027.a n = (A378930 (n + 1) : ℚ)

end A378930

/-! ## A378930.P14806667006289768318

`A090387(n+1)*A090395(n+1)`
-/

namespace A378930.P14806667006289768318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090387 (n + 1) * A090395 (n + 1)

end

end A378930.P14806667006289768318

namespace A378930

/-- `A090387(n+1)*A090395(n+1)` -/
def P14806667006289768318.Spec : Prop :=
  ∀ n, P14806667006289768318.a n = A378930 (n + 1)

end A378930

/-! ## A378930.P898593513249292433

`A038040(n+1)/A009191(n+1)²`
-/

namespace A378930.P898593513249292433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A009191 (n + 1) ^ 2 : ℚ)

end

end A378930.P898593513249292433

namespace A378930

/-- `A038040(n+1)/A009191(n+1)²` -/
def P898593513249292433.Spec : Prop :=
  ∀ n, P898593513249292433.a n = (A378930 (n + 1) : ℚ)

end A378930

/-! ## A378930.P9906005914966511266

`A009230(n+1)²/A038040(n+1)`
-/

namespace A378930.P9906005914966511266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009230 (n + 1) ^ 2 : ℚ) / (A038040 (n + 1) : ℚ)

end

end A378930.P9906005914966511266

namespace A378930

/-- `A009230(n+1)²/A038040(n+1)` -/
def P9906005914966511266.Spec : Prop :=
  ∀ n, P9906005914966511266.a n = (A378930 (n + 1) : ℚ)

end A378930

/-! ## A378930.P13916451296119113729

`A000005(n+1)/A009191(n+1)*A090395(n+1)`
-/

namespace A378930.P13916451296119113729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A009191 (n + 1) : ℚ) * (A090395 (n + 1) : ℚ)

end

end A378930.P13916451296119113729

namespace A378930

/-- `A000005(n+1)/A009191(n+1)*A090395(n+1)` -/
def P13916451296119113729.Spec : Prop :=
  ∀ n, P13916451296119113729.a n = (A378930 (n + 1) : ℚ)

end A378930

/-! ## A378930.P965815836285447263

`A009230(n+1)/gcd(A009230(n+1), A049820(n+1))`
-/

namespace A378930.P965815836285447263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009230 (n + 1) : ℚ) / (Int.gcd (A009230 (n + 1)) (A049820 (n + 1)) : ℚ)

end

end A378930.P965815836285447263

namespace A378930

/-- `A009230(n+1)/gcd(A009230(n+1), A049820(n+1))` -/
def P965815836285447263.Spec : Prop :=
  ∀ n, P965815836285447263.a n = (A378930 (n + 1) : ℚ)

end A378930

/-! ## A378930.P10436164390799130619

`lcm(A009191(n+1), A352482(n+1))/A009191(n+1)`
-/

namespace A378930.P10436164390799130619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A009191 (n + 1)) (A352482 (n + 1)) : ℚ) / (A009191 (n + 1) : ℚ)

end

end A378930.P10436164390799130619

namespace A378930

/-- `lcm(A009191(n+1), A352482(n+1))/A009191(n+1)` -/
def P10436164390799130619.Spec : Prop :=
  ∀ n, P10436164390799130619.a n = (A378930 (n + 1) : ℚ)

end A378930

/-!
# A378932: Array read by antidiagonals: T(m,n) is the number of minimal edge cuts in the grid graph P_m X P_n.

The programs for A378932, there is no canonical definition to state claims against.
-/

/-! ## A378932.P17263929184683805259

`A141611(n)-A055642(A022176(n))`
-/

namespace A378932.P17263929184683805259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141611 n - A055642 (A022176 n).toNat

end

end A378932.P17263929184683805259

/-! ## A378932.P17959436149017478737

`A141611(n)-A055642(A022180(n))`
-/

namespace A378932.P17959436149017478737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141611 n - A055642 (A022180 n).toNat

end

end A378932.P17959436149017478737

/-! ## A378932.P15554468428385519247

`A141611(n)-A055642(A022181(n))`
-/

namespace A378932.P15554468428385519247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141611 n - A055642 (A022181 n).toNat

end

end A378932.P15554468428385519247

/-! ## A378932.P16999575563767577570

`A141611(n)-A055642(A176627(n))`
-/

namespace A378932.P16999575563767577570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141611 n - A055642 (A176627 n).toNat

end

end A378932.P16999575563767577570

/-! ## A378932.P18220196984739113291

`A141611(n)-A358371(A157272(n))`
-/

namespace A378932.P18220196984739113291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141611 n - A358371 (A157272 n).toNat

end

end A378932.P18220196984739113291

/-!
# A378933: Number of minimal edge cuts in the 3 X n grid graph.

The programs for A378933, the canonical program `A378933.P7499219059448651818` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378933 has offset 1).

The definition of A378933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378933.P12500540007613808690

`16*2^(n+1)-(2*(n+1)^3+9*(n+1)²+73*(n+1)+96)/6`
-/

namespace A378933.P12500540007613808690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 * 2 ^ (n + 1) : ℚ) - (2 * (n + 1) ^ 3 + 9 * (n + 1) ^ 2 + 73 * (n + 1) + 96 : ℚ) / 6

end

end A378933.P12500540007613808690

namespace A378933

/-- `16*2^(n+1)-(2*(n+1)^3+9*(n+1)²+73*(n+1)+96)/6` -/
def P12500540007613808690.Spec : Prop :=
  ∀ n, P12500540007613808690.a n = (A378933 (n + 1) : ℚ)

end A378933

/-! ## A378933.P7499219059448651818

`A166761(n+1)/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A378933

/-- `A166761(n+1)/2` -/
def P7499219059448651818.Spec : Prop :=
  ∀ n, P7499219059448651818.a n = (A378933 (n + 1) : ℚ)

end A378933

/-! ## A378933.P1293097446099695733

`∑[n²+2*(a(n-1)+4)]` with `a(0)=2`
-/

namespace A378933.P1293097446099695733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  n ^ 2 + 2 * (f1 (n - 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378933.P1293097446099695733

namespace A378933

/-- `∑[n²+2*(a(n-1)+4)]` -/
def P1293097446099695733.Spec : Prop :=
  ∀ n, (P1293097446099695733.a n : ℤ) = A378933 (n + 1)

end A378933

/-! ## A378933.P4134880618322625747

`A014682(A166761(n+1))`
-/

namespace A378933.P4134880618322625747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A166761 (n + 1)).toNat

end

end A378933.P4134880618322625747

namespace A378933

/-- `A014682(A166761(n+1))` -/
def P4134880618322625747.Spec : Prop :=
  ∀ n, P4134880618322625747.a n = A378933 (n + 1)

end A378933

/-! ## A378933.P11151191729232080077

`A378932(∑[n+3]+1)`
-/

namespace A378933.P11151191729232080077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378932 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A378933.P11151191729232080077

namespace A378933

/-- `A378932(∑[n+3]+1)` -/
def P11151191729232080077.Spec : Prop :=
  ∀ n, P11151191729232080077.a n = A378933 (n + 1)

end A378933

/-!
# A378934: Number of minimal edge cuts in the 4 X n grid graph.

The programs for A378934, there is no canonical definition to state claims against.
-/

/-! ## A378934.P3491464170227979219

`A166766(n+1)/2`
-/

namespace A378934.P3491464170227979219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166766 (n + 1) : ℚ) / 2

end

end A378934.P3491464170227979219

/-! ## A378934.P1513998479582332360

`A378932(A141214(n+1))`
-/

namespace A378934.P1513998479582332360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378932 (A141214 (n + 1)).toNat

end

end A378934.P1513998479582332360

/-! ## A378934.P15130802448890454074

`A378932(A374004(n+1))`
-/

namespace A378934.P15130802448890454074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378932 (A374004 (n + 1)).toNat

end

end A378934.P15130802448890454074

/-! ## A378934.P14553884808186479735

`A378932(A055998(n+2))`
-/

namespace A378934.P14553884808186479735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378932 (A055998 (n + 2)).toNat

end

end A378934.P14553884808186479735

/-!
# A378936: Number of minimal edge cuts in the n X n rook graph.

The programs for A378936, there is no canonical definition to state claims against.
-/

/-! ## A378936.P6468521983340325930

`A286189(n+1)+(2^n-1)²-2^((n+1)²-1)`
-/

namespace A378936.P6468521983340325930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286189 (n + 1) + ((2 ^ n : ℤ) - 1) ^ 2 : ℚ) - (2 : ℚ) ^ (((n + 1) ^ 2 : ℤ) - 1 : ℤ)

end

end A378936.P6468521983340325930

/-! ## A378936.P8771726689908173931

`A378935((n+1)²+n²)`
-/

namespace A378936.P8771726689908173931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378935 ((n + 1) ^ 2 + n ^ 2)

end

end A378936.P8771726689908173931

/-!
# A378937: Number of minimal edge cuts in the 2 X n rook graph.

The programs for A378937, the canonical program `A378937.P13333275681684748040` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378937 has offset 1).

The definition of A378937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378937.P13333275681684748040

`2^(2*(n+1)-1)-3^(n+1)+5*2^n-3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A378937

/-- `2^(2*(n+1)-1)-3^(n+1)+5*2^n-3` -/
def P13333275681684748040.Spec : Prop :=
  ∀ n, P13333275681684748040.a n = (A378937 (n + 1) : ℚ)

end A378937

/-! ## A378937.P9358632099772823777

`A378935(∑[n+1]+2)`
-/

namespace A378937.P9358632099772823777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378935 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A378937.P9358632099772823777

namespace A378937

/-- `A378935(∑[n+1]+2)` -/
def P9358632099772823777.Spec : Prop :=
  ∀ n, P9358632099772823777.a n = A378937 (n + 1)

end A378937

/-!
# A378938: Array read by antidiagonals: T(m,n) is the number of Hamiltonian paths in an m X n grid which start in the top left corner.

The programs for A378938, there is no canonical definition to state claims against.
-/

/-! ## A378938.P17756026104577808787

`A179926(A036561(n))`
-/

namespace A378938.P17756026104577808787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (A036561 n).toNat

end

end A378938.P17756026104577808787

/-! ## A378938.P5535025751262473346

`A179926(A082234(n+1))`
-/

namespace A378938.P5535025751262473346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (A082234 (n + 1)).toNat

end

end A378938.P5535025751262473346

/-! ## A378938.P17585984378803976146

`A179926(A175840(n))`
-/

namespace A378938.P17585984378803976146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (A175840 n).toNat

end

end A378938.P17585984378803976146

/-! ## A378938.P15693102298918830355

`A102705(A028657(n))`
-/

namespace A378938.P15693102298918830355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A028657 n).toNat

end

end A378938.P15693102298918830355

/-! ## A378938.P14895042110313105712

`A168134(A171699(n))`
-/

namespace A378938.P14895042110313105712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A171699 n).toNat

end

end A378938.P14895042110313105712

/-!
# A378939: Number of Schroeder paths of semilength n up to reversal.

The programs for A378939, there is no canonical definition to state claims against.
-/

/-! ## A378939.P6683224254479120729

`(A006318(n)+A110110(n))/2`
-/

namespace A378939.P6683224254479120729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006318 n + A110110 n : ℚ) / 2

end

end A378939.P6683224254479120729

/-! ## A378939.P1020468864761009132

`A006318(n)+A247623(n)-A001003(n)`
-/

namespace A378939.P1020468864761009132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n + (A247623 n - A001003 n)

end

end A378939.P1020468864761009132

/-! ## A378939.P8278091719308160654

`A025480(A110110(n)+A006318(n))`
-/

namespace A378939.P8278091719308160654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A110110 n + A006318 n).toNat

end

end A378939.P8278091719308160654

/-! ## A378939.P5125763898343547747

`A289440(A110110(n)+A006318(n))`
-/

namespace A378939.P5125763898343547747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A110110 n + A006318 n).toNat

end

end A378939.P5125763898343547747

/-!
# A378943: Numbers obtained from the tribonacci triangle formed by the number of connection points in the paths obtained by Pell walk on the square grid.

The programs for A378943, the canonical program `A378943.P11546352817730711155` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378943 has offset 1).

The definition of A378943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378943.P11546352817730711155

`a(n-1)+2*a(n-2)-a(n-4)-a(n-5)` with `a(0)=2, a(1)=3, a(2)=7, a(3)=13, a(4)=25`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A378943

/-- `a(n-1)+2*a(n-2)-a(n-4)-a(n-5)` -/
def P11546352817730711155.Spec : Prop :=
  ∀ n, P11546352817730711155.a n = A378943 (n + 1)

theorem P11546352817730711155.correct : P11546352817730711155.Spec := by
  intro n
  simp only [A378943, Nat.add_sub_cancel]

end A378943

/-! ## A378943.P13795336360160654229

`ceil(∑[A214825(n+1)]/2)`
-/

namespace A378943.P13795336360160654229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A378943.P13795336360160654229

namespace A378943

/-- `ceil(∑[A214825(n+1)]/2)` -/
def P13795336360160654229.Spec : Prop :=
  ∀ n, P13795336360160654229.a n = A378943 (n + 1)

end A378943

/-! ## A378943.P14166178012665946407

`ceil((A214899(n+3)-2)/2)`
-/

namespace A378943.P14166178012665946407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A214899 (n + 3) - 2 : ℚ) / 2⌉

end

end A378943.P14166178012665946407

namespace A378943

/-- `ceil((A214899(n+3)-2)/2)` -/
def P14166178012665946407.Spec : Prop :=
  ∀ n, P14166178012665946407.a n = A378943 (n + 1)

end A378943

/-! ## A378943.P1513302303756944788

`A110654(∑[A214825(n+1)])`
-/

namespace A378943.P1513302303756944788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378943.P1513302303756944788

namespace A378943

/-- `A110654(∑[A214825(n+1)])` -/
def P1513302303756944788.Spec : Prop :=
  ∀ n, P1513302303756944788.a n = A378943 (n + 1)

end A378943

/-!
# A378945: Record values in A378898.

The programs for A378945, there is no canonical definition to state claims against.
-/

/-! ## A378945.P6863934272653787883

`A378898(A378946(n+1))`
-/

namespace A378945.P6863934272653787883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378898 (A378946 (n + 1)).toNat

end

end A378945.P6863934272653787883

/-! ## A378945.P1868028882143130084

`record[A378898(n+1)]`
-/

namespace A378945.P1868028882143130084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378945.P1868028882143130084

/-! ## A378945.P6605068321530810301

`record[A089489(n+1)-(n+1)]`
-/

namespace A378945.P6605068321530810301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089489 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378945.P6605068321530810301

/-! ## A378945.P3344553515481293961

`lt[A106683(A039953(2*(n+1))), A292252(n+1)]`
-/

namespace A378945.P3344553515481293961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (A039953 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378945.P3344553515481293961

/-! ## A378945.P7306489155832455543

`eq[A074290(3*n+4), A106683(A039953(2*(n+1)))]`
-/

namespace A378945.P7306489155832455543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (A039953 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378945.P7306489155832455543

/-!
# A378947: Number of row states in an automaton for the enumeration of the number of fixed polyominoes with bounding box of width n.

The programs for A378947, there is no canonical definition to state claims against.
-/

/-! ## A378947.P5938611714254906013

`∑[A034929(∑[n+3])]`
-/

namespace A378947.P5938611714254906013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034929 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378947.P5938611714254906013

/-! ## A378947.P7877607611562905442

`A243283(A150228(n+1))`
-/

namespace A378947.P7877607611562905442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A150228 (n + 1)).toNat

end

end A378947.P7877607611562905442

/-! ## A378947.P16921953240227514096

`A094969(n)+A076489(A000522(n))`
-/

namespace A378947.P16921953240227514096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094969 n + A076489 (A000522 n).toNat

end

end A378947.P16921953240227514096

/-!
# A378949: Numbers with monotonically increasing digits, increasing by only 0 or 1.

The programs for A378949, there is no canonical definition to state claims against.
-/

/-! ## A378949.P4056427279748658866

`∩[A009994(n+1), A032981(n+1)]`
-/

namespace A378949.P4056427279748658866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378949.P4056427279748658866

/-! ## A378949.P12832741161010057213

`∩[A134336(n+1), A009994(n+2)]`
-/

namespace A378949.P12832741161010057213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378949.P12832741161010057213

/-! ## A378949.P14500429883748019748

`∩[A009994(n+1), A252490(n+1)]`
-/

namespace A378949.P14500429883748019748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378949.P14500429883748019748

/-! ## A378949.P8957619265659656480

`record[A004185(A032981(n+1))]`
-/

namespace A378949.P8957619265659656480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A032981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378949.P8957619265659656480

/-! ## A378949.P8027159869032924567

`record[A004185(A134336(n+2))]`
-/

namespace A378949.P8027159869032924567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A134336 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378949.P8027159869032924567

/-!
# A378951: G.f. A(x) satisfies A(x) = ( 1 + x*A(x)^(5/3)/(1 + x*A(x)) )^3.

The programs for A378951, there is no canonical definition to state claims against.
-/

/-! ## A378951.P16962290608469945871

`A350844(2*(∑[2*n]+1))`
-/

namespace A378951.P16962290608469945871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350844 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A378951.P16962290608469945871

/-!
# A378952: G.f. A(x) satisfies A(x) = ( 1 + x*A(x)^2/(1 + x*A(x)^(4/3)) )^3.

The programs for A378952, there is no canonical definition to state claims against.
-/

/-! ## A378952.P6307083228174763097

`A260731(2*A036691(n))`
-/

namespace A378952.P6307083228174763097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (2 * A036691 n).toNat

end

end A378952.P6307083228174763097

/-!
# A378954: G.f. A(x) satisfies A(x) = ( 1 + x*A(x)^3/(1 + x*A(x)^2) )^2.

The programs for A378954, there is no canonical definition to state claims against.
-/

/-! ## A378954.P8883030498678126316

`A309098(A018019(n))`
-/

namespace A378954.P8883030498678126316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309098 (A018019 n).toNat

end

end A378954.P8883030498678126316

/-!
# A378957: G.f. A(x) satisfies A(x) = ( (1 + x * A(x)^9) / (1 - x) )^(1/2).

The programs for A378957, there is no canonical definition to state claims against.
-/

/-! ## A378957.P243708815758667605

`A226896(n^n)`
-/

namespace A378957.P243708815758667605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226896 (n ^ n)

end

end A378957.P243708815758667605

/-!
# A378958: G.f. A(x) satisfies A(x) = 1 + x/A(x) * (1 - A(x) + A(x)^4).

The programs for A378958, there is no canonical definition to state claims against.
-/

/-! ## A378958.P9757480156094723283

`A020664(lcm(28, 3*a(n-1)+2*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=8`
-/

namespace A378958.P9757480156094723283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 8] fun n a =>
  A020664 (Int.lcm 28 (3 * a (n - 1) + 2 * a (n - 2)))

end

end A378958.P9757480156094723283

/-! ## A378958.P6067675335421441619

`A331913((n+1)/∏{p}[n+1, #]+ceil(Δ[3^(n-2)])-1)`
-/

namespace A378958.P6067675335421441619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) + (⌈f2 (n + 1) - f2 n⌉ - 1 : ℚ))).toNat

end

end A378958.P6067675335421441619

/-!
# A378959: Sum, in base 10, of the permutations of the digits of n, written in base 2.

The programs for A378959, the canonical program `A378959.P5432620633639023974` is in `Seq.B007.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378959 has offset 0).

The definition of A378959 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090706, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378959.P5432620633639023974

`A003817(n)*A090706(n)`

The canonical program, it is in `Seq.B007.C002`.
-/

namespace A378959

/-- `A003817(n)*A090706(n)` -/
def P5432620633639023974.Spec : Prop :=
  ∀ n, P5432620633639023974.a n = A378959 n

theorem P5432620633639023974.correct : P5432620633639023974.Spec := by
  intro n
  simp only [A378959]

end A378959

/-! ## A378959.P12636883360011441585

`∑[n*char[2^n]]*A125644(A073137(n))`
-/

namespace A378959.P12636883360011441585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A125644 (A073137 n).toNat

end

end A378959.P12636883360011441585

namespace A378959

/-- `∑[n*char[2^n]]*A125644(A073137(n))` -/
def P12636883360011441585.Spec : Prop :=
  ∀ n, P12636883360011441585.a n = A378959 n

end A378959

/-! ## A378959.P17566539694843557116

`A090706(n)*A092323(2*n+1)`
-/

namespace A378959.P17566539694843557116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 n * A092323 (2 * n + 1)

end

end A378959.P17566539694843557116

namespace A378959

/-- `A090706(n)*A092323(2*n+1)` -/
def P17566539694843557116.Spec : Prop :=
  ∀ n, P17566539694843557116.a n = A378959 n

end A378959

/-! ## A378959.P15774604585386513043

`A079073(2*n)-A079074(2*n)`
-/

namespace A378959.P15774604585386513043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079073 (2 * n) - A079074 (2 * n)

end

end A378959.P15774604585386513043

namespace A378959

/-- `A079073(2*n)-A079074(2*n)` -/
def P15774604585386513043.Spec : Prop :=
  ∀ n, P15774604585386513043.a n = A378959 n

end A378959

/-! ## A378959.P3949021997971422747

`A079073(A073137(2*n))`
-/

namespace A378959.P3949021997971422747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079073 (A073137 (2 * n)).toNat

end

end A378959.P3949021997971422747

namespace A378959

/-- `A079073(A073137(2*n))` -/
def P3949021997971422747.Spec : Prop :=
  ∀ n, P3949021997971422747.a n = A378959 n

end A378959

/-!
# A378961: Number of sets of nonzero triangular numbers whose largest element is the n-th triangular number and whose sum is a triangular number.

The programs for A378961, there is no canonical definition to state claims against.
-/

/-! ## A378961.P10175041299191040748

`or(A007814(A000682(n+2)), A080007(n))`
-/

namespace A378961.P10175041299191040748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A000682 (n + 2)).toNat) (A080007 n)

end

end A378961.P10175041299191040748

/-! ## A378961.P2960947602068577762

`A033676(∏{p}[A340702(2*n+3)+A003101(n), #])`
-/

namespace A378961.P2960947602068577762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340702 (2 * n + 3) + A003101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A378961.P2960947602068577762

/-!
# A378962: First differences of A378726.

The programs for A378962, the canonical program `A378962.P5441024568918404344` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378962 has offset 1).

The definition of A378962 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378962.P5441024568918404344

`A000340(A378724(n+2)-A378724(n+1)-1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A378962

/-- `A000340(A378724(n+2)-A378724(n+1)-1)` -/
def P5441024568918404344.Spec : Prop :=
  ∀ n, P5441024568918404344.a n = A378962 (n + 1)

theorem P5441024568918404344.correct : P5441024568918404344.Spec := by
  intro n
  simp only [A378962, Nat.add_sub_cancel]

end A378962

/-! ## A378962.P5839594222508673367

`Δ[A378726(n+1)]`
-/

namespace A378962.P5839594222508673367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378962.P5839594222508673367

namespace A378962

/-- `Δ[A378726(n+1)]` -/
def P5839594222508673367.Spec : Prop :=
  ∀ n, P5839594222508673367.a n = A378962 (n + 1)

end A378962

/-! ## A378962.P13892986166857942378

`A000340(Δ[A378724(n+1)]-1)`
-/

namespace A378962.P13892986166857942378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 (f1 (n + 1) - f1 n - 1).toNat

end

end A378962.P13892986166857942378

namespace A378962

/-- `A000340(Δ[A378724(n+1)]-1)` -/
def P13892986166857942378.Spec : Prop :=
  ∀ n, P13892986166857942378.a n = A378962 (n + 1)

theorem P13892986166857942378.correct : P13892986166857942378.Spec := by
  intro n
  simp only [A378962, Nat.add_sub_cancel, A378962.P13892986166857942378.f1, A378962.P13892986166857942378.a, A378962.P5441024568918404344.a, SequenceMachineLib.memo_apply]

end A378962

/-! ## A378962.P16116878877329043258

`A378726(n+2)-A378726(n+1)`
-/

namespace A378962.P16116878877329043258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378726 (n + 2) - A378726 (n + 1)

end

end A378962.P16116878877329043258

namespace A378962

/-- `A378726(n+2)-A378726(n+1)` -/
def P16116878877329043258.Spec : Prop :=
  ∀ n, P16116878877329043258.a n = A378962 (n + 1)

end A378962

/-! ## A378962.P194014668125531902

`A000340(A378725(n+1)+A300547(2*n+3))`
-/

namespace A378962.P194014668125531902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 (A378725 (n + 1) + A300547 (2 * n + 3)).toNat

end

end A378962.P194014668125531902

namespace A378962

/-- `A000340(A378725(n+1)+A300547(2*n+3))` -/
def P194014668125531902.Spec : Prop :=
  ∀ n, P194014668125531902.a n = A378962 (n + 1)

end A378962

/-!
# A378965: Semiperimeter of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A378965, the canonical program `A378965.P16390378883255238781` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378965 has offset 0).

The definition of A378965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378965.P16390378883255238781

`A002315(n)*(2*A002315(n)-1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A378965

/-- `A002315(n)*(2*A002315(n)-1)` -/
def P16390378883255238781.Spec : Prop :=
  ∀ n, P16390378883255238781.a n = A378965 n

theorem P16390378883255238781.correct : P16390378883255238781.Spec := by
  intro n
  simp only [A378965]

end A378965

/-! ## A378965.P6114995961211801708

`(A362545(n)+2*A377726(n)+1)/2`
-/

namespace A378965.P6114995961211801708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362545 n + 2 * A377726 n + 1 : ℚ) / 2

end

end A378965.P6114995961211801708

namespace A378965

/-- `(A362545(n)+2*A377726(n)+1)/2` -/
def P6114995961211801708.Spec : Prop :=
  ∀ n, P6114995961211801708.a n = (A378965 n : ℚ)

end A378965

/-! ## A378965.P6849212766415535522

`A377726(n)+A002315(n)`
-/

namespace A378965.P6849212766415535522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377726 n + A002315 n

end

end A378965.P6849212766415535522

namespace A378965

/-- `A377726(n)+A002315(n)` -/
def P6849212766415535522.Spec : Prop :=
  ∀ n, P6849212766415535522.a n = A378965 n

end A378965

/-! ## A378965.P11242943060700556185

`A002315(n)*A362545(n)`
-/

namespace A378965.P11242943060700556185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * A362545 n

end

end A378965.P11242943060700556185

namespace A378965

/-- `A002315(n)*A362545(n)` -/
def P11242943060700556185.Spec : Prop :=
  ∀ n, P11242943060700556185.a n = A378965 n

end A378965

/-! ## A378965.P1809300659457523117

`A383734(n+1)-A002315(n)`
-/

namespace A378965.P1809300659457523117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383734 (n + 1) - A002315 n

end

end A378965.P1809300659457523117

namespace A378965

/-- `A383734(n+1)-A002315(n)` -/
def P1809300659457523117.Spec : Prop :=
  ∀ n, P1809300659457523117.a n = A378965 n

end A378965

/-! ## A378965.P9337615949401294329

`A377726(n)+A001333(2*n+1)`
-/

namespace A378965.P9337615949401294329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377726 n + A001333 (2 * n + 1)

end

end A378965.P9337615949401294329

namespace A378965

/-- `A377726(n)+A001333(2*n+1)` -/
def P9337615949401294329.Spec : Prop :=
  ∀ n, P9337615949401294329.a n = A378965 n

end A378965

/-! ## A378965.P1000022954503148329

`A001333(2*n+1)*A362545(n)`
-/

namespace A378965.P1000022954503148329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (2 * n + 1) * A362545 n

end

end A378965.P1000022954503148329

namespace A378965

/-- `A001333(2*n+1)*A362545(n)` -/
def P1000022954503148329.Spec : Prop :=
  ∀ n, P1000022954503148329.a n = A378965 n

end A378965

/-! ## A378965.P10112619768493237308

`A383734(n+1)-A001333(2*n+1)`
-/

namespace A378965.P10112619768493237308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383734 (n + 1) - A001333 (2 * n + 1)

end

end A378965.P10112619768493237308

namespace A378965

/-- `A383734(n+1)-A001333(2*n+1)` -/
def P10112619768493237308.Spec : Prop :=
  ∀ n, P10112619768493237308.a n = A378965 n

end A378965

/-! ## A378965.P3854616726132422784

`A082639(2*(n+1))-A100828(2*n)`
-/

namespace A378965.P3854616726132422784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082639 (2 * (n + 1)) - A100828 (2 * n)

end

end A378965.P3854616726132422784

namespace A378965

/-- `A082639(2*(n+1))-A100828(2*n)` -/
def P3854616726132422784.Spec : Prop :=
  ∀ n, P3854616726132422784.a n = A378965 n

end A378965

/-! ## A378965.P38862127680352405

`A082639(2*(n+1))-A113224(2*n)`
-/

namespace A378965.P38862127680352405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082639 (2 * (n + 1)) - A113224 (2 * n)

end

end A378965.P38862127680352405

namespace A378965

/-- `A082639(2*(n+1))-A113224(2*n)` -/
def P38862127680352405.Spec : Prop :=
  ∀ n, P38862127680352405.a n = A378965 n

end A378965

/-!
# A378966: Area of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A378966, the canonical program `A378966.P9728082263736134258` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378966 has offset 0).

The definition of A378966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378966.P11367238127704468842

`A362545(n)*A377726(n)/2`
-/

namespace A378966.P11367238127704468842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362545 n * A377726 n : ℚ) / 2

end

end A378966.P11367238127704468842

namespace A378966

/-- `A362545(n)*A377726(n)/2` -/
def P11367238127704468842.Spec : Prop :=
  ∀ n, P11367238127704468842.a n = (A378966 n : ℚ)

end A378966

/-! ## A378966.P9728082263736134258

`A002315(n)*(A002315(n)-1)*(2*A002315(n)-1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A378966

/-- `A002315(n)*(A002315(n)-1)*(2*A002315(n)-1)` -/
def P9728082263736134258.Spec : Prop :=
  ∀ n, P9728082263736134258.a n = A378966 n

theorem P9728082263736134258.correct : P9728082263736134258.Spec := by
  intro n
  simp only [A378966]

end A378966

/-! ## A378966.P455503187220915459

`(A379508(n)-A378965(n))*A378965(n)`
-/

namespace A378966.P455503187220915459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A379508 n - A378965 n) * A378965 n

end

end A378966.P455503187220915459

namespace A378966

/-- `(A379508(n)-A378965(n))*A378965(n)` -/
def P455503187220915459.Spec : Prop :=
  ∀ n, P455503187220915459.a n = A378966 n

end A378966

/-!
# A378970: Antidiagonal-sums of the array A378622(n,k) = n-th term of k-th differences of strict partition numbers (A000009).

The programs for A378970, there is no canonical definition to state claims against.
-/

/-! ## A378970.P10855927734551254031

`A025147(n+1)+A025147(n)-A380412(n+1)`
-/

namespace A378970.P10855927734551254031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + (A025147 n - A380412 (n + 1))

end

end A378970.P10855927734551254031

/-!
# A378972: Second differences of the strict partition numbers A000009.

The programs for A378972, there is no canonical definition to state claims against.
-/

/-! ## A378972.P12364777442096515555

`Δ[Δ[A000009(n)]]`
-/

namespace A378972.P12364777442096515555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378972.P12364777442096515555

/-! ## A378972.P18318070336043049303

`Δ[A087897(n+1)]`
-/

namespace A378972.P18318070336043049303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378972.P18318070336043049303

/-! ## A378972.P423260599314989013

`A087897(n+2)-A087897(n+1)`
-/

namespace A378972.P423260599314989013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (n + 2) - A087897 (n + 1)

end

end A378972.P423260599314989013

/-! ## A378972.P12500942956203180508

`Δ[Δ[A111133(n)]]`
-/

namespace A378972.P12500942956203180508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378972.P12500942956203180508

/-! ## A378972.P5637454734785017665

`Δ[Δ[abs(A081360(n))]]`
-/

namespace A378972.P5637454734785017665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378972.P5637454734785017665

/-! ## A378972.P10314051736052935334

`Δ[Δ[A035457(2*n)]]`
-/

namespace A378972.P10314051736052935334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378972.P10314051736052935334

/-! ## A378972.P5355908598353376244

`Δ[Δ[A172033(2*n)]]`
-/

namespace A378972.P5355908598353376244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378972.P5355908598353376244

/-! ## A378972.P3522497084401322934

`Δ[A116663(∑[n+1])]`
-/

namespace A378972.P3522497084401322934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116663 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378972.P3522497084401322934

/-! ## A378972.P17607862848955120918

`Δ[A342531(2*(n+1)²)]`
-/

namespace A378972.P17607862848955120918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342531 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378972.P17607862848955120918

/-!
# A378978: Deficiency of even numbers: a(n) = 4*n - sigma(2*n).

The programs for A378978, the canonical program `A378978.P10075969272711393270` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378978 has offset 1).

The definition of A378978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378978.P10075969272711393270

`A033879(2*(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A378978

/-- `A033879(2*(n+1))` -/
def P10075969272711393270.Spec : Prop :=
  ∀ n, P10075969272711393270.a n = A378978 (n + 1)

theorem P10075969272711393270.correct : P10075969272711393270.Spec := by
  intro n
  simp only [A378978, Nat.add_sub_cancel]

end A378978

/-! ## A378978.P5727776402604214080

`4*(n+1)-A062731(n+1)`
-/

namespace A378978.P5727776402604214080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A062731 (n + 1)

end

end A378978.P5727776402604214080

namespace A378978

/-- `4*(n+1)-A062731(n+1)` -/
def P5727776402604214080.Spec : Prop :=
  ∀ n, P5727776402604214080.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P14446462380616579900

`Δ[n²]-A346880(n+1)`
-/

namespace A378978.P14446462380616579900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A346880 (n + 1)

end

end A378978.P14446462380616579900

namespace A378978

/-- `Δ[n²]-A346880(n+1)` -/
def P14446462380616579900.Spec : Prop :=
  ∀ n, P14446462380616579900.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P6317694596990616816

`n+1-A296955(2*(n+1))`
-/

namespace A378978.P6317694596990616816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A296955 (2 * (n + 1))

end

end A378978.P6317694596990616816

namespace A378978

/-- `n+1-A296955(2*(n+1))` -/
def P6317694596990616816.Spec : Prop :=
  ∀ n, P6317694596990616816.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P11548151157274526415

`n+1-A318505(2*(n+1))`
-/

namespace A378978.P11548151157274526415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A318505 (2 * (n + 1))

end

end A378978.P11548151157274526415

namespace A378978

/-- `n+1-A318505(2*(n+1))` -/
def P11548151157274526415.Spec : Prop :=
  ∀ n, P11548151157274526415.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P3451191224643675684

`2*(n+1)-A346878(n+1)`
-/

namespace A378978.P3451191224643675684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A346878 (n + 1)

end

end A378978.P3451191224643675684

namespace A378978

/-- `2*(n+1)-A346878(n+1)` -/
def P3451191224643675684.Spec : Prop :=
  ∀ n, P3451191224643675684.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P3469495599625826465

`A003958(n+1)-A324044(2*(n+1))`
-/

namespace A378978.P3469495599625826465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) - A324044 (2 * (n + 1))

end

end A378978.P3469495599625826465

namespace A378978

/-- `A003958(n+1)-A324044(2*(n+1))` -/
def P3469495599625826465.Spec : Prop :=
  ∀ n, P3469495599625826465.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P8399738516838378688

`A318878(n+1)-A318879(2*(n+1))`
-/

namespace A378978.P8399738516838378688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318878 (n + 1) - A318879 (2 * (n + 1))

end

end A378978.P8399738516838378688

namespace A378978

/-- `A318878(n+1)-A318879(2*(n+1))` -/
def P8399738516838378688.Spec : Prop :=
  ∀ n, P8399738516838378688.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P7473068293065499170

`A008574(n+1)-A000203(2*(n+1))`
-/

namespace A378978.P7473068293065499170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) - A000203 (2 * (n + 1))

end

end A378978.P7473068293065499170

namespace A378978

/-- `A008574(n+1)-A000203(2*(n+1))` -/
def P7473068293065499170.Spec : Prop :=
  ∀ n, P7473068293065499170.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P13885812378028645297

`A008586(n+1)-A000203(2*(n+1))`
-/

namespace A378978.P13885812378028645297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) - A000203 (2 * (n + 1))

end

end A378978.P13885812378028645297

namespace A378978

/-- `A008586(n+1)-A000203(2*(n+1))` -/
def P13885812378028645297.Spec : Prop :=
  ∀ n, P13885812378028645297.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P14442746658903328681

`A117966(A295882(2*(n+1)))`
-/

namespace A378978.P14442746658903328681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A295882 (2 * (n + 1))).toNat

end

end A378978.P14442746658903328681

namespace A378978

/-- `A117966(A295882(2*(n+1)))` -/
def P14442746658903328681.Spec : Prop :=
  ∀ n, P14442746658903328681.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P14941832257106541243

`A294898(2*(n+1))+A000120(n+1)`
-/

namespace A378978.P14941832257106541243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294898 (2 * (n + 1)) + A000120 (n + 1)

end

end A378978.P14941832257106541243

namespace A378978

/-- `A294898(2*(n+1))+A000120(n+1)` -/
def P14941832257106541243.Spec : Prop :=
  ∀ n, P14941832257106541243.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P9164302107061664306

`A120444(Δ[n²])+1`
-/

namespace A378978.P9164302107061664306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120444 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A378978.P9164302107061664306

namespace A378978

/-- `A120444(Δ[n²])+1` -/
def P9164302107061664306.Spec : Prop :=
  ∀ n, P9164302107061664306.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P9266853246030828211

`A235796(2*(n+1))+1`
-/

namespace A378978.P9266853246030828211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (2 * (n + 1)) + 1

end

end A378978.P9266853246030828211

namespace A378978

/-- `A235796(2*(n+1))+1` -/
def P9266853246030828211.Spec : Prop :=
  ∀ n, P9266853246030828211.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P14630729886023724021

`A157449(2*(n+1))-1`
-/

namespace A378978.P14630729886023724021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157449 (2 * (n + 1)) - 1

end

end A378978.P14630729886023724021

namespace A378978

/-- `A157449(2*(n+1))-1` -/
def P14630729886023724021.Spec : Prop :=
  ∀ n, P14630729886023724021.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P12529388151317392911

`1-A237588(2*(n+1))`
-/

namespace A378978.P12529388151317392911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A237588 (2 * (n + 1))

end

end A378978.P12529388151317392911

namespace A378978

/-- `1-A237588(2*(n+1))` -/
def P12529388151317392911.Spec : Prop :=
  ∀ n, P12529388151317392911.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P9280500719280685710

`A281626(2*(n+1))-2`
-/

namespace A378978.P9280500719280685710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281626 (2 * (n + 1)) - 2

end

end A378978.P9280500719280685710

namespace A378978

/-- `A281626(2*(n+1))-2` -/
def P9280500719280685710.Spec : Prop :=
  ∀ n, P9280500719280685710.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P8549082455645999382

`A005408(n)-A048050(2*(n+1))`
-/

namespace A378978.P8549082455645999382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A048050 (2 * (n + 1))

end

end A378978.P8549082455645999382

namespace A378978

/-- `A005408(n)-A048050(2*(n+1))` -/
def P8549082455645999382.Spec : Prop :=
  ∀ n, P8549082455645999382.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P8116409198381579788

`A004277(n+1)-A001065(2*(n+1))`
-/

namespace A378978.P8116409198381579788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) - A001065 (2 * (n + 1))

end

end A378978.P8116409198381579788

namespace A378978

/-- `A004277(n+1)-A001065(2*(n+1))` -/
def P8116409198381579788.Spec : Prop :=
  ∀ n, P8116409198381579788.a n = A378978 (n + 1)

end A378978

/-! ## A378978.P10970459747704755884

`A005843(n+1)-A001065(2*(n+1))`
-/

namespace A378978.P10970459747704755884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A001065 (2 * (n + 1))

end

end A378978.P10970459747704755884

namespace A378978

/-- `A005843(n+1)-A001065(2*(n+1))` -/
def P10970459747704755884.Spec : Prop :=
  ∀ n, P10970459747704755884.a n = A378978 (n + 1)

end A378978

/-!
# A378979: Square array A(n, k) = 2*A246278(n, k) - sigma(A246278(n, k)), read by falling antidiagonals. Deficiency applied to the prime shift array.

The programs for A378979, there is no canonical definition to state claims against.
-/

/-! ## A378979.P15807321269611857847

`A372563(n+1)-A372562(n+1)`
-/

namespace A378979.P15807321269611857847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372563 (n + 1) - A372562 (n + 1)

end

end A378979.P15807321269611857847

/-! ## A378979.P12693058161940073123

`(A388284(n+1)-A341606(n+1))*A355925(n+1)`
-/

namespace A378979.P12693058161940073123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A388284 (n + 1) - A341606 (n + 1)) * A355925 (n + 1)

end

end A378979.P12693058161940073123

/-! ## A378979.P2796448653579542573

`A388285(n+1)-A341606(n+1)*A355925(n+1)`
-/

namespace A378979.P2796448653579542573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388285 (n + 1) - A341606 (n + 1) * A355925 (n + 1)

end

end A378979.P2796448653579542573

/-! ## A378979.P15543265725414959268

`A388285(n+1)-A246278(n+2)`
-/

namespace A378979.P15543265725414959268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388285 (n + 1) - A246278 (n + 2)

end

end A378979.P15543265725414959268

/-! ## A378979.P3285708365854620394

`2*A246278(n+2)-A355927(n+1)`
-/

namespace A378979.P3285708365854620394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246278 (n + 2) - A355927 (n + 1)

end

end A378979.P3285708365854620394

/-! ## A378979.P1412926875446768622

`A355925(n+1)*A388284(n+1)-A246278(n+2)`
-/

namespace A378979.P1412926875446768622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355925 (n + 1) * A388284 (n + 1) - A246278 (n + 2)

end

end A378979.P1412926875446768622

/-! ## A378979.P15145652231232024594

`A324055(A253551(n+1))`
-/

namespace A378979.P15145652231232024594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324055 (A253551 (n + 1)).toNat

end

end A378979.P15145652231232024594

/-! ## A378979.P7508927190808710010

`A033879(A246278(n+2))`
-/

namespace A378979.P7508927190808710010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A246278 (n + 2)).toNat

end

end A378979.P7508927190808710010

/-! ## A378979.P16670170339889508250

`A033879(A246275(n+1)+1)`
-/

namespace A378979.P16670170339889508250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A246275 (n + 1) + 1).toNat

end

end A378979.P16670170339889508250

/-! ## A378979.P12688543576475004137

`∑{d}[A246278(n+2), A083254(#)]`
-/

namespace A378979.P12688543576475004137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A083254 d

end

end A378979.P12688543576475004137

/-!
# A378980: Numbers k such that (A003961(k)-2*k) divides (A003961(k)-sigma(k)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

The programs for A378980, there is no canonical definition to state claims against.
-/

/-! ## A378980.P1515064677199068930

`eq[0, A378981(n+1)]+1`
-/

namespace A378980.P1515064677199068930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378981 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A378980.P1515064677199068930

/-! ## A378980.P47296400981398901

`eq[A000007(n), A378981(A028310(n))]`
-/

namespace A378980.P47296400981398901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378981 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378980.P47296400981398901

/-! ## A378980.P3178528849118103000

`eq[A029395(n), A240873(n)]`
-/

namespace A378980.P3178528849118103000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029395 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378980.P3178528849118103000

/-!
# A378981: a(n) = (A003961(n)-sigma(n)) mod (A003961(n)-2*n), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

The programs for A378981, the canonical program `A378981.P16042293926672760839` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378981 has offset 1).

The definition of A378981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378981.P16042293926672760839

`A286385(n+1)%A252748(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378981

/-- `A286385(n+1)%A252748(n+1)` -/
def P16042293926672760839.Spec : Prop :=
  ∀ n, P16042293926672760839.a n = A378981 (n + 1)

theorem P16042293926672760839.correct : P16042293926672760839.Spec := by
  intro n
  simp only [A378981, Nat.add_sub_cancel]

end A378981

/-! ## A378981.P56071877577764913

`(A336853(n+1)-A001065(n+1))%∑{d}[n+1, A349754(#)]`
-/

namespace A378981.P56071877577764913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336853 (n + 1) - A001065 (n + 1)) (∑ d ∈ Nat.divisors (f1 n), A349754 d)

end

end A378981.P56071877577764913

namespace A378981

/-- `(A336853(n+1)-A001065(n+1))%∑{d}[n+1, A349754(#)]` -/
def P56071877577764913.Spec : Prop :=
  ∀ n, P56071877577764913.a n = A378981 (n + 1)

end A378981

/-!
# A378983: Numbers k such that (A003961(k)-2*k) divides (A003961(k)-(1+sigma(k))), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

The programs for A378983, there is no canonical definition to state claims against.
-/

/-! ## A378983.P7472048348520994614

`lt[A378982(n+1), 1]+1`
-/

namespace A378983.P7472048348520994614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A378983.P7472048348520994614

/-!
# A378984: Squares in A378769.

The programs for A378984, there is no canonical definition to state claims against.
-/

/-! ## A378984.P3154994658693080726

`A378430(n+1)²`
-/

namespace A378984.P3154994658693080726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378430 (n + 1) ^ 2

end

end A378984.P3154994658693080726

/-! ## A378984.P7056267652734472996

`∩[A036785(n+1), A375055(n+1)]²`
-/

namespace A378984.P7056267652734472996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378984.P7056267652734472996

/-! ## A378984.P12344886155051635548

`∩[A000977(n+1), A036785(n+1)]²`
-/

namespace A378984.P12344886155051635548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A378984.P12344886155051635548

/-! ## A378984.P16557190826869971047

`∩[A062320(n+1), A378769(n+1)]`
-/

namespace A378984.P16557190826869971047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378984.P16557190826869971047

/-! ## A378984.P1689539796951820460

`∩[A321070(n+1), A378769(n+1)]`
-/

namespace A378984.P1689539796951820460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378984.P1689539796951820460

/-! ## A378984.P15046000058758515699

`∩[A378769(n+1), A378900(n+1)]`
-/

namespace A378984.P15046000058758515699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378984.P15046000058758515699

/-! ## A378984.P15930673228445315678

`∩[A378769(n+1), A380857(n+1)]`
-/

namespace A378984.P15930673228445315678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378984.P15930673228445315678

/-! ## A378984.P13265514097884106686

`∩[A378900(n+1), A395197(n+1)]`
-/

namespace A378984.P13265514097884106686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378984.P13265514097884106686

/-!
# A378985: Number of iterations of x -> A003961(x) needed before the result is deficient, when starting from x = 2*n.

The programs for A378985, the canonical program `A378985.P6789501297804054790` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378985 has offset 1).

The definition of A378985 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336835, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378985.P6789501297804054790

`A336835(2*(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378985

/-- `A336835(2*(n+1))` -/
def P6789501297804054790.Spec : Prop :=
  ∀ n, P6789501297804054790.a n = A378985 (n + 1)

theorem P6789501297804054790.correct : P6789501297804054790.Spec := by
  intro n
  simp only [A378985, Nat.add_sub_cancel]

end A378985

/-! ## A378985.P4451665941640659217

`A108775(2*(n+1))+A057428(A000124(n))`
-/

namespace A378985.P4451665941640659217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (2 * (n + 1)) + A057428 (A000124 n).toNat

end

end A378985.P4451665941640659217

namespace A378985

/-- `A108775(2*(n+1))+A057428(A000124(n))` -/
def P4451665941640659217.Spec : Prop :=
  ∀ n, P4451665941640659217.a n = A378985 (n + 1)

end A378985

/-! ## A378985.P237102530494522667

`A108775(2*(n+1))-A038548(A105041(n+1)+1)`
-/

namespace A378985.P237102530494522667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (2 * (n + 1)) - A038548 (A105041 (n + 1) + 1).toNat

end

end A378985.P237102530494522667

namespace A378985

/-- `A108775(2*(n+1))-A038548(A105041(n+1)+1)` -/
def P237102530494522667.Spec : Prop :=
  ∀ n, P237102530494522667.a n = A378985 (n + 1)

end A378985

/-! ## A378985.P3052629834761030725

`A108775(2*(n+1))-A087810(A006995(2*(n+2)))`
-/

namespace A378985.P3052629834761030725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (2 * (n + 1)) - A087810 (A006995 (2 * (n + 2))).toNat

end

end A378985.P3052629834761030725

namespace A378985

/-- `A108775(2*(n+1))-A087810(A006995(2*(n+2)))` -/
def P3052629834761030725.Spec : Prop :=
  ∀ n, P3052629834761030725.a n = A378985 (n + 1)

end A378985

/-! ## A378985.P11340568464501322763

`A108775(2*n+2)-A054977(A064665(n+1))`
-/

namespace A378985.P11340568464501322763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (2 * n + 2) - A054977 (A064665 (n + 1)).toNat

end

end A378985.P11340568464501322763

namespace A378985

/-- `A108775(2*n+2)-A054977(A064665(n+1))` -/
def P11340568464501322763.Spec : Prop :=
  ∀ n, P11340568464501322763.a n = A378985 (n + 1)

end A378985

/-! ## A378985.P12043286708275442200

`A108775(2*(n+1))-A087810(A211684(2*n+5))`
-/

namespace A378985.P12043286708275442200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (2 * (n + 1)) - A087810 (A211684 (2 * n + 5)).toNat

end

end A378985.P12043286708275442200

namespace A378985

/-- `A108775(2*(n+1))-A087810(A211684(2*n+5))` -/
def P12043286708275442200.Spec : Prop :=
  ∀ n, P12043286708275442200.a n = A378985 (n + 1)

end A378985

/-! ## A378985.P11114333537298175531

`A108775(2*(n+1))-A345933(A049078(2*n+5))`
-/

namespace A378985.P11114333537298175531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (2 * (n + 1)) - A345933 (A049078 (2 * n + 5)).toNat

end

end A378985.P11114333537298175531

namespace A378985

/-- `A108775(2*(n+1))-A345933(A049078(2*n+5))` -/
def P11114333537298175531.Spec : Prop :=
  ∀ n, P11114333537298175531.a n = A378985 (n + 1)

end A378985

/-! ## A378985.P14351296178643091584

`A108775(2*(n+1))-A108775(A048519(2*n+5))`
-/

namespace A378985.P14351296178643091584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (2 * (n + 1)) - A108775 (A048519 (2 * n + 5)).toNat

end

end A378985.P14351296178643091584

namespace A378985

/-- `A108775(2*(n+1))-A108775(A048519(2*n+5))` -/
def P14351296178643091584.Spec : Prop :=
  ∀ n, P14351296178643091584.a n = A378985 (n + 1)

end A378985

/-! ## A378985.P16405037869192836501

`A108775(2*n+2)-A344606(A006530(n+1))`
-/

namespace A378985.P16405037869192836501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (2 * n + 2) - A344606 (A006530 (n + 1)).toNat

end

end A378985.P16405037869192836501

namespace A378985

/-- `A108775(2*n+2)-A344606(A006530(n+1))` -/
def P16405037869192836501.Spec : Prop :=
  ∀ n, P16405037869192836501.a n = A378985 (n + 1)

end A378985

/-! ## A378985.P10132172985174588872

`A108775(2*(n+1))-A057427(A064665(2*n+5))`
-/

namespace A378985.P10132172985174588872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (2 * (n + 1)) - A057427 (A064665 (2 * n + 5)).toNat

end

end A378985.P10132172985174588872

namespace A378985

/-- `A108775(2*(n+1))-A057427(A064665(2*n+5))` -/
def P10132172985174588872.Spec : Prop :=
  ∀ n, P10132172985174588872.a n = A378985 (n + 1)

end A378985

/-!
# A378986: a(n) = 2*phi(2*n) - 2*n, where phi is Euler totient function.

The programs for A378986, the canonical program `A378986.P11070086807176810028` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378986 has offset 1).

The definition of A378986 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378986.P11070086807176810028

`2*A000010(2*(n+1))-2*(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A378986

/-- `2*A000010(2*(n+1))-2*(n+1)` -/
def P11070086807176810028.Spec : Prop :=
  ∀ n, P11070086807176810028.a n = A378986 (n + 1)

theorem P11070086807176810028.correct : P11070086807176810028.Spec := by
  intro n
  simp only [A378986, Nat.add_sub_cancel]

end A378986

/-! ## A378986.P12797158148168921672

`A297114(2*(n+1))`
-/

namespace A378986.P12797158148168921672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (2 * (n + 1))

end

end A378986.P12797158148168921672

namespace A378986

/-- `A297114(2*(n+1))` -/
def P12797158148168921672.Spec : Prop :=
  ∀ n, P12797158148168921672.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P3542827374024052154

`A083254(2*(n+1))`
-/

namespace A378986.P3542827374024052154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (2 * (n + 1))

end

end A378986.P3542827374024052154

namespace A378986

/-- `A083254(2*(n+1))` -/
def P3542827374024052154.Spec : Prop :=
  ∀ n, P3542827374024052154.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P5506666328362070688

`2*(n+1-A053196(n+1))`
-/

namespace A378986.P5506666328362070688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - A053196 (n + 1))

end

end A378986.P5506666328362070688

namespace A378986

/-- `2*(n+1-A053196(n+1))` -/
def P5506666328362070688.Spec : Prop :=
  ∀ n, P5506666328362070688.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P6929777570764261000

`2*(A062570(n+1)-(n+1))`
-/

namespace A378986.P6929777570764261000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A062570 (n + 1) - (n + 1 : ℤ))

end

end A378986.P6929777570764261000

namespace A378986

/-- `2*(A062570(n+1)-(n+1))` -/
def P6929777570764261000.Spec : Prop :=
  ∀ n, P6929777570764261000.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P7102707593981778890

`1-A005408(A176095(n+1))`
-/

namespace A378986.P7102707593981778890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005408 (A176095 (n + 1)).toNat

end

end A378986.P7102707593981778890

namespace A378986

/-- `1-A005408(A176095(n+1))` -/
def P7102707593981778890.Spec : Prop :=
  ∀ n, P7102707593981778890.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P15356670382478245395

`A113679(n)*A176095(n+1)`
-/

namespace A378986.P15356670382478245395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 n * A176095 (n + 1)

end

end A378986.P15356670382478245395

namespace A378986

/-- `A113679(n)*A176095(n+1)` -/
def P15356670382478245395.Spec : Prop :=
  ∀ n, P15356670382478245395.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P8502263819833992747

`A062570(n+1)-A053196(n+1)`
-/

namespace A378986.P8502263819833992747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) - A053196 (n + 1)

end

end A378986.P8502263819833992747

namespace A378986

/-- `A062570(n+1)-A053196(n+1)` -/
def P8502263819833992747.Spec : Prop :=
  ∀ n, P8502263819833992747.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P10085539277040457243

`A033879(2*(n+1))-A297159(2*(n+1))`
-/

namespace A378986.P10085539277040457243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (2 * (n + 1)) - A297159 (2 * (n + 1))

end

end A378986.P10085539277040457243

namespace A378986

/-- `A033879(2*(n+1))-A297159(2*(n+1))` -/
def P10085539277040457243.Spec : Prop :=
  ∀ n, P10085539277040457243.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P15451757583530167257

`A117966(A297154(2*(n+1)))`
-/

namespace A378986.P15451757583530167257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A297154 (2 * (n + 1))).toNat

end

end A378986.P15451757583530167257

namespace A378986

/-- `A117966(A297154(2*(n+1)))` -/
def P15451757583530167257.Spec : Prop :=
  ∀ n, P15451757583530167257.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P12209559171377521543

`A005187(n+1)-A300244(2*(n+1))`
-/

namespace A378986.P12209559171377521543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - A300244 (2 * (n + 1))

end

end A378986.P12209559171377521543

namespace A378986

/-- `A005187(n+1)-A300244(2*(n+1))` -/
def P12209559171377521543.Spec : Prop :=
  ∀ n, P12209559171377521543.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P5327290680218012855

`A065620(A297153(2*(n+1)))`
-/

namespace A378986.P5327290680218012855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A297153 (2 * (n + 1))).toNat

end

end A378986.P5327290680218012855

namespace A378986

/-- `A065620(A297153(2*(n+1)))` -/
def P5327290680218012855.Spec : Prop :=
  ∀ n, P5327290680218012855.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P2992996033128061383

`A074057(2*(n+2))+1`
-/

namespace A378986.P2992996033128061383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074057 (2 * (n + 2)) + 1

end

end A378986.P2992996033128061383

namespace A378986

/-- `A074057(2*(n+2))+1` -/
def P2992996033128061383.Spec : Prop :=
  ∀ n, P2992996033128061383.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P9597385198516995176

`A140434(2*(n+1))-A005843(n+1)`
-/

namespace A378986.P9597385198516995176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (2 * (n + 1)) - A005843 (n + 1)

end

end A378986.P9597385198516995176

namespace A378986

/-- `A140434(2*(n+1))-A005843(n+1)` -/
def P9597385198516995176.Spec : Prop :=
  ∀ n, P9597385198516995176.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P7026725403243475281

`A114285(2*n+1)+A062570(2*(n+1))`
-/

namespace A378986.P7026725403243475281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114285 (2 * n + 1) + A062570 (2 * (n + 1))

end

end A378986.P7026725403243475281

namespace A378986

/-- `A114285(2*n+1)+A062570(2*(n+1))` -/
def P7026725403243475281.Spec : Prop :=
  ∀ n, P7026725403243475281.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P421973943442947806

`A000010(2*(n+1))-A051953(2*(n+1))`
-/

namespace A378986.P421973943442947806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) - A051953 (2 * (n + 1))

end

end A378986.P421973943442947806

namespace A378986

/-- `A000010(2*(n+1))-A051953(2*(n+1))` -/
def P421973943442947806.Spec : Prop :=
  ∀ n, P421973943442947806.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P11445534750631064920

`A079530(2*(n+1))-A079532(2*(n+1))`
-/

namespace A378986.P11445534750631064920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079530 (2 * (n + 1)) - A079532 (2 * (n + 1))

end

end A378986.P11445534750631064920

namespace A378986

/-- `A079530(2*(n+1))-A079532(2*(n+1))` -/
def P11445534750631064920.Spec : Prop :=
  ∀ n, P11445534750631064920.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P17026166683249983722

`A179179(2*(n+1))-A057860(2*(n+1))`
-/

namespace A378986.P17026166683249983722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179179 (2 * (n + 1)) - A057860 (2 * (n + 1))

end

end A378986.P17026166683249983722

namespace A378986

/-- `A179179(2*(n+1))-A057860(2*(n+1))` -/
def P17026166683249983722.Spec : Prop :=
  ∀ n, P17026166683249983722.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P3678653256195151349

`A209187(2*(n+1))-A051612(2*(n+1))`
-/

namespace A378986.P3678653256195151349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (2 * (n + 1)) - A051612 (2 * (n + 1))

end

end A378986.P3678653256195151349

namespace A378986

/-- `A209187(2*(n+1))-A051612(2*(n+1))` -/
def P3678653256195151349.Spec : Prop :=
  ∀ n, P3678653256195151349.a n = A378986 (n + 1)

end A378986

/-! ## A378986.P14719270019201476309

`A109606(2*(n+1))-A219428(2*(n+1))`
-/

namespace A378986.P14719270019201476309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (2 * (n + 1)) - A219428 (2 * (n + 1))

end

end A378986.P14719270019201476309

namespace A378986

/-- `A109606(2*(n+1))-A219428(2*(n+1))` -/
def P14719270019201476309.Spec : Prop :=
  ∀ n, P14719270019201476309.a n = A378986 (n + 1)

end A378986

/-!
# A378987: Odd bisection of A083254, where A083254(n) = 2*phi(n)-n.

The programs for A378987, the canonical program `A378987.P6480789479262422065` is in `Seq.B007.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378987 has offset 1).

The definition of A378987 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378987.P4276105875796831509

`A337544(A064216(n+1))`
-/

namespace A378987.P4276105875796831509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337544 (A064216 (n + 1)).toNat

end

end A378987.P4276105875796831509

namespace A378987

/-- `A337544(A064216(n+1))` -/
def P4276105875796831509.Spec : Prop :=
  ∀ n, P4276105875796831509.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P6480789479262422065

`A083254(2*n+1)`

The canonical program, it is in `Seq.B007.C002`.
-/

namespace A378987

/-- `A083254(2*n+1)` -/
def P6480789479262422065.Spec : Prop :=
  ∀ n, P6480789479262422065.a n = A378987 (n + 1)

theorem P6480789479262422065.correct : P6480789479262422065.Spec := by
  intro n
  simp only [A378987, Nat.add_sub_cancel]

end A378987

/-! ## A378987.P13500726981328736406

`A378986(2*n+1)+2*n+1`
-/

namespace A378987.P13500726981328736406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378986 (2 * n + 1) + (2 * n + 1 : ℤ)

end

end A378987.P13500726981328736406

namespace A378987

/-- `A378986(2*n+1)+2*n+1` -/
def P13500726981328736406.Spec : Prop :=
  ∀ n, P13500726981328736406.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P4048464398165100353

`2*A037225(n)-A005408(n)`
-/

namespace A378987.P4048464398165100353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037225 n - A005408 n

end

end A378987.P4048464398165100353

namespace A378987

/-- `2*A037225(n)-A005408(n)` -/
def P4048464398165100353.Spec : Prop :=
  ∀ n, P4048464398165100353.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P15075160616078611150

`A117966(A297154(2*n+1))`
-/

namespace A378987.P15075160616078611150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A297154 (2 * n + 1)).toNat

end

end A378987.P15075160616078611150

namespace A378987

/-- `A117966(A297154(2*n+1))` -/
def P15075160616078611150.Spec : Prop :=
  ∀ n, P15075160616078611150.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P16358295713937601747

`A037225(n)-A176095(2*n+1)`
-/

namespace A378987.P16358295713937601747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n - A176095 (2 * n + 1)

end

end A378987.P16358295713937601747

namespace A378987

/-- `A037225(n)-A176095(2*n+1)` -/
def P16358295713937601747.Spec : Prop :=
  ∀ n, P16358295713937601747.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P4574324496433075060

`A297116(n+1)+A297114(2*n+1)`
-/

namespace A378987.P4574324496433075060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297116 (n + 1) + A297114 (2 * n + 1)

end

end A378987.P4574324496433075060

namespace A378987

/-- `A297116(n+1)+A297114(2*n+1)` -/
def P4574324496433075060.Spec : Prop :=
  ∀ n, P4574324496433075060.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P10883037177346867693

`A297115(2*n+1)+A297114(2*n+1)`
-/

namespace A378987.P10883037177346867693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297115 (2 * n + 1) + A297114 (2 * n + 1)

end

end A378987.P10883037177346867693

namespace A378987

/-- `A297115(2*n+1)+A297114(2*n+1)` -/
def P10883037177346867693.Spec : Prop :=
  ∀ n, P10883037177346867693.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P7685292593481931203

`A074057(2*n+3)+1`
-/

namespace A378987.P7685292593481931203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074057 (2 * n + 3) + 1

end

end A378987.P7685292593481931203

namespace A378987

/-- `A074057(2*n+3)+1` -/
def P7685292593481931203.Spec : Prop :=
  ∀ n, P7685292593481931203.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P14767226416391986645

`A037225(n)-A051953(2*n+1)`
-/

namespace A378987.P14767226416391986645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n - A051953 (2 * n + 1)

end

end A378987.P14767226416391986645

namespace A378987

/-- `A037225(n)-A051953(2*n+1)` -/
def P14767226416391986645.Spec : Prop :=
  ∀ n, P14767226416391986645.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P9907922332017199333

`A000010(2*n+1)-A051953(2*n+1)`
-/

namespace A378987.P9907922332017199333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1) - A051953 (2 * n + 1)

end

end A378987.P9907922332017199333

namespace A378987

/-- `A000010(2*n+1)-A051953(2*n+1)` -/
def P9907922332017199333.Spec : Prop :=
  ∀ n, P9907922332017199333.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P14105755318027619722

`A079530(2*n+1)-A079532(2*n+1)`
-/

namespace A378987.P14105755318027619722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079530 (2 * n + 1) - A079532 (2 * n + 1)

end

end A378987.P14105755318027619722

namespace A378987

/-- `A079530(2*n+1)-A079532(2*n+1)` -/
def P14105755318027619722.Spec : Prop :=
  ∀ n, P14105755318027619722.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P6525889149170572225

`A179179(2*n+1)-A057860(2*n+1)`
-/

namespace A378987.P6525889149170572225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179179 (2 * n + 1) - A057860 (2 * n + 1)

end

end A378987.P6525889149170572225

namespace A378987

/-- `A179179(2*n+1)-A057860(2*n+1)` -/
def P6525889149170572225.Spec : Prop :=
  ∀ n, P6525889149170572225.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P9102024176770524985

`A209187(2*n+1)-A051612(2*n+1)`
-/

namespace A378987.P9102024176770524985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (2 * n + 1) - A051612 (2 * n + 1)

end

end A378987.P9102024176770524985

namespace A378987

/-- `A209187(2*n+1)-A051612(2*n+1)` -/
def P9102024176770524985.Spec : Prop :=
  ∀ n, P9102024176770524985.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P705515116529919304

`A109606(2*n+1)-A219428(2*n+1)`
-/

namespace A378987.P705515116529919304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (2 * n + 1) - A219428 (2 * n + 1)

end

end A378987.P705515116529919304

namespace A378987

/-- `A109606(2*n+1)-A219428(2*n+1)` -/
def P705515116529919304.Spec : Prop :=
  ∀ n, P705515116529919304.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P5605209080017831266

`A065620(A297153(2*n+1))`
-/

namespace A378987.P5605209080017831266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A297153 (2 * n + 1)).toNat

end

end A378987.P5605209080017831266

namespace A378987

/-- `A065620(A297153(2*n+1))` -/
def P5605209080017831266.Spec : Prop :=
  ∀ n, P5605209080017831266.a n = A378987 (n + 1)

end A378987

/-! ## A378987.P9406188411584967875

`A324103(A005940(2*(n+1)))`
-/

namespace A378987.P9406188411584967875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324103 (A005940 (2 * (n + 1))).toNat

end

end A378987.P9406188411584967875

namespace A378987

/-- `A324103(A005940(2*(n+1)))` -/
def P9406188411584967875.Spec : Prop :=
  ∀ n, P9406188411584967875.a n = A378987 (n + 1)

end A378987

/-!
# A378988: a(n) = 2*n XOR 1+sigma(n), where XOR is bitwise-xor, A003987.

The programs for A378988, the canonical program `A378988.P10422168774489224916` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378988 has offset 1).

The definition of A378988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378988.P10422168774489224916

`xor(∑{d}[n+1, #]+1, 2*(n+1))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A378988

/-- `xor(∑{d}[n+1, #]+1, 2*(n+1))` -/
def P10422168774489224916.Spec : Prop :=
  ∀ n, (P10422168774489224916.a n : ℤ) = A378988 (n + 1)

theorem P10422168774489224916.correct : P10422168774489224916.Spec := by
  intro n
  simp only [A378988, Nat.add_sub_cancel]

end A378988

/-! ## A378988.P11324765085835648142

`xor(A005408(n)+1, ∑{d}[n+1, #]+1)`
-/

namespace A378988.P11324765085835648142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005408 n + 1) ((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℤ)

end

end A378988.P11324765085835648142

namespace A378988

/-- `xor(A005408(n)+1, ∑{d}[n+1, #]+1)` -/
def P11324765085835648142.Spec : Prop :=
  ∀ n, P11324765085835648142.a n = A378988 (n + 1)

end A378988

/-! ## A378988.P8369895556720102120

`xor(A000203(n+1)+1, A005843(n+1))`
-/

namespace A378988.P8369895556720102120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000203 (n + 1) + 1) (A005843 (n + 1))

end

end A378988.P8369895556720102120

namespace A378988

/-- `xor(A000203(n+1)+1, A005843(n+1))` -/
def P8369895556720102120.Spec : Prop :=
  ∀ n, P8369895556720102120.a n = A378988 (n + 1)

end A378988

/-! ## A378988.P13603580595923756921

`xor(2*(n+1), A000027(A000203(n+1)+1))`
-/

namespace A378988.P13603580595923756921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * (n + 1) : ℤ) (A000027 (A000203 (n + 1) + 1).toNat)

end

end A378988.P13603580595923756921

namespace A378988

/-- `xor(2*(n+1), A000027(A000203(n+1)+1))` -/
def P13603580595923756921.Spec : Prop :=
  ∀ n, P13603580595923756921.a n = A378988 (n + 1)

end A378988

/-! ## A378988.P13148591132087268313

`xor(A020725(2*n+1), A020725(A000203(n+1)))`
-/

namespace A378988.P13148591132087268313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020725 (2 * n + 1)) (A020725 (A000203 (n + 1)).toNat)

end

end A378988.P13148591132087268313

namespace A378988

/-- `xor(A020725(2*n+1), A020725(A000203(n+1)))` -/
def P13148591132087268313.Spec : Prop :=
  ∀ n, P13148591132087268313.a n = A378988 (n + 1)

end A378988

/-!
# A378989: Dirichlet inverse of the Möbius transform of binary weight of n.

The programs for A378989, there is no canonical definition to state claims against.
-/

/-! ## A378989.P17364784736515591513

`∑{d}[n+1, A378990(#)]`
-/

namespace A378989.P17364784736515591513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378990 d

end

end A378989.P17364784736515591513

/-! ## A378989.P15782186322285346511

`∑{d}[n+1, A323912(#)*A379107((n+1)/#)]`
-/

namespace A378989.P15782186322285346511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323912 d * A379107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378989.P15782186322285346511

/-! ## A378989.P18079036325333035971

`A111616(A000404(2*n+1))*A166698(n+1)`
-/

namespace A378989.P18079036325333035971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 (A000404 (2 * n + 1)).toNat * A166698 (n + 1)

end

end A378989.P18079036325333035971

/-! ## A378989.P3637563101222491951

`(and(1, n)-1)^∑{e}[n+1, #]*A133780(A010070(n+1))`
-/

namespace A378989.P3637563101222491951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) - 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A133780 (A010070 (n + 1)).toNat

end

end A378989.P3637563101222491951

/-! ## A378989.P10257054779379174416

`A055642(A001405(n+1))-A360679(n+1)`
-/

namespace A378989.P10257054779379174416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A001405 (n + 1)).toNat - A360679 (n + 1)

end

end A378989.P10257054779379174416

/-!
# A378990: Dirichlet inverse of the binary weight of n (A000120).

The programs for A378990, there is no canonical definition to state claims against.
-/

/-! ## A378990.P2100709399505022507

`∑{d}[n+1, A008683(#)*A378989((n+1)/#)]`
-/

namespace A378990.P2100709399505022507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378990.P2100709399505022507

/-! ## A378990.P2545145638136488188

`∑{d}[n+1, A323910(#)*A379107((n+1)/#)]`
-/

namespace A378990.P2545145638136488188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d * A379107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378990.P2545145638136488188

/-! ## A378990.P10944831881166652685

`A001511(A001405(n))*A358839(n+1)`
-/

namespace A378990.P10944831881166652685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001405 n).toNat * A358839 (n + 1)

end

end A378990.P10944831881166652685

/-! ## A378990.P13694819587303260881

`A332292(A000217(n))*A358839(n+1)`
-/

namespace A378990.P13694819587303260881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332292 (A000217 n).toNat * A358839 (n + 1)

end

end A378990.P13694819587303260881

/-!
# A378991: Dirichlet inverse of the Möbius transform of A005187, where A005187(n) = 2*n - (number of 1's in binary representation of n).

The programs for A378991, there is no canonical definition to state claims against.
-/

/-! ## A378991.P8870767644676907196

`∑{d}[n+1, A346237(#)]`
-/

namespace A378991.P8870767644676907196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346237 d

end

end A378991.P8870767644676907196

/-! ## A378991.P17807056542250677040

`∑{d}[n+1, A055615(#)*A378757((n+1)/#)]`
-/

namespace A378991.P17807056542250677040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A378757 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378991.P17807056542250677040

/-!
# A378992: a(n) = A011371(n) - A048881(n); The exponent of the highest power of 2 dividing the n-th factorial minus the exponent of the highest power of 2 dividing n-th Catalan number.

The programs for A378992, the canonical program `A378992.P17019904258361970119` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378992 has offset 0).

The definition of A378992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378992.P2916502783241144509

`A050605(n-1)+a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A378992.P2916502783241144509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A050605 (n - 1) + a (n - 1)

end

end A378992.P2916502783241144509

namespace A378992

/-- `A050605(n-1)+a(n-1)` -/
def P2916502783241144509.Spec : Prop :=
  ∀ n, P2916502783241144509.a n = A378992 n

end A378992

/-! ## A378992.P17019904258361970119

`A011371(n)-A048881(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A378992

/-- `A011371(n)-A048881(n)` -/
def P17019904258361970119.Spec : Prop :=
  ∀ n, P17019904258361970119.a n = A378992 n

theorem P17019904258361970119.correct : P17019904258361970119.Spec := by
  intro n
  simp only [A378992]

end A378992

/-! ## A378992.P1161235861182314341

`a(n-1)+val(∑[n], 2)` with `a(0)=0`
-/

namespace A378992.P1161235861182314341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A378992.P1161235861182314341

namespace A378992

/-- `a(n-1)+val(∑[n], 2)` -/
def P1161235861182314341.Spec : Prop :=
  ∀ n, (P1161235861182314341.a n : ℤ) = A378992 n

end A378992

/-! ## A378992.P7149085747182400560

`∑[A136480(n)-1]`
-/

namespace A378992.P7149085747182400560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378992.P7149085747182400560

namespace A378992

/-- `∑[A136480(n)-1]` -/
def P7149085747182400560.Spec : Prop :=
  ∀ n, P7149085747182400560.a n = A378992 n

end A378992

/-! ## A378992.P7439019206075495912

`∑[A050605(abs(1-n))]`
-/

namespace A378992.P7439019206075495912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378992.P7439019206075495912

namespace A378992

/-- `∑[A050605(abs(1-n))]` -/
def P7439019206075495912.Spec : Prop :=
  ∀ n, P7439019206075495912.a n = A378992 n

end A378992

/-! ## A378992.P9144046578056549409

`A283208(n)-A092391(n)`
-/

namespace A378992.P9144046578056549409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283208 n - A092391 n

end

end A378992.P9144046578056549409

namespace A378992

/-- `A283208(n)-A092391(n)` -/
def P9144046578056549409.Spec : Prop :=
  ∀ n, P9144046578056549409.a n = A378992 n

end A378992

/-! ## A378992.P17398819249342521435

`∑[A001511(A065033(n))-1]`
-/

namespace A378992.P17398819249342521435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A065033 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378992.P17398819249342521435

namespace A378992

/-- `∑[A001511(A065033(n))-1]` -/
def P17398819249342521435.Spec : Prop :=
  ∀ n, P17398819249342521435.a n = A378992 n

end A378992

/-! ## A378992.P13906653573166851172

`∑[A050605(n)]-A050605(n)`
-/

namespace A378992.P13906653573166851172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A050605 n

end

end A378992.P13906653573166851172

namespace A378992

/-- `∑[A050605(n)]-A050605(n)` -/
def P13906653573166851172.Spec : Prop :=
  ∀ n, P13906653573166851172.a n = A378992 n

end A378992

/-! ## A378992.P5938033280335836072

`A011371(n+1)-A000120(n)`
-/

namespace A378992.P5938033280335836072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) - A000120 n

end

end A378992.P5938033280335836072

namespace A378992

/-- `A011371(n+1)-A000120(n)` -/
def P5938033280335836072.Spec : Prop :=
  ∀ n, P5938033280335836072.a n = A378992 n

end A378992

/-! ## A378992.P12074277246493275801

`n-(A048881(n)+A000120(n))`
-/

namespace A378992.P12074277246493275801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A048881 n + A000120 n)

end

end A378992.P12074277246493275801

namespace A378992

/-- `n-(A048881(n)+A000120(n))` -/
def P12074277246493275801.Spec : Prop :=
  ∀ n, P12074277246493275801.a n = A378992 n

end A378992

/-! ## A378992.P13335414028209550067

`A011371(n+1)-log2(A001316(n))`
-/

namespace A378992.P13335414028209550067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A011371 (n + 1) : ℝ) - Real.logb 2 (A001316 n : ℝ)

end

end A378992.P13335414028209550067

namespace A378992

/-- `A011371(n+1)-log2(A001316(n))` -/
def P13335414028209550067.Spec : Prop :=
  ∀ n, P13335414028209550067.a n = (A378992 n : ℝ)

end A378992

/-! ## A378992.P6732032947550651087

`∑[A007814(n+1)]-A000120(n)`
-/

namespace A378992.P6732032947550651087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000120 n

end

end A378992.P6732032947550651087

namespace A378992

/-- `∑[A007814(n+1)]-A000120(n)` -/
def P6732032947550651087.Spec : Prop :=
  ∀ n, P6732032947550651087.a n = A378992 n

end A378992

/-! ## A378992.P15283218931325517802

`A113474(n+1)-A063787(n+1)`
-/

namespace A378992.P15283218931325517802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113474 (n + 1) - A063787 (n + 1)

end

end A378992.P15283218931325517802

namespace A378992

/-- `A113474(n+1)-A063787(n+1)` -/
def P15283218931325517802.Spec : Prop :=
  ∀ n, P15283218931325517802.a n = A378992 n

end A378992

/-! ## A378992.P6410557557350402692

`n+1-A000120(n)-A000120(n+1)`
-/

namespace A378992.P6410557557350402692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 - A000120 n) - A000120 (n + 1)

end

end A378992.P6410557557350402692

namespace A378992

/-- `n+1-A000120(n)-A000120(n+1)` -/
def P6410557557350402692.Spec : Prop :=
  ∀ n, P6410557557350402692.a n = A378992 n

end A378992

/-! ## A378992.P5025398175753431680

`A011371(n+1)+A073642(n)-A029931(n)`
-/

namespace A378992.P5025398175753431680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) + (A073642 n - A029931 n)

end

end A378992.P5025398175753431680

namespace A378992

/-- `A011371(n+1)+A073642(n)-A029931(n)` -/
def P5025398175753431680.Spec : Prop :=
  ∀ n, P5025398175753431680.a n = A378992 n

end A378992

/-! ## A378992.P3937183074320527299

`A011371(n+1)+A272666(n)-A008588(n)`
-/

namespace A378992.P3937183074320527299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) + (A272666 n - A008588 n)

end

end A378992.P3937183074320527299

namespace A378992

/-- `A011371(n+1)+A272666(n)-A008588(n)` -/
def P3937183074320527299.Spec : Prop :=
  ∀ n, P3937183074320527299.a n = A378992 n

end A378992

/-! ## A378992.P18225601959778901093

`A011371(n+1)-A001222(A278222(n))`
-/

namespace A378992.P18225601959778901093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) - A001222 (A278222 n).toNat

end

end A378992.P18225601959778901093

namespace A378992

/-- `A011371(n+1)-A001222(A278222(n))` -/
def P18225601959778901093.Spec : Prop :=
  ∀ n, P18225601959778901093.a n = A378992 n

end A378992

/-! ## A378992.P15403586423537318503

`∑[log2(gcd(2^n, ∑[n]))]`
-/

namespace A378992.P15403586423537318503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd (2 ^ n) (∑ j ∈ Finset.range (n + 1), f2 j) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378992.P15403586423537318503

namespace A378992

/-- `∑[log2(gcd(2^n, ∑[n]))]` -/
def P15403586423537318503.Spec : Prop :=
  ∀ n, P15403586423537318503.a n = (A378992 n : ℝ)

end A378992

/-! ## A378992.P11805497984679264939

`∑[A007814(A302436(∑[n]))]`
-/

namespace A378992.P11805497984679264939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A302436 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378992.P11805497984679264939

namespace A378992

/-- `∑[A007814(A302436(∑[n]))]` -/
def P11805497984679264939.Spec : Prop :=
  ∀ n, P11805497984679264939.a n = A378992 n

end A378992

/-! ## A378992.P8626969211325017339

`∑[A059781(n²+2)]`
-/

namespace A378992.P8626969211325017339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059781 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378992.P8626969211325017339

namespace A378992

/-- `∑[A059781(n²+2)]` -/
def P8626969211325017339.Spec : Prop :=
  ∀ n, P8626969211325017339.a n = A378992 n

end A378992

/-!
# A378993: a(n) = n - omega(n), where omega = A001221.

The programs for A378993, the canonical program `A378993.P12473165963195423861` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378993 has offset 1).

The definition of A378993 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378993.P12473165963195423861

`n+1-A001221(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A378993

/-- `n+1-A001221(n+1)` -/
def P12473165963195423861.Spec : Prop :=
  ∀ n, P12473165963195423861.a n = A378993 (n + 1)

theorem P12473165963195423861.correct : P12473165963195423861.Spec := by
  intro n
  simp only [A378993, Nat.add_sub_cancel]

end A378993

/-! ## A378993.P2055905981123212586

`n+1-∑{p}[n+1, gcd(n, #)]`
-/

namespace A378993.P2055905981123212586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A378993.P2055905981123212586

namespace A378993

/-- `n+1-∑{p}[n+1, gcd(n, #)]` -/
def P2055905981123212586.Spec : Prop :=
  ∀ n, P2055905981123212586.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P16617699570073627528

`n+1-∑{e}[∏{p}[n+1, #], #]`
-/

namespace A378993.P16617699570073627528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A378993.P16617699570073627528

namespace A378993

/-- `n+1-∑{e}[∏{p}[n+1, #], #]` -/
def P16617699570073627528.Spec : Prop :=
  ∀ n, P16617699570073627528.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P9389045566035597412

`∑{p}[n+1, or(#, -1)]+n+1`
-/

namespace A378993.P9389045566035597412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.lor (p : ℤ) (-1) + (n + 1 : ℤ)

end

end A378993.P9389045566035597412

namespace A378993

/-- `∑{p}[n+1, or(#, -1)]+n+1` -/
def P9389045566035597412.Spec : Prop :=
  ∀ n, P9389045566035597412.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P11998074682536936749

`∑{e}[n+1, or(#, -1)]+n+1`
-/

namespace A378993.P11998074682536936749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.lor (Nat.factorization (f1 n) p : ℤ) (-1) + (n + 1 : ℤ)

end

end A378993.P11998074682536936749

namespace A378993

/-- `∑{e}[n+1, or(#, -1)]+n+1` -/
def P11998074682536936749.Spec : Prop :=
  ∀ n, P11998074682536936749.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P1649679018844164718

`n+1-∑{p}[n+1, ceil(1/#)]`
-/

namespace A378993.P1649679018844164718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉

end

end A378993.P1649679018844164718

namespace A378993

/-- `n+1-∑{p}[n+1, ceil(1/#)]` -/
def P1649679018844164718.Spec : Prop :=
  ∀ n, P1649679018844164718.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P1435226652619117544

`n+1-∑{e}[n+1, ceil(1/#)]`
-/

namespace A378993.P1435226652619117544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉

end

end A378993.P1435226652619117544

namespace A378993

/-- `n+1-∑{e}[n+1, ceil(1/#)]` -/
def P1435226652619117544.Spec : Prop :=
  ∀ n, P1435226652619117544.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P7612782131913259054

`2-A083399(n+1)+n`
-/

namespace A378993.P7612782131913259054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A083399 (n + 1) + (n : ℤ)

end

end A378993.P7612782131913259054

namespace A378993

/-- `2-A083399(n+1)+n` -/
def P7612782131913259054.Spec : Prop :=
  ∀ n, P7612782131913259054.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P10208329711070766818

`or(1, n)-A005087(n+1)`
-/

namespace A378993.P10208329711070766818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - A005087 (n + 1)

end

end A378993.P10208329711070766818

namespace A378993

/-- `or(1, n)-A005087(n+1)` -/
def P10208329711070766818.Spec : Prop :=
  ∀ n, P10208329711070766818.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P3136115595920111797

`2*(n+1)-A229109(n+1)`
-/

namespace A378993.P3136115595920111797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A229109 (n + 1)

end

end A378993.P3136115595920111797

namespace A378993

/-- `2*(n+1)-A229109(n+1)` -/
def P3136115595920111797.Spec : Prop :=
  ∀ n, P3136115595920111797.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P15653093484908919235

`n+1-A328260(n+1)/(n+1)`
-/

namespace A378993.P15653093484908919235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A328260 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A378993.P15653093484908919235

namespace A378993

/-- `n+1-A328260(n+1)/(n+1)` -/
def P15653093484908919235.Spec : Prop :=
  ∀ n, P15653093484908919235.a n = (A378993 (n + 1) : ℚ)

end A378993

/-! ## A378993.P5024511887095110852

`A048272(A034444(n+1))+n`
-/

namespace A378993.P5024511887095110852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A034444 (n + 1)).toNat + (n : ℤ)

end

end A378993.P5024511887095110852

namespace A378993

/-- `A048272(A034444(n+1))+n` -/
def P5024511887095110852.Spec : Prop :=
  ∀ n, P5024511887095110852.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P4440426692444742084

`A351619(n+1)+A004442(n)`
-/

namespace A378993.P4440426692444742084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351619 (n + 1) + A004442 n

end

end A378993.P4440426692444742084

namespace A378993

/-- `A351619(n+1)+A004442(n)` -/
def P4440426692444742084.Spec : Prop :=
  ∀ n, P4440426692444742084.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P10162109878039310080

`A109613(n)-A005087(n+1)`
-/

namespace A378993.P10162109878039310080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - A005087 (n + 1)

end

end A378993.P10162109878039310080

namespace A378993

/-- `A109613(n)-A005087(n+1)` -/
def P10162109878039310080.Spec : Prop :=
  ∀ n, P10162109878039310080.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P11068286137795187991

`A028310(n-A297155(n+1))`
-/

namespace A378993.P11068286137795187991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A297155 (n + 1)).toNat

end

end A378993.P11068286137795187991

namespace A378993

/-- `A028310(n-A297155(n+1))` -/
def P11068286137795187991.Spec : Prop :=
  ∀ n, P11068286137795187991.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P12698259087406542955

`A317529(A034444(n+1)²)+n`
-/

namespace A378993.P12698259087406542955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317529 (A034444 (n + 1) ^ 2).toNat + (n : ℤ)

end

end A378993.P12698259087406542955

namespace A378993

/-- `A317529(A034444(n+1)²)+n` -/
def P12698259087406542955.Spec : Prop :=
  ∀ n, P12698259087406542955.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P10613741532202432744

`A057860(n+1)+A000010(n+1)`
-/

namespace A378993.P10613741532202432744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057860 (n + 1) + A000010 (n + 1)

end

end A378993.P10613741532202432744

namespace A378993

/-- `A057860(n+1)+A000010(n+1)` -/
def P10613741532202432744.Spec : Prop :=
  ∀ n, P10613741532202432744.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P8262202654650744510

`A049820(n+1)+A033273(n+1)`
-/

namespace A378993.P8262202654650744510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A033273 (n + 1)

end

end A378993.P8262202654650744510

namespace A378993

/-- `A049820(n+1)+A033273(n+1)` -/
def P8262202654650744510.Spec : Prop :=
  ∀ n, P8262202654650744510.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P3407709440778739243

`A062298(n+1)+A048865(n+1)`
-/

namespace A378993.P3407709440778739243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) + A048865 (n + 1)

end

end A378993.P3407709440778739243

namespace A378993

/-- `A062298(n+1)+A048865(n+1)` -/
def P3407709440778739243.Spec : Prop :=
  ∀ n, P3407709440778739243.a n = A378993 (n + 1)

end A378993

/-! ## A378993.P16177804618807818388

`A069345(n+1)+A046660(n+1)`
-/

namespace A378993.P16177804618807818388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (n + 1) + A046660 (n + 1)

end

end A378993.P16177804618807818388

namespace A378993

/-- `A069345(n+1)+A046660(n+1)` -/
def P16177804618807818388.Spec : Prop :=
  ∀ n, P16177804618807818388.a n = A378993 (n + 1)

end A378993

/-!
# A378994: a(n) = gcd(2*n, sigma(2*n)).

The programs for A378994, the canonical program `A378994.P13243663238711510538` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378994 has offset 1).

The definition of A378994 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378994.P18134285452738476923

`2*(n+1)/A378996(n+1)`
-/

namespace A378994.P18134285452738476923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / (A378996 (n + 1) : ℚ))

end

end A378994.P18134285452738476923

namespace A378994

/-- `2*(n+1)/A378996(n+1)` -/
def P18134285452738476923.Spec : Prop :=
  ∀ n, P18134285452738476923.a n = (A378994 (n + 1) : ℚ)

end A378994

/-! ## A378994.P13243663238711510538

`A009194(2*(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A378994

/-- `A009194(2*(n+1))` -/
def P13243663238711510538.Spec : Prop :=
  ∀ n, P13243663238711510538.a n = A378994 (n + 1)

theorem P13243663238711510538.correct : P13243663238711510538.Spec := by
  intro n
  simp only [A378994, Nat.add_sub_cancel]

end A378994

/-! ## A378994.P8077621921937179120

`gcd(A062731(n+1), A103517(n))`
-/

namespace A378994.P8077621921937179120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062731 (n + 1)) (A103517 n)

end

end A378994.P8077621921937179120

namespace A378994

/-- `gcd(A062731(n+1), A103517(n))` -/
def P8077621921937179120.Spec : Prop :=
  ∀ n, (P8077621921937179120.a n : ℤ) = A378994 (n + 1)

end A378994

/-! ## A378994.P4913090610924427637

`A062731(n+1)/A378995(n+1)`
-/

namespace A378994.P4913090610924427637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062731 (n + 1) : ℚ) / (A378995 (n + 1) : ℚ)

end

end A378994.P4913090610924427637

namespace A378994

/-- `A062731(n+1)/A378995(n+1)` -/
def P4913090610924427637.Spec : Prop :=
  ∀ n, P4913090610924427637.a n = (A378994 (n + 1) : ℚ)

end A378994

/-! ## A378994.P4161458725831377616

`gcd(A051755(n+2), A346878(n+1))`
-/

namespace A378994.P4161458725831377616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051755 (n + 2)) (A346878 (n + 1))

end

end A378994.P4161458725831377616

namespace A378994

/-- `gcd(A051755(n+2), A346878(n+1))` -/
def P4161458725831377616.Spec : Prop :=
  ∀ n, (P4161458725831377616.a n : ℤ) = A378994 (n + 1)

end A378994

/-! ## A378994.P13523788563602782184

`A388270(2*(n+1))/A000005(2*(n+1))`
-/

namespace A378994.P13523788563602782184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388270 (2 * (n + 1)) : ℚ) / (A000005 (2 * (n + 1)) : ℚ)

end

end A378994.P13523788563602782184

namespace A378994

/-- `A388270(2*(n+1))/A000005(2*(n+1))` -/
def P13523788563602782184.Spec : Prop :=
  ∀ n, P13523788563602782184.a n = (A378994 (n + 1) : ℚ)

end A378994

/-! ## A378994.P1285602675735750487

`A324544(2*A250245(n+1))`
-/

namespace A378994.P1285602675735750487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324544 (2 * A250245 (n + 1)).toNat

end

end A378994.P1285602675735750487

namespace A378994

/-- `A324544(2*A250245(n+1))` -/
def P1285602675735750487.Spec : Prop :=
  ∀ n, P1285602675735750487.a n = A378994 (n + 1)

end A378994

/-! ## A378994.P3763874404300671117

`A000027(2*(n+1))/A017666(2*(n+1))`
-/

namespace A378994.P3763874404300671117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * (n + 1)) : ℚ) / (A017666 (2 * (n + 1)) : ℚ)

end

end A378994.P3763874404300671117

namespace A378994

/-- `A000027(2*(n+1))/A017666(2*(n+1))` -/
def P3763874404300671117.Spec : Prop :=
  ∀ n, P3763874404300671117.a n = (A378994 (n + 1) : ℚ)

end A378994

/-! ## A378994.P14248587414530812193

`A000203(2*(n+1))/A017665(2*(n+1))`
-/

namespace A378994.P14248587414530812193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (2 * (n + 1)) : ℚ) / (A017665 (2 * (n + 1)) : ℚ)

end

end A378994.P14248587414530812193

namespace A378994

/-- `A000203(2*(n+1))/A017665(2*(n+1))` -/
def P14248587414530812193.Spec : Prop :=
  ∀ n, P14248587414530812193.a n = (A378994 (n + 1) : ℚ)

end A378994

/-! ## A378994.P7222721988915124795

`A014681(2*n+1)/A017666(2*(n+1))`
-/

namespace A378994.P7222721988915124795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014681 (2 * n + 1) : ℚ) / (A017666 (2 * (n + 1)) : ℚ)

end

end A378994.P7222721988915124795

namespace A378994

/-- `A014681(2*n+1)/A017666(2*(n+1))` -/
def P7222721988915124795.Spec : Prop :=
  ∀ n, P7222721988915124795.a n = (A378994 (n + 1) : ℚ)

end A378994

/-! ## A378994.P15936080839447616364

`A020725(2*n+1)/A017666(2*(n+1))`
-/

namespace A378994.P15936080839447616364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (2 * n + 1) : ℚ) / (A017666 (2 * (n + 1)) : ℚ)

end

end A378994.P15936080839447616364

namespace A378994

/-- `A020725(2*n+1)/A017666(2*(n+1))` -/
def P15936080839447616364.Spec : Prop :=
  ∀ n, P15936080839447616364.a n = (A378994 (n + 1) : ℚ)

end A378994

/-! ## A378994.P16390746374760814006

`A064987(2*(n+1))/A009242(2*(n+1))`
-/

namespace A378994.P16390746374760814006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (2 * (n + 1)) : ℚ) / (A009242 (2 * (n + 1)) : ℚ)

end

end A378994.P16390746374760814006

namespace A378994

/-- `A064987(2*(n+1))/A009242(2*(n+1))` -/
def P16390746374760814006.Spec : Prop :=
  ∀ n, P16390746374760814006.a n = (A378994 (n + 1) : ℚ)

end A378994

/-! ## A378994.P15782470317078194418

`A001065(2*(n+1))/A243473(2*(n+1))`
-/

namespace A378994.P15782470317078194418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (2 * (n + 1)) : ℚ) / (A243473 (2 * (n + 1)) : ℚ)

end

end A378994.P15782470317078194418

namespace A378994

/-- `A001065(2*(n+1))/A243473(2*(n+1))` -/
def P15782470317078194418.Spec : Prop :=
  ∀ n, P15782470317078194418.a n = (A378994 (n + 1) : ℚ)

end A378994

/-! ## A378994.P9450024655218170051

`A009242(2*(n+1))/A249670(2*(n+1))`
-/

namespace A378994.P9450024655218170051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 (2 * (n + 1)) : ℚ) / (A249670 (2 * (n + 1)) : ℚ)

end

end A378994.P9450024655218170051

namespace A378994

/-- `A009242(2*(n+1))/A249670(2*(n+1))` -/
def P9450024655218170051.Spec : Prop :=
  ∀ n, P9450024655218170051.a n = (A378994 (n + 1) : ℚ)

end A378994

/-! ## A378994.P12547817562539617349

`A249818(2*(n+1))/A017666(2*(n+1))`
-/

namespace A378994.P12547817562539617349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (2 * (n + 1)) : ℚ) / (A017666 (2 * (n + 1)) : ℚ)

end

end A378994.P12547817562539617349

namespace A378994

/-- `A249818(2*(n+1))/A017666(2*(n+1))` -/
def P12547817562539617349.Spec : Prop :=
  ∀ n, P12547817562539617349.a n = (A378994 (n + 1) : ℚ)

end A378994

/-! ## A378994.P6302220681989772878

`gcd(A020725(2*n+1), A143348(2*(n+1)))`
-/

namespace A378994.P6302220681989772878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (2 * n + 1)) (A143348 (2 * (n + 1)))

end

end A378994.P6302220681989772878

namespace A378994

/-- `gcd(A020725(2*n+1), A143348(2*(n+1)))` -/
def P6302220681989772878.Spec : Prop :=
  ∀ n, (P6302220681989772878.a n : ℤ) = A378994 (n + 1)

end A378994

/-! ## A378994.P16330237575772952552

`A004736(A286591(2*(n+1)))`
-/

namespace A378994.P16330237575772952552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286591 (2 * (n + 1))).toNat

end

end A378994.P16330237575772952552

namespace A378994

/-- `A004736(A286591(2*(n+1)))` -/
def P16330237575772952552.Spec : Prop :=
  ∀ n, P16330237575772952552.a n = A378994 (n + 1)

end A378994

/-! ## A378994.P13869778002403647399

`A355925(∑[n]+1)`
-/

namespace A378994.P13869778002403647399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355925 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A378994.P13869778002403647399

namespace A378994

/-- `A355925(∑[n]+1)` -/
def P13869778002403647399.Spec : Prop :=
  ∀ n, P13869778002403647399.a n = A378994 (n + 1)

end A378994

/-! ## A378994.P13195199004431461850

`A389094(∑[n]+1)`
-/

namespace A378994.P13195199004431461850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389094 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A378994.P13195199004431461850

namespace A378994

/-- `A389094(∑[n]+1)` -/
def P13195199004431461850.Spec : Prop :=
  ∀ n, P13195199004431461850.a n = A378994 (n + 1)

end A378994

/-!
# A378995: Numerator of sigma(2*n)/(2*n).

The programs for A378995, the canonical program `A378995.P10105459353425668716` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378995 has offset 1).

The definition of A378995 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378995.P10105459353425668716

`A062731(n+1)/A378994(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A378995

/-- `A062731(n+1)/A378994(n+1)` -/
def P10105459353425668716.Spec : Prop :=
  ∀ n, P10105459353425668716.a n = (A378995 (n + 1) : ℚ)

end A378995

/-! ## A378995.P6768699099205079346

`A017665(2*(n+1))`
-/

namespace A378995.P6768699099205079346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (2 * (n + 1))

end

end A378995.P6768699099205079346

namespace A378995

/-- `A017665(2*(n+1))` -/
def P6768699099205079346.Spec : Prop :=
  ∀ n, P6768699099205079346.a n = A378995 (n + 1)

end A378995

/-! ## A378995.P7336345430943068519

`A062731(n+1)/gcd(A062731(n+1), A103517(n))`
-/

namespace A378995.P7336345430943068519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062731 (n + 1) : ℚ) / (Int.gcd (A062731 (n + 1)) (A103517 n) : ℚ)

end

end A378995.P7336345430943068519

namespace A378995

/-- `A062731(n+1)/gcd(A062731(n+1), A103517(n))` -/
def P7336345430943068519.Spec : Prop :=
  ∀ n, P7336345430943068519.a n = (A378995 (n + 1) : ℚ)

end A378995

/-! ## A378995.P10560964074481483616

`A062731(n+1)/A009194(2*(n+1))`
-/

namespace A378995.P10560964074481483616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062731 (n + 1) : ℚ) / (A009194 (2 * (n + 1)) : ℚ)

end

end A378995.P10560964074481483616

namespace A378995

/-- `A062731(n+1)/A009194(2*(n+1))` -/
def P10560964074481483616.Spec : Prop :=
  ∀ n, P10560964074481483616.a n = (A378995 (n + 1) : ℚ)

end A378995

/-! ## A378995.P15526287631015961237

`A243473(2*(n+1))+A017666(2*(n+1))`
-/

namespace A378995.P15526287631015961237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243473 (2 * (n + 1)) + A017666 (2 * (n + 1))

end

end A378995.P15526287631015961237

namespace A378995

/-- `A243473(2*(n+1))+A017666(2*(n+1))` -/
def P15526287631015961237.Spec : Prop :=
  ∀ n, P15526287631015961237.a n = A378995 (n + 1)

end A378995

/-! ## A378995.P5378273952143423426

`A009242(2*(n+1))/A000027(2*(n+1))`
-/

namespace A378995.P5378273952143423426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 (2 * (n + 1)) : ℚ) / (A000027 (2 * (n + 1)) : ℚ)

end

end A378995.P5378273952143423426

namespace A378995

/-- `A009242(2*(n+1))/A000027(2*(n+1))` -/
def P5378273952143423426.Spec : Prop :=
  ∀ n, P5378273952143423426.a n = (A378995 (n + 1) : ℚ)

end A378995

/-! ## A378995.P112410364527080700

`A000203(2*(n+1))/A009194(2*(n+1))`
-/

namespace A378995.P112410364527080700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (2 * (n + 1)) : ℚ) / (A009194 (2 * (n + 1)) : ℚ)

end

end A378995.P112410364527080700

namespace A378995

/-- `A000203(2*(n+1))/A009194(2*(n+1))` -/
def P112410364527080700.Spec : Prop :=
  ∀ n, P112410364527080700.a n = (A378995 (n + 1) : ℚ)

end A378995

/-! ## A378995.P18080639452144122581

`A249670(2*(n+1))/A017666(2*(n+1))`
-/

namespace A378995.P18080639452144122581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249670 (2 * (n + 1)) : ℚ) / (A017666 (2 * (n + 1)) : ℚ)

end

end A378995.P18080639452144122581

namespace A378995

/-- `A249670(2*(n+1))/A017666(2*(n+1))` -/
def P18080639452144122581.Spec : Prop :=
  ∀ n, P18080639452144122581.a n = (A378995 (n + 1) : ℚ)

end A378995

/-! ## A378995.P13332129604383460405

`A240923(2*(n+1))+A000203(A017666(2*(n+1)))`
-/

namespace A378995.P13332129604383460405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (2 * (n + 1)) + A000203 (A017666 (2 * (n + 1))).toNat

end

end A378995.P13332129604383460405

namespace A378995

/-- `A240923(2*(n+1))+A000203(A017666(2*(n+1)))` -/
def P13332129604383460405.Spec : Prop :=
  ∀ n, P13332129604383460405.a n = A378995 (n + 1)

end A378995

/-! ## A378995.P605246557207442660

`A262610(A009242(2*(n+1))/A262610(2*(n+1)))`
-/

namespace A378995.P605246557207442660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (SequenceMachineLib.roundAway ((A009242 (2 * (n + 1)) : ℚ) / (A262610 (2 * (n + 1)) : ℚ))).toNat

end

end A378995.P605246557207442660

namespace A378995

/-- `A262610(A009242(2*(n+1))/A262610(2*(n+1)))` -/
def P605246557207442660.Spec : Prop :=
  ∀ n, P605246557207442660.a n = A378995 (n + 1)

end A378995

/-! ## A378995.P17645342297150010127

`A341605(∑[n]+1)`
-/

namespace A378995.P17645342297150010127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341605 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A378995.P17645342297150010127

namespace A378995

/-- `A341605(∑[n]+1)` -/
def P17645342297150010127.Spec : Prop :=
  ∀ n, P17645342297150010127.a n = A378995 (n + 1)

end A378995

/-! ## A378995.P7946819938802742

`A388995(∑[n]+1)`
-/

namespace A378995.P7946819938802742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388995 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A378995.P7946819938802742

namespace A378995

/-- `A388995(∑[n]+1)` -/
def P7946819938802742.Spec : Prop :=
  ∀ n, P7946819938802742.a n = A378995 (n + 1)

end A378995

/-!
# A378996: Denominator of sigma(2*n)/(2*n).

The programs for A378996, the canonical program `A378996.P6732452737629520424` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378996 has offset 1).

The definition of A378996 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378996.P6591055189608489703

`2*(n+1)/A378994(n+1)`
-/

namespace A378996.P6591055189608489703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / (A378994 (n + 1) : ℚ))

end

end A378996.P6591055189608489703

namespace A378996

/-- `2*(n+1)/A378994(n+1)` -/
def P6591055189608489703.Spec : Prop :=
  ∀ n, P6591055189608489703.a n = (A378996 (n + 1) : ℚ)

end A378996

/-! ## A378996.P6732452737629520424

`A017666(2*(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A378996

/-- `A017666(2*(n+1))` -/
def P6732452737629520424.Spec : Prop :=
  ∀ n, P6732452737629520424.a n = A378996 (n + 1)

theorem P6732452737629520424.correct : P6732452737629520424.Spec := by
  intro n
  simp only [A378996, Nat.add_sub_cancel]

end A378996

/-! ## A378996.P4458087940536030967

`A017665(2*(n+1))-A243473(2*(n+1))`
-/

namespace A378996.P4458087940536030967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (2 * (n + 1)) - A243473 (2 * (n + 1))

end

end A378996.P4458087940536030967

namespace A378996

/-- `A017665(2*(n+1))-A243473(2*(n+1))` -/
def P4458087940536030967.Spec : Prop :=
  ∀ n, P4458087940536030967.a n = A378996 (n + 1)

end A378996

/-! ## A378996.P11508709480499320365

`A000027(2*(n+1))/A009194(2*(n+1))`
-/

namespace A378996.P11508709480499320365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * (n + 1)) : ℚ) / (A009194 (2 * (n + 1)) : ℚ)

end

end A378996.P11508709480499320365

namespace A378996

/-- `A000027(2*(n+1))/A009194(2*(n+1))` -/
def P11508709480499320365.Spec : Prop :=
  ∀ n, P11508709480499320365.a n = (A378996 (n + 1) : ℚ)

end A378996

/-! ## A378996.P3244886992850553141

`A009242(2*(n+1))/A000203(2*(n+1))`
-/

namespace A378996.P3244886992850553141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 (2 * (n + 1)) : ℚ) / (A000203 (2 * (n + 1)) : ℚ)

end

end A378996.P3244886992850553141

namespace A378996

/-- `A009242(2*(n+1))/A000203(2*(n+1))` -/
def P3244886992850553141.Spec : Prop :=
  ∀ n, P3244886992850553141.a n = (A378996 (n + 1) : ℚ)

end A378996

/-! ## A378996.P3076119554282687247

`A020725(2*n+1)/A009194(2*(n+1))`
-/

namespace A378996.P3076119554282687247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (2 * n + 1) : ℚ) / (A009194 (2 * (n + 1)) : ℚ)

end

end A378996.P3076119554282687247

namespace A378996

/-- `A020725(2*n+1)/A009194(2*(n+1))` -/
def P3076119554282687247.Spec : Prop :=
  ∀ n, P3076119554282687247.a n = (A378996 (n + 1) : ℚ)

end A378996

/-! ## A378996.P7971410027916260910

`A106247(2*n+1)/A009194(2*(n+1))`
-/

namespace A378996.P7971410027916260910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106247 (2 * n + 1) : ℚ) / (A009194 (2 * (n + 1)) : ℚ)

end

end A378996.P7971410027916260910

namespace A378996

/-- `A106247(2*n+1)/A009194(2*(n+1))` -/
def P7971410027916260910.Spec : Prop :=
  ∀ n, P7971410027916260910.a n = (A378996 (n + 1) : ℚ)

end A378996

/-! ## A378996.P14326543711884193604

`A249818(2*(n+1))/A009194(2*(n+1))`
-/

namespace A378996.P14326543711884193604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249818 (2 * (n + 1)) : ℚ) / (A009194 (2 * (n + 1)) : ℚ)

end

end A378996.P14326543711884193604

namespace A378996

/-- `A249818(2*(n+1))/A009194(2*(n+1))` -/
def P14326543711884193604.Spec : Prop :=
  ∀ n, P14326543711884193604.a n = (A378996 (n + 1) : ℚ)

end A378996

/-! ## A378996.P5431536863544848142

`A249670(2*(n+1))/A017665(2*(n+1))`
-/

namespace A378996.P5431536863544848142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249670 (2 * (n + 1)) : ℚ) / (A017665 (2 * (n + 1)) : ℚ)

end

end A378996.P5431536863544848142

namespace A378996

/-- `A249670(2*(n+1))/A017665(2*(n+1))` -/
def P5431536863544848142.Spec : Prop :=
  ∀ n, P5431536863544848142.a n = (A378996 (n + 1) : ℚ)

end A378996

/-! ## A378996.P7952081937143882481

`A038040(2*(n+1))/A388270(2*(n+1))`
-/

namespace A378996.P7952081937143882481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (2 * (n + 1)) : ℚ) / (A388270 (2 * (n + 1)) : ℚ)

end

end A378996.P7952081937143882481

namespace A378996

/-- `A038040(2*(n+1))/A388270(2*(n+1))` -/
def P7952081937143882481.Spec : Prop :=
  ∀ n, P7952081937143882481.a n = (A378996 (n + 1) : ℚ)

end A378996

/-! ## A378996.P834350452273969782

`A250248(2*(n+1))/A009194(2*(n+1))`
-/

namespace A378996.P834350452273969782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250248 (2 * (n + 1)) : ℚ) / (A009194 (2 * (n + 1)) : ℚ)

end

end A378996.P834350452273969782

namespace A378996

/-- `A250248(2*(n+1))/A009194(2*(n+1))` -/
def P834350452273969782.Spec : Prop :=
  ∀ n, P834350452273969782.a n = (A378996 (n + 1) : ℚ)

end A378996

/-! ## A378996.P5213286119299300255

`A341606(∑[n]+1)`
-/

namespace A378996.P5213286119299300255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341606 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A378996.P5213286119299300255

namespace A378996

/-- `A341606(∑[n]+1)` -/
def P5213286119299300255.Spec : Prop :=
  ∀ n, P5213286119299300255.a n = A378996 (n + 1)

end A378996

/-! ## A378996.P13399531771611475398

`A388996(∑[n]+1)`
-/

namespace A378996.P13399531771611475398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388996 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A378996.P13399531771611475398

namespace A378996

/-- `A388996(∑[n]+1)` -/
def P13399531771611475398.Spec : Prop :=
  ∀ n, P13399531771611475398.a n = A378996 (n + 1)

end A378996

/-!
# A378997: Dirichlet inverse of A057723.

The programs for A378997, there is no canonical definition to state claims against.
-/

/-! ## A378997.P14536466904904018642

`∏{p}[n+1, -#]*A189023(floor(2^n/(n+1)))`
-/

namespace A378997.P14536466904904018642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))) * A189023 ⌊(2 ^ n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A378997.P14536466904904018642

/-! ## A378997.P3211089188755437714

`∏{p}[n+1, -#]*A099443(A334721(n+1))`
-/

namespace A378997.P3211089188755437714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))) * A099443 (A334721 (n + 1)).toNat

end

end A378997.P3211089188755437714

/-! ## A378997.P14982058475421551772

`∏{p}[n+1, -#]*A285062(A242532(n+2))`
-/

namespace A378997.P14982058475421551772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))) * A285062 (A242532 (n + 2)).toNat

end

end A378997.P14982058475421551772

/-!
# A378998: Number of trailing 1-bits in the binary representation of sigma(n).

The programs for A378998, the canonical program `A378998.P7086565219959481475` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378998 has offset 1).

The definition of A378998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378998.P7086565219959481475

`A007814(A088580(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A378998

/-- `A007814(A088580(n+1))` -/
def P7086565219959481475.Spec : Prop :=
  ∀ n, P7086565219959481475.a n = A378998 (n + 1)

theorem P7086565219959481475.correct : P7086565219959481475.Spec := by
  intro n
  simp only [A378998, Nat.add_sub_cancel]

end A378998

/-! ## A378998.P9183069298164747265

`val(∑{d}[n+1, #]+1, 2)`
-/

namespace A378998.P9183069298164747265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n), d + 1) 2

end

end A378998.P9183069298164747265

namespace A378998

/-- `val(∑{d}[n+1, #]+1, 2)` -/
def P9183069298164747265.Spec : Prop :=
  ∀ n, (P9183069298164747265.a n : ℤ) = A378998 (n + 1)

end A378998

/-! ## A378998.P3607897480059720955

`val(A000203(n+1)+1, 2)`
-/

namespace A378998.P3607897480059720955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (n + 1) + 1).toNat 2

end

end A378998.P3607897480059720955

namespace A378998

/-- `val(A000203(n+1)+1, 2)` -/
def P3607897480059720955.Spec : Prop :=
  ∀ n, (P3607897480059720955.a n : ℤ) = A378998 (n + 1)

end A378998

/-! ## A378998.P4969879201200477059

`val(A155085(n+1)-n, 2)`
-/

namespace A378998.P4969879201200477059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A155085 (n + 1) - (n : ℤ)).toNat 2

end

end A378998.P4969879201200477059

namespace A378998

/-- `val(A155085(n+1)-n, 2)` -/
def P4969879201200477059.Spec : Prop :=
  ∀ n, (P4969879201200477059.a n : ℤ) = A378998 (n + 1)

end A378998

/-! ## A378998.P14029310170035784947

`A053866(n+1)*A337195(n+1)`
-/

namespace A378998.P14029310170035784947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) * A337195 (n + 1)

end

end A378998.P14029310170035784947

namespace A378998

/-- `A053866(n+1)*A337195(n+1)` -/
def P14029310170035784947.Spec : Prop :=
  ∀ n, P14029310170035784947.a n = A378998 (n + 1)

end A378998

/-! ## A378998.P2982005662194450263

`lcm(A143259(n+1), A337195(n+1))`
-/

namespace A378998.P2982005662194450263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143259 (n + 1)) (A337195 (n + 1))

end

end A378998.P2982005662194450263

namespace A378998

/-- `lcm(A143259(n+1), A337195(n+1))` -/
def P2982005662194450263.Spec : Prop :=
  ∀ n, (P2982005662194450263.a n : ℤ) = A378998 (n + 1)

end A378998

/-! ## A378998.P6660172891961750720

`and(1, A361147(n+1))*A337195(n+1)`
-/

namespace A378998.P6660172891961750720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A361147 (n + 1)) * A337195 (n + 1)

end

end A378998.P6660172891961750720

namespace A378998

/-- `and(1, A361147(n+1))*A337195(n+1)` -/
def P6660172891961750720.Spec : Prop :=
  ∀ n, P6660172891961750720.a n = A378998 (n + 1)

end A378998

/-! ## A378998.P1094480924780555506

`A006666(A088580(n+1)/A332459(n+1))`
-/

namespace A378998.P1094480924780555506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (SequenceMachineLib.roundAway ((A088580 (n + 1) : ℚ) / (A332459 (n + 1) : ℚ))).toNat

end

end A378998.P1094480924780555506

namespace A378998

/-- `A006666(A088580(n+1)/A332459(n+1))` -/
def P1094480924780555506.Spec : Prop :=
  ∀ n, P1094480924780555506.a n = A378998 (n + 1)

end A378998

/-! ## A378998.P17585905929678221468

`A007814(A000203(n+1)+1)`
-/

namespace A378998.P17585905929678221468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000203 (n + 1) + 1).toNat

end

end A378998.P17585905929678221468

namespace A378998

/-- `A007814(A000203(n+1)+1)` -/
def P17585905929678221468.Spec : Prop :=
  ∀ n, P17585905929678221468.a n = A378998 (n + 1)

end A378998

/-! ## A378998.P4401097561202850828

`A007814(A039653(n+1)+2)`
-/

namespace A378998.P4401097561202850828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A039653 (n + 1) + 2).toNat

end

end A378998.P4401097561202850828

namespace A378998

/-- `A007814(A039653(n+1)+2)` -/
def P4401097561202850828.Spec : Prop :=
  ∀ n, P4401097561202850828.a n = A378998 (n + 1)

end A378998

/-! ## A378998.P17370758322624201534

`A007814(A001065(n+1)+n+2)`
-/

namespace A378998.P17370758322624201534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A001065 (n + 1) + (n + 2 : ℤ)).toNat

end

end A378998.P17370758322624201534

namespace A378998

/-- `A007814(A001065(n+1)+n+2)` -/
def P17370758322624201534.Spec : Prop :=
  ∀ n, P17370758322624201534.a n = A378998 (n + 1)

end A378998

/-! ## A378998.P13417789591272201217

`A332454(n+1)-A006666(A332459(n+1))`
-/

namespace A378998.P13417789591272201217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332454 (n + 1) - A006666 (A332459 (n + 1)).toNat

end

end A378998.P13417789591272201217

namespace A378998

/-- `A332454(n+1)-A006666(A332459(n+1))` -/
def P13417789591272201217.Spec : Prop :=
  ∀ n, P13417789591272201217.a n = A378998 (n + 1)

end A378998

/-! ## A378998.P16222020548653840372

`A050605(A074400(n+1))`
-/

namespace A378998.P16222020548653840372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A074400 (n + 1)).toNat

end

end A378998.P16222020548653840372

namespace A378998

/-- `A050605(A074400(n+1))` -/
def P16222020548653840372.Spec : Prop :=
  ∀ n, P16222020548653840372.a n = A378998 (n + 1)

end A378998

/-!
# A378999: Number of trailing 1-bits in the binary representation of sigma(n^2).

The programs for A378999, the canonical program `A378999.P10244368131065604543` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378999 has offset 1).

The definition of A378999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378999.P10244368131065604543

`A378998(A000290(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A378999

/-- `A378998(A000290(n+1))` -/
def P10244368131065604543.Spec : Prop :=
  ∀ n, P10244368131065604543.a n = A378999 (n + 1)

theorem P10244368131065604543.correct : P10244368131065604543.Spec := by
  intro n
  simp only [A378999, Nat.add_sub_cancel]

end A378999

/-! ## A378999.P8391262281724942436

`A007814(1+A065764(n+1))`
-/

namespace A378999.P8391262281724942436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A065764 (n + 1)).toNat

end

end A378999.P8391262281724942436

namespace A378999

/-- `A007814(1+A065764(n+1))` -/
def P8391262281724942436.Spec : Prop :=
  ∀ n, P8391262281724942436.a n = A378999 (n + 1)

end A378999

/-! ## A378999.P13548434418483667707

`val(∑{d}[(n+1)², #]+1, 2)`
-/

namespace A378999.P13548434418483667707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n), d + 1) 2

end

end A378999.P13548434418483667707

namespace A378999

/-- `val(∑{d}[(n+1)², #]+1, 2)` -/
def P13548434418483667707.Spec : Prop :=
  ∀ n, (P13548434418483667707.a n : ℤ) = A378999 (n + 1)

end A378999

/-! ## A378999.P8835132173489818481

`A378998((n+1)²)`
-/

namespace A378999.P8835132173489818481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378998 ((n + 1) ^ 2)

end

end A378999.P8835132173489818481

namespace A378999

/-- `A378998((n+1)²)` -/
def P8835132173489818481.Spec : Prop :=
  ∀ n, P8835132173489818481.a n = A378999 (n + 1)

end A378999

/-! ## A378999.P412194708240520091

`val(A000203((n+1)²)+1, 2)`
-/

namespace A378999.P412194708240520091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 ((n + 1) ^ 2) + 1).toNat 2

end

end A378999.P412194708240520091

namespace A378999

/-- `val(A000203((n+1)²)+1, 2)` -/
def P412194708240520091.Spec : Prop :=
  ∀ n, (P412194708240520091.a n : ℤ) = A378999 (n + 1)

end A378999

/-! ## A378999.P7771832128847666504

`A337195((n+1)²)`
-/

namespace A378999.P7771832128847666504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337195 ((n + 1) ^ 2)

end

end A378999.P7771832128847666504

namespace A378999

/-- `A337195((n+1)²)` -/
def P7771832128847666504.Spec : Prop :=
  ∀ n, P7771832128847666504.a n = A378999 (n + 1)

end A378999

/-! ## A378999.P17087558338865278304

`A050603(A065764(n+1))`
-/

namespace A378999.P17087558338865278304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A065764 (n + 1)).toNat

end

end A378999.P17087558338865278304

namespace A378999

/-- `A050603(A065764(n+1))` -/
def P17087558338865278304.Spec : Prop :=
  ∀ n, P17087558338865278304.a n = A378999 (n + 1)

end A378999

/-! ## A378999.P7142084656381944343

`A007814(A337194((n+1)²))`
-/

namespace A378999.P7142084656381944343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A337194 ((n + 1) ^ 2)).toNat

end

end A378999.P7142084656381944343

namespace A378999

/-- `A007814(A337194((n+1)²))` -/
def P7142084656381944343.Spec : Prop :=
  ∀ n, P7142084656381944343.a n = A378999 (n + 1)

end A378999

