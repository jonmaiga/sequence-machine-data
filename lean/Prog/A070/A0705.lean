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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A070500: a(n) = n^3 mod 38.

The programs for A070500, the canonical program `A070500.P4845983330119351375` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070500 has offset 0).

The definition of A070500 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%38` (program `A070500.P4845983330119351375`, by `A070500.P4845983330119351375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070500.P4845983330119351375

`(n^3)%38`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070500

/-- `(n^3)%38` -/
def P4845983330119351375.Spec : Prop :=
  ∀ n, (P4845983330119351375.a n : ℤ) = A070500 n

theorem P4845983330119351375.correct : P4845983330119351375.Spec := by
  intro n
  simp only [A070500]

end A070500

/-!
# A070501: a(n) = n^3 mod 39.

The programs for A070501, the canonical program `A070501.P3079324267389686229` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070501 has offset 0).

The definition of A070501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%39` (program `A070501.P3079324267389686229`, by `A070501.P3079324267389686229.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070501.P3079324267389686229

`(n^3)%39`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070501

/-- `(n^3)%39` -/
def P3079324267389686229.Spec : Prop :=
  ∀ n, (P3079324267389686229.a n : ℤ) = A070501 n

theorem P3079324267389686229.correct : P3079324267389686229.Spec := by
  intro n
  simp only [A070501]

end A070501

/-!
# A070502: a(n) = n^3 mod 40.

The programs for A070502, the canonical program `A070502.P856125361185997482` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070502 has offset 0).

The definition of A070502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%40` (program `A070502.P856125361185997482`, by `A070502.P856125361185997482.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070502.P856125361185997482

`(n^3)%40`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070502

/-- `(n^3)%40` -/
def P856125361185997482.Spec : Prop :=
  ∀ n, (P856125361185997482.a n : ℤ) = A070502 n

theorem P856125361185997482.correct : P856125361185997482.Spec := by
  intro n
  simp only [A070502]

end A070502

/-!
# A070503: a(n) = n^3 mod 41.

The programs for A070503, the canonical program `A070503.P17237357418945443191` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070503 has offset 0).

The definition of A070503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%41` (program `A070503.P17237357418945443191`, by `A070503.P17237357418945443191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070503.P17237357418945443191

`(n^3)%41`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070503

/-- `(n^3)%41` -/
def P17237357418945443191.Spec : Prop :=
  ∀ n, (P17237357418945443191.a n : ℤ) = A070503 n

theorem P17237357418945443191.correct : P17237357418945443191.Spec := by
  intro n
  simp only [A070503]

end A070503

/-!
# A070504: a(n) = n^3 mod 42.

The programs for A070504, the canonical program `A070504.P11451228735327151677` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070504 has offset 0).

The definition of A070504 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%42` (program `A070504.P11451228735327151677`, by `A070504.P11451228735327151677.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070504.P11451228735327151677

`(n^3)%42`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070504

/-- `(n^3)%42` -/
def P11451228735327151677.Spec : Prop :=
  ∀ n, (P11451228735327151677.a n : ℤ) = A070504 n

theorem P11451228735327151677.correct : P11451228735327151677.Spec := by
  intro n
  simp only [A070504]

end A070504

/-!
# A070505: a(n) = n^3 mod 43.

The programs for A070505, the canonical program `A070505.P13894925496215325713` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070505 has offset 0).

The definition of A070505 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%43` (program `A070505.P13894925496215325713`, by `A070505.P13894925496215325713.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070505.P13894925496215325713

`(n^3)%43`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070505

/-- `(n^3)%43` -/
def P13894925496215325713.Spec : Prop :=
  ∀ n, (P13894925496215325713.a n : ℤ) = A070505 n

theorem P13894925496215325713.correct : P13894925496215325713.Spec := by
  intro n
  simp only [A070505]

end A070505

/-!
# A070506: a(n) = n^3 mod 44.

The programs for A070506, the canonical program `A070506.P14040519121237412931` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070506 has offset 0).

The definition of A070506 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%44` (program `A070506.P14040519121237412931`, by `A070506.P14040519121237412931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070506.P14040519121237412931

`(n^3)%44`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070506

/-- `(n^3)%44` -/
def P14040519121237412931.Spec : Prop :=
  ∀ n, (P14040519121237412931.a n : ℤ) = A070506 n

theorem P14040519121237412931.correct : P14040519121237412931.Spec := by
  intro n
  simp only [A070506]

end A070506

/-!
# A070507: a(n) = n^3 mod 45.

The programs for A070507, the canonical program `A070507.P3348989475566424957` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070507 has offset 0).

The definition of A070507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%45` (program `A070507.P3348989475566424957`, by `A070507.P3348989475566424957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070507.P3348989475566424957

`(n^3)%45`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070507

/-- `(n^3)%45` -/
def P3348989475566424957.Spec : Prop :=
  ∀ n, (P3348989475566424957.a n : ℤ) = A070507 n

theorem P3348989475566424957.correct : P3348989475566424957.Spec := by
  intro n
  simp only [A070507]

end A070507

/-!
# A070508: a(n) = n^3 mod 46.

The programs for A070508, the canonical program `A070508.P15898175176773514015` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070508 has offset 0).

The definition of A070508 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%46` (program `A070508.P15898175176773514015`, by `A070508.P15898175176773514015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070508.P15898175176773514015

`(n^3)%46`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070508

/-- `(n^3)%46` -/
def P15898175176773514015.Spec : Prop :=
  ∀ n, (P15898175176773514015.a n : ℤ) = A070508 n

theorem P15898175176773514015.correct : P15898175176773514015.Spec := by
  intro n
  simp only [A070508]

end A070508

/-!
# A070509: a(n) = n^3 mod 47.

The programs for A070509, the canonical program `A070509.P10319126028089605698` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070509 has offset 0).

The definition of A070509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%47` (program `A070509.P10319126028089605698`, by `A070509.P10319126028089605698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070509.P10319126028089605698

`(n^3)%47`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070509

/-- `(n^3)%47` -/
def P10319126028089605698.Spec : Prop :=
  ∀ n, (P10319126028089605698.a n : ℤ) = A070509 n

theorem P10319126028089605698.correct : P10319126028089605698.Spec := by
  intro n
  simp only [A070509]

end A070509

/-!
# A070510: a(n) = n^3 mod 48.

The programs for A070510, the canonical program `A070510.P10337291064051920016` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070510 has offset 0).

The definition of A070510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%48` (program `A070510.P10337291064051920016`, by `A070510.P10337291064051920016.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070510.P10337291064051920016

`(n^3)%48`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070510

/-- `(n^3)%48` -/
def P10337291064051920016.Spec : Prop :=
  ∀ n, (P10337291064051920016.a n : ℤ) = A070510 n

theorem P10337291064051920016.correct : P10337291064051920016.Spec := by
  intro n
  simp only [A070510]

end A070510

/-!
# A070512: a(n) = n^4 mod 7.

The programs for A070512, the canonical program `A070512.P17622950001414582623` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070512 has offset 0).

The definition of A070512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%7` (program `A070512.P17622950001414582623`, by `A070512.P17622950001414582623.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070512.P17622950001414582623

`(n^4)%7`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070512

/-- `(n^4)%7` -/
def P17622950001414582623.Spec : Prop :=
  ∀ n, (P17622950001414582623.a n : ℤ) = A070512 n

theorem P17622950001414582623.correct : P17622950001414582623.Spec := by
  intro n
  simp only [A070512]

end A070512

/-!
# A070513: a(n) = n^4 mod 9.

The programs for A070513, the canonical program `A070513.P14782710442911775860` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070513 has offset 0).

The definition of A070513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%9` (program `A070513.P14782710442911775860`, by `A070513.P14782710442911775860.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070513.P14782710442911775860

`(n^4)%9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070513

/-- `(n^4)%9` -/
def P14782710442911775860.Spec : Prop :=
  ∀ n, (P14782710442911775860.a n : ℤ) = A070513 n

theorem P14782710442911775860.correct : P14782710442911775860.Spec := by
  intro n
  simp only [A070513]

end A070513

/-!
# A070514: Final digit of n^4: a(n) = n^4 mod 10.

The programs for A070514, the canonical program `A070514.P11408138510612910342` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070514 has offset 0).

The definition of A070514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%10` (program `A070514.P11408138510612910342`, by `A070514.P11408138510612910342.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070514.P11408138510612910342

`(n^4)%10`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070514

/-- `(n^4)%10` -/
def P11408138510612910342.Spec : Prop :=
  ∀ n, (P11408138510612910342.a n : ℤ) = A070514 n

theorem P11408138510612910342.correct : P11408138510612910342.Spec := by
  intro n
  simp only [A070514]

end A070514

/-!
# A070515: a(n) = n^4 mod 11.

The programs for A070515, the canonical program `A070515.P8806484406322965726` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070515 has offset 0).

The definition of A070515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%11` (program `A070515.P8806484406322965726`, by `A070515.P8806484406322965726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070515.P8806484406322965726

`(n^4)%11`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070515

/-- `(n^4)%11` -/
def P8806484406322965726.Spec : Prop :=
  ∀ n, (P8806484406322965726.a n : ℤ) = A070515 n

theorem P8806484406322965726.correct : P8806484406322965726.Spec := by
  intro n
  simp only [A070515]

end A070515

/-!
# A070517: a(n) = n^4 mod 13.

The programs for A070517, the canonical program `A070517.P16802137181824019221` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070517 has offset 0).

The definition of A070517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%13` (program `A070517.P16802137181824019221`, by `A070517.P16802137181824019221.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070517.P16802137181824019221

`(n^4)%13`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070517

/-- `(n^4)%13` -/
def P16802137181824019221.Spec : Prop :=
  ∀ n, (P16802137181824019221.a n : ℤ) = A070517 n

theorem P16802137181824019221.correct : P16802137181824019221.Spec := by
  intro n
  simp only [A070517]

end A070517

/-!
# A070518: Value of n-th cyclotomic polynomial at n.

The programs for A070518, there is no canonical definition to state claims against.
-/

/-! ## A070518.P6262992397083200743

`A253240(∑[4*(n+1)])`
-/

namespace A070518.P6262992397083200743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070518.P6262992397083200743

/-! ## A070518.P2355835239072984667

`abs(A253240(A046092(n+1)))`
-/

namespace A070518.P2355835239072984667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253240 (A046092 (n + 1)).toNat|

end

end A070518.P2355835239072984667

/-! ## A070518.P12334140455633575020

`abs(A253240(eq[0, A165795(n)]))`
-/

namespace A070518.P12334140455633575020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A070518.P12334140455633575020

/-! ## A070518.P16324776039964129952

`A253240(A046092(n+1))%A070526(n+1)`
-/

namespace A070518.P16324776039964129952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253240 (A046092 (n + 1)).toNat) (A070526 (n + 1))

end

end A070518.P16324776039964129952

/-!
# A070519: Numbers k such that Cyclotomic(k,k) (i.e., the value of k-th cyclotomic polynomial at k) is a prime number.

The programs for A070519, there is no canonical definition to state claims against.
-/

/-! ## A070519.P8775970196762935003

`eq[A105307(2*(n+1)), A278248(n)]`
-/

namespace A070519.P8775970196762935003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105307 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278248 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070519.P8775970196762935003

/-! ## A070519.P4068032568620717442

`eq[A001222(A218571(n)), A112198(n)]`
-/

namespace A070519.P4068032568620717442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A218571 (n + 10)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112198 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070519.P4068032568620717442

/-! ## A070519.P13864960202879941249

`A250483(n+1)+A053610(A132786(n))`
-/

namespace A070519.P13864960202879941249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250483 (n + 1) + A053610 (A132786 n).toNat

end

end A070519.P13864960202879941249

/-! ## A070519.P11275828122811690747

`A237271(A058696(2*n))+A000041(n)`
-/

namespace A070519.P11275828122811690747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A058696 (2 * n)).toNat + A000041 n

end

end A070519.P11275828122811690747

/-! ## A070519.P15915942031665513244

`A076868(A011853(n+1))+A014657(n+1)`
-/

namespace A070519.P15915942031665513244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076868 (A011853 (n + 1)).toNat + A014657 (n + 1)

end

end A070519.P15915942031665513244

/-!
# A070520: Prime numbers of form p=Cyclotomic(n,n).

The programs for A070520, there is no canonical definition to state claims against.
-/

/-! ## A070520.P9192406301748307871

`A070518(A070519(n+1))`
-/

namespace A070520.P9192406301748307871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070518 (A070519 (n + 1)).toNat

end

end A070520.P9192406301748307871

/-! ## A070520.P637391654699919150

`A070518(eq[A105307(2*(n+1)), A278248(n)])`
-/

namespace A070520.P637391654699919150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105307 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070518 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A070520.P637391654699919150

/-!
# A070522: Value of n-th cyclotomic polynomial at the n-th prime.

The programs for A070522, there is no canonical definition to state claims against.
-/

/-! ## A070522.P13858344771776435054

`A098987(A131144(3*n)^n)`
-/

namespace A070522.P13858344771776435054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098987 (A131144 (3 * n) ^ n).toNat

end

end A070522.P13858344771776435054

/-!
# A070524: Value of n-th cyclotomic polynomial at phi(n).

The programs for A070524, there is no canonical definition to state claims against.
-/

/-! ## A070524.P1303100885533403485

`∑{p}[A002729(a(n-1)+1)+1, #]` with `a(0)=1`
-/

namespace A070524.P1303100885533403485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A002729 (f1 (n - 1) + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A070524.P1303100885533403485

/-!
# A070525: Numbers n such that n-th cyclotomic polynomial evaluated at phi(n) is a prime number.

The programs for A070525, there is no canonical definition to state claims against.
-/

/-! ## A070525.P17822660225934804258

`A002271(round(sqrt(A301226(n))))`
-/

namespace A070525.P17822660225934804258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002271 (SequenceMachineLib.roundAway (Real.sqrt (A301226 n : ℝ))).toNat

end

end A070525.P17822660225934804258

/-! ## A070525.P18325424869809419923

`A002271(∑[A001817(n+1)])`
-/

namespace A070525.P18325424869809419923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002271 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070525.P18325424869809419923

/-! ## A070525.P3858979718086616095

`A291784(A291295(n+1))+A196390(n+1)`
-/

namespace A070525.P3858979718086616095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (A291295 (n + 1)).toNat + A196390 (n + 1)

end

end A070525.P3858979718086616095

/-! ## A070525.P4594822679250956387

`lt[A000041(A009947(n+4)), A180700(n+1)]`
-/

namespace A070525.P4594822679250956387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A009947 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070525.P4594822679250956387

/-!
# A070526: Value of n-th cyclotomic polynomial at 2^n.

The programs for A070526, there is no canonical definition to state claims against.
-/

/-! ## A070526.P9698346969838940262

`A019320((n+1)²)`
-/

namespace A070526.P9698346969838940262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 ((n + 1) ^ 2)

end

end A070526.P9698346969838940262

/-! ## A070526.P341590460842676841

`A105603(lcm(2, (n+1)²))`
-/

namespace A070526.P341590460842676841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105603 (Nat.lcm 2 ((n + 1) ^ 2))

end

end A070526.P341590460842676841

/-! ## A070526.P9838944096519436627

`A064078(comp[n-∏{digits}[n, #]]²)`
-/

namespace A070526.P9838944096519436627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A070526.P9838944096519436627

/-! ## A070526.P13697884451641832415

`A064078(A082743(n)²)`
-/

namespace A070526.P13697884451641832415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 (A082743 n ^ 2).toNat

end

end A070526.P13697884451641832415

/-! ## A070526.P4872579198967505788

`A064078(A199344(n)²)`
-/

namespace A070526.P4872579198967505788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 (A199344 n ^ 2).toNat

end

end A070526.P4872579198967505788

/-!
# A070527: Numbers k such that cyclotomic(k, 2^k) is a prime number.

The programs for A070527, there is no canonical definition to state claims against.
-/

/-! ## A070527.P10413476782572855025

`sqrt(∩[A072226(n+1), n²])`
-/

namespace A070527.P10413476782572855025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A070527.P10413476782572855025

/-! ## A070527.P4899750742653586305

`A016028(A050229(n+1))+1`
-/

namespace A070527.P4899750742653586305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (A050229 (n + 1)).toNat + 1

end

end A070527.P4899750742653586305

/-! ## A070527.P4993934230030147822

`A340670(n)+A308045(n+1)`
-/

namespace A070527.P4993934230030147822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340670 n + A308045 (n + 1)

end

end A070527.P4993934230030147822

/-!
# A070528: Number of divisors of 10^n-1 (999...999 with n digits).

The programs for A070528, there is no canonical definition to state claims against.
-/

/-! ## A070528.P4314982388337176747

`∑{d}[n+1, A059892(#)]`
-/

namespace A070528.P4314982388337176747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059892 d

end

end A070528.P4314982388337176747

/-! ## A070528.P1593821978686356902

`A070529(n+1)*(A007949(n+1)+3)/(A007949(n+1)+1)`
-/

namespace A070528.P1593821978686356902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070529 (n + 1) * (A007949 (n + 1) + 3) : ℚ) / (A007949 (n + 1) + 1 : ℚ)

end

end A070528.P1593821978686356902

/-!
# A070529: Number of divisors of repunit 111...111 (with n digits).

The programs for A070529, there is no canonical definition to state claims against.
-/

/-! ## A070529.P1296434450405532565

`A070528(n+1)*A051064(n+1)/(A051064(n+1)+2)`
-/

namespace A070529.P1296434450405532565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070528 (n + 1) * A051064 (n + 1) : ℚ) / (A051064 (n + 1) + 2 : ℚ)

end

end A070529.P1296434450405532565

/-! ## A070529.P2959529870558745289

`A071364(A063750(n+1))+A055641(A289768(n))`
-/

namespace A070529.P2959529870558745289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A063750 (n + 1)).toNat + A055641 (A289768 n).toNat

end

end A070529.P2959529870558745289

/-! ## A070529.P3168348573771734830

`A071364(A063750(n+1))%A000217(A005718(n))`
-/

namespace A070529.P3168348573771734830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071364 (A063750 (n + 1)).toNat) (A000217 (A005718 n).toNat)

end

end A070529.P3168348573771734830

/-! ## A070529.P6200151233797662025

`A028234(A001605(n+1))*A071364(A063750(n+1))`
-/

namespace A070529.P6200151233797662025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A001605 (n + 1)).toNat * A071364 (A063750 (n + 1)).toNat

end

end A070529.P6200151233797662025

/-! ## A070529.P2780967399943177383

`A278237(A063750(n+1))`
-/

namespace A070529.P2780967399943177383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278237 (A063750 (n + 1)).toNat

end

end A070529.P2780967399943177383

/-!
# A070532: a(n) = n^4 mod 14.

The programs for A070532, the canonical program `A070532.P9810051034817014135` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070532 has offset 0).

The definition of A070532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%14` (program `A070532.P9810051034817014135`, by `A070532.P9810051034817014135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070532.P9810051034817014135

`(n^4)%14`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070532

/-- `(n^4)%14` -/
def P9810051034817014135.Spec : Prop :=
  ∀ n, (P9810051034817014135.a n : ℤ) = A070532 n

theorem P9810051034817014135.correct : P9810051034817014135.Spec := by
  intro n
  simp only [A070532]

end A070532

/-!
# A070533: a(n) = n^4 mod 15.

The programs for A070533, the canonical program `A070533.P6715377568218510577` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070533 has offset 0).

The definition of A070533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%15` (program `A070533.P6715377568218510577`, by `A070533.P6715377568218510577.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070533.P6715377568218510577

`(n^4)%15`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070533

/-- `(n^4)%15` -/
def P6715377568218510577.Spec : Prop :=
  ∀ n, (P6715377568218510577.a n : ℤ) = A070533 n

theorem P6715377568218510577.correct : P6715377568218510577.Spec := by
  intro n
  simp only [A070533]

end A070533

/-!
# A070534: a(n) = n^4 mod 17.

The programs for A070534, the canonical program `A070534.P4082806252586310237` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070534 has offset 0).

The definition of A070534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%17` (program `A070534.P4082806252586310237`, by `A070534.P4082806252586310237.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070534.P4082806252586310237

`(n^4)%17`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070534

/-- `(n^4)%17` -/
def P4082806252586310237.Spec : Prop :=
  ∀ n, (P4082806252586310237.a n : ℤ) = A070534 n

theorem P4082806252586310237.correct : P4082806252586310237.Spec := by
  intro n
  simp only [A070534]

end A070534

/-!
# A070535: a(n) = n^4 mod 18.

The programs for A070535, the canonical program `A070535.P12642555784278441921` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070535 has offset 0).

The definition of A070535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%18` (program `A070535.P12642555784278441921`, by `A070535.P12642555784278441921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070535.P12642555784278441921

`(n^4)%18`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070535

/-- `(n^4)%18` -/
def P12642555784278441921.Spec : Prop :=
  ∀ n, (P12642555784278441921.a n : ℤ) = A070535 n

theorem P12642555784278441921.correct : P12642555784278441921.Spec := by
  intro n
  simp only [A070535]

end A070535

/-!
# A070536: Number of terms in n-th cyclotomic polynomial minus largest prime factor of n; a(1)=1 by convention.

The programs for A070536, there is no canonical definition to state claims against.
-/

/-! ## A070536.P13960267934538825532

`A051664(n+1)-A006530(n+1)`
-/

namespace A070536.P13960267934538825532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) - A006530 (n + 1)

end

end A070536.P13960267934538825532

/-! ## A070536.P17051034543495985177

`A039649(n+1)-A086798(n+1)-A253560(n+1)/(n+1)`
-/

namespace A070536.P17051034543495985177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - A086798 (n + 1) : ℚ) - (A253560 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A070536.P17051034543495985177

/-! ## A070536.P14922447844045691047

`A051664(n+1)-A085392(2*(n+1))`
-/

namespace A070536.P14922447844045691047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) - A085392 (2 * (n + 1))

end

end A070536.P14922447844045691047

/-! ## A070536.P1317439081205640180

`A051664(n+1)-A053585(∏{p}[n+1, #])`
-/

namespace A070536.P1317439081205640180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) - A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A070536.P1317439081205640180

/-! ## A070536.P11574098980733066649

`A051664(n+1)-(n+1)/A052126(n+1)`
-/

namespace A070536.P11574098980733066649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051664 (n + 1) : ℚ) - (n + 1 : ℚ) / (A052126 (n + 1) : ℚ)

end

