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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B007.C000
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
# A175200: Numbers k such that rad(k) divides sigma(k).

The programs for A175200, the canonical program `A175200.P5264052223094873416` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175200 has offset 1).

The definition of A175200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175200.P5264052223094873416

`eq[0, A336387(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175200

/-- `eq[0, A336387(n+1)]+1` -/
def P5264052223094873416.Spec : Prop :=
  ∀ n, (P5264052223094873416.a n : ℤ) = A175200 (n + 1)

theorem P5264052223094873416.correct : P5264052223094873416.Spec := by
  intro n
  simp only [A175200, Nat.add_sub_cancel]

end A175200

/-! ## A175200.P9301063059602122829

`eq[A000007(n), A336387(A028310(n))]`
-/

namespace A175200.P9301063059602122829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336387 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175200.P9301063059602122829

namespace A175200

/-- `eq[A000007(n), A336387(A028310(n))]` -/
def P9301063059602122829.Spec : Prop :=
  ∀ n, (P9301063059602122829.a n : ℤ) = A175200 (n + 1)

end A175200

/-! ## A175200.P14073061227489400573

`eq[A000038(n), A336387(A028310(n))]`
-/

namespace A175200.P14073061227489400573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336387 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175200.P14073061227489400573

namespace A175200

/-- `eq[A000038(n), A336387(A028310(n))]` -/
def P14073061227489400573.Spec : Prop :=
  ∀ n, (P14073061227489400573.a n : ℤ) = A175200 (n + 1)

end A175200

/-! ## A175200.P15705151771027871800

`eq[1, A116199(n+1)]+1`
-/

namespace A175200.P15705151771027871800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116199 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175200.P15705151771027871800

namespace A175200

/-- `eq[1, A116199(n+1)]+1` -/
def P15705151771027871800.Spec : Prop :=
  ∀ n, (P15705151771027871800.a n : ℤ) = A175200 (n + 1)

end A175200

/-! ## A175200.P9572427657617809444

`eq[A054977(n), A116199(A028310(n))]`
-/

namespace A175200.P9572427657617809444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116199 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175200.P9572427657617809444

namespace A175200

/-- `eq[A054977(n), A116199(A028310(n))]` -/
def P9572427657617809444.Spec : Prop :=
  ∀ n, (P9572427657617809444.a n : ℤ) = A175200 (n + 1)

end A175200

/-!
# A175202: a(n) is the smallest k such that the n consecutive values L(k), L(k+1), ..., L(k+n-1) = -1, where L(m) is the Liouville function A008836(m).

The programs for A175202, there is no canonical definition to state claims against.
-/

/-! ## A175202.P1659492810022476

`A275509(gcd(A066794(n+1), A233459(2*n+5))+n)`
-/

namespace A175202.P1659492810022476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275509 (Int.gcd (A066794 (n + 1)) (A233459 (2 * n + 5)) + n)

end

end A175202.P1659492810022476

/-! ## A175202.P9363256799420452830

`A066794(∑[A233445(3*n+5)%2])`
-/

namespace A175202.P9363256799420452830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233445 (3 * n + 5)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175202.P9363256799420452830

/-! ## A175202.P14306086490300657503

`A275509(A198982(n+1)+A050334(2*(n+1)))`
-/

namespace A175202.P14306086490300657503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275509 (A198982 (n + 1) + A050334 (2 * (n + 1))).toNat

end

end A175202.P14306086490300657503

/-!
# A175204: Smallest index m such that omega(m) + omega(m+1) + omega(m+2) = n.

The programs for A175204, there is no canonical definition to state claims against.
-/

/-! ## A175204.P660054168730405390

`∑[A328335(A129831(n+1))]`
-/

namespace A175204.P660054168730405390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A129831 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175204.P660054168730405390

/-! ## A175204.P7754885258755387828

`∑[A069754(record[A220335(n+1)])]`
-/

namespace A175204.P7754885258755387828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220335 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069754 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175204.P7754885258755387828

/-! ## A175204.P15879566596038347597

`A262320(n)-A269303(A108694(n))`
-/

namespace A175204.P15879566596038347597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262320 n - A269303 (A108694 n).toNat

end

end A175204.P15879566596038347597

/-!
# A175205: Primes p such that p^6-p^3+1 is also prime.

The programs for A175205, there is no canonical definition to state claims against.
-/

/-! ## A175205.P9198016250344205952

`p?[A164989(n+1)]`
-/

namespace A175205.P9198016250344205952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175205.P9198016250344205952

/-! ## A175205.P17957731644829474482

`∩[A002476(n+1), A164989(n+1)]`
-/

namespace A175205.P17957731644829474482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P17957731644829474482

/-! ## A175205.P6333583951341194400

`∩[A007645(n+1), A164989(n+1)]`
-/

namespace A175205.P6333583951341194400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P6333583951341194400

/-! ## A175205.P1684607652153502349

`∩[A045331(n+1), A164989(n+1)]`
-/

namespace A175205.P1684607652153502349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P1684607652153502349

/-! ## A175205.P3535480768095461782

`∩[A045375(n+1), A164989(n+1)]`
-/

namespace A175205.P3535480768095461782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P3535480768095461782

/-! ## A175205.P14121203534287465973

`∩[A123365(n+1), A164989(n+1)]`
-/

namespace A175205.P14121203534287465973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P14121203534287465973

/-! ## A175205.P13220955364161359364

`∩[A164989(n+1), A279815(n+1)]`
-/

namespace A175205.P13220955364161359364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P13220955364161359364

/-! ## A175205.P4874577512333822764

`p?[record[A164989(A133310(n))]]`
-/

namespace A175205.P4874577512333822764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175205.P4874577512333822764

/-! ## A175205.P15214205664115730538

`∩[A040116(n+1), A164989(n+1)]`
-/

namespace A175205.P15214205664115730538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P15214205664115730538

/-! ## A175205.P5799835506630612000

`∩[A164989(n+1), A325143(n+1)]`
-/

namespace A175205.P5799835506630612000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P5799835506630612000

/-! ## A175205.P5804777707126214154

`∩[A154679(n+1), A164989(n+1)]`
-/

namespace A175205.P5804777707126214154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P5804777707126214154

/-! ## A175205.P3626822425349418230

`∩[A140557(n+1), A164989(n+1)]`
-/

namespace A175205.P3626822425349418230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P3626822425349418230

/-! ## A175205.P5394238875164184002

`∩[A140562(n+1), A164989(n+1)]`
-/

namespace A175205.P5394238875164184002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P5394238875164184002

/-! ## A175205.P5701825154056500761

`∩[A164989(n+1), A167464(n+1)]`
-/

namespace A175205.P5701825154056500761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P5701825154056500761

/-! ## A175205.P10118334188110747303

`∩[A140563(n+1), A164989(n+1)]`
-/

namespace A175205.P10118334188110747303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P10118334188110747303

/-! ## A175205.P12252221830541268775

`∩[A049591(n+1), A164989(n+1)]`
-/

namespace A175205.P12252221830541268775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P12252221830541268775

/-! ## A175205.P1954131415995111915

`∩[A067774(n+1), A164989(n+1)]`
-/

namespace A175205.P1954131415995111915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P1954131415995111915

/-! ## A175205.P18207655686664123652

`∩[A138645(n+1), A164989(n+1)]`
-/

namespace A175205.P18207655686664123652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P18207655686664123652

/-! ## A175205.P6926803278769886563

`∩[A053176(n+1), A164989(n+1)]`
-/

namespace A175205.P6926803278769886563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175205.P6926803278769886563

/-! ## A175205.P4312202729574400688

`record[p?[A164989(A052938(n))]]`
-/

namespace A175205.P4312202729574400688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175205.P4312202729574400688

/-!
# A175207: a(1) = 1, a(2) = 5, for n >= 3, a(n) = smallest prime > a(n-1) such that a(n) mod a(n-1) = a(n-2).

The programs for A175207, there is no canonical definition to state claims against.
-/

/-! ## A175207.P7611018729579628774

`A067745(∏[lcm(n, a(n-1))])` with `a(0)=2`
-/

namespace A175207.P7611018729579628774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.lcm n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067745 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A175207.P7611018729579628774

/-!
# A175209: Numbers n such that bigomega(bigomega(n)) ^ bigomega(n) = n.

The programs for A175209, there is no canonical definition to state claims against.
-/

/-! ## A175209.P1569527558721310899

`record[A001222(A107460(n+13))^A107460(n+13)]`
-/

namespace A175209.P1569527558721310899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A107460 (n + 13)).toNat : ℚ) ^ (A107460 (n + 13) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175209.P1569527558721310899

/-! ## A175209.P12307330772207097975

`record[A001222(A132283(3*(n+1)))^A132283(3*(n+1))]`
-/

namespace A175209.P12307330772207097975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A132283 (3 * (n + 1))).toNat : ℚ) ^ (A132283 (3 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175209.P12307330772207097975

/-!
# A175211: The finite sequence with the largest possible number of terms such that a(1) = a(2) = 1, for n >= 3, a(n) = prime p such that p = Sum_{i=1...k} a(n-i) for any k.

The programs for A175211, there is no canonical definition to state claims against.
-/

/-! ## A175211.P4210296623014446273

`A056813(A047136(n))`
-/

namespace A175211.P4210296623014446273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A047136 n).toNat

end

end A175211.P4210296623014446273

/-! ## A175211.P3679545019856520448

`A097904(A144026(n))`
-/

namespace A175211.P3679545019856520448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097904 (A144026 n).toNat

end

end A175211.P3679545019856520448

/-! ## A175211.P1191673580013758365

`A056813(A093113(n+1))`
-/

namespace A175211.P1191673580013758365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A093113 (n + 1)).toNat

end

end A175211.P1191673580013758365

/-! ## A175211.P7092348421404337263

`A056813(A148365(n+1))`
-/

namespace A175211.P7092348421404337263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A148365 (n + 1)).toNat

end

end A175211.P7092348421404337263

/-! ## A175211.P858347168902245580

`A056813(A148389(n+1))`
-/

namespace A175211.P858347168902245580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A148389 (n + 1)).toNat

end

end A175211.P858347168902245580

/-!
# A175212: Numbers n such that A000975(n-1)/n is an integer. Also numbers n such that arithmetic mean of the first n Jacobsthal numbers is an integer.

The programs for A175212, the canonical program `A175212.P6570222214537579537` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175212 has offset 1).

The definition of A175212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9655 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175212.P12389373846010280548

`filter[A176997(n+1), A014578(#)]`
-/

namespace A175212.P12389373846010280548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A175212.P12389373846010280548

namespace A175212

/-- `filter[A176997(n+1), A014578(#)]` -/
def P12389373846010280548.Spec : Prop :=
  ∀ n, P12389373846010280548.a n = A175212 (n + 1)

end A175212

/-! ## A175212.P7679527603254098064

`filter[A015919(n+1), A187074(#)]`
-/

namespace A175212.P7679527603254098064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A175212.P7679527603254098064

namespace A175212

/-- `filter[A015919(n+1), A187074(#)]` -/
def P7679527603254098064.Spec : Prop :=
  ∀ n, P7679527603254098064.a n = A175212 (n + 1)

end A175212

/-! ## A175212.P6570222214537579537

`filter[A176176(n+1), A373154(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A175212

/-- `filter[A176176(n+1), A373154(#)]` -/
def P6570222214537579537.Spec : Prop :=
  ∀ n, P6570222214537579537.a n = A175212 (n + 1)

theorem P6570222214537579537.correct : P6570222214537579537.Spec := by
  intro n
  simp only [A175212, Nat.add_sub_cancel]

end A175212

/-! ## A175212.P5796370869941103073

`filter[A176176(n+1), A373156(#)]`
-/

namespace A175212.P5796370869941103073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A175212.P5796370869941103073

namespace A175212

/-- `filter[A176176(n+1), A373156(#)]` -/
def P5796370869941103073.Spec : Prop :=
  ∀ n, P5796370869941103073.a n = A175212 (n + 1)

end A175212

/-! ## A175212.P8219970601886457702

`filter[A015919(n+1), A320106(#)]`
-/

namespace A175212.P8219970601886457702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A175212.P8219970601886457702

namespace A175212

/-- `filter[A015919(n+1), A320106(#)]` -/
def P8219970601886457702.Spec : Prop :=
  ∀ n, P8219970601886457702.a n = A175212 (n + 1)

end A175212

/-! ## A175212.P5779949719100128210

`filter[A015919(n+1), A354354(#)]`
-/

namespace A175212.P5779949719100128210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A175212.P5779949719100128210

namespace A175212

/-- `filter[A015919(n+1), A354354(#)]` -/
def P5779949719100128210.Spec : Prop :=
  ∀ n, P5779949719100128210.a n = A175212 (n + 1)

end A175212

/-! ## A175212.P270300579553718267

`filter[A176176(n+1), A320106(#)]`
-/

namespace A175212.P270300579553718267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A175212.P270300579553718267

namespace A175212

/-- `filter[A176176(n+1), A320106(#)]` -/
def P270300579553718267.Spec : Prop :=
  ∀ n, P270300579553718267.a n = A175212 (n + 1)

end A175212

/-! ## A175212.P4135143536607151073

`filter[A176176(n+1), A354354(#)]`
-/

namespace A175212.P4135143536607151073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A175212.P4135143536607151073

namespace A175212

/-- `filter[A176176(n+1), A354354(#)]` -/
def P4135143536607151073.Spec : Prop :=
  ∀ n, P4135143536607151073.a n = A175212 (n + 1)

end A175212

/-! ## A175212.P4828785651384532118

`∩[A007310(n+1), A015919(n+1)]`
-/

namespace A175212.P4828785651384532118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175212.P4828785651384532118

namespace A175212

/-- `∩[A007310(n+1), A015919(n+1)]` -/
def P4828785651384532118.Spec : Prop :=
  ∀ n, (P4828785651384532118.a n : ℤ) = A175212 (n + 1)

end A175212

/-! ## A175212.P1703011582001318788

`∩[A015919(n+1), A064615(n+1)]`
-/

namespace A175212.P1703011582001318788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175212.P1703011582001318788

namespace A175212

/-- `∩[A015919(n+1), A064615(n+1)]` -/
def P1703011582001318788.Spec : Prop :=
  ∀ n, (P1703011582001318788.a n : ℤ) = A175212 (n + 1)

end A175212

/-! ## A175212.P1210228014057897310

`eq[2, A191561(n+1)]+1`
-/

namespace A175212.P1210228014057897310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175212.P1210228014057897310

namespace A175212

/-- `eq[2, A191561(n+1)]+1` -/
def P1210228014057897310.Spec : Prop :=
  ∀ n, (P1210228014057897310.a n : ℤ) = A175212 (n + 1)

end A175212

/-! ## A175212.P14605880642704713250

`record[A051724(A015919(n+1))]`
-/

namespace A175212.P14605880642704713250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A015919 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175212.P14605880642704713250

namespace A175212

/-- `record[A051724(A015919(n+1))]` -/
def P14605880642704713250.Spec : Prop :=
  ∀ n, P14605880642704713250.a n = A175212 (n + 1)

end A175212

/-! ## A175212.P15111448299393840270

`record[A060789(A176997(n+1))]`
-/

namespace A175212.P15111448299393840270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A176997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175212.P15111448299393840270

namespace A175212

/-- `record[A060789(A176997(n+1))]` -/
def P15111448299393840270.Spec : Prop :=
  ∀ n, P15111448299393840270.a n = A175212 (n + 1)

end A175212

/-! ## A175212.P9634631359780743672

`filter[A176997(n+1), A011655(#)]`
-/

namespace A175212.P9634631359780743672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A175212.P9634631359780743672

namespace A175212

/-- `filter[A176997(n+1), A011655(#)]` -/
def P9634631359780743672.Spec : Prop :=
  ∀ n, P9634631359780743672.a n = A175212 (n + 1)

end A175212

/-! ## A175212.P18017103368394503787

`record[A214606(n+1)/A322026(n+1)]`
-/

namespace A175212.P18017103368394503787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214606 (n + 1) : ℚ) / (A322026 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175212.P18017103368394503787

namespace A175212

/-- `record[A214606(n+1)/A322026(n+1)]` -/
def P18017103368394503787.Spec : Prop :=
  ∀ n, P18017103368394503787.a n = (A175212 (n + 1) : ℚ)

end A175212

/-!
# A175213: a(n)= a(r)+a(s) ; (r+s)<=n ; r=(floor(sqrt(n-1)))^2 ; s=n-(floor(sqrt(n)))^2.

The programs for A175213, the canonical program `A175213.P5615207341891619309` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175213 has offset 0).

The definition of A175213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175213.P12623843729876122923

`a(A053186(n))+ceil(sqrt(n))` with `a(0)=1`
-/

namespace A175213.P12623843729876122923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A053186 n).toNat + ⌈Real.sqrt (n : ℝ)⌉

end

end A175213.P12623843729876122923

namespace A175213

/-- `a(A053186(n))+ceil(sqrt(n))` -/
def P12623843729876122923.Spec : Prop :=
  ∀ n, P12623843729876122923.a n = A175213 n

end A175213

/-! ## A175213.P5615207341891619309

`A135034(n)+a(A053186(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175213

/-- `A135034(n)+a(A053186(n))` -/
def P5615207341891619309.Spec : Prop :=
  ∀ n, P5615207341891619309.a n = A175213 n

theorem P5615207341891619309.correct : P5615207341891619309.Spec := by
  intro n
  simp only [A175213]

end A175213

/-! ## A175213.P11633356324756384100

`A063772(n)+A053610(A028310(n))`
-/

namespace A175213.P11633356324756384100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 n + A053610 (A028310 n).toNat

end

end A175213.P11633356324756384100

namespace A175213

/-- `A063772(n)+A053610(A028310(n))` -/
def P11633356324756384100.Spec : Prop :=
  ∀ n, P11633356324756384100.a n = A175213 n

end A175213

/-! ## A175213.P7885450091191706132

`A053610(A028310(n))+A001222(5^A138554(n))`
-/

namespace A175213.P7885450091191706132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (A028310 n).toNat + A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A138554 n : ℤ))).toNat

end

end A175213.P7885450091191706132

namespace A175213

/-- `A053610(A028310(n))+A001222(5^A138554(n))` -/
def P7885450091191706132.Spec : Prop :=
  ∀ n, P7885450091191706132.a n = A175213 n

end A175213

/-!
# A175214: a(1)=1; for n > 1, a(n) = a(floor(sqrt(n))) + a(floor(sqrt(n-1))).

The programs for A175214, the canonical program `A175214.P2483606969910338704` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175214 has offset 1).

The definition of A175214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(sqrt(n+1))-1)+a(floor(sqrt(n))-1)` (program `A175214.P2483606969910338704`, by `A175214.P2483606969910338704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175214.P2483606969910338704

`a(floor(sqrt(n+1))-1)+a(floor(sqrt(n))-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175214

/-- `a(floor(sqrt(n+1))-1)+a(floor(sqrt(n))-1)` -/
def P2483606969910338704.Spec : Prop :=
  ∀ n, (P2483606969910338704.a n : ℤ) = A175214 (n + 1)

theorem P2483606969910338704.correct : P2483606969910338704.Spec := by
  intro n
  simp only [A175214, Nat.add_sub_cancel]

end A175214

/-!
# A175215: The smaller member of a twin prime pair in which both primes are emirps.

The programs for A175215, there is no canonical definition to state claims against.
-/

/-! ## A175215.P18068620322232276353

`∩[A001359(n+1), A217614(n+1)]`
-/

namespace A175215.P18068620322232276353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P18068620322232276353

/-! ## A175215.P6154913489774765062

`∩[A217614(n+1), A378983(n+1)]`
-/

namespace A175215.P6154913489774765062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P6154913489774765062

/-! ## A175215.P4938878839437677593

`∩[A217614(n+1), A087693(n)]`
-/

namespace A175215.P4938878839437677593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P4938878839437677593

/-! ## A175215.P10003197094736276723

`∩[A054799(n+1), A217614(n+1)]`
-/

namespace A175215.P10003197094736276723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P10003197094736276723

/-! ## A175215.P2722435487598931935

`∩[A063700(n+1), A217614(n+1)]`
-/

namespace A175215.P2722435487598931935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P2722435487598931935

/-! ## A175215.P594543324257302112

`∩[A111166(n+1), A217614(n+1)]`
-/

namespace A175215.P594543324257302112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P594543324257302112

/-! ## A175215.P710078555868472356

`∩[A124588(n+1), A217614(n+1)]`
-/

namespace A175215.P710078555868472356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P710078555868472356

/-! ## A175215.P2726560566594145480

`∩[A181747(n+1), A217614(n+1)]`
-/

namespace A175215.P2726560566594145480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P2726560566594145480

/-! ## A175215.P3478845548969660002

`∩[A217614(n+1), A238528(n+1)]`
-/

namespace A175215.P3478845548969660002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P3478845548969660002

/-! ## A175215.P3283377119356392864

`∩[A063693(n+1), A217614(n+1)]`
-/

namespace A175215.P3283377119356392864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P3283377119356392864

/-! ## A175215.P18176259959044446501

`∩[A217614(n+1), A280255(n+1)]`
-/

namespace A175215.P18176259959044446501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P18176259959044446501

/-! ## A175215.P907188387214789800

`∩[A217614(n+1), A394509(n+1)]`
-/

namespace A175215.P907188387214789800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P907188387214789800

/-! ## A175215.P2225589829082716579

`∩[A217614(n+1), A395788(n+1)]`
-/

namespace A175215.P2225589829082716579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P2225589829082716579

/-! ## A175215.P15813678337816286417

`∩[A073534(n+1), A217614(n+1)]`
-/

namespace A175215.P15813678337816286417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P15813678337816286417

/-! ## A175215.P2530271381267035075

`∩[A217614(n+1), A280590(n+1)]`
-/

namespace A175215.P2530271381267035075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P2530271381267035075

/-! ## A175215.P16029442153901122403

`∩[A006567(n+1)-2, A006567(n+1)]`
-/

namespace A175215.P16029442153901122403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P16029442153901122403

/-! ## A175215.P15786821828894106415

`∩[A001838(n+1), A217614(n+1)]`
-/

namespace A175215.P15786821828894106415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P15786821828894106415

/-! ## A175215.P7677281841216818386

`∩[A101781(n+1), A217614(n+1)]`
-/

namespace A175215.P7677281841216818386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175215.P7677281841216818386

/-! ## A175215.P11461913401461973078

`p?[A001222(A185439(n+1))*A006567(n+1)]`
-/

namespace A175215.P11461913401461973078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A185439 (n + 1)).toNat * A006567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175215.P11461913401461973078

/-!
# A175216: The first nonprimes after the primes.

The programs for A175216, the canonical program `A175216.P16733733437529494500` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175216 has offset 1).

The definition of A175216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175216.P16733733437529494500

`p?[abs(2*n-3)]+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175216

/-- `p?[abs(2*n-3)]+1` -/
def P16733733437529494500.Spec : Prop :=
  ∀ n, P16733733437529494500.a n = A175216 (n + 1)

theorem P16733733437529494500.correct : P16733733437529494500.Spec := by
  intro n
  simp only [A175216, Nat.add_sub_cancel]

end A175216

/-! ## A175216.P7682061788813794325

`∑{d}[p?[abs(2*n-3)], #]`
-/

namespace A175216.P7682061788813794325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A175216.P7682061788813794325

namespace A175216

/-- `∑{d}[p?[abs(2*n-3)], #]` -/
def P7682061788813794325.Spec : Prop :=
  ∀ n, (P7682061788813794325.a n : ℤ) = A175216 (n + 1)

end A175216

/-! ## A175216.P10036972283417146393

`2*A130291(n+1)`
-/

namespace A175216.P10036972283417146393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130291 (n + 1)

end

end A175216.P10036972283417146393

namespace A175216

/-- `2*A130291(n+1)` -/
def P10036972283417146393.Spec : Prop :=
  ∀ n, P10036972283417146393.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P11298641394888490827

`and(-2, A052147(n+1))`
-/

namespace A175216.P11298641394888490827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A052147 (n + 1))

end

end A175216.P11298641394888490827

namespace A175216

/-- `and(-2, A052147(n+1))` -/
def P11298641394888490827.Spec : Prop :=
  ∀ n, P11298641394888490827.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P16522535017164158187

`or(1, Δ[A007504(n)])+1`
-/

namespace A175216.P16522535017164158187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n) + 1

end

end A175216.P16522535017164158187

namespace A175216

/-- `or(1, Δ[A007504(n)])+1` -/
def P16522535017164158187.Spec : Prop :=
  ∀ n, P16522535017164158187.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P18272314943118826008

`A008864(ceil(sqrt(n²+2)))`
-/

namespace A175216.P18272314943118826008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 ⌈Real.sqrt (n ^ 2 + 2 : ℝ)⌉.toNat

end

end A175216.P18272314943118826008

namespace A175216

/-- `A008864(ceil(sqrt(n²+2)))` -/
def P18272314943118826008.Spec : Prop :=
  ∀ n, P18272314943118826008.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P3378089045116489177

`2*(A130290(n+1)+1)`
-/

namespace A175216.P3378089045116489177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A130290 (n + 1) + 1)

end

end A175216.P3378089045116489177

namespace A175216

/-- `2*(A130290(n+1)+1)` -/
def P3378089045116489177.Spec : Prop :=
  ∀ n, P3378089045116489177.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P964764024548285340

`lcm(2, A006093(n+1))+2`
-/

namespace A175216.P964764024548285340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A006093 (n + 1)) + 2

end

end A175216.P964764024548285340

namespace A175216

/-- `lcm(2, A006093(n+1))+2` -/
def P964764024548285340.Spec : Prop :=
  ∀ n, (P964764024548285340.a n : ℤ) = A175216 (n + 1)

end A175216

/-! ## A175216.P2828603204595779712

`or(1, A000040(n+1))+1`
-/

namespace A175216.P2828603204595779712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 (n + 1)) + 1

end

end A175216.P2828603204595779712

namespace A175216

/-- `or(1, A000040(n+1))+1` -/
def P2828603204595779712.Spec : Prop :=
  ∀ n, P2828603204595779712.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P2191519603199271964

`or(1, A039915(n+1))+1`
-/

namespace A175216.P2191519603199271964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A039915 (n + 1)) + 1

end

end A175216.P2191519603199271964

namespace A175216

/-- `or(1, A039915(n+1))+1` -/
def P2191519603199271964.Spec : Prop :=
  ∀ n, P2191519603199271964.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P3373545653301432774

`A000040(C(2, n+2)+n+1)+1`
-/

namespace A175216.P3373545653301432774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose 2 (n + 2) + (n + 1)) + 1

end

end A175216.P3373545653301432774

namespace A175216

/-- `A000040(C(2, n+2)+n+1)+1` -/
def P3373545653301432774.Spec : Prop :=
  ∀ n, P3373545653301432774.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P7566317157737128992

`A000040((n+1)%a(n-1))+1` with `a(0)=4`
-/

namespace A175216.P7566317157737128992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A000040 (Int.tmod (n + 1 : ℤ) (a (n - 1))).toNat + 1

end

end A175216.P7566317157737128992

namespace A175216

/-- `A000040((n+1)%a(n-1))+1` -/
def P7566317157737128992.Spec : Prop :=
  ∀ n, P7566317157737128992.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P6455268603674760694

`Δ[a(n-1)+A000040(n)+1]` with `a(0)=1, a(1)=5`
-/

namespace A175216.P6455268603674760694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + (A000040 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175216.P6455268603674760694

namespace A175216

/-- `Δ[a(n-1)+A000040(n)+1]` -/
def P6455268603674760694.Spec : Prop :=
  ∀ n, P6455268603674760694.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P11691067598790290050

`A000040(floor(1/(n+1)+n+1))+1`
-/

namespace A175216.P11691067598790290050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊1 / (n + 1 : ℚ) + (n + 1 : ℚ)⌋.toNat + 1

end

end A175216.P11691067598790290050

namespace A175216

/-- `A000040(floor(1/(n+1)+n+1))+1` -/
def P11691067598790290050.Spec : Prop :=
  ∀ n, P11691067598790290050.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P7607446262918512183

`A028815(A028310(n)+1)`
-/

namespace A175216.P7607446262918512183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A028310 n + 1).toNat

end

end A175216.P7607446262918512183

namespace A175216

/-- `A028815(A028310(n)+1)` -/
def P7607446262918512183.Spec : Prop :=
  ∀ n, P7607446262918512183.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P17495532019457915677

`A028815(A054977(n)+n)`
-/

namespace A175216.P17495532019457915677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A054977 n + (n : ℤ)).toNat

end

end A175216.P17495532019457915677

namespace A175216

/-- `A028815(A054977(n)+n)` -/
def P17495532019457915677.Spec : Prop :=
  ∀ n, P17495532019457915677.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P18149388757271664412

`A008864(n+1)+A000007(n)`
-/

namespace A175216.P18149388757271664412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A000007 n

end

end A175216.P18149388757271664412

namespace A175216

/-- `A008864(n+1)+A000007(n)` -/
def P18149388757271664412.Spec : Prop :=
  ∀ n, P18149388757271664412.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P15016199123401976039

`A054977(n)+A000040(n+1)`
-/

namespace A175216.P15016199123401976039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A000040 (n + 1)

end

end A175216.P15016199123401976039

namespace A175216

/-- `A054977(n)+A000040(n+1)` -/
def P15016199123401976039.Spec : Prop :=
  ∀ n, P15016199123401976039.a n = A175216 (n + 1)

end A175216

/-! ## A175216.P17421139800106236470

`A054541(n+1)+A028815(n)`
-/

namespace A175216.P17421139800106236470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + A028815 n

end

end A175216.P17421139800106236470

namespace A175216

/-- `A054541(n+1)+A028815(n)` -/
def P17421139800106236470.Spec : Prop :=
  ∀ n, P17421139800106236470.a n = A175216 (n + 1)

end A175216

/-!
# A175217: The second nonprimes after the primes.

The programs for A175217, the canonical program `A175217.P17364733855604031209` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175217 has offset 1).

The definition of A175217 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175217.P17364733855604031209