end A070536.P11574098980733066649

/-! ## A070536.P10805907900562013499

`A051664(n+1)-A053585(A007947(n+1))`
-/

namespace A070536.P10805907900562013499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) - A053585 (A007947 (n + 1)).toNat

end

end A070536.P10805907900562013499

/-! ## A070536.P12647617094640130565

`A051664(n+1)-A014963(A053585(n+1))`
-/

namespace A070536.P12647617094640130565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) - A014963 (A053585 (n + 1)).toNat

end

end A070536.P12647617094640130565

/-! ## A070536.P4581705990999166217

`A051664(n+1)-A008578(A061395(n+1)+1)`
-/

namespace A070536.P4581705990999166217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) - A008578 (A061395 (n + 1) + 1).toNat

end

end A070536.P4581705990999166217

/-! ## A070536.P9883955055969013420

`A051664(n+1)-(A046665(n+1)+A020639(n+1))`
-/

namespace A070536.P9883955055969013420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) - (A046665 (n + 1) + A020639 (n + 1))

end

end A070536.P9883955055969013420

/-! ## A070536.P9103685428058619606

`A051664(n+1)+A318886(n+1)-A318884(n+1)`
-/

namespace A070536.P9103685428058619606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) + (A318886 (n + 1) - A318884 (n + 1))

end

end A070536.P9103685428058619606

/-! ## A070536.P1663092113375051274

`A051664(n+1)-A020639((n+1)/A051119(n+1))`
-/

namespace A070536.P1663092113375051274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) - A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (n + 1) : ℚ))).toNat

end

end A070536.P1663092113375051274

/-! ## A070536.P2950201064258922042

`A086765(n+1)+A086780(n+1)-A006530(n+1)`
-/

namespace A070536.P2950201064258922042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086765 (n + 1) + (A086780 (n + 1) - A006530 (n + 1))

end

end A070536.P2950201064258922042

/-! ## A070536.P8811654317859165452

`A122188(n+1)²*A318886(n+1)`
-/

namespace A070536.P8811654317859165452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122188 (n + 1) ^ 2 * A318886 (n + 1)

end

end A070536.P8811654317859165452

/-! ## A070536.P1556065658079605528

`A333784(A139502(n+1))+A318886(n+1)`
-/

namespace A070536.P1556065658079605528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333784 (A139502 (n + 1)).toNat + A318886 (n + 1)

end

end A070536.P1556065658079605528

/-! ## A070536.P2359932084352680634

`A000188(A140371(n+1))*A318886(n+1)`
-/

namespace A070536.P2359932084352680634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A140371 (n + 1)).toNat * A318886 (n + 1)

end

end A070536.P2359932084352680634

/-! ## A070536.P15137538067082140091

`A318886(A217434((n+1)²))`
-/

namespace A070536.P15137538067082140091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (A217434 ((n + 1) ^ 2)).toNat

end

end A070536.P15137538067082140091

/-!
# A070537: Numbers k such that the k-th cyclotomic polynomial has more terms than the largest prime factor of k.

The programs for A070537, the canonical program `A070537.P519828097946199931` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070537 has offset 1).

The definition of A070537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070537.P3762996651754490273

`lt[0, A070536(n+1)]+1`
-/

namespace A070537.P3762996651754490273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A070537.P3762996651754490273

namespace A070537

/-- `lt[0, A070536(n+1)]+1` -/
def P3762996651754490273.Spec : Prop :=
  ∀ n, (P3762996651754490273.a n : ℤ) = A070537 (n + 1)

end A070537

/-! ## A070537.P7093847399273998189

`lt[0, A318886(n+1)]+1`
-/

namespace A070537.P7093847399273998189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A070537.P7093847399273998189

namespace A070537

/-- `lt[0, A318886(n+1)]+1` -/
def P7093847399273998189.Spec : Prop :=
  ∀ n, (P7093847399273998189.a n : ℤ) = A070537 (n + 1)

end A070537

/-! ## A070537.P519828097946199931

`record[C(n+1, A340363(n+1)+n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070537

/-- `record[C(n+1, A340363(n+1)+n)]` -/
def P519828097946199931.Spec : Prop :=
  ∀ n, (P519828097946199931.a n : ℤ) = A070537 (n + 1)

theorem P519828097946199931.correct : P519828097946199931.Spec := by
  intro n
  simp only [A070537, Nat.add_sub_cancel]

end A070537

/-! ## A070537.P2993718517763513538

`∪[A000977(n+1), A185307(n+1)]`
-/

namespace A070537.P2993718517763513538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070537.P2993718517763513538

namespace A070537

/-- `∪[A000977(n+1), A185307(n+1)]` -/
def P2993718517763513538.Spec : Prop :=
  ∀ n, (P2993718517763513538.a n : ℤ) = A070537 (n + 1)

end A070537

/-! ## A070537.P8116011512492130420

`record[(n+1)/A131466(n*A340363(n+1))]`
-/

namespace A070537.P8116011512492130420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A131466 ((n : ℤ) * A340363 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070537.P8116011512492130420

namespace A070537

/-- `record[(n+1)/A131466(n*A340363(n+1))]` -/
def P8116011512492130420.Spec : Prop :=
  ∀ n, P8116011512492130420.a n = (A070537 (n + 1) : ℚ)

end A070537

/-! ## A070537.P15930353664626423567

`eq[A014963(n+1), A014963(A064989(n+1))]+1`
-/

namespace A070537.P15930353664626423567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A064989 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070537.P15930353664626423567

namespace A070537

/-- `eq[A014963(n+1), A014963(A064989(n+1))]+1` -/
def P15930353664626423567.Spec : Prop :=
  ∀ n, (P15930353664626423567.a n : ℤ) = A070537 (n + 1)

end A070537

/-! ## A070537.P5297555891865304504

`lt[A304233(A028310(n)), A207790(n+1)]`
-/

namespace A070537.P5297555891865304504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304233 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070537.P5297555891865304504

namespace A070537

/-- `lt[A304233(A028310(n)), A207790(n+1)]` -/
def P5297555891865304504.Spec : Prop :=
  ∀ n, (P5297555891865304504.a n : ℤ) = A070537 (n + 1)

end A070537

/-! ## A070537.P14445111915484473251

`lt[n, A062513(2*(n+1))]+1`
-/

namespace A070537.P14445111915484473251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A070537.P14445111915484473251

namespace A070537

/-- `lt[n, A062513(2*(n+1))]+1` -/
def P14445111915484473251.Spec : Prop :=
  ∀ n, (P14445111915484473251.a n : ℤ) = A070537 (n + 1)

end A070537

/-! ## A070537.P2853828083489498179

`lt[n, A066882(2*(n+1))]+1`
-/

namespace A070537.P2853828083489498179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A070537.P2853828083489498179

namespace A070537

/-- `lt[n, A066882(2*(n+1))]+1` -/
def P2853828083489498179.Spec : Prop :=
  ∀ n, (P2853828083489498179.a n : ℤ) = A070537 (n + 1)

end A070537

/-! ## A070537.P15444353420324378473

`record[gcd(A020888(n+1), A020888(n+3))]`
-/

namespace A070537.P15444353420324378473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020888 (n + 1)) (A020888 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070537.P15444353420324378473

namespace A070537

/-- `record[gcd(A020888(n+1), A020888(n+3))]` -/
def P15444353420324378473.Spec : Prop :=
  ∀ n, (P15444353420324378473.a n : ℤ) = A070537 (n + 1)

end A070537

/-!
# A070538: a(n) = n^4 mod 19.

The programs for A070538, the canonical program `A070538.P18421862084349490932` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070538 has offset 0).

The definition of A070538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%19` (program `A070538.P18421862084349490932`, by `A070538.P18421862084349490932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070538.P18421862084349490932

`(n^4)%19`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070538

/-- `(n^4)%19` -/
def P18421862084349490932.Spec : Prop :=
  ∀ n, (P18421862084349490932.a n : ℤ) = A070538 n

theorem P18421862084349490932.correct : P18421862084349490932.Spec := by
  intro n
  simp only [A070538]

end A070538

/-!
# A070539: a(n) = n^4 mod 20.

The programs for A070539, the canonical program `A070539.P6760145934644244628` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070539 has offset 0).

The definition of A070539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%20` (program `A070539.P6760145934644244628`, by `A070539.P6760145934644244628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070539.P6760145934644244628

`(n^4)%20`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070539

/-- `(n^4)%20` -/
def P6760145934644244628.Spec : Prop :=
  ∀ n, (P6760145934644244628.a n : ℤ) = A070539 n

theorem P6760145934644244628.correct : P6760145934644244628.Spec := by
  intro n
  simp only [A070539]

end A070539

/-!
# A070540: a(n) = n^4 mod 21.

The programs for A070540, the canonical program `A070540.P16047135118684893836` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070540 has offset 0).

The definition of A070540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%21` (program `A070540.P16047135118684893836`, by `A070540.P16047135118684893836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070540.P16047135118684893836

`(n^4)%21`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070540

/-- `(n^4)%21` -/
def P16047135118684893836.Spec : Prop :=
  ∀ n, (P16047135118684893836.a n : ℤ) = A070540 n

theorem P16047135118684893836.correct : P16047135118684893836.Spec := by
  intro n
  simp only [A070540]

end A070540

/-!
# A070541: a(n) = n^4 mod 22.

The programs for A070541, the canonical program `A070541.P14051961859066572473` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070541 has offset 0).

The definition of A070541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%22` (program `A070541.P14051961859066572473`, by `A070541.P14051961859066572473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070541.P14051961859066572473

`(n^4)%22`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070541

/-- `(n^4)%22` -/
def P14051961859066572473.Spec : Prop :=
  ∀ n, (P14051961859066572473.a n : ℤ) = A070541 n

theorem P14051961859066572473.correct : P14051961859066572473.Spec := by
  intro n
  simp only [A070541]

end A070541

/-!
# A070542: Numbers n such that binomial(2n,n) does not have two prime factors that add to 2n.

The programs for A070542, there is no canonical definition to state claims against.
-/

/-! ## A070542.P1127140297305099632

`eq[0, A127499(n+1)]+1`
-/

namespace A070542.P1127140297305099632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070542.P1127140297305099632

/-! ## A070542.P5438083341071056175

`record[A131923(∑[gcd(6, n%5)%5]-1)]`
-/

namespace A070542.P5438083341071056175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (n % 5) % 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131923 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070542.P5438083341071056175

/-! ## A070542.P17074809155045016075

`A056155(A374731(n+1))`
-/

namespace A070542.P17074809155045016075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056155 (A374731 (n + 1)).toNat

end

end A070542.P17074809155045016075

/-! ## A070542.P14437268938957958510

`xor(A005374(n), A370377(n))`
-/

namespace A070542.P14437268938957958510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005374 n) (A370377 n)

end

end A070542.P14437268938957958510

/-! ## A070542.P9323572572928713393

`xor(A050292(n), A370377(n))`
-/

namespace A070542.P9323572572928713393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A050292 n) (A370377 n)

end

end A070542.P9323572572928713393

/-!
# A070543: Triangular array read by rows: T(n,k) = number of k-dimensional isotropic subspaces of Spin(2n+1,C), n >= 1, 1 <= k <= n.

The programs for A070543, the canonical program `A070543.P659077438805351936` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070543 has offset 1).

The definition of A070543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070543.P659077438805351936

`(col(n)+1)*(col(n)+2)/2+2*(col(n)+1)*(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070543

/-- `(col(n)+1)*(col(n)+2)/2+2*(col(n)+1)*(row(n)-col(n))` -/
def P659077438805351936.Spec : Prop :=
  ∀ n, P659077438805351936.a n = (A070543 (n + 1) : ℚ)

end A070543

/-! ## A070543.P18104016126872881232

`T(n-1,k-1)+2*row(n)+1-col(n)` with `a(0)=1`
-/

namespace A070543.P18104016126872881232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (2 * SequenceMachineLib.triRow n : ℤ) + 1 - (SequenceMachineLib.triCol n : ℤ)

end

end A070543.P18104016126872881232

namespace A070543

/-- `T(n-1,k-1)+2*row(n)+1-col(n)` -/
def P18104016126872881232.Spec : Prop :=
  ∀ n, P18104016126872881232.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P17119252006373628096

`T(n,k-1)+1-(col(n)+2*(col(n)-row(n)))` with `a(0)=1`
-/

namespace A070543.P17119252006373628096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triLeft a n + 1 - ((SequenceMachineLib.triCol n : ℤ) + 2 * ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)))

end

end A070543.P17119252006373628096

namespace A070543

/-- `T(n,k-1)+1-(col(n)+2*(col(n)-row(n)))` -/
def P17119252006373628096.Spec : Prop :=
  ∀ n, P17119252006373628096.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P12588800725150326279

`A309559(n)+A059036(n)`
-/

namespace A070543.P12588800725150326279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n + A059036 n

end

end A070543.P12588800725150326279

namespace A070543

/-- `A309559(n)+A059036(n)` -/
def P12588800725150326279.Spec : Prop :=
  ∀ n, P12588800725150326279.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P2889834002126285774

`A105020(n)-A112367(n)`
-/

namespace A070543.P2889834002126285774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n - A112367 n

end

end A070543.P2889834002126285774

namespace A070543

/-- `A105020(n)-A112367(n)` -/
def P2889834002126285774.Spec : Prop :=
  ∀ n, P2889834002126285774.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P18286163614792834749

`A204250(n+1)+A087401(n)`
-/

namespace A070543.P18286163614792834749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) + A087401 n

end

end A070543.P18286163614792834749

namespace A070543

/-- `A204250(n+1)+A087401(n)` -/
def P18286163614792834749.Spec : Prop :=
  ∀ n, P18286163614792834749.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P9708418995090587792

`A141419(n+1)+∑[A114327(n)]`
-/

namespace A070543.P9708418995090587792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070543.P9708418995090587792

namespace A070543

/-- `A141419(n+1)+∑[A114327(n)]` -/
def P9708418995090587792.Spec : Prop :=
  ∀ n, P9708418995090587792.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P13078454209517889439

`A141418(n+1)+A003991(n+1)`
-/

namespace A070543.P13078454209517889439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (n + 1) + A003991 (n + 1)

end

end A070543.P13078454209517889439

namespace A070543

/-- `A141418(n+1)+A003991(n+1)` -/
def P13078454209517889439.Spec : Prop :=
  ∀ n, P13078454209517889439.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P10464774622056890286

`A141419(n+1)+A094053(n+1)`
-/

namespace A070543.P10464774622056890286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + A094053 (n + 1)

end

end A070543.P10464774622056890286

namespace A070543

/-- `A141419(n+1)+A094053(n+1)` -/
def P10464774622056890286.Spec : Prop :=
  ∀ n, P10464774622056890286.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P8299691734471752365

`A003991(n+1)+A309559(n)-1`
-/

namespace A070543.P8299691734471752365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A309559 n - 1)

end

end A070543.P8299691734471752365

namespace A070543

/-- `A003991(n+1)+A309559(n)-1` -/
def P8299691734471752365.Spec : Prop :=
  ∀ n, P8299691734471752365.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P17355668248994940813

`A365904(n+1)-A095831(n+1)`
-/

namespace A070543.P17355668248994940813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365904 (n + 1) - A095831 (n + 1)

end

end A070543.P17355668248994940813

namespace A070543

/-- `A365904(n+1)-A095831(n+1)` -/
def P17355668248994940813.Spec : Prop :=
  ∀ n, P17355668248994940813.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P3185515608099958393

`A141419(n+1)+∑[A061579(n)-n]`
-/

namespace A070543.P3185515608099958393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070543.P3185515608099958393

namespace A070543

/-- `A141419(n+1)+∑[A061579(n)-n]` -/
def P3185515608099958393.Spec : Prop :=
  ∀ n, P3185515608099958393.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P14886115369810661971

`A309559(n)+A023443(A003991(n+1))`
-/

namespace A070543.P14886115369810661971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n + A023443 (A003991 (n + 1)).toNat

end

end A070543.P14886115369810661971

namespace A070543

/-- `A309559(n)+A023443(A003991(n+1))` -/
def P14886115369810661971.Spec : Prop :=
  ∀ n, P14886115369810661971.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P12191129455467880180

`2*A141419(n+1)-A000217(A002260(n+1))`
-/

namespace A070543.P12191129455467880180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141419 (n + 1) - A000217 (A002260 (n + 1)).toNat

end

end A070543.P12191129455467880180

namespace A070543

/-- `2*A141419(n+1)-A000217(A002260(n+1))` -/
def P12191129455467880180.Spec : Prop :=
  ∀ n, P12191129455467880180.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P6279630423785528334

`A003991(n+1)+A141419(n+1)-A002260(n+1)`
-/

namespace A070543.P6279630423785528334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A141419 (n + 1) - A002260 (n + 1))

end

end A070543.P6279630423785528334

namespace A070543

/-- `A003991(n+1)+A141419(n+1)-A002260(n+1)` -/
def P6279630423785528334.Spec : Prop :=
  ∀ n, P6279630423785528334.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P1819249846542818368

`A002024(n+1)²+A141419(n+1)-A215630(n+1)`
-/

namespace A070543.P1819249846542818368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 + (A141419 (n + 1) - A215630 (n + 1))

end

end A070543.P1819249846542818368

namespace A070543

/-- `A002024(n+1)²+A141419(n+1)-A215630(n+1)` -/
def P1819249846542818368.Spec : Prop :=
  ∀ n, P1819249846542818368.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P4501354834973329830

`A141419(n+1)+(A002024(n+1)-A002260(n+1))*A002260(n+1)`
-/

namespace A070543.P4501354834973329830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + (A002024 (n + 1) - A002260 (n + 1)) * A002260 (n + 1)

end

end A070543.P4501354834973329830

namespace A070543

/-- `A141419(n+1)+(A002024(n+1)-A002260(n+1))*A002260(n+1)` -/
def P4501354834973329830.Spec : Prop :=
  ∀ n, P4501354834973329830.a n = A070543 (n + 1)

end A070543

/-! ## A070543.P5086605494224918607

`A399862(A341706(n+1))`
-/

namespace A070543.P5086605494224918607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399862 (A341706 (n + 1)).toNat

end

end A070543.P5086605494224918607

namespace A070543

/-- `A399862(A341706(n+1))` -/
def P5086605494224918607.Spec : Prop :=
  ∀ n, P5086605494224918607.a n = A070543 (n + 1)

end A070543

/-!
# A070544: Number of squarefree numbers s such that n < s < 2n.

The programs for A070544, the canonical program `A070544.P6805736207669432002` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070544 has offset 1).

The definition of A070544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070544.P6805736207669432002

`A013928(2*(n+1))-A013928(n+1)-A008966(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070544

/-- `A013928(2*(n+1))-A013928(n+1)-A008966(n+1)` -/
def P6805736207669432002.Spec : Prop :=
  ∀ n, P6805736207669432002.a n = A070544 (n + 1)

theorem P6805736207669432002.correct : P6805736207669432002.Spec := by
  intro n
  simp only [A070544, Nat.add_sub_cancel]

end A070544

/-! ## A070544.P12235740647124392997

`∑{#}[((n+1)²+n+1-2)/2-((n+1)²-(n+1)+2)/2, A008683(A128076(#+((n+1)²-(n+1)+2)/2))²]`
-/

namespace A070544.P12235740647124392997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 + (n + 1) : ℤ) - 2 : ℚ) / 2 - (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (SequenceMachineLib.roundAway (f1 n) + 1).toNat, A008683 (A128076 (SequenceMachineLib.roundAway ((k : ℚ) + (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 2 : ℚ) / 2)).toNat).toNat ^ 2

end

end A070544.P12235740647124392997

namespace A070544

/-- `∑{#}[((n+1)²+n+1-2)/2-((n+1)²-(n+1)+2)/2, A008683(A128076(#+((n+1)²-(n+1)+2)/2))²]` -/
def P12235740647124392997.Spec : Prop :=
  ∀ n, P12235740647124392997.a n = A070544 (n + 1)

end A070544

/-! ## A070544.P10659419530497502947

`A077641(n+1)-A008966(n+1)`
-/

namespace A070544.P10659419530497502947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077641 (n + 1) - A008966 (n + 1)

end

end A070544.P10659419530497502947

namespace A070544

/-- `A077641(n+1)-A008966(n+1)` -/
def P10659419530497502947.Spec : Prop :=
  ∀ n, P10659419530497502947.a n = A070544 (n + 1)

end A070544

/-! ## A070544.P16826668899818229991

`A013928(2*(n+1))-A013928(n+2)`
-/

namespace A070544.P16826668899818229991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (2 * (n + 1)) - A013928 (n + 2)

end

end A070544.P16826668899818229991

namespace A070544

/-- `A013928(2*(n+1))-A013928(n+2)` -/
def P16826668899818229991.Spec : Prop :=
  ∀ n, P16826668899818229991.a n = A070544 (n + 1)

end A070544

/-! ## A070544.P828629582499047806

`A107079(2*(n+1))-A107079(n+2)`
-/

namespace A070544.P828629582499047806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (2 * (n + 1)) - A107079 (n + 2)

end

end A070544.P828629582499047806

namespace A070544

/-- `A107079(2*(n+1))-A107079(n+2)` -/
def P828629582499047806.Spec : Prop :=
  ∀ n, P828629582499047806.a n = A070544 (n + 1)

end A070544

/-! ## A070544.P1639994179193925002

`n-A295284(2*(n+1))`
-/

namespace A070544.P1639994179193925002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A295284 (2 * (n + 1))

end

end A070544.P1639994179193925002

namespace A070544

/-- `n-A295284(2*(n+1))` -/
def P1639994179193925002.Spec : Prop :=
  ∀ n, P1639994179193925002.a n = A070544 (n + 1)

end A070544

/-! ## A070544.P16117139739336030010

`A262868(2*(n+1))-char[∏{p}[n, #]-1]`
-/

namespace A070544.P16117139739336030010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * (n + 1)) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A070544.P16117139739336030010

namespace A070544

/-- `A262868(2*(n+1))-char[∏{p}[n, #]-1]` -/
def P16117139739336030010.Spec : Prop :=
  ∀ n, P16117139739336030010.a n = A070544 (n + 1)

end A070544

/-! ## A070544.P2214455020234973635

`A262868(2*n+2)-floor(1/∏{e}[n+1, #])`
-/

namespace A070544.P2214455020234973635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * n + 2) - ⌊1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌋

end

end A070544.P2214455020234973635

namespace A070544