`A000040(n+1)+2+A010051(A000040(n+1)+1)+A010051(A000040(n+1)+2)+A010051(A000040(n+1)+3)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175217

/-- `A000040(n+1)+2+A010051(A000040(n+1)+1)+A010051(A000040(n+1)+2)+A010051(A000040(n+1)+3)` -/
def P17364733855604031209.Spec : Prop :=
  ∀ n, P17364733855604031209.a n = A175217 (n + 1)

theorem P17364733855604031209.correct : P17364733855604031209.Spec := by
  intro n
  simp only [A175217, Nat.add_sub_cancel]

end A175217

/-! ## A175217.P13003548959006070250

`A175218(n+1)-A141044(n)`
-/

namespace A175217.P13003548959006070250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175218 (n + 1) - A141044 n

end

end A175217.P13003548959006070250

namespace A175217

/-- `A175218(n+1)-A141044(n)` -/
def P13003548959006070250.Spec : Prop :=
  ∀ n, P13003548959006070250.a n = A175217 (n + 1)

theorem P13003548959006070250.correct : P13003548959006070250.Spec := by
  intro n
  simp only [A175217, Nat.add_sub_cancel, A175217.P13003548959006070250.a, A175217.P17364733855604031209.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A010051, A010051.P15078252821583414300.a, A141044, A141044.P3127190038253494507.f1, A141044.P3127190038253494507.a, A175218, A175218.P12503116797807442088.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A175217

/-! ## A175217.P17536986388734235165

`A002808(p?[abs(xor(n, -2))]-n)`
-/

namespace A175217.P17536986388734235165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)).toNat

end

end A175217.P17536986388734235165

namespace A175217

/-- `A002808(p?[abs(xor(n, -2))]-n)` -/
def P17536986388734235165.Spec : Prop :=
  ∀ n, P17536986388734235165.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P18436976558870339805

`A002808(p?[xor(1, n)+1]-n)`
-/

namespace A175217.P18436976558870339805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - n)

end

end A175217.P18436976558870339805

namespace A175217

/-- `A002808(p?[xor(1, n)+1]-n)` -/
def P18436976558870339805.Spec : Prop :=
  ∀ n, P18436976558870339805.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P4496415590514229039

`A002808(p?[n%3+n]-n)`
-/

namespace A175217.P4496415590514229039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - n)

end

end A175217.P4496415590514229039

namespace A175217

/-- `A002808(p?[n%3+n]-n)` -/
def P4496415590514229039.Spec : Prop :=
  ∀ n, P4496415590514229039.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P12309408943721589352

`A002808(p?[ceil(2/acot(n))]-n)`
-/

namespace A175217.P12309408943721589352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)).toNat

end

end A175217.P12309408943721589352

namespace A175217

/-- `A002808(p?[ceil(2/acot(n))]-n)` -/
def P12309408943721589352.Spec : Prop :=
  ∀ n, P12309408943721589352.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P3487000883515732764

`A002808(p?[round(sqrt(n)+n)]-n)`
-/

namespace A175217.P3487000883515732764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)).toNat

end

end A175217.P3487000883515732764

namespace A175217

/-- `A002808(p?[round(sqrt(n)+n)]-n)` -/
def P3487000883515732764.Spec : Prop :=
  ∀ n, P3487000883515732764.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P9720472346528306345

`A018252(p?[abs(xor(n, -2))]+1-n)`
-/

namespace A175217.P9720472346528306345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 - (n : ℤ)).toNat

end

end A175217.P9720472346528306345

namespace A175217

/-- `A018252(p?[abs(xor(n, -2))]+1-n)` -/
def P9720472346528306345.Spec : Prop :=
  ∀ n, P9720472346528306345.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P14534939445333307270

`A018252(p?[abs(xor(n, -2))]-(n-1))`
-/

namespace A175217.P14534939445333307270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - ((n : ℤ) - 1)).toNat

end

end A175217.P14534939445333307270

namespace A175217

/-- `A018252(p?[abs(xor(n, -2))]-(n-1))` -/
def P14534939445333307270.Spec : Prop :=
  ∀ n, P14534939445333307270.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P18031946590930743979

`A018252(p?[xor(1, n)+1]+1-n)`
-/

namespace A175217.P18031946590930743979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + (1 - (n : ℤ))).toNat

end

end A175217.P18031946590930743979

namespace A175217

/-- `A018252(p?[xor(1, n)+1]+1-n)` -/
def P18031946590930743979.Spec : Prop :=
  ∀ n, P18031946590930743979.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P16756919646815284575

`A002808(abs(p?[round(8*n/7)]-n))`
-/

namespace A175217.P16756919646815284575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)|.toNat

end

end A175217.P16756919646815284575

namespace A175217

/-- `A002808(abs(p?[round(8*n/7)]-n))` -/
def P16756919646815284575.Spec : Prop :=
  ∀ n, P16756919646815284575.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P6823358364592031538

`A002808(A014692(n+1))`
-/

namespace A175217.P6823358364592031538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A014692 (n + 1)).toNat

end

end A175217.P6823358364592031538

namespace A175217

/-- `A002808(A014692(n+1))` -/
def P6823358364592031538.Spec : Prop :=
  ∀ n, P6823358364592031538.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P9799750567180868303

`A002808(Δ[A007504(n)]-n)`
-/

namespace A175217.P9799750567180868303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A175217.P9799750567180868303

namespace A175217

/-- `A002808(Δ[A007504(n)]-n)` -/
def P9799750567180868303.Spec : Prop :=
  ∀ n, P9799750567180868303.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P3975792508659061635

`A002808(A014689(n+1)+1)`
-/

namespace A175217.P3975792508659061635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A014689 (n + 1) + 1).toNat

end

end A175217.P3975792508659061635

namespace A175217

/-- `A002808(A014689(n+1)+1)` -/
def P3975792508659061635.Spec : Prop :=
  ∀ n, P3975792508659061635.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P10706225516192597594

`A018252(A014692(n+1)+1)`
-/

namespace A175217.P10706225516192597594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A014692 (n + 1) + 1).toNat

end

end A175217.P10706225516192597594

namespace A175217

/-- `A018252(A014692(n+1)+1)` -/
def P10706225516192597594.Spec : Prop :=
  ∀ n, P10706225516192597594.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P4043850260269335549

`A018252(A014689(n+1)+2)`
-/

namespace A175217.P4043850260269335549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A014689 (n + 1) + 2).toNat

end

end A175217.P4043850260269335549

namespace A175217

/-- `A018252(A014689(n+1)+2)` -/
def P4043850260269335549.Spec : Prop :=
  ∀ n, P4043850260269335549.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P17582726685592108581

`A002808(A065890(n+1)+2)`
-/

namespace A175217.P17582726685592108581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A065890 (n + 1) + 2).toNat

end

end A175217.P17582726685592108581

namespace A175217

/-- `A002808(A065890(n+1)+2)` -/
def P17582726685592108581.Spec : Prop :=
  ∀ n, P17582726685592108581.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P2252622721832599656

`A141468(A014692(n+1)+2)`
-/

namespace A175217.P2252622721832599656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A014692 (n + 1) + 2).toNat

end

end A175217.P2252622721832599656

namespace A175217

/-- `A141468(A014692(n+1)+2)` -/
def P2252622721832599656.Spec : Prop :=
  ∀ n, P2252622721832599656.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P10882444260320482561

`A002808(A162177(n+2)+2)`
-/

namespace A175217.P10882444260320482561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A162177 (n + 2) + 2).toNat

end

end A175217.P10882444260320482561

namespace A175217

/-- `A002808(A162177(n+2)+2)` -/
def P10882444260320482561.Spec : Prop :=
  ∀ n, P10882444260320482561.a n = A175217 (n + 1)

end A175217

/-! ## A175217.P9742562403719596229

`A002808(A000040(n+1)-n)`
-/

namespace A175217.P9742562403719596229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A000040 (n + 1) - (n : ℤ)).toNat

end

end A175217.P9742562403719596229

namespace A175217

/-- `A002808(A000040(n+1)-n)` -/
def P9742562403719596229.Spec : Prop :=
  ∀ n, P9742562403719596229.a n = A175217 (n + 1)

end A175217

/-!
# A175218: The third nonprimes after the primes.

The programs for A175218, the canonical program `A175218.P12503116797807442088` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175218 has offset 1).

The definition of A175218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175218.P12503116797807442088

`A175217(n+1)+A141044(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A175218

/-- `A175217(n+1)+A141044(n)` -/
def P12503116797807442088.Spec : Prop :=
  ∀ n, P12503116797807442088.a n = A175218 (n + 1)

theorem P12503116797807442088.correct : P12503116797807442088.Spec := by
  intro n
  simp only [A175218, Nat.add_sub_cancel]

end A175218

/-! ## A175218.P5116313637087908736

`A002808(A014692(n+1)+1)`
-/

namespace A175218.P5116313637087908736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A014692 (n + 1) + 1).toNat

end

end A175218.P5116313637087908736

namespace A175218

/-- `A002808(A014692(n+1)+1)` -/
def P5116313637087908736.Spec : Prop :=
  ∀ n, P5116313637087908736.a n = A175218 (n + 1)

end A175218

/-! ## A175218.P10866002181619299551

`A002808(A014689(n+1)+2)`
-/

namespace A175218.P10866002181619299551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A014689 (n + 1) + 2).toNat

end

end A175218.P10866002181619299551

namespace A175218

/-- `A002808(A014689(n+1)+2)` -/
def P10866002181619299551.Spec : Prop :=
  ∀ n, P10866002181619299551.a n = A175218 (n + 1)

end A175218

/-! ## A175218.P8504153810690712147

`A018252(A014692(n+1)+2)`
-/

namespace A175218.P8504153810690712147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A014692 (n + 1) + 2).toNat

end

end A175218.P8504153810690712147

namespace A175218

/-- `A018252(A014692(n+1)+2)` -/
def P8504153810690712147.Spec : Prop :=
  ∀ n, P8504153810690712147.a n = A175218 (n + 1)

end A175218

/-! ## A175218.P14239846380514869754

`A002808(A008864(n+1)-n)`
-/

namespace A175218.P14239846380514869754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A008864 (n + 1) - (n : ℤ)).toNat

end

end A175218.P14239846380514869754

namespace A175218

/-- `A002808(A008864(n+1)-n)` -/
def P14239846380514869754.Spec : Prop :=
  ∀ n, P14239846380514869754.a n = A175218 (n + 1)

end A175218

/-! ## A175218.P12922733990221331645

`A002808(A028815(n+1)-n)`
-/

namespace A175218.P12922733990221331645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A028815 (n + 1) - (n : ℤ)).toNat

end

end A175218.P12922733990221331645

namespace A175218

/-- `A002808(A028815(n+1)-n)` -/
def P12922733990221331645.Spec : Prop :=
  ∀ n, P12922733990221331645.a n = A175218 (n + 1)

end A175218

/-! ## A175218.P8693132649014452950

`A018252(A052147(n+1)-n)`
-/

namespace A175218.P8693132649014452950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A052147 (n + 1) - (n : ℤ)).toNat

end

end A175218.P8693132649014452950

namespace A175218

/-- `A018252(A052147(n+1)-n)` -/
def P8693132649014452950.Spec : Prop :=
  ∀ n, P8693132649014452950.a n = A175218 (n + 1)

end A175218

/-! ## A175218.P2603928502705035852

`A002808(A141565(A000040(n+1))-n)`
-/

namespace A175218.P2603928502705035852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A141565 (A000040 (n + 1)).toNat - (n : ℤ)).toNat

end

end A175218.P2603928502705035852

namespace A175218

/-- `A002808(A141565(A000040(n+1))-n)` -/
def P2603928502705035852.Spec : Prop :=
  ∀ n, P2603928502705035852.a n = A175218 (n + 1)

end A175218

/-! ## A175218.P18282597397508720993

`A002808(A064800(A000040(n+1))-n)`
-/

namespace A175218.P18282597397508720993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A064800 (A000040 (n + 1)).toNat - (n : ℤ)).toNat

end

end A175218.P18282597397508720993

namespace A175218

/-- `A002808(A064800(A000040(n+1))-n)` -/
def P18282597397508720993.Spec : Prop :=
  ∀ n, P18282597397508720993.a n = A175218 (n + 1)

end A175218

/-! ## A175218.P1088096705144422962

`A002808(A062298(A065858(n+1))-n)`
-/

namespace A175218.P1088096705144422962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A062298 (A065858 (n + 1)).toNat - (n : ℤ)).toNat

end

end A175218.P1088096705144422962

namespace A175218

/-- `A002808(A062298(A065858(n+1))-n)` -/
def P1088096705144422962.Spec : Prop :=
  ∀ n, P1088096705144422962.a n = A175218 (n + 1)

end A175218

/-! ## A175218.P2053461350226257899

`A067747(A129069(n+1)-(2*n+1))`
-/

namespace A175218.P2053461350226257899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A129069 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A175218.P2053461350226257899

namespace A175218

/-- `A067747(A129069(n+1)-(2*n+1))` -/
def P2053461350226257899.Spec : Prop :=
  ∀ n, P2053461350226257899.a n = A175218 (n + 1)

end A175218

/-! ## A175218.P385921658032109154

`A139636(A175217(n+1))`
-/

namespace A175218.P385921658032109154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139636 (A175217 (n + 1)).toNat

end

end A175218.P385921658032109154

namespace A175218

/-- `A139636(A175217(n+1))` -/
def P385921658032109154.Spec : Prop :=
  ∀ n, P385921658032109154.a n = A175218 (n + 1)

end A175218

/-! ## A175218.P14303128191989051251

`A139636(A002808(A000040(n+1)-n))`
-/

namespace A175218.P14303128191989051251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139636 (A002808 (A000040 (n + 1) - (n : ℤ)).toNat).toNat

end

end A175218.P14303128191989051251

namespace A175218

/-- `A139636(A002808(A000040(n+1)-n))` -/
def P14303128191989051251.Spec : Prop :=
  ∀ n, P14303128191989051251.a n = A175218 (n + 1)

end A175218

/-!
# A175219: The fourth nonprimes after the primes.

The programs for A175219, the canonical program `A175219.P11185620326442108862` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175219 has offset 1).

The definition of A175219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175219.P11185620326442108862

`A002808(p?[abs(xor(n, -2))]+2-n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175219

/-- `A002808(p?[abs(xor(n, -2))]+2-n)` -/
def P11185620326442108862.Spec : Prop :=
  ∀ n, P11185620326442108862.a n = A175219 (n + 1)

theorem P11185620326442108862.correct : P11185620326442108862.Spec := by
  intro n
  simp only [A175219, Nat.add_sub_cancel]

end A175219

/-! ## A175219.P2684120327052695350

`A002808(p?[abs(xor(n, -2))]-(n-2))`
-/

namespace A175219.P2684120327052695350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - ((n : ℤ) - 2)).toNat

end

end A175219.P2684120327052695350

namespace A175219

/-- `A002808(p?[abs(xor(n, -2))]-(n-2))` -/
def P2684120327052695350.Spec : Prop :=
  ∀ n, P2684120327052695350.a n = A175219 (n + 1)

end A175219

/-! ## A175219.P9838442895541193470

`A002808(p?[xor(1, n)+1]-(n-2))`
-/

namespace A175219.P9838442895541193470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A175219.P9838442895541193470

namespace A175219

/-- `A002808(p?[xor(1, n)+1]-(n-2))` -/
def P9838442895541193470.Spec : Prop :=
  ∀ n, P9838442895541193470.a n = A175219 (n + 1)

end A175219

/-! ## A175219.P10912752696763454611

`A018252(p?[xor(1, n)+1]+3-n)`
-/

namespace A175219.P10912752696763454611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + (3 - (n : ℤ))).toNat

end

end A175219.P10912752696763454611

namespace A175219

/-- `A018252(p?[xor(1, n)+1]+3-n)` -/
def P10912752696763454611.Spec : Prop :=
  ∀ n, P10912752696763454611.a n = A175219 (n + 1)

end A175219

/-! ## A175219.P8127088388301066324

`A002808(p?[n%3+n]-(n-2))`
-/

namespace A175219.P8127088388301066324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A175219.P8127088388301066324

namespace A175219

/-- `A002808(p?[n%3+n]-(n-2))` -/
def P8127088388301066324.Spec : Prop :=
  ∀ n, P8127088388301066324.a n = A175219 (n + 1)

end A175219

/-! ## A175219.P15802460199001232305

`A176423(A014692(n+1)+1)`
-/

namespace A175219.P15802460199001232305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (A014692 (n + 1) + 1).toNat

end

end A175219.P15802460199001232305

namespace A175219

/-- `A176423(A014692(n+1)+1)` -/
def P15802460199001232305.Spec : Prop :=
  ∀ n, P15802460199001232305.a n = A175219 (n + 1)

end A175219

/-! ## A175219.P11667410964028914557

`A002808(A014692(n+1)+2)`
-/

namespace A175219.P11667410964028914557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A014692 (n + 1) + 2).toNat

end

end A175219.P11667410964028914557

namespace A175219

/-- `A002808(A014692(n+1)+2)` -/
def P11667410964028914557.Spec : Prop :=
  ∀ n, P11667410964028914557.a n = A175219 (n + 1)

end A175219

/-! ## A175219.P5085700697920003234

`A176423(A014689(n+1)+2)`
-/

namespace A175219.P5085700697920003234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (A014689 (n + 1) + 2).toNat

end

end A175219.P5085700697920003234

namespace A175219

/-- `A176423(A014689(n+1)+2)` -/
def P5085700697920003234.Spec : Prop :=
  ∀ n, P5085700697920003234.a n = A175219 (n + 1)

end A175219

/-! ## A175219.P16970746440286976334

`A002808(A052147(n+1)-n)`
-/

namespace A175219.P16970746440286976334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A052147 (n + 1) - (n : ℤ)).toNat

end

end A175219.P16970746440286976334

namespace A175219

/-- `A002808(A052147(n+1)-n)` -/
def P16970746440286976334.Spec : Prop :=
  ∀ n, P16970746440286976334.a n = A175219 (n + 1)

end A175219

/-! ## A175219.P17431903159019619194

`A018252(A113935(n+1)-n)`
-/

namespace A175219.P17431903159019619194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A113935 (n + 1) - (n : ℤ)).toNat

end

end A175219.P17431903159019619194

namespace A175219

/-- `A018252(A113935(n+1)-n)` -/
def P17431903159019619194.Spec : Prop :=
  ∀ n, P17431903159019619194.a n = A175219 (n + 1)

end A175219

/-! ## A175219.P1790231840209077761

`A065090(A175221(n+1)-n)`
-/

namespace A175219.P1790231840209077761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A175221 (n + 1) - (n : ℤ)).toNat

end

end A175219.P1790231840209077761

namespace A175219

/-- `A065090(A175221(n+1)-n)` -/
def P1790231840209077761.Spec : Prop :=
  ∀ n, P1790231840209077761.a n = A175219 (n + 1)

end A175219

/-! ## A175219.P16170244017669018827

`A141468(A175221(n+1)-n)`
-/

namespace A175219.P16170244017669018827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A175221 (n + 1) - (n : ℤ)).toNat

end

end A175219.P16170244017669018827

namespace A175219

/-- `A141468(A175221(n+1)-n)` -/
def P16170244017669018827.Spec : Prop :=
  ∀ n, P16170244017669018827.a n = A175219 (n + 1)

end A175219

/-! ## A175219.P6335428440270383930

`A139636(A175218(n+1))`
-/

namespace A175219.P6335428440270383930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139636 (A175218 (n + 1)).toNat

end

end A175219.P6335428440270383930

namespace A175219

/-- `A139636(A175218(n+1))` -/
def P6335428440270383930.Spec : Prop :=
  ∀ n, P6335428440270383930.a n = A175219 (n + 1)

end A175219

/-!
# A175220: The fifth nonprimes after the primes.

The programs for A175220, the canonical program `A175220.P9357636915036204970` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175220 has offset 1).

The definition of A175220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175220.P9357636915036204970

`A002808(A014692(n+1)+3)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175220

/-- `A002808(A014692(n+1)+3)` -/
def P9357636915036204970.Spec : Prop :=
  ∀ n, P9357636915036204970.a n = A175220 (n + 1)

theorem P9357636915036204970.correct : P9357636915036204970.Spec := by
  intro n
  simp only [A175220, Nat.add_sub_cancel]

end A175220

/-! ## A175220.P1588684240477082445

`A002808(A014689(n+1)+4)`
-/

namespace A175220.P1588684240477082445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A014689 (n + 1) + 4).toNat

end

end A175220.P1588684240477082445

namespace A175220

/-- `A002808(A014689(n+1)+4)` -/
def P1588684240477082445.Spec : Prop :=
  ∀ n, P1588684240477082445.a n = A175220 (n + 1)

theorem P1588684240477082445.correct : P1588684240477082445.Spec := by
  intro n
  simp only [A175220, Nat.add_sub_cancel, A175220.P1588684240477082445.a, A175220.P9357636915036204970.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A014689, A014689.P6286543075765329050.a, A014692, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175220

/-! ## A175220.P17973573984735046491

`A018252(A014692(n+1)+4)`
-/

namespace A175220.P17973573984735046491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A014692 (n + 1) + 4).toNat

end

end A175220.P17973573984735046491

namespace A175220

/-- `A018252(A014692(n+1)+4)` -/
def P17973573984735046491.Spec : Prop :=
  ∀ n, P17973573984735046491.a n = A175220 (n + 1)

end A175220

/-! ## A175220.P14919467499697826307

`A018252(A014689(n+1)+5)`
-/

namespace A175220.P14919467499697826307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A014689 (n + 1) + 5).toNat

end

end A175220.P14919467499697826307

namespace A175220

/-- `A018252(A014689(n+1)+5)` -/
def P14919467499697826307.Spec : Prop :=
  ∀ n, P14919467499697826307.a n = A175220 (n + 1)

end A175220

/-! ## A175220.P3434644537452732173

`A141468(A014692(n+1)+5)`
-/

namespace A175220.P3434644537452732173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A014692 (n + 1) + 5).toNat

end

end A175220.P3434644537452732173

namespace A175220

/-- `A141468(A014692(n+1)+5)` -/
def P3434644537452732173.Spec : Prop :=
  ∀ n, P3434644537452732173.a n = A175220 (n + 1)

end A175220

/-! ## A175220.P5503722514203650533

`A002808(A113935(n+1)-n)`
-/

namespace A175220.P5503722514203650533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A113935 (n + 1) - (n : ℤ)).toNat

end

end A175220.P5503722514203650533

namespace A175220

/-- `A002808(A113935(n+1)-n)` -/
def P5503722514203650533.Spec : Prop :=
  ∀ n, P5503722514203650533.a n = A175220 (n + 1)

theorem P5503722514203650533.correct : P5503722514203650533.Spec := by
  intro n
  simp only [A175220, Nat.add_sub_cancel, A175220.P5503722514203650533.a, A175220.P9357636915036204970.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A014692, A014692.P2004927767556050134.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175220

/-! ## A175220.P10590998321819934575

`A018252(A175221(n+1)-n)`
-/

namespace A175220.P10590998321819934575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A175221 (n + 1) - (n : ℤ)).toNat

end

end A175220.P10590998321819934575

namespace A175220

/-- `A018252(A175221(n+1)-n)` -/
def P10590998321819934575.Spec : Prop :=
  ∀ n, P10590998321819934575.a n = A175220 (n + 1)

end A175220

/-! ## A175220.P1531005653716662393

`A002808(A052147(n+1)+1-n)`
-/

namespace A175220.P1531005653716662393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A052147 (n + 1) + (1 - (n : ℤ))).toNat

end

end A175220.P1531005653716662393

namespace A175220

/-- `A002808(A052147(n+1)+1-n)` -/
def P1531005653716662393.Spec : Prop :=
  ∀ n, P1531005653716662393.a n = A175220 (n + 1)

theorem P1531005653716662393.correct : P1531005653716662393.Spec := by
  intro n
  simp only [A175220, Nat.add_sub_cancel, A175220.P1531005653716662393.a, A175220.P9357636915036204970.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A014692, A014692.P2004927767556050134.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175220

/-! ## A175220.P7050412622618772376

`A018252(A113935(n+1)+1-n)`
-/

namespace A175220.P7050412622618772376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A113935 (n + 1) + (1 - (n : ℤ))).toNat

end

end A175220.P7050412622618772376

namespace A175220

/-- `A018252(A113935(n+1)+1-n)` -/
def P7050412622618772376.Spec : Prop :=
  ∀ n, P7050412622618772376.a n = A175220 (n + 1)

end A175220

/-! ## A175220.P15257959521678884978

`A002808(A175221(n+1)-(n+1))`
-/

namespace A175220.P15257959521678884978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A175221 (n + 1) - (n + 1 : ℤ)).toNat

end

end A175220.P15257959521678884978

namespace A175220

/-- `A002808(A175221(n+1)-(n+1))` -/
def P15257959521678884978.Spec : Prop :=
  ∀ n, P15257959521678884978.a n = A175220 (n + 1)

theorem P15257959521678884978.correct : P15257959521678884978.Spec := by
  intro n
  simp only [A175220, Nat.add_sub_cancel, A175220.P15257959521678884978.a, A175220.P9357636915036204970.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A014692, A014692.P2004927767556050134.a, A175221, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175220

/-! ## A175220.P12379506687682840183

`A141468(A175221(n+1)+1-n)`
-/

namespace A175220.P12379506687682840183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A175221 (n + 1) + (1 - (n : ℤ))).toNat

end

end A175220.P12379506687682840183

namespace A175220

/-- `A141468(A175221(n+1)+1-n)` -/
def P12379506687682840183.Spec : Prop :=
  ∀ n, P12379506687682840183.a n = A175220 (n + 1)

end A175220

/-! ## A175220.P3008514777165893769

`A002808(A008864(n+1)+2-n)`
-/

namespace A175220.P3008514777165893769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A008864 (n + 1) + (2 - (n : ℤ))).toNat

end

end A175220.P3008514777165893769

namespace A175220

/-- `A002808(A008864(n+1)+2-n)` -/
def P3008514777165893769.Spec : Prop :=
  ∀ n, P3008514777165893769.a n = A175220 (n + 1)

theorem P3008514777165893769.correct : P3008514777165893769.Spec := by
  intro n
  simp only [A175220, Nat.add_sub_cancel, A175220.P3008514777165893769.a, A175220.P9357636915036204970.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A008864, A008864.P9177617808325052279.a, A014692, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175220

/-! ## A175220.P5808827582701948770

`A018252(A052147(n+1)+2-n)`
-/

namespace A175220.P5808827582701948770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A052147 (n + 1) + (2 - (n : ℤ))).toNat

end

end A175220.P5808827582701948770

namespace A175220

/-- `A018252(A052147(n+1)+2-n)` -/
def P5808827582701948770.Spec : Prop :=
  ∀ n, P5808827582701948770.a n = A175220 (n + 1)

end A175220

/-! ## A175220.P318458072494609636

`A002808(A000040(n+1)+3-n)`
-/

namespace A175220.P318458072494609636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A000040 (n + 1) + (3 - (n : ℤ))).toNat

end

end A175220.P318458072494609636

namespace A175220

/-- `A002808(A000040(n+1)+3-n)` -/
def P318458072494609636.Spec : Prop :=
  ∀ n, P318458072494609636.a n = A175220 (n + 1)

theorem P318458072494609636.correct : P318458072494609636.Spec := by
  intro n
  simp only [A175220, Nat.add_sub_cancel, A175220.P318458072494609636.a, A175220.P9357636915036204970.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A014692, A014692.P2004927767556050134.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175220

/-! ## A175220.P7383738825706132193

`A018252(A000040(n+1)+4-n)`
-/

namespace A175220.P7383738825706132193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A000040 (n + 1) + (4 - (n : ℤ))).toNat

end

end A175220.P7383738825706132193

namespace A175220

/-- `A018252(A000040(n+1)+4-n)` -/
def P7383738825706132193.Spec : Prop :=
  ∀ n, P7383738825706132193.a n = A175220 (n + 1)

end A175220

/-! ## A175220.P7851571558058330435

`A018252(record[A000010(n+1)+5]-n)`
-/

namespace A175220.P7851571558058330435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A175220.P7851571558058330435

namespace A175220

/-- `A018252(record[A000010(n+1)+5]-n)` -/
def P7851571558058330435.Spec : Prop :=
  ∀ n, P7851571558058330435.a n = A175220 (n + 1)

end A175220

/-! ## A175220.P9710168517891256448

`A176423(A014692(n+1)+2)`
-/

namespace A175220.P9710168517891256448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (A014692 (n + 1) + 2).toNat

end

end A175220.P9710168517891256448

namespace A175220

/-- `A176423(A014692(n+1)+2)` -/
def P9710168517891256448.Spec : Prop :=
  ∀ n, P9710168517891256448.a n = A175220 (n + 1)

end A175220

/-! ## A175220.P1071305800455479032

`A056653(A175221(n+1)-(n+1))`
-/

namespace A175220.P1071305800455479032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (A175221 (n + 1) - (n + 1 : ℤ)).toNat

end

end A175220.P1071305800455479032

namespace A175220

/-- `A056653(A175221(n+1)-(n+1))` -/
def P1071305800455479032.Spec : Prop :=
  ∀ n, P1071305800455479032.a n = A175220 (n + 1)

end A175220

/-! ## A175220.P7571042997618818774

`A176423(A000040(n+1)+2-n)`
-/

namespace A175220.P7571042997618818774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (A000040 (n + 1) + (2 - (n : ℤ))).toNat

end

end A175220.P7571042997618818774

namespace A175220

/-- `A176423(A000040(n+1)+2-n)` -/
def P7571042997618818774.Spec : Prop :=
  ∀ n, P7571042997618818774.a n = A175220 (n + 1)

end A175220

/-! ## A175220.P13936596336167792944

`A176423(A175221(n+1)-(n+2))`
-/

namespace A175220.P13936596336167792944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (A175221 (n + 1) - (n + 2 : ℤ)).toNat

end

end A175220.P13936596336167792944

namespace A175220

/-- `A176423(A175221(n+1)-(n+2))` -/
def P13936596336167792944.Spec : Prop :=
  ∀ n, P13936596336167792944.a n = A175220 (n + 1)

end A175220

/-!
# A175221: a(n) = prime(n) + 4.

The programs for A175221, the canonical program `A175221.P11226718615464862765` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175221 has offset 1).

The definition of A175221 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+4` (program `A175221.P11226718615464862765`, by `A175221.P11226718615464862765.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175221.P11607856886314794758

`A052147(n+1)+2`
-/

namespace A175221.P11607856886314794758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + 2

end

end A175221.P11607856886314794758

namespace A175221

/-- `A052147(n+1)+2` -/
def P11607856886314794758.Spec : Prop :=
  ∀ n, P11607856886314794758.a n = A175221 (n + 1)

theorem P11607856886314794758.correct : P11607856886314794758.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel, A175221.P11607856886314794758.a, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175221

/-! ## A175221.P14238882950422816668

`A175222(n+1)-1`
-/

namespace A175221.P14238882950422816668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) - 1

end

end A175221.P14238882950422816668

namespace A175221

/-- `A175222(n+1)-1` -/
def P14238882950422816668.Spec : Prop :=
  ∀ n, P14238882950422816668.a n = A175221 (n + 1)

theorem P14238882950422816668.correct : P14238882950422816668.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel, A175221.P14238882950422816668.a, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175222, A175222.P10933161600630644520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175221

/-! ## A175221.P5225540240322289873

`A008864(n+1)+3`
-/

namespace A175221.P5225540240322289873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 3

end

end A175221.P5225540240322289873

namespace A175221

/-- `A008864(n+1)+3` -/
def P5225540240322289873.Spec : Prop :=
  ∀ n, P5225540240322289873.a n = A175221 (n + 1)

theorem P5225540240322289873.correct : P5225540240322289873.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel, A175221.P5225540240322289873.a, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175221

/-! ## A175221.P14285177507510684394

`A139049(n+1)-2`
-/

namespace A175221.P14285177507510684394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) - 2

end

end A175221.P14285177507510684394

namespace A175221

/-- `A139049(n+1)-2` -/
def P14285177507510684394.Spec : Prop :=
  ∀ n, P14285177507510684394.a n = A175221 (n + 1)

theorem P14285177507510684394.correct : P14285177507510684394.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel, A175221.P14285177507510684394.a, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A139049, A139049.P7343931796022599555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175221

/-! ## A175221.P11226718615464862765

`A000040(n+1)+4`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175221

/-- `A000040(n+1)+4` -/
def P11226718615464862765.Spec : Prop :=
  ∀ n, P11226718615464862765.a n = A175221 (n + 1)

theorem P11226718615464862765.correct : P11226718615464862765.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel]

end A175221

/-! ## A175221.P5913150651378538115

`A175223(n+1)-3`
-/

namespace A175221.P5913150651378538115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175223 (n + 1) - 3

end

end A175221.P5913150651378538115

namespace A175221

/-- `A175223(n+1)-3` -/
def P5913150651378538115.Spec : Prop :=
  ∀ n, P5913150651378538115.a n = A175221 (n + 1)

theorem P5913150651378538115.correct : P5913150651378538115.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel, A175221.P5913150651378538115.a, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175223, A175223.P2338184414980826064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175221

/-! ## A175221.P12312082794619697870

`A175224(n+1)-4`
-/

namespace A175221.P12312082794619697870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) - 4

end

end A175221.P12312082794619697870

namespace A175221

/-- `A175224(n+1)-4` -/
def P12312082794619697870.Spec : Prop :=
  ∀ n, P12312082794619697870.a n = A175221 (n + 1)

theorem P12312082794619697870.correct : P12312082794619697870.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel, A175221.P12312082794619697870.a, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175224, A175224.P1386793928636688251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175221

/-! ## A175221.P16505301420274576971

`A140353(n+1)-5`
-/

namespace A175221.P16505301420274576971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) - 5

end

end A175221.P16505301420274576971

namespace A175221

/-- `A140353(n+1)-5` -/
def P16505301420274576971.Spec : Prop :=
  ∀ n, P16505301420274576971.a n = A175221 (n + 1)

theorem P16505301420274576971.correct : P16505301420274576971.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel, A175221.P16505301420274576971.a, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A140353, A140353.P3819678062006389091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175221

/-! ## A175221.P3354830121420633877

`A175225(n+1)-6`
-/

namespace A175221.P3354830121420633877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) - 6

end

end A175221.P3354830121420633877

namespace A175221

/-- `A175225(n+1)-6` -/
def P3354830121420633877.Spec : Prop :=
  ∀ n, P3354830121420633877.a n = A175221 (n + 1)

theorem P3354830121420633877.correct : P3354830121420633877.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel, A175221.P3354830121420633877.a, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175225, A175225.P11130791090975499720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175221

/-! ## A175221.P12682419600037183555

`p?[round(8*n/7)]+4`
-/

namespace A175221.P12682419600037183555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4

end

end A175221.P12682419600037183555

namespace A175221

/-- `p?[round(8*n/7)]+4` -/
def P12682419600037183555.Spec : Prop :=
  ∀ n, P12682419600037183555.a n = A175221 (n + 1)

end A175221

/-! ## A175221.P13774148664306130485

`Δ[A007504(n)]+4`
-/

namespace A175221.P13774148664306130485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4

end

end A175221.P13774148664306130485

namespace A175221

/-- `Δ[A007504(n)]+4` -/
def P13774148664306130485.Spec : Prop :=
  ∀ n, P13774148664306130485.a n = A175221 (n + 1)

end A175221

/-! ## A175221.P17635066680073280652

`∑[A075526(n)]+5`
-/

namespace A175221.P17635066680073280652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A175221.P17635066680073280652

namespace A175221

/-- `∑[A075526(n)]+5` -/
def P17635066680073280652.Spec : Prop :=
  ∀ n, P17635066680073280652.a n = A175221 (n + 1)

end A175221

/-! ## A175221.P8130294992387229786

`A113935(n+1)+1`
-/