/-- `A262868(2*n+2)-floor(1/∏{e}[n+1, #])` -/
def P2214455020234973635.Spec : Prop :=
  ∀ n, P2214455020234973635.a n = A070544 (n + 1)

end A070544

/-! ## A070544.P5470281914591082856

`A262868(2*(n+1))-A008966(n+1)`
-/

namespace A070544.P5470281914591082856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * (n + 1)) - A008966 (n + 1)

end

end A070544.P5470281914591082856

namespace A070544

/-- `A262868(2*(n+1))-A008966(n+1)` -/
def P5470281914591082856.Spec : Prop :=
  ∀ n, P5470281914591082856.a n = A070544 (n + 1)

end A070544

/-! ## A070544.P5555533652111519593

`A072490(2*(n+1))-A072490(n+2)`
-/

namespace A070544.P5555533652111519593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072490 (2 * (n + 1)) - A072490 (n + 2)

end

end A070544.P5555533652111519593

namespace A070544

/-- `A072490(2*(n+1))-A072490(n+2)` -/
def P5555533652111519593.Spec : Prop :=
  ∀ n, P5555533652111519593.a n = A070544 (n + 1)

end A070544

/-! ## A070544.P3638325847335783355

`A262868(2*(n+1))-abs(A008683(n+1))`
-/

namespace A070544.P3638325847335783355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * (n + 1)) - |A008683 (n + 1)|

end

end A070544.P3638325847335783355

namespace A070544

/-- `A262868(2*(n+1))-abs(A008683(n+1))` -/
def P3638325847335783355.Spec : Prop :=
  ∀ n, P3638325847335783355.a n = A070544 (n + 1)

end A070544

/-! ## A070544.P9913030983140464262

`A057627(n+1)-A057627(2*n+1)+n`
-/

namespace A070544.P9913030983140464262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (n + 1) - A057627 (2 * n + 1) + (n : ℤ)

end

end A070544.P9913030983140464262

namespace A070544

/-- `A057627(n+1)-A057627(2*n+1)+n` -/
def P9913030983140464262.Spec : Prop :=
  ∀ n, P9913030983140464262.a n = A070544 (n + 1)

end A070544

/-! ## A070544.P12282140224601185011

`A262869(A005408(2*n+1))-A262869(2*(n+1))`
-/

namespace A070544.P12282140224601185011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A005408 (2 * n + 1)).toNat - A262869 (2 * (n + 1))

end

end A070544.P12282140224601185011

namespace A070544

/-- `A262869(A005408(2*n+1))-A262869(2*(n+1))` -/
def P12282140224601185011.Spec : Prop :=
  ∀ n, P12282140224601185011.a n = A070544 (n + 1)

end A070544

/-! ## A070544.P611059599434196486

`A294233(2*(n+1))+A098236(2*(n+1))`
-/

namespace A070544.P611059599434196486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294233 (2 * (n + 1)) + A098236 (2 * (n + 1))

end

end A070544.P611059599434196486

namespace A070544

/-- `A294233(2*(n+1))+A098236(2*(n+1))` -/
def P611059599434196486.Spec : Prop :=
  ∀ n, P611059599434196486.a n = A070544 (n + 1)

end A070544

/-!
# A070545: a(n) = Card( k, 0<k<=n such that k is relatively prime to sigma(k)).

The programs for A070545, the canonical program `A070545.P9962568616879436559` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070545 has offset 1).

The definition of A070545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070545.P9962568616879436559

`∑[A325964(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A070545

/-- `∑[A325964(n+1)]` -/
def P9962568616879436559.Spec : Prop :=
  ∀ n, P9962568616879436559.a n = A070545 (n + 1)

theorem P9962568616879436559.correct : P9962568616879436559.Spec := by
  intro n
  simp only [A070545, Nat.add_sub_cancel]

end A070545

/-! ## A070545.P15412764595348942615

`∑[floor(acot(A240923(n+1)))]`
-/

namespace A070545.P15412764595348942615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A240923 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P15412764595348942615

namespace A070545

/-- `∑[floor(acot(A240923(n+1)))]` -/
def P15412764595348942615.Spec : Prop :=
  ∀ n, P15412764595348942615.a n = A070545 (n + 1)

end A070545

/-! ## A070545.P2826393656690496466

`∑[floor(acot(A325817(n+1)))]`
-/

namespace A070545.P2826393656690496466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A325817 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P2826393656690496466

namespace A070545

/-- `∑[floor(acot(A325817(n+1)))]` -/
def P2826393656690496466.Spec : Prop :=
  ∀ n, P2826393656690496466.a n = A070545 (n + 1)

end A070545

/-! ## A070545.P5086599884411667686

`∑[floor(acot(A325967(n+1)))]`
-/

namespace A070545.P5086599884411667686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A325967 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P5086599884411667686

namespace A070545

/-- `∑[floor(acot(A325967(n+1)))]` -/
def P5086599884411667686.Spec : Prop :=
  ∀ n, P5086599884411667686.a n = A070545 (n + 1)

end A070545

/-! ## A070545.P8350688067313563498

`∑[round(acot(A009194(n+1)))]`
-/

namespace A070545.P8350688067313563498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A009194 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P8350688067313563498

namespace A070545

/-- `∑[round(acot(A009194(n+1)))]` -/
def P8350688067313563498.Spec : Prop :=
  ∀ n, P8350688067313563498.a n = A070545 (n + 1)

end A070545

/-! ## A070545.P15874448240556658201

`∑[char[lt[A073802(n+1), 2]]]`
-/

namespace A070545.P15874448240556658201
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073802 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P15874448240556658201

namespace A070545

/-- `∑[char[lt[A073802(n+1), 2]]]` -/
def P15874448240556658201.Spec : Prop :=
  ∀ n, (P15874448240556658201.a n : ℤ) = A070545 (n + 1)

end A070545

/-! ## A070545.P18341582096380450299

`∑[char[lt[n, A017666(n+1)]]]`
-/

namespace A070545.P18341582096380450299
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P18341582096380450299

namespace A070545

/-- `∑[char[lt[n, A017666(n+1)]]]` -/
def P18341582096380450299.Spec : Prop :=
  ∀ n, (P18341582096380450299.a n : ℤ) = A070545 (n + 1)

end A070545

/-! ## A070545.P16881890141727978222

`∑[round(acot(gcd(n+1, A000203(n+1))))]`
-/

namespace A070545.P16881890141727978222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Int.gcd (n + 1 : ℤ) (A000203 (n + 1)) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P16881890141727978222

namespace A070545

/-- `∑[round(acot(gcd(n+1, A000203(n+1))))]` -/
def P16881890141727978222.Spec : Prop :=
  ∀ n, P16881890141727978222.a n = A070545 (n + 1)

end A070545

/-! ## A070545.P3705683844383524760

`∑[C(A017666(n+1), A000027(n+1))]`
-/

namespace A070545.P3705683844383524760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A017666 (n + 1)).toNat (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P3705683844383524760

namespace A070545

/-- `∑[C(A017666(n+1), A000027(n+1))]` -/
def P3705683844383524760.Spec : Prop :=
  ∀ n, (P3705683844383524760.a n : ℤ) = A070545 (n + 1)

end A070545

/-! ## A070545.P11277268743326718104

`∑[C(A017665(n+1), A000203(n+1))]`
-/

namespace A070545.P11277268743326718104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A017665 (n + 1)).toNat (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P11277268743326718104

namespace A070545

/-- `∑[C(A017665(n+1), A000203(n+1))]` -/
def P11277268743326718104.Spec : Prop :=
  ∀ n, (P11277268743326718104.a n : ℤ) = A070545 (n + 1)

end A070545

/-! ## A070545.P340359485776734714

`∑[C(A325818(n+1), A000203(n+1))]`
-/

namespace A070545.P340359485776734714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325818 (n + 1)).toNat (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P340359485776734714

namespace A070545

/-- `∑[C(A325818(n+1), A000203(n+1))]` -/
def P340359485776734714.Spec : Prop :=
  ∀ n, (P340359485776734714.a n : ℤ) = A070545 (n + 1)

end A070545

/-! ## A070545.P17897594306757185700

`∑[C(A017665(n+1), A245092(2*n+1))]`
-/

namespace A070545.P17897594306757185700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A017665 (n + 1)).toNat (A245092 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P17897594306757185700

namespace A070545

/-- `∑[C(A017665(n+1), A245092(2*n+1))]` -/
def P17897594306757185700.Spec : Prop :=
  ∀ n, (P17897594306757185700.a n : ℤ) = A070545 (n + 1)

end A070545

/-! ## A070545.P8688309812071219132

`∑[C(A017665(n+1), A001065(n+1)+1+n)]`
-/

namespace A070545.P8688309812071219132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A017665 (n + 1)).toNat (A001065 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P8688309812071219132

namespace A070545

/-- `∑[C(A017665(n+1), A001065(n+1)+1+n)]` -/
def P8688309812071219132.Spec : Prop :=
  ∀ n, (P8688309812071219132.a n : ℤ) = A070545 (n + 1)

end A070545

/-! ## A070545.P15809739190597267513

`∑[C(A325818(n+1), A001065(n+1)+1+n)]`
-/

namespace A070545.P15809739190597267513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325818 (n + 1)).toNat (A001065 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P15809739190597267513

namespace A070545

/-- `∑[C(A325818(n+1), A001065(n+1)+1+n)]` -/
def P15809739190597267513.Spec : Prop :=
  ∀ n, (P15809739190597267513.a n : ℤ) = A070545 (n + 1)

end A070545

/-! ## A070545.P6907794997145271339

`∑[C(A017665(n+1), A155085(n+1)-(n+1))]`
-/

namespace A070545.P6907794997145271339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A017665 (n + 1)).toNat (A155085 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P6907794997145271339

namespace A070545

/-- `∑[C(A017665(n+1), A155085(n+1)-(n+1))]` -/
def P6907794997145271339.Spec : Prop :=
  ∀ n, (P6907794997145271339.a n : ℤ) = A070545 (n + 1)

end A070545

/-! ## A070545.P502782915763015712

`∑[C(A325818(n+1), A155085(n+1)-(n+1))]`
-/

namespace A070545.P502782915763015712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325818 (n + 1)).toNat (A155085 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P502782915763015712

namespace A070545

/-- `∑[C(A325818(n+1), A155085(n+1)-(n+1))]` -/
def P502782915763015712.Spec : Prop :=
  ∀ n, (P502782915763015712.a n : ℤ) = A070545 (n + 1)

end A070545

/-! ## A070545.P13395994761714003251

`∑[C(A017665(n+1), A064987(n+1)/(n+1))]`
-/

namespace A070545.P13395994761714003251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A017665 (n + 1)).toNat (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P13395994761714003251

namespace A070545

/-- `∑[C(A017665(n+1), A064987(n+1)/(n+1))]` -/
def P13395994761714003251.Spec : Prop :=
  ∀ n, (P13395994761714003251.a n : ℤ) = A070545 (n + 1)

end A070545

/-! ## A070545.P10575444696566326483

`∑[C(A325818(n+1), A064987(n+1)/(n+1))]`
-/

namespace A070545.P10575444696566326483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325818 (n + 1)).toNat (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P10575444696566326483

namespace A070545

/-- `∑[C(A325818(n+1), A064987(n+1)/(n+1))]` -/
def P10575444696566326483.Spec : Prop :=
  ∀ n, (P10575444696566326483.a n : ℤ) = A070545 (n + 1)

end A070545

/-! ## A070545.P13144026025299574900

`∑[C(A325818(n+1), 2*(n+1)-A033879(n+1))]`
-/

namespace A070545.P13144026025299574900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325818 (n + 1)).toNat ((2 * (n + 1) : ℤ) - A033879 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P13144026025299574900

namespace A070545

/-- `∑[C(A325818(n+1), 2*(n+1)-A033879(n+1))]` -/
def P13144026025299574900.Spec : Prop :=
  ∀ n, (P13144026025299574900.a n : ℤ) = A070545 (n + 1)

end A070545

/-! ## A070545.P17204861059510962783

`∑[C(lcm(n+1, A000203(2*n+1-n))/A000203(n+1), n+1)]`
-/

namespace A070545.P17204861059510962783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (A000203 (2 * n + 1 - n)) : ℚ) / (A000203 (n + 1) : ℚ))).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070545.P17204861059510962783

namespace A070545

/-- `∑[C(lcm(n+1, A000203(2*n+1-n))/A000203(n+1), n+1)]` -/
def P17204861059510962783.Spec : Prop :=
  ∀ n, (P17204861059510962783.a n : ℤ) = A070545 (n + 1)

end A070545

/-!
# A070546: a(n) = Card( k, 0<k<=n such that k is relatively prime to tau(k)=A000005(k)).

The programs for A070546, the canonical program `A070546.P6456143545485569330` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070546 has offset 1).

The definition of A070546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070546.P3076347526565667364

`∑[A322980(n+1)]`
-/

namespace A070546.P3076347526565667364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P3076347526565667364

namespace A070546

/-- `∑[A322980(n+1)]` -/
def P3076347526565667364.Spec : Prop :=
  ∀ n, P3076347526565667364.a n = A070546 (n + 1)

end A070546

/-! ## A070546.P14424422060960159033

`∑[round(acot(A009191(n+1)))]`
-/

namespace A070546.P14424422060960159033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A009191 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P14424422060960159033

namespace A070546

/-- `∑[round(acot(A009191(n+1)))]` -/
def P14424422060960159033.Spec : Prop :=
  ∀ n, P14424422060960159033.a n = A070546 (n + 1)

end A070546

/-! ## A070546.P12679230167002781946

`∑[round(acot(A138010(n+1)))]`
-/

namespace A070546.P12679230167002781946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A138010 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P12679230167002781946

namespace A070546

/-- `∑[round(acot(A138010(n+1)))]` -/
def P12679230167002781946.Spec : Prop :=
  ∀ n, P12679230167002781946.a n = A070546 (n + 1)

end A070546

/-! ## A070546.P8932198429446978186

`∑[round(acot(A306671(n+1)))]`
-/

namespace A070546.P8932198429446978186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A306671 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P8932198429446978186

namespace A070546

/-- `∑[round(acot(A306671(n+1)))]` -/
def P8932198429446978186.Spec : Prop :=
  ∀ n, P8932198429446978186.a n = A070546 (n + 1)

end A070546

/-! ## A070546.P14814874973683356966

`∑[char[A046642(n+1)-1]]`
-/

namespace A070546.P14814874973683356966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046642 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P14814874973683356966

namespace A070546

/-- `∑[char[A046642(n+1)-1]]` -/
def P14814874973683356966.Spec : Prop :=
  ∀ n, (P14814874973683356966.a n : ℤ) = A070546 (n + 1)

end A070546

/-! ## A070546.P14670136560480843373

`∑[C(A137926(n+1), n+1)]`
-/

namespace A070546.P14670136560480843373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A137926 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P14670136560480843373

namespace A070546

/-- `∑[C(A137926(n+1), n+1)]` -/
def P14670136560480843373.Spec : Prop :=
  ∀ n, (P14670136560480843373.a n : ℤ) = A070546 (n + 1)

end A070546

/-! ## A070546.P15686143863198186229

`∑[C(A090387(n+1), ∏{e}[n+1, #+1])]`
-/

namespace A070546.P15686143863198186229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090387 (n + 1)).toNat (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P15686143863198186229

namespace A070546

/-- `∑[C(A090387(n+1), ∏{e}[n+1, #+1])]` -/
def P15686143863198186229.Spec : Prop :=
  ∀ n, (P15686143863198186229.a n : ℤ) = A070546 (n + 1)

end A070546

/-! ## A070546.P6456143545485569330

`∑[A036987(A009191(n+1)²)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A070546

/-- `∑[A036987(A009191(n+1)²)]` -/
def P6456143545485569330.Spec : Prop :=
  ∀ n, P6456143545485569330.a n = A070546 (n + 1)

theorem P6456143545485569330.correct : P6456143545485569330.Spec := by
  intro n
  simp only [A070546, Nat.add_sub_cancel]

end A070546

/-! ## A070546.P12167649830706809083

`∑[A157657(A009191(n+1)²)]`
-/

namespace A070546.P12167649830706809083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (A009191 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P12167649830706809083

namespace A070546

/-- `∑[A157657(A009191(n+1)²)]` -/
def P12167649830706809083.Spec : Prop :=
  ∀ n, P12167649830706809083.a n = A070546 (n + 1)

end A070546

/-! ## A070546.P3913558886157656107

`∑[A008683(A306671(n+1)²)]`
-/

namespace A070546.P3913558886157656107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A306671 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P3913558886157656107

namespace A070546

/-- `∑[A008683(A306671(n+1)²)]` -/
def P3913558886157656107.Spec : Prop :=
  ∀ n, P3913558886157656107.a n = A070546 (n + 1)

end A070546

/-! ## A070546.P17830234957662433281

`∑[A302050(A306671(n+1)²)]`
-/

namespace A070546.P17830234957662433281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A306671 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P17830234957662433281

namespace A070546

/-- `∑[A302050(A306671(n+1)²)]` -/
def P17830234957662433281.Spec : Prop :=
  ∀ n, P17830234957662433281.a n = A070546 (n + 1)

end A070546

/-! ## A070546.P6715441621723150993

`∑[A063524(gcd(n+1, A000005(n+1)))]`
-/

namespace A070546.P6715441621723150993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (Int.gcd (n + 1 : ℤ) (A000005 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P6715441621723150993

namespace A070546

/-- `∑[A063524(gcd(n+1, A000005(n+1)))]` -/
def P6715441621723150993.Spec : Prop :=
  ∀ n, P6715441621723150993.a n = A070546 (n + 1)

end A070546

/-! ## A070546.P3260393634074985331

`∑[C(A137927(n+1), A000005(n+1))]`
-/

namespace A070546.P3260393634074985331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A137927 (n + 1)).toNat (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P3260393634074985331

namespace A070546

/-- `∑[C(A137927(n+1), A000005(n+1))]` -/
def P3260393634074985331.Spec : Prop :=
  ∀ n, (P3260393634074985331.a n : ℤ) = A070546 (n + 1)

end A070546

/-! ## A070546.P10215178186425392428

`∑[A008683(gcd((n+1)², A000005(n+1)²))]`
-/

namespace A070546.P10215178186425392428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.gcd ((n + 1) ^ 2 : ℤ) (A000005 (n + 1) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P10215178186425392428

namespace A070546

/-- `∑[A008683(gcd((n+1)², A000005(n+1)²))]` -/
def P10215178186425392428.Spec : Prop :=
  ∀ n, P10215178186425392428.a n = A070546 (n + 1)

end A070546

/-! ## A070546.P11817988766944460386

`∑[C(A137927(n+1), A038040(n+1)/(n+1))]`
-/

namespace A070546.P11817988766944460386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A137927 (n + 1)).toNat (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P11817988766944460386

namespace A070546

/-- `∑[C(A137927(n+1), A038040(n+1)/(n+1))]` -/
def P11817988766944460386.Spec : Prop :=
  ∀ n, (P11817988766944460386.a n : ℤ) = A070546 (n + 1)

end A070546

/-! ## A070546.P11326491454487333727

`∑[C(A291186(n+1), ∏{d}[n+1, #])]`
-/

namespace A070546.P11326491454487333727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A291186 (n + 1)).toNat (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P11326491454487333727

namespace A070546

/-- `∑[C(A291186(n+1), ∏{d}[n+1, #])]` -/
def P11326491454487333727.Spec : Prop :=
  ∀ n, (P11326491454487333727.a n : ℤ) = A070546 (n + 1)

end A070546

/-! ## A070546.P2523256797364124091

`∑[C(A291186(n+1), A007955(n+1))]`
-/

namespace A070546.P2523256797364124091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A291186 (n + 1)).toNat (A007955 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P2523256797364124091

namespace A070546

/-- `∑[C(A291186(n+1), A007955(n+1))]` -/
def P2523256797364124091.Spec : Prop :=
  ∀ n, (P2523256797364124091.a n : ℤ) = A070546 (n + 1)

end A070546

/-! ## A070546.P14233809623128857408

`∑[C(A291186(n+1), (n+1)^(A000005(2*n+1-n)/2))]`
-/

namespace A070546.P14233809623128857408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A291186 (n + 1)).toNat (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ ((A000005 (2 * n + 1 - n) : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P14233809623128857408

namespace A070546

/-- `∑[C(A291186(n+1), (n+1)^(A000005(2*n+1-n)/2))]` -/
def P14233809623128857408.Spec : Prop :=
  ∀ n, (P14233809623128857408.a n : ℤ) = A070546 (n + 1)

end A070546

/-!
# A070547: a(n) = Card(k, 0<k<n such that phi(k) divides phi(n-k)).

The programs for A070547, there is no canonical definition to state claims against.
-/

/-! ## A070547.P3445728502042183887

`A307319(A118599(n+1))+A002265(n)`
-/

namespace A070547.P3445728502042183887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307319 (A118599 (n + 1)).toNat + A002265 n

end

end A070547.P3445728502042183887

/-! ## A070547.P7061247994637592429

`A082288(n+1)-A107800(A018178(n))`
-/

namespace A070547.P7061247994637592429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082288 (n + 1) - A107800 (A018178 n).toNat

end

end A070547.P7061247994637592429

/-!
# A070548: a(n) = Cardinality{ k in range 1 <= k <= n such that Moebius(k) = 1 }.

The programs for A070548, the canonical program `A070548.P147621801857442245` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070548 has offset 1).

The definition of A070548 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070548.P12543119588646343567

`A070549(n+1)+A002321(n+1)`
-/

namespace A070548.P12543119588646343567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070549 (n + 1) + A002321 (n + 1)

end

end A070548.P12543119588646343567

namespace A070548

/-- `A070549(n+1)+A002321(n+1)` -/
def P12543119588646343567.Spec : Prop :=
  ∀ n, P12543119588646343567.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P13152276530910789357

`A013928(n+2)-A070549(n+1)`
-/

namespace A070548.P13152276530910789357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A070549 (n + 1)

end

end A070548.P13152276530910789357

namespace A070548

/-- `A013928(n+2)-A070549(n+1)` -/
def P13152276530910789357.Spec : Prop :=
  ∀ n, P13152276530910789357.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P147621801857442245

`1/2*(A013928(n+2)+A002321(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070548

/-- `1/2*(A013928(n+2)+A002321(n+1))` -/
def P147621801857442245.Spec : Prop :=
  ∀ n, P147621801857442245.a n = (A070548 (n + 1) : ℚ)

end A070548

/-! ## A070548.P17760858978177651014

`∑[A353629(n+1)]`
-/

namespace A070548.P17760858978177651014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P17760858978177651014

namespace A070548

/-- `∑[A353629(n+1)]` -/
def P17760858978177651014.Spec : Prop :=
  ∀ n, P17760858978177651014.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P15595882776629044413

`∑[4%A080847(n+1)]`
-/

namespace A070548.P15595882776629044413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A080847 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P15595882776629044413

namespace A070548

/-- `∑[4%A080847(n+1)]` -/
def P15595882776629044413.Spec : Prop :=
  ∀ n, P15595882776629044413.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P16108776374446069555

`∑[C(A007423(n+1), 2)]`
-/

namespace A070548.P16108776374446069555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007423 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P16108776374446069555

namespace A070548

/-- `∑[C(A007423(n+1), 2)]` -/
def P16108776374446069555.Spec : Prop :=
  ∀ n, (P16108776374446069555.a n : ℤ) = A070548 (n + 1)

end A070548

/-! ## A070548.P6354396516310173599

`∑[val(A231821(n+1), 4)]`
-/

namespace A070548.P6354396516310173599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A231821 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P6354396516310173599

namespace A070548

/-- `∑[val(A231821(n+1), 4)]` -/
def P6354396516310173599.Spec : Prop :=
  ∀ n, (P6354396516310173599.a n : ℤ) = A070548 (n + 1)

end A070548

/-! ## A070548.P15427362740485690990

`∑[ceil(sin(A008683(n+1)))]`
-/

namespace A070548.P15427362740485690990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A008683 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P15427362740485690990

namespace A070548

/-- `∑[ceil(sin(A008683(n+1)))]` -/
def P15427362740485690990.Spec : Prop :=
  ∀ n, P15427362740485690990.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P6836317086272714239

`∑[floor((A262804(n+1)/2)²)]`
-/

namespace A070548.P6836317086272714239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A262804 (n + 1) : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P6836317086272714239

namespace A070548

/-- `∑[floor((A262804(n+1)/2)²)]` -/
def P6836317086272714239.Spec : Prop :=
  ∀ n, P6836317086272714239.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P11069247643298115270

`∑[char[(n+1)*A008683(n+2)]]`
-/

namespace A070548.P11069247643298115270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P11069247643298115270

namespace A070548

/-- `∑[char[(n+1)*A008683(n+2)]]` -/
def P11069247643298115270.Spec : Prop :=
  ∀ n, (P11069247643298115270.a n : ℤ) = A070548 (n + 1)

end A070548

/-! ## A070548.P15926601457839218291

`∑[C(A008683(2*n+1-n)+1, 2)]`
-/

namespace A070548.P15926601457839218291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008683 (2 * n + 1 - n) + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P15926601457839218291

namespace A070548

/-- `∑[C(A008683(2*n+1-n)+1, 2)]` -/
def P15926601457839218291.Spec : Prop :=
  ∀ n, (P15926601457839218291.a n : ℤ) = A070548 (n + 1)

end A070548

/-! ## A070548.P2566947464813734709

`∑[floor(A007494(n)^(A008683(n+1)-1))²]`
-/

namespace A070548.P2566947464813734709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007494 n : ℚ) ^ (A008683 (n + 1) - 1 : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P2566947464813734709

namespace A070548

/-- `∑[floor(A007494(n)^(A008683(n+1)-1))²]` -/
def P2566947464813734709.Spec : Prop :=
  ∀ n, P2566947464813734709.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P5160114885657546896

`∑[floor(A035337(n)^(A008683(n+1)-1))²]`
-/

namespace A070548.P5160114885657546896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035337 n : ℚ) ^ (A008683 (n + 1) - 1 : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P5160114885657546896

namespace A070548

/-- `∑[floor(A035337(n)^(A008683(n+1)-1))²]` -/
def P5160114885657546896.Spec : Prop :=
  ∀ n, P5160114885657546896.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P13615965252044039371

`∑[A008683((n+1)*(2-A008683(n+1))²)]`
-/

namespace A070548.P13615965252044039371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1 : ℤ) * (2 - A008683 (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P13615965252044039371

namespace A070548

/-- `∑[A008683((n+1)*(2-A008683(n+1))²)]` -/
def P13615965252044039371.Spec : Prop :=
  ∀ n, P13615965252044039371.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P12492380190667134483

`∑[floor((A032766(n)+2+n)^(A008683(n+1)-1))²]`
-/

namespace A070548.P12492380190667134483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032766 n + 2 + (n : ℤ) : ℚ) ^ (A008683 (n + 1) - 1 : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P12492380190667134483

namespace A070548

/-- `∑[floor((A032766(n)+2+n)^(A008683(n+1)-1))²]` -/
def P12492380190667134483.Spec : Prop :=
  ∀ n, P12492380190667134483.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P16294051595684578953

`∑[A008966(A007426(A007425(n+1)))]`
-/

namespace A070548.P16294051595684578953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A007426 (A007425 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P16294051595684578953

namespace A070548

/-- `∑[A008966(A007426(A007425(n+1)))]` -/
def P16294051595684578953.Spec : Prop :=
  ∀ n, P16294051595684578953.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P8257639120480858545

`A004526(∑[A008683(n+1)+A008683(n+1)²])`
-/

namespace A070548.P8257639120480858545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070548.P8257639120480858545

namespace A070548

/-- `A004526(∑[A008683(n+1)+A008683(n+1)²])` -/
def P8257639120480858545.Spec : Prop :=
  ∀ n, P8257639120480858545.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P18137156753915269542

`A029578(∑[A008683(n+1)+A008683(n+1)²])`
-/

namespace A070548.P18137156753915269542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070548.P18137156753915269542

namespace A070548

/-- `A029578(∑[A008683(n+1)+A008683(n+1)²])` -/
def P18137156753915269542.Spec : Prop :=
  ∀ n, P18137156753915269542.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P828314787526448079

`∑[floor(A100587(n+2)^(A008683(n+1)-1))²]`
-/

namespace A070548.P828314787526448079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100587 (n + 2) : ℚ) ^ (A008683 (n + 1) - 1 : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P828314787526448079

namespace A070548

/-- `∑[floor(A100587(n+2)^(A008683(n+1)-1))²]` -/
def P828314787526448079.Spec : Prop :=
  ∀ n, P828314787526448079.a n = A070548 (n + 1)

end A070548

/-! ## A070548.P10030785395323084974

`∑[char[∏{p}[n+1, -#]-1]]`
-/

namespace A070548.P10030785395323084974
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ)) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070548.P10030785395323084974

namespace A070548

/-- `∑[char[∏{p}[n+1, -#]-1]]` -/
def P10030785395323084974.Spec : Prop :=
  ∀ n, (P10030785395323084974.a n : ℤ) = A070548 (n + 1)

end A070548

/-!
# A070549: a(n) = Cardinality{ k in range 1 <= k <= n such that Moebius(k) = -1 }.

The programs for A070549, the canonical program `A070549.P7239971299778395815` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070549 has offset 1).

The definition of A070549 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, A070548, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070549.P7239971299778395815

`A070548(n+1)-A002321(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A070549

/-- `A070548(n+1)-A002321(n+1)` -/
def P7239971299778395815.Spec : Prop :=
  ∀ n, P7239971299778395815.a n = A070549 (n + 1)

theorem P7239971299778395815.correct : P7239971299778395815.Spec := by
  intro n
  simp only [A070549, Nat.add_sub_cancel]

end A070549

/-! ## A070549.P8225450948325407006

`A013928(n+2)-A070548(n+1)`
-/

namespace A070549.P8225450948325407006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A070548 (n + 1)

end

end A070549.P8225450948325407006

namespace A070549

/-- `A013928(n+2)-A070548(n+1)` -/
def P8225450948325407006.Spec : Prop :=
  ∀ n, P8225450948325407006.a n = A070549 (n + 1)

end A070549

/-! ## A070549.P17938376147037187247

`(A013928(n+2)-A002321(n+1))/2`
-/

namespace A070549.P17938376147037187247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013928 (n + 2) - A002321 (n + 1) : ℚ) / 2

end

end A070549.P17938376147037187247

namespace A070549

/-- `(A013928(n+2)-A002321(n+1))/2` -/
def P17938376147037187247.Spec : Prop :=
  ∀ n, P17938376147037187247.a n = (A070549 (n + 1) : ℚ)

end A070549

/-! ## A070549.P4640226361868041991

`∑[A252233(n+1)]`
-/

namespace A070549.P4640226361868041991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P4640226361868041991

namespace A070549

/-- `∑[A252233(n+1)]` -/
def P4640226361868041991.Spec : Prop :=
  ∀ n, P4640226361868041991.a n = A070549 (n + 1)

end A070549

/-! ## A070549.P1384397363232401083

`∑[4%A133695(n+1)]`
-/

namespace A070549.P1384397363232401083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A133695 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P1384397363232401083

namespace A070549

/-- `∑[4%A133695(n+1)]` -/
def P1384397363232401083.Spec : Prop :=
  ∀ n, P1384397363232401083.a n = A070549 (n + 1)

end A070549

/-! ## A070549.P3963400756476861848

`∑[C(2, A231821(n+1))]`
-/

namespace A070549.P3963400756476861848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A231821 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P3963400756476861848

namespace A070549

/-- `∑[C(2, A231821(n+1))]` -/
def P3963400756476861848.Spec : Prop :=
  ∀ n, (P3963400756476861848.a n : ℤ) = A070549 (n + 1)

end A070549

/-! ## A070549.P6776580345895136310

`∑[and(1, A262804(n+1))]`
-/

namespace A070549.P6776580345895136310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A262804 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P6776580345895136310

namespace A070549

/-- `∑[and(1, A262804(n+1))]` -/
def P6776580345895136310.Spec : Prop :=
  ∀ n, P6776580345895136310.a n = A070549 (n + 1)

end A070549

/-! ## A070549.P10362430086750598558

`∑[C(n, A076369(n+1))]`
-/

namespace A070549.P10362430086750598558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A076369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P10362430086750598558

namespace A070549

/-- `∑[C(n, A076369(n+1))]` -/
def P10362430086750598558.Spec : Prop :=
  ∀ n, (P10362430086750598558.a n : ℤ) = A070549 (n + 1)

end A070549

/-! ## A070549.P4949665519951633668

`∑[C(n, A323399(n+1))]`
-/

namespace A070549.P4949665519951633668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A323399 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P4949665519951633668

namespace A070549

/-- `∑[C(n, A323399(n+1))]` -/
def P4949665519951633668.Spec : Prop :=
  ∀ n, (P4949665519951633668.a n : ℤ) = A070549 (n + 1)

end A070549

/-! ## A070549.P11601262692969064441

`∑[C(n, A347091(n+1))]`
-/

namespace A070549.P11601262692969064441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A347091 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P11601262692969064441

namespace A070549

/-- `∑[C(n, A347091(n+1))]` -/
def P11601262692969064441.Spec : Prop :=
  ∀ n, (P11601262692969064441.a n : ℤ) = A070549 (n + 1)

end A070549

/-! ## A070549.P13473555228732210082

`∑[C(n, A347093(n+1))]`
-/

namespace A070549.P13473555228732210082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A347093 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P13473555228732210082

namespace A070549

/-- `∑[C(n, A347093(n+1))]` -/
def P13473555228732210082.Spec : Prop :=
  ∀ n, (P13473555228732210082.a n : ℤ) = A070549 (n + 1)

end A070549

/-! ## A070549.P5345119219832054170

`∑[C(n, A347094(n+1))]`
-/

namespace A070549.P5345119219832054170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A347094 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P5345119219832054170

namespace A070549

/-- `∑[C(n, A347094(n+1))]` -/
def P5345119219832054170.Spec : Prop :=
  ∀ n, (P5345119219832054170.a n : ℤ) = A070549 (n + 1)

end A070549

/-! ## A070549.P17928705922651765187

`∑[C(n, A347095(n+1))]`
-/

namespace A070549.P17928705922651765187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A347095 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P17928705922651765187

namespace A070549

/-- `∑[C(n, A347095(n+1))]` -/
def P17928705922651765187.Spec : Prop :=
  ∀ n, (P17928705922651765187.a n : ℤ) = A070549 (n + 1)

end A070549

/-! ## A070549.P6225794865865894030

`∑[floor(1/A080847(n+1))]`
-/

namespace A070549.P6225794865865894030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A080847 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P6225794865865894030

namespace A070549

/-- `∑[floor(1/A080847(n+1))]` -/
def P6225794865865894030.Spec : Prop :=
  ∀ n, P6225794865865894030.a n = A070549 (n + 1)

end A070549

/-! ## A070549.P1090842758018820587

`∑[char[A030059(n+1)-1]]`
-/

namespace A070549.P1090842758018820587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P1090842758018820587

namespace A070549

/-- `∑[char[A030059(n+1)-1]]` -/
def P1090842758018820587.Spec : Prop :=
  ∀ n, (P1090842758018820587.a n : ℤ) = A070549 (n + 1)

end A070549

/-! ## A070549.P7058591370517732755

`∑[dr(and(10, A008683(n+1)))]`
-/

namespace A070549.P7058591370517732755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 10 (A008683 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P7058591370517732755

namespace A070549

/-- `∑[dr(and(10, A008683(n+1)))]` -/
def P7058591370517732755.Spec : Prop :=
  ∀ n, (P7058591370517732755.a n : ℤ) = A070549 (n + 1)

end A070549

/-! ## A070549.P12550322446876259722

`∑[C(2, A007423(n+1)+2)]`
-/

namespace A070549.P12550322446876259722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A007423 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P12550322446876259722

namespace A070549

/-- `∑[C(2, A007423(n+1)+2)]` -/
def P12550322446876259722.Spec : Prop :=
  ∀ n, (P12550322446876259722.a n : ℤ) = A070549 (n + 1)

end A070549

/-! ## A070549.P9550230376887173586

`∑[C(1-A008683(2*n+1-n), 2)]`
-/

namespace A070549.P9550230376887173586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - A008683 (2 * n + 1 - n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P9550230376887173586

namespace A070549

/-- `∑[C(1-A008683(2*n+1-n), 2)]` -/
def P9550230376887173586.Spec : Prop :=
  ∀ n, (P9550230376887173586.a n : ℤ) = A070549 (n + 1)

end A070549

/-! ## A070549.P17332128707441825725

`∑[and(2, A008683(2*n-(n-1)))/2]`
-/

namespace A070549.P17332128707441825725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A008683 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P17332128707441825725

namespace A070549

/-- `∑[and(2, A008683(2*n-(n-1)))/2]` -/
def P17332128707441825725.Spec : Prop :=
  ∀ n, P17332128707441825725.a n = (A070549 (n + 1) : ℚ)

end A070549

/-! ## A070549.P7271927973098751401

`∑[floor(A008683(n+1)/A035337(n))²]`
-/

namespace A070549.P7271927973098751401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008683 (n + 1) : ℚ) / (A035337 n : ℚ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070549.P7271927973098751401

namespace A070549

/-- `∑[floor(A008683(n+1)/A035337(n))²]` -/
def P7271927973098751401.Spec : Prop :=
  ∀ n, P7271927973098751401.a n = A070549 (n + 1)

end A070549

/-!
# A070550: a(n) = a(n-1) + a(n-3) + a(n-4), starting with a(0..3) = 1, 2, 2, 3.

The programs for A070550, the canonical program `A070550.P2965766991754456893` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070550 has offset 0).

The definition of A070550 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A070550.P2965766991754456893`, by `A070550.P2965766991754456893.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070550.P13075023353451162732

`ogf((1+x)/(1-x-x^3-x^4))`
-/

namespace A070550.P13075023353451162732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, 0, -1, -1] n

end

end A070550.P13075023353451162732

namespace A070550

/-- `ogf((1+x)/(1-x-x^3-x^4))` -/
def P13075023353451162732.Spec : Prop :=
  ∀ n, P13075023353451162732.a n = A070550 n

end A070550

/-! ## A070550.P2965766991754456893

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070550

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P2965766991754456893.Spec : Prop :=
  ∀ n, (P2965766991754456893.a n : ℤ) = A070550 n

theorem P2965766991754456893.correct : P2965766991754456893.Spec := by
  intro n
  simp only [A070550]

end A070550

/-! ## A070550.P17240611161228676463

`A000045(floor(n/2)+1)*A000045(ceil(n/2)+2)`
-/

namespace A070550.P17240611161228676463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊(n : ℚ) / 2⌋ + 1).toNat * A000045 (⌈(n : ℚ) / 2⌉ + 2).toNat

end

end A070550.P17240611161228676463

namespace A070550

/-- `A000045(floor(n/2)+1)*A000045(ceil(n/2)+2)` -/
def P17240611161228676463.Spec : Prop :=
  ∀ n, P17240611161228676463.a n = A070550 n

end A070550

/-! ## A070550.P2574354534672670103

`A126116(n+4)-A000045(n+3)`
-/

namespace A070550.P2574354534672670103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (n + 4) - A000045 (n + 3)

end

end A070550.P2574354534672670103

namespace A070550

/-- `A126116(n+4)-A000045(n+3)` -/
def P2574354534672670103.Spec : Prop :=
  ∀ n, P2574354534672670103.a n = A070550 n

end A070550

/-! ## A070550.P4925096187257861192

`∑[A000045(n)-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A070550.P4925096187257861192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000045 n - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070550.P4925096187257861192

namespace A070550

/-- `∑[A000045(n)-a(n-2)]` -/
def P4925096187257861192.Spec : Prop :=
  ∀ n, P4925096187257861192.a n = A070550 n

end A070550

/-! ## A070550.P4515755399670450706

`A000045(n+2)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A070550.P4515755399670450706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000045 (n + 2) - a (n - 2)

end

end A070550.P4515755399670450706

namespace A070550

/-- `A000045(n+2)-a(n-2)` -/
def P4515755399670450706.Spec : Prop :=
  ∀ n, P4515755399670450706.a n = A070550 n

end A070550

/-! ## A070550.P17479137159971043638

`A074677(n)+A006498(n)`
-/

namespace A070550.P17479137159971043638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 n + A006498 n

end

end A070550.P17479137159971043638

namespace A070550

/-- `A074677(n)+A006498(n)` -/
def P17479137159971043638.Spec : Prop :=
  ∀ n, P17479137159971043638.a n = A070550 n

end A070550

/-! ## A070550.P2851838591961388279

`A195971(n)+A057077(n)`
-/

namespace A070550.P2851838591961388279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 n + A057077 n

end

end A070550.P2851838591961388279

namespace A070550

/-- `A195971(n)+A057077(n)` -/
def P2851838591961388279.Spec : Prop :=
  ∀ n, P2851838591961388279.a n = A070550 n

end A070550

/-! ## A070550.P13876069315265496597

`A295688(n)+A111569(n)`
-/

namespace A070550.P13876069315265496597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295688 n + A111569 n

end

end A070550.P13876069315265496597

namespace A070550

/-- `A295688(n)+A111569(n)` -/
def P13876069315265496597.Spec : Prop :=
  ∀ n, P13876069315265496597.a n = A070550 n

end A070550

/-! ## A070550.P1269044571771392217

`A295687(n)+A295680(n)`
-/

namespace A070550.P1269044571771392217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295687 n + A295680 n

end

end A070550.P1269044571771392217

namespace A070550

/-- `A295687(n)+A295680(n)` -/
def P1269044571771392217.Spec : Prop :=
  ∀ n, P1269044571771392217.a n = A070550 n

end A070550

/-! ## A070550.P9292734155068318922

`A074677(n+1)+A074677(n)`
-/

namespace A070550.P9292734155068318922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 1) + A074677 n

end

end A070550.P9292734155068318922

namespace A070550

/-- `A074677(n+1)+A074677(n)` -/
def P9292734155068318922.Spec : Prop :=
  ∀ n, P9292734155068318922.a n = A070550 n

end A070550

/-! ## A070550.P9361672930961688665

`A126116(n)+A103609(2*n)`
-/

namespace A070550.P9361672930961688665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n + A103609 (2 * n)

end

end A070550.P9361672930961688665

namespace A070550

/-- `A126116(n)+A103609(2*n)` -/
def P9361672930961688665.Spec : Prop :=
  ∀ n, P9361672930961688665.a n = A070550 n

end A070550

/-! ## A070550.P15487494608522965729

`A126116(n)+Δ[A000071(n+1)]`
-/

namespace A070550.P15487494608522965729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n + (f1 (n + 1) - f1 n)

end

end A070550.P15487494608522965729

namespace A070550

/-- `A126116(n)+Δ[A000071(n+1)]` -/
def P15487494608522965729.Spec : Prop :=
  ∀ n, P15487494608522965729.a n = A070550 n

end A070550

/-! ## A070550.P10284055511708384071

`A006498(n+1)-A056594(n+1)`
-/

namespace A070550.P10284055511708384071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (n + 1) - A056594 (n + 1)

end

end A070550.P10284055511708384071

namespace A070550

/-- `A006498(n+1)-A056594(n+1)` -/
def P10284055511708384071.Spec : Prop :=
  ∀ n, P10284055511708384071.a n = A070550 n

end A070550

/-! ## A070550.P10187338788746800616

`A056594(n+3)+A006498(n+1)`
-/

namespace A070550.P10187338788746800616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 3) + A006498 (n + 1)

end

end A070550.P10187338788746800616

namespace A070550

/-- `A056594(n+3)+A006498(n+1)` -/
def P10187338788746800616.Spec : Prop :=
  ∀ n, P10187338788746800616.a n = A070550 n

end A070550

/-! ## A070550.P12338357621721044250

`A080239(n+1)+A011765(n+3)`
-/

namespace A070550.P12338357621721044250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080239 (n + 1) + A011765 (n + 3)

end

end A070550.P12338357621721044250

namespace A070550

/-- `A080239(n+1)+A011765(n+3)` -/
def P12338357621721044250.Spec : Prop :=
  ∀ n, P12338357621721044250.a n = A070550 n

end A070550

/-! ## A070550.P12662489824726027117

`A111569(n+2)-A057077(n+1)`
-/

namespace A070550.P12662489824726027117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (n + 2) - A057077 (n + 1)

end

end A070550.P12662489824726027117

namespace A070550

/-- `A111569(n+2)-A057077(n+1)` -/
def P12662489824726027117.Spec : Prop :=
  ∀ n, P12662489824726027117.a n = A070550 n

end A070550

/-! ## A070550.P10283810346350474865

`A053602(n+1)*A123231(n+1)`
-/

namespace A070550.P10283810346350474865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (n + 1) * A123231 (n + 1)

end

end A070550.P10283810346350474865

namespace A070550

/-- `A053602(n+1)*A123231(n+1)` -/
def P10283810346350474865.Spec : Prop :=
  ∀ n, P10283810346350474865.a n = A070550 n

end A070550

/-! ## A070550.P17469733091266075733

`A053602(n+1)*A053602(n+2)`
-/

namespace A070550.P17469733091266075733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (n + 1) * A053602 (n + 2)

end

end A070550.P17469733091266075733

namespace A070550

/-- `A053602(n+1)*A053602(n+2)` -/
def P17469733091266075733.Spec : Prop :=
  ∀ n, P17469733091266075733.a n = A070550 n

end A070550

/-! ## A070550.P12638491501839457602

`A123231(n+1)*A272912(n+3)`
-/

namespace A070550.P12638491501839457602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (n + 1) * A272912 (n + 3)

end

end A070550.P12638491501839457602

namespace A070550

/-- `A123231(n+1)*A272912(n+3)` -/
def P12638491501839457602.Spec : Prop :=
  ∀ n, P12638491501839457602.a n = A070550 n

end A070550

/-!
# A070551: a(n) = n^4 mod 23.

The programs for A070551, the canonical program `A070551.P4488527819851764077` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070551 has offset 0).

The definition of A070551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%23` (program `A070551.P4488527819851764077`, by `A070551.P4488527819851764077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070551.P4488527819851764077

`(n^4)%23`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070551

/-- `(n^4)%23` -/
def P4488527819851764077.Spec : Prop :=
  ∀ n, (P4488527819851764077.a n : ℤ) = A070551 n

theorem P4488527819851764077.correct : P4488527819851764077.Spec := by
  intro n
  simp only [A070551]

end A070551

/-!
# A070552: Semiprimes k such that k+1 is also a semiprime.

The programs for A070552, there is no canonical definition to state claims against.
-/

/-! ## A070552.P14935563803767892828

`A109373(n+1)-1`
-/

namespace A070552.P14935563803767892828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1) - 1

end

end A070552.P14935563803767892828

/-! ## A070552.P10940422946583973213

`∪[A263951(n+1), A263990(n+1)]`
-/

namespace A070552.P10940422946583973213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070552.P10940422946583973213

/-! ## A070552.P16108783087369315334

`∩[A108815(n+1), A242466(n+1)]`
-/

namespace A070552.P16108783087369315334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070552.P16108783087369315334

/-! ## A070552.P4985350133218431445

`A117209(A053670(3*n+1))+A109373(n+1)`
-/

namespace A070552.P4985350133218431445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117209 (A053670 (3 * n + 1)).toNat + A109373 (n + 1)

end

end A070552.P4985350133218431445

/-! ## A070552.P8126232428163883653

`filter[A108815(n+1), A359370(#)]`
-/

namespace A070552.P8126232428163883653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A070552.P8126232428163883653

/-! ## A070552.P16339820472711089872

`filter[A108815(n+1), A359764(#)]`
-/

namespace A070552.P16339820472711089872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A070552.P16339820472711089872

/-! ## A070552.P6842932318606453055

`filter[A108815(n+1), A373481(#)]`
-/

namespace A070552.P6842932318606453055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A070552.P6842932318606453055

/-! ## A070552.P11513996613329477360

`∩[A001358(n+1), A108815(n+1)]`
-/

namespace A070552.P11513996613329477360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070552.P11513996613329477360

/-! ## A070552.P9842541784229807940

`∩[A001358(n+1), A242466(n+1)]`
-/

namespace A070552.P9842541784229807940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070552.P9842541784229807940

/-! ## A070552.P4282465239659227378

`A001358(eq[1, A001358(n+2)-A001358(n+1)]+1)`
-/

namespace A070552.P4282465239659227378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 2) - A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A070552.P4282465239659227378

/-! ## A070552.P5221436082267040560

`∩[A001358(n+1), A045920(n+1)]`
-/

namespace A070552.P5221436082267040560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070552.P5221436082267040560

/-! ## A070552.P290241796668804256

`∩[A045920(n+1), A108815(n+1)]`
-/

namespace A070552.P290241796668804256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070552.P290241796668804256

/-! ## A070552.P11192708053384967757

`filter[A045920(n+1), A064911(#)]`
-/

namespace A070552.P11192708053384967757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A070552.P11192708053384967757

/-! ## A070552.P16823335321307671379

`filter[A108815(n+1), A064911(#)]`
-/

namespace A070552.P16823335321307671379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A070552.P16823335321307671379

/-! ## A070552.P17066043044453458877

`filter[A108815(n+1), A065043(#)]`
-/

namespace A070552.P17066043044453458877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A070552.P17066043044453458877

/-! ## A070552.P4683562703729722241

`filter[A242466(n+1), A064911(#)]`
-/

namespace A070552.P4683562703729722241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A070552.P4683562703729722241

/-! ## A070552.P13715473245985249304

`filter[A045920(n+2), A101040(#)]`
-/

namespace A070552.P13715473245985249304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A070552.P13715473245985249304

/-! ## A070552.P3144484745847745718

`filter[A242466(n+2), A101040(#)]`
-/

namespace A070552.P3144484745847745718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A070552.P3144484745847745718

/-! ## A070552.P9165985354043979166

`filter[A242466(n+2), A353799(#)]`
-/

namespace A070552.P9165985354043979166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A070552.P9165985354043979166

/-! ## A070552.P7950545533091460850

`∩[A006881(n+1)-1, A045920(n+1)]`
-/

namespace A070552.P7950545533091460850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070552.P7950545533091460850

/-!
# A070553: Rectangular array read by rows: n-th row gives the 7 numbers k*10^n mod 7 for 0 <= k < 7.

The programs for A070553, there is no canonical definition to state claims against.
-/

/-! ## A070553.P10066477791632466588

`A007094(A165804(n+1))%7`
-/

namespace A070553.P10066477791632466588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007094 (A165804 (n + 1)).toNat) 7

end

end A070553.P10066477791632466588

/-!
# A070554: Number of positive integers, k, where k <= 2n+1 and gcd(k, 2n+1) = gcd(k+1, 2n+1) = 1.

The programs for A070554, the canonical program `A070554.P17760410811391301141` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070554 has offset 0).

The definition of A070554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070554.P17760410811391301141

`A058026(2*n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070554

/-- `A058026(2*n+1)` -/
def P17760410811391301141.Spec : Prop :=
  ∀ n, P17760410811391301141.a n = A070554 n

theorem P17760410811391301141.correct : P17760410811391301141.Spec := by
  intro n
  simp only [A070554]

end A070554

/-! ## A070554.P11341932308635189552

`Δ[n²]*∏{p}[Δ[n²], 1-2/#]`
-/

namespace A070554.P11341932308635189552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n).natAbs, (1 - 2 / (p : ℚ)))

end

end A070554.P11341932308635189552

namespace A070554

/-- `Δ[n²]*∏{p}[Δ[n²], 1-2/#]` -/
def P11341932308635189552.Spec : Prop :=
  ∀ n, P11341932308635189552.a n = (A070554 n : ℚ)

end A070554

/-! ## A070554.P11863999320799049510

`A070555(n+1)/A028310(n)`
-/

namespace A070554.P11863999320799049510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070555 (n + 1) : ℚ) / (A028310 n : ℚ)

end

end A070554.P11863999320799049510

namespace A070554

/-- `A070555(n+1)/A028310(n)` -/
def P11863999320799049510.Spec : Prop :=
  ∀ n, P11863999320799049510.a n = (A070554 n : ℚ)

end A070554

/-! ## A070554.P2310102358462765015

`A002472(Δ[n²])`
-/

namespace A070554.P2310102358462765015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A070554.P2310102358462765015

namespace A070554

/-- `A002472(Δ[n²])` -/
def P2310102358462765015.Spec : Prop :=
  ∀ n, P2310102358462765015.a n = A070554 n

end A070554

/-! ## A070554.P2642823941727387295

`A184997(Δ[n²])`
-/

namespace A070554.P2642823941727387295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184997 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A070554.P2642823941727387295

namespace A070554

/-- `A184997(Δ[n²])` -/
def P2642823941727387295.Spec : Prop :=
  ∀ n, P2642823941727387295.a n = A070554 n

end A070554

/-! ## A070554.P2175955146863789560

`or(1, A002472(2*n+1))`
-/

namespace A070554.P2175955146863789560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002472 (2 * n + 1))

end

end A070554.P2175955146863789560

namespace A070554

/-- `or(1, A002472(2*n+1))` -/
def P2175955146863789560.Spec : Prop :=
  ∀ n, P2175955146863789560.a n = A070554 n

end A070554

/-! ## A070554.P9380738481191383987

`A184997(2*n+1)%(n+2)²`
-/

namespace A070554.P9380738481191383987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184997 (2 * n + 1)) ((n + 2) ^ 2 : ℤ)

end

end A070554.P9380738481191383987

namespace A070554

/-- `A184997(2*n+1)%(n+2)²` -/
def P9380738481191383987.Spec : Prop :=
  ∀ n, P9380738481191383987.a n = A070554 n

end A070554

/-! ## A070554.P12074421231655833044

`A000265(A002472(2*n+1))`
-/

namespace A070554.P12074421231655833044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002472 (2 * n + 1)).toNat

end

end A070554.P12074421231655833044

namespace A070554

/-- `A000265(A002472(2*n+1))` -/
def P12074421231655833044.Spec : Prop :=
  ∀ n, P12074421231655833044.a n = A070554 n

end A070554

/-! ## A070554.P2675329685600156744

`A000265(A390299(2*n+1))`
-/

namespace A070554.P2675329685600156744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A390299 (2 * n + 1)).toNat

end

end A070554.P2675329685600156744

namespace A070554

/-- `A000265(A390299(2*n+1))` -/
def P2675329685600156744.Spec : Prop :=
  ∀ n, P2675329685600156744.a n = A070554 n

end A070554

/-! ## A070554.P15204855025914683396

`A026741(A058026(n+1+n))`
-/

namespace A070554.P15204855025914683396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A058026 (n + 1 + n)).toNat

end

end A070554.P15204855025914683396

namespace A070554

/-- `A026741(A058026(n+1+n))` -/
def P15204855025914683396.Spec : Prop :=
  ∀ n, P15204855025914683396.a n = A070554 n

end A070554

/-! ## A070554.P9677055486137476800

`filter[A058026(n+1), A000035(#)]`
-/

namespace A070554.P9677055486137476800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A070554.P9677055486137476800

namespace A070554

/-- `filter[A058026(n+1), A000035(#)]` -/
def P9677055486137476800.Spec : Prop :=
  ∀ n, P9677055486137476800.a n = A070554 n

end A070554

/-! ## A070554.P793267904009369843

`filter[A058026(n+1), A097325(#)]`
-/

namespace A070554.P793267904009369843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A070554.P793267904009369843

namespace A070554

/-- `filter[A058026(n+1), A097325(#)]` -/
def P793267904009369843.Spec : Prop :=
  ∀ n, P793267904009369843.a n = A070554 n

end A070554

/-! ## A070554.P7043748040145346558

`filter[A058026(n+1), A098725(#)]`
-/

namespace A070554.P7043748040145346558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A070554.P7043748040145346558

namespace A070554

/-- `filter[A058026(n+1), A098725(#)]` -/
def P7043748040145346558.Spec : Prop :=
  ∀ n, P7043748040145346558.a n = A070554 n

end A070554

/-! ## A070554.P14694215327839199160

`filter[A058026(n+1), A115971(#)]`
-/

namespace A070554.P14694215327839199160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A070554.P14694215327839199160

namespace A070554

/-- `filter[A058026(n+1), A115971(#)]` -/
def P14694215327839199160.Spec : Prop :=
  ∀ n, P14694215327839199160.a n = A070554 n

end A070554

/-! ## A070554.P2792308514695738371

`filter[A058026(n+1), A166486(#)]`
-/

namespace A070554.P2792308514695738371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A070554.P2792308514695738371

namespace A070554

/-- `filter[A058026(n+1), A166486(#)]` -/
def P2792308514695738371.Spec : Prop :=
  ∀ n, P2792308514695738371.a n = A070554 n

end A070554

/-! ## A070554.P5617845257903818380

`filter[A058026(n+1), A168181(#)]`
-/

namespace A070554.P5617845257903818380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A070554.P5617845257903818380

namespace A070554

/-- `filter[A058026(n+1), A168181(#)]` -/
def P5617845257903818380.Spec : Prop :=
  ∀ n, P5617845257903818380.a n = A070554 n

end A070554

/-! ## A070554.P6215422409636806743

`filter[A058026(n+1), A168184(#)]`
-/

namespace A070554.P6215422409636806743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A070554.P6215422409636806743

namespace A070554

/-- `filter[A058026(n+1), A168184(#)]` -/
def P6215422409636806743.Spec : Prop :=
  ∀ n, P6215422409636806743.a n = A070554 n

end A070554

/-! ## A070554.P14175796648730943864

`filter[A058026(n+1), A168185(#)]`
-/

namespace A070554.P14175796648730943864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A070554.P14175796648730943864

namespace A070554

/-- `filter[A058026(n+1), A168185(#)]` -/
def P14175796648730943864.Spec : Prop :=
  ∀ n, P14175796648730943864.a n = A070554 n

end A070554

/-! ## A070554.P3584585238592324405

`filter[A058026(n+1), A257680(#)]`
-/

namespace A070554.P3584585238592324405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257680 (f1 j).toNat = 1) n)