namespace A175221.P8130294992387229786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + 1

end

end A175221.P8130294992387229786

namespace A175221

/-- `A113935(n+1)+1` -/
def P8130294992387229786.Spec : Prop :=
  ∀ n, P8130294992387229786.a n = A175221 (n + 1)

theorem P8130294992387229786.correct : P8130294992387229786.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel, A175221.P8130294992387229786.a, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175221

/-! ## A175221.P6902153476110988381

`A028815(n+1)+3`
-/

namespace A175221.P6902153476110988381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + 3

end

end A175221.P6902153476110988381

namespace A175221

/-- `A028815(n+1)+3` -/
def P6902153476110988381.Spec : Prop :=
  ∀ n, P6902153476110988381.a n = A175221 (n + 1)

end A175221

/-! ## A175221.P841621098282955503

`5+A006093(n+1)`
-/

namespace A175221.P841621098282955503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 + A006093 (n + 1)

end

end A175221.P841621098282955503

namespace A175221

/-- `5+A006093(n+1)` -/
def P841621098282955503.Spec : Prop :=
  ∀ n, P841621098282955503.a n = A175221 (n + 1)

theorem P841621098282955503.correct : P841621098282955503.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel, A175221.P841621098282955503.a, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175221

/-! ## A175221.P7706713912980258197

`A040976(n+1)+6`
-/

namespace A175221.P7706713912980258197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 6

end

end A175221.P7706713912980258197

namespace A175221

/-- `A040976(n+1)+6` -/
def P7706713912980258197.Spec : Prop :=
  ∀ n, P7706713912980258197.a n = A175221 (n + 1)

theorem P7706713912980258197.correct : P7706713912980258197.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel, A175221.P7706713912980258197.a, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175221

/-! ## A175221.P5578114388796978668

`sqrt(A001248(n+1))+4`
-/

namespace A175221.P5578114388796978668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) + 4

end

end A175221.P5578114388796978668

namespace A175221

/-- `sqrt(A001248(n+1))+4` -/
def P5578114388796978668.Spec : Prop :=
  ∀ n, P5578114388796978668.a n = (A175221 (n + 1) : ℝ)

end A175221

/-! ## A175221.P7659069783221740155

`sqrt(A005722(n+1))+5`
-/

namespace A175221.P7659069783221740155
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ) + 5

end

end A175221.P7659069783221740155

namespace A175221

/-- `sqrt(A005722(n+1))+5` -/
def P7659069783221740155.Spec : Prop :=
  ∀ n, P7659069783221740155.a n = (A175221 (n + 1) : ℝ)

end A175221

/-! ## A175221.P16887257625261886466

`A001748(n+1)/3+4`
-/

namespace A175221.P16887257625261886466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3 + 4

end

end A175221.P16887257625261886466

namespace A175221

/-- `A001748(n+1)/3+4` -/
def P16887257625261886466.Spec : Prop :=
  ∀ n, P16887257625261886466.a n = (A175221 (n + 1) : ℚ)

theorem P16887257625261886466.correct : P16887257625261886466.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel, A175221.P16887257625261886466.a, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175221

/-! ## A175221.P1722200148701117979

`A037168(n+1)/2+5`
-/

namespace A175221.P1722200148701117979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037168 (n + 1) : ℚ) / 2 + 5

end

end A175221.P1722200148701117979

namespace A175221

/-- `A037168(n+1)/2+5` -/
def P1722200148701117979.Spec : Prop :=
  ∀ n, P1722200148701117979.a n = (A175221 (n + 1) : ℚ)

theorem P1722200148701117979.correct : P1722200148701117979.Spec := by
  intro n
  simp only [A175221, Nat.add_sub_cancel, A175221.P1722200148701117979.a, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175221

/-!
# A175222: a(n) = prime(n) + 5.

The programs for A175222, the canonical program `A175222.P10933161600630644520` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175222 has offset 1).

The definition of A175222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+5` (program `A175222.P10933161600630644520`, by `A175222.P10933161600630644520.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175222.P10933161600630644520

`A000040(n+1)+5`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175222

/-- `A000040(n+1)+5` -/
def P10933161600630644520.Spec : Prop :=
  ∀ n, P10933161600630644520.a n = A175222 (n + 1)

theorem P10933161600630644520.correct : P10933161600630644520.Spec := by
  intro n
  simp only [A175222, Nat.add_sub_cancel]

end A175222

/-! ## A175222.P7380041721511931274

`p?[round(8*n/7)]+5`
-/

namespace A175222.P7380041721511931274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5

end

end A175222.P7380041721511931274

namespace A175222

/-- `p?[round(8*n/7)]+5` -/
def P7380041721511931274.Spec : Prop :=
  ∀ n, P7380041721511931274.a n = A175222 (n + 1)

end A175222

/-! ## A175222.P10819986439873107874

`Δ[A007504(n)]+5`
-/

namespace A175222.P10819986439873107874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 5

end

end A175222.P10819986439873107874

namespace A175222

/-- `Δ[A007504(n)]+5` -/
def P10819986439873107874.Spec : Prop :=
  ∀ n, P10819986439873107874.a n = A175222 (n + 1)

end A175222

/-! ## A175222.P5020628154697894821

`A175221(n+1)+1`
-/

namespace A175222.P5020628154697894821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + 1

end

end A175222.P5020628154697894821

namespace A175222

/-- `A175221(n+1)+1` -/
def P5020628154697894821.Spec : Prop :=
  ∀ n, P5020628154697894821.a n = A175222 (n + 1)

theorem P5020628154697894821.correct : P5020628154697894821.Spec := by
  intro n
  simp only [A175222, Nat.add_sub_cancel, A175222.P5020628154697894821.a, A175222.P10933161600630644520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175221, A175221.P11226718615464862765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175222

/-! ## A175222.P1160818010374551717

`A113935(n+1)+2`
-/

namespace A175222.P1160818010374551717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + 2

end

end A175222.P1160818010374551717

namespace A175222

/-- `A113935(n+1)+2` -/
def P1160818010374551717.Spec : Prop :=
  ∀ n, P1160818010374551717.a n = A175222 (n + 1)

theorem P1160818010374551717.correct : P1160818010374551717.Spec := by
  intro n
  simp only [A175222, Nat.add_sub_cancel, A175222.P1160818010374551717.a, A175222.P10933161600630644520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175222

/-! ## A175222.P17246073026520274565

`A139049(n+1)-1`
-/

namespace A175222.P17246073026520274565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) - 1

end

end A175222.P17246073026520274565

namespace A175222

/-- `A139049(n+1)-1` -/
def P17246073026520274565.Spec : Prop :=
  ∀ n, P17246073026520274565.a n = A175222 (n + 1)

theorem P17246073026520274565.correct : P17246073026520274565.Spec := by
  intro n
  simp only [A175222, Nat.add_sub_cancel, A175222.P17246073026520274565.a, A175222.P10933161600630644520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A139049, A139049.P7343931796022599555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175222

/-! ## A175222.P9321005773964826380

`A052147(n+1)+3`
-/

namespace A175222.P9321005773964826380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + 3

end

end A175222.P9321005773964826380

namespace A175222

/-- `A052147(n+1)+3` -/
def P9321005773964826380.Spec : Prop :=
  ∀ n, P9321005773964826380.a n = A175222 (n + 1)

theorem P9321005773964826380.correct : P9321005773964826380.Spec := by
  intro n
  simp only [A175222, Nat.add_sub_cancel, A175222.P9321005773964826380.a, A175222.P10933161600630644520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175222

/-! ## A175222.P3567890934654244029

`A175223(n+1)-2`
-/

namespace A175222.P3567890934654244029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175223 (n + 1) - 2

end

end A175222.P3567890934654244029

namespace A175222

/-- `A175223(n+1)-2` -/
def P3567890934654244029.Spec : Prop :=
  ∀ n, P3567890934654244029.a n = A175222 (n + 1)

theorem P3567890934654244029.correct : P3567890934654244029.Spec := by
  intro n
  simp only [A175222, Nat.add_sub_cancel, A175222.P3567890934654244029.a, A175222.P10933161600630644520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175223, A175223.P2338184414980826064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175222

/-! ## A175222.P11688894007112507608

`A008864(n+1)+4`
-/

namespace A175222.P11688894007112507608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 4

end

end A175222.P11688894007112507608

namespace A175222

/-- `A008864(n+1)+4` -/
def P11688894007112507608.Spec : Prop :=
  ∀ n, P11688894007112507608.a n = A175222 (n + 1)

theorem P11688894007112507608.correct : P11688894007112507608.Spec := by
  intro n
  simp only [A175222, Nat.add_sub_cancel, A175222.P11688894007112507608.a, A175222.P10933161600630644520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175222

/-! ## A175222.P15750369823164736678

`A028815(n+1)+4`
-/

namespace A175222.P15750369823164736678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + 4

end

end A175222.P15750369823164736678

namespace A175222

/-- `A028815(n+1)+4` -/
def P15750369823164736678.Spec : Prop :=
  ∀ n, P15750369823164736678.a n = A175222 (n + 1)

end A175222

/-! ## A175222.P2283917958406570049

`A175224(n+1)-3`
-/

namespace A175222.P2283917958406570049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) - 3

end

end A175222.P2283917958406570049

namespace A175222

/-- `A175224(n+1)-3` -/
def P2283917958406570049.Spec : Prop :=
  ∀ n, P2283917958406570049.a n = A175222 (n + 1)

theorem P2283917958406570049.correct : P2283917958406570049.Spec := by
  intro n
  simp only [A175222, Nat.add_sub_cancel, A175222.P2283917958406570049.a, A175222.P10933161600630644520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175224, A175224.P1386793928636688251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175222

/-! ## A175222.P8128392430088812098

`A140353(n+1)-4`
-/

namespace A175222.P8128392430088812098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) - 4

end

end A175222.P8128392430088812098

namespace A175222

/-- `A140353(n+1)-4` -/
def P8128392430088812098.Spec : Prop :=
  ∀ n, P8128392430088812098.a n = A175222 (n + 1)

theorem P8128392430088812098.correct : P8128392430088812098.Spec := by
  intro n
  simp only [A175222, Nat.add_sub_cancel, A175222.P8128392430088812098.a, A175222.P10933161600630644520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A140353, A140353.P3819678062006389091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175222

/-! ## A175222.P18382653663105421446

`A006093(n+1)+6`
-/

namespace A175222.P18382653663105421446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 6

end

end A175222.P18382653663105421446

namespace A175222

/-- `A006093(n+1)+6` -/
def P18382653663105421446.Spec : Prop :=
  ∀ n, P18382653663105421446.a n = A175222 (n + 1)

theorem P18382653663105421446.correct : P18382653663105421446.Spec := by
  intro n
  simp only [A175222, Nat.add_sub_cancel, A175222.P18382653663105421446.a, A175222.P10933161600630644520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175222

/-! ## A175222.P6975305416552862620

`A040976(n+1)+7`
-/

namespace A175222.P6975305416552862620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 7

end

end A175222.P6975305416552862620

namespace A175222

/-- `A040976(n+1)+7` -/
def P6975305416552862620.Spec : Prop :=
  ∀ n, P6975305416552862620.a n = A175222 (n + 1)

theorem P6975305416552862620.correct : P6975305416552862620.Spec := by
  intro n
  simp only [A175222, Nat.add_sub_cancel, A175222.P6975305416552862620.a, A175222.P10933161600630644520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175222

/-! ## A175222.P17947459063889365590

`A086801(n+1)+8`
-/

namespace A175222.P17947459063889365590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 8

end

end A175222.P17947459063889365590

namespace A175222

/-- `A086801(n+1)+8` -/
def P17947459063889365590.Spec : Prop :=
  ∀ n, P17947459063889365590.a n = A175222 (n + 1)

theorem P17947459063889365590.correct : P17947459063889365590.Spec := by
  intro n
  simp only [A175222, Nat.add_sub_cancel, A175222.P17947459063889365590.a, A175222.P10933161600630644520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175222

/-! ## A175222.P13657495993035243970

`sqrt(A110833(n+1))+4`
-/

namespace A175222.P13657495993035243970
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110833 (n + 1) : ℝ) + 4

end

end A175222.P13657495993035243970

namespace A175222

/-- `sqrt(A110833(n+1))+4` -/
def P13657495993035243970.Spec : Prop :=
  ∀ n, P13657495993035243970.a n = (A175222 (n + 1) : ℝ)

end A175222

/-! ## A175222.P3119887930913695490

`sqrt(A001248(n+1))+5`
-/

namespace A175222.P3119887930913695490
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) + 5

end

end A175222.P3119887930913695490

namespace A175222

/-- `sqrt(A001248(n+1))+5` -/
def P3119887930913695490.Spec : Prop :=
  ∀ n, P3119887930913695490.a n = (A175222 (n + 1) : ℝ)

end A175222

/-! ## A175222.P1177680799730077553

`∑[A054541(n+1)]+5`
-/

namespace A175222.P1177680799730077553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A175222.P1177680799730077553

namespace A175222

/-- `∑[A054541(n+1)]+5` -/
def P1177680799730077553.Spec : Prop :=
  ∀ n, P1177680799730077553.a n = A175222 (n + 1)

end A175222

/-! ## A175222.P4973325007649262191

`∑{d}[p?[A259153(n)], #+2]`
-/

namespace A175222.P4973325007649262191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d + 2)

end

end A175222.P4973325007649262191

namespace A175222

/-- `∑{d}[p?[A259153(n)], #+2]` -/
def P4973325007649262191.Spec : Prop :=
  ∀ n, (P4973325007649262191.a n : ℤ) = A175222 (n + 1)

end A175222

/-! ## A175222.P8263229899695874045

`A089241(n+1)/2+4`
-/

namespace A175222.P8263229899695874045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089241 (n + 1) : ℚ) / 2 + 4

end

end A175222.P8263229899695874045

namespace A175222

/-- `A089241(n+1)/2+4` -/
def P8263229899695874045.Spec : Prop :=
  ∀ n, P8263229899695874045.a n = (A175222 (n + 1) : ℚ)

theorem P8263229899695874045.correct : P8263229899695874045.Spec := by
  intro n
  simp only [A175222, Nat.add_sub_cancel, A175222.P8263229899695874045.a, A175222.P10933161600630644520.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089241, A089241.P14705987553220613803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175222

/-!
# A175223: a(n) = prime(n) + 7.

The programs for A175223, the canonical program `A175223.P2338184414980826064` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175223 has offset 1).

The definition of A175223 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+7` (program `A175223.P2338184414980826064`, by `A175223.P2338184414980826064.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175223.P2338184414980826064

`A000040(n+1)+7`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175223

/-- `A000040(n+1)+7` -/
def P2338184414980826064.Spec : Prop :=
  ∀ n, P2338184414980826064.a n = A175223 (n + 1)

theorem P2338184414980826064.correct : P2338184414980826064.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel]

end A175223

/-! ## A175223.P405598078784094311

`p?[round(8*n/7)]+7`
-/

namespace A175223.P405598078784094311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 7

end

end A175223.P405598078784094311

namespace A175223

/-- `p?[round(8*n/7)]+7` -/
def P405598078784094311.Spec : Prop :=
  ∀ n, P405598078784094311.a n = A175223 (n + 1)

end A175223

/-! ## A175223.P1744404171439566856

`Δ[A007504(n)]+7`
-/

namespace A175223.P1744404171439566856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 7

end

end A175223.P1744404171439566856

namespace A175223

/-- `Δ[A007504(n)]+7` -/
def P1744404171439566856.Spec : Prop :=
  ∀ n, P1744404171439566856.a n = A175223 (n + 1)

end A175223

/-! ## A175223.P17464827168080805785

`A139049(n+1)+1`
-/

namespace A175223.P17464827168080805785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) + 1

end

end A175223.P17464827168080805785

namespace A175223

/-- `A139049(n+1)+1` -/
def P17464827168080805785.Spec : Prop :=
  ∀ n, P17464827168080805785.a n = A175223 (n + 1)

theorem P17464827168080805785.correct : P17464827168080805785.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel, A175223.P17464827168080805785.a, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A139049, A139049.P7343931796022599555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175223

/-! ## A175223.P17272035981933028025

`A175222(n+1)+2`
-/

namespace A175223.P17272035981933028025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) + 2

end

end A175223.P17272035981933028025

namespace A175223

/-- `A175222(n+1)+2` -/
def P17272035981933028025.Spec : Prop :=
  ∀ n, P17272035981933028025.a n = A175223 (n + 1)

theorem P17272035981933028025.correct : P17272035981933028025.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel, A175223.P17272035981933028025.a, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175222, A175222.P10933161600630644520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175223

/-! ## A175223.P3645981971970003476

`A175224(n+1)-1`
-/

namespace A175223.P3645981971970003476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) - 1

end

end A175223.P3645981971970003476

namespace A175223

/-- `A175224(n+1)-1` -/
def P3645981971970003476.Spec : Prop :=
  ∀ n, P3645981971970003476.a n = A175223 (n + 1)

theorem P3645981971970003476.correct : P3645981971970003476.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel, A175223.P3645981971970003476.a, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175224, A175224.P1386793928636688251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175223

/-! ## A175223.P12869649091066897172

`A140353(n+1)-2`
-/

namespace A175223.P12869649091066897172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) - 2

end

end A175223.P12869649091066897172

namespace A175223

/-- `A140353(n+1)-2` -/
def P12869649091066897172.Spec : Prop :=
  ∀ n, P12869649091066897172.a n = A175223 (n + 1)

theorem P12869649091066897172.correct : P12869649091066897172.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel, A175223.P12869649091066897172.a, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A140353, A140353.P3819678062006389091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175223

/-! ## A175223.P5999353591889352137

`A175221(n+1)+3`
-/

namespace A175223.P5999353591889352137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + 3

end

end A175223.P5999353591889352137

namespace A175223

/-- `A175221(n+1)+3` -/
def P5999353591889352137.Spec : Prop :=
  ∀ n, P5999353591889352137.a n = A175223 (n + 1)

theorem P5999353591889352137.correct : P5999353591889352137.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel, A175223.P5999353591889352137.a, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175221, A175221.P11226718615464862765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175223

/-! ## A175223.P10996018802915179637

`A113935(n+1)+4`
-/

namespace A175223.P10996018802915179637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + 4

end

end A175223.P10996018802915179637

namespace A175223

/-- `A113935(n+1)+4` -/
def P10996018802915179637.Spec : Prop :=
  ∀ n, P10996018802915179637.a n = A175223 (n + 1)

theorem P10996018802915179637.correct : P10996018802915179637.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel, A175223.P10996018802915179637.a, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175223

/-! ## A175223.P6816320458139544859

`A175225(n+1)-3`
-/

namespace A175223.P6816320458139544859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) - 3

end

end A175223.P6816320458139544859

namespace A175223

/-- `A175225(n+1)-3` -/
def P6816320458139544859.Spec : Prop :=
  ∀ n, P6816320458139544859.a n = A175223 (n + 1)

theorem P6816320458139544859.correct : P6816320458139544859.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel, A175223.P6816320458139544859.a, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175225, A175225.P11130791090975499720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175223

/-! ## A175223.P4442506665830218844

`A052147(n+1)+5`
-/

namespace A175223.P4442506665830218844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + 5

end

end A175223.P4442506665830218844

namespace A175223

/-- `A052147(n+1)+5` -/
def P4442506665830218844.Spec : Prop :=
  ∀ n, P4442506665830218844.a n = A175223 (n + 1)

theorem P4442506665830218844.correct : P4442506665830218844.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel, A175223.P4442506665830218844.a, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175223

/-! ## A175223.P9794434313360394531

`6+A008864(n+1)`
-/

namespace A175223.P9794434313360394531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 + A008864 (n + 1)

end

end A175223.P9794434313360394531

namespace A175223

/-- `6+A008864(n+1)` -/
def P9794434313360394531.Spec : Prop :=
  ∀ n, P9794434313360394531.a n = A175223 (n + 1)

theorem P9794434313360394531.correct : P9794434313360394531.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel, A175223.P9794434313360394531.a, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175223

/-! ## A175223.P10901374338666902487

`A028815(n+1)+6`
-/

namespace A175223.P10901374338666902487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + 6

end

end A175223.P10901374338666902487

namespace A175223

/-- `A028815(n+1)+6` -/
def P10901374338666902487.Spec : Prop :=
  ∀ n, P10901374338666902487.a n = A175223 (n + 1)

end A175223

/-! ## A175223.P2490220303207892999

`8+A006093(n+1)`
-/

namespace A175223.P2490220303207892999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 + A006093 (n + 1)

end

end A175223.P2490220303207892999

namespace A175223

/-- `8+A006093(n+1)` -/
def P2490220303207892999.Spec : Prop :=
  ∀ n, P2490220303207892999.a n = A175223 (n + 1)

theorem P2490220303207892999.correct : P2490220303207892999.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel, A175223.P2490220303207892999.a, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175223

/-! ## A175223.P1511887710270977298

`A040976(n+1)+9`
-/

namespace A175223.P1511887710270977298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 9

end

end A175223.P1511887710270977298

namespace A175223

/-- `A040976(n+1)+9` -/
def P1511887710270977298.Spec : Prop :=
  ∀ n, P1511887710270977298.a n = A175223 (n + 1)

theorem P1511887710270977298.correct : P1511887710270977298.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel, A175223.P1511887710270977298.a, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175223

/-! ## A175223.P11328674398410877184

`A092949(n)+13-a(n-1)` with `a(0)=9`
-/

namespace A175223.P11328674398410877184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A092949 n + (13 - a (n - 1))

end

end A175223.P11328674398410877184

namespace A175223

/-- `A092949(n)+13-a(n-1)` -/
def P11328674398410877184.Spec : Prop :=
  ∀ n, P11328674398410877184.a n = A175223 (n + 1)

end A175223

/-! ## A175223.P2803699184610983652

`A014686(n+1)+A010724(n)`
-/

namespace A175223.P2803699184610983652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014686 (n + 1) + A010724 n

end

end A175223.P2803699184610983652

namespace A175223

/-- `A014686(n+1)+A010724(n)` -/
def P2803699184610983652.Spec : Prop :=
  ∀ n, P2803699184610983652.a n = A175223 (n + 1)

end A175223

/-! ## A175223.P14725188405497406346

`A020719(n)+A014692(n+1)`
-/

namespace A175223.P14725188405497406346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n + A014692 (n + 1)

end

end A175223.P14725188405497406346

namespace A175223

/-- `A020719(n)+A014692(n+1)` -/
def P14725188405497406346.Spec : Prop :=
  ∀ n, P14725188405497406346.a n = A175223 (n + 1)

theorem P14725188405497406346.correct : P14725188405497406346.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel, A175223.P14725188405497406346.a, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, A020719, A020719.P8384566430789263348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175223

/-! ## A175223.P18077321205348308098

`A020722(n)+A014689(n+1)`
-/

namespace A175223.P18077321205348308098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 n + A014689 (n + 1)

end

end A175223.P18077321205348308098

namespace A175223

/-- `A020722(n)+A014689(n+1)` -/
def P18077321205348308098.Spec : Prop :=
  ∀ n, P18077321205348308098.a n = A175223 (n + 1)

theorem P18077321205348308098.correct : P18077321205348308098.Spec := by
  intro n
  simp only [A175223, Nat.add_sub_cancel, A175223.P18077321205348308098.a, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, A020722, A020722.P14657161902176379145.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175223

/-! ## A175223.P3247274890986339682

`A022962(n)+A014688(n+1)`
-/

namespace A175223.P3247274890986339682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022962 n + A014688 (n + 1)

end

end A175223.P3247274890986339682

namespace A175223

/-- `A022962(n)+A014688(n+1)` -/
def P3247274890986339682.Spec : Prop :=
  ∀ n, P3247274890986339682.a n = A175223 (n + 1)

end A175223

/-!
# A175224: a(n) = prime(n) + 8.

The programs for A175224, the canonical program `A175224.P1386793928636688251` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175224 has offset 1).

The definition of A175224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+8` (program `A175224.P1386793928636688251`, by `A175224.P1386793928636688251.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175224.P1386793928636688251

`A000040(n+1)+8`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175224

/-- `A000040(n+1)+8` -/
def P1386793928636688251.Spec : Prop :=
  ∀ n, P1386793928636688251.a n = A175224 (n + 1)

theorem P1386793928636688251.correct : P1386793928636688251.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel]

end A175224

/-! ## A175224.P11219588602030208498

`p?[round(8*n/7)]+8`
-/

namespace A175224.P11219588602030208498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 8

end

end A175224.P11219588602030208498

namespace A175224

/-- `p?[round(8*n/7)]+8` -/
def P11219588602030208498.Spec : Prop :=
  ∀ n, P11219588602030208498.a n = A175224 (n + 1)

end A175224

/-! ## A175224.P5895298765417487983

`Δ[A007504(n)]+8`
-/

namespace A175224.P5895298765417487983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 8

end

end A175224.P5895298765417487983

namespace A175224

/-- `Δ[A007504(n)]+8` -/
def P5895298765417487983.Spec : Prop :=
  ∀ n, P5895298765417487983.a n = A175224 (n + 1)

end A175224

/-! ## A175224.P14857029348865798307

`A175223(n+1)+1`
-/

namespace A175224.P14857029348865798307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175223 (n + 1) + 1

end

end A175224.P14857029348865798307

namespace A175224

/-- `A175223(n+1)+1` -/
def P14857029348865798307.Spec : Prop :=
  ∀ n, P14857029348865798307.a n = A175224 (n + 1)

theorem P14857029348865798307.correct : P14857029348865798307.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P14857029348865798307.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175223, A175223.P2338184414980826064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P16366831362966523033

`A139049(n+1)+2`
-/

namespace A175224.P16366831362966523033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) + 2

end

end A175224.P16366831362966523033

namespace A175224

/-- `A139049(n+1)+2` -/
def P16366831362966523033.Spec : Prop :=
  ∀ n, P16366831362966523033.a n = A175224 (n + 1)

theorem P16366831362966523033.correct : P16366831362966523033.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P16366831362966523033.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A139049, A139049.P7343931796022599555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P17504664518501352128

`A140353(n+1)-1`
-/

namespace A175224.P17504664518501352128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) - 1

end

end A175224.P17504664518501352128

namespace A175224

/-- `A140353(n+1)-1` -/
def P17504664518501352128.Spec : Prop :=
  ∀ n, P17504664518501352128.a n = A175224 (n + 1)

theorem P17504664518501352128.correct : P17504664518501352128.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P17504664518501352128.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A140353, A140353.P3819678062006389091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P5890107683506305943

`A175222(n+1)+3`
-/

namespace A175224.P5890107683506305943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) + 3

end

end A175224.P5890107683506305943

namespace A175224

/-- `A175222(n+1)+3` -/
def P5890107683506305943.Spec : Prop :=
  ∀ n, P5890107683506305943.a n = A175224 (n + 1)

theorem P5890107683506305943.correct : P5890107683506305943.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P5890107683506305943.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175222, A175222.P10933161600630644520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P16443625877408145129

`A175225(n+1)-2`
-/

namespace A175224.P16443625877408145129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) - 2

end

end A175224.P16443625877408145129

namespace A175224

/-- `A175225(n+1)-2` -/
def P16443625877408145129.Spec : Prop :=
  ∀ n, P16443625877408145129.a n = A175224 (n + 1)

theorem P16443625877408145129.correct : P16443625877408145129.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P16443625877408145129.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175225, A175225.P11130791090975499720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P11946162766528025754

`A175221(n+1)+4`
-/

namespace A175224.P11946162766528025754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + 4

end

end A175224.P11946162766528025754

namespace A175224

/-- `A175221(n+1)+4` -/
def P11946162766528025754.Spec : Prop :=
  ∀ n, P11946162766528025754.a n = A175224 (n + 1)

theorem P11946162766528025754.correct : P11946162766528025754.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P11946162766528025754.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175221, A175221.P11226718615464862765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P14520356057272079884

`A113935(n+1)+5`
-/

namespace A175224.P14520356057272079884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + 5

end

end A175224.P14520356057272079884

namespace A175224

/-- `A113935(n+1)+5` -/
def P14520356057272079884.Spec : Prop :=
  ∀ n, P14520356057272079884.a n = A175224 (n + 1)

theorem P14520356057272079884.correct : P14520356057272079884.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P14520356057272079884.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P11001156646861899008

`A052147(n+1)+6`
-/

namespace A175224.P11001156646861899008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + 6

end

end A175224.P11001156646861899008

namespace A175224

/-- `A052147(n+1)+6` -/
def P11001156646861899008.Spec : Prop :=
  ∀ n, P11001156646861899008.a n = A175224 (n + 1)

theorem P11001156646861899008.correct : P11001156646861899008.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P11001156646861899008.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P14473880221430226707

`A008864(n+1)+7`
-/

namespace A175224.P14473880221430226707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 7

end

end A175224.P14473880221430226707

namespace A175224

/-- `A008864(n+1)+7` -/
def P14473880221430226707.Spec : Prop :=
  ∀ n, P14473880221430226707.a n = A175224 (n + 1)

theorem P14473880221430226707.correct : P14473880221430226707.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P14473880221430226707.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P4096875072107277568

`A028815(n+1)+7`
-/

namespace A175224.P4096875072107277568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + 7

end

end A175224.P4096875072107277568

namespace A175224

/-- `A028815(n+1)+7` -/
def P4096875072107277568.Spec : Prop :=
  ∀ n, P4096875072107277568.a n = A175224 (n + 1)

end A175224

/-! ## A175224.P18371371116816793892

`A006093(n+1)+9`
-/

namespace A175224.P18371371116816793892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 9

end

end A175224.P18371371116816793892

namespace A175224

/-- `A006093(n+1)+9` -/
def P18371371116816793892.Spec : Prop :=
  ∀ n, P18371371116816793892.a n = A175224 (n + 1)

theorem P18371371116816793892.correct : P18371371116816793892.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P18371371116816793892.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P9285024244176629324

`A040976(n+1)+10`
-/

namespace A175224.P9285024244176629324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 10

end

end A175224.P9285024244176629324

namespace A175224

/-- `A040976(n+1)+10` -/
def P9285024244176629324.Spec : Prop :=
  ∀ n, P9285024244176629324.a n = A175224 (n + 1)

theorem P9285024244176629324.correct : P9285024244176629324.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P9285024244176629324.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P11994613753236071309

`A014686(n+1)+A010729(n)`
-/

namespace A175224.P11994613753236071309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014686 (n + 1) + A010729 n

end

end A175224.P11994613753236071309

namespace A175224

/-- `A014686(n+1)+A010729(n)` -/
def P11994613753236071309.Spec : Prop :=
  ∀ n, P11994613753236071309.a n = A175224 (n + 1)

theorem P11994613753236071309.correct : P11994613753236071309.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P11994613753236071309.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A010729, A010729.P11513889590085295973.a, A014686, A014686.P12969874611921445345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P2118637465446348789

`A020722(n)+A014692(n+1)`
-/

namespace A175224.P2118637465446348789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 n + A014692 (n + 1)

end

end A175224.P2118637465446348789

namespace A175224

/-- `A020722(n)+A014692(n+1)` -/
def P2118637465446348789.Spec : Prop :=
  ∀ n, P2118637465446348789.a n = A175224 (n + 1)

theorem P2118637465446348789.correct : P2118637465446348789.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P2118637465446348789.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, A020722, A020722.P14657161902176379145.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P8203295889560077944

`A020723(n)+A014689(n+1)`
-/

namespace A175224.P8203295889560077944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 n + A014689 (n + 1)

end

end A175224.P8203295889560077944

namespace A175224

/-- `A020723(n)+A014689(n+1)` -/
def P8203295889560077944.Spec : Prop :=
  ∀ n, P8203295889560077944.a n = A175224 (n + 1)

theorem P8203295889560077944.correct : P8203295889560077944.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P8203295889560077944.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, A020723, A020723.P8213579202739937003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-! ## A175224.P585807733597874806

`A022963(n)+A014688(n+1)`
-/

namespace A175224.P585807733597874806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022963 n + A014688 (n + 1)

end

end A175224.P585807733597874806

namespace A175224

/-- `A022963(n)+A014688(n+1)` -/
def P585807733597874806.Spec : Prop :=
  ∀ n, P585807733597874806.a n = A175224 (n + 1)

end A175224

/-! ## A175224.P14062117421508184519

`A095116(n+1)+A022964(n)`
-/

namespace A175224.P14062117421508184519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + A022964 n

end

end A175224.P14062117421508184519

namespace A175224

/-- `A095116(n+1)+A022964(n)` -/
def P14062117421508184519.Spec : Prop :=
  ∀ n, P14062117421508184519.a n = A175224 (n + 1)

theorem P14062117421508184519.correct : P14062117421508184519.Spec := by
  intro n
  simp only [A175224, Nat.add_sub_cancel, A175224.P14062117421508184519.a, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A022964, A022964.P10926556689608304372.a, A095116, A095116.P2789422422958858773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175224

/-!
# A175225: a(n) = prime(n) + 10.

The programs for A175225, the canonical program `A175225.P11130791090975499720` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175225 has offset 1).

The definition of A175225 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+10` (program `A175225.P11130791090975499720`, by `A175225.P11130791090975499720.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175225.P11130791090975499720

`A000040(n+1)+10`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175225

/-- `A000040(n+1)+10` -/
def P11130791090975499720.Spec : Prop :=
  ∀ n, P11130791090975499720.a n = A175225 (n + 1)

theorem P11130791090975499720.correct : P11130791090975499720.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel]

end A175225

/-! ## A175225.P11497657733107915830

`Δ[A007504(n)]+10`
-/

namespace A175225.P11497657733107915830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 10

end

end A175225.P11497657733107915830

namespace A175225

/-- `Δ[A007504(n)]+10` -/
def P11497657733107915830.Spec : Prop :=
  ∀ n, P11497657733107915830.a n = A175225 (n + 1)

end A175225

/-! ## A175225.P6956092010931584881

`A140353(n+1)+1`
-/

namespace A175225.P6956092010931584881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) + 1

end

end A175225.P6956092010931584881

namespace A175225

/-- `A140353(n+1)+1` -/
def P6956092010931584881.Spec : Prop :=
  ∀ n, P6956092010931584881.a n = A175225 (n + 1)

theorem P6956092010931584881.correct : P6956092010931584881.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel, A175225.P6956092010931584881.a, A175225.P11130791090975499720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A140353, A140353.P3819678062006389091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175225

/-! ## A175225.P1552021137798798736

`A175224(n+1)+2`
-/

namespace A175225.P1552021137798798736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) + 2

end

end A175225.P1552021137798798736

namespace A175225

/-- `A175224(n+1)+2` -/
def P1552021137798798736.Spec : Prop :=
  ∀ n, P1552021137798798736.a n = A175225 (n + 1)

theorem P1552021137798798736.correct : P1552021137798798736.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel, A175225.P1552021137798798736.a, A175225.P11130791090975499720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175224, A175224.P1386793928636688251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175225

/-! ## A175225.P15725002305467902166

`A175223(n+1)+3`
-/

namespace A175225.P15725002305467902166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175223 (n + 1) + 3

end

end A175225.P15725002305467902166

namespace A175225

/-- `A175223(n+1)+3` -/
def P15725002305467902166.Spec : Prop :=
  ∀ n, P15725002305467902166.a n = A175225 (n + 1)

theorem P15725002305467902166.correct : P15725002305467902166.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel, A175225.P15725002305467902166.a, A175225.P11130791090975499720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175223, A175223.P2338184414980826064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175225

/-! ## A175225.P17410089350641125628

`A139049(n+1)+4`
-/

namespace A175225.P17410089350641125628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) + 4

end

end A175225.P17410089350641125628

namespace A175225

/-- `A139049(n+1)+4` -/
def P17410089350641125628.Spec : Prop :=
  ∀ n, P17410089350641125628.a n = A175225 (n + 1)

theorem P17410089350641125628.correct : P17410089350641125628.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel, A175225.P17410089350641125628.a, A175225.P11130791090975499720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A139049, A139049.P7343931796022599555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175225

/-! ## A175225.P1006310636256975784

`A175222(n+1)+5`
-/

namespace A175225.P1006310636256975784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) + 5

end

end A175225.P1006310636256975784

namespace A175225

/-- `A175222(n+1)+5` -/
def P1006310636256975784.Spec : Prop :=
  ∀ n, P1006310636256975784.a n = A175225 (n + 1)

theorem P1006310636256975784.correct : P1006310636256975784.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel, A175225.P1006310636256975784.a, A175225.P11130791090975499720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175222, A175222.P10933161600630644520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175225

/-! ## A175225.P7471500068977906495

`A175221(n+1)+6`
-/

namespace A175225.P7471500068977906495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + 6

end

end A175225.P7471500068977906495

namespace A175225

/-- `A175221(n+1)+6` -/
def P7471500068977906495.Spec : Prop :=
  ∀ n, P7471500068977906495.a n = A175225 (n + 1)

theorem P7471500068977906495.correct : P7471500068977906495.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel, A175225.P7471500068977906495.a, A175225.P11130791090975499720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175221, A175221.P11226718615464862765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175225

/-! ## A175225.P3692297124941462004

`A113935(n+1)+7`
-/

namespace A175225.P3692297124941462004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + 7

end

end A175225.P3692297124941462004

namespace A175225

/-- `A113935(n+1)+7` -/
def P3692297124941462004.Spec : Prop :=
  ∀ n, P3692297124941462004.a n = A175225 (n + 1)

theorem P3692297124941462004.correct : P3692297124941462004.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel, A175225.P3692297124941462004.a, A175225.P11130791090975499720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175225

/-! ## A175225.P1165470886429873207

`A052147(n+1)+8`
-/

namespace A175225.P1165470886429873207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + 8

end

end A175225.P1165470886429873207

namespace A175225

/-- `A052147(n+1)+8` -/
def P1165470886429873207.Spec : Prop :=
  ∀ n, P1165470886429873207.a n = A175225 (n + 1)

theorem P1165470886429873207.correct : P1165470886429873207.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel, A175225.P1165470886429873207.a, A175225.P11130791090975499720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175225

/-! ## A175225.P8770808687404845722

`A008864(n+1)+9`
-/

namespace A175225.P8770808687404845722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 9

end

end A175225.P8770808687404845722

namespace A175225

/-- `A008864(n+1)+9` -/
def P8770808687404845722.Spec : Prop :=
  ∀ n, P8770808687404845722.a n = A175225 (n + 1)

theorem P8770808687404845722.correct : P8770808687404845722.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel, A175225.P8770808687404845722.a, A175225.P11130791090975499720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175225

/-! ## A175225.P17036664323660742177

`A028815(n+1)+9`
-/

namespace A175225.P17036664323660742177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + 9

end

end A175225.P17036664323660742177

namespace A175225

/-- `A028815(n+1)+9` -/
def P17036664323660742177.Spec : Prop :=
  ∀ n, P17036664323660742177.a n = A175225 (n + 1)

end A175225

/-! ## A175225.P3447061461381914573

`A006093(n+1)+11`
-/

namespace A175225.P3447061461381914573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 11

end

end A175225.P3447061461381914573

namespace A175225

/-- `A006093(n+1)+11` -/
def P3447061461381914573.Spec : Prop :=
  ∀ n, P3447061461381914573.a n = A175225 (n + 1)

theorem P3447061461381914573.correct : P3447061461381914573.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel, A175225.P3447061461381914573.a, A175225.P11130791090975499720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175225

/-! ## A175225.P6213778965206438366

`A014688(n+1)+9-n`
-/

namespace A175225.P6213778965206438366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) + (9 - (n : ℤ))

end

end A175225.P6213778965206438366

namespace A175225

/-- `A014688(n+1)+9-n` -/
def P6213778965206438366.Spec : Prop :=
  ∀ n, P6213778965206438366.a n = A175225 (n + 1)

end A175225

/-! ## A175225.P1657012505815506665

`A014692(n+1)+n+10`
-/

namespace A175225.P1657012505815506665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (n + 10 : ℤ)

end

end A175225.P1657012505815506665

namespace A175225

/-- `A014692(n+1)+n+10` -/
def P1657012505815506665.Spec : Prop :=
  ∀ n, P1657012505815506665.a n = A175225 (n + 1)

theorem P1657012505815506665.correct : P1657012505815506665.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel, A175225.P1657012505815506665.a, A175225.P11130791090975499720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175225

/-! ## A175225.P2927199097417854085

`A014689(n+1)+n+11`
-/

namespace A175225.P2927199097417854085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (n + 11 : ℤ)

end

end A175225.P2927199097417854085

namespace A175225

/-- `A014689(n+1)+n+11` -/
def P2927199097417854085.Spec : Prop :=
  ∀ n, P2927199097417854085.a n = A175225 (n + 1)

theorem P2927199097417854085.correct : P2927199097417854085.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel, A175225.P2927199097417854085.a, A175225.P11130791090975499720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175225

/-! ## A175225.P10978067988526729198

`A095116(n+1)+10-n`
-/

namespace A175225.P10978067988526729198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + (10 - (n : ℤ))

end

end A175225.P10978067988526729198

namespace A175225

/-- `A095116(n+1)+10-n` -/
def P10978067988526729198.Spec : Prop :=
  ∀ n, P10978067988526729198.a n = A175225 (n + 1)

theorem P10978067988526729198.correct : P10978067988526729198.Spec := by
  intro n
  simp only [A175225, Nat.add_sub_cancel, A175225.P10978067988526729198.a, A175225.P11130791090975499720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A095116, A095116.P2789422422958858773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175225

/-! ## A175225.P5932175280694050800

`A022965(n)+A014688(n+1)`
-/

namespace A175225.P5932175280694050800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022965 n + A014688 (n + 1)

end

end A175225.P5932175280694050800

namespace A175225

/-- `A022965(n)+A014688(n+1)` -/
def P5932175280694050800.Spec : Prop :=
  ∀ n, P5932175280694050800.a n = A175225 (n + 1)

end A175225

/-! ## A175225.P7386583830467962820

`A107623(n+1)+A010728(n)`
-/

namespace A175225.P7386583830467962820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107623 (n + 1) + A010728 n

end

end A175225.P7386583830467962820

namespace A175225

/-- `A107623(n+1)+A010728(n)` -/
def P7386583830467962820.Spec : Prop :=
  ∀ n, P7386583830467962820.a n = A175225 (n + 1)

end A175225

/-! ## A175225.P10115580160655024427

`A350171(n+1)+A010735(n)`
-/

namespace A175225.P10115580160655024427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350171 (n + 1) + A010735 n

end

end A175225.P10115580160655024427

namespace A175225

/-- `A350171(n+1)+A010735(n)` -/
def P10115580160655024427.Spec : Prop :=
  ∀ n, P10115580160655024427.a n = A175225 (n + 1)

end A175225

/-!
# A175227: Sequence of the remaining nonprimes out of sieve of type: {step 1: starting with the sequence of positive integers A000027; step 2: delete every prime number A000040; step 3: delete every prime(1)-th number greater than the prime(1) from the remaining sequence; step 4: delete every prime(2)-th number greater than the prime(2) from the remaining sequence; etc. for prime(k)-th numbers for k = 3, 4, 5, ...}.

The programs for A175227, there is no canonical definition to state claims against.
-/

/-! ## A175227.P17095349641885197870

`A175230(lt[A000142(n), A006339(n)])`
-/

namespace A175227.P17095349641885197870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175230 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175227.P17095349641885197870

/-! ## A175227.P15347601387273738228

`A003002(A008574(n)*A247911(n+1))`
-/

namespace A175227.P15347601387273738228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A008574 n * A247911 (n + 1)).toNat

end

end A175227.P15347601387273738228

/-! ## A175227.P7205592346805310183

`A065090(lt[A102781(n+1), A211173(n)])`
-/

namespace A175227.P7205592346805310183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175227.P7205592346805310183

/-!
# A175228: Remaining sequence of step 3 of sieve from A175227.

The programs for A175228, there is no canonical definition to state claims against.
-/

/-! ## A175228.P2434444071331575436

`A065090(Δ[n²])`
-/

namespace A175228.P2434444071331575436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A175228.P2434444071331575436

/-! ## A175228.P6058466349095802263

`A282649(4*n+1)`
-/

namespace A175228.P6058466349095802263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282649 (4 * n + 1)

end

end A175228.P6058466349095802263

/-! ## A175228.P13015054000896421265

`A073846(abs(1-4*n))`
-/

namespace A175228.P13015054000896421265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 |1 - (4 * n : ℤ)|.toNat

end

end A175228.P13015054000896421265

/-! ## A175228.P4701385588985130615

`A018252(log2(lcm(2, 4^n)))`
-/

namespace A175228.P4701385588985130615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.lcm 2 (4 ^ n) : ℝ))).toNat

end

end A175228.P4701385588985130615

/-!
# A175229: Delete sequence of step 4 of sieve from A175227.

The programs for A175229, there is no canonical definition to state claims against.
-/

/-! ## A175229.P7572293074521689082

`A099861(3*(n+1))`
-/

namespace A175229.P7572293074521689082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099861 (3 * (n + 1))

end

end A175229.P7572293074521689082

/-! ## A175229.P9475320780642452999

`A018252(6*(n+1))`
-/

namespace A175229.P9475320780642452999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (6 * (n + 1))

end

end A175229.P9475320780642452999

/-! ## A175229.P17940846360467036418

`A002808(6*n+5)`
-/

namespace A175229.P17940846360467036418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (6 * n + 5)

end

end A175229.P17940846360467036418

/-! ## A175229.P3683565539891483130

`A065090(6*n+7)`
-/

namespace A175229.P3683565539891483130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (6 * n + 7)

end

end A175229.P3683565539891483130

/-! ## A175229.P18130768488906354837

`A141468(6*n+7)`
-/

namespace A175229.P18130768488906354837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (6 * n + 7)

end

end A175229.P18130768488906354837

/-!
# A175230: Remaining sequence of step 4 of sieve from A175227.

The programs for A175230, there is no canonical definition to state claims against.
-/

/-! ## A175230.P14880089229751635760

`A018252(∑[ceil(2^(n-1))%6])`
-/

namespace A175230.P14880089229751635760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175230.P14880089229751635760

/-! ## A175230.P3724363731385832742

`A065090(record[abs(or(2, n-1))]+n)`
-/

namespace A175230.P3724363731385832742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((n : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A175230.P3724363731385832742

/-! ## A175230.P16791968938291091770

`A018252(∑[6-a(n-1)])` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A175230.P16791968938291091770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175230.P16791968938291091770

/-! ## A175230.P3352044439226754147

`A018252(comp[2*gcd(n, n%2)+n])`
-/

namespace A175230.P3352044439226754147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd n (n % 2) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A175230.P3352044439226754147

/-! ## A175230.P17417870176958733133

`A018252(∑[∑[ogf((1+x+x^2+3x^3)/(1+x))]])`
-/

namespace A175230.P17417870176958733133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175230.P17417870176958733133

/-!
# A175232: The smallest prime divisor of 1 + 2^2 + 3^3 + ... + n^n.

The programs for A175232, there is no canonical definition to state claims against.
-/

/-! ## A175232.P16675603142041808980

`A020639(A001923(n+2))`
-/

namespace A175232.P16675603142041808980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001923 (n + 2)).toNat

end

end A175232.P16675603142041808980

/-!
# A175235: Prime p such that 2^p + 21 is also prime.

The programs for A175235, there is no canonical definition to state claims against.
-/

/-! ## A175235.P11123350163413208008

`p?[A057201(n+1)]`
-/

namespace A175235.P11123350163413208008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175235.P11123350163413208008

/-! ## A175235.P10919893415597954651

`p?[record[A057201(A022446(n))]]`
-/

namespace A175235.P10919893415597954651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057201 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175235.P10919893415597954651

/-! ## A175235.P8174959760322753161

`record[p?[A057201(A052938(n))]]`
-/

namespace A175235.P8174959760322753161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057201 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175235.P8174959760322753161

/-! ## A175235.P4523610707949875216

`p?[record[A057201(A065648(n))]]`
-/

namespace A175235.P4523610707949875216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057201 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175235.P4523610707949875216

/-! ## A175235.P14732980099350868914

`record[A020639(A057201(n+2))]`
-/

namespace A175235.P14732980099350868914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A057201 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175235.P14732980099350868914

/-!
# A175236: Primes p such that 2^p+23 is also prime.

The programs for A175236, there is no canonical definition to state claims against.
-/

/-! ## A175236.P3037422115061536078

`p?[A057203(n+1)]`
-/

namespace A175236.P3037422115061536078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175236.P3037422115061536078

/-! ## A175236.P12198736675475280799

`A057203(comp[∑[n+2]]+1)`
-/

namespace A175236.P12198736675475280799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A175236.P12198736675475280799

/-! ## A175236.P18389663075659767095

`record[A057203(A282561(n))]`
-/

namespace A175236.P18389663075659767095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057203 (A282561 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175236.P18389663075659767095

/-! ## A175236.P4232091732024278095

`filter[A057203(n+1), A010051(#)]`
-/

namespace A175236.P4232091732024278095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A175236.P4232091732024278095

/-!
# A175237: a(n) = 2*(10^n - 7).

The programs for A175237, the canonical program `A175237.P4421076365883080601` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175237 has offset 1).

The definition of A175237 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(10^(n+1)-7)` (program `A175237.P4421076365883080601`, by `A175237.P4421076365883080601.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175237.P4421076365883080601

`2*(10^(n+1)-7)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175237

/-- `2*(10^(n+1)-7)` -/
def P4421076365883080601.Spec : Prop :=
  ∀ n, P4421076365883080601.a n = A175237 (n + 1)

theorem P4421076365883080601.correct : P4421076365883080601.Spec := by
  intro n
  simp only [A175237, Nat.add_sub_cancel]

end A175237

/-! ## A175237.P5954729885010805202

`11*a(n-1)-10*a(n-2)` with `a(0)=6, a(1)=186`
-/

namespace A175237.P5954729885010805202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 186] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A175237.P5954729885010805202

namespace A175237

/-- `11*a(n-1)-10*a(n-2)` -/
def P5954729885010805202.Spec : Prop :=
  ∀ n, P5954729885010805202.a n = A175237 (n + 1)

theorem P5954729885010805202.correct : P5954729885010805202.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A175237, Nat.add_sub_cancel, A175237.P5954729885010805202.a, A175237.P4421076365883080601.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A175237, Nat.add_sub_cancel, A175237.P5954729885010805202.a, A175237.P4421076365883080601.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175237

/-! ## A175237.P5224090936129659539

`A177112(n+1)/2`
-/

namespace A175237.P5224090936129659539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177112 (n + 1) : ℚ) / 2

end

end A175237.P5224090936129659539

namespace A175237

/-- `A177112(n+1)/2` -/
def P5224090936129659539.Spec : Prop :=
  ∀ n, P5224090936129659539.a n = (A175237 (n + 1) : ℚ)

theorem P5224090936129659539.correct : P5224090936129659539.Spec := by
  intro n
  simp only [A175237, Nat.add_sub_cancel, A175237.P5224090936129659539.a, A175237.P4421076365883080601.a, A177112, A177112.P4606431005453224732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175237

/-! ## A175237.P13845695793447475371

`A175604(n+1)/4`
-/

namespace A175237.P13845695793447475371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175604 (n + 1) : ℚ) / 4

end

end A175237.P13845695793447475371

namespace A175237

/-- `A175604(n+1)/4` -/
def P13845695793447475371.Spec : Prop :=
  ∀ n, P13845695793447475371.a n = (A175237 (n + 1) : ℚ)

theorem P13845695793447475371.correct : P13845695793447475371.Spec := by
  intro n
  simp only [A175237, Nat.add_sub_cancel, A175237.P13845695793447475371.a, A175237.P4421076365883080601.a, A175604, A175604.P229425849513988799.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175237

/-! ## A175237.P15005914687577613918

`lcm(2, 7-10^(n+1))`
-/

namespace A175237.P15005914687577613918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (7 - (10 ^ (n + 1) : ℤ))

end

end A175237.P15005914687577613918

namespace A175237

/-- `lcm(2, 7-10^(n+1))` -/
def P15005914687577613918.Spec : Prop :=
  ∀ n, (P15005914687577613918.a n : ℤ) = A175237 (n + 1)

end A175237

/-! ## A175237.P2282253700871971416

`∑[lcm(9, 10*a(n-1))]` with `a(0)=6`
-/

namespace A175237.P2282253700871971416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  Nat.lcm 9 (10 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175237.P2282253700871971416

namespace A175237

/-- `∑[lcm(9, 10*a(n-1))]` -/
def P2282253700871971416.Spec : Prop :=
  ∀ n, (P2282253700871971416.a n : ℤ) = A175237 (n + 1)

end A175237

/-! ## A175237.P8739221216775052262

`A185123(n)-5`
-/

namespace A175237.P8739221216775052262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185123 n - 5

end

end A175237.P8739221216775052262

namespace A175237

/-- `A185123(n)-5` -/
def P8739221216775052262.Spec : Prop :=
  ∀ n, P8739221216775052262.a n = A175237 (n + 1)

theorem P8739221216775052262.correct : P8739221216775052262.Spec := by
  intro n
  simp only [A175237, Nat.add_sub_cancel, A175237.P8739221216775052262.a, A175237.P4421076365883080601.a, A185123, A185123.P4520854506884375301.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175237

/-! ## A175237.P6113360642225588984

`A173813(n+1)-4`
-/

namespace A175237.P6113360642225588984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173813 (n + 1) - 4

end

end A175237.P6113360642225588984

namespace A175237

/-- `A173813(n+1)-4` -/
def P6113360642225588984.Spec : Prop :=
  ∀ n, P6113360642225588984.a n = A175237 (n + 1)

theorem P6113360642225588984.correct : P6113360642225588984.Spec := by
  intro n
  simp only [A175237, Nat.add_sub_cancel, A175237.P6113360642225588984.a, A175237.P4421076365883080601.a, A173813, A173813.P6758449640873830313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175237

/-! ## A175237.P8118401717440483797

`A177098(n+1)/3`
-/

namespace A175237.P8118401717440483797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177098 (n + 1) : ℚ) / 3

end

end A175237.P8118401717440483797

namespace A175237

/-- `A177098(n+1)/3` -/
def P8118401717440483797.Spec : Prop :=
  ∀ n, P8118401717440483797.a n = (A175237 (n + 1) : ℚ)

theorem P8118401717440483797.correct : P8118401717440483797.Spec := by
  intro n
  simp only [A175237, Nat.add_sub_cancel, A175237.P8118401717440483797.a, A175237.P4421076365883080601.a, A177098, A177098.P15375478941725217463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175237

/-! ## A175237.P10681172047418913632

`A086948(n+1)-6`
-/

namespace A175237.P10681172047418913632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086948 (n + 1) - 6

end

end A175237.P10681172047418913632

namespace A175237

/-- `A086948(n+1)-6` -/
def P10681172047418913632.Spec : Prop :=
  ∀ n, P10681172047418913632.a n = A175237 (n + 1)

end A175237

/-!
# A175238: Primes p such that (p^2-6) and (p^2-8) are also prime.

The programs for A175238, there is no canonical definition to state claims against.
-/

/-! ## A175238.P3742028274923798237

`∩[A137270(n+1), A258992(n+1)]`
-/

namespace A175238.P3742028274923798237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175238.P3742028274923798237

/-! ## A175238.P13568358136313724268

`∩[A028879(n+1), A258992(n+1)]`
-/

namespace A175238.P13568358136313724268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175238.P13568358136313724268

/-! ## A175238.P2295527747574864518

`∩[A028885(n+1), A137270(n+1)]`
-/

namespace A175238.P2295527747574864518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175238.P2295527747574864518

/-! ## A175238.P3645415086365113221

`p?[∩[A028879(n+1), A028885(n+1)]]`
-/

namespace A175238.P3645415086365113221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175238.P3645415086365113221

/-!
# A175239: Number of AP divisors of n.

The programs for A175239, there is no canonical definition to state claims against.
-/

/-! ## A175239.P8022686182836310065

`A131576(n+1)+∏{e}[n+1, #+1]`
-/

namespace A175239.P8022686182836310065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A175239.P8022686182836310065

/-! ## A175239.P14225778238842288509

`A341594(2*(n+1))+∏{e}[n+1, #+1]`
-/

namespace A175239.P14225778238842288509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (2 * (n + 1)) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A175239.P14225778238842288509

/-! ## A175239.P3361167885500767778

`A341675(2*(n+1))+∏{e}[n+1, #+1]`
-/

namespace A175239.P3361167885500767778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (2 * (n + 1)) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A175239.P3361167885500767778

/-! ## A175239.P13037934949699247423

`∏{e}[2*(n+1), #+1]-A082647(n+1)`
-/

namespace A175239.P13037934949699247423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A082647 (n + 1)

end

end A175239.P13037934949699247423

/-! ## A175239.P1333617381207655703

`A131576(n+1)+A114896(∑[n])`
-/

namespace A175239.P1333617381207655703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (n + 1) + A114896 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175239.P1333617381207655703

/-! ## A175239.P17079228460774659543

`A131576(n+1)+Δ[A006218(n)]`
-/

namespace A175239.P17079228460774659543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (n + 1) + (f1 (n + 1) - f1 n)

end

end A175239.P17079228460774659543

/-! ## A175239.P14804470041652286904

`A131576(n+1)+Δ[A054519(n)]`
-/

namespace A175239.P14804470041652286904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (n + 1) + (f1 (n + 1) - f1 n)

end

end A175239.P14804470041652286904

/-! ## A175239.P3185315198015754503

`A131576(n+1)+A000005(n+1)`
-/

namespace A175239.P3185315198015754503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (n + 1) + A000005 (n + 1)

end

end A175239.P3185315198015754503

/-! ## A175239.P769835104477626671

`A082647(n+1)+A067743(n+1)`
-/

namespace A175239.P769835104477626671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (n + 1) + A067743 (n + 1)

end

end A175239.P769835104477626671

/-! ## A175239.P12306021437732654953

`A179941(n+1)+A131576(n+1)`
-/

namespace A175239.P12306021437732654953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (n + 1) + A131576 (n + 1)

end

end A175239.P12306021437732654953

/-! ## A175239.P13077301587449633061

`A099777(n+1)-A082647(n+1)`
-/

namespace A175239.P13077301587449633061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - A082647 (n + 1)

end

end A175239.P13077301587449633061

/-! ## A175239.P14183954527833248823

`A341594(2*(n+1))+A000005(n+1)`
-/

namespace A175239.P14183954527833248823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (2 * (n + 1)) + A000005 (n + 1)

end

end A175239.P14183954527833248823

/-! ## A175239.P11786435219530807010

`A341675(2*(n+1))+A000005(n+1)`
-/

namespace A175239.P11786435219530807010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (2 * (n + 1)) + A000005 (n + 1)

end

end A175239.P11786435219530807010

/-! ## A175239.P13110269549750298

`A000005(2*(n+1))-A082647(n+1)`
-/

namespace A175239.P13110269549750298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A082647 (n + 1)

end

end A175239.P13110269549750298

/-! ## A175239.P14530886406731361853

`A000005(n+1)+A281009(n+1)/2`
-/

namespace A175239.P14530886406731361853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) + (A281009 (n + 1) : ℚ) / 2

end

end A175239.P14530886406731361853

/-! ## A175239.P4644339012855760209

`A000005(2*(n+1))-A069288(2*(n+1))`
-/

namespace A175239.P4644339012855760209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A069288 (2 * (n + 1))

end

end A175239.P4644339012855760209

/-! ## A175239.P10153815493610116214

`A000005(2*(n+1))-A333805(2*(n+1))`
-/

namespace A175239.P10153815493610116214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A333805 (2 * (n + 1))

end

end A175239.P10153815493610116214

/-! ## A175239.P2146094304134129466

`A069288(A103517(n))+A067743(n+1)`
-/

namespace A175239.P2146094304134129466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A103517 n).toNat + A067743 (n + 1)

end

end A175239.P2146094304134129466

/-!
# A175240: Call any positive integer that is a palindrome when written in binary a "binary palindrome". a(n) = the smallest binary palindrome such that a(n)*(the n-th binary palindrome) is not a binary palindrome.

The programs for A175240, there is no canonical definition to state claims against.
-/

/-! ## A175240.P12099673683677754371

`A175241(n+3)/A006995(n+3)`
-/

namespace A175240.P12099673683677754371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175241 (n + 3) : ℚ) / (A006995 (n + 3) : ℚ)

end

end A175240.P12099673683677754371

/-!
# A175241: Call any positive integer that is a palindrome when written in binary a "binary palindrome". a(n) = the smallest product (the n-th binary palindrome)*(any binary palindrome) that is not a binary palindrome.

The programs for A175241, there is no canonical definition to state claims against.
-/

/-! ## A175241.P2299724104941970886

`A006995(n+3)*A175240(n+3)`
-/

namespace A175241.P2299724104941970886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 3) * A175240 (n + 3)

end

end A175241.P2299724104941970886

/-!
# A175242: a(n) = the number of divisors of n that are palindromes when written in binary.

The programs for A175242, the canonical program `A175242.P1893256833223553790` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175242 has offset 1).

The definition of A175242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175242.P1893256833223553790

`∑{d}[n+1, A178225(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A175242

/-- `∑{d}[n+1, A178225(#)]` -/
def P1893256833223553790.Spec : Prop :=
  ∀ n, P1893256833223553790.a n = A175242 (n + 1)

theorem P1893256833223553790.correct : P1893256833223553790.Spec := by
  intro n
  simp only [A175242, Nat.add_sub_cancel]

end A175242

/-! ## A175242.P9514677440490367924

`∑{d}[n+1, 1-A178226(#)]`
-/

namespace A175242.P9514677440490367924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A178226 d)

end

end A175242.P9514677440490367924

namespace A175242

/-- `∑{d}[n+1, 1-A178226(#)]` -/
def P9514677440490367924.Spec : Prop :=
  ∀ n, P9514677440490367924.a n = A175242 (n + 1)

theorem P9514677440490367924.correct : P9514677440490367924.Spec := by
  intro n
  simp only [A175242, Nat.add_sub_cancel, A175242.P9514677440490367924.f1, A175242.P9514677440490367924.a, A175242.P1893256833223553790.f1, A175242.P1893256833223553790.a, A178225, A178225.P3234126825915487550.a, A178226, A178226.P2137882765149959903.a, A175919, A175919.P9342082527365393068.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P9289042872142352092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175242

/-! ## A175242.P17654156340627020224

`∑{d}[n+1, A056965(A338827(n))^A175919(#)]`
-/

namespace A175242.P17654156340627020224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A056965 (A338827 n).toNat : ℚ) ^ (A175919 d : ℤ)

end

end A175242.P17654156340627020224

namespace A175242

/-- `∑{d}[n+1, A056965(A338827(n))^A175919(#)]` -/
def P17654156340627020224.Spec : Prop :=
  ∀ n, P17654156340627020224.a n = (A175242 (n + 1) : ℚ)

end A175242

/-! ## A175242.P13925013467311169172

`∑{d}[n+1, A338827(A338827(#))^A175919(#)]`
-/

namespace A175242.P13925013467311169172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A338827 (A338827 d).toNat : ℚ) ^ (A175919 d : ℤ)

end

end A175242.P13925013467311169172

namespace A175242

/-- `∑{d}[n+1, A338827(A338827(#))^A175919(#)]` -/
def P13925013467311169172.Spec : Prop :=
  ∀ n, P13925013467311169172.a n = (A175242 (n + 1) : ℚ)

end A175242

/-! ## A175242.P354679515658152143

`∑{d}[n+1, A339821(A144078(#))%2]`
-/

namespace A175242.P354679515658152143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A339821 (A144078 d).toNat) 2

end

end A175242.P354679515658152143

namespace A175242

/-- `∑{d}[n+1, A339821(A144078(#))%2]` -/
def P354679515658152143.Spec : Prop :=
  ∀ n, P354679515658152143.a n = A175242 (n + 1)

end A175242

/-!
# A175244: For k>=1 let k = a(i)^2 +...+ a(i+r-1)^2, r is the least number of squares that add up to k (A002828); a(i)<=a(i+1)<=..<=a(i+r-1); i>=1.

The programs for A175244, there is no canonical definition to state claims against.
-/

/-! ## A175244.P16348066043075747298

`A193773(A182243(n)^A008621(A200272(n+1)))`
-/

namespace A175244.P16348066043075747298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 (SequenceMachineLib.roundAway ((A182243 n : ℚ) ^ (A008621 (A200272 (n + 1)).toNat : ℤ))).toNat

end

end A175244.P16348066043075747298

/-! ## A175244.P13346718776721143129

`A093320(A000265(A197878(n+1)))`
-/

namespace A175244.P13346718776721143129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093320 (A000265 (A197878 (n + 1)).toNat).toNat

end

end A175244.P13346718776721143129

/-! ## A175244.P18206312119137385286

`A036225(A126219(n)+A052905(n))`
-/

namespace A175244.P18206312119137385286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 (A126219 n + A052905 n).toNat

end

end A175244.P18206312119137385286

/-! ## A175244.P5995319468590634853

`A262618(A157217(n)+A000196(n))`
-/

namespace A175244.P5995319468590634853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262618 (A157217 n + A000196 n).toNat

end

end A175244.P5995319468590634853

/-! ## A175244.P12736789679584887247

`gcd(A020639(A354580(n)), A087897(n+3))`
-/

namespace A175244.P12736789679584887247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A354580 n).toNat) (A087897 (n + 3))

end

end A175244.P12736789679584887247

/-!
# A175245: Let S be the set of distinct positive integers whose binary representations are substrings in the binary representation of n. a(n) = the number of elements of S that are coprime to all other elements of S.

The programs for A175245, there is no canonical definition to state claims against.
-/

/-! ## A175245.P11225886529245578183

`A000374(A183874(n+1)^A292262(n))`
-/