end

end A070554.P3584585238592324405

namespace A070554

/-- `filter[A058026(n+1), A257680(#)]` -/
def P3584585238592324405.Spec : Prop :=
  ∀ n, P3584585238592324405.a n = A070554 n

end A070554

/-! ## A070554.P13235376773043589323

`filter[A058026(n+1), A259044(#)]`
-/

namespace A070554.P13235376773043589323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A070554.P13235376773043589323

namespace A070554

/-- `filter[A058026(n+1), A259044(#)]` -/
def P13235376773043589323.Spec : Prop :=
  ∀ n, P13235376773043589323.a n = A070554 n

end A070554

/-!
# A070555: Sum of positive integers k, where k <= n and gcd(k,2n+1) = gcd(k+1,2n+1).

The programs for A070555, the canonical program `A070555.P15125073285784750273` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070555 has offset 1).

The definition of A070555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070555.P1781421223062061887

`(2*n+1)*∏{p}[2*n+1, 1-2/#]*round(sqrt(n²+1))`
-/

namespace A070555.P1781421223062061887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (1 - 2 / (p : ℚ))) * (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ)

end

end A070555.P1781421223062061887

namespace A070555

/-- `(2*n+1)*∏{p}[2*n+1, 1-2/#]*round(sqrt(n²+1))` -/
def P1781421223062061887.Spec : Prop :=
  ∀ n, P1781421223062061887.a n = (A070555 (n + 1) : ℚ)

end A070555

/-! ## A070555.P6095948556457039861

`round(1/acot(n))*A070554(n)`
-/

namespace A070555.P6095948556457039861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A070554 n

end

end A070555.P6095948556457039861

namespace A070555

/-- `round(1/acot(n))*A070554(n)` -/
def P6095948556457039861.Spec : Prop :=
  ∀ n, P6095948556457039861.a n = A070555 (n + 1)

end A070555

/-! ## A070555.P15125073285784750273

`A028310(n)*A070554(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A070555

/-- `A028310(n)*A070554(n)` -/
def P15125073285784750273.Spec : Prop :=
  ∀ n, P15125073285784750273.a n = A070555 (n + 1)

theorem P15125073285784750273.correct : P15125073285784750273.Spec := by
  intro n
  simp only [A070555, Nat.add_sub_cancel]

end A070555

/-! ## A070555.P6832231371161576582

`A000007(n)+n*A070554(n)`
-/

namespace A070555.P6832231371161576582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A070554 n

end

end A070555.P6832231371161576582

namespace A070555

/-- `A000007(n)+n*A070554(n)` -/
def P6832231371161576582.Spec : Prop :=
  ∀ n, P6832231371161576582.a n = A070555 (n + 1)

end A070555

/-! ## A070555.P5680278398586404284

`A069828(Δ[n²])`
-/

namespace A070555.P5680278398586404284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069828 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A070555.P5680278398586404284

namespace A070555

/-- `A069828(Δ[n²])` -/
def P5680278398586404284.Spec : Prop :=
  ∀ n, P5680278398586404284.a n = A070555 (n + 1)

end A070555

/-! ## A070555.P18087272717842179124

`round(1/acot(n))*A058026(Δ[n²])`
-/

namespace A070555.P18087272717842179124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A058026 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A070555.P18087272717842179124

namespace A070555

/-- `round(1/acot(n))*A058026(Δ[n²])` -/
def P18087272717842179124.Spec : Prop :=
  ∀ n, P18087272717842179124.a n = A070555 (n + 1)

end A070555

/-! ## A070555.P9003580996952875061

`round(1/acot(n))*A002472(2*n+1)`
-/

namespace A070555.P9003580996952875061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A002472 (2 * n + 1)

end

end A070555.P9003580996952875061

namespace A070555

/-- `round(1/acot(n))*A002472(2*n+1)` -/
def P9003580996952875061.Spec : Prop :=
  ∀ n, P9003580996952875061.a n = A070555 (n + 1)

end A070555

/-! ## A070555.P344670256272123982

`gcd(n, ∏{d}[n, #])*A184997(2*n+1)`
-/

namespace A070555.P344670256272123982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∏ d ∈ Nat.divisors (f1 n), d) : ℤ) * A184997 (2 * n + 1)

end

end A070555.P344670256272123982

namespace A070555

/-- `gcd(n, ∏{d}[n, #])*A184997(2*n+1)` -/
def P344670256272123982.Spec : Prop :=
  ∀ n, P344670256272123982.a n = A070555 (n + 1)

end A070555

/-! ## A070555.P14410670447668403145

`A070554(n)*A123108(2*n)`
-/

namespace A070555.P14410670447668403145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070554 n * A123108 (2 * n)

end

end A070555.P14410670447668403145

namespace A070555

/-- `A070554(n)*A123108(2*n)` -/
def P14410670447668403145.Spec : Prop :=
  ∀ n, P14410670447668403145.a n = A070555 (n + 1)

end A070555

/-! ## A070555.P3785582635522525225

`A002472(Δ[n²])*A028310(n)`
-/

namespace A070555.P3785582635522525225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A028310 n

end

end A070555.P3785582635522525225

namespace A070555

/-- `A002472(Δ[n²])*A028310(n)` -/
def P3785582635522525225.Spec : Prop :=
  ∀ n, P3785582635522525225.a n = A070555 (n + 1)

end A070555

/-! ## A070555.P10409142594190813726

`A058026(2*n+1)*A065033(2*n)`
-/

namespace A070555.P10409142594190813726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (2 * n + 1) * A065033 (2 * n)

end

end A070555.P10409142594190813726

namespace A070555

/-- `A058026(2*n+1)*A065033(2*n)` -/
def P10409142594190813726.Spec : Prop :=
  ∀ n, P10409142594190813726.a n = A070555 (n + 1)

end A070555

/-! ## A070555.P12211520012172196401

`A058026(2*n+1)*A123108(2*n)`
-/

namespace A070555.P12211520012172196401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (2 * n + 1) * A123108 (2 * n)

end

end A070555.P12211520012172196401

namespace A070555

/-- `A058026(2*n+1)*A123108(2*n)` -/
def P12211520012172196401.Spec : Prop :=
  ∀ n, P12211520012172196401.a n = A070555 (n + 1)

end A070555

/-! ## A070555.P10811574558012942400

`A069828(2*n+1)+A058026(2*(n+1))`
-/

namespace A070555.P10811574558012942400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069828 (2 * n + 1) + A058026 (2 * (n + 1))

end

end A070555.P10811574558012942400

namespace A070555

/-- `A069828(2*n+1)+A058026(2*(n+1))` -/
def P10811574558012942400.Spec : Prop :=
  ∀ n, P10811574558012942400.a n = A070555 (n + 1)

end A070555

/-! ## A070555.P8683217148511757453

`A069828(2*n+1)+A069828(2*(n+1))`
-/

namespace A070555.P8683217148511757453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069828 (2 * n + 1) + A069828 (2 * (n + 1))

end

end A070555.P8683217148511757453

namespace A070555

/-- `A069828(2*n+1)+A069828(2*(n+1))` -/
def P8683217148511757453.Spec : Prop :=
  ∀ n, P8683217148511757453.a n = A070555 (n + 1)

end A070555

/-! ## A070555.P4737168728041504457

`A058026(2*n+1)*A101279(2*n+1)`
-/

namespace A070555.P4737168728041504457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (2 * n + 1) * A101279 (2 * n + 1)

end

end A070555.P4737168728041504457

namespace A070555

/-- `A058026(2*n+1)*A101279(2*n+1)` -/
def P4737168728041504457.Spec : Prop :=
  ∀ n, P4737168728041504457.a n = A070555 (n + 1)

end A070555

/-! ## A070555.P7000439722167234854

`A007318(∑[n]+1)*A070554(n)`
-/

namespace A070555.P7000439722167234854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A070554 n

end

end A070555.P7000439722167234854

namespace A070555

/-- `A007318(∑[n]+1)*A070554(n)` -/
def P7000439722167234854.Spec : Prop :=
  ∀ n, P7000439722167234854.a n = A070555 (n + 1)

end A070555

/-!
# A070556: a(n) = cototient(totient(n)).

The programs for A070556, the canonical program `A070556.P18359578650946582400` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070556 has offset 1).

The definition of A070556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070556.P18359578650946582400