namespace A175245.P11225886529245578183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (SequenceMachineLib.roundAway ((A183874 (n + 1) : ℚ) ^ (A292262 n : ℤ))).toNat

end

end A175245.P11225886529245578183

/-! ## A175245.P7718968897586365444

`A206441(∑[A006484(A008406(n+1))])`
-/

namespace A175245.P7718968897586365444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006484 (A008406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206441 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175245.P7718968897586365444

/-! ## A175245.P6569518277412403717

`A070242(A003627(n+1)^A000034(n))`
-/

namespace A175245.P6569518277412403717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (SequenceMachineLib.roundAway ((A003627 (n + 1) : ℚ) ^ (A000034 n : ℤ))).toNat

end

end A175245.P6569518277412403717

/-! ## A175245.P6293816281113606646

`A055396(ceil(sqrt(n²+4))*A324702(n+2))`
-/

namespace A175245.P6293816281113606646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉ * A324702 (n + 2)).toNat

end

end A175245.P6293816281113606646

/-! ## A175245.P11054346745333720091

`A001222(A285543(A326584(n+1)))`
-/

namespace A175245.P11054346745333720091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A285543 (A326584 (n + 1)).toNat).toNat

end

end A175245.P11054346745333720091

/-!
# A175246: Those n where A175245(n) = 1.

The programs for A175246, there is no canonical definition to state claims against.
-/

/-! ## A175246.P6351315459644061318

`eq[1, A175245(n+1)]+1`
-/

namespace A175246.P6351315459644061318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175246.P6351315459644061318

/-! ## A175246.P12380014906813949141

`eq[1, A175245(A000038(n)+n)]`
-/

namespace A175246.P12380014906813949141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175245 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175246.P12380014906813949141

/-! ## A175246.P4639586793229974228

`eq[1, A175245(abs(n-A000038(n)))]`
-/

namespace A175246.P4639586793229974228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175245 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175246.P4639586793229974228

/-! ## A175246.P9609611162966698978

`record[A014684(n+1)/A175245(n+1)]`
-/

namespace A175246.P9609611162966698978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014684 (n + 1) : ℚ) / (A175245 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175246.P9609611162966698978

/-!
# A175247: Primes (A000040) with noncomposite (A008578) subscripts.

The programs for A175247, the canonical program `A175247.P4698162389150652956` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175247 has offset 1).

The definition of A175247 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175247.P4698162389150652956

`A000040(A008578(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175247

/-- `A000040(A008578(n+1))` -/
def P4698162389150652956.Spec : Prop :=
  ∀ n, P4698162389150652956.a n = A175247 (n + 1)

theorem P4698162389150652956.correct : P4698162389150652956.Spec := by
  intro n
  simp only [A175247, Nat.add_sub_cancel]

end A175247

/-! ## A175247.P1430073481765052425

`A141138(n)+1`
-/

namespace A175247.P1430073481765052425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 n + 1

end

end A175247.P1430073481765052425

namespace A175247

/-- `A141138(n)+1` -/
def P1430073481765052425.Spec : Prop :=
  ∀ n, P1430073481765052425.a n = A175247 (n + 1)

theorem P1430073481765052425.correct : P1430073481765052425.Spec := by
  intro n
  simp only [A175247, Nat.add_sub_cancel, A175247.P1430073481765052425.a, A175247.P4698162389150652956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A141138, A141138.P7125824368820176257.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175247

/-! ## A175247.P6315071726506582918

`A006450(n%a(n-1))` with `a(0)=2`
-/

namespace A175247.P6315071726506582918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006450 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A175247.P6315071726506582918

namespace A175247

/-- `A006450(n%a(n-1))` -/
def P6315071726506582918.Spec : Prop :=
  ∀ n, P6315071726506582918.a n = A175247 (n + 1)

end A175247

/-! ## A175247.P13402952171064225621

`p?[A302592(n+1)]`
-/

namespace A175247.P13402952171064225621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175247.P13402952171064225621

namespace A175247

/-- `p?[A302592(n+1)]` -/
def P13402952171064225621.Spec : Prop :=
  ∀ n, P13402952171064225621.a n = A175247 (n + 1)

end A175247

/-! ## A175247.P10975906653661295331

`p?[A302539(n+1)]`
-/

namespace A175247.P10975906653661295331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175247.P10975906653661295331

namespace A175247

/-- `p?[A302539(n+1)]` -/
def P10975906653661295331.Spec : Prop :=
  ∀ n, P10975906653661295331.a n = A175247 (n + 1)

end A175247

/-! ## A175247.P10317777310220530331

`∩[A302491(n+1), A302593(n+1)]`
-/

namespace A175247.P10317777310220530331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175247.P10317777310220530331

namespace A175247

/-- `∩[A302491(n+1), A302593(n+1)]` -/
def P10317777310220530331.Spec : Prop :=
  ∀ n, (P10317777310220530331.a n : ℤ) = A175247 (n + 1)

end A175247

/-! ## A175247.P8779306613718695548

`record[A105574(n+1)]`
-/

namespace A175247.P8779306613718695548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175247.P8779306613718695548

namespace A175247

/-- `record[A105574(n+1)]` -/
def P8779306613718695548.Spec : Prop :=
  ∀ n, P8779306613718695548.a n = A175247 (n + 1)

end A175247

/-! ## A175247.P14370968019843957298

`∩[A009087(n+1), A302539(n+1)]`
-/

namespace A175247.P14370968019843957298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175247.P14370968019843957298

namespace A175247

/-- `∩[A009087(n+1), A302539(n+1)]` -/
def P14370968019843957298.Spec : Prop :=
  ∀ n, (P14370968019843957298.a n : ℤ) = A175247 (n + 1)

end A175247

/-! ## A175247.P11908562409450933806

`∩[A302592(n+1), A339817(n+1)]`
-/

namespace A175247.P11908562409450933806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175247.P11908562409450933806

namespace A175247

/-- `∩[A302592(n+1), A339817(n+1)]` -/
def P11908562409450933806.Spec : Prop :=
  ∀ n, (P11908562409450933806.a n : ℤ) = A175247 (n + 1)

end A175247

/-! ## A175247.P11211962511576805781

`∩[A302592(n+1), A339819(n+1)]`
-/

namespace A175247.P11211962511576805781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175247.P11211962511576805781

namespace A175247

/-- `∩[A302592(n+1), A339819(n+1)]` -/
def P11211962511576805781.Spec : Prop :=
  ∀ n, (P11211962511576805781.a n : ℤ) = A175247 (n + 1)

end A175247

/-! ## A175247.P15082528225995111963

`record[A105562(n+1)]`
-/

namespace A175247.P15082528225995111963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175247.P15082528225995111963

namespace A175247

/-- `record[A105562(n+1)]` -/
def P15082528225995111963.Spec : Prop :=
  ∀ n, P15082528225995111963.a n = A175247 (n + 1)

end A175247

/-! ## A175247.P17611227250197575317

`A008578(A028815(n))`
-/

namespace A175247.P17611227250197575317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A028815 n).toNat

end

end A175247.P17611227250197575317

namespace A175247

/-- `A008578(A028815(n))` -/
def P17611227250197575317.Spec : Prop :=
  ∀ n, P17611227250197575317.a n = A175247 (n + 1)

end A175247

/-! ## A175247.P14403249393802452055

`A000040(record[A166333(n)])`
-/

namespace A175247.P14403249393802452055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175247.P14403249393802452055

namespace A175247

/-- `A000040(record[A166333(n)])` -/
def P14403249393802452055.Spec : Prop :=
  ∀ n, P14403249393802452055.a n = A175247 (n + 1)

end A175247

/-! ## A175247.P12426915862904415442

`A158611(A028815(n)+1)`
-/

namespace A175247.P12426915862904415442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A028815 n + 1).toNat

end

end A175247.P12426915862904415442

namespace A175247

/-- `A158611(A028815(n)+1)` -/
def P12426915862904415442.Spec : Prop :=
  ∀ n, P12426915862904415442.a n = A175247 (n + 1)

end A175247

/-! ## A175247.P12530365896899858289

`A000040(A028815(n)-1)`
-/

namespace A175247.P12530365896899858289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028815 n - 1).toNat

end

end A175247.P12530365896899858289

namespace A175247

/-- `A000040(A028815(n)-1)` -/
def P12530365896899858289.Spec : Prop :=
  ∀ n, P12530365896899858289.a n = A175247 (n + 1)

theorem P12530365896899858289.correct : P12530365896899858289.Spec := by
  intro n
  simp only [A175247, Nat.add_sub_cancel, A175247.P12530365896899858289.a, A175247.P4698162389150652956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175247

/-! ## A175247.P12969962591367368332

`A000040(A158611(n+2))`
-/

namespace A175247.P12969962591367368332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A158611 (n + 2)).toNat

end

end A175247.P12969962591367368332

namespace A175247

/-- `A000040(A158611(n+2))` -/
def P12969962591367368332.Spec : Prop :=
  ∀ n, P12969962591367368332.a n = A175247 (n + 1)

end A175247

/-! ## A175247.P7243975711464838790

`A000040(eq[1, A074206(n)])`
-/

namespace A175247.P7243975711464838790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175247.P7243975711464838790

namespace A175247

/-- `A000040(eq[1, A074206(n)])` -/
def P7243975711464838790.Spec : Prop :=
  ∀ n, P7243975711464838790.a n = A175247 (n + 1)

end A175247

/-! ## A175247.P10293481745051496768

`A000040(eq[1, A104725(n)])`
-/

namespace A175247.P10293481745051496768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175247.P10293481745051496768

namespace A175247

/-- `A000040(eq[1, A104725(n)])` -/
def P10293481745051496768.Spec : Prop :=
  ∀ n, P10293481745051496768.a n = A175247 (n + 1)

end A175247

/-! ## A175247.P10017835216840987779

`A000040(sqrt(A280076(n+1)))`
-/

namespace A175247.P10017835216840987779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A280076 (n + 1) : ℝ))).toNat

end

end A175247.P10017835216840987779

namespace A175247

/-- `A000040(sqrt(A280076(n+1)))` -/
def P10017835216840987779.Spec : Prop :=
  ∀ n, P10017835216840987779.a n = A175247 (n + 1)

end A175247

/-! ## A175247.P190618089162699678

`A000040(record[A006530(n+1)])`
-/

namespace A175247.P190618089162699678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175247.P190618089162699678

namespace A175247

/-- `A000040(record[A006530(n+1)])` -/
def P190618089162699678.Spec : Prop :=
  ∀ n, P190618089162699678.a n = A175247 (n + 1)

end A175247

/-!
# A175248: Noncomposites (A008578) with noncomposite (A008578) subscripts.

The programs for A175248, the canonical program `A175248.P3451421000021238238` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175248 has offset 1).

The definition of A175248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175248.P3451421000021238238

`A008578(A008578(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175248

/-- `A008578(A008578(n+1))` -/
def P3451421000021238238.Spec : Prop :=
  ∀ n, P3451421000021238238.a n = A175248 (n + 1)

theorem P3451421000021238238.correct : P3451421000021238238.Spec := by
  intro n
  simp only [A175248, Nat.add_sub_cancel]

end A175248

/-! ## A175248.P6597553632971991298

`A158611(A028815(n))`
-/

namespace A175248.P6597553632971991298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A028815 n).toNat

end

end A175248.P6597553632971991298

namespace A175248

/-- `A158611(A028815(n))` -/
def P6597553632971991298.Spec : Prop :=
  ∀ n, P6597553632971991298.a n = A175248 (n + 1)

end A175248

/-! ## A175248.P6392427720696151328

`A008578(record[A166333(n)])`
-/

namespace A175248.P6392427720696151328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175248.P6392427720696151328

namespace A175248

/-- `A008578(record[A166333(n)])` -/
def P6392427720696151328.Spec : Prop :=
  ∀ n, P6392427720696151328.a n = A175248 (n + 1)

end A175248

/-! ## A175248.P12217041280258215657

`A008578(A028815(n)-1)`
-/

namespace A175248.P12217041280258215657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A028815 n - 1).toNat

end

end A175248.P12217041280258215657

namespace A175248

/-- `A008578(A028815(n)-1)` -/
def P12217041280258215657.Spec : Prop :=
  ∀ n, P12217041280258215657.a n = A175248 (n + 1)

theorem P12217041280258215657.correct : P12217041280258215657.Spec := by
  intro n
  simp only [A175248, Nat.add_sub_cancel, A175248.P12217041280258215657.a, A175248.P3451421000021238238.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175248

/-! ## A175248.P18017475125518855390

`A064554(A158611(n+2))`
-/

namespace A175248.P18017475125518855390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064554 (A158611 (n + 2)).toNat

end

end A175248.P18017475125518855390

namespace A175248

/-- `A064554(A158611(n+2))` -/
def P18017475125518855390.Spec : Prop :=
  ∀ n, P18017475125518855390.a n = A175248 (n + 1)

end A175248

/-! ## A175248.P13059570392775168011

`A008578(eq[1, A072491(n)])`
-/

namespace A175248.P13059570392775168011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175248.P13059570392775168011

namespace A175248

/-- `A008578(eq[1, A072491(n)])` -/
def P13059570392775168011.Spec : Prop :=
  ∀ n, P13059570392775168011.a n = A175248 (n + 1)

end A175248

/-! ## A175248.P3134500281256271790

`A008578(eq[1, A074206(n)])`
-/

namespace A175248.P3134500281256271790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175248.P3134500281256271790

namespace A175248

/-- `A008578(eq[1, A074206(n)])` -/
def P3134500281256271790.Spec : Prop :=
  ∀ n, P3134500281256271790.a n = A175248 (n + 1)

end A175248

/-! ## A175248.P8257057324996592637

`A008578(eq[1, A309892(n)])`
-/

namespace A175248.P8257057324996592637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175248.P8257057324996592637

namespace A175248

/-- `A008578(eq[1, A309892(n)])` -/
def P8257057324996592637.Spec : Prop :=
  ∀ n, P8257057324996592637.a n = A175248 (n + 1)

end A175248

/-! ## A175248.P6061466116324569794

`A290641(record[A006530(n+1)])`
-/

namespace A175248.P6061466116324569794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175248.P6061466116324569794

namespace A175248

/-- `A290641(record[A006530(n+1)])` -/
def P6061466116324569794.Spec : Prop :=
  ∀ n, P6061466116324569794.a n = A175248 (n + 1)

end A175248

/-! ## A175248.P10152407531541169377

`A290641(record[A020639(n+1)])`
-/

namespace A175248.P10152407531541169377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175248.P10152407531541169377

namespace A175248

/-- `A290641(record[A020639(n+1)])` -/
def P10152407531541169377.Spec : Prop :=
  ∀ n, P10152407531541169377.a n = A175248 (n + 1)

end A175248

/-! ## A175248.P2987588914233790464

`A158611(A158611(n+2)+1)`
-/

namespace A175248.P2987588914233790464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A158611 (n + 2) + 1).toNat

end

end A175248.P2987588914233790464

namespace A175248

/-- `A158611(A158611(n+2)+1)` -/
def P2987588914233790464.Spec : Prop :=
  ∀ n, P2987588914233790464.a n = A175248 (n + 1)

end A175248

/-! ## A175248.P6235214276981308905

`sqrt(A280076(sqrt(A280076(n+1))))`
-/

namespace A175248.P6235214276981308905
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (SequenceMachineLib.roundAway (Real.sqrt (A280076 (n + 1) : ℝ))).toNat : ℝ)

end

end A175248.P6235214276981308905

namespace A175248

/-- `sqrt(A280076(sqrt(A280076(n+1))))` -/
def P6235214276981308905.Spec : Prop :=
  ∀ n, P6235214276981308905.a n = (A175248 (n + 1) : ℝ)

end A175248

/-! ## A175248.P15589637593702547987

`A001747(record[A006530(n+1)])/2`
-/

namespace A175248.P15589637593702547987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A175248.P15589637593702547987

namespace A175248

/-- `A001747(record[A006530(n+1)])/2` -/
def P15589637593702547987.Spec : Prop :=
  ∀ n, P15589637593702547987.a n = (A175248 (n + 1) : ℚ)

end A175248

/-! ## A175248.P11333628152103558710

`A001747(record[A014963(n+1)])/2`
-/

namespace A175248.P11333628152103558710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A175248.P11333628152103558710

namespace A175248

/-- `A001747(record[A014963(n+1)])/2` -/
def P11333628152103558710.Spec : Prop :=
  ∀ n, P11333628152103558710.a n = (A175248 (n + 1) : ℚ)

end A175248

/-! ## A175248.P314106949422649806

`A001747(record[A020639(n+1)])/2`
-/

namespace A175248.P314106949422649806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A175248.P314106949422649806

namespace A175248

/-- `A001747(record[A020639(n+1)])/2` -/
def P314106949422649806.Spec : Prop :=
  ∀ n, P314106949422649806.a n = (A175248 (n + 1) : ℚ)

end A175248

/-! ## A175248.P7453101982906271735

`A028815(lt[A001222(n+1), 2])-1`
-/

namespace A175248.P7453101982906271735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - 1

end

end A175248.P7453101982906271735

namespace A175248

/-- `A028815(lt[A001222(n+1), 2])-1` -/
def P7453101982906271735.Spec : Prop :=
  ∀ n, P7453101982906271735.a n = A175248 (n + 1)

end A175248

/-! ## A175248.P14480465750712409390

`A000040(A000040(n)-a(n%-1))` with `a(0)=1`
-/

namespace A175248.P14480465750712409390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A000040 n - a (Int.tmod (n : ℤ) (-1)).toNat).toNat

end

end A175248.P14480465750712409390

namespace A175248

/-- `A000040(A000040(n)-a(n%-1))` -/
def P14480465750712409390.Spec : Prop :=
  ∀ n, P14480465750712409390.a n = A175248 (n + 1)

end A175248

/-! ## A175248.P14757973179006509919

`A000040(A000040(n)-a(and(2, n²)))` with `a(0)=1`
-/

namespace A175248.P14757973179006509919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A000040 n - a (Nat.land 2 (n ^ 2))).toNat

end

end A175248.P14757973179006509919

namespace A175248

/-- `A000040(A000040(n)-a(and(2, n²)))` -/
def P14757973179006509919.Spec : Prop :=
  ∀ n, P14757973179006509919.a n = A175248 (n + 1)

end A175248

/-! ## A175248.P6832172269511395032

`record[A000040(A000010(n+1))-C(2, n)]`
-/

namespace A175248.P6832172269511395032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000010 (n + 1)).toNat - (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175248.P6832172269511395032

namespace A175248

/-- `record[A000040(A000010(n+1))-C(2, n)]` -/
def P6832172269511395032.Spec : Prop :=
  ∀ n, P6832172269511395032.a n = A175248 (n + 1)

end A175248

/-! ## A175248.P15337204580463193466

`∏{p}[record[A006530(n+1)], A000040(#-1)]`
-/

namespace A175248.P15337204580463193466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (p - 1)

end

end A175248.P15337204580463193466

namespace A175248

/-- `∏{p}[record[A006530(n+1)], A000040(#-1)]` -/
def P15337204580463193466.Spec : Prop :=
  ∀ n, P15337204580463193466.a n = A175248 (n + 1)

end A175248

/-!
# A175249: Noncomposites (A008578) with nonprime (A018252) subscripts.

The programs for A175249, the canonical program `A175249.P14139215036818513482` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175249 has offset 1).

The definition of A175249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175249.P14139215036818513482

`A008578(A018252(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175249

/-- `A008578(A018252(n+1))` -/
def P14139215036818513482.Spec : Prop :=
  ∀ n, P14139215036818513482.a n = A175249 (n + 1)

theorem P14139215036818513482.correct : P14139215036818513482.Spec := by
  intro n
  simp only [A175249, Nat.add_sub_cancel]

end A175249

/-! ## A175249.P15909324341882136424

`A324050(comp[p?[xor(1, n)]-1]+1)`
-/

namespace A175249.P15909324341882136424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A175249.P15909324341882136424

namespace A175249

/-- `A324050(comp[p?[xor(1, n)]-1]+1)` -/
def P15909324341882136424.Spec : Prop :=
  ∀ n, P15909324341882136424.a n = A175249 (n + 1)

end A175249

/-! ## A175249.P1659478999922331882

`A008578(comp[p?[xor(1, n)+1]-1]+1)`
-/

namespace A175249.P1659478999922331882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A175249.P1659478999922331882

namespace A175249

/-- `A008578(comp[p?[xor(1, n)+1]-1]+1)` -/
def P1659478999922331882.Spec : Prop :=
  ∀ n, P1659478999922331882.a n = A175249 (n + 1)

end A175249

/-! ## A175249.P17351566925376337144

`A008578(Δ[A051349(n)])`
-/

namespace A175249.P17351566925376337144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (n + 1) - f1 n).toNat

end

end A175249.P17351566925376337144

namespace A175249

/-- `A008578(Δ[A051349(n)])` -/
def P17351566925376337144.Spec : Prop :=
  ∀ n, P17351566925376337144.a n = A175249 (n + 1)

end A175249

/-! ## A175249.P4322117839333414107

`A008578(comp[A047814(n)])`
-/

namespace A175249.P4322117839333414107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A175249.P4322117839333414107

namespace A175249

/-- `A008578(comp[A047814(n)])` -/
def P4322117839333414107.Spec : Prop :=
  ∀ n, P4322117839333414107.a n = A175249 (n + 1)

end A175249

/-! ## A175249.P7212931194257212659

`A006005(A060462(n+1))`
-/

namespace A175249.P7212931194257212659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A060462 (n + 1)).toNat

end

end A175249.P7212931194257212659

namespace A175249

/-- `A006005(A060462(n+1))` -/
def P7212931194257212659.Spec : Prop :=
  ∀ n, P7212931194257212659.a n = A175249 (n + 1)

end A175249

/-! ## A175249.P8168027658288643660

`A064989(A007821(n+1))`
-/

namespace A175249.P8168027658288643660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A007821 (n + 1)).toNat

end

end A175249.P8168027658288643660

namespace A175249

/-- `A064989(A007821(n+1))` -/
def P8168027658288643660.Spec : Prop :=
  ∀ n, P8168027658288643660.a n = A175249 (n + 1)

end A175249

/-! ## A175249.P11749468463065123622

`A026239(A102615(n+1))`
-/

namespace A175249.P11749468463065123622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A102615 (n + 1)).toNat

end

end A175249.P11749468463065123622

namespace A175249

/-- `A026239(A102615(n+1))` -/
def P11749468463065123622.Spec : Prop :=
  ∀ n, P11749468463065123622.a n = A175249 (n + 1)

end A175249

/-! ## A175249.P13986546357253893044

`A130008(A166257(n+1))`
-/

namespace A175249.P13986546357253893044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 (A166257 (n + 1)).toNat

end

end A175249.P13986546357253893044

namespace A175249

/-- `A130008(A166257(n+1))` -/
def P13986546357253893044.Spec : Prop :=
  ∀ n, P13986546357253893044.a n = A175249 (n + 1)

end A175249

/-! ## A175249.P13246720315540382060

`A141617(A161777(n+1))`
-/

namespace A175249.P13246720315540382060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141617 (A161777 (n + 1)).toNat

end

end A175249.P13246720315540382060

namespace A175249

/-- `A141617(A161777(n+1))` -/
def P13246720315540382060.Spec : Prop :=
  ∀ n, P13246720315540382060.a n = A175249 (n + 1)

end A175249

/-!
# A175250: Nonprimes (A018252) with noncomposite (A008578) subscripts.

The programs for A175250, there is no canonical definition to state claims against.
-/

/-! ## A175250.P16757450868663456636

`A018252(eq[n, ∏{d}[n, #]])`
-/

namespace A175250.P16757450868663456636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175250.P16757450868663456636

/-! ## A175250.P16168363204500980391

`A141468(A028815(n))`
-/

namespace A175250.P16168363204500980391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A028815 n).toNat

end

end A175250.P16168363204500980391

/-! ## A175250.P10392582175867818627

`A018252(A141617(∑[n]))`
-/

namespace A175250.P10392582175867818627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A141617 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A175250.P10392582175867818627

/-! ## A175250.P2493058072197735988

`A018252(record[A056149(n)])`
-/

namespace A175250.P2493058072197735988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175250.P2493058072197735988

/-! ## A175250.P11660928331053591984

`A018252(record[A130008(n)])`
-/

namespace A175250.P11660928331053591984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175250.P11660928331053591984

/-!
# A175251: Composites (A002808) with nonprime (A018252) subscripts.

The programs for A175251, there is no canonical definition to state claims against.
-/

/-! ## A175251.P2810258668625035152

`eq[0, A246681(n)%4]`
-/

namespace A175251.P2810258668625035152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246681 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175251.P2810258668625035152

/-! ## A175251.P2872163807408407042

`∪[A050435(n+1), (n+2)²]`
-/

namespace A175251.P2872163807408407042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A175251.P2872163807408407042

/-! ## A175251.P3477861887655182335

`A002808(comp[p?[xor(1, n)]-1]+1)`
-/

namespace A175251.P3477861887655182335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A175251.P3477861887655182335

/-! ## A175251.P10257739164395044955

`A018252(lt[∑{p}[1-n, #], n-1])`
-/

namespace A175251.P10257739164395044955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A175251.P10257739164395044955

/-! ## A175251.P2518567360172860949

`A018252(comp[p?[n%3+n]-1]+2)`
-/

namespace A175251.P2518567360172860949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A175251.P2518567360172860949

/-! ## A175251.P12317454726489014400

`A002808(comp[p?[round(3*n/7)]-1]+1)`
-/

namespace A175251.P12317454726489014400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A175251.P12317454726489014400

/-! ## A175251.P8560884765276504537

`A072668(comp[p?[xor(1, n)+1]-1]+1)+1`
-/

namespace A175251.P8560884765276504537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A175251.P8560884765276504537

/-! ## A175251.P17106037461105171830

`A002808(Δ[A051349(n)])`
-/

namespace A175251.P17106037461105171830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (n + 1) - f1 n).toNat

end

end A175251.P17106037461105171830

/-! ## A175251.P17334340537760310495

`A002808(A018252(n+1))`
-/

namespace A175251.P17334340537760310495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A018252 (n + 1)).toNat

end

end A175251.P17334340537760310495

/-! ## A175251.P2586941173479235098

`A026239(A007821(n+1))`
-/

namespace A175251.P2586941173479235098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A007821 (n + 1)).toNat

end

end A175251.P2586941173479235098

/-!
# A175252: Numbers whose digit representation is equal to the digit representation of the initial terms of their sets of divisors in increasing order.

The programs for A175252, there is no canonical definition to state claims against.
-/

/-! ## A175252.P2852485618657147739

`A357273(A214577(n+1)^A357327(2*n+1))`
-/

namespace A175252.P2852485618657147739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357273 (SequenceMachineLib.roundAway ((A214577 (n + 1) : ℚ) ^ (A357327 (2 * n + 1) : ℤ))).toNat

end

end A175252.P2852485618657147739

/-!
# A175253: a(n) = characteristic function of numbers k such that A000203(m) = k has no solution for any m, where A000203(m) = sum of divisors of m.

The programs for A175253, the canonical program `A175253.P7822939282831738553` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175253 has offset 1).

The definition of A175253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175253.P7822939282831738553