`A051953(A000010(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A070556

/-- `A051953(A000010(n+1))` -/
def P18359578650946582400.Spec : Prop :=
  ∀ n, P18359578650946582400.a n = A070556 (n + 1)

theorem P18359578650946582400.correct : P18359578650946582400.Spec := by
  intro n
  simp only [A070556, Nat.add_sub_cancel]

end A070556

/-! ## A070556.P2700804669526256676

`A051953((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A070556.P2700804669526256676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A070556.P2700804669526256676

namespace A070556

/-- `A051953((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P2700804669526256676.Spec : Prop :=
  ∀ n, P2700804669526256676.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P12476397346892541345

`A051953(Δ[A002088(n)])`
-/

namespace A070556.P12476397346892541345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (f1 (n + 1) - f1 n).toNat

end

end A070556.P12476397346892541345

namespace A070556

/-- `A051953(Δ[A002088(n)])` -/
def P12476397346892541345.Spec : Prop :=
  ∀ n, P12476397346892541345.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P16537757310399032385

`A051953(Δ[A005728(n)])`
-/

namespace A070556.P16537757310399032385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (f1 (n + 1) - f1 n).toNat

end

end A070556.P16537757310399032385

namespace A070556

/-- `A051953(Δ[A005728(n)])` -/
def P16537757310399032385.Spec : Prop :=
  ∀ n, P16537757310399032385.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P11155166028907378249

`A051953(A349137(Δ[n²]))`
-/

namespace A070556.P11155166028907378249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A070556.P11155166028907378249

namespace A070556

/-- `A051953(A349137(Δ[n²]))` -/
def P11155166028907378249.Spec : Prop :=
  ∀ n, P11155166028907378249.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P17942300417813593974

`A051953(sqrt(A127473(n+1)))`
-/

namespace A070556.P17942300417813593974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A070556.P17942300417813593974

namespace A070556

/-- `A051953(sqrt(A127473(n+1)))` -/
def P17942300417813593974.Spec : Prop :=
  ∀ n, P17942300417813593974.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P2245321791052194618

`A219428(Δ[A002088(n)])+1`
-/

namespace A070556.P2245321791052194618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (f1 (n + 1) - f1 n).toNat + 1

end

end A070556.P2245321791052194618

namespace A070556

/-- `A219428(Δ[A002088(n)])+1` -/
def P2245321791052194618.Spec : Prop :=
  ∀ n, P2245321791052194618.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P1075272292616570676

`A219428(Δ[A005728(n)])+1`
-/

namespace A070556.P1075272292616570676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (f1 (n + 1) - f1 n).toNat + 1

end

end A070556.P1075272292616570676

namespace A070556

/-- `A219428(Δ[A005728(n)])+1` -/
def P1075272292616570676.Spec : Prop :=
  ∀ n, P1075272292616570676.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P15693694353410633863

`A051953(Δ[A100449(n)/4])`
-/

namespace A070556.P15693694353410633863
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A070556.P15693694353410633863

namespace A070556

/-- `A051953(Δ[A100449(n)/4])` -/
def P15693694353410633863.Spec : Prop :=
  ∀ n, P15693694353410633863.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P1955091969533143278

`A051953(A109606(n+1)+1)`
-/

namespace A070556.P1955091969533143278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A109606 (n + 1) + 1).toNat

end

end A070556.P1955091969533143278

namespace A070556

/-- `A051953(A109606(n+1)+1)` -/
def P1955091969533143278.Spec : Prop :=
  ∀ n, P1955091969533143278.a n = A070556 (n + 1)

theorem P1955091969533143278.correct : P1955091969533143278.Spec := by
  intro n
  simp only [A070556, Nat.add_sub_cancel, A070556.P1955091969533143278.a, A070556.P18359578650946582400.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070556

/-! ## A070556.P1834680062553606158

`A051953(A039649(n+1)-1)`
-/

namespace A070556.P1834680062553606158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A039649 (n + 1) - 1).toNat

end

end A070556.P1834680062553606158

namespace A070556

/-- `A051953(A039649(n+1)-1)` -/
def P1834680062553606158.Spec : Prop :=
  ∀ n, P1834680062553606158.a n = A070556 (n + 1)

theorem P1834680062553606158.correct : P1834680062553606158.Spec := by
  intro n
  simp only [A070556, Nat.add_sub_cancel, A070556.P1834680062553606158.a, A070556.P18359578650946582400.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070556

/-! ## A070556.P12650703896250514172

`A300722(2*A000010(n+1))`
-/

namespace A070556.P12650703896250514172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300722 (2 * A000010 (n + 1)).toNat

end

end A070556.P12650703896250514172

namespace A070556

/-- `A300722(2*A000010(n+1))` -/
def P12650703896250514172.Spec : Prop :=
  ∀ n, P12650703896250514172.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P11647505452261690302

`A051953(n-A219428(n+1))`
-/

namespace A070556.P11647505452261690302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A070556.P11647505452261690302

namespace A070556

/-- `A051953(n-A219428(n+1))` -/
def P11647505452261690302.Spec : Prop :=
  ∀ n, P11647505452261690302.a n = A070556 (n + 1)

theorem P11647505452261690302.correct : P11647505452261690302.Spec := by
  intro n
  simp only [A070556, Nat.add_sub_cancel, A070556.P11647505452261690302.a, A070556.P18359578650946582400.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070556

/-! ## A070556.P12228905297511025374

`∑{d}[A000010(n+1), A062790(#)]`
-/

namespace A070556.P12228905297511025374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062790 d

end

end A070556.P12228905297511025374

namespace A070556

/-- `∑{d}[A000010(n+1), A062790(#)]` -/
def P12228905297511025374.Spec : Prop :=
  ∀ n, P12228905297511025374.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P16258527539910052874

`A000010(n+1)-∑[A111409(n)]`
-/

namespace A070556.P16258527539910052874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070556.P16258527539910052874

namespace A070556

/-- `A000010(n+1)-∑[A111409(n)]` -/
def P16258527539910052874.Spec : Prop :=
  ∀ n, P16258527539910052874.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P9677675016793326689

`Δ[A002088(n)]-A010554(n+1)`
-/

namespace A070556.P9677675016793326689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010554 (n + 1)

end

end A070556.P9677675016793326689

namespace A070556

/-- `Δ[A002088(n)]-A010554(n+1)` -/
def P9677675016793326689.Spec : Prop :=
  ∀ n, P9677675016793326689.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P12923755143349404973

`Δ[A005728(n)]-A010554(n+1)`
-/

namespace A070556.P12923755143349404973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010554 (n + 1)

end

end A070556.P12923755143349404973

namespace A070556

/-- `Δ[A005728(n)]-A010554(n+1)` -/
def P12923755143349404973.Spec : Prop :=
  ∀ n, P12923755143349404973.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P16313283642403821107

`A065152(n+1)+A054571(n+1)`
-/

namespace A070556.P16313283642403821107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (n + 1) + A054571 (n + 1)

end

end A070556.P16313283642403821107

namespace A070556

/-- `A065152(n+1)+A054571(n+1)` -/
def P16313283642403821107.Spec : Prop :=
  ∀ n, P16313283642403821107.a n = A070556 (n + 1)

theorem P16313283642403821107.correct : P16313283642403821107.Spec := by
  intro n
  simp only [A070556, Nat.add_sub_cancel, A070556.P16313283642403821107.a, A070556.P18359578650946582400.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A054571, A054571.P8375509208684838660.a, A065152, A065152.P5975500746502698895.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A343912, A343912.P17867153873116999387.f1, A343912.P17867153873116999387.f2, A343912.P17867153873116999387.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A053470, A053470.P13253634805606382182.f2, A053470.P13253634805606382182.f1, A053470.P13253634805606382182.a, A062790, A062790.P5415624989759604668.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070556

/-! ## A070556.P4621692976422002085

`A293516(n+1)+A010554(n+1)`
-/

namespace A070556.P4621692976422002085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293516 (n + 1) + A010554 (n + 1)

end

end A070556.P4621692976422002085

namespace A070556

/-- `A293516(n+1)+A010554(n+1)` -/
def P4621692976422002085.Spec : Prop :=
  ∀ n, P4621692976422002085.a n = A070556 (n + 1)

end A070556

/-! ## A070556.P17802192811562649860

`A000010(n+1)-A010554(n+1)`
-/

namespace A070556.P17802192811562649860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A010554 (n + 1)

end

end A070556.P17802192811562649860

namespace A070556

/-- `A000010(n+1)-A010554(n+1)` -/
def P17802192811562649860.Spec : Prop :=
  ∀ n, P17802192811562649860.a n = A070556 (n + 1)

end A070556

/-!
# A070557: Number of two-rowed partitions of length 4.

The programs for A070557, there is no canonical definition to state claims against.
-/

/-! ## A070557.P16315026174895273255

`A225751(n)-A028953(A159582(n))`
-/

namespace A070557.P16315026174895273255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225751 n - A028953 (A159582 n).toNat

end

end A070557.P16315026174895273255

/-! ## A070557.P4278593520497077973

`A225751(n)-A299905(A297654(n+1))`
-/

namespace A070557.P4278593520497077973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225751 n - A299905 (A297654 (n + 1)).toNat

end

end A070557.P4278593520497077973

/-! ## A070557.P8039521130485948648

`A138373(A145722(n))`
-/

namespace A070557.P8039521130485948648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138373 (A145722 n).toNat

end

end A070557.P8039521130485948648

/-! ## A070557.P14362267406963190704

`A225751(A087051(n))`
-/

namespace A070557.P14362267406963190704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225751 (A087051 n).toNat

end

end A070557.P14362267406963190704

/-! ## A070557.P6416737496216048204

`A118759(A225751(n))`
-/

namespace A070557.P6416737496216048204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A225751 n).toNat

end

end A070557.P6416737496216048204

/-!
# A070558: Number of two-rowed partitions of length 5.

The programs for A070558, there is no canonical definition to state claims against.
-/

/-! ## A070558.P10835781450478549932

`A000194(∑[A002513(n)²])`
-/

namespace A070558.P10835781450478549932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002513 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070558.P10835781450478549932

/-! ## A070558.P14913444990724547253

`A342383(A045513(n))`
-/

namespace A070558.P14913444990724547253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (A045513 n).toNat

end

end A070558.P14913444990724547253

/-! ## A070558.P14958459448477540865

`A347457(A097513(n))`
-/

namespace A070558.P14958459448477540865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (A097513 n).toNat

end

end A070558.P14958459448477540865

/-! ## A070558.P5285300799087389300

`A331914(A120452(n+1))`
-/

namespace A070558.P5285300799087389300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331914 (A120452 (n + 1)).toNat

end

end A070558.P5285300799087389300

/-! ## A070558.P5296231553796429694

`A335469(A084376(n)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A070558.P5296231553796429694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A335469 (A084376 n + a (n - 2)).toNat

end

end A070558.P5296231553796429694

/-!
# A070559: Number of two-rowed partitions of length 6.

The programs for A070559, there is no canonical definition to state claims against.
-/

/-! ## A070559.P6827942027869191446

`A146167(ceil(6^(n/4)))+A070558(n)`
-/

namespace A070559.P6827942027869191446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146167 ⌈(6 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉.toNat + A070558 n

end

end A070559.P6827942027869191446

/-! ## A070559.P12912383707008593045

`A320788(n+3)-A263930(C(n, 9)+1)`
-/

namespace A070559.P12912383707008593045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320788 (n + 3) - A263930 (Nat.choose n 9 + 1)

end

end A070559.P12912383707008593045

/-! ## A070559.P9184175831018594750

`A163352(A335514(n))+A070558(n)`
-/

namespace A070559.P9184175831018594750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A335514 n).toNat + A070558 n

end

end A070559.P9184175831018594750

/-! ## A070559.P2091920307462198503

`A345914(A344604(n))+A304620(n)`
-/

namespace A070559.P2091920307462198503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345914 (A344604 n).toNat + A304620 n

end

end A070559.P2091920307462198503

/-! ## A070559.P10653382381299114812

`A026812(A227549(n+1))+A006950(2*n)`
-/

namespace A070559.P10653382381299114812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (A227549 (n + 1)).toNat + A006950 (2 * n)

end

end A070559.P10653382381299114812

/-!
# A070560: a(0) = 1; for n > 0, a(n) = (fecundity of n) + 2.

The programs for A070560, there is no canonical definition to state claims against.
-/

/-! ## A070560.P5654469476937649070

`A070561(n)+1`
-/

namespace A070560.P5654469476937649070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 n + 1

end

end A070560.P5654469476937649070

/-! ## A070560.P13704859071015751058

`ceil(A070562(n)+cosh(sin(n)))`
-/

namespace A070560.P13704859071015751058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070562 n : ℝ) + Real.cosh (Real.sin (n : ℝ))⌉

end

end A070560.P13704859071015751058

/-! ## A070560.P9897801462082658878

`A008619(2*A070561(n))`
-/

namespace A070560.P9897801462082658878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A070561 n).toNat

end

end A070560.P9897801462082658878

/-! ## A070560.P11351238699546912307

`A080513(2*A070561(n))`
-/

namespace A070560.P11351238699546912307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A070561 n).toNat

end

end A070560.P11351238699546912307

/-! ## A070560.P7181202346053435458

`A008611(3*A070561(n))`
-/

namespace A070560.P7181202346053435458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A070561 n).toNat

end

end A070560.P7181202346053435458

/-! ## A070560.P6378998843920705367

`A008621(2*2*A070561(n))`
-/

namespace A070560.P6378998843920705367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * (2 * A070561 n)).toNat

end

end A070560.P6378998843920705367

/-! ## A070560.P13690167315868187818

`A057427(n)+A070562(n)+1`
-/

namespace A070560.P13690167315868187818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A070562 n + 1)

end

end A070560.P13690167315868187818

/-! ## A070560.P2687406452454782487

`A070562(n)+1-A057428(n)`
-/

namespace A070560.P2687406452454782487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + (1 - A057428 n)

end

end A070560.P2687406452454782487

/-! ## A070560.P3984836893059778300

`A070562(n)+2-A000007(n)`
-/

namespace A070560.P3984836893059778300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + (2 - A000007 n)

end

end A070560.P3984836893059778300

/-! ## A070560.P7885482277571309754

`1-A057428(n)*A070561(n)`
-/

namespace A070560.P7885482277571309754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A070561 n

end

end A070560.P7885482277571309754

/-! ## A070560.P1880580443715333625

`A070562(n)+A000032(C(2, n+2))`
-/

namespace A070560.P1880580443715333625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + A000032 (Nat.choose 2 (n + 2))

end

end A070560.P1880580443715333625

/-! ## A070560.P16260546478151550019

`A070562(n)+A006530(A001316(n))`
-/

namespace A070560.P16260546478151550019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + A006530 (A001316 n).toNat

end

end A070560.P16260546478151550019

/-! ## A070560.P11473653759219092280

`A070562(n)+A036453(2*n+1)`
-/

namespace A070560.P11473653759219092280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + A036453 (2 * n + 1)

end

end A070560.P11473653759219092280

/-! ## A070560.P5531803584743364797

`A000005(2^A070561(n))`
-/

namespace A070560.P5531803584743364797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A070561 n : ℤ))).toNat

end

end A070560.P5531803584743364797

/-! ## A070560.P13685745058476149371

`A001511(2^A070561(n))`
-/

namespace A070560.P13685745058476149371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A070561 n : ℤ))).toNat

end

end A070560.P13685745058476149371

/-! ## A070560.P13516261702003111827

`A001222(2*2^A070561(n))`
-/

namespace A070560.P13516261702003111827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A070561 n : ℤ))).toNat

end

end A070560.P13516261702003111827

/-! ## A070560.P8511679486806923978

`A001222(lcm(3, 2^A070561(n)))`
-/

namespace A070560.P8511679486806923978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A070561 n : ℤ))))

end

end A070560.P8511679486806923978

/-!
# A070561: a(0) = 0; for n > 0, a(n) = (fecundity of n) + 1.

The programs for A070561, there is no canonical definition to state claims against.
-/

/-! ## A070561.P16978203963783181680

`A070560(n)-1`
-/

namespace A070561.P16978203963783181680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070560 n - 1

end

end A070561.P16978203963783181680

/-! ## A070561.P5033414473781343863

`ceil(A070562(n)+abs(sin(n)))`
-/

namespace A070561.P5033414473781343863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070562 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A070561.P5033414473781343863

/-! ## A070561.P13354189754088636425

`A289207(A070560(n)+1)`
-/

namespace A070561.P13354189754088636425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A070560 n + 1).toNat

end

end A070561.P13354189754088636425

/-! ## A070561.P10298208448968993142

`A070562(n)+A057427(n)`
-/

namespace A070561.P10298208448968993142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + A057427 n

end

end A070561.P10298208448968993142

/-! ## A070561.P10488070362773778623

`A070562(n)-A057428(n)`
-/

namespace A070561.P10488070362773778623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n - A057428 n

end

end A070561.P10488070362773778623

/-! ## A070561.P4164772381582395397

`A070562(n)+abs(A062157(n))`
-/

namespace A070561.P4164772381582395397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + |A062157 n|

end

end A070561.P4164772381582395397

/-! ## A070561.P457844100136601885

`A070562(n)+1-A000007(n)`
-/

namespace A070561.P457844100136601885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + (1 - A000007 n)

end

end A070561.P457844100136601885

/-! ## A070561.P19441307674209247

`A208576(2*n)+A070562(n)`
-/

namespace A070561.P19441307674209247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208576 (2 * n) + A070562 n

end

end A070561.P19441307674209247

/-! ## A070561.P5615151536899177557

`A070562(n)+A000040(n+1)%2`
-/

namespace A070561.P5615151536899177557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + Int.tmod (A000040 (n + 1)) 2

end

end A070561.P5615151536899177557

/-! ## A070561.P395114932545383289

`∑{e}[A020639(n+1), A070562(n)+#]`
-/

namespace A070561.P395114932545383289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A070562 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A070561.P395114932545383289

/-! ## A070561.P15255076666936703516

`A070562(n)+A000045(n²%(n+1))`
-/

namespace A070561.P15255076666936703516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + A000045 (n ^ 2 % (n + 1))

end

end A070561.P15255076666936703516

/-! ## A070561.P2601219150530087765

`A070562(n)+A000045(round(n/(n+1)))`
-/

namespace A070561.P2601219150530087765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A070561.P2601219150530087765

/-! ## A070561.P4686096348890028843

`A070562(n)-A008683(C(2, n+1)+2)`
-/

namespace A070561.P4686096348890028843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n - A008683 (Nat.choose 2 (n + 1) + 2)

end

end A070561.P4686096348890028843

/-! ## A070561.P6163526725426108745

`A070562(n)+A001221(A001316(n))`
-/

namespace A070561.P6163526725426108745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + A001221 (A001316 n).toNat

end

end A070561.P6163526725426108745

/-! ## A070561.P17311503543892679739

`A070562(n)+A001221(A062383(n))`
-/

namespace A070561.P17311503543892679739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + A001221 (A062383 n).toNat

end

end A070561.P17311503543892679739

/-! ## A070561.P8283176533745448696

`A070562(n)+record[A020639(n+2)]%2`
-/

namespace A070561.P8283176533745448696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A070561.P8283176533745448696

/-! ## A070561.P8720953969818099474

`A070562(n)-A062157(2*n)`
-/

namespace A070561.P8720953969818099474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n - A062157 (2 * n)

end

end A070561.P8720953969818099474

/-! ## A070561.P7861107079955367440

`A070562(n)+A031346(A011540(n+1))`
-/

namespace A070561.P7861107079955367440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + A031346 (A011540 (n + 1)).toNat

end

end A070561.P7861107079955367440

/-! ## A070561.P2785298765267563584

`A070562(n)+A031346(10*n)`
-/

namespace A070561.P2785298765267563584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n + A031346 (10 * n)

end

end A070561.P2785298765267563584

/-!
# A070562: Fecundity of n.

The programs for A070562, there is no canonical definition to state claims against.
-/

/-! ## A070562.P17075603426338186804

`floor(log(cosh(A070561(n))))`
-/

namespace A070562.P17075603426338186804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A070561 n : ℝ))⌋

end

end A070562.P17075603426338186804

/-! ## A070562.P12633656578450597411

`A289207(A070560(n))`
-/

namespace A070562.P12633656578450597411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A070560 n).toNat

end

end A070562.P12633656578450597411

/-! ## A070562.P4436568758650400776

`A337108(A070561(n)²)`
-/

namespace A070562.P4436568758650400776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 (A070561 n ^ 2).toNat

end

end A070562.P4436568758650400776

/-! ## A070562.P8492384418182497525

`A070561(n)+A057428(n)`
-/

namespace A070562.P8492384418182497525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 n + A057428 n

end

end A070562.P8492384418182497525

/-! ## A070562.P2655925242420123773

`A070561(n)-A057427(n)`
-/

namespace A070562.P2655925242420123773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 n - A057427 n

end

end A070562.P2655925242420123773

/-! ## A070562.P1571222655445600711

`A070561(n)-A208576(2*n)`
-/

namespace A070562.P1571222655445600711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 n - A208576 (2 * n)

end

end A070562.P1571222655445600711

/-! ## A070562.P17356834559461577869

`A070561(n)-A000040(n+1)%2`
-/

namespace A070562.P17356834559461577869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 n - Int.tmod (A000040 (n + 1)) 2

end

end A070562.P17356834559461577869

/-! ## A070562.P8860547535775569429

`∑{e}[A020639(n+1), A070561(n)-#]`
-/

namespace A070562.P8860547535775569429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A070561 n - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A070562.P8860547535775569429

/-! ## A070562.P14879065617861739620

`A070561(n)-A001221(A001316(n))`
-/

namespace A070562.P14879065617861739620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 n - A001221 (A001316 n).toNat

end

end A070562.P14879065617861739620

/-! ## A070562.P3591215734569770333

`A070561(n)-A031346(A011540(n+1))`
-/

namespace A070562.P3591215734569770333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 n - A031346 (A011540 (n + 1)).toNat

end

end A070562.P3591215734569770333

/-! ## A070562.P1987619380375342431

`A070560(n)-A070560(A011540(n+1))`
-/

namespace A070562.P1987619380375342431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070560 n - A070560 (A011540 (n + 1)).toNat

end

end A070562.P1987619380375342431

/-! ## A070562.P5091864594365861704

`A070561(n)-A070561(A009101(n))`
-/

namespace A070562.P5091864594365861704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 n - A070561 (A009101 n).toNat

end

end A070562.P5091864594365861704

/-! ## A070562.P6332673525736394057

`A070561(n)-A031346(10*n)`
-/

namespace A070562.P6332673525736394057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 n - A031346 (10 * n)

end

end A070562.P6332673525736394057

/-! ## A070562.P13318499536039068386

`A070560(n)-A070560(10*n)`
-/

namespace A070562.P13318499536039068386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070560 n - A070560 (10 * n)

end

end A070562.P13318499536039068386

/-! ## A070562.P6448313843381279101

`A070561(n)-A001221(∏{e}[n+1, 5^#])`
-/

namespace A070562.P6448313843381279101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 n - A001221 (∏ p ∈ Nat.primeFactors (f1 n), 5 ^ Nat.factorization (f1 n) p)

end

end A070562.P6448313843381279101

/-! ## A070562.P1175052710002318184

`A023645(2^A070561(n))`
-/

namespace A070562.P1175052710002318184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A070561 n : ℤ))).toNat