`1-A175192(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175253

/-- `1-A175192(n+1)` -/
def P7822939282831738553.Spec : Prop :=
  ∀ n, P7822939282831738553.a n = A175253 (n + 1)

theorem P7822939282831738553.correct : P7822939282831738553.Spec := by
  intro n
  simp only [A175253, Nat.add_sub_cancel]

end A175253

/-! ## A175253.P15503708847764290601

`floor(acot(A054973(n+1)))`
-/

namespace A175253.P15503708847764290601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A054973 (n + 1) : ℝ)⌋

end

end A175253.P15503708847764290601

namespace A175253

/-- `floor(acot(A054973(n+1)))` -/
def P15503708847764290601.Spec : Prop :=
  ∀ n, P15503708847764290601.a n = A175253 (n + 1)

end A175253

/-! ## A175253.P214262552510759920

`floor(1/A283524(n+1))`
-/

namespace A175253.P214262552510759920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A283524 (n + 1) : ℚ)⌋

end

end A175253.P214262552510759920

namespace A175253

/-- `floor(1/A283524(n+1))` -/
def P214262552510759920.Spec : Prop :=
  ∀ n, P214262552510759920.a n = A175253 (n + 1)

end A175253

/-! ## A175253.P12130073771897188878

`char[A007369(n+1)-1]`
-/

namespace A175253.P12130073771897188878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A175253.P12130073771897188878

namespace A175253

/-- `char[A007369(n+1)-1]` -/
def P12130073771897188878.Spec : Prop :=
  ∀ n, (P12130073771897188878.a n : ℤ) = A175253 (n + 1)

end A175253

/-! ## A175253.P14583325541817183584

`C(n, A051444(n+1)²)`
-/

namespace A175253.P14583325541817183584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A051444 (n + 1) ^ 2).toNat

end

end A175253.P14583325541817183584

namespace A175253

/-- `C(n, A051444(n+1)²)` -/
def P14583325541817183584.Spec : Prop :=
  ∀ n, (P14583325541817183584.a n : ℤ) = A175253 (n + 1)

end A175253

/-! ## A175253.P9301514672548054067

`C(n, A057637(n+1)²)`
-/

namespace A175253.P9301514672548054067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A057637 (n + 1) ^ 2).toNat

end

end A175253.P9301514672548054067

namespace A175253

/-- `C(n, A057637(n+1)²)` -/
def P9301514672548054067.Spec : Prop :=
  ∀ n, (P9301514672548054067.a n : ℤ) = A175253 (n + 1)

end A175253

/-! ## A175253.P769271341264486253

`C(n, A258913(n+1)²)`
-/

namespace A175253.P769271341264486253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A258913 (n + 1) ^ 2).toNat

end

end A175253.P769271341264486253

namespace A175253

/-- `C(n, A258913(n+1)²)` -/
def P769271341264486253.Spec : Prop :=
  ∀ n, (P769271341264486253.a n : ℤ) = A175253 (n + 1)

end A175253

/-! ## A175253.P4657617677687826700

`char[comp[A000203(n+1)-1]]`
-/

namespace A175253.P4657617677687826700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A175253.P4657617677687826700

namespace A175253

/-- `char[comp[A000203(n+1)-1]]` -/
def P4657617677687826700.Spec : Prop :=
  ∀ n, (P4657617677687826700.a n : ℤ) = A175253 (n + 1)

end A175253

/-! ## A175253.P7239069978049032560

`1-char[A002191(n+1)-1]`
-/

namespace A175253.P7239069978049032560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A175253.P7239069978049032560

namespace A175253

/-- `1-char[A002191(n+1)-1]` -/
def P7239069978049032560.Spec : Prop :=
  ∀ n, P7239069978049032560.a n = A175253 (n + 1)

end A175253

/-! ## A175253.P8262422096224756904

`1-char[A090128(n+1)-1]`
-/

namespace A175253.P8262422096224756904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090128 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A175253.P8262422096224756904

namespace A175253

/-- `1-char[A090128(n+1)-1]` -/
def P8262422096224756904.Spec : Prop :=
  ∀ n, P8262422096224756904.a n = A175253 (n + 1)

end A175253

/-! ## A175253.P16716399289568061485

`A000007(A051444(n+1))`
-/

namespace A175253.P16716399289568061485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051444 (n + 1)).toNat

end

end A175253.P16716399289568061485

namespace A175253

/-- `A000007(A051444(n+1))` -/
def P16716399289568061485.Spec : Prop :=
  ∀ n, P16716399289568061485.a n = A175253 (n + 1)

end A175253

/-! ## A175253.P7407540616565106037

`A000007(A054973(n+1))`
-/

namespace A175253.P7407540616565106037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A054973 (n + 1)).toNat

end

end A175253.P7407540616565106037

namespace A175253

/-- `A000007(A054973(n+1))` -/
def P7407540616565106037.Spec : Prop :=
  ∀ n, P7407540616565106037.a n = A175253 (n + 1)

end A175253

/-! ## A175253.P16484587885009261583

`A000007(A057637(n+1))`
-/

namespace A175253.P16484587885009261583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A057637 (n + 1)).toNat

end

end A175253.P16484587885009261583

namespace A175253

/-- `A000007(A057637(n+1))` -/
def P16484587885009261583.Spec : Prop :=
  ∀ n, P16484587885009261583.a n = A175253 (n + 1)

end A175253

/-! ## A175253.P14309894193009214293

`A000007(A240667(n+1))`
-/

namespace A175253.P14309894193009214293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A240667 (n + 1)).toNat

end

end A175253.P14309894193009214293

namespace A175253

/-- `A000007(A240667(n+1))` -/
def P14309894193009214293.Spec : Prop :=
  ∀ n, P14309894193009214293.a n = A175253 (n + 1)

end A175253

/-! ## A175253.P8655137489729306713

`A000007(A241954(n+1))`
-/

namespace A175253.P8655137489729306713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A241954 (n + 1)).toNat

end

end A175253.P8655137489729306713

namespace A175253

/-- `A000007(A241954(n+1))` -/
def P8655137489729306713.Spec : Prop :=
  ∀ n, P8655137489729306713.a n = A175253 (n + 1)

end A175253

/-! ## A175253.P7799063645818934681

`A000007(A286011(n+1))`
-/

namespace A175253.P7799063645818934681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A286011 (n + 1)).toNat

end

end A175253.P7799063645818934681

namespace A175253

/-- `A000007(A286011(n+1))` -/
def P7799063645818934681.Spec : Prop :=
  ∀ n, P7799063645818934681.a n = A175253 (n + 1)

end A175253

/-! ## A175253.P844203711046392931

`A000007(A341879(n+1))`
-/

namespace A175253.P844203711046392931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A341879 (n + 1)).toNat

end

end A175253.P844203711046392931

namespace A175253

/-- `A000007(A341879(n+1))` -/
def P844203711046392931.Spec : Prop :=
  ∀ n, P844203711046392931.a n = A175253 (n + 1)

end A175253

/-! ## A175253.P12761429565640502320

`A063524(A051444(n+1)+1)`
-/

namespace A175253.P12761429565640502320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A051444 (n + 1) + 1).toNat

end

end A175253.P12761429565640502320

namespace A175253

/-- `A063524(A051444(n+1)+1)` -/
def P12761429565640502320.Spec : Prop :=
  ∀ n, P12761429565640502320.a n = A175253 (n + 1)

end A175253

/-! ## A175253.P9567836713331970557

`A054973(A054973(n+1)²+1)`
-/

namespace A175253.P9567836713331970557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A054973 (n + 1) ^ 2 + 1).toNat

end

end A175253.P9567836713331970557

namespace A175253

/-- `A054973(A054973(n+1)²+1)` -/
def P9567836713331970557.Spec : Prop :=
  ∀ n, P9567836713331970557.a n = A175253 (n + 1)

end A175253

/-! ## A175253.P12436851894270598480

`A286011(A286011(n+1)²+1)`
-/

namespace A175253.P12436851894270598480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286011 (A286011 (n + 1) ^ 2 + 1).toNat

end

end A175253.P12436851894270598480

namespace A175253

/-- `A286011(A286011(n+1)²+1)` -/
def P12436851894270598480.Spec : Prop :=
  ∀ n, P12436851894270598480.a n = A175253 (n + 1)

end A175253

/-!
# A175254: a(n) = Sum_{k<=n} A000203(k)*(n-k+1), where A000203(m) is the sum of divisors of m.

The programs for A175254, the canonical program `A175254.P11385085050354624172` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175254 has offset 1).

The definition of A175254 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072481, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175254.P1204316917068991264

`A244050(n+1)/4`
-/

namespace A175254.P1204316917068991264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244050 (n + 1) : ℚ) / 4

end

end A175254.P1204316917068991264

namespace A175254

/-- `A244050(n+1)/4` -/
def P1204316917068991264.Spec : Prop :=
  ∀ n, P1204316917068991264.a n = (A175254 (n + 1) : ℚ)

theorem P1204316917068991264.correct : P1204316917068991264.Spec := by
  intro n
  simp only [A175254, Nat.add_sub_cancel, A175254.P1204316917068991264.a, A175254.P11385085050354624172.a, A000330, A000330.P6574240937923917945.a, A072481, A072481.P6215182981061618954.f3, A072481.P6215182981061618954.f2, A072481.P6215182981061618954.f1, A072481.P6215182981061618954.a, A244050, A244050.P4388915496307742353.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175254

/-! ## A175254.P11385085050354624172

`A000330(n+1)-A072481(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175254

/-- `A000330(n+1)-A072481(n+1)` -/
def P11385085050354624172.Spec : Prop :=
  ∀ n, P11385085050354624172.a n = A175254 (n + 1)

theorem P11385085050354624172.correct : P11385085050354624172.Spec := by
  intro n
  simp only [A175254, Nat.add_sub_cancel]

end A175254

/-! ## A175254.P1056415484316475632

`(n+2)*A024916(n+1)-A143128(n+1)`
-/

namespace A175254.P1056415484316475632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A024916 (n + 1) - A143128 (n + 1)

end

end A175254.P1056415484316475632

namespace A175254

/-- `(n+2)*A024916(n+1)-A143128(n+1)` -/
def P1056415484316475632.Spec : Prop :=
  ∀ n, P1056415484316475632.a n = A175254 (n + 1)

end A175254

/-! ## A175254.P11968417721869943651

`∑[∑[∑{d}[n+1, #]]]`
-/

namespace A175254.P11968417721869943651
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P11968417721869943651

namespace A175254

/-- `∑[∑[∑{d}[n+1, #]]]` -/
def P11968417721869943651.Spec : Prop :=
  ∀ n, (P11968417721869943651.a n : ℤ) = A175254 (n + 1)

end A175254

/-! ## A175254.P16205347470103443254

`∑[A024916(n+1)]`
-/

namespace A175254.P16205347470103443254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P16205347470103443254

namespace A175254

/-- `∑[A024916(n+1)]` -/
def P16205347470103443254.Spec : Prop :=
  ∀ n, P16205347470103443254.a n = A175254 (n + 1)

end A175254

/-! ## A175254.P2350070533546635374

`∑[∑[A000203(n+1)]]`
-/

namespace A175254.P2350070533546635374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P2350070533546635374

namespace A175254

/-- `∑[∑[A000203(n+1)]]` -/
def P2350070533546635374.Spec : Prop :=
  ∀ n, P2350070533546635374.a n = A175254 (n + 1)

end A175254

/-! ## A175254.P7007260959265860638

`∑[∑[A245092(Δ[n²])]]`
-/

namespace A175254.P7007260959265860638
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P7007260959265860638

namespace A175254

/-- `∑[∑[A245092(Δ[n²])]]` -/
def P7007260959265860638.Spec : Prop :=
  ∀ n, P7007260959265860638.a n = A175254 (n + 1)

end A175254

/-! ## A175254.P7485748687105249387

`∑[A160664(n+1)-1]`
-/

namespace A175254.P7485748687105249387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P7485748687105249387

namespace A175254

/-- `∑[A160664(n+1)-1]` -/
def P7485748687105249387.Spec : Prop :=
  ∀ n, P7485748687105249387.a n = A175254 (n + 1)

end A175254

/-! ## A175254.P17893002247048714878

`∑[A327329(n+1)/2]`
-/

namespace A175254.P17893002247048714878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327329 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P17893002247048714878

namespace A175254

/-- `∑[A327329(n+1)/2]` -/
def P17893002247048714878.Spec : Prop :=
  ∀ n, P17893002247048714878.a n = (A175254 (n + 1) : ℚ)

end A175254

/-! ## A175254.P12217424880105353588

`∑[A243980(n+1)/4]`
-/

namespace A175254.P12217424880105353588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243980 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P12217424880105353588

namespace A175254

/-- `∑[A243980(n+1)/4]` -/
def P12217424880105353588.Spec : Prop :=
  ∀ n, P12217424880105353588.a n = (A175254 (n + 1) : ℚ)

end A175254

/-! ## A175254.P7495447898490693816

`∑[∑[abs(A143348(n+1))]]`
-/

namespace A175254.P7495447898490693816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P7495447898490693816

namespace A175254

/-- `∑[∑[abs(A143348(n+1))]]` -/
def P7495447898490693816.Spec : Prop :=
  ∀ n, P7495447898490693816.a n = A175254 (n + 1)

end A175254

/-! ## A175254.P3185375817221677119

`∑[∑[sqrt(A072861(n+1))]]`
-/

namespace A175254.P3185375817221677119
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P3185375817221677119

namespace A175254

/-- `∑[∑[sqrt(A072861(n+1))]]` -/
def P3185375817221677119.Spec : Prop :=
  ∀ n, P3185375817221677119.a n = (A175254 (n + 1) : ℝ)

end A175254

/-! ## A175254.P11795756098082589407

`∑[∑[∑[A340793(n+1)]]]`
-/

namespace A175254.P11795756098082589407
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P11795756098082589407

namespace A175254

/-- `∑[∑[∑[A340793(n+1)]]]` -/
def P11795756098082589407.Spec : Prop :=
  ∀ n, P11795756098082589407.a n = A175254 (n + 1)

end A175254

/-! ## A175254.P736548668563238713

`∑[∑[A039653(n+1)+1]]`
-/

namespace A175254.P736548668563238713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P736548668563238713

namespace A175254

/-- `∑[∑[A039653(n+1)+1]]` -/
def P736548668563238713.Spec : Prop :=
  ∀ n, P736548668563238713.a n = A175254 (n + 1)

end A175254

/-! ## A175254.P17939747181559575479

`∑[∑[A088580(n+1)-1]]`
-/

namespace A175254.P17939747181559575479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P17939747181559575479

namespace A175254

/-- `∑[∑[A088580(n+1)-1]]` -/
def P17939747181559575479.Spec : Prop :=
  ∀ n, P17939747181559575479.a n = A175254 (n + 1)

end A175254

/-! ## A175254.P16951224596957402322

`∑[∑[A074400(n+1)/2]]`
-/

namespace A175254.P16951224596957402322
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P16951224596957402322

namespace A175254

/-- `∑[∑[A074400(n+1)/2]]` -/
def P16951224596957402322.Spec : Prop :=
  ∀ n, P16951224596957402322.a n = (A175254 (n + 1) : ℚ)

end A175254

/-! ## A175254.P12714741194000327190

`∑[A256533(n+1)/(n+1)]`
-/

namespace A175254.P12714741194000327190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256533 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P12714741194000327190

namespace A175254

/-- `∑[A256533(n+1)/(n+1)]` -/
def P12714741194000327190.Spec : Prop :=
  ∀ n, P12714741194000327190.a n = (A175254 (n + 1) : ℚ)

end A175254

/-! ## A175254.P11436014193574744970

`∑[(n+1)²-A004125(n+1)]`
-/

namespace A175254.P11436014193574744970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A004125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P11436014193574744970

namespace A175254

/-- `∑[(n+1)²-A004125(n+1)]` -/
def P11436014193574744970.Spec : Prop :=
  ∀ n, P11436014193574744970.a n = A175254 (n + 1)

end A175254

/-! ## A175254.P15883987706775305571

`∑[∑[A001065(n+1)+1+n]]`
-/

namespace A175254.P15883987706775305571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P15883987706775305571

namespace A175254

/-- `∑[∑[A001065(n+1)+1+n]]` -/
def P15883987706775305571.Spec : Prop :=
  ∀ n, P15883987706775305571.a n = A175254 (n + 1)

end A175254

/-! ## A175254.P8484729921863380235

`∑[∑[A155085(n+1)-(n+1)]]`
-/

namespace A175254.P8484729921863380235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175254.P8484729921863380235

namespace A175254

/-- `∑[∑[A155085(n+1)-(n+1)]]` -/
def P8484729921863380235.Spec : Prop :=
  ∀ n, P8484729921863380235.a n = A175254 (n + 1)

end A175254

/-!
# A175255: Squares in A111153.

The programs for A175255, the canonical program `A175255.P1996567333261754558` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175255 has offset 1).

The definition of A175255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175255.P13065520558509346176

`A175256(n+1)²`
-/

namespace A175255.P13065520558509346176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175256 (n + 1) ^ 2

end

end A175255.P13065520558509346176

namespace A175255

/-- `A175256(n+1)²` -/
def P13065520558509346176.Spec : Prop :=
  ∀ n, P13065520558509346176.a n = A175255 (n + 1)

end A175255

/-! ## A175255.P1996567333261754558