end

end A070562.P1175052710002318184

/-! ## A070562.P12095559349849508809

`A122201(C(A070561(n), 2))`
-/

namespace A070562.P12095559349849508809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 (Nat.choose (A070561 n).toNat 2)

end

end A070562.P12095559349849508809

/-! ## A070562.P10089660332123597235

`val(A000010(2^A070561(n)), 2)`
-/

namespace A070562.P10089660332123597235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A070561 n : ℤ))).toNat).toNat 2

end

end A070562.P10089660332123597235

/-! ## A070562.P10411902795972848165

`A001222(ceil(2^A070561(n)/2))`
-/

namespace A070562.P10411902795972848165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(2 : ℚ) ^ (A070561 n : ℤ) / 2⌉.toNat

end

end A070562.P10411902795972848165

/-!
# A070563: a(n) = 0 if 3 divides the Ramanujan number tau(n) (A000594(n)), otherwise 1.

The programs for A070563, the canonical program `A070563.P11869556616697573668` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070563 has offset 1).

The definition of A070563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070563.P11869556616697573668

`A011655(n+1)*A353815(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070563

/-- `A011655(n+1)*A353815(n+1)` -/
def P11869556616697573668.Spec : Prop :=
  ∀ n, P11869556616697573668.a n = A070563 (n + 1)

theorem P11869556616697573668.correct : P11869556616697573668.Spec := by
  intro n
  simp only [A070563, Nat.add_sub_cancel]

end A070563

/-! ## A070563.P8191489125462667841

`((n+1)*∑{d}[n+1, #])²%3`
-/

namespace A070563.P8191489125462667841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d)) ^ 2 % 3

end

end A070563.P8191489125462667841

namespace A070563

/-- `((n+1)*∑{d}[n+1, #])²%3` -/
def P8191489125462667841.Spec : Prop :=
  ∀ n, (P8191489125462667841.a n : ℤ) = A070563 (n + 1)

end A070563

/-! ## A070563.P5613235760013790481

`lcm(n+1, ∑{d}[n+1, #]²)%3`
-/

namespace A070563.P5613235760013790481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((∑ d ∈ Nat.divisors (f1 n), d) ^ 2) % 3

end

end A070563.P5613235760013790481

namespace A070563

/-- `lcm(n+1, ∑{d}[n+1, #]²)%3` -/
def P5613235760013790481.Spec : Prop :=
  ∀ n, (P5613235760013790481.a n : ℤ) = A070563 (n + 1)

end A070563

/-! ## A070563.P11255289690286534053

`((n+1)*∑{d}[n+1, #]^2)%3`
-/

namespace A070563.P11255289690286534053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) ^ 2 % 3

end

end A070563.P11255289690286534053

namespace A070563

/-- `((n+1)*∑{d}[n+1, #]^2)%3` -/
def P11255289690286534053.Spec : Prop :=
  ∀ n, (P11255289690286534053.a n : ℤ) = A070563 (n + 1)

end A070563

/-! ## A070563.P15923676814695340798

`∑{d}[n+1, (n+1)²/#]²%3`
-/

namespace A070563.P15923676814695340798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) ^ 2 : ℚ) / (d : ℚ)) ^ 2)) 3

end

end A070563.P15923676814695340798

namespace A070563

/-- `∑{d}[n+1, (n+1)²/#]²%3` -/
def P15923676814695340798.Spec : Prop :=
  ∀ n, P15923676814695340798.a n = A070563 (n + 1)

end A070563

/-! ## A070563.P6192940235246535735

`floor(sqrt(((n+1)*∑{d}[n+1, #])%3))`
-/

namespace A070563.P6192940235246535735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) % 3)

end

end A070563.P6192940235246535735

namespace A070563

/-- `floor(sqrt(((n+1)*∑{d}[n+1, #])%3))` -/
def P6192940235246535735.Spec : Prop :=
  ∀ n, (P6192940235246535735.a n : ℤ) = A070563 (n + 1)

end A070563

/-! ## A070563.P6294676870822891007

`((n+1)*∑{d}[n+1, #]*∑{d}[n+1, #])%3`
-/

namespace A070563.P6294676870822891007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) * (∑ d ∈ Nat.divisors (f2 n), d) % 3

end

end A070563.P6294676870822891007

namespace A070563

/-- `((n+1)*∑{d}[n+1, #]*∑{d}[n+1, #])%3` -/
def P6294676870822891007.Spec : Prop :=
  ∀ n, (P6294676870822891007.a n : ℤ) = A070563 (n + 1)

end A070563

/-! ## A070563.P9204367578263571631

`Δ[A070564(n)]`
-/

namespace A070563.P9204367578263571631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070563.P9204367578263571631

namespace A070563

/-- `Δ[A070564(n)]` -/
def P9204367578263571631.Spec : Prop :=
  ∀ n, P9204367578263571631.a n = A070563 (n + 1)

end A070563

/-! ## A070563.P6832338706829718536

`A249688(n+1)%3`
-/

namespace A070563.P6832338706829718536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249688 (n + 1)) 3

end

end A070563.P6832338706829718536

namespace A070563

/-- `A249688(n+1)%3` -/
def P6832338706829718536.Spec : Prop :=
  ∀ n, P6832338706829718536.a n = A070563 (n + 1)

end A070563

/-! ## A070563.P11699982477663743071

`floor(sqrt(A126825(n+1)))`
-/

namespace A070563.P11699982477663743071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A126825 (n + 1))

end

end A070563.P11699982477663743071

namespace A070563

/-- `floor(sqrt(A126825(n+1)))` -/
def P11699982477663743071.Spec : Prop :=
  ∀ n, P11699982477663743071.a n = A070563 (n + 1)

end A070563

/-! ## A070563.P13525381991382658314

`A064987(n+1)²%3`
-/

namespace A070563.P13525381991382658314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064987 (n + 1) ^ 2) 3

end

end A070563.P13525381991382658314

namespace A070563

/-- `A064987(n+1)²%3` -/
def P13525381991382658314.Spec : Prop :=
  ∀ n, P13525381991382658314.a n = A070563 (n + 1)

end A070563

/-! ## A070563.P7679589711333494268

`char[A374135(n+1)-1]`
-/

namespace A070563.P7679589711333494268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A070563.P7679589711333494268

namespace A070563

/-- `char[A374135(n+1)-1]` -/
def P7679589711333494268.Spec : Prop :=
  ∀ n, (P7679589711333494268.a n : ℤ) = A070563 (n + 1)

end A070563

/-! ## A070563.P595271437743049513

`A000203(n+1)²%gcd(3, n)`
-/

namespace A070563.P595271437743049513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) ^ 2) (Nat.gcd 3 n : ℤ)

end

end A070563.P595271437743049513

namespace A070563

/-- `A000203(n+1)²%gcd(3, n)` -/
def P595271437743049513.Spec : Prop :=
  ∀ n, P595271437743049513.a n = A070563 (n + 1)

end A070563

/-! ## A070563.P12863895307928955180

`A000203((n+1)²%3+n)²%3`
-/

namespace A070563.P12863895307928955180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 ((n + 1) ^ 2 % 3 + n) ^ 2) 3

end

end A070563.P12863895307928955180

namespace A070563

/-- `A000203((n+1)²%3+n)²%3` -/
def P12863895307928955180.Spec : Prop :=
  ∀ n, P12863895307928955180.a n = A070563 (n + 1)

end A070563

/-! ## A070563.P8606699419428858827

`A167315(gcd((n+1)*∑{d}[n+1, #], 3^∑{e}[n+1, #]))`
-/

namespace A070563.P8606699419428858827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167315 (Nat.gcd ((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d)) (3 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)))

end

end A070563.P8606699419428858827

namespace A070563

/-- `A167315(gcd((n+1)*∑{d}[n+1, #], 3^∑{e}[n+1, #]))` -/
def P8606699419428858827.Spec : Prop :=
  ∀ n, P8606699419428858827.a n = A070563 (n + 1)

end A070563

/-! ## A070563.P16347442077684192055

`A353815(A080031(n))`
-/

namespace A070563.P16347442077684192055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353815 (A080031 n).toNat

end

end A070563.P16347442077684192055

namespace A070563

/-- `A353815(A080031(n))` -/
def P16347442077684192055.Spec : Prop :=
  ∀ n, P16347442077684192055.a n = A070563 (n + 1)

end A070563

/-! ## A070563.P8522785772662108482

`A011655(A126827(n+1))`
-/

namespace A070563.P8522785772662108482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A126827 (n + 1)).toNat

end

end A070563.P8522785772662108482

namespace A070563

/-- `A011655(A126827(n+1))` -/
def P8522785772662108482.Spec : Prop :=
  ∀ n, P8522785772662108482.a n = A070563 (n + 1)

end A070563

/-! ## A070563.P11384941392362394592

`A011655(A126828(n+1))`
-/

namespace A070563.P11384941392362394592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A126828 (n + 1)).toNat

end

end A070563.P11384941392362394592

namespace A070563

/-- `A011655(A126828(n+1))` -/
def P11384941392362394592.Spec : Prop :=
  ∀ n, P11384941392362394592.a n = A070563 (n + 1)

end A070563

/-! ## A070563.P12301032462839166898

`A011655(A126829(n+1))`
-/

namespace A070563.P12301032462839166898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A126829 (n + 1)).toNat

end

end A070563.P12301032462839166898

namespace A070563

/-- `A011655(A126829(n+1))` -/
def P12301032462839166898.Spec : Prop :=
  ∀ n, P12301032462839166898.a n = A070563 (n + 1)

end A070563

/-! ## A070563.P3651052729500864454

`A011655(A126830(n+1))`
-/

namespace A070563.P3651052729500864454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A126830 (n + 1)).toNat

end

end A070563.P3651052729500864454

namespace A070563

/-- `A011655(A126830(n+1))` -/
def P3651052729500864454.Spec : Prop :=
  ∀ n, P3651052729500864454.a n = A070563 (n + 1)

end A070563

/-!
# A070564: Partial sums of A070563.

The programs for A070564, the canonical program `A070564.P9196625145750996743` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070564 has offset 0).

The definition of A070564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070564.P9196625145750996743

`∑[∑{d}[n, n*#]²%3]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070564

/-- `∑[∑{d}[n, n*#]²%3]` -/
def P9196625145750996743.Spec : Prop :=
  ∀ n, (P9196625145750996743.a n : ℤ) = A070564 n

theorem P9196625145750996743.correct : P9196625145750996743.Spec := by
  intro n
  simp only [A070564]

end A070564

/-! ## A070564.P14118783038408539993

`∑[gcd(3, ∑{d}[n, n*#])%3]`
-/

namespace A070564.P14118783038408539993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (∑ d ∈ Nat.divisors (f2 n), n * d) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070564.P14118783038408539993

namespace A070564

/-- `∑[gcd(3, ∑{d}[n, n*#])%3]` -/
def P14118783038408539993.Spec : Prop :=
  ∀ n, (P14118783038408539993.a n : ℤ) = A070564 n

end A070564

/-! ## A070564.P797152940297543327

`∑[floor(sqrt((n^3*∑{d}[n, #])%3))]`
-/

namespace A070564.P797152940297543327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n ^ 3 * (∑ d ∈ Nat.divisors (f2 n), d) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070564.P797152940297543327

namespace A070564

/-- `∑[floor(sqrt((n^3*∑{d}[n, #])%3))]` -/
def P797152940297543327.Spec : Prop :=
  ∀ n, (P797152940297543327.a n : ℤ) = A070564 n

end A070564

/-! ## A070564.P9943153589464390061

`∑[round(cos((∑{d}[n, (n*#)^3]+2)%3))]`
-/

namespace A070564.P9943153589464390061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (((∑ d ∈ Nat.divisors (f2 n), (n * d) ^ 3 + 2) % 3 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070564.P9943153589464390061

namespace A070564

/-- `∑[round(cos((∑{d}[n, (n*#)^3]+2)%3))]` -/
def P9943153589464390061.Spec : Prop :=
  ∀ n, P9943153589464390061.a n = A070564 n

end A070564

/-! ## A070564.P13718356797078412703

`∑[lcm(n+1, ∑{d}[n+1, #]²)%3]-∑{d}[n+1, (n+1)²/#]²%3`
-/

namespace A070564.P13718356797078412703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((∑ d ∈ Nat.divisors (f2 n), d) ^ 2) % 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod (SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f3 n), ((n + 1) ^ 2 : ℚ) / (d : ℚ)) ^ 2)) 3

end

end A070564.P13718356797078412703

namespace A070564

/-- `∑[lcm(n+1, ∑{d}[n+1, #]²)%3]-∑{d}[n+1, (n+1)²/#]²%3` -/
def P13718356797078412703.Spec : Prop :=
  ∀ n, P13718356797078412703.a n = A070564 n

end A070564

/-! ## A070564.P9793877275029287913

`∑[A007332(n)²%3]`
-/

namespace A070564.P9793877275029287913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007332 n ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070564.P9793877275029287913

namespace A070564

/-- `∑[A007332(n)²%3]` -/
def P9793877275029287913.Spec : Prop :=
  ∀ n, P9793877275029287913.a n = A070564 n

end A070564

/-! ## A070564.P8507816499610126683

`∑[A198956(n)²%3]`
-/

namespace A070564.P8507816499610126683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198956 n ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070564.P8507816499610126683

namespace A070564

/-- `∑[A198956(n)²%3]` -/
def P8507816499610126683.Spec : Prop :=
  ∀ n, P8507816499610126683.a n = A070564 n

end A070564

/-! ## A070564.P17796882423506573764

`∑[char[A374135(n+1)]]`
-/

namespace A070564.P17796882423506573764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070564.P17796882423506573764

namespace A070564

/-- `∑[char[A374135(n+1)]]` -/
def P17796882423506573764.Spec : Prop :=
  ∀ n, (P17796882423506573764.a n : ℤ) = A070564 n

end A070564

/-! ## A070564.P98789081442249547

`∑[round(sin(A045833(n))²)]`
-/

namespace A070564.P98789081442249547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A045833 n : ℝ) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070564.P98789081442249547

namespace A070564

/-- `∑[round(sin(A045833(n))²)]` -/
def P98789081442249547.Spec : Prop :=
  ∀ n, P98789081442249547.a n = A070564 n

end A070564

/-! ## A070564.P9047218283421879468

`∑[(n*A000203(abs(1-n)+1))²%3]`
-/

namespace A070564.P9047218283421879468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) * A000203 (|1 - (n : ℤ)| + 1).toNat) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070564.P9047218283421879468

namespace A070564

/-- `∑[(n*A000203(abs(1-n)+1))²%3]` -/
def P9047218283421879468.Spec : Prop :=
  ∀ n, P9047218283421879468.a n = A070564 n

end A070564

/-! ## A070564.P796431829033338757

`∑[A070563(n+1)]-A070563(n+1)`
-/

namespace A070564.P796431829033338757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A070563 (n + 1)

end

end A070564.P796431829033338757

namespace A070564

/-- `∑[A070563(n+1)]-A070563(n+1)` -/
def P796431829033338757.Spec : Prop :=
  ∀ n, P796431829033338757.a n = A070564 n

end A070564

/-!
# A070565: n - product of digits of n.

The programs for A070565, the canonical program `A070565.P8773353703818407228` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070565 has offset 0).

The definition of A070565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070565.P8773353703818407228

`n-∏{digits}[n, #]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070565

/-- `n-∏{digits}[n, #]` -/
def P8773353703818407228.Spec : Prop :=
  ∀ n, P8773353703818407228.a n = A070565 n

theorem P8773353703818407228.correct : P8773353703818407228.Spec := by
  intro n
  simp only [A070565]

end A070565

/-! ## A070565.P7802772667339642299

`xor(-1, ∏{digits}[n, #])+n+1`
-/

namespace A070565.P7802772667339642299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) + (n + 1 : ℤ)

end

end A070565.P7802772667339642299

namespace A070565

/-- `xor(-1, ∏{digits}[n, #])+n+1` -/
def P7802772667339642299.Spec : Prop :=
  ∀ n, P7802772667339642299.a n = A070565 n

end A070565

/-! ## A070565.P5533400852283782206

`Δ[n²]%(∏{digits}[n, #]+n+1)`
-/

namespace A070565.P5533400852283782206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod + n + 1 : ℕ) : ℤ)

end

end A070565.P5533400852283782206

namespace A070565

/-- `Δ[n²]%(∏{digits}[n, #]+n+1)` -/
def P5533400852283782206.Spec : Prop :=
  ∀ n, P5533400852283782206.a n = A070565 n

end A070565

/-! ## A070565.P4231060354564203757

`(2*n+1)%(∏{digits}[n, #]+n+1)`
-/

namespace A070565.P4231060354564203757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + (n + 1))

end

end A070565.P4231060354564203757

namespace A070565

/-- `(2*n+1)%(∏{digits}[n, #]+n+1)` -/
def P4231060354564203757.Spec : Prop :=
  ∀ n, (P4231060354564203757.a n : ℤ) = A070565 n

end A070565

/-! ## A070565.P6633229287495729976

`n-A007954(n)`
-/

namespace A070565.P6633229287495729976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007954 n

end

end A070565.P6633229287495729976

namespace A070565

/-- `n-A007954(n)` -/
def P6633229287495729976.Spec : Prop :=
  ∀ n, P6633229287495729976.a n = A070565 n

end A070565

/-! ## A070565.P4126111871277989322

`n-abs(A187844(n))`
-/

namespace A070565.P4126111871277989322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |A187844 n|

end

end A070565.P4126111871277989322

namespace A070565

/-- `n-abs(A187844(n))` -/
def P4126111871277989322.Spec : Prop :=
  ∀ n, P4126111871277989322.a n = A070565 n

end A070565

/-! ## A070565.P867290729884620359

`2*n-A230099(n)`
-/

namespace A070565.P867290729884620359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A230099 n

end

end A070565.P867290729884620359

namespace A070565

/-- `2*n-A230099(n)` -/
def P867290729884620359.Spec : Prop :=
  ∀ n, P867290729884620359.a n = A070565 n

theorem P867290729884620359.correct : P867290729884620359.Spec := by
  intro n
  simp only [A070565, Nat.add_sub_cancel, A070565.P867290729884620359.a, A070565.P8773353703818407228.f1, A070565.P8773353703818407228.a, A230099, A230099.P7094775947428333460.f1, A230099.P7094775947428333460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070565

/-! ## A070565.P8512834055517628663

`∑{digits}[n, #]+n-A061762(n)`
-/

namespace A070565.P8512834055517628663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + n : ℕ) : ℤ) - A061762 n

end

end A070565.P8512834055517628663

namespace A070565

/-- `∑{digits}[n, #]+n-A061762(n)` -/
def P8512834055517628663.Spec : Prop :=
  ∀ n, P8512834055517628663.a n = A070565 n

end A070565

/-! ## A070565.P6116366560942803133

`A066568(n)+A062329(n)`
-/

namespace A070565.P6116366560942803133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n + A062329 n

end

end A070565.P6116366560942803133

namespace A070565

/-- `A066568(n)+A062329(n)` -/
def P6116366560942803133.Spec : Prop :=
  ∀ n, P6116366560942803133.a n = A070565 n

end A070565

/-! ## A070565.P15387960628119090081

`A249121(n)+A007953(n)`
-/

namespace A070565.P15387960628119090081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249121 n + A007953 n

end

end A070565.P15387960628119090081

namespace A070565

/-- `A249121(n)+A007953(n)` -/
def P15387960628119090081.Spec : Prop :=
  ∀ n, P15387960628119090081.a n = A070565 n

end A070565

/-! ## A070565.P15915862834453953466

`A062028(n)-A061762(n)`
-/

namespace A070565.P15915862834453953466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - A061762 n

end

end A070565.P15915862834453953466

namespace A070565

/-- `A062028(n)-A061762(n)` -/
def P15915862834453953466.Spec : Prop :=
  ∀ n, P15915862834453953466.a n = A070565 n

end A070565

/-! ## A070565.P9071884400613016610

`A249121(n)+A169805(n)/2`
-/

namespace A070565.P9071884400613016610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249121 n : ℚ) + (A169805 n : ℚ) / 2

end

end A070565.P9071884400613016610

namespace A070565

/-- `A249121(n)+A169805(n)/2` -/
def P9071884400613016610.Spec : Prop :=
  ∀ n, P9071884400613016610.a n = (A070565 n : ℚ)

end A070565

/-! ## A070565.P17415600762958191652

`A007953(n)+n-A061762(n)`
-/

namespace A070565.P17415600762958191652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + ((n : ℤ) - A061762 n)

end

end A070565.P17415600762958191652

namespace A070565

/-- `A007953(n)+n-A061762(n)` -/
def P17415600762958191652.Spec : Prop :=
  ∀ n, P17415600762958191652.a n = A070565 n

end A070565

/-! ## A070565.P8489272034366920573

`A062329(n)+n-A007953(n)`
-/

namespace A070565.P8489272034366920573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n + ((n : ℤ) - A007953 n)

end

end A070565.P8489272034366920573

namespace A070565

/-- `A062329(n)+n-A007953(n)` -/
def P8489272034366920573.Spec : Prop :=
  ∀ n, P8489272034366920573.a n = A070565 n

end A070565

/-! ## A070565.P12091734574180922208

`A249121(n)+n-A066568(n)`
-/

namespace A070565.P12091734574180922208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249121 n + ((n : ℤ) - A066568 n)

end

end A070565.P12091734574180922208

namespace A070565

/-- `A249121(n)+n-A066568(n)` -/
def P12091734574180922208.Spec : Prop :=
  ∀ n, P12091734574180922208.a n = A070565 n

end A070565

/-! ## A070565.P7332581026624850239

`n-A098736(n)/A028310(n)`
-/

namespace A070565.P7332581026624850239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A098736 n : ℚ) / (A028310 n : ℚ)

end

end A070565.P7332581026624850239

namespace A070565

/-- `n-A098736(n)/A028310(n)` -/
def P7332581026624850239.Spec : Prop :=
  ∀ n, P7332581026624850239.a n = (A070565 n : ℚ)

end A070565

/-! ## A070565.P1881314374437258787

`n-lcm(A051801(n), A054054(n))`
-/

namespace A070565.P1881314374437258787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.lcm (A051801 n) (A054054 n) : ℤ)

end

end A070565.P1881314374437258787

namespace A070565

/-- `n-lcm(A051801(n), A054054(n))` -/
def P1881314374437258787.Spec : Prop :=
  ∀ n, P1881314374437258787.a n = A070565 n

end A070565

/-! ## A070565.P992494870356128720

`A169805(n)/2+n-A061762(n)`
-/

namespace A070565.P992494870356128720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 2 + (n : ℚ) - (A061762 n : ℚ)

end

end A070565.P992494870356128720

namespace A070565

/-- `A169805(n)/2+n-A061762(n)` -/
def P992494870356128720.Spec : Prop :=
  ∀ n, P992494870356128720.a n = (A070565 n : ℚ)

end A070565

/-! ## A070565.P11719805856793578503

`A011371(n)+A092391(n)-A230099(n)`
-/

namespace A070565.P11719805856793578503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (A092391 n - A230099 n)

end

end A070565.P11719805856793578503

namespace A070565

/-- `A011371(n)+A092391(n)-A230099(n)` -/
def P11719805856793578503.Spec : Prop :=
  ∀ n, P11719805856793578503.a n = A070565 n

theorem P11719805856793578503.correct : P11719805856793578503.Spec := by
  intro n
  simp only [A070565, Nat.add_sub_cancel, A070565.P11719805856793578503.a, A070565.P8773353703818407228.f1, A070565.P8773353703818407228.a, A011371, A011371.P12398255777927387864.a, A092391, A092391.P1831081500129819331.a, A230099, A230099.P7094775947428333460.f1, A230099.P7094775947428333460.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070565

/-! ## A070565.P7375051423360919687

`A001057(2*A007954(n))+n`
-/

namespace A070565.P7375051423360919687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A007954 n).toNat + (n : ℤ)

end

end A070565.P7375051423360919687

namespace A070565

/-- `A001057(2*A007954(n))+n` -/
def P7375051423360919687.Spec : Prop :=
  ∀ n, P7375051423360919687.a n = A070565 n

end A070565

/-!
# A070566: "Compact" numbers: see reference for definition.

The programs for A070566, there is no canonical definition to state claims against.
-/

/-! ## A070566.P2158475141039013290

`lt[A004443(A326842(n)), A001222(3*n+5)]`
-/

namespace A070566.P2158475141039013290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A326842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070566.P2158475141039013290

/-! ## A070566.P16910254557054028223

`A327076(∪[A136327(n+1), A145554(n+1)])`
-/

namespace A070566.P16910254557054028223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145554 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A070566.P16910254557054028223

/-! ## A070566.P7440589599232112335

`record[and(A250250(n+2), A327076(n+2))]`
-/

namespace A070566.P7440589599232112335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A250250 (n + 2)) (A327076 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070566.P7440589599232112335

/-! ## A070566.P5298804168151570115

`lt[A296132(n+1), A196839(A001105(n))]`
-/

namespace A070566.P5298804168151570115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196839 (A001105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070566.P5298804168151570115

/-! ## A070566.P17729289133537570998

`lt[A325567(n+1), A196839(A001105(n))]`
-/

namespace A070566.P17729289133537570998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196839 (A001105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070566.P17729289133537570998

/-!
# A070567: a(n) = n^4 mod 24.

The programs for A070567, the canonical program `A070567.P12517893732606410256` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070567 has offset 0).

The definition of A070567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%24` (program `A070567.P12517893732606410256`, by `A070567.P12517893732606410256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070567.P12517893732606410256

`(n^4)%24`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070567

/-- `(n^4)%24` -/
def P12517893732606410256.Spec : Prop :=
  ∀ n, (P12517893732606410256.a n : ℤ) = A070567 n

theorem P12517893732606410256.correct : P12517893732606410256.Spec := by
  intro n
  simp only [A070567]

end A070567

/-!
# A070568: a(n) = n^4 mod 25.

The programs for A070568, the canonical program `A070568.P10490807712328987284` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070568 has offset 0).

The definition of A070568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%25` (program `A070568.P10490807712328987284`, by `A070568.P10490807712328987284.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070568.P10490807712328987284

`(n^4)%25`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070568

/-- `(n^4)%25` -/
def P10490807712328987284.Spec : Prop :=
  ∀ n, (P10490807712328987284.a n : ℤ) = A070568 n

theorem P10490807712328987284.correct : P10490807712328987284.Spec := by
  intro n
  simp only [A070568]

end A070568

/-!
# A070569: a(n) = n^4 mod 26.

The programs for A070569, the canonical program `A070569.P15448264399439248417` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070569 has offset 0).

The definition of A070569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%26` (program `A070569.P15448264399439248417`, by `A070569.P15448264399439248417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070569.P15448264399439248417

`(n^4)%26`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070569

/-- `(n^4)%26` -/
def P15448264399439248417.Spec : Prop :=
  ∀ n, (P15448264399439248417.a n : ℤ) = A070569 n

theorem P15448264399439248417.correct : P15448264399439248417.Spec := by
  intro n
  simp only [A070569]

end A070569

/-!
# A070570: a(n) = n^4 mod 27.

The programs for A070570, the canonical program `A070570.P2204984223092488304` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070570 has offset 0).

The definition of A070570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%27` (program `A070570.P2204984223092488304`, by `A070570.P2204984223092488304.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070570.P2204984223092488304

`(n^4)%27`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070570

/-- `(n^4)%27` -/
def P2204984223092488304.Spec : Prop :=
  ∀ n, (P2204984223092488304.a n : ℤ) = A070570 n

theorem P2204984223092488304.correct : P2204984223092488304.Spec := by
  intro n
  simp only [A070570]

end A070570

/-!
# A070571: a(n) = n^4 mod 28.

The programs for A070571, the canonical program `A070571.P4274079522636602736` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070571 has offset 0).

The definition of A070571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%28` (program `A070571.P4274079522636602736`, by `A070571.P4274079522636602736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070571.P4274079522636602736

`(n^4)%28`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070571

/-- `(n^4)%28` -/
def P4274079522636602736.Spec : Prop :=
  ∀ n, (P4274079522636602736.a n : ℤ) = A070571 n

theorem P4274079522636602736.correct : P4274079522636602736.Spec := by
  intro n
  simp only [A070571]

end A070571

/-!
# A070572: a(n) = n^4 mod 29.

The programs for A070572, the canonical program `A070572.P9218308096083047191` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070572 has offset 0).

The definition of A070572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%29` (program `A070572.P9218308096083047191`, by `A070572.P9218308096083047191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070572.P9218308096083047191

`(n^4)%29`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070572

/-- `(n^4)%29` -/
def P9218308096083047191.Spec : Prop :=
  ∀ n, (P9218308096083047191.a n : ℤ) = A070572 n

theorem P9218308096083047191.correct : P9218308096083047191.Spec := by
  intro n
  simp only [A070572]

end A070572

/-!
# A070573: a(n) = n^4 mod 30.

The programs for A070573, the canonical program `A070573.P17887134406610134795` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070573 has offset 0).

The definition of A070573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%30` (program `A070573.P17887134406610134795`, by `A070573.P17887134406610134795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070573.P17887134406610134795

`(n^4)%30`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070573

/-- `(n^4)%30` -/
def P17887134406610134795.Spec : Prop :=
  ∀ n, (P17887134406610134795.a n : ℤ) = A070573 n

theorem P17887134406610134795.correct : P17887134406610134795.Spec := by
  intro n
  simp only [A070573]

end A070573

/-!
# A070574: a(n) = n^4 mod 31.

The programs for A070574, the canonical program `A070574.P3967205766759917016` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070574 has offset 0).

The definition of A070574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%31` (program `A070574.P3967205766759917016`, by `A070574.P3967205766759917016.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070574.P3967205766759917016

`(n^4)%31`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070574

/-- `(n^4)%31` -/
def P3967205766759917016.Spec : Prop :=
  ∀ n, (P3967205766759917016.a n : ℤ) = A070574 n

theorem P3967205766759917016.correct : P3967205766759917016.Spec := by
  intro n
  simp only [A070574]

end A070574

/-!
# A070575: a(n) = n^4 mod 32.

The programs for A070575, the canonical program `A070575.P8029253604659982879` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070575 has offset 0).

The definition of A070575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%32` (program `A070575.P8029253604659982879`, by `A070575.P8029253604659982879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070575.P8029253604659982879

`(n^4)%32`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070575

/-- `(n^4)%32` -/
def P8029253604659982879.Spec : Prop :=
  ∀ n, (P8029253604659982879.a n : ℤ) = A070575 n

theorem P8029253604659982879.correct : P8029253604659982879.Spec := by
  intro n
  simp only [A070575]

end A070575

/-!
# A070576: a(n) = n^4 mod 33.

The programs for A070576, the canonical program `A070576.P7175982811432111376` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070576 has offset 0).

The definition of A070576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%33` (program `A070576.P7175982811432111376`, by `A070576.P7175982811432111376.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070576.P7175982811432111376

`(n^4)%33`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070576

/-- `(n^4)%33` -/
def P7175982811432111376.Spec : Prop :=
  ∀ n, (P7175982811432111376.a n : ℤ) = A070576 n

theorem P7175982811432111376.correct : P7175982811432111376.Spec := by
  intro n
  simp only [A070576]

end A070576

/-!
# A070577: a(n) = n^4 mod 34.

The programs for A070577, the canonical program `A070577.P2926029159382558726` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070577 has offset 0).

The definition of A070577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%34` (program `A070577.P2926029159382558726`, by `A070577.P2926029159382558726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070577.P2926029159382558726

`(n^4)%34`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070577

/-- `(n^4)%34` -/
def P2926029159382558726.Spec : Prop :=
  ∀ n, (P2926029159382558726.a n : ℤ) = A070577 n

theorem P2926029159382558726.correct : P2926029159382558726.Spec := by
  intro n
  simp only [A070577]

end A070577

/-!
# A070578: a(n) = n^4 mod 35.

The programs for A070578, the canonical program `A070578.P9419788483335888794` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070578 has offset 0).

The definition of A070578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%35` (program `A070578.P9419788483335888794`, by `A070578.P9419788483335888794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070578.P9419788483335888794

`(n^4)%35`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070578

/-- `(n^4)%35` -/
def P9419788483335888794.Spec : Prop :=
  ∀ n, (P9419788483335888794.a n : ℤ) = A070578 n

theorem P9419788483335888794.correct : P9419788483335888794.Spec := by
  intro n
  simp only [A070578]

end A070578

/-!
# A070579: a(n) = n^4 mod 36.

The programs for A070579, the canonical program `A070579.P2692570409952231511` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070579 has offset 0).

The definition of A070579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%36` (program `A070579.P2692570409952231511`, by `A070579.P2692570409952231511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070579.P2692570409952231511

`(n^4)%36`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070579

/-- `(n^4)%36` -/
def P2692570409952231511.Spec : Prop :=
  ∀ n, (P2692570409952231511.a n : ℤ) = A070579 n

theorem P2692570409952231511.correct : P2692570409952231511.Spec := by
  intro n
  simp only [A070579]

end A070579

/-!
# A070580: a(n) = n^4 mod 37.

The programs for A070580, the canonical program `A070580.P17186996685340434407` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070580 has offset 0).

The definition of A070580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%37` (program `A070580.P17186996685340434407`, by `A070580.P17186996685340434407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070580.P17186996685340434407

`(n^4)%37`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070580

/-- `(n^4)%37` -/
def P17186996685340434407.Spec : Prop :=
  ∀ n, (P17186996685340434407.a n : ℤ) = A070580 n

theorem P17186996685340434407.correct : P17186996685340434407.Spec := by
  intro n
  simp only [A070580]

end A070580

/-!
# A070581: a(n) = n^4 mod 38.

The programs for A070581, the canonical program `A070581.P9433214768191612643` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070581 has offset 0).

The definition of A070581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%38` (program `A070581.P9433214768191612643`, by `A070581.P9433214768191612643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070581.P9433214768191612643

`(n^4)%38`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070581

/-- `(n^4)%38` -/
def P9433214768191612643.Spec : Prop :=
  ∀ n, (P9433214768191612643.a n : ℤ) = A070581 n

theorem P9433214768191612643.correct : P9433214768191612643.Spec := by
  intro n
  simp only [A070581]

end A070581

/-!
# A070582: a(n) = n^4 mod 39.

The programs for A070582, the canonical program `A070582.P15900372405393351765` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070582 has offset 0).

The definition of A070582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%39` (program `A070582.P15900372405393351765`, by `A070582.P15900372405393351765.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070582.P15900372405393351765

`(n^4)%39`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070582

/-- `(n^4)%39` -/
def P15900372405393351765.Spec : Prop :=
  ∀ n, (P15900372405393351765.a n : ℤ) = A070582 n

theorem P15900372405393351765.correct : P15900372405393351765.Spec := by
  intro n
  simp only [A070582]

end A070582

/-!
# A070583: a(n) = n^4 mod 40.

The programs for A070583, the canonical program `A070583.P4944730656812248177` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070583 has offset 0).

The definition of A070583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%40` (program `A070583.P4944730656812248177`, by `A070583.P4944730656812248177.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070583.P4944730656812248177

`(n^4)%40`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070583

/-- `(n^4)%40` -/
def P4944730656812248177.Spec : Prop :=
  ∀ n, (P4944730656812248177.a n : ℤ) = A070583 n

theorem P4944730656812248177.correct : P4944730656812248177.Spec := by
  intro n
  simp only [A070583]

end A070583

/-!
# A070584: a(n) = n^4 mod 41.

The programs for A070584, the canonical program `A070584.P13919625733112180211` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070584 has offset 0).

The definition of A070584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%41` (program `A070584.P13919625733112180211`, by `A070584.P13919625733112180211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070584.P13919625733112180211

`(n^4)%41`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070584

/-- `(n^4)%41` -/
def P13919625733112180211.Spec : Prop :=
  ∀ n, (P13919625733112180211.a n : ℤ) = A070584 n

theorem P13919625733112180211.correct : P13919625733112180211.Spec := by
  intro n
  simp only [A070584]

end A070584

/-!
# A070585: a(n) = n^4 mod 42.

The programs for A070585, the canonical program `A070585.P7078322027425363896` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070585 has offset 0).

The definition of A070585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%42` (program `A070585.P7078322027425363896`, by `A070585.P7078322027425363896.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070585.P7078322027425363896

`(n^4)%42`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070585

/-- `(n^4)%42` -/
def P7078322027425363896.Spec : Prop :=
  ∀ n, (P7078322027425363896.a n : ℤ) = A070585 n

theorem P7078322027425363896.correct : P7078322027425363896.Spec := by
  intro n
  simp only [A070585]

end A070585

/-!
# A070586: a(n) = n^4 mod 43.

The programs for A070586, the canonical program `A070586.P13179581914409986246` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070586 has offset 0).

The definition of A070586 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%43` (program `A070586.P13179581914409986246`, by `A070586.P13179581914409986246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070586.P13179581914409986246

`(n^4)%43`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070586

/-- `(n^4)%43` -/
def P13179581914409986246.Spec : Prop :=
  ∀ n, (P13179581914409986246.a n : ℤ) = A070586 n

theorem P13179581914409986246.correct : P13179581914409986246.Spec := by
  intro n
  simp only [A070586]

end A070586

/-!
# A070587: a(n) = n^4 mod 44.

The programs for A070587, the canonical program `A070587.P11842817594351834643` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070587 has offset 0).

The definition of A070587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%44` (program `A070587.P11842817594351834643`, by `A070587.P11842817594351834643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070587.P11842817594351834643

`(n^4)%44`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070587

/-- `(n^4)%44` -/
def P11842817594351834643.Spec : Prop :=
  ∀ n, (P11842817594351834643.a n : ℤ) = A070587 n

theorem P11842817594351834643.correct : P11842817594351834643.Spec := by
  intro n
  simp only [A070587]

end A070587

/-!
# A070588: a(n) = n^4 mod 45.

The programs for A070588, the canonical program `A070588.P2405269052891366513` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070588 has offset 0).

The definition of A070588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%45` (program `A070588.P2405269052891366513`, by `A070588.P2405269052891366513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070588.P2405269052891366513

`(n^4)%45`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070588

/-- `(n^4)%45` -/
def P2405269052891366513.Spec : Prop :=
  ∀ n, (P2405269052891366513.a n : ℤ) = A070588 n

theorem P2405269052891366513.correct : P2405269052891366513.Spec := by
  intro n
  simp only [A070588]

end A070588

/-!
# A070589: a(n) = n^4 mod 46.

The programs for A070589, the canonical program `A070589.P15668357856705475539` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070589 has offset 0).

The definition of A070589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%46` (program `A070589.P15668357856705475539`, by `A070589.P15668357856705475539.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070589.P15668357856705475539

`(n^4)%46`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070589

/-- `(n^4)%46` -/
def P15668357856705475539.Spec : Prop :=
  ∀ n, (P15668357856705475539.a n : ℤ) = A070589 n

theorem P15668357856705475539.correct : P15668357856705475539.Spec := by
  intro n
  simp only [A070589]

end A070589

/-!
# A070590: a(n) = n^4 mod 47.

The programs for A070590, the canonical program `A070590.P2859710448694475272` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070590 has offset 0).

The definition of A070590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%47` (program `A070590.P2859710448694475272`, by `A070590.P2859710448694475272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070590.P2859710448694475272

`(n^4)%47`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070590

/-- `(n^4)%47` -/
def P2859710448694475272.Spec : Prop :=
  ∀ n, (P2859710448694475272.a n : ℤ) = A070590 n

theorem P2859710448694475272.correct : P2859710448694475272.Spec := by
  intro n
  simp only [A070590]

end A070590

/-!
# A070591: a(n) = n^4 mod 48.

The programs for A070591, the canonical program `A070591.P2728292423439476844` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070591 has offset 0).

The definition of A070591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%48` (program `A070591.P2728292423439476844`, by `A070591.P2728292423439476844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070591.P2728292423439476844

`(n^4)%48`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070591

/-- `(n^4)%48` -/
def P2728292423439476844.Spec : Prop :=
  ∀ n, (P2728292423439476844.a n : ℤ) = A070591 n

theorem P2728292423439476844.correct : P2728292423439476844.Spec := by
  intro n
  simp only [A070591]

end A070591

/-!
# A070592: Largest prime factor of the n-th Fermat number F(n) = 2^(2^n) + 1.

The programs for A070592, there is no canonical definition to state claims against.
-/

/-! ## A070592.P9915003219480309996

`A002587(2^n)`
-/

namespace A070592.P9915003219480309996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (2 ^ n)

end

end A070592.P9915003219480309996

/-! ## A070592.P1899416219423718877

`A274906(2^n)`
-/

namespace A070592.P1899416219423718877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274906 (2 ^ n)

end

end A070592.P1899416219423718877

/-! ## A070592.P14643879123337656863

`or(1, A002587(A000079(n)))`
-/

namespace A070592.P14643879123337656863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002587 (A000079 n).toNat)

end

end A070592.P14643879123337656863

/-! ## A070592.P8918151905771898729

`or(1, A274903(A131577(n)))`
-/

namespace A070592.P8918151905771898729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A274903 (A131577 n).toNat)

end

end A070592.P8918151905771898729

/-! ## A070592.P1941552438158547565

`A093179(n)+2*A257917(n)`
-/

namespace A070592.P1941552438158547565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093179 n + 2 * A257917 n

end

end A070592.P1941552438158547565

/-!
# A070593: a(n) = n^5 mod 7.

The programs for A070593, the canonical program `A070593.P270678160015829560` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070593 has offset 0).

The definition of A070593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%7` (program `A070593.P270678160015829560`, by `A070593.P270678160015829560.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070593.P270678160015829560

`(n^5)%7`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070593

/-- `(n^5)%7` -/
def P270678160015829560.Spec : Prop :=
  ∀ n, (P270678160015829560.a n : ℤ) = A070593 n

theorem P270678160015829560.correct : P270678160015829560.Spec := by
  intro n
  simp only [A070593]

end A070593

/-!
# A070595: a(n) = n^5 mod 9.

The programs for A070595, the canonical program `A070595.P8658359655410696601` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070595 has offset 0).

The definition of A070595 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%9` (program `A070595.P8658359655410696601`, by `A070595.P8658359655410696601.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070595.P8658359655410696601

`(n^5)%9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070595

/-- `(n^5)%9` -/
def P8658359655410696601.Spec : Prop :=
  ∀ n, (P8658359655410696601.a n : ℤ) = A070595 n

theorem P8658359655410696601.correct : P8658359655410696601.Spec := by
  intro n
  simp only [A070595]

end A070595

/-!
# A070596: n^5 mod 11.

The programs for A070596, the canonical program `A070596.P2022854988770605576` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070596 has offset 0).

The definition of A070596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%11` (program `A070596.P2022854988770605576`, by `A070596.P2022854988770605576.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070596.P2022854988770605576

`(n^5)%11`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070596

/-- `(n^5)%11` -/
def P2022854988770605576.Spec : Prop :=
  ∀ n, (P2022854988770605576.a n : ℤ) = A070596 n

theorem P2022854988770605576.correct : P2022854988770605576.Spec := by
  intro n
  simp only [A070596]

end A070596

/-!
# A070598: n^5 mod 13.

The programs for A070598, the canonical program `A070598.P16740936729610378642` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070598 has offset 0).

The definition of A070598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%13` (program `A070598.P16740936729610378642`, by `A070598.P16740936729610378642.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070598.P16740936729610378642

`(n^5)%13`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070598

/-- `(n^5)%13` -/
def P16740936729610378642.Spec : Prop :=
  ∀ n, (P16740936729610378642.a n : ℤ) = A070598 n

theorem P16740936729610378642.correct : P16740936729610378642.Spec := by
  intro n
  simp only [A070598]

end A070598

/-!
# A070599: a(n) = n^5 mod 14.

The programs for A070599, the canonical program `A070599.P306759182467789987` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070599 has offset 0).

The definition of A070599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%14` (program `A070599.P306759182467789987`, by `A070599.P306759182467789987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070599.P306759182467789987

`(n^5)%14`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070599

/-- `(n^5)%14` -/
def P306759182467789987.Spec : Prop :=
  ∀ n, (P306759182467789987.a n : ℤ) = A070599 n

theorem P306759182467789987.correct : P306759182467789987.Spec := by
  intro n
  simp only [A070599]

end A070599