`p?[A103982(n+1)]²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175255

/-- `p?[A103982(n+1)]²` -/
def P1996567333261754558.Spec : Prop :=
  ∀ n, P1996567333261754558.a n = A175255 (n + 1)

theorem P1996567333261754558.correct : P1996567333261754558.Spec := by
  intro n
  simp only [A175255, Nat.add_sub_cancel]

end A175255

/-! ## A175255.P16873152149076024368

`p?[A112777(n+1)]²`
-/

namespace A175255.P16873152149076024368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A175255.P16873152149076024368

namespace A175255

/-- `p?[A112777(n+1)]²` -/
def P16873152149076024368.Spec : Prop :=
  ∀ n, P16873152149076024368.a n = A175255 (n + 1)

end A175255

/-! ## A175255.P10797052461475461342

`p?[eq[2, A103981(n)]]²`
-/

namespace A175255.P10797052461475461342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103981 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2

end

end A175255.P10797052461475461342

namespace A175255

/-- `p?[eq[2, A103981(n)]]²` -/
def P10797052461475461342.Spec : Prop :=
  ∀ n, (P10797052461475461342.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P15174852935365435694

`p?[floor(sqrt(A111351(n+1)/2))]²`
-/

namespace A175255.P15174852935365435694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A111351 (n + 1) : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A175255.P15174852935365435694

namespace A175255

/-- `p?[floor(sqrt(A111351(n+1)/2))]²` -/
def P15174852935365435694.Spec : Prop :=
  ∀ n, P15174852935365435694.a n = A175255 (n + 1)

end A175255

/-! ## A175255.P13291321552870500122

`∩[A111350(n+1), A033476(n)]`
-/

namespace A175255.P13291321552870500122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P13291321552870500122

namespace A175255

/-- `∩[A111350(n+1), A033476(n)]` -/
def P13291321552870500122.Spec : Prop :=
  ∀ n, (P13291321552870500122.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P7187756455941957102

`∩[A111350(n+1), A079142(n)]`
-/

namespace A175255.P7187756455941957102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P7187756455941957102

namespace A175255

/-- `∩[A111350(n+1), A079142(n)]` -/
def P7187756455941957102.Spec : Prop :=
  ∀ n, (P7187756455941957102.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P10398496094689475706

`∩[A001248(n+1), A111350(n+1)]`
-/

namespace A175255.P10398496094689475706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P10398496094689475706

namespace A175255

/-- `∩[A001248(n+1), A111350(n+1)]` -/
def P10398496094689475706.Spec : Prop :=
  ∀ n, (P10398496094689475706.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P2816999990159608125

`∩[A053024(n+1), A111350(n+1)]`
-/

namespace A175255.P2816999990159608125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P2816999990159608125

namespace A175255

/-- `∩[A053024(n+1), A111350(n+1)]` -/
def P2816999990159608125.Spec : Prop :=
  ∀ n, (P2816999990159608125.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P12900076180472863662

`∩[A053810(n+1), A111350(n+1)]`
-/

namespace A175255.P12900076180472863662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P12900076180472863662

namespace A175255

/-- `∩[A053810(n+1), A111350(n+1)]` -/
def P12900076180472863662.Spec : Prop :=
  ∀ n, (P12900076180472863662.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P12065922228532688114

`∩[A057602(n+1), A111350(n+1)]`
-/

namespace A175255.P12065922228532688114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P12065922228532688114

namespace A175255

/-- `∩[A057602(n+1), A111350(n+1)]` -/
def P12065922228532688114.Spec : Prop :=
  ∀ n, (P12065922228532688114.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P867251599623715394

`∩[A064599(n+1), A111350(n+1)]`
-/

namespace A175255.P867251599623715394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P867251599623715394

namespace A175255

/-- `∩[A064599(n+1), A111350(n+1)]` -/
def P867251599623715394.Spec : Prop :=
  ∀ n, (P867251599623715394.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P1060652921410219850

`∩[A068999(n+1), A111350(n+1)]`
-/

namespace A175255.P1060652921410219850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P1060652921410219850

namespace A175255

/-- `∩[A068999(n+1), A111350(n+1)]` -/
def P1060652921410219850.Spec : Prop :=
  ∀ n, (P1060652921410219850.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P8449745542113150315

`∩[A070160(n+1), A111350(n+1)]`
-/

namespace A175255.P8449745542113150315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P8449745542113150315

namespace A175255

/-- `∩[A070160(n+1), A111350(n+1)]` -/
def P8449745542113150315.Spec : Prop :=
  ∀ n, (P8449745542113150315.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P6493751243881070984

`∩[A071835(n+1), A111350(n+1)]`
-/

namespace A175255.P6493751243881070984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P6493751243881070984

namespace A175255

/-- `∩[A071835(n+1), A111350(n+1)]` -/
def P6493751243881070984.Spec : Prop :=
  ∀ n, (P6493751243881070984.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P13876714241162549384

`∩[A076794(n+1), A111350(n+1)]`
-/

namespace A175255.P13876714241162549384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P13876714241162549384

namespace A175255

/-- `∩[A076794(n+1), A111350(n+1)]` -/
def P13876714241162549384.Spec : Prop :=
  ∀ n, (P13876714241162549384.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P5767359876388411419

`∩[A079143(n+1), A111350(n+1)]`
-/

namespace A175255.P5767359876388411419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P5767359876388411419

namespace A175255

/-- `∩[A079143(n+1), A111350(n+1)]` -/
def P5767359876388411419.Spec : Prop :=
  ∀ n, (P5767359876388411419.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P6781338688538768501

`∩[A082180(n+1), A111350(n+1)]`
-/

namespace A175255.P6781338688538768501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P6781338688538768501

namespace A175255

/-- `∩[A082180(n+1), A111350(n+1)]` -/
def P6781338688538768501.Spec : Prop :=
  ∀ n, (P6781338688538768501.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P5014460967584546829

`∩[A111350(n+1), A156759(n+1)]`
-/

namespace A175255.P5014460967584546829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P5014460967584546829

namespace A175255

/-- `∩[A111350(n+1), A156759(n+1)]` -/
def P5014460967584546829.Spec : Prop :=
  ∀ n, (P5014460967584546829.a n : ℤ) = A175255 (n + 1)

end A175255

/-! ## A175255.P1588581474300489738

`∩[A111350(n+1), A179707(n+1)]`
-/

namespace A175255.P1588581474300489738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175255.P1588581474300489738

namespace A175255

/-- `∩[A111350(n+1), A179707(n+1)]` -/
def P1588581474300489738.Spec : Prop :=
  ∀ n, (P1588581474300489738.a n : ℤ) = A175255 (n + 1)

end A175255

/-!
# A175256: a(n) = sqrt(A175255(n)).

The programs for A175256, the canonical program `A175256.P189772592712157047` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175256 has offset 1).

The definition of A175256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175255, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175256.P189772592712157047

`sqrt(A175255(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175256

/-- `sqrt(A175255(n+1))` -/
def P189772592712157047.Spec : Prop :=
  ∀ n, P189772592712157047.a n = (A175256 (n + 1) : ℝ)

end A175256

/-! ## A175256.P11830746487656023509

`p?[A103982(n+1)]`
-/

namespace A175256.P11830746487656023509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175256.P11830746487656023509

namespace A175256

/-- `p?[A103982(n+1)]` -/
def P11830746487656023509.Spec : Prop :=
  ∀ n, P11830746487656023509.a n = A175256 (n + 1)

end A175256

/-! ## A175256.P18281384310035019119

`∩[A015919(n+1), A103982(n+1)]`
-/

namespace A175256.P18281384310035019119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P18281384310035019119

namespace A175256

/-- `∩[A015919(n+1), A103982(n+1)]` -/
def P18281384310035019119.Spec : Prop :=
  ∀ n, (P18281384310035019119.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P8707771181854409612

`∩[A066720(n+1), A103982(n+1)]`
-/

namespace A175256.P8707771181854409612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P8707771181854409612

namespace A175256

/-- `∩[A066720(n+1), A103982(n+1)]` -/
def P8707771181854409612.Spec : Prop :=
  ∀ n, (P8707771181854409612.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P3497804035730380714

`∩[A000040(n+1), A103982(n+1)]`
-/

namespace A175256.P3497804035730380714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P3497804035730380714

namespace A175256

/-- `∩[A000040(n+1), A103982(n+1)]` -/
def P3497804035730380714.Spec : Prop :=
  ∀ n, (P3497804035730380714.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P15646486448966854680

`∩[A008578(n+1), A103982(n+1)]`
-/

namespace A175256.P15646486448966854680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P15646486448966854680

namespace A175256

/-- `∩[A008578(n+1), A103982(n+1)]` -/
def P15646486448966854680.Spec : Prop :=
  ∀ n, (P15646486448966854680.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P5084508955045172201

`∩[A045344(n+1), A103982(n+1)]`
-/

namespace A175256.P5084508955045172201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P5084508955045172201

namespace A175256

/-- `∩[A045344(n+1), A103982(n+1)]` -/
def P5084508955045172201.Spec : Prop :=
  ∀ n, (P5084508955045172201.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P3752339086558623738

`∩[A046022(n+1), A103982(n+1)]`
-/

namespace A175256.P3752339086558623738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P3752339086558623738

namespace A175256

/-- `∩[A046022(n+1), A103982(n+1)]` -/
def P3752339086558623738.Spec : Prop :=
  ∀ n, (P3752339086558623738.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P18196608135306771377

`∩[A062972(n+1), A103982(n+1)]`
-/

namespace A175256.P18196608135306771377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P18196608135306771377

namespace A175256

/-- `∩[A062972(n+1), A103982(n+1)]` -/
def P18196608135306771377.Spec : Prop :=
  ∀ n, (P18196608135306771377.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P7932886840350051814

`∩[A174090(n+1), A103982(n+1)]`
-/

namespace A175256.P7932886840350051814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P7932886840350051814

namespace A175256

/-- `∩[A174090(n+1), A103982(n+1)]` -/
def P7932886840350051814.Spec : Prop :=
  ∀ n, (P7932886840350051814.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P18172615685508735363

`∩[A103982(n+1), A246551(n+1)]`
-/

namespace A175256.P18172615685508735363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P18172615685508735363

namespace A175256

/-- `∩[A103982(n+1), A246551(n+1)]` -/
def P18172615685508735363.Spec : Prop :=
  ∀ n, (P18172615685508735363.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P9938000621886055103

`∩[A103982(n+1), A369093(n+1)]`
-/

namespace A175256.P9938000621886055103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P9938000621886055103

namespace A175256

/-- `∩[A103982(n+1), A369093(n+1)]` -/
def P9938000621886055103.Spec : Prop :=
  ∀ n, (P9938000621886055103.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P4281766353445200103

`∩[A103982(n+1), A201879(n+1)]`
-/

namespace A175256.P4281766353445200103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P4281766353445200103

namespace A175256

/-- `∩[A103982(n+1), A201879(n+1)]` -/
def P4281766353445200103.Spec : Prop :=
  ∀ n, (P4281766353445200103.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P8114625543502046683

`∩[A070159(n+1), A103982(n+1)]`
-/

namespace A175256.P8114625543502046683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P8114625543502046683

namespace A175256

/-- `∩[A070159(n+1), A103982(n+1)]` -/
def P8114625543502046683.Spec : Prop :=
  ∀ n, (P8114625543502046683.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P15015020937071899607

`∩[A123091(n+1), A103982(n+1)]`
-/

namespace A175256.P15015020937071899607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P15015020937071899607

namespace A175256

/-- `∩[A123091(n+1), A103982(n+1)]` -/
def P15015020937071899607.Spec : Prop :=
  ∀ n, (P15015020937071899607.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P5371082286524841594

`∩[A067934(n+1), A103982(n+1)]`
-/

namespace A175256.P5371082286524841594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P5371082286524841594

namespace A175256

/-- `∩[A067934(n+1), A103982(n+1)]` -/
def P5371082286524841594.Spec : Prop :=
  ∀ n, (P5371082286524841594.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P14216401508817867322

`∩[A066191(n+1), A103982(n+1)]`
-/

namespace A175256.P14216401508817867322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P14216401508817867322

namespace A175256

/-- `∩[A066191(n+1), A103982(n+1)]` -/
def P14216401508817867322.Spec : Prop :=
  ∀ n, (P14216401508817867322.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P9891254094259458835

`∩[A079603(n+1), A103982(n+1)]`
-/

namespace A175256.P9891254094259458835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P9891254094259458835

namespace A175256

/-- `∩[A079603(n+1), A103982(n+1)]` -/
def P9891254094259458835.Spec : Prop :=
  ∀ n, (P9891254094259458835.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P4688315330204240325

`∩[A084111(n+1), A103982(n+1)]`
-/

namespace A175256.P4688315330204240325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175256.P4688315330204240325

namespace A175256

/-- `∩[A084111(n+1), A103982(n+1)]` -/
def P4688315330204240325.Spec : Prop :=
  ∀ n, (P4688315330204240325.a n : ℤ) = A175256 (n + 1)

end A175256

/-! ## A175256.P4527742402226917577

`filter[A103982(n+1), A010051(#)]`
-/

namespace A175256.P4527742402226917577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A175256.P4527742402226917577

namespace A175256

/-- `filter[A103982(n+1), A010051(#)]` -/
def P4527742402226917577.Spec : Prop :=
  ∀ n, P4527742402226917577.a n = A175256 (n + 1)

end A175256

/-!
# A175257: a(n) is the smallest prime p such that 2^(p-1) == 1 (mod a(1)*...*a(n-1)*p).

The programs for A175257, there is no canonical definition to state claims against.
-/

/-! ## A175257.P4912973901272648115

`A306826(A153583(∑[n]))`
-/

namespace A175257.P4912973901272648115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306826 (A153583 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A175257.P4912973901272648115

/-! ## A175257.P7210386914298630271

`record[A306826(A138036(n))]`
-/

namespace A175257.P7210386914298630271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306826 (A138036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175257.P7210386914298630271

/-! ## A175257.P649559884246775206

`A000015(p?[A306826(n)])`
-/

namespace A175257.P649559884246775206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A175257.P649559884246775206

/-! ## A175257.P18288549504255802706

`A002374(p?[A306826(n)])`
-/

namespace A175257.P18288549504255802706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A175257.P18288549504255802706

/-! ## A175257.P10456972613938332918

`A000015(A306826(n+1))`
-/

namespace A175257.P10456972613938332918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A306826 (n + 1)).toNat

end

end A175257.P10456972613938332918

/-!
# A175258: Numbers n with property that n^2+41 is prime.

The programs for A175258, there is no canonical definition to state claims against.
-/

/-! ## A175258.P16417235433542927315

`eq[1, A001221(n²+41)]`
-/

namespace A175258.P16417235433542927315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n ^ 2 + 41)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175258.P16417235433542927315

/-! ## A175258.P8052912991938630707

`eq[1, A001222(n²+41)]`
-/

namespace A175258.P8052912991938630707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 41)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175258.P8052912991938630707

/-! ## A175258.P1074331331164329903

`eq[2, A000005(n²+41)]`
-/

namespace A175258.P1074331331164329903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 41)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175258.P1074331331164329903

/-! ## A175258.P17020894370220489407

`eq[n²+41, A006530(n²+41)]`
-/

namespace A175258.P17020894370220489407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 41)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175258.P17020894370220489407

/-! ## A175258.P14620767061219187971

`lt[A001222(n*xor(1, n+1)+41), 2]`
-/

namespace A175258.P14620767061219187971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * Nat.xor 1 (n + 1) + 41)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175258.P14620767061219187971

/-!
# A175259: Numbers n with property that n+41 and n^2+41 are primes.

The programs for A175259, there is no canonical definition to state claims against.
-/

/-! ## A175259.P6475158140248870183

`∩[A104463(n), A175258(n)]`
-/

namespace A175259.P6475158140248870183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175258 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175259.P6475158140248870183

/-!
# A175261: Each term is the smallest positive integer both coprime to all earlier terms of the sequence and with a different number of divisors than all earlier terms. (a(1)=1.)

The programs for A175261, there is no canonical definition to state claims against.
-/

/-! ## A175261.P15194540685758349850

`∑[A304676(∑[n*a(n-1)])]` with `a(0)=2`
-/

namespace A175261.P15194540685758349850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304676 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175261.P15194540685758349850

/-!
# A175262: Those positive integers that when written in binary contain an odd number of digits, the middle digit being a 1.

The programs for A175262, there is no canonical definition to state claims against.
-/

/-! ## A175262.P1085175637885692870

`eq[0, A010059(A175298(n))]`
-/

namespace A175262.P1085175637885692870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A175298 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175262.P1085175637885692870

/-! ## A175262.P8528004072060236706

`eq[0, A059841(A159780(n))]`
-/

namespace A175262.P8528004072060236706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A159780 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175262.P8528004072060236706

/-! ## A175262.P11673769688082821281

`eq[1, A010873(A159780(n)²)]`
-/

namespace A175262.P11673769688082821281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A159780 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175262.P11673769688082821281

/-! ## A175262.P9972951371481370853

`eq[1, A098725(A159780(n)²)]`
-/

namespace A175262.P9972951371481370853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (A159780 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175262.P9972951371481370853

/-! ## A175262.P13833732896649611959

`eq[1, A193497(A159780(n)+2)]`
-/

namespace A175262.P13833732896649611959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193497 (A159780 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175262.P13833732896649611959

/-! ## A175262.P4402905385913954173

`lt[1, A159780(A159780(n)+2)]`
-/

namespace A175262.P4402905385913954173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 (A159780 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A175262.P4402905385913954173

/-! ## A175262.P8877298393654240817

`eq[2, A010873(2*A159780(n))]`
-/

namespace A175262.P8877298393654240817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * A159780 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175262.P8877298393654240817

/-! ## A175262.P18048824708720144921

`eq[1, A244221(A159780(n)+10)]`
-/

namespace A175262.P18048824708720144921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 (A159780 n + 10).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175262.P18048824708720144921

/-! ## A175262.P4284575976064064508

`eq[1, A244221(A159780(n)²²)]`
-/

namespace A175262.P4284575976064064508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 ((A159780 n ^ 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175262.P4284575976064064508

/-! ## A175262.P9235009309185386027

`lt[A000007(n), A159780(A159780(n)²)]`
-/

namespace A175262.P9235009309185386027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 (A159780 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175262.P9235009309185386027

/-!
# A175263: Positive integers that in binary contain an odd number of digits with the middle digit being a 0.

The programs for A175263, there is no canonical definition to state claims against.
-/

/-! ## A175263.P17907217924643399854

`eq[0, A010059(A175917(n))]`
-/

namespace A175263.P17907217924643399854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A175917 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175263.P17907217924643399854

/-! ## A175263.P10319510936091033493

`eq[0, A010059(A175918(n))]`
-/

namespace A175263.P10319510936091033493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A175918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175263.P10319510936091033493

/-! ## A175263.P5441339085420435255

`comp[(n+1)*A010059(A175918(n+1))]`
-/

namespace A175263.P5441339085420435255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010059 (A175918 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175263.P5441339085420435255

/-! ## A175263.P2468693382144101674

`lt[A327187(n), A327187(A003817(n))]`
-/

namespace A175263.P2468693382144101674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327187 (A003817 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175263.P2468693382144101674

/-! ## A175263.P7447434380660547663

`lt[A000203(n+1)*A010059(A175918(n)), 1]`
-/

namespace A175263.P7447434380660547663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A010059 (A175918 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175263.P7447434380660547663

/-! ## A175263.P2842962555656065646

`lt[A010059(A175918(n))*A081703(n+1), 1]`
-/

namespace A175263.P2842962555656065646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A175918 n).toNat * A081703 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175263.P2842962555656065646

/-! ## A175263.P6839418441160872692

`A175262(n+2)-A097051(A175262(n+2))`
-/

namespace A175263.P6839418441160872692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175262 (n + 2) - A097051 (A175262 (n + 2)).toNat

end

end A175263.P6839418441160872692

/-!
# A175264: a(n) = the middle prime among the distinct primes dividing {the n-th positive integer divisible by exactly an odd number of distinct primes}.

The programs for A175264, there is no canonical definition to state claims against.
-/

/-! ## A175264.P14167636003268628860

`A273289(∏{p}[A030230(n+1), #])`
-/

namespace A175264.P14167636003268628860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A175264.P14167636003268628860

/-! ## A175264.P12046389039454501704

`p?[A055231(A130065(A007947(n+1)))]`
-/

namespace A175264.P12046389039454501704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A130065 (A007947 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175264.P12046389039454501704

/-! ## A175264.P8019623009487347458

`p?[A066328(A064988(n+1))%A074320(n+1)]`
-/

namespace A175264.P8019623009487347458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066328 (A064988 (n + 1)).toNat) (A074320 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175264.P8019623009487347458

/-! ## A175264.P16807330433556481268

`p?[A028233(A006530(n+1)*A119288(n+1))]`
-/

namespace A175264.P16807330433556481268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A006530 (n + 1) * A119288 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175264.P16807330433556481268

/-!
# A175265: a(1)=1. a(n) = the smallest integer > a(n-1) where |d(a(n)) - d(a(n-1))| = 1; d(n) is the number of divisors of n.

The programs for A175265, there is no canonical definition to state claims against.
-/

/-! ## A175265.P4480768341272256298

`A003714(A320456(n+1)+A185274(2*n))`
-/

namespace A175265.P4480768341272256298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A320456 (n + 1) + A185274 (2 * n)).toNat

end

end A175265.P4480768341272256298

/-!
# A175266: a(n) = the number of divisors of A175265(n).

The programs for A175266, there is no canonical definition to state claims against.
-/

/-! ## A175266.P5348847168032815278

`∏{e}[A175265(n+1), #+1]`
-/

namespace A175266.P5348847168032815278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A175266.P5348847168032815278

/-! ## A175266.P3536878708737278907

`A000005(A175265(n+1))`
-/

namespace A175266.P3536878708737278907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A175265 (n + 1)).toNat

end

end A175266.P3536878708737278907

/-! ## A175266.P11181718508718438176

`∑{d}[A175265(n+1), gcd(#, A216884(n+1))]`
-/

namespace A175266.P11181718508718438176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A216884 (n + 1))

end

end A175266.P11181718508718438176

/-! ## A175266.P16540393389935444787

`∑{d}[A175265(n+1), A054977(#)]`
-/

namespace A175266.P16540393389935444787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A175266.P16540393389935444787

/-! ## A175266.P10251960949493323321

`∑{d}[A175265(n+1), A057427(#)]`
-/

namespace A175266.P10251960949493323321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A175266.P10251960949493323321

/-!
# A175267: a(n) = the minimum number of 0's that, if removed from the binary representation of n, leaves a palindrome.

The programs for A175267, there is no canonical definition to state claims against.
-/

/-! ## A175267.P12743774654143000337

`A331594(2*A253565(n))`
-/

namespace A175267.P12743774654143000337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331594 (2 * A253565 n).toNat

end

end A175267.P12743774654143000337

/-! ## A175267.P15278664089837673402

`A331594(A253565(n)+A253565(n))`
-/

namespace A175267.P15278664089837673402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331594 (A253565 n + A253565 n).toNat

end

end A175267.P15278664089837673402

/-! ## A175267.P5667125747628901563

`A007814(A000217(A057889(n)+A008706(n)))`
-/

namespace A175267.P5667125747628901563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000217 (A057889 n + A008706 n).toNat).toNat

end

end A175267.P5667125747628901563

/-! ## A175267.P17592736049519469575

`A285097(A131576(3*n+5)*A239632(n))`
-/

namespace A175267.P17592736049519469575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A131576 (3 * n + 5) * A239632 n).toNat

end

end A175267.P17592736049519469575

/-! ## A175267.P1805567583842629522

`A023416(A094708(3*n+4)-A053645(2*n+1))`
-/

namespace A175267.P1805567583842629522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A094708 (3 * n + 4) - A053645 (2 * n + 1)).toNat

end

end A175267.P1805567583842629522

/-!
# A175268: a(n)=floor(2^sqrt(n)).

The programs for A175268, the canonical program `A175268.P599405076098089730` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175268 has offset 0).

The definition of A175268 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^sqrt(n))` (program `A175268.P599405076098089730`, by `A175268.P599405076098089730.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175268.P599405076098089730

`floor(2^sqrt(n))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175268

/-- `floor(2^sqrt(n))` -/
def P599405076098089730.Spec : Prop :=
  ∀ n, P599405076098089730.a n = A175268 n

theorem P599405076098089730.correct : P599405076098089730.Spec := by
  intro n
  simp only [A175268]

end A175268

/-! ## A175268.P15263773255568265277

`a(n-1)-ceil(a(n-1)-2^sqrt(n))` with `a(0)=1`
-/

namespace A175268.P15263773255568265277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌈(a (n - 1) : ℝ) - (2 : ℝ) ^ (Real.sqrt (n : ℝ))⌉

end

end A175268.P15263773255568265277

namespace A175268

/-- `a(n-1)-ceil(a(n-1)-2^sqrt(n))` -/
def P15263773255568265277.Spec : Prop :=
  ∀ n, P15263773255568265277.a n = A175268 n

end A175268

/-! ## A175268.P14607121329140167024

`∑{d}[n+1, #]-ceil(∑{d}[n+1, #]-2^sqrt(n))`
-/

namespace A175268.P14607121329140167024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ⌈((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ) - (2 : ℝ) ^ (Real.sqrt (n : ℝ))⌉

end

end A175268.P14607121329140167024

namespace A175268

/-- `∑{d}[n+1, #]-ceil(∑{d}[n+1, #]-2^sqrt(n))` -/
def P14607121329140167024.Spec : Prop :=
  ∀ n, P14607121329140167024.a n = A175268 n

end A175268

/-! ## A175268.P8443909464834859198

`∏{p}[n+1, #]-ceil(∏{p}[n+1, #]-2^sqrt(n))`
-/

namespace A175268.P8443909464834859198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - ⌈((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℝ) - (2 : ℝ) ^ (Real.sqrt (n : ℝ))⌉

end

end A175268.P8443909464834859198

namespace A175268

/-- `∏{p}[n+1, #]-ceil(∏{p}[n+1, #]-2^sqrt(n))` -/
def P8443909464834859198.Spec : Prop :=
  ∀ n, P8443909464834859198.a n = A175268 n

end A175268

/-! ## A175268.P3773305284242761630

`∑{e}[n+1, #]-ceil(∑{e}[n+1, #]-2^sqrt(n))`
-/

namespace A175268.P3773305284242761630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - ⌈((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ) - (2 : ℝ) ^ (Real.sqrt (n : ℝ))⌉

end

end A175268.P3773305284242761630

namespace A175268

/-- `∑{e}[n+1, #]-ceil(∑{e}[n+1, #]-2^sqrt(n))` -/
def P3773305284242761630.Spec : Prop :=
  ∀ n, P3773305284242761630.a n = A175268 n

end A175268

/-! ## A175268.P4422687582682385983

`A000290(n)-ceil(A000290(n)-2^sqrt(n))`
-/

namespace A175268.P4422687582682385983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - ⌈(A000290 n : ℝ) - (2 : ℝ) ^ (Real.sqrt (n : ℝ))⌉

end

end A175268.P4422687582682385983

namespace A175268

/-- `A000290(n)-ceil(A000290(n)-2^sqrt(n))` -/
def P4422687582682385983.Spec : Prop :=
  ∀ n, P4422687582682385983.a n = A175268 n

end A175268

/-! ## A175268.P2705023634203853717

`A010052(n)-ceil(A010052(n)-2^sqrt(n))`
-/

namespace A175268.P2705023634203853717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n - ⌈(A010052 n : ℝ) - (2 : ℝ) ^ (Real.sqrt (n : ℝ))⌉

end

end A175268.P2705023634203853717

namespace A175268

/-- `A010052(n)-ceil(A010052(n)-2^sqrt(n))` -/
def P2705023634203853717.Spec : Prop :=
  ∀ n, P2705023634203853717.a n = A175268 n

end A175268

/-! ## A175268.P1402937866159579667

`A019428(n)-ceil(A019428(n)-2^sqrt(n))`
-/

namespace A175268.P1402937866159579667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n - ⌈(A019428 n : ℝ) - (2 : ℝ) ^ (Real.sqrt (n : ℝ))⌉

end

end A175268.P1402937866159579667

namespace A175268

/-- `A019428(n)-ceil(A019428(n)-2^sqrt(n))` -/
def P1402937866159579667.Spec : Prop :=
  ∀ n, P1402937866159579667.a n = A175268 n

end A175268

/-! ## A175268.P5779866296626889762

`A019431(n)-ceil(A019431(n)-2^sqrt(n))`
-/

namespace A175268.P5779866296626889762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 n - ⌈(A019431 n : ℝ) - (2 : ℝ) ^ (Real.sqrt (n : ℝ))⌉

end

end A175268.P5779866296626889762

namespace A175268

/-- `A019431(n)-ceil(A019431(n)-2^sqrt(n))` -/
def P5779866296626889762.Spec : Prop :=
  ∀ n, P5779866296626889762.a n = A175268 n

end A175268

/-! ## A175268.P14955152282330068064

`A048724(n)-ceil(A048724(n)-2^sqrt(n))`
-/

namespace A175268.P14955152282330068064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n - ⌈(A048724 n : ℝ) - (2 : ℝ) ^ (Real.sqrt (n : ℝ))⌉

end

end A175268.P14955152282330068064

namespace A175268

/-- `A048724(n)-ceil(A048724(n)-2^sqrt(n))` -/
def P14955152282330068064.Spec : Prop :=
  ∀ n, P14955152282330068064.a n = A175268 n

end A175268

/-! ## A175268.P9580521584315541368

`A175917(n)-ceil(A175917(n)-2^sqrt(n))`
-/

namespace A175268.P9580521584315541368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175917 n - ⌈(A175917 n : ℝ) - (2 : ℝ) ^ (Real.sqrt (n : ℝ))⌉

end

end A175268.P9580521584315541368

namespace A175268

/-- `A175917(n)-ceil(A175917(n)-2^sqrt(n))` -/
def P9580521584315541368.Spec : Prop :=
  ∀ n, P9580521584315541368.a n = A175268 n

end A175268

/-! ## A175268.P2183502701206184110

`A266314(n)-ceil(A266314(n)-2^sqrt(n))`
-/

namespace A175268.P2183502701206184110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266314 n - ⌈(A266314 n : ℝ) - (2 : ℝ) ^ (Real.sqrt (n : ℝ))⌉

end

end A175268.P2183502701206184110

namespace A175268

/-- `A266314(n)-ceil(A266314(n)-2^sqrt(n))` -/
def P2183502701206184110.Spec : Prop :=
  ∀ n, P2183502701206184110.a n = A175268 n

end A175268

/-! ## A175268.P15904480783185945016

`A050803(n+1)-ceil(A050803(n+1)-2^sqrt(n))`
-/

namespace A175268.P15904480783185945016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050803 (n + 1) - ⌈(A050803 (n + 1) : ℝ) - (2 : ℝ) ^ (Real.sqrt (n : ℝ))⌉

end

end A175268.P15904480783185945016

namespace A175268

/-- `A050803(n+1)-ceil(A050803(n+1)-2^sqrt(n))` -/
def P15904480783185945016.Spec : Prop :=
  ∀ n, P15904480783185945016.a n = A175268 n

end A175268

/-! ## A175268.P6480663888284246121

`A344340(n)-ceil(A344340(n)-2^sqrt(n))`
-/

namespace A175268.P6480663888284246121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344340 n - ⌈(A344340 n : ℝ) - (2 : ℝ) ^ (Real.sqrt (n : ℝ))⌉

end

end A175268.P6480663888284246121

namespace A175268

/-- `A344340(n)-ceil(A344340(n)-2^sqrt(n))` -/
def P6480663888284246121.Spec : Prop :=
  ∀ n, P6480663888284246121.a n = A175268 n

end A175268

/-!
# A175269: a(n) = floor(2^sqrt(n)) - floor(n^sqrt(2)).

The programs for A175269, the canonical program `A175269.P6832571120131844607` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175269 has offset 0).

The definition of A175269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^sqrt(n))-floor(n^sqrt(2))` (program `A175269.P6832571120131844607`, by `A175269.P6832571120131844607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175269.P6832571120131844607

`floor(2^sqrt(n))-floor(n^sqrt(2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175269

/-- `floor(2^sqrt(n))-floor(n^sqrt(2))` -/
def P6832571120131844607.Spec : Prop :=
  ∀ n, P6832571120131844607.a n = A175269 n

theorem P6832571120131844607.correct : P6832571120131844607.Spec := by
  intro n
  simp only [A175269]

end A175269

/-!
# A175270: Numbers k such that the least number of squares that add up to k equals the least number of triangular numbers that add up to k. Equivalently, A002828(k) = A061336(k).

The programs for A175270, there is no canonical definition to state claims against.
-/

/-! ## A175270.P9615151211460650168

`eq[A002828(n), A061336(n)]`
-/

namespace A175270.P9615151211460650168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175270.P9615151211460650168

/-! ## A175270.P5302337021536765622

`eq[n, A255131(n)+A061336(n)]`
-/

namespace A175270.P5302337021536765622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 n + A061336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175270.P5302337021536765622

/-! ## A175270.P8991888012227415205

`eq[a(A262678(n))+1, A061336(n)]` with `a(0)=0`
-/

namespace A175270.P8991888012227415205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A262678 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175270.P8991888012227415205

/-! ## A175270.P16419466482006191919

`eq[A053829(n-A255131(n)), A061336(n)]`
-/

namespace A175270.P16419466482006191919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 ((n : ℤ) - A255131 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175270.P16419466482006191919

/-! ## A175270.P6363099325817503888

`eq[A002828(n), A002828(A017089(n)-A073423(n))]`
-/

namespace A175270.P6363099325817503888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A017089 n - A073423 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175270.P6363099325817503888

/-!
# A175275: Base-3 pandigital primes: primes having at least one of each digit 0,1,2 when written in base 3.

The programs for A175275, the canonical program `A175275.P10989980241705012297` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175275 has offset 1).

The definition of A175275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175275.P1395091054212434193

`eq[A037897(n), A373982(n)]`
-/

namespace A175275.P1395091054212434193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175275.P1395091054212434193

namespace A175275

/-- `eq[A037897(n), A373982(n)]` -/
def P1395091054212434193.Spec : Prop :=
  ∀ n, (P1395091054212434193.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P12058836110598858281

`eq[A037897(n), A374201(n)]`
-/

namespace A175275.P12058836110598858281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175275.P12058836110598858281

namespace A175275

/-- `eq[A037897(n), A374201(n)]` -/
def P12058836110598858281.Spec : Prop :=
  ∀ n, (P12058836110598858281.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P10989980241705012297

`p?[A031944(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A175275

/-- `p?[A031944(n+1)]` -/
def P10989980241705012297.Spec : Prop :=
  ∀ n, P10989980241705012297.a n = A175275 (n + 1)

theorem P10989980241705012297.correct : P10989980241705012297.Spec := by
  intro n
  simp only [A175275, Nat.add_sub_cancel]

end A175275

/-! ## A175275.P13268387435185433037

`filter[A031944(n+1), A010051(#)]`
-/

namespace A175275.P13268387435185433037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A175275.P13268387435185433037

namespace A175275

/-- `filter[A031944(n+1), A010051(#)]` -/
def P13268387435185433037.Spec : Prop :=
  ∀ n, P13268387435185433037.a n = A175275 (n + 1)

end A175275

/-! ## A175275.P12450056481016153761

`∩[A000040(n+1), A031944(n+1)]`
-/

namespace A175275.P12450056481016153761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P12450056481016153761

namespace A175275

/-- `∩[A000040(n+1), A031944(n+1)]` -/
def P12450056481016153761.Spec : Prop :=
  ∀ n, (P12450056481016153761.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P2743069957901242513

`∩[A004139(n+1), A031944(n+1)]`
-/

namespace A175275.P2743069957901242513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P2743069957901242513

namespace A175275

/-- `∩[A004139(n+1), A031944(n+1)]` -/
def P2743069957901242513.Spec : Prop :=
  ∀ n, (P2743069957901242513.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P8750989044244826217

`∩[A006005(n+1), A031944(n+1)]`
-/

namespace A175275.P8750989044244826217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P8750989044244826217

namespace A175275

/-- `∩[A006005(n+1), A031944(n+1)]` -/
def P8750989044244826217.Spec : Prop :=
  ∀ n, (P8750989044244826217.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P8607604747706612518

`∩[A008578(n+1), A031944(n+1)]`
-/

namespace A175275.P8607604747706612518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P8607604747706612518

namespace A175275

/-- `∩[A008578(n+1), A031944(n+1)]` -/
def P8607604747706612518.Spec : Prop :=
  ∀ n, (P8607604747706612518.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P15118605052009066549

`∩[A031944(n+1), A033946(n+1)]`
-/

namespace A175275.P15118605052009066549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P15118605052009066549

namespace A175275

/-- `∩[A031944(n+1), A033946(n+1)]` -/
def P15118605052009066549.Spec : Prop :=
  ∀ n, (P15118605052009066549.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P4274594734680779087

`∩[A031944(n+1), A045319(n+1)]`
-/

namespace A175275.P4274594734680779087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P4274594734680779087

namespace A175275

/-- `∩[A031944(n+1), A045319(n+1)]` -/
def P4274594734680779087.Spec : Prop :=
  ∀ n, (P4274594734680779087.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P16064434752084618137

`∩[A031944(n+1), A045344(n+1)]`
-/

namespace A175275.P16064434752084618137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P16064434752084618137

namespace A175275

/-- `∩[A031944(n+1), A045344(n+1)]` -/
def P16064434752084618137.Spec : Prop :=
  ∀ n, (P16064434752084618137.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P9504411875013344718

`∩[A031944(n+1), A046022(n+1)]`
-/

namespace A175275.P9504411875013344718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P9504411875013344718

namespace A175275

/-- `∩[A031944(n+1), A046022(n+1)]` -/
def P9504411875013344718.Spec : Prop :=
  ∀ n, (P9504411875013344718.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P5007136308823537696

`∩[A031944(n+1), A051948(n+1)]`
-/

namespace A175275.P5007136308823537696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P5007136308823537696

namespace A175275

/-- `∩[A031944(n+1), A051948(n+1)]` -/
def P5007136308823537696.Spec : Prop :=
  ∀ n, (P5007136308823537696.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P340905664102753238

`∩[A031944(n+1), A065091(n+1)]`
-/

namespace A175275.P340905664102753238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P340905664102753238

namespace A175275

/-- `∩[A031944(n+1), A065091(n+1)]` -/
def P340905664102753238.Spec : Prop :=
  ∀ n, (P340905664102753238.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P1327104530897591215

`∩[A031944(n+1), A066050(n+1)]`
-/

namespace A175275.P1327104530897591215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P1327104530897591215

namespace A175275

/-- `∩[A031944(n+1), A066050(n+1)]` -/
def P1327104530897591215.Spec : Prop :=
  ∀ n, (P1327104530897591215.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P11797448134571898111

`∩[A031944(n+1), A067126(n+1)]`
-/

namespace A175275.P11797448134571898111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P11797448134571898111

namespace A175275

/-- `∩[A031944(n+1), A067126(n+1)]` -/
def P11797448134571898111.Spec : Prop :=
  ∀ n, (P11797448134571898111.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P7443554118908293248

`∩[A031944(n+1), A083249(n+1)]`
-/

namespace A175275.P7443554118908293248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P7443554118908293248

namespace A175275

/-- `∩[A031944(n+1), A083249(n+1)]` -/
def P7443554118908293248.Spec : Prop :=
  ∀ n, (P7443554118908293248.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P6933846169163918215

`∩[A031944(n+1), A116974(n+1)]`
-/

namespace A175275.P6933846169163918215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P6933846169163918215

namespace A175275

/-- `∩[A031944(n+1), A116974(n+1)]` -/
def P6933846169163918215.Spec : Prop :=
  ∀ n, (P6933846169163918215.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P4529227758577726323

`∩[A031944(n+1), A140461(n+1)]`
-/

namespace A175275.P4529227758577726323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P4529227758577726323

namespace A175275

/-- `∩[A031944(n+1), A140461(n+1)]` -/
def P4529227758577726323.Spec : Prop :=
  ∀ n, (P4529227758577726323.a n : ℤ) = A175275 (n + 1)

end A175275

/-! ## A175275.P4646079081172488088

`∩[A031944(n+1), A140475(n+1)]`
-/

namespace A175275.P4646079081172488088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175275.P4646079081172488088

namespace A175275

/-- `∩[A031944(n+1), A140475(n+1)]` -/
def P4646079081172488088.Spec : Prop :=
  ∀ n, (P4646079081172488088.a n : ℤ) = A175275 (n + 1)

end A175275

/-!
# A175276: Base-4 pandigital primes: primes having at least one of each digit 0,1,2,3, when written in base 4.

The programs for A175276, the canonical program `A175276.P16541926059268869838` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175276 has offset 1).

The definition of A175276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1073 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175276.P16541926059268869838

`p?[A031945(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A175276

/-- `p?[A031945(n+1)]` -/
def P16541926059268869838.Spec : Prop :=
  ∀ n, P16541926059268869838.a n = A175276 (n + 1)

theorem P16541926059268869838.correct : P16541926059268869838.Spec := by
  intro n
  simp only [A175276, Nat.add_sub_cancel]

end A175276

/-! ## A175276.P1873955359072982444

`record[p?[A031945(A324346(n))]]`
-/

namespace A175276.P1873955359072982444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175276.P1873955359072982444

namespace A175276

/-- `record[p?[A031945(A324346(n))]]` -/
def P1873955359072982444.Spec : Prop :=
  ∀ n, P1873955359072982444.a n = A175276 (n + 1)

end A175276

/-! ## A175276.P471027404693429323

`record[p?[A031945(A328399(n))]]`
-/

namespace A175276.P471027404693429323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175276.P471027404693429323

namespace A175276

/-- `record[p?[A031945(A328399(n))]]` -/
def P471027404693429323.Spec : Prop :=
  ∀ n, P471027404693429323.a n = A175276 (n + 1)

end A175276

/-! ## A175276.P12856452647892810701

`filter[A031945(n+3), A010051(#)]`
-/

namespace A175276.P12856452647892810701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A175276.P12856452647892810701

namespace A175276

/-- `filter[A031945(n+3), A010051(#)]` -/
def P12856452647892810701.Spec : Prop :=
  ∀ n, P12856452647892810701.a n = A175276 (n + 1)

end A175276

/-! ## A175276.P15195000407338210682

`∩[A000040(n+1), A031945(n+1)]`
-/

namespace A175276.P15195000407338210682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P15195000407338210682

namespace A175276

/-- `∩[A000040(n+1), A031945(n+1)]` -/
def P15195000407338210682.Spec : Prop :=
  ∀ n, (P15195000407338210682.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P111790961487951942

`∩[A004139(n+1), A031945(n+1)]`
-/

namespace A175276.P111790961487951942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P111790961487951942

namespace A175276

/-- `∩[A004139(n+1), A031945(n+1)]` -/
def P111790961487951942.Spec : Prop :=
  ∀ n, (P111790961487951942.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P6066463704031482227

`∩[A006005(n+1), A031945(n+1)]`
-/

namespace A175276.P6066463704031482227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P6066463704031482227

namespace A175276

/-- `∩[A006005(n+1), A031945(n+1)]` -/
def P6066463704031482227.Spec : Prop :=
  ∀ n, (P6066463704031482227.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P13003105150515133980

`∩[A008578(n+1), A031945(n+1)]`
-/

namespace A175276.P13003105150515133980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P13003105150515133980

namespace A175276

/-- `∩[A008578(n+1), A031945(n+1)]` -/
def P13003105150515133980.Spec : Prop :=
  ∀ n, (P13003105150515133980.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P14180891346979721035

`∩[A031945(n+1), A033946(n+1)]`
-/

namespace A175276.P14180891346979721035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P14180891346979721035

namespace A175276

/-- `∩[A031945(n+1), A033946(n+1)]` -/
def P14180891346979721035.Spec : Prop :=
  ∀ n, (P14180891346979721035.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P6413004827103863089

`∩[A031945(n+1), A045319(n+1)]`
-/

namespace A175276.P6413004827103863089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P6413004827103863089

namespace A175276

/-- `∩[A031945(n+1), A045319(n+1)]` -/
def P6413004827103863089.Spec : Prop :=
  ∀ n, (P6413004827103863089.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P8225056194097859621

`∩[A031945(n+1), A045344(n+1)]`
-/

namespace A175276.P8225056194097859621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P8225056194097859621

namespace A175276

/-- `∩[A031945(n+1), A045344(n+1)]` -/
def P8225056194097859621.Spec : Prop :=
  ∀ n, (P8225056194097859621.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P15224011703480011094

`∩[A031945(n+1), A046022(n+1)]`
-/

namespace A175276.P15224011703480011094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P15224011703480011094

namespace A175276

/-- `∩[A031945(n+1), A046022(n+1)]` -/
def P15224011703480011094.Spec : Prop :=
  ∀ n, (P15224011703480011094.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P1767823312088675201

`∩[A031945(n+1), A051948(n+1)]`
-/

namespace A175276.P1767823312088675201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P1767823312088675201

namespace A175276

/-- `∩[A031945(n+1), A051948(n+1)]` -/
def P1767823312088675201.Spec : Prop :=
  ∀ n, (P1767823312088675201.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P5746929143558785352

`∩[A031945(n+1), A053577(n+1)]`
-/

namespace A175276.P5746929143558785352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P5746929143558785352

namespace A175276

/-- `∩[A031945(n+1), A053577(n+1)]` -/
def P5746929143558785352.Spec : Prop :=
  ∀ n, (P5746929143558785352.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P4535743442389099501

`∩[A031945(n+1), A053813(n+1)]`
-/

namespace A175276.P4535743442389099501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P4535743442389099501

namespace A175276

/-- `∩[A031945(n+1), A053813(n+1)]` -/
def P4535743442389099501.Spec : Prop :=
  ∀ n, (P4535743442389099501.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P11289627053658781818

`∩[A031945(n+1), A065091(n+1)]`
-/

namespace A175276.P11289627053658781818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P11289627053658781818

namespace A175276

/-- `∩[A031945(n+1), A065091(n+1)]` -/
def P11289627053658781818.Spec : Prop :=
  ∀ n, (P11289627053658781818.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P12574272132387321242

`∩[A065396(n+1), A031945(n+1)]`
-/

namespace A175276.P12574272132387321242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P12574272132387321242

namespace A175276

/-- `∩[A065396(n+1), A031945(n+1)]` -/
def P12574272132387321242.Spec : Prop :=
  ∀ n, (P12574272132387321242.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P8406143959506663456

`∩[A031945(n+1), A067126(n+1)]`
-/

namespace A175276.P8406143959506663456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P8406143959506663456

namespace A175276

/-- `∩[A031945(n+1), A067126(n+1)]` -/
def P8406143959506663456.Spec : Prop :=
  ∀ n, (P8406143959506663456.a n : ℤ) = A175276 (n + 1)

end A175276

/-! ## A175276.P95708070415903663

`∩[A031945(n+1), A071621(n+1)]`
-/

namespace A175276.P95708070415903663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175276.P95708070415903663

namespace A175276

/-- `∩[A031945(n+1), A071621(n+1)]` -/
def P95708070415903663.Spec : Prop :=
  ∀ n, (P95708070415903663.a n : ℤ) = A175276 (n + 1)

end A175276

/-!
# A175277: Base-5 pandigital primes: primes having at least one of each digit 0,1,2,3,4, when written in base 5.

The programs for A175277, there is no canonical definition to state claims against.
-/

/-! ## A175277.P16865379606901601571

`p?[A031946(n+1)]`
-/

namespace A175277.P16865379606901601571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175277.P16865379606901601571

/-! ## A175277.P17712922281858676694

`record[p?[A031946(A324346(n))]]`
-/

namespace A175277.P17712922281858676694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031946 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175277.P17712922281858676694

/-! ## A175277.P15106506569272894668

`record[p?[A031946(A328399(n))]]`
-/

namespace A175277.P15106506569272894668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031946 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175277.P15106506569272894668

/-! ## A175277.P16473609364214087044

`record[p?[A031946(A141256(n))]]`
-/

namespace A175277.P16473609364214087044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031946 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175277.P16473609364214087044

/-!
# A175278: Base-6 pandigital primes: primes having at least one of each digit 0,1,2,3,4,5 when written in base 6.

The programs for A175278, there is no canonical definition to state claims against.
-/

/-! ## A175278.P14955796650232653747

`p?[A031947(n+1)]`
-/

namespace A175278.P14955796650232653747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175278.P14955796650232653747

/-!
# A175281: Numbers k such that 6k+1 is a term in A005471.

The programs for A175281, there is no canonical definition to state claims against.
-/

/-! ## A175281.P15074834640939853437

`floor(A005471(n+1)/6)`
-/

namespace A175281.P15074834640939853437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005471 (n + 1) : ℚ) / 6⌋

end

end A175281.P15074834640939853437

/-! ## A175281.P14856872213906525669

`ceil(abs(A039701(3*n+5)-A005471(n+1))/3)/2`
-/

namespace A175281.P14856872213906525669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(|A039701 (3 * n + 5) - A005471 (n + 1)| : ℚ) / 3⌉ : ℚ) / 2

end

end A175281.P14856872213906525669

/-! ## A175281.P9292681640336262224

`A008748(A027756(n+1))`
-/

namespace A175281.P9292681640336262224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 (A027756 (n + 1)).toNat

end

end A175281.P9292681640336262224

/-! ## A175281.P11524796352808266253

`floor(p?[n²+7+n]/6)`
-/

namespace A175281.P11524796352808266253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 6⌋

end

end A175281.P11524796352808266253

/-! ## A175281.P952477139839917405

`round(p?[n²+7+n]/6)`
-/

namespace A175281.P952477139839917405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 6)

end

end A175281.P952477139839917405

/-! ## A175281.P8102477115168586863

`(p?[n²+7+n]-1)/6`
-/

namespace A175281.P8102477115168586863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 6

end

end A175281.P8102477115168586863

/-! ## A175281.P1460969525700146123

`xor(1, p?[n²+7+n])/6`
-/

namespace A175281.P1460969525700146123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 6

end

end A175281.P1460969525700146123

/-! ## A175281.P7016914078105473681

`∩[A024899(n+1), A319390(n)]`
-/

namespace A175281.P7016914078105473681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175281.P7016914078105473681

/-! ## A175281.P16220930532744393846

`∩[A364869(n+1), A319390(n)]`
-/

namespace A175281.P16220930532744393846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175281.P16220930532744393846

/-! ## A175281.P8045151073935433682

`round(record[A006530(n²+7+n)]/6)`
-/

namespace A175281.P8045151073935433682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 7 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 6)

end

end A175281.P8045151073935433682

/-!
# A175282: Positive numbers n with property that n^2+3n+9 is prime (A005471).

The programs for A175282, there is no canonical definition to state claims against.
-/

/-! ## A175282.P2976632637253148532

`A027756(n+2)-1`
-/

namespace A175282.P2976632637253148532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027756 (n + 2) - 1

end

end A175282.P2976632637253148532

/-! ## A175282.P14249812555948874789

`round(sqrt(A005471(n+2)-7))-1`
-/

namespace A175282.P14249812555948874789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A005471 (n + 2) - 7 : ℝ)) - 1

end

end A175282.P14249812555948874789

/-! ## A175282.P395328399561159356

`record[A260196(n)+A027756(n+1)]`
-/

namespace A175282.P395328399561159356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A027756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175282.P395328399561159356

/-! ## A175282.P15192438017235385889

`A057428(n+1)+A027756(n+2)`
-/

namespace A175282.P15192438017235385889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A027756 (n + 2)

end

end A175282.P15192438017235385889

/-! ## A175282.P5400229453050801100

`A023443(A027756(n+2))`
-/

namespace A175282.P5400229453050801100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A027756 (n + 2)).toNat

end

end A175282.P5400229453050801100

/-! ## A175282.P10956628094483325727

`A260196(A027756(2*(n+1)))+A027756(n+2)`
-/

namespace A175282.P10956628094483325727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A027756 (2 * (n + 1))).toNat + A027756 (n + 2)

end

end A175282.P10956628094483325727

/-! ## A175282.P13815810154673218349

`A244895(A044782(n+1))+A027756(n+2)`
-/

namespace A175282.P13815810154673218349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A044782 (n + 1)).toNat + A027756 (n + 2)

end

end A175282.P13815810154673218349

/-! ## A175282.P791326138015813073

`eq[2, A000005(n*(n+3)+9)]`
-/

namespace A175282.P791326138015813073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n * (n + 3) + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175282.P791326138015813073

/-! ## A175282.P135249729577812768

`lt[A000005(∑[2*(n+1)]+7), 3]`
-/

namespace A175282.P135249729577812768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j + 7)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A175282.P135249729577812768

/-! ## A175282.P17445550263112621422

`eq[1, A001222((n+1)²+8+n)]`
-/

namespace A175282.P17445550263112621422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2 + 8 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175282.P17445550263112621422

/-!
# A175283: Numbers k with the property that k and k^2 + 3k+9 are primes.

The programs for A175283, there is no canonical definition to state claims against.
-/

/-! ## A175283.P13783526696721409808

`p?[A175282(n+1)]`
-/

namespace A175283.P13783526696721409808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175283.P13783526696721409808

/-! ## A175283.P5364616704352008546

`p?[A027756(n+1)-1]`
-/

namespace A175283.P5364616704352008546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027756 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175283.P5364616704352008546

/-! ## A175283.P11257476326274021425

`p?[floor(sqrt(A005471(n+1)-7))-1]`
-/

namespace A175283.P11257476326274021425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005471 (n + 1) - 7) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175283.P11257476326274021425

/-! ## A175283.P14831234553524888222

`record[A006530(A175282(n+2))]`
-/

namespace A175283.P14831234553524888222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A175282 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175283.P14831234553524888222

/-! ## A175283.P66666351348318366

`record[A020639(A175282(n+3))]`
-/

namespace A175283.P66666351348318366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A175282 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175283.P66666351348318366

/-! ## A175283.P16608818264728081795

`filter[A175282(n+1), A010051(#)]`
-/

namespace A175283.P16608818264728081795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A175283.P16608818264728081795

/-! ## A175283.P654152843927993811

`∩[A175282(n+1), A042988(n)]`
-/

namespace A175283.P654152843927993811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175283.P654152843927993811

/-! ## A175283.P12781825163179841172

`∩[A000040(n+1), A175282(n+1)]`
-/

namespace A175283.P12781825163179841172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175283.P12781825163179841172

/-! ## A175283.P12388771352004589269

`∩[A045319(n+1), A175282(n+1)]`
-/

namespace A175283.P12388771352004589269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175283.P12388771352004589269

/-! ## A175283.P9251043505908499878

`∩[A045320(n+1), A175282(n+1)]`
-/

namespace A175283.P9251043505908499878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175283.P9251043505908499878

/-! ## A175283.P18388081897162499753

`∩[A045324(n+1), A175282(n+1)]`
-/

namespace A175283.P18388081897162499753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175283.P18388081897162499753

/-! ## A175283.P7975799051758815187

`∩[A045344(n+1), A175282(n+1)]`
-/

namespace A175283.P7975799051758815187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175283.P7975799051758815187

/-! ## A175283.P15420913845919733850

`∩[A049545(n+1), A175282(n+1)]`
-/

namespace A175283.P15420913845919733850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175283.P15420913845919733850

/-! ## A175283.P6699166446610357923

`∩[A116974(n+1), A175282(n+1)]`
-/

namespace A175283.P6699166446610357923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175283.P6699166446610357923

/-! ## A175283.P9982009190618789730

`∩[A175282(n+1), A182986(n+1)]`
-/

namespace A175283.P9982009190618789730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175283.P9982009190618789730

/-! ## A175283.P7508340973232182639

`∩[A175282(n+1), A197636(n+1)]`
-/

namespace A175283.P7508340973232182639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175283.P7508340973232182639

/-! ## A175283.P13158275439943491128

`∩[A175282(n+1), A353393(n+1)]`
-/

namespace A175283.P13158275439943491128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175283.P13158275439943491128

/-! ## A175283.P13050996779490443962

`∩[A106843(n+1), A175282(n+1)]`
-/

namespace A175283.P13050996779490443962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175283.P13050996779490443962

/-! ## A175283.P12043936416344225837

`p?[A023443(A027756(n+1))]`
-/

namespace A175283.P12043936416344225837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A027756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175283.P12043936416344225837

/-! ## A175283.P7287408247713401988

`filter[A175282(n+2), A080339(#)]`
-/

namespace A175283.P7287408247713401988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A175283.P7287408247713401988

/-!
# A175284: Primes p of the form p=n^2+3n+9 such that q=p^2+3p+9 is also prime.

The programs for A175284, there is no canonical definition to state claims against.
-/

/-! ## A175284.P2753679261727618132

`∩[A175283(n+1), A027692(n)]`
-/

namespace A175284.P2753679261727618132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175284.P2753679261727618132

/-! ## A175284.P13305785140429339275

`∩[A005471(n+1), A175283(n+1)]`
-/

namespace A175284.P13305785140429339275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175284.P13305785140429339275

/-! ## A175284.P15782165171444709011

`∩[∑[2*n]+7, p?[A175282(n+1)]]`
-/

namespace A175284.P15782165171444709011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 7

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A175284.P15782165171444709011

/-! ## A175284.P11908541775306519107

`p?[∩[A175282(n+1), A027692(n)]]`
-/

namespace A175284.P11908541775306519107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175282 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A175284.P11908541775306519107

/-!
# A175285: Numbers n with property that 42*n+37 is in A175284.

The programs for A175285, there is no canonical definition to state claims against.
-/

/-! ## A175285.P10979506382342339008

`A105513(A230644(n+1)*A329738(n))`
-/

namespace A175285.P10979506382342339008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105513 (A230644 (n + 1) * A329738 n).toNat

end

end A175285.P10979506382342339008

/-!
# A175286: Pisano period of the Jacobsthal sequence A001045 modulo n.

The programs for A175286, there is no canonical definition to state claims against.
-/

/-! ## A175286.P1433607829218047314

`A007733(3*(n+1))^floor(atan(n))`
-/

namespace A175286.P1433607829218047314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007733 (3 * (n + 1)) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A175286.P1433607829218047314

/-! ## A175286.P17862703059793632206

`A007733((ceil(atan(n))+1)*lcm(4, n+1)/4)`
-/

namespace A175286.P17862703059793632206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (SequenceMachineLib.roundAway ((⌈Real.arctan (n : ℝ)⌉ + 1 : ℚ) * ((Nat.lcm 4 (n + 1) : ℚ) / 4))).toNat

end

end A175286.P17862703059793632206

/-! ## A175286.P1832840305556893149

`A007733((ceil(atan(n))+1)*(n+1)/2^val(n+1, 2))`
-/

namespace A175286.P1832840305556893149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (SequenceMachineLib.roundAway ((⌈Real.arctan (n : ℝ)⌉ + 1 : ℚ) * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

end

end A175286.P1832840305556893149

/-! ## A175286.P17848817162572132858

`A007733((ceil(atan(n))+1)*2*(n+1)/gcd(16, 7-n))`
-/

namespace A175286.P17848817162572132858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (SequenceMachineLib.roundAway ((⌈Real.arctan (n : ℝ)⌉ + 1 : ℚ) * ((2 * (n + 1) : ℚ) / (Int.gcd 16 (7 - (n : ℤ)) : ℚ)))).toNat

end

end A175286.P17848817162572132858

/-! ## A175286.P15809358131958724954

`A007733(C(n, n²)+3*(n+1)/2^val(n+1, 2))`
-/

namespace A175286.P15809358131958724954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (SequenceMachineLib.roundAway ((Nat.choose n (n ^ 2) : ℚ) + 3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

end

end A175286.P15809358131958724954

/-! ## A175286.P2439436460015828194

`A007733(A061570(n+1)+1)`
-/

namespace A175286.P2439436460015828194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A061570 (n + 1) + 1).toNat

end

end A175286.P2439436460015828194

/-! ## A175286.P16653469093978509462

`A007733((n+1)*A158799(n))`
-/

namespace A175286.P16653469093978509462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 ((n + 1 : ℤ) * A158799 n).toNat

end

end A175286.P16653469093978509462

/-! ## A175286.P14631132281130292170

`A007733((n+1)*A134201(n+1))`
-/

namespace A175286.P14631132281130292170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 ((n + 1 : ℤ) * A134201 (n + 1)).toNat

end

end A175286.P14631132281130292170

/-!
# A175287: Partial sums of ceiling(n^2/4).

The programs for A175287, the canonical program `A175287.P15482922110174853122` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175287 has offset 0).

The definition of A175287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175287.P7884984445007551367

`floor((n+1)*(2*n²+n+9)/24)`
-/

namespace A175287.P7884984445007551367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) * (2 * n ^ 2 + n + 9) : ℚ) / 24⌋

end

end A175287.P7884984445007551367

namespace A175287

/-- `floor((n+1)*(2*n²+n+9)/24)` -/
def P7884984445007551367.Spec : Prop :=
  ∀ n, P7884984445007551367.a n = A175287 n

end A175287

/-! ## A175287.P15482922110174853122

`a(n-4)+n²-3*n+5` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175287

/-- `a(n-4)+n²-3*n+5` -/
def P15482922110174853122.Spec : Prop :=
  ∀ n, P15482922110174853122.a n = A175287 n

theorem P15482922110174853122.correct : P15482922110174853122.Spec := by
  intro n
  simp only [A175287]

end A175287

/-! ## A175287.P102336018951189515

`ceil(a(n-1)+(n/2)²)` with `a(0)=0`
-/

namespace A175287.P102336018951189515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) : ℚ) + ((n : ℚ) / 2) ^ 2⌉

end

end A175287.P102336018951189515

namespace A175287

/-- `ceil(a(n-1)+(n/2)²)` -/
def P102336018951189515.Spec : Prop :=
  ∀ n, P102336018951189515.a n = A175287 n

end A175287

/-! ## A175287.P18139526610607786771

`a(n-2)+C(n, 2)+1` with `a(0)=0, a(1)=1`
-/

namespace A175287.P18139526610607786771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (Nat.choose n 2 + 1)

end

end A175287.P18139526610607786771

namespace A175287

/-- `a(n-2)+C(n, 2)+1` -/
def P18139526610607786771.Spec : Prop :=
  ∀ n, (P18139526610607786771.a n : ℤ) = A175287 n

end A175287

/-! ## A175287.P3000566878283419815

`∑[C(n, 2)]-(a(n-1)-n)` with `a(0)=0`
-/

namespace A175287.P3000566878283419815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) - (n : ℤ))

end

end A175287.P3000566878283419815

namespace A175287

/-- `∑[C(n, 2)]-(a(n-1)-n)` -/
def P3000566878283419815.Spec : Prop :=
  ∀ n, P3000566878283419815.a n = A175287 n

end A175287

/-! ## A175287.P2296978023024559755

`∑[∑[a(n-2)+2]]/2` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A175287.P2296978023024559755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A175287.P2296978023024559755

namespace A175287

/-- `∑[∑[a(n-2)+2]]/2` -/
def P2296978023024559755.Spec : Prop :=
  ∀ n, P2296978023024559755.a n = (A175287 n : ℚ)

end A175287

/-! ## A175287.P7700953289453456698

`∑[n-1]+a(n-2)+2` with `a(0)=0, a(1)=1`
-/

namespace A175287.P7700953289453456698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (a (n - 2) + 2)

end

end A175287.P7700953289453456698

namespace A175287

/-- `∑[n-1]+a(n-2)+2` -/
def P7700953289453456698.Spec : Prop :=
  ∀ n, P7700953289453456698.a n = A175287 n

end A175287

/-! ## A175287.P4344119279469174773

`2-(∑[1-n]-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A175287.P4344119279469174773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2))

end

end A175287.P4344119279469174773

namespace A175287

/-- `2-(∑[1-n]-a(n-2))` -/
def P4344119279469174773.Spec : Prop :=
  ∀ n, P4344119279469174773.a n = A175287 n

end A175287

/-! ## A175287.P9306267148541889235

`a(n-1)+floor((n*n+3)/4)` with `a(0)=0`
-/

namespace A175287.P9306267148541889235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n * n + 3 : ℚ) / 4⌋

end

end A175287.P9306267148541889235

namespace A175287

/-- `a(n-1)+floor((n*n+3)/4)` -/
def P9306267148541889235.Spec : Prop :=
  ∀ n, P9306267148541889235.a n = A175287 n

end A175287

/-! ## A175287.P6658631443467833544

`∑[A004652(n)]`
-/

namespace A175287.P6658631443467833544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175287.P6658631443467833544

namespace A175287

/-- `∑[A004652(n)]` -/
def P6658631443467833544.Spec : Prop :=
  ∀ n, P6658631443467833544.a n = A175287 n

end A175287

/-! ## A175287.P13531646407648466781

`A391995(n)+∑[n]`
-/

namespace A175287.P13531646407648466781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391995 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A175287.P13531646407648466781

namespace A175287

/-- `A391995(n)+∑[n]` -/
def P13531646407648466781.Spec : Prop :=
  ∀ n, P13531646407648466781.a n = A175287 n

end A175287

/-! ## A175287.P3268005521383156939

`A361272(n)-1+n`
-/

namespace A175287.P3268005521383156939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361272 n - 1 + (n : ℤ)

end

end A175287.P3268005521383156939

namespace A175287

/-- `A361272(n)-1+n` -/
def P3268005521383156939.Spec : Prop :=
  ∀ n, P3268005521383156939.a n = A175287 n

end A175287

/-! ## A175287.P7337220924930632760

`∑[n²-A242477(n)]`
-/

namespace A175287.P7337220924930632760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A242477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175287.P7337220924930632760

namespace A175287

/-- `∑[n²-A242477(n)]` -/
def P7337220924930632760.Spec : Prop :=
  ∀ n, P7337220924930632760.a n = A175287 n

end A175287

/-! ## A175287.P5847528293453013881

`round(A173196(n)+n/2)`
-/

namespace A175287.P5847528293453013881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A173196 n : ℚ) + (n : ℚ) / 2)

end

end A175287.P5847528293453013881

namespace A175287

/-- `round(A173196(n)+n/2)` -/
def P5847528293453013881.Spec : Prop :=
  ∀ n, P5847528293453013881.a n = A175287 n

end A175287

/-! ## A175287.P8314068052859979905

`A004006(n)-a(n-1)` with `a(0)=0`
-/

namespace A175287.P8314068052859979905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004006 n - a (n - 1)

end

end A175287.P8314068052859979905

namespace A175287

/-- `A004006(n)-a(n-1)` -/
def P8314068052859979905.Spec : Prop :=
  ∀ n, P8314068052859979905.a n = A175287 n

end A175287

/-! ## A175287.P3681834150071609732

`∑[A035106(n+1)-n]-1`
-/

namespace A175287.P3681834150071609732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A175287.P3681834150071609732

namespace A175287

/-- `∑[A035106(n+1)-n]-1` -/
def P3681834150071609732.Spec : Prop :=
  ∀ n, P3681834150071609732.a n = A175287 n

end A175287

/-! ## A175287.P11839203016936471856

`A181385(n)+a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A175287.P11839203016936471856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A181385 n + a (n - 1)

end

end A175287.P11839203016936471856

namespace A175287

/-- `A181385(n)+a(n-1)` -/
def P11839203016936471856.Spec : Prop :=
  ∀ n, P11839203016936471856.a n = A175287 n

end A175287

/-! ## A175287.P2972275348488609754

`round(∑[(A005893(n)+1)/4]/2)`
-/

namespace A175287.P2972275348488609754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005893 n + 1 : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) / 2)

end

end A175287.P2972275348488609754

namespace A175287

/-- `round(∑[(A005893(n)+1)/4]/2)` -/
def P2972275348488609754.Spec : Prop :=
  ∀ n, P2972275348488609754.a n = A175287 n

end A175287

/-! ## A175287.P13367899369388476958

`A280186(n)+A001318(n)`
-/

namespace A175287.P13367899369388476958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 n + A001318 n

end

end A175287.P13367899369388476958

namespace A175287

/-- `A280186(n)+A001318(n)` -/
def P13367899369388476958.Spec : Prop :=
  ∀ n, P13367899369388476958.a n = A175287 n

end A175287

/-! ## A175287.P1509077806329970042

`A173196(n)+A110654(n)`
-/

namespace A175287.P1509077806329970042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + A110654 n

end

end A175287.P1509077806329970042

namespace A175287

/-- `A173196(n)+A110654(n)` -/
def P1509077806329970042.Spec : Prop :=
  ∀ n, P1509077806329970042.a n = A175287 n

end A175287

/-!
# A175289: Pisano period of A002605 modulo n.

The programs for A175289, there is no canonical definition to state claims against.
-/

/-! ## A175289.P15694958199729227370

`A102451(A000265(n+1)^A049705(n+1))`
-/

namespace A175289.P15694958199729227370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102451 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) ^ (A049705 (n + 1) : ℤ))).toNat

end

end A175289.P15694958199729227370

/-!
# A175297: Convert n to binary. AND each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

The programs for A175297, the canonical program `A175297.P4708182559347836426` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175297 has offset 1).

The definition of A175297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175297.P7185104803919624670

`and(n+1, A030101(n+1))`
-/

namespace A175297.P7185104803919624670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A030101 (n + 1))

end

end A175297.P7185104803919624670

namespace A175297

/-- `and(n+1, A030101(n+1))` -/
def P7185104803919624670.Spec : Prop :=
  ∀ n, P7185104803919624670.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P12417134315448675727

`and(n+1, A048700(n+1))`
-/

namespace A175297.P12417134315448675727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A048700 (n + 1))

end

end A175297.P12417134315448675727

namespace A175297

/-- `and(n+1, A048700(n+1))` -/
def P12417134315448675727.Spec : Prop :=
  ∀ n, P12417134315448675727.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P7960724009982943210

`and(n+1, A161501(n+1))`
-/

namespace A175297.P7960724009982943210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A161501 (n + 1))

end

end A175297.P7960724009982943210

namespace A175297

/-- `and(n+1, A161501(n+1))` -/
def P7960724009982943210.Spec : Prop :=
  ∀ n, P7960724009982943210.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P4708182559347836426

`and(n+1, A165789(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A175297

/-- `and(n+1, A165789(n+1))` -/
def P4708182559347836426.Spec : Prop :=
  ∀ n, P4708182559347836426.a n = A175297 (n + 1)

theorem P4708182559347836426.correct : P4708182559347836426.Spec := by
  intro n
  simp only [A175297, Nat.add_sub_cancel]

end A175297

/-! ## A175297.P11032906330075823911

`and(n+1, A175920(n+1))`
-/

namespace A175297.P11032906330075823911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A175920 (n + 1))

end

end A175297.P11032906330075823911

namespace A175297

/-- `and(n+1, A175920(n+1))` -/
def P11032906330075823911.Spec : Prop :=
  ∀ n, P11032906330075823911.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P9353117373539905788

`and(n+1, A264618(n+1))`
-/

namespace A175297.P9353117373539905788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A264618 (n + 1))

end

end A175297.P9353117373539905788

namespace A175297

/-- `and(n+1, A264618(n+1))` -/
def P9353117373539905788.Spec : Prop :=
  ∀ n, P9353117373539905788.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P10058523321215928890

`and(n+1, A264619(n+1))`
-/

namespace A175297.P10058523321215928890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A264619 (n + 1))

end

end A175297.P10058523321215928890

namespace A175297

/-- `and(n+1, A264619(n+1))` -/
def P10058523321215928890.Spec : Prop :=
  ∀ n, P10058523321215928890.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P917373375305921449

`and(n+1, A145341(n+2))`
-/

namespace A175297.P917373375305921449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A145341 (n + 2))

end

end A175297.P917373375305921449

namespace A175297

/-- `and(n+1, A145341(n+2))` -/
def P917373375305921449.Spec : Prop :=
  ∀ n, P917373375305921449.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P18273647419971153055

`A003817(n+1)-A175918(n+1)`
-/

namespace A175297.P18273647419971153055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) - A175918 (n + 1)

end

end A175297.P18273647419971153055

namespace A175297

/-- `A003817(n+1)-A175918(n+1)` -/
def P18273647419971153055.Spec : Prop :=
  ∀ n, P18273647419971153055.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P3928447354743934733

`A055944(n+1)-A175298(n+1)`
-/

namespace A175297.P3928447354743934733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (n + 1) - A175298 (n + 1)

end

end A175297.P3928447354743934733

namespace A175297

/-- `A055944(n+1)-A175298(n+1)` -/
def P3928447354743934733.Spec : Prop :=
  ∀ n, P3928447354743934733.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P9221777057964503985

`A175298(n+1)-A175919(n+1)`
-/

namespace A175297.P9221777057964503985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (n + 1) - A175919 (n + 1)

end

end A175297.P9221777057964503985

namespace A175297

/-- `A175298(n+1)-A175919(n+1)` -/
def P9221777057964503985.Spec : Prop :=
  ∀ n, P9221777057964503985.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P14141472702894983186

`A175920(n+1)-A175917(n+1)`
-/

namespace A175297.P14141472702894983186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 (n + 1) - A175917 (n + 1)

end

end A175297.P14141472702894983186

namespace A175297

/-- `A175920(n+1)-A175917(n+1)` -/
def P14141472702894983186.Spec : Prop :=
  ∀ n, P14141472702894983186.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P16979244369273484255

`A030101(n+1)-A370427(n+1)`
-/

namespace A175297.P16979244369273484255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (n + 1) - A370427 (n + 1)

end

end A175297.P16979244369273484255

namespace A175297

/-- `A030101(n+1)-A370427(n+1)` -/
def P16979244369273484255.Spec : Prop :=
  ∀ n, P16979244369273484255.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P10506318599981792240

`and(A325401(n+1), A325402(n+1))`
-/

namespace A175297.P10506318599981792240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325401 (n + 1)) (A325402 (n + 1))

end

end A175297.P10506318599981792240

namespace A175297

/-- `and(A325401(n+1), A325402(n+1))` -/
def P10506318599981792240.Spec : Prop :=
  ∀ n, P10506318599981792240.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P6199389423535963688

`(A055944(n+1)-A175919(n+1))/2`
-/

namespace A175297.P6199389423535963688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055944 (n + 1) - A175919 (n + 1) : ℚ) / 2

end

end A175297.P6199389423535963688

namespace A175297

/-- `(A055944(n+1)-A175919(n+1))/2` -/
def P6199389423535963688.Spec : Prop :=
  ∀ n, P6199389423535963688.a n = (A175297 (n + 1) : ℚ)

end A175297

/-! ## A175297.P9928601051451143068

`A175920(A175298(n+1))-A175918(n+1)`
-/

namespace A175297.P9928601051451143068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 (A175298 (n + 1)).toNat - A175918 (n + 1)

end

end A175297.P9928601051451143068

namespace A175297

/-- `A175920(A175298(n+1))-A175918(n+1)` -/
def P9928601051451143068.Spec : Prop :=
  ∀ n, P9928601051451143068.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P3933770233845696980

`A175298(n+1)+A175917(n+1)-A175918(n+1)`
-/

namespace A175297.P3933770233845696980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (n + 1) + (A175917 (n + 1) - A175918 (n + 1))

end

end A175297.P3933770233845696980

namespace A175297

/-- `A175298(n+1)+A175917(n+1)-A175918(n+1)` -/
def P3933770233845696980.Spec : Prop :=
  ∀ n, P3933770233845696980.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P13406019817384971692

`A175919(n+1)+A175920(n+1)-A175918(n+1)`
-/

namespace A175297.P13406019817384971692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (n + 1) + (A175920 (n + 1) - A175918 (n + 1))

end

end A175297.P13406019817384971692

namespace A175297

/-- `A175919(n+1)+A175920(n+1)-A175918(n+1)` -/
def P13406019817384971692.Spec : Prop :=
  ∀ n, P13406019817384971692.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P1882009869045762556

`and(n+1, A048701(n+1))`
-/

namespace A175297.P1882009869045762556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A048701 (n + 1))

end

end A175297.P1882009869045762556

namespace A175297

/-- `and(n+1, A048701(n+1))` -/
def P1882009869045762556.Spec : Prop :=
  ∀ n, P1882009869045762556.a n = A175297 (n + 1)

end A175297

/-! ## A175297.P17795967160418852817

`and(n+1, A281589(2*(n+1)))`
-/

namespace A175297.P17795967160418852817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A281589 (2 * (n + 1)))

end

end A175297.P17795967160418852817

namespace A175297

/-- `and(n+1, A281589(2*(n+1)))` -/
def P17795967160418852817.Spec : Prop :=
  ∀ n, P17795967160418852817.a n = A175297 (n + 1)

end A175297

/-!
# A175298: Smallest number >=n whose binary representation is palindromic and has a 1 whenever the binary representation of n has a 1.

The programs for A175298, the canonical program `A175298.P14996771315134995194` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175298 has offset 0).

The definition of A175298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175298.P8612233884035161843

`A370427(n)+n`
-/

namespace A175298.P8612233884035161843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370427 n + (n : ℤ)

end

end A175298.P8612233884035161843

namespace A175298

/-- `A370427(n)+n` -/
def P8612233884035161843.Spec : Prop :=
  ∀ n, P8612233884035161843.a n = A175298 n

theorem P8612233884035161843.correct : P8612233884035161843.Spec := by
  intro n
  simp only [A175298, Nat.add_sub_cancel, A175298.P8612233884035161843.a, A175298.P14996771315134995194.a, A055945, A055945.P5963763732554067333.a, A370427, A370427.P3544381458467413037.a, A038572, A038572.P9289042872142352092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175298

/-! ## A175298.P10216170709719973169

`or(n, A030101(n))`
-/

namespace A175298.P10216170709719973169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A030101 n)

end

end A175298.P10216170709719973169

namespace A175298

/-- `or(n, A030101(n))` -/
def P10216170709719973169.Spec : Prop :=
  ∀ n, P10216170709719973169.a n = A175298 n

end A175298

/-! ## A175298.P5895083753754018529

`or(n, A175919(n))`
-/

namespace A175298.P5895083753754018529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A175919 n)

end

end A175298.P5895083753754018529

namespace A175298

/-- `or(n, A175919(n))` -/
def P5895083753754018529.Spec : Prop :=
  ∀ n, P5895083753754018529.a n = A175298 n

end A175298

/-! ## A175298.P14996771315134995194

`or(n, n-A055945(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175298

/-- `or(n, n-A055945(n))` -/
def P14996771315134995194.Spec : Prop :=
  ∀ n, P14996771315134995194.a n = A175298 n

theorem P14996771315134995194.correct : P14996771315134995194.Spec := by
  intro n
  simp only [A175298]

end A175298

/-! ## A175298.P11881814118568919796

`or(n, A055944(n)-n)`
-/

namespace A175298.P11881814118568919796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A055944 n - (n : ℤ))

end

end A175298.P11881814118568919796

namespace A175298

/-- `or(n, A055944(n)-n)` -/
def P11881814118568919796.Spec : Prop :=
  ∀ n, P11881814118568919796.a n = A175298 n

theorem P11881814118568919796.correct : P11881814118568919796.Spec := by
  intro n
  simp only [A175298, Nat.add_sub_cancel, A175298.P11881814118568919796.a, A175298.P14996771315134995194.a, A055944, A055944.P9824612390251619605.a, A055945, A055945.P5963763732554067333.a, A030101, A030101.P16184294017372777612.a, A038572, A038572.P9289042872142352092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175298

/-! ## A175298.P8792534498685627044

`or(n, A264619(n)%(2*n+1))`
-/

namespace A175298.P8792534498685627044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.tmod (A264619 n) (2 * n + 1 : ℤ))

end

end A175298.P8792534498685627044

namespace A175298

/-- `or(n, A264619(n)%(2*n+1))` -/
def P8792534498685627044.Spec : Prop :=
  ∀ n, P8792534498685627044.a n = A175298 n

end A175298

/-! ## A175298.P3859784723785517089

`A003817(n)-A175917(n)`
-/

namespace A175298.P3859784723785517089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A175917 n

end

end A175298.P3859784723785517089

namespace A175298

/-- `A003817(n)-A175917(n)` -/
def P3859784723785517089.Spec : Prop :=
  ∀ n, P3859784723785517089.a n = A175298 n

theorem P3859784723785517089.correct : P3859784723785517089.Spec := by
  intro n
  simp only [A175298, Nat.add_sub_cancel, A175298.P3859784723785517089.a, A175298.P14996771315134995194.a, A003817, A003817.P16251594020616633079.a, A055945, A055945.P5963763732554067333.a, A175917, A175917.P5961217577201396990.a, A038572, A038572.P9289042872142352092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175298

/-! ## A175298.P5572431991575218175

`or(A325401(n), A325402(n))`
-/

namespace A175298.P5572431991575218175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A325401 n) (A325402 n)

end

end A175298.P5572431991575218175

namespace A175298

/-- `or(A325401(n), A325402(n))` -/
def P5572431991575218175.Spec : Prop :=
  ∀ n, P5572431991575218175.a n = A175298 n

end A175298

/-! ## A175298.P13136153205202369269

`xor(A175918(n), A175920(n))`
-/

namespace A175298.P13136153205202369269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A175918 n) (A175920 n)

end

end A175298.P13136153205202369269

namespace A175298

/-- `xor(A175918(n), A175920(n))` -/
def P13136153205202369269.Spec : Prop :=
  ∀ n, P13136153205202369269.a n = A175298 n

end A175298

/-! ## A175298.P16244785643016452158

`(A175919(n)+A055944(n))/2`
-/

namespace A175298.P16244785643016452158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175919 n + A055944 n : ℚ) / 2

end

end A175298.P16244785643016452158

namespace A175298

/-- `(A175919(n)+A055944(n))/2` -/
def P16244785643016452158.Spec : Prop :=
  ∀ n, P16244785643016452158.a n = (A175298 n : ℚ)

end A175298

/-! ## A175298.P12161729190095093978

`and(A030101(n), A035327(n))+n`
-/

namespace A175298.P12161729190095093978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030101 n) (A035327 n) + (n : ℤ)

end

end A175298.P12161729190095093978

namespace A175298

/-- `and(A030101(n), A035327(n))+n` -/
def P12161729190095093978.Spec : Prop :=
  ∀ n, P12161729190095093978.a n = A175298 n

end A175298

/-! ## A175298.P10171152131916352711

`and(A035327(n), A048701(n))+n`
-/

namespace A175298.P10171152131916352711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035327 n) (A048701 n) + (n : ℤ)

end

end A175298.P10171152131916352711

namespace A175298

/-- `and(A035327(n), A048701(n))+n` -/
def P10171152131916352711.Spec : Prop :=
  ∀ n, P10171152131916352711.a n = A175298 n

end A175298

/-! ## A175298.P1343874497209173767

`A030101(n)+and(n, A175918(n))`
-/

namespace A175298.P1343874497209173767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + Int.land (n : ℤ) (A175918 n)

end

end A175298.P1343874497209173767

namespace A175298

/-- `A030101(n)+and(n, A175918(n))` -/
def P1343874497209173767.Spec : Prop :=
  ∀ n, P1343874497209173767.a n = A175298 n

end A175298

/-! ## A175298.P11680647983811489387

`A030101(n)+and(n, A175919(n))`
-/

namespace A175298.P11680647983811489387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + Int.land (n : ℤ) (A175919 n)

end

end A175298.P11680647983811489387

namespace A175298

/-- `A030101(n)+and(n, A175919(n))` -/
def P11680647983811489387.Spec : Prop :=
  ∀ n, P11680647983811489387.a n = A175298 n

end A175298

/-! ## A175298.P16338474083700548571

`and(A035327(n), A175919(n))+n`
-/

namespace A175298.P16338474083700548571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035327 n) (A175919 n) + (n : ℤ)

end

end A175298.P16338474083700548571

namespace A175298

/-- `and(A035327(n), A175919(n))+n` -/
def P16338474083700548571.Spec : Prop :=
  ∀ n, P16338474083700548571.a n = A175298 n

end A175298

/-! ## A175298.P14746887612441712947

`and(A048701(n), A175918(n))+n`
-/

namespace A175298.P14746887612441712947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048701 n) (A175918 n) + (n : ℤ)

end

end A175298.P14746887612441712947

namespace A175298

/-- `and(A048701(n), A175918(n))+n` -/
def P14746887612441712947.Spec : Prop :=
  ∀ n, P14746887612441712947.a n = A175298 n

end A175298

/-! ## A175298.P10574284925320350709

`and(A048701(n), A175919(n))+n`
-/

namespace A175298.P10574284925320350709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048701 n) (A175919 n) + (n : ℤ)

end

end A175298.P10574284925320350709

namespace A175298

/-- `and(A048701(n), A175919(n))+n` -/
def P10574284925320350709.Spec : Prop :=
  ∀ n, P10574284925320350709.a n = A175298 n

end A175298

/-! ## A175298.P5215076366487418169

`and(A035327(n), A264618(n))+n`
-/

namespace A175298.P5215076366487418169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035327 n) (A264618 n) + (n : ℤ)

end

end A175298.P5215076366487418169

namespace A175298

/-- `and(A035327(n), A264618(n))+n` -/
def P5215076366487418169.Spec : Prop :=
  ∀ n, P5215076366487418169.a n = A175298 n

end A175298

/-! ## A175298.P13810424485778248975

`and(A175918(n), A264618(n))+n`
-/

namespace A175298.P13810424485778248975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175918 n) (A264618 n) + (n : ℤ)

end

end A175298.P13810424485778248975

namespace A175298

/-- `and(A175918(n), A264618(n))+n` -/
def P13810424485778248975.Spec : Prop :=
  ∀ n, P13810424485778248975.a n = A175298 n

end A175298

/-! ## A175298.P9787840282868916971

`and(A175918(n), A264619(n))+n`
-/

namespace A175298.P9787840282868916971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175918 n) (A264619 n) + (n : ℤ)

end

end A175298.P9787840282868916971

namespace A175298

/-- `and(A175918(n), A264619(n))+n` -/
def P9787840282868916971.Spec : Prop :=
  ∀ n, P9787840282868916971.a n = A175298 n

end A175298

/-!
# A175299: a(n) = the smallest positive integer such that A175298(a(n)) = the n-th positive integer that is a palindrome when written in binary.

The programs for A175299, there is no canonical definition to state claims against.
-/

/-! ## A175299.P14489411486093179928

`A163807(A082662(n+1))`
-/

namespace A175299.P14489411486093179928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (A082662 (n + 1)).toNat

end

end A175299.P14489411486093179928

/-! ## A175299.P9786220267063469506

`A163807(floor(A080075(n+1)/2))`
-/

namespace A175299.P9786220267063469506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 ⌊(A080075 (n + 1) : ℚ) / 2⌋.toNat

end

end A175299.P9786220267063469506

/-! ## A175299.P14762123905037645919

`A163807((A080075(n+1)-1)/2)`
-/

namespace A175299.P14762123905037645919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (SequenceMachineLib.roundAway ((A080075 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A175299.P14762123905037645919

/-! ## A175299.P967672176927429960

`A030109(A080075(n+1))+A030109(A082662(n+1))`
-/

namespace A175299.P967672176927429960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A080075 (n + 1)).toNat + A030109 (A082662 (n + 1)).toNat

end

end A175299.P967672176927429960

