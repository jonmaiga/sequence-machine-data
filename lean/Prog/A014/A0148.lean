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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
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
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A014800: Squares of even pentagonal pyramidal numbers.

The programs for A014800, the canonical program `A014800.P2273199219336145023` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014800 has offset 0).

The definition of A014800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014800.P2273199219336145023

`A015224(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014800

/-- `A015224(n)²` -/
def P2273199219336145023.Spec : Prop :=
  ∀ n, P2273199219336145023.a n = A014800 n

theorem P2273199219336145023.correct : P2273199219336145023.Spec := by
  intro n
  simp only [A014800]

end A014800

/-! ## A014800.P9820311088267091448

`(A000217(A004772(n+1))*A004772(n+1))²`
-/

namespace A014800.P9820311088267091448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (A004772 (n + 1)).toNat * A004772 (n + 1)) ^ 2

end

end A014800.P9820311088267091448

namespace A014800

/-- `(A000217(A004772(n+1))*A004772(n+1))²` -/
def P9820311088267091448.Spec : Prop :=
  ∀ n, P9820311088267091448.a n = A014800 n

end A014800

/-! ## A014800.P14478464091173083356

`A015224(n)^A020639(A089257(n+1))`
-/

namespace A014800.P14478464091173083356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015224 n : ℚ) ^ (A020639 (A089257 (n + 1)).toNat : ℤ)

end

end A014800.P14478464091173083356

namespace A014800

/-- `A015224(n)^A020639(A089257(n+1))` -/
def P14478464091173083356.Spec : Prop :=
  ∀ n, P14478464091173083356.a n = (A014800 n : ℚ)

end A014800

/-! ## A014800.P1045918029159592217

`A015224(n)^A020639(A160411(n+1))`
-/

namespace A014800.P1045918029159592217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015224 n : ℚ) ^ (A020639 (A160411 (n + 1)).toNat : ℤ)

end

end A014800.P1045918029159592217

namespace A014800

/-- `A015224(n)^A020639(A160411(n+1))` -/
def P1045918029159592217.Spec : Prop :=
  ∀ n, P1045918029159592217.a n = (A014800 n : ℚ)

end A014800

/-! ## A014800.P10253951409681290777

`A002411(ceil(4*n/3))²`
-/

namespace A014800.P10253951409681290777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 ⌈4 * ((n : ℚ) / 3)⌉.toNat ^ 2

end

end A014800.P10253951409681290777

namespace A014800

/-- `A002411(ceil(4*n/3))²` -/
def P10253951409681290777.Spec : Prop :=
  ∀ n, P10253951409681290777.a n = A014800 n

end A014800

/-! ## A014800.P13973237395615503401

`record[lcm(n+1, A000124(n))-A000217(n+1)]²`
-/

namespace A014800.P13973237395615503401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000124 n) : ℤ) - A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A014800.P13973237395615503401

namespace A014800

/-- `record[lcm(n+1, A000124(n))-A000217(n+1)]²` -/
def P13973237395615503401.Spec : Prop :=
  ∀ n, P13973237395615503401.a n = A014800 n

end A014800

/-! ## A014800.P1516895665239854595

`record[(A000217(A080412(n))*A080412(n))²]`
-/

namespace A014800.P1516895665239854595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (A080412 n).toNat * A080412 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014800.P1516895665239854595

namespace A014800

/-- `record[(A000217(A080412(n))*A080412(n))²]` -/
def P1516895665239854595.Spec : Prop :=
  ∀ n, P1516895665239854595.a n = A014800 n

end A014800

/-! ## A014800.P7494421763359108340

`A015224(A004525(2*n))*A015224(n)`
-/

namespace A014800.P7494421763359108340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015224 (A004525 (2 * n)).toNat * A015224 n

end

end A014800.P7494421763359108340

namespace A014800

/-- `A015224(A004525(2*n))*A015224(n)` -/
def P7494421763359108340.Spec : Prop :=
  ∀ n, P7494421763359108340.a n = A014800 n

end A014800

/-! ## A014800.P17374687043433024965

`A015224(A004526(2*n))*A015224(n)`
-/

namespace A014800.P17374687043433024965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015224 (A004526 (2 * n)).toNat * A015224 n

end

end A014800.P17374687043433024965

namespace A014800

/-- `A015224(A004526(2*n))*A015224(n)` -/
def P17374687043433024965.Spec : Prop :=
  ∀ n, P17374687043433024965.a n = A014800 n

end A014800

/-! ## A014800.P15161568650173987240

`A015224(n)^A007500(A265722(2*n))`
-/

namespace A014800.P15161568650173987240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015224 n : ℚ) ^ (A007500 (A265722 (2 * n)).toNat : ℤ)

end

end A014800.P15161568650173987240

namespace A014800

/-- `A015224(n)^A007500(A265722(2*n))` -/
def P15161568650173987240.Spec : Prop :=
  ∀ n, P15161568650173987240.a n = (A014800 n : ℚ)

end A014800

/-! ## A014800.P17155171811273721897

`(A000217(A004523(2*n+1))*A004523(2*n+1))²`
-/

namespace A014800.P17155171811273721897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (A004523 (2 * n + 1)).toNat * A004523 (2 * n + 1)) ^ 2

end

end A014800.P17155171811273721897

namespace A014800

/-- `(A000217(A004523(2*n+1))*A004523(2*n+1))²` -/
def P17155171811273721897.Spec : Prop :=
  ∀ n, P17155171811273721897.a n = A014800 n

end A014800

/-! ## A014800.P2877085489335456317

`(A000217(A322042(2*n+1))*A322042(2*n+1))²`
-/

namespace A014800.P2877085489335456317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (A322042 (2 * n + 1)).toNat * A322042 (2 * n + 1)) ^ 2

end

end A014800.P2877085489335456317

namespace A014800

/-- `(A000217(A322042(2*n+1))*A322042(2*n+1))²` -/
def P2877085489335456317.Spec : Prop :=
  ∀ n, P2877085489335456317.a n = A014800 n

end A014800

/-! ## A014800.P6459177032959622590

`A188067(A047407(n+1))²`
-/

namespace A014800.P6459177032959622590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 (A047407 (n + 1)).toNat ^ 2

end

end A014800.P6459177032959622590

namespace A014800

/-- `A188067(A047407(n+1))²` -/
def P6459177032959622590.Spec : Prop :=
  ∀ n, P6459177032959622590.a n = A014800 n

end A014800

/-! ## A014800.P9477910502734410944

`A028724(A047395(n+2))²`
-/

namespace A014800.P9477910502734410944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (A047395 (n + 2)).toNat ^ 2

end

end A014800.P9477910502734410944

namespace A014800

/-- `A028724(A047395(n+2))²` -/
def P9477910502734410944.Spec : Prop :=
  ∀ n, P9477910502734410944.a n = A014800 n

end A014800

/-! ## A014800.P10993651976097309112

`(A000217(A285870(4*n))*A285870(4*n))²`
-/

namespace A014800.P10993651976097309112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (A285870 (4 * n)).toNat * A285870 (4 * n)) ^ 2

end

end A014800.P10993651976097309112

namespace A014800

/-- `(A000217(A285870(4*n))*A285870(4*n))²` -/
def P10993651976097309112.Spec : Prop :=
  ∀ n, P10993651976097309112.a n = A014800 n

end A014800

/-! ## A014800.P13946651971608630277

`A015224(n)^A020639(A347634(n+1))`
-/

namespace A014800.P13946651971608630277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015224 n : ℚ) ^ (A020639 (A347634 (n + 1)).toNat : ℤ)

end

end A014800.P13946651971608630277

namespace A014800

/-- `A015224(n)^A020639(A347634(n+1))` -/
def P13946651971608630277.Spec : Prop :=
  ∀ n, P13946651971608630277.a n = (A014800 n : ℚ)

end A014800

/-!
# A014801: Squares of odd hexagonal pyramidal numbers.

The programs for A014801, the canonical program `A014801.P14746116168998849138` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014801 has offset 0).

The definition of A014801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014801.P14746116168998849138

`A015225(n+1)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014801

/-- `A015225(n+1)²` -/
def P14746116168998849138.Spec : Prop :=
  ∀ n, P14746116168998849138.a n = A014801 n

theorem P14746116168998849138.correct : P14746116168998849138.Spec := by
  intro n
  simp only [A014801]

end A014801

/-! ## A014801.P1837836078672147585

`A002412(or(1, n)+n)²`
-/

namespace A014801.P1837836078672147585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (Nat.lor 1 n + n) ^ 2

end

end A014801.P1837836078672147585

namespace A014801

/-- `A002412(or(1, n)+n)²` -/
def P1837836078672147585.Spec : Prop :=
  ∀ n, P1837836078672147585.a n = A014801 n

end A014801

/-! ## A014801.P9113858472751001582

`record[A002412(n)^and(2, n+1)]`
-/

namespace A014801.P9113858472751001582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 n ^ Nat.land 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014801.P9113858472751001582

namespace A014801

/-- `record[A002412(n)^and(2, n+1)]` -/
def P9113858472751001582.Spec : Prop :=
  ∀ n, P9113858472751001582.a n = A014801 n

end A014801

/-! ## A014801.P9905124754663481130

`A002412(record[and(2, n)+1+n])²`
-/

namespace A014801.P9905124754663481130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A014801.P9905124754663481130

namespace A014801

/-- `A002412(record[and(2, n)+1+n])²` -/
def P9905124754663481130.Spec : Prop :=
  ∀ n, P9905124754663481130.a n = A014801 n

end A014801

/-! ## A014801.P13870566566447318494

`A002412(A042948(n)+1)²`
-/

namespace A014801.P13870566566447318494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A042948 n + 1).toNat ^ 2

end

end A014801.P13870566566447318494

namespace A014801

/-- `A002412(A042948(n)+1)²` -/
def P13870566566447318494.Spec : Prop :=
  ∀ n, P13870566566447318494.a n = A014801 n

end A014801

/-! ## A014801.P2637804188041208785

`A002412(A042963(n+1))²`
-/

namespace A014801.P2637804188041208785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A042963 (n + 1)).toNat ^ 2

end

end A014801.P2637804188041208785

namespace A014801

/-- `A002412(A042963(n+1))²` -/
def P2637804188041208785.Spec : Prop :=
  ∀ n, P2637804188041208785.a n = A014801 n

end A014801

/-! ## A014801.P659262061250311463

`A002412(A109613(n)+n)²`
-/

namespace A014801.P659262061250311463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A109613 n + (n : ℤ)).toNat ^ 2

end

end A014801.P659262061250311463

namespace A014801

/-- `A002412(A109613(n)+n)²` -/
def P659262061250311463.Spec : Prop :=
  ∀ n, P659262061250311463.a n = A014801 n

end A014801

/-! ## A014801.P2648542572416493092

`A002412(A014601(n+1)-2)²`
-/

namespace A014801.P2648542572416493092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A014601 (n + 1) - 2).toNat ^ 2

end

end A014801.P2648542572416493092

namespace A014801

/-- `A002412(A014601(n+1)-2)²` -/
def P2648542572416493092.Spec : Prop :=
  ∀ n, P2648542572416493092.a n = A014801 n

end A014801

/-! ## A014801.P6387753483672105322

`A002412(A154708(n+1)-2)²`
-/

namespace A014801.P6387753483672105322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A154708 (n + 1) - 2).toNat ^ 2

end

end A014801.P6387753483672105322

namespace A014801

/-- `A002412(A154708(n+1)-2)²` -/
def P6387753483672105322.Spec : Prop :=
  ∀ n, P6387753483672105322.a n = A014801 n

end A014801

/-! ## A014801.P15229681353981542756

`A002623(A047467(n+1))²`
-/

namespace A014801.P15229681353981542756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (A047467 (n + 1)).toNat ^ 2

end

end A014801.P15229681353981542756

namespace A014801

/-- `A002623(A047467(n+1))²` -/
def P15229681353981542756.Spec : Prop :=
  ∀ n, P15229681353981542756.a n = A014801 n

end A014801

/-! ## A014801.P1372191641445605829

`A023855(A047471(n+1))²`
-/

namespace A014801.P1372191641445605829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (A047471 (n + 1)).toNat ^ 2

end

end A014801.P1372191641445605829

namespace A014801

/-- `A023855(A047471(n+1))²` -/
def P1372191641445605829.Spec : Prop :=
  ∀ n, P1372191641445605829.a n = A014801 n

end A014801

/-! ## A014801.P11939742740303303130

`A173196(A047463(n+1))²`
-/

namespace A014801.P11939742740303303130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A047463 (n + 1)).toNat ^ 2

end

end A014801.P11939742740303303130

namespace A014801

/-- `A173196(A047463(n+1))²` -/
def P11939742740303303130.Spec : Prop :=
  ∀ n, P11939742740303303130.a n = A014801 n

end A014801

/-! ## A014801.P9913190900019105913

`A173196(2*A042963(n+1))²`
-/

namespace A014801.P9913190900019105913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (2 * A042963 (n + 1)).toNat ^ 2

end

end A014801.P9913190900019105913

namespace A014801

/-- `A173196(2*A042963(n+1))²` -/
def P9913190900019105913.Spec : Prop :=
  ∀ n, P9913190900019105913.a n = A014801 n

end A014801

/-! ## A014801.P8434953383974862596

`A002623(8*n+6-A047406(n+2))²`
-/

namespace A014801.P8434953383974862596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 ((8 * n + 6 : ℤ) - A047406 (n + 2)).toNat ^ 2

end

end A014801.P8434953383974862596

namespace A014801

/-- `A002623(8*n+6-A047406(n+2))²` -/
def P8434953383974862596.Spec : Prop :=
  ∀ n, P8434953383974862596.a n = A014801 n

end A014801

/-!
# A014802: Inverse of 793rd cyclotomic polynomial.

The programs for A014802, there is no canonical definition to state claims against.
-/

/-! ## A014802.P12580410886122298488

`(A004442(n)-n)*A015595(n)`
-/

namespace A014802.P12580410886122298488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A015595 n

end

end A014802.P12580410886122298488

/-!
# A014803: Squares of even hexagonal pyramidal numbers.

The programs for A014803, the canonical program `A014803.P6482634091243957279` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014803 has offset 0).

The definition of A014803 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A015226, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014803.P6482634091243957279

`A015226(n)²`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014803

/-- `A015226(n)²` -/
def P6482634091243957279.Spec : Prop :=
  ∀ n, P6482634091243957279.a n = A014803 n

theorem P6482634091243957279.correct : P6482634091243957279.Spec := by
  intro n
  simp only [A014803]

end A014803

/-! ## A014803.P4261093097658122398

`A015226(2*n-n)^2`
-/

namespace A014803.P4261093097658122398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015226 (2 * n - n) ^ 2

end

end A014803.P4261093097658122398

namespace A014803

/-- `A015226(2*n-n)^2` -/
def P4261093097658122398.Spec : Prop :=
  ∀ n, P4261093097658122398.a n = A014803 n

end A014803

/-! ## A014803.P3705715457141186940

`A002412(record[or(2, n)+1])²`
-/

namespace A014803.P3705715457141186940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A014803.P3705715457141186940

namespace A014803

/-- `A002412(record[or(2, n)+1])²` -/
def P3705715457141186940.Spec : Prop :=
  ∀ n, P3705715457141186940.a n = A014803 n

theorem P3705715457141186940.correct : P3705715457141186940.Spec := by
  intro n
  simp only [A014803, Nat.add_sub_cancel, A014803.P3705715457141186940.f1, A014803.P3705715457141186940.a, A014803.P6482634091243957279.a, A002412, A002412.P686406262473725018.a, A015226, A015226.P15515667176513301738.f1, A015226.P15515667176513301738.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014803

/-! ## A014803.P16461699492390303880

`A002412(A014601(n+1))²`
-/

namespace A014803.P16461699492390303880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A014601 (n + 1)).toNat ^ 2

end

end A014803.P16461699492390303880

namespace A014803

/-- `A002412(A014601(n+1))²` -/
def P16461699492390303880.Spec : Prop :=
  ∀ n, P16461699492390303880.a n = A014803 n

end A014803

/-! ## A014803.P3513906324376343254

`A002412(A154708(n+1))²`
-/

namespace A014803.P3513906324376343254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A154708 (n + 1)).toNat ^ 2

end

end A014803.P3513906324376343254

namespace A014803

/-- `A002412(A154708(n+1))²` -/
def P3513906324376343254.Spec : Prop :=
  ∀ n, P3513906324376343254.a n = A014803 n

end A014803

/-! ## A014803.P9839404618508917418

`A002412(A042963(n+1)+2)²`
-/

namespace A014803.P9839404618508917418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A042963 (n + 1) + 2).toNat ^ 2

end

end A014803.P9839404618508917418

namespace A014803

/-- `A002412(A042963(n+1)+2)²` -/
def P9839404618508917418.Spec : Prop :=
  ∀ n, P9839404618508917418.a n = A014803 n

end A014803

/-! ## A014803.P1038497767063016459

`A002623(A047406(n+1))²`
-/

namespace A014803.P1038497767063016459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (A047406 (n + 1)).toNat ^ 2

end

end A014803.P1038497767063016459

namespace A014803

/-- `A002623(A047406(n+1))²` -/
def P1038497767063016459.Spec : Prop :=
  ∀ n, P1038497767063016459.a n = A014803 n

end A014803

/-! ## A014803.P9708654244506507434

`A023855(A047550(n+1))²`
-/

namespace A014803.P9708654244506507434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (A047550 (n + 1)).toNat ^ 2

end

end A014803.P9708654244506507434

namespace A014803

/-- `A023855(A047550(n+1))²` -/
def P9708654244506507434.Spec : Prop :=
  ∀ n, P9708654244506507434.a n = A014803 n

end A014803

/-! ## A014803.P12535294924164241676

`A173196(A047451(n+2))²`
-/

namespace A014803.P12535294924164241676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A047451 (n + 2)).toNat ^ 2

end

end A014803.P12535294924164241676

namespace A014803

/-- `A173196(A047451(n+2))²` -/
def P12535294924164241676.Spec : Prop :=
  ∀ n, P12535294924164241676.a n = A014803 n

end A014803

/-! ## A014803.P18362000802064283167

`A173196(2*A014601(n+1))²`
-/

namespace A014803.P18362000802064283167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (2 * A014601 (n + 1)).toNat ^ 2

end

end A014803.P18362000802064283167

namespace A014803

/-- `A173196(2*A014601(n+1))²` -/
def P18362000802064283167.Spec : Prop :=
  ∀ n, P18362000802064283167.a n = A014803 n

end A014803

/-!
# A014804: Inverse of 795th cyclotomic polynomial.

The programs for A014804, there is no canonical definition to state claims against.
-/

/-! ## A014804.P10905866914284703083

`A015074(n)^A113340(n+2)`
-/

namespace A014804.P10905866914284703083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015074 n : ℚ) ^ (A113340 (n + 2) : ℤ)

end

end A014804.P10905866914284703083

/-!
# A014805: Expansion of Jacobi theta constant (theta_2/2)^16.

The programs for A014805, there is no canonical definition to state claims against.
-/

/-! ## A014805.P9203098447941591901

`A286180(eq[17, A004736(n+1)])`
-/

namespace A014805.P9203098447941591901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014805.P9203098447941591901

/-! ## A014805.P12120410555337979438

`A286180(A133263(n+15)+A005843(n+7))`
-/

namespace A014805.P12120410555337979438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A133263 (n + 15) + A005843 (n + 7)).toNat

end

end A014805.P12120410555337979438

/-! ## A014805.P10645766754186576100

`A286180(A002378(n+13)-A000124(n+9))`
-/

namespace A014805.P10645766754186576100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A002378 (n + 13) - A000124 (n + 9)).toNat

end

end A014805.P10645766754186576100

/-! ## A014805.P3398640524802091096

`A286180(A005843(n+8)+A000217(n+15))`
-/

namespace A014805.P3398640524802091096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A005843 (n + 8) + A000217 (n + 15)).toNat

end

end A014805.P3398640524802091096

/-! ## A014805.P13270211780530288363

`A286180(A111284(n+13)+A000096(n+12))`
-/

namespace A014805.P13270211780530288363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A111284 (n + 13) + A000096 (n + 12)).toNat

end

end A014805.P13270211780530288363

/-!
# A014807: Inverse of 798th cyclotomic polynomial.

The programs for A014807, there is no canonical definition to state claims against.
-/

/-! ## A014807.P2873713124385153210

`A014408(n)*A033999(n)`
-/

namespace A014807.P2873713124385153210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014408 n * A033999 n

end

end A014807.P2873713124385153210

/-!
# A014808: Inverse of 799th cyclotomic polynomial.

The programs for A014808, there is no canonical definition to state claims against.
-/

/-! ## A014808.P13893815248450351957

`A015607(n)*A033999(n)`
-/

namespace A014808.P13893815248450351957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015607 n * A033999 n

end

end A014808.P13893815248450351957

/-!
# A014810: Multiplicity of trivial character in V_n, where V = Sum V_n is the graded module for the Monster simple group.

The programs for A014810, there is no canonical definition to state claims against.
-/

/-! ## A014810.P12046428701948280638

`A055791(∑[n])`
-/

namespace A014810.P12046428701948280638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055791 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014810.P12046428701948280638

/-! ## A014810.P11490080797004517616

`A055791(A000217(n))%A023493(n)`
-/

namespace A014810.P11490080797004517616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055791 (A000217 n).toNat) (A023493 n)

end

end A014810.P11490080797004517616

/-! ## A014810.P17793178668130306127

`gcd(A000038(n), A055791(A000217(n)))`
-/

namespace A014810.P17793178668130306127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A055791 (A000217 n).toNat)

end

end A014810.P17793178668130306127

/-! ## A014810.P11506828960536006089

`lcm(A033999(n), A055791(A000217(n)))`
-/

namespace A014810.P11506828960536006089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A055791 (A000217 n).toNat)

end

end A014810.P11506828960536006089

/-! ## A014810.P16860662612417416826

`or(A000007(n), A055791(A000217(n)))`
-/

namespace A014810.P16860662612417416826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A055791 (A000217 n).toNat)

end

end A014810.P16860662612417416826

/-! ## A014810.P6677309369789206544

`A020985(n)²*A055791(A000217(n))`
-/

namespace A014810.P6677309369789206544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A055791 (A000217 n).toNat

end

end A014810.P6677309369789206544

/-! ## A014810.P2557047542908056175

`A055791(A000217(n))+A000007(n+1)`
-/

namespace A014810.P2557047542908056175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055791 (A000217 n).toNat + A000007 (n + 1)

end

end A014810.P2557047542908056175

/-! ## A014810.P9077465762205417312

`A055791(A000217(n))+A000038(n+1)`
-/

namespace A014810.P9077465762205417312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055791 (A000217 n).toNat + A000038 (n + 1)

end

end A014810.P9077465762205417312

/-! ## A014810.P8535363439866587277

`A000034(8*n)*A055791(A000217(n))`
-/

namespace A014810.P8535363439866587277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (8 * n) * A055791 (A000217 n).toNat

end

end A014810.P8535363439866587277

/-! ## A014810.P849676120411513328

`(Δ[A014550(n)]%3)²*A055791(A000217(n))`
-/

namespace A014810.P849676120411513328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3 ^ 2 * A055791 (A000217 n).toNat

end

end A014810.P849676120411513328

/-! ## A014810.P1717710670581913562

`A073424(A017497(n))+A055791(A000217(n))`
-/

namespace A014810.P1717710670581913562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A017497 n).toNat + A055791 (A000217 n).toNat

end

end A014810.P1717710670581913562

/-! ## A014810.P13857876810609677978

`A001222(A295609(n))*A055791(A000217(n))`
-/

namespace A014810.P13857876810609677978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A295609 n).toNat * A055791 (A000217 n).toNat

end

end A014810.P13857876810609677978

/-! ## A014810.P9875516458713732580

`A242765(A064162(n+1))+A055791(A000217(n))`
-/

namespace A014810.P9875516458713732580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242765 (A064162 (n + 1)).toNat + A055791 (A000217 n).toNat

end

end A014810.P9875516458713732580

/-! ## A014810.P13578111632670975963

`A242765(A107707(n+1))+A055791(A000217(n))`
-/

namespace A014810.P13578111632670975963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242765 (A107707 (n + 1)).toNat + A055791 (A000217 n).toNat

end

end A014810.P13578111632670975963

/-! ## A014810.P8566458494455322561

`A001222(A000928(n+1))*A055791(A000217(n))`
-/

namespace A014810.P8566458494455322561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000928 (n + 1)).toNat * A055791 (A000217 n).toNat

end

end A014810.P8566458494455322561

/-! ## A014810.P2428531269218440843

`A055791(A000217(n))^A008683(A001748(n+1))`
-/

namespace A014810.P2428531269218440843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055791 (A000217 n).toNat : ℚ) ^ (A008683 (A001748 (n + 1)).toNat : ℤ)

end

end A014810.P2428531269218440843

/-! ## A014810.P14043934049364549505

`A055791(A000217(n))+A014473(n)*A073424(n)`
-/

namespace A014810.P14043934049364549505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055791 (A000217 n).toNat + A014473 n * A073424 n

end

end A014810.P14043934049364549505

/-! ## A014810.P6174095640531226731

`A020985(A059268(n))*A055791(A000217(n))`
-/

namespace A014810.P6174095640531226731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A059268 n).toNat * A055791 (A000217 n).toNat

end

end A014810.P6174095640531226731

/-!
# A014811: a(n) = Sum_{k=1..n-1} ceiling(k^2/n).

The programs for A014811, there is no canonical definition to state claims against.
-/

/-! ## A014811.P14241841092133764257

`∑[n]-A344552(n+1)`
-/

namespace A014811.P14241841092133764257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A344552 (n + 1)

end

end A014811.P14241841092133764257

/-! ## A014811.P1226366425067427238

`A014785(n+1)-(n+1)`
-/

namespace A014811.P1226366425067427238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014785 (n + 1) - (n + 1 : ℤ)

end

end A014811.P1226366425067427238

/-! ## A014811.P9212646886547272858

`A014817(n+1)-A000188(n+1)`
-/

namespace A014811.P9212646886547272858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (n + 1) - A000188 (n + 1)

end

end A014811.P9212646886547272858

/-! ## A014811.P10526847806597759862

`A000124(n)-(A344552(n+1)+1)`
-/

namespace A014811.P10526847806597759862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A344552 (n + 1) + 1)

end

end A014811.P10526847806597759862

/-! ## A014811.P764836381175800168

`A000096(n)-(A344552(n+1)+n)`
-/

namespace A014811.P764836381175800168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (A344552 (n + 1) + (n : ℤ))

end

end A014811.P764836381175800168

/-! ## A014811.P3013479005188341421

`abs(A014785(n+1)+A001478(n+1))`
-/

namespace A014811.P3013479005188341421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014785 (n + 1) + A001478 (n + 1)|

end

end A014811.P3013479005188341421

/-! ## A014811.P2241521542300578724

`A014817(n+1)-(A057918(n+1)+1)`
-/

namespace A014811.P2241521542300578724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (n + 1) - (A057918 (n + 1) + 1)

end

end A014811.P2241521542300578724

/-! ## A014811.P6306311889356234323

`A014817(n+1)-A337101(2*(n+1))`
-/

namespace A014811.P6306311889356234323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (n + 1) - A337101 (2 * (n + 1))

end

end A014811.P6306311889356234323

/-! ## A014811.P12863899729021595227

`A014817(n+1)-A019554(A003557(n+1))`
-/

namespace A014811.P12863899729021595227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (n + 1) - A019554 (A003557 (n + 1)).toNat

end

end A014811.P12863899729021595227

/-! ## A014811.P13754183585380770245

`record[A014785(A065033(n))-A008619(n)]`
-/

namespace A014811.P13754183585380770245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014785 (A065033 n).toNat - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014811.P13754183585380770245

/-! ## A014811.P17781792953771838541

`A023443(A014785(n+1)-n)`
-/

namespace A014811.P17781792953771838541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A014785 (n + 1) - (n : ℤ)).toNat

end

end A014811.P17781792953771838541

/-! ## A014811.P8984202705095520122

`A280653(A000217(n+2))/8`
-/

namespace A014811.P8984202705095520122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280653 (A000217 (n + 2)).toNat : ℚ) / 8

end

end A014811.P8984202705095520122

/-!
# A014812: Inverse of 803rd cyclotomic polynomial.

The programs for A014812, there is no canonical definition to state claims against.
-/

/-! ## A014812.P7259501001922521702

`(-1)^n*A015615(n)`
-/

namespace A014812.P7259501001922521702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A015615 n

end

end A014812.P7259501001922521702

/-!
# A014813: a(n) = Sum_{k=0..n} ceiling(k^3/n).

The programs for A014813, the canonical program `A014813.P12215300460194562373` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014813 has offset 1).

The definition of A014813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014813.P12215300460194562373

`(A164845(n)-A000189(n+1))/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A014813

/-- `(A164845(n)-A000189(n+1))/2` -/
def P12215300460194562373.Spec : Prop :=
  ∀ n, P12215300460194562373.a n = (A014813 (n + 1) : ℚ)

end A014813

/-! ## A014813.P5098507070446575425

`∑[∑[A016789(n)]]-A014818(n+1)`
-/

namespace A014813.P5098507070446575425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014818 (n + 1)

end

end A014813.P5098507070446575425

namespace A014813

/-- `∑[∑[A016789(n)]]-A014818(n+1)` -/
def P5098507070446575425.Spec : Prop :=
  ∀ n, P5098507070446575425.a n = A014813 (n + 1)

end A014813

/-! ## A014813.P15175860269782946957

`∑[A005449(n+1)]-A014818(n+1)`
-/

namespace A014813.P15175860269782946957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014818 (n + 1)

end

end A014813.P15175860269782946957

namespace A014813

/-- `∑[A005449(n+1)]-A014818(n+1)` -/
def P15175860269782946957.Spec : Prop :=
  ∀ n, P15175860269782946957.a n = A014813 (n + 1)

end A014813

/-! ## A014813.P13013645445206754560

`Δ[A000914(n)]-A014818(n+1)`
-/

namespace A014813.P13013645445206754560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014818 (n + 1)

end

end A014813.P13013645445206754560

namespace A014813

/-- `Δ[A000914(n)]-A014818(n+1)` -/
def P13013645445206754560.Spec : Prop :=
  ∀ n, P13013645445206754560.a n = A014813 (n + 1)

end A014813

/-! ## A014813.P16920215694489107578

`Δ[A000914(n)]-(A127736(n+1)+A000189(n+1))/2`
-/

namespace A014813.P16920215694489107578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000914 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A127736 (n + 1) + A000189 (n + 1) : ℚ) / 2

end

end A014813.P16920215694489107578

namespace A014813

/-- `Δ[A000914(n)]-(A127736(n+1)+A000189(n+1))/2` -/
def P16920215694489107578.Spec : Prop :=
  ∀ n, P16920215694489107578.a n = (A014813 (n + 1) : ℚ)

end A014813

/-!
# A014814: Inverse of 805th cyclotomic polynomial.

The programs for A014814, there is no canonical definition to state claims against.
-/

/-! ## A014814.P17210445917078454267

`A015619(n)*A033999(n)`
-/

namespace A014814.P17210445917078454267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015619 n * A033999 n

end

end A014814.P17210445917078454267

/-!
# A014815: Inverse of 806th cyclotomic polynomial.

The programs for A014815, there is no canonical definition to state claims against.
-/

/-! ## A014815.P10344104446384250361

`A014412(n)*A033999(n)`
-/

namespace A014815.P10344104446384250361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014412 n * A033999 n

end

end A014815.P10344104446384250361

/-!
# A014816: a(n) = Sum_{k=1..n} ceiling(k^4/n).

The programs for A014816, there is no canonical definition to state claims against.
-/

/-! ## A014816.P14498117266866084295

`A014819(n+1)+A010848(A187829(n+1))`
-/

namespace A014816.P14498117266866084295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014819 (n + 1) + A010848 (A187829 (n + 1)).toNat

end

end A014816.P14498117266866084295

/-! ## A014816.P12871649066712906568

`A028310(A014819(n+1)+A010848(n+1))`
-/

namespace A014816.P12871649066712906568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A014819 (n + 1) + A010848 (n + 1)).toNat

end

end A014816.P12871649066712906568

/-! ## A014816.P10097197859596643758

`A348469(A265429(2*n+1))+A348448(2*n+1)`
-/

namespace A014816.P10097197859596643758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348469 (A265429 (2 * n + 1)).toNat + A348448 (2 * n + 1)

end

end A014816.P10097197859596643758

/-!
# A014817: a(n) = Sum_{k=1..n} floor(k^2/n).

The programs for A014817, there is no canonical definition to state claims against.
-/

/-! ## A014817.P17831761344406148368

`A227842(n)+a(n-1)` with `a(0)=1`
-/

namespace A014817.P17831761344406148368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A227842 n + a (n - 1)

end

end A014817.P17831761344406148368

/-! ## A014817.P3320634339636715925

`∑[A227842(A004275(n+1)-n)]`
-/

namespace A014817.P3320634339636715925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227842 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014817.P3320634339636715925

/-! ## A014817.P5657713349460977936

`A014811(n+1)+A000188(n+1)`
-/

namespace A014817.P5657713349460977936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014811 (n + 1) + A000188 (n + 1)

end

end A014817.P5657713349460977936

/-! ## A014817.P1574878178639356180

`A166375(ceil(sqrt(A059100(n))))+n+1`
-/

namespace A014817.P1574878178639356180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 ⌈Real.sqrt (A059100 n : ℝ)⌉.toNat + (n + 1 : ℤ)

end

end A014817.P1574878178639356180

/-! ## A014817.P2671559367537530847

`A014811(n+1)+A057918(n+1)+1`
-/

namespace A014817.P2671559367537530847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014811 (n + 1) + (A057918 (n + 1) + 1)

end

end A014817.P2671559367537530847

/-! ## A014817.P14114330144938840470

`∑[A227842(n+1)]+1-A227842(n+1)`
-/

namespace A014817.P14114330144938840470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A227842 (n + 1))

end

end A014817.P14114330144938840470

/-! ## A014817.P16857995915133203744

`A014785(n+1)-(1-A000188(n+1)+n)`
-/

namespace A014817.P16857995915133203744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014785 (n + 1) - (1 - A000188 (n + 1) + (n : ℤ))

end

end A014817.P16857995915133203744

/-! ## A014817.P9892827506251505620

`A227841(n+2)-(A227842(n+1)+A227841(n+1))`
-/

namespace A014817.P9892827506251505620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227841 (n + 2) - (A227842 (n + 1) + A227841 (n + 1))

end

end A014817.P9892827506251505620

/-! ## A014817.P18104076971120225513

`∑[A227842(A008619(A004275(n)))]`
-/

namespace A014817.P18104076971120225513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227842 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014817.P18104076971120225513

/-! ## A014817.P1401080925029914093

`∑[A227842(A008619(A004273(n)))]`
-/

namespace A014817.P1401080925029914093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227842 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014817.P1401080925029914093

/-! ## A014817.P7287762070816446570

`∑[A227842(A065033(2*n))]`
-/

namespace A014817.P7287762070816446570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227842 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014817.P7287762070816446570

/-! ## A014817.P11655221092321745450

`A166375(A117818(2*(n+1)))+n+1`
-/

namespace A014817.P11655221092321745450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (A117818 (2 * (n + 1))).toNat + (n + 1 : ℤ)

end

end A014817.P11655221092321745450

/-! ## A014817.P11135406220961122586

`∑[A227842(A007318(A000124(n)))]`
-/

namespace A014817.P11135406220961122586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227842 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014817.P11135406220961122586

/-! ## A014817.P4919290598527835559

`∑[A227842(A134478(∑[n]))]`
-/

namespace A014817.P4919290598527835559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227842 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014817.P4919290598527835559

/-!
# A014818: a(n) is the sum over all floor(k^3/n), k=0 to n inclusive.

The programs for A014818, the canonical program `A014818.P18315329398595653602` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014818 has offset 1).

The definition of A014818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014818.P18315329398595653602

`∑[∑[A016789(n)]]-A014813(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A014818

/-- `∑[∑[A016789(n)]]-A014813(n+1)` -/
def P18315329398595653602.Spec : Prop :=
  ∀ n, P18315329398595653602.a n = A014818 (n + 1)

theorem P18315329398595653602.correct : P18315329398595653602.Spec := by
  intro n
  simp only [A014818, Nat.add_sub_cancel]

end A014818

/-! ## A014818.P6246916932246236860

`(A127736(n+1)+A000189(n+1))/2`
-/

namespace A014818.P6246916932246236860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127736 (n + 1) + A000189 (n + 1) : ℚ) / 2

end

end A014818.P6246916932246236860

namespace A014818

/-- `(A127736(n+1)+A000189(n+1))/2` -/
def P6246916932246236860.Spec : Prop :=
  ∀ n, P6246916932246236860.a n = (A014818 (n + 1) : ℚ)

end A014818

/-! ## A014818.P1739305579608661736

`A006002(n+1)-A014813(n+1)`
-/

namespace A014818.P1739305579608661736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (n + 1) - A014813 (n + 1)

end

end A014818.P1739305579608661736

namespace A014818

/-- `A006002(n+1)-A014813(n+1)` -/
def P1739305579608661736.Spec : Prop :=
  ∀ n, P1739305579608661736.a n = A014818 (n + 1)

end A014818

/-! ## A014818.P3216640856530776596

`∑[A005449(n+1)]-A014813(n+1)`
-/

namespace A014818.P3216640856530776596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014813 (n + 1)

end

end A014818.P3216640856530776596

namespace A014818

/-- `∑[A005449(n+1)]-A014813(n+1)` -/
def P3216640856530776596.Spec : Prop :=
  ∀ n, P3216640856530776596.a n = A014818 (n + 1)

end A014818

/-! ## A014818.P15567422316222363659

`Δ[A000914(n)]-A014813(n+1)`
-/

namespace A014818.P15567422316222363659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014813 (n + 1)

end

end A014818.P15567422316222363659

namespace A014818

/-- `Δ[A000914(n)]-A014813(n+1)` -/
def P15567422316222363659.Spec : Prop :=
  ∀ n, P15567422316222363659.a n = A014818 (n + 1)

end A014818

/-!
# A014819: a(n) = Sum_{k=1..n} floor(k^4/n).

The programs for A014819, there is no canonical definition to state claims against.
-/

/-! ## A014819.P15421437327599586311

`A014816(n+1)-A010848(A187829(n+1))`
-/

namespace A014819.P15421437327599586311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014816 (n + 1) - A010848 (A187829 (n + 1)).toNat

end

end A014819.P15421437327599586311

/-! ## A014819.P10647790244496370399

`A028310(A014816(n+1)-A010848(n+1))`
-/

namespace A014819.P10647790244496370399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A014816 (n + 1) - A010848 (n + 1)).toNat

end

end A014819.P10647790244496370399

/-! ## A014819.P2167024893258842117

`A348469(A265429(2*n+1))+A348448(2*n+1)-A010848(n+1)`
-/

namespace A014819.P2167024893258842117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348469 (A265429 (2 * n + 1)).toNat + A348448 (2 * n + 1) - A010848 (n + 1)

end

end A014819.P2167024893258842117

/-!
# A014820: a(n) = (1/3)*(n^2 + 2*n + 3)*(n+1)^2.

The programs for A014820, the canonical program `A014820.P5934791679457644204` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014820 has offset 0).

The definition of A014820 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/3*(n²+2*n+3)*(n+1)²` (program `A014820.P17394824953034372020`, by `A014820.P17394824953034372020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014820.P4355138320726080080

`((n+1)²+2)*(n+1)²/3`
-/

namespace A014820.P4355138320726080080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 + 2) * (n + 1) ^ 2 : ℚ) / 3

end

end A014820.P4355138320726080080

namespace A014820

/-- `((n+1)²+2)*(n+1)²/3` -/
def P4355138320726080080.Spec : Prop :=
  ∀ n, P4355138320726080080.a n = (A014820 n : ℚ)

theorem P4355138320726080080.correct : P4355138320726080080.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A014820, Nat.add_sub_cancel, A014820.P4355138320726080080.a, A014820.P5934791679457644204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A014820, Nat.add_sub_cancel, A014820.P4355138320726080080.a, A014820.P5934791679457644204.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014820

/-! ## A014820.P17394824953034372020

`1/3*(n²+2*n+3)*(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014820.P17394824953034372020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (n ^ 2 + 2 * n + 3 : ℚ) * ((n + 1) ^ 2 : ℚ)

end

end A014820.P17394824953034372020

namespace A014820

/-- `1/3*(n²+2*n+3)*(n+1)²` -/
def P17394824953034372020.Spec : Prop :=
  ∀ n, P17394824953034372020.a n = (A014820 n : ℚ)

theorem P17394824953034372020.correct : P17394824953034372020.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A014820, Nat.add_sub_cancel, A014820.P17394824953034372020.a, A014820.P5934791679457644204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A014820, Nat.add_sub_cancel, A014820.P17394824953034372020.a, A014820.P5934791679457644204.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014820

/-! ## A014820.P5934791679457644204

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=8, a(2)=33, a(3)=96, a(4)=225`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014820

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5934791679457644204.Spec : Prop :=
  ∀ n, P5934791679457644204.a n = A014820 n

theorem P5934791679457644204.correct : P5934791679457644204.Spec := by
  intro n
  simp only [A014820]

end A014820

/-! ## A014820.P16019014330740536921

`A039623(n+1)+A002415(n+1)`
-/

namespace A014820.P16019014330740536921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039623 (n + 1) + A002415 (n + 1)

end

end A014820.P16019014330740536921

namespace A014820

/-- `A039623(n+1)+A002415(n+1)` -/
def P16019014330740536921.Spec : Prop :=
  ∀ n, P16019014330740536921.a n = A014820 n

end A014820

/-! ## A014820.P11789081982226131746

`4*A002415(n+1)+A000290(n+1)`
-/

namespace A014820.P11789081982226131746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002415 (n + 1) + A000290 (n + 1)

end

end A014820.P11789081982226131746

namespace A014820

/-- `4*A002415(n+1)+A000290(n+1)` -/
def P11789081982226131746.Spec : Prop :=
  ∀ n, P11789081982226131746.a n = A014820 n

end A014820

/-! ## A014820.P15448352634955695702

`A006325(n+1)+A006325(n+2)`
-/

namespace A014820.P15448352634955695702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1) + A006325 (n + 2)

end

end A014820.P15448352634955695702

namespace A014820

/-- `A006325(n+1)+A006325(n+2)` -/
def P15448352634955695702.Spec : Prop :=
  ∀ n, P15448352634955695702.a n = A014820 n

end A014820

/-! ## A014820.P3928932521658722998

`∑[∑[floor((2/acot(n))²)]]`
-/

namespace A014820.P3928932521658722998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (n : ℝ)) ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014820.P3928932521658722998

namespace A014820

/-- `∑[∑[floor((2/acot(n))²)]]` -/
def P3928932521658722998.Spec : Prop :=
  ∀ n, P3928932521658722998.a n = A014820 n

end A014820

/-! ## A014820.P8170527277201369853

`∑[∑[or(2, (2*n)²)]-1]`
-/

namespace A014820.P8170527277201369853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 ((2 * n) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014820.P8170527277201369853

namespace A014820

/-- `∑[∑[or(2, (2*n)²)]-1]` -/
def P8170527277201369853.Spec : Prop :=
  ∀ n, P8170527277201369853.a n = A014820 n

end A014820

/-! ## A014820.P6715972118792503418

`∑[∑[xor(2, (2*n)²)]-1]`
-/

namespace A014820.P6715972118792503418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((2 * n) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014820.P6715972118792503418

namespace A014820

/-- `∑[∑[xor(2, (2*n)²)]-1]` -/
def P6715972118792503418.Spec : Prop :=
  ∀ n, P6715972118792503418.a n = A014820 n

end A014820

/-! ## A014820.P5115916617717802886

`∑[∑[∑[a(n-1)+8]]]` with `a(0)=1, a(1)=5, a(2)=12`
-/

namespace A014820.P5115916617717802886
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 12] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014820.P5115916617717802886

namespace A014820

/-- `∑[∑[∑[a(n-1)+8]]]` -/
def P5115916617717802886.Spec : Prop :=
  ∀ n, (P5115916617717802886.a n : ℤ) = A014820 n

end A014820

/-! ## A014820.P8436406735454041392

`∑[C(2*(n+1), 3)+2*n+1]`
-/

namespace A014820.P8436406735454041392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 3 + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014820.P8436406735454041392

namespace A014820

/-- `∑[C(2*(n+1), 3)+2*n+1]` -/
def P8436406735454041392.Spec : Prop :=
  ∀ n, (P8436406735454041392.a n : ℤ) = A014820 n

end A014820

/-! ## A014820.P14383138142140262862

`a(n-2)+8*a(n-1)/n` with `a(0)=1, a(1)=8`
-/

namespace A014820.P14383138142140262862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 2) + 8 * (a (n - 1) / (n : ℚ))

end

end A014820.P14383138142140262862

namespace A014820

/-- `a(n-2)+8*a(n-1)/n` -/
def P14383138142140262862.Spec : Prop :=
  ∀ n, P14383138142140262862.a n = (A014820 n : ℚ)

end A014820

/-! ## A014820.P1798916647567113701

`∑[A001845(n)]`
-/

namespace A014820.P1798916647567113701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014820.P1798916647567113701

namespace A014820

/-- `∑[A001845(n)]` -/
def P1798916647567113701.Spec : Prop :=
  ∀ n, P1798916647567113701.a n = A014820 n

end A014820

/-! ## A014820.P7728101879134129264

`∑[∑[A005899(n)]]`
-/

namespace A014820.P7728101879134129264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014820.P7728101879134129264

namespace A014820

/-- `∑[∑[A005899(n)]]` -/
def P7728101879134129264.Spec : Prop :=
  ∀ n, P7728101879134129264.a n = A014820 n

end A014820

/-! ## A014820.P12565113079437665094

`∑[A100504(n)-1]`
-/

namespace A014820.P12565113079437665094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100504 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014820.P12565113079437665094

namespace A014820

/-- `∑[A100504(n)-1]` -/
def P12565113079437665094.Spec : Prop :=
  ∀ n, P12565113079437665094.a n = A014820 n

end A014820

/-! ## A014820.P7943773318260880714

`∑[A161712(n+1)-2]`
-/

namespace A014820.P7943773318260880714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161712 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014820.P7943773318260880714

namespace A014820

/-- `∑[A161712(n+1)-2]` -/
def P7943773318260880714.Spec : Prop :=
  ∀ n, P7943773318260880714.a n = A014820 n

end A014820

/-! ## A014820.P16698088069720215833

`A165394(n+2)-n²`
-/

namespace A014820.P16698088069720215833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165394 (n + 2) - (n ^ 2 : ℤ)

end

end A014820.P16698088069720215833

namespace A014820

/-- `A165394(n+2)-n²` -/
def P16698088069720215833.Spec : Prop :=
  ∀ n, P16698088069720215833.a n = A014820 n

end A014820

/-! ## A014820.P7871266457400443157

`∑[A050533(n)+n+1]`
-/

namespace A014820.P7871266457400443157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050533 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014820.P7871266457400443157

namespace A014820

/-- `∑[A050533(n)+n+1]` -/
def P7871266457400443157.Spec : Prop :=
  ∀ n, P7871266457400443157.a n = A014820 n

end A014820

/-! ## A014820.P2546925551984312727

`A100188(n+1)+n²+n`
-/

namespace A014820.P2546925551984312727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100188 (n + 1) + (n ^ 2 + n : ℤ)

end

end A014820.P2546925551984312727

namespace A014820

/-- `A100188(n+1)+n²+n` -/
def P2546925551984312727.Spec : Prop :=
  ∀ n, P2546925551984312727.a n = A014820 n

end A014820

/-! ## A014820.P4409903685505016878

`A081436(n)+A071238(n)`
-/

namespace A014820.P4409903685505016878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n + A071238 n

end

end A014820.P4409903685505016878

namespace A014820

/-- `A081436(n)+A071238(n)` -/
def P4409903685505016878.Spec : Prop :=
  ∀ n, P4409903685505016878.a n = A014820 n

end A014820

/-!
# A014821: Inverse of 812th cyclotomic polynomial.

The programs for A014821, there is no canonical definition to state claims against.
-/

/-! ## A014821.P1957703414145593982

`A014877(lt[A287768(n+1), A033010(n+1)])`
-/

namespace A014821.P1957703414145593982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014877 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014821.P1957703414145593982

/-!
# A014822: Numbers k such that k divides s(k), where s(1)=1, s(j)=10*s(j-1)+j (A014824).

The programs for A014822, there is no canonical definition to state claims against.
-/

/-! ## A014822.P5153189598806949315

`record[gcd(n+1, A052245(n))]`
-/

namespace A014822.P5153189598806949315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A052245 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014822.P5153189598806949315

/-! ## A014822.P13035058395788384501

`record[gcd(10^(n+1)-10, A028310(n))]`
-/

namespace A014822.P13035058395788384501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((10 ^ (n + 1) : ℤ) - 10) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014822.P13035058395788384501

/-! ## A014822.P14144101195062474958

`record[A028310(gcd(n, A014824(n)))]`
-/

namespace A014822.P14144101195062474958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A014824 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014822.P14144101195062474958

/-! ## A014822.P1325215957057309126

`record[gcd(A028310(n), A105279(n))]`
-/

namespace A014822.P1325215957057309126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A105279 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014822.P1325215957057309126

/-! ## A014822.P16241299112918075731

`record[gcd(A065033(n), A094026(n))]`
-/

namespace A014822.P16241299112918075731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065033 n) (A094026 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014822.P16241299112918075731

/-!
# A014823: Inverse of 814th cyclotomic polynomial.

The programs for A014823, there is no canonical definition to state claims against.
-/

/-! ## A014823.P14257882199931463330

`A014416(n)*A033999(n)`
-/

namespace A014823.P14257882199931463330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014416 n * A033999 n

end

end A014823.P14257882199931463330

/-!
# A014824: a(0) = 0; for n>0, a(n) = 10*a(n-1) + n.

The programs for A014824, the canonical program `A014824.P10280532508089755097` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014824 has offset 0).

The definition of A014824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+n` (program `A014824.P10280532508089755097`, by `A014824.P10280532508089755097.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014824.P10280532508089755097

`10*a(n-1)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014824

/-- `10*a(n-1)+n` -/
def P10280532508089755097.Spec : Prop :=
  ∀ n, (P10280532508089755097.a n : ℤ) = A014824 n

theorem P10280532508089755097.correct : P10280532508089755097.Spec := by
  intro n
  simp only [A014824]

end A014824

/-! ## A014824.P15051108640929560133

`(10^n-1)*10/81-n/9`
-/

namespace A014824.P15051108640929560133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1 : ℚ) * ((10 : ℚ) / 81) - (n : ℚ) / 9

end

end A014824.P15051108640929560133

namespace A014824

/-- `(10^n-1)*10/81-n/9` -/
def P15051108640929560133.Spec : Prop :=
  ∀ n, P15051108640929560133.a n = (A014824 n : ℚ)

theorem P15051108640929560133.correct : P15051108640929560133.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014824, Nat.add_sub_cancel, A014824.P15051108640929560133.a, A014824.P10280532508089755097.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014824, Nat.add_sub_cancel, A014824.P15051108640929560133.a, A014824.P10280532508089755097.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014824

/-! ## A014824.P17703725314526275588

`∑[ogf(x/(1-11x+10x^2))]`
-/

namespace A014824.P17703725314526275588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -11, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014824.P17703725314526275588

namespace A014824

/-- `∑[ogf(x/(1-11x+10x^2))]` -/
def P17703725314526275588.Spec : Prop :=
  ∀ n, P17703725314526275588.a n = A014824 n

end A014824

/-! ## A014824.P9312121367033588409

`∑[∑[and(10^n, -2)/10]]`
-/

namespace A014824.P9312121367033588409
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (10 ^ n : ℤ) (-2) : ℚ) / 10

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014824.P9312121367033588409

namespace A014824

/-- `∑[∑[and(10^n, -2)/10]]` -/
def P9312121367033588409.Spec : Prop :=
  ∀ n, P9312121367033588409.a n = (A014824 n : ℚ)

end A014824

/-! ## A014824.P4795965357238023764

`abs(∑[10*a(n-1)-1])` with `a(0)=0`
-/

namespace A014824.P4795965357238023764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  10 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A014824.P4795965357238023764

namespace A014824

/-- `abs(∑[10*a(n-1)-1])` -/
def P4795965357238023764.Spec : Prop :=
  ∀ n, P4795965357238023764.a n = A014824 n

end A014824

/-! ## A014824.P17390013741369386998

`-∑[10*a(n-1)-1]` with `a(0)=0`
-/

namespace A014824.P17390013741369386998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  10 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014824.P17390013741369386998

namespace A014824

/-- `-∑[10*a(n-1)-1]` -/
def P17390013741369386998.Spec : Prop :=
  ∀ n, P17390013741369386998.a n = A014824 n

end A014824

/-! ## A014824.P8688931283708098501

`∑[∑[2*5*a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A014824.P8688931283708098501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * (5 * f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014824.P8688931283708098501

namespace A014824

/-- `∑[∑[2*5*a(n-1)]]` -/
def P8688931283708098501.Spec : Prop :=
  ∀ n, (P8688931283708098501.a n : ℤ) = A014824 n

end A014824

/-! ## A014824.P4327983382075173017

`∑[a(n-1)+10^(n-1)]` with `a(0)=0`
-/

namespace A014824.P4327983382075173017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014824.P4327983382075173017

namespace A014824

/-- `∑[a(n-1)+10^(n-1)]` -/
def P4327983382075173017.Spec : Prop :=
  ∀ n, P4327983382075173017.a n = (A014824 n : ℚ)

end A014824

/-! ## A014824.P8220866920747352069

`∑[A002275(n)]`
-/

namespace A014824.P8220866920747352069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014824.P8220866920747352069

namespace A014824

/-- `∑[A002275(n)]` -/
def P8220866920747352069.Spec : Prop :=
  ∀ n, P8220866920747352069.a n = A014824 n

end A014824

/-! ## A014824.P12757568044362753400

`A099674(n)/7`
-/

namespace A014824.P12757568044362753400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099674 n : ℚ) / 7

end

end A014824.P12757568044362753400

namespace A014824

/-- `A099674(n)/7` -/
def P12757568044362753400.Spec : Prop :=
  ∀ n, P12757568044362753400.a n = (A014824 n : ℚ)

theorem P12757568044362753400.correct : P12757568044362753400.Spec := by
  intro n
  simp only [A014824, Nat.add_sub_cancel, A014824.P12757568044362753400.a, A014824.P10280532508089755097.a, A099674, A099674.P10031925822857989779.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014824

/-! ## A014824.P17676115618171908594

`∑[A071762(∑[n])]`
-/

namespace A014824.P17676115618171908594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014824.P17676115618171908594

namespace A014824

/-- `∑[A071762(∑[n])]` -/
def P17676115618171908594.Spec : Prop :=
  ∀ n, P17676115618171908594.a n = A014824 n

end A014824

/-! ## A014824.P16095413159837311224

`∑[∑[A178501(n)]]`
-/

namespace A014824.P16095413159837311224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014824.P16095413159837311224

namespace A014824

/-- `∑[∑[A178501(n)]]` -/
def P16095413159837311224.Spec : Prop :=
  ∀ n, P16095413159837311224.a n = A014824 n

end A014824

/-! ## A014824.P3098215505280346364

`∑[A081857(2*n)]`
-/

namespace A014824.P3098215505280346364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014824.P3098215505280346364

namespace A014824

/-- `∑[A081857(2*n)]` -/
def P3098215505280346364.Spec : Prop :=
  ∀ n, P3098215505280346364.a n = A014824 n

end A014824

/-! ## A014824.P9859058188653126484

`∑[A002276(n)/2]`
-/

namespace A014824.P9859058188653126484
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002276 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014824.P9859058188653126484

namespace A014824

/-- `∑[A002276(n)/2]` -/
def P9859058188653126484.Spec : Prop :=
  ∀ n, P9859058188653126484.a n = (A014824 n : ℚ)

end A014824

/-! ## A014824.P7515021838682107789

`∑[A002277(n)/3]`
-/

namespace A014824.P7515021838682107789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002277 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014824.P7515021838682107789

namespace A014824

/-- `∑[A002277(n)/3]` -/
def P7515021838682107789.Spec : Prop :=
  ∀ n, P7515021838682107789.a n = (A014824 n : ℚ)

end A014824

/-! ## A014824.P16354391995377458565

`∑[A002278(n)/4]`
-/

namespace A014824.P16354391995377458565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002278 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014824.P16354391995377458565

namespace A014824

/-- `∑[A002278(n)/4]` -/
def P16354391995377458565.Spec : Prop :=
  ∀ n, P16354391995377458565.a n = (A014824 n : ℚ)

end A014824

/-! ## A014824.P11875813717501550449

`∑[A002279(n)/5]`
-/

namespace A014824.P11875813717501550449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002279 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014824.P11875813717501550449

namespace A014824

/-- `∑[A002279(n)/5]` -/
def P11875813717501550449.Spec : Prop :=
  ∀ n, P11875813717501550449.a n = (A014824 n : ℚ)

end A014824

/-! ## A014824.P6705522828400840445

`∑[A092900(A004273(n+1))]/2`
-/

namespace A014824.P6705522828400840445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092900 (A004273 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A014824.P6705522828400840445

namespace A014824

/-- `∑[A092900(A004273(n+1))]/2` -/
def P6705522828400840445.Spec : Prop :=
  ∀ n, P6705522828400840445.a n = (A014824 n : ℚ)

end A014824

/-!
# A014825: a(n) = 4*a(n-1) + n with n > 1, a(1)=1.

The programs for A014825, the canonical program `A014825.P16985129911822375235` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014825 has offset 1).

The definition of A014825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+n+1` (program `A014825.P16985129911822375235`, by `A014825.P16985129911822375235.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014825.P16985129911822375235

`4*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014825

/-- `4*a(n-1)+n+1` -/
def P16985129911822375235.Spec : Prop :=
  ∀ n, (P16985129911822375235.a n : ℤ) = A014825 (n + 1)

theorem P16985129911822375235.correct : P16985129911822375235.Spec := by
  intro n
  simp only [A014825, Nat.add_sub_cancel]

end A014825

/-! ## A014825.P16629748326214444764

`A091919(2*n)`
-/

namespace A014825.P16629748326214444764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091919 (2 * n)

end

end A014825.P16629748326214444764

namespace A014825

/-- `A091919(2*n)` -/
def P16629748326214444764.Spec : Prop :=
  ∀ n, P16629748326214444764.a n = A014825 (n + 1)

end A014825

/-! ## A014825.P933618205469593266

`(4^(n+2)-3*(n+1)-4)/9`
-/

namespace A014825.P933618205469593266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 2) : ℤ) - (3 * (n + 1) : ℤ) - 4 : ℚ) / 9

end

end A014825.P933618205469593266

namespace A014825

/-- `(4^(n+2)-3*(n+1)-4)/9` -/
def P933618205469593266.Spec : Prop :=
  ∀ n, P933618205469593266.a n = (A014825 (n + 1) : ℚ)

theorem P933618205469593266.correct : P933618205469593266.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014825, Nat.add_sub_cancel, A014825.P933618205469593266.a, A014825.P16985129911822375235.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014825, Nat.add_sub_cancel, A014825.P933618205469593266.a, A014825.P16985129911822375235.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014825

/-! ## A014825.P2570944821595311123

`∑[ogf(1/(1-5x+4x^2))]`
-/

namespace A014825.P2570944821595311123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014825.P2570944821595311123

namespace A014825

/-- `∑[ogf(1/(1-5x+4x^2))]` -/
def P2570944821595311123.Spec : Prop :=
  ∀ n, P2570944821595311123.a n = A014825 (n + 1)

end A014825

/-! ## A014825.P13853631461707096526

`ogf(1/(1-6x+9x^2-4x^3))`
-/

namespace A014825.P13853631461707096526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 9, -4] n

end

end A014825.P13853631461707096526

namespace A014825

/-- `ogf(1/(1-6x+9x^2-4x^3))` -/
def P13853631461707096526.Spec : Prop :=
  ∀ n, P13853631461707096526.a n = A014825 (n + 1)

end A014825

/-! ## A014825.P1124939673442932364

`abs(∑[∑[4*a(n-1)]])` with `a(0)=1`
-/

namespace A014825.P1124939673442932364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014825.P1124939673442932364

namespace A014825

/-- `abs(∑[∑[4*a(n-1)]])` -/
def P1124939673442932364.Spec : Prop :=
  ∀ n, (P1124939673442932364.a n : ℤ) = A014825 (n + 1)

end A014825

/-! ## A014825.P10829072210948453632

`floor(∑[∑[4*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014825.P10829072210948453632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014825.P10829072210948453632

namespace A014825

/-- `floor(∑[∑[4*a(n-1)]])` -/
def P10829072210948453632.Spec : Prop :=
  ∀ n, (P10829072210948453632.a n : ℤ) = A014825 (n + 1)

end A014825

/-! ## A014825.P6291021858421228577

`ceil(∑[∑[4*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014825.P6291021858421228577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014825.P6291021858421228577

namespace A014825

/-- `ceil(∑[∑[4*a(n-1)]])` -/
def P6291021858421228577.Spec : Prop :=
  ∀ n, (P6291021858421228577.a n : ℤ) = A014825 (n + 1)

end A014825

/-! ## A014825.P15982493861148389811

`round(∑[∑[4*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014825.P15982493861148389811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014825.P15982493861148389811

namespace A014825

/-- `round(∑[∑[4*a(n-1)]])` -/
def P15982493861148389811.Spec : Prop :=
  ∀ n, (P15982493861148389811.a n : ℤ) = A014825 (n + 1)

end A014825

/-! ## A014825.P17430658698764217025

`5-(4*(1-a(n-1))-n)` with `a(0)=1`
-/

namespace A014825.P17430658698764217025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 - (4 * (1 - a (n - 1)) - (n : ℤ))

end

end A014825.P17430658698764217025

namespace A014825

/-- `5-(4*(1-a(n-1))-n)` -/
def P17430658698764217025.Spec : Prop :=
  ∀ n, P17430658698764217025.a n = A014825 (n + 1)

end A014825

/-! ## A014825.P8083772449766229979

`floor(∑[∑[a(n-1)/(1/2)²]])` with `a(0)=1`
-/

namespace A014825.P8083772449766229979
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) / ((1 : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A014825.P8083772449766229979

namespace A014825

/-- `floor(∑[∑[a(n-1)/(1/2)²]])` -/
def P8083772449766229979.Spec : Prop :=
  ∀ n, P8083772449766229979.a n = A014825 (n + 1)

end A014825

/-! ## A014825.P4210343060091014894

`a(n-1)/(1/2)²+n+1` with `a(0)=1`
-/

namespace A014825.P4210343060091014894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 + (n + 1 : ℚ)

end

end A014825.P4210343060091014894

namespace A014825

/-- `a(n-1)/(1/2)²+n+1` -/
def P4210343060091014894.Spec : Prop :=
  ∀ n, P4210343060091014894.a n = (A014825 (n + 1) : ℚ)

end A014825

/-! ## A014825.P8619359837163146881

`floor(a(n-1)+4^(n+1)/3)` with `a(0)=1`
-/

namespace A014825.P8619359837163146881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (4 ^ (n + 1) : ℚ) / 3⌋

end

end A014825.P8619359837163146881

namespace A014825

/-- `floor(a(n-1)+4^(n+1)/3)` -/
def P8619359837163146881.Spec : Prop :=
  ∀ n, P8619359837163146881.a n = A014825 (n + 1)

end A014825

/-! ## A014825.P15483964704175804968

`∑[4^(n+1)/4]+a(n-1)` with `a(0)=1`
-/

namespace A014825.P15483964704175804968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A014825.P15483964704175804968

namespace A014825

/-- `∑[4^(n+1)/4]+a(n-1)` -/
def P15483964704175804968.Spec : Prop :=
  ∀ n, P15483964704175804968.a n = (A014825 (n + 1) : ℚ)

end A014825

/-! ## A014825.P10183128606982008851

`n+1-a(n-1)/(3/4-1)` with `a(0)=1`
-/

namespace A014825.P10183128606982008851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) - a (n - 1) / ((3 : ℚ) / 4 - 1)

end

end A014825.P10183128606982008851

namespace A014825

/-- `n+1-a(n-1)/(3/4-1)` -/
def P10183128606982008851.Spec : Prop :=
  ∀ n, P10183128606982008851.a n = (A014825 (n + 1) : ℚ)

end A014825

/-! ## A014825.P2750887510790256079

`a(n-1)+1+a(n-1)+a(n-1)+a(n-1)+n` with `a(0)=1`
-/

namespace A014825.P2750887510790256079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + (a (n - 1) + (a (n - 1) + n)))

end

end A014825.P2750887510790256079

namespace A014825

/-- `a(n-1)+1+a(n-1)+a(n-1)+a(n-1)+n` -/
def P2750887510790256079.Spec : Prop :=
  ∀ n, (P2750887510790256079.a n : ℤ) = A014825 (n + 1)

theorem P2750887510790256079.correct : P2750887510790256079.Spec := by
  intro n
  simp only [A014825, Nat.add_sub_cancel, A014825.P2750887510790256079.a, A014825.P16985129911822375235.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A014825

/-! ## A014825.P1302111765446200722

`A034299(Δ[n²])`
-/

namespace A014825.P1302111765446200722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034299 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A014825.P1302111765446200722

namespace A014825

/-- `A034299(Δ[n²])` -/
def P1302111765446200722.Spec : Prop :=
  ∀ n, P1302111765446200722.a n = A014825 (n + 1)

end A014825

/-! ## A014825.P14376075223161809619

`∑[∑[A000302(n)]]`
-/

namespace A014825.P14376075223161809619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014825.P14376075223161809619

namespace A014825

/-- `∑[∑[A000302(n)]]` -/
def P14376075223161809619.Spec : Prop :=
  ∀ n, P14376075223161809619.a n = A014825 (n + 1)

end A014825

/-! ## A014825.P10314674633105262966

`∑[record[A176868(n)]]`
-/

namespace A014825.P10314674633105262966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176868 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014825.P10314674633105262966

namespace A014825

/-- `∑[record[A176868(n)]]` -/
def P10314674633105262966.Spec : Prop :=
  ∀ n, P10314674633105262966.a n = A014825 (n + 1)

end A014825

/-! ## A014825.P15396460756305286203

`∑[record[A279030(n)]]`
-/

namespace A014825.P15396460756305286203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279030 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014825.P15396460756305286203

namespace A014825

/-- `∑[record[A279030(n)]]` -/
def P15396460756305286203.Spec : Prop :=
  ∀ n, P15396460756305286203.a n = A014825 (n + 1)

end A014825

/-!
# A014826: Inverse of 817th cyclotomic polynomial.

The programs for A014826, there is no canonical definition to state claims against.
-/

/-! ## A014826.P12262016936525182901

`A015643(n)*A033999(n)`
-/

namespace A014826.P12262016936525182901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015643 n * A033999 n

end

end A014826.P12262016936525182901

/-!
# A014827: a(1)=1, a(n) = 5*a(n-1) + n.

The programs for A014827, the canonical program `A014827.P12182837730254525356` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014827 has offset 1).

The definition of A014827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+n+1` (program `A014827.P12182837730254525356`, by `A014827.P12182837730254525356.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014827.P12182837730254525356

`5*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014827

/-- `5*a(n-1)+n+1` -/
def P12182837730254525356.Spec : Prop :=
  ∀ n, (P12182837730254525356.a n : ℤ) = A014827 (n + 1)

theorem P12182837730254525356.correct : P12182837730254525356.Spec := by
  intro n
  simp only [A014827, Nat.add_sub_cancel]

end A014827

/-! ## A014827.P11176404484297220440

`(5^(n+2)-4*(n+1)-5)/16`
-/

namespace A014827.P11176404484297220440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 2) : ℤ) - (4 * (n + 1) : ℤ) - 5 : ℚ) / 16

end

end A014827.P11176404484297220440

namespace A014827

/-- `(5^(n+2)-4*(n+1)-5)/16` -/
def P11176404484297220440.Spec : Prop :=
  ∀ n, P11176404484297220440.a n = (A014827 (n + 1) : ℚ)

theorem P11176404484297220440.correct : P11176404484297220440.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014827, Nat.add_sub_cancel, A014827.P11176404484297220440.a, A014827.P12182837730254525356.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014827, Nat.add_sub_cancel, A014827.P11176404484297220440.a, A014827.P12182837730254525356.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014827

/-! ## A014827.P4845112910548635836

`∑[ogf(1/(1-6x+5x^2))]`
-/

namespace A014827.P4845112910548635836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014827.P4845112910548635836

namespace A014827

/-- `∑[ogf(1/(1-6x+5x^2))]` -/
def P4845112910548635836.Spec : Prop :=
  ∀ n, P4845112910548635836.a n = A014827 (n + 1)

end A014827

/-! ## A014827.P14913449083216644615

`ogf(1/(1-7x+11x^2-5x^3))`
-/

namespace A014827.P14913449083216644615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, 11, -5] n

end

end A014827.P14913449083216644615

namespace A014827

/-- `ogf(1/(1-7x+11x^2-5x^3))` -/
def P14913449083216644615.Spec : Prop :=
  ∀ n, P14913449083216644615.a n = A014827 (n + 1)

end A014827

/-! ## A014827.P702080168179575798

`abs(∑[∑[5*a(n-1)]])` with `a(0)=1`
-/

namespace A014827.P702080168179575798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  5 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014827.P702080168179575798

namespace A014827

/-- `abs(∑[∑[5*a(n-1)]])` -/
def P702080168179575798.Spec : Prop :=
  ∀ n, (P702080168179575798.a n : ℤ) = A014827 (n + 1)

end A014827

/-! ## A014827.P4290772094815674760

`floor(∑[∑[5*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014827.P4290772094815674760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  5 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014827.P4290772094815674760

namespace A014827

/-- `floor(∑[∑[5*a(n-1)]])` -/
def P4290772094815674760.Spec : Prop :=
  ∀ n, (P4290772094815674760.a n : ℤ) = A014827 (n + 1)

end A014827

/-! ## A014827.P6345217483114666456

`ceil(∑[∑[5*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014827.P6345217483114666456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  5 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014827.P6345217483114666456

namespace A014827

/-- `ceil(∑[∑[5*a(n-1)]])` -/
def P6345217483114666456.Spec : Prop :=
  ∀ n, (P6345217483114666456.a n : ℤ) = A014827 (n + 1)

end A014827

/-! ## A014827.P3031587897880440962

`round(∑[∑[5*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014827.P3031587897880440962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  5 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014827.P3031587897880440962

namespace A014827

/-- `round(∑[∑[5*a(n-1)]])` -/
def P3031587897880440962.Spec : Prop :=
  ∀ n, (P3031587897880440962.a n : ℤ) = A014827 (n + 1)

end A014827

/-! ## A014827.P1303353001261572944

`floor(a(n-1)+5^(n+1)/4)` with `a(0)=1`
-/

namespace A014827.P1303353001261572944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (5 ^ (n + 1) : ℚ) / 4⌋

end

end A014827.P1303353001261572944

namespace A014827

/-- `floor(a(n-1)+5^(n+1)/4)` -/
def P1303353001261572944.Spec : Prop :=
  ∀ n, P1303353001261572944.a n = A014827 (n + 1)

end A014827

/-! ## A014827.P15373929138237930521

`∑[5^(n+1)/5]+a(n-1)` with `a(0)=1`
-/

namespace A014827.P15373929138237930521
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A014827.P15373929138237930521

namespace A014827

/-- `∑[5^(n+1)/5]+a(n-1)` -/
def P15373929138237930521.Spec : Prop :=
  ∀ n, P15373929138237930521.a n = (A014827 (n + 1) : ℚ)

end A014827

/-! ## A014827.P18115744504546452735

`a(n-1)/(1-4/5)+n+1` with `a(0)=1`
-/

namespace A014827.P18115744504546452735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) + (n + 1 : ℚ)

end

end A014827.P18115744504546452735

namespace A014827

/-- `a(n-1)/(1-4/5)+n+1` -/
def P18115744504546452735.Spec : Prop :=
  ∀ n, P18115744504546452735.a n = (A014827 (n + 1) : ℚ)

end A014827

/-! ## A014827.P444412875105295802

`2*n-(n-1-5*a(n-1))` with `a(0)=1`
-/

namespace A014827.P444412875105295802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - 5 * a (n - 1))

end

end A014827.P444412875105295802

namespace A014827

/-- `2*n-(n-1-5*a(n-1))` -/
def P444412875105295802.Spec : Prop :=
  ∀ n, P444412875105295802.a n = A014827 (n + 1)

end A014827

/-! ## A014827.P6768655654841204553

`∑[∑[A000351(n)]]`
-/

namespace A014827.P6768655654841204553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014827.P6768655654841204553

namespace A014827

/-- `∑[∑[A000351(n)]]` -/
def P6768655654841204553.Spec : Prop :=
  ∀ n, P6768655654841204553.a n = A014827 (n + 1)

end A014827

/-! ## A014827.P9544525582161942983

`∑[A003463(n+1)]`
-/

namespace A014827.P9544525582161942983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014827.P9544525582161942983

namespace A014827

/-- `∑[A003463(n+1)]` -/
def P9544525582161942983.Spec : Prop :=
  ∀ n, P9544525582161942983.a n = A014827 (n + 1)

end A014827

/-! ## A014827.P14956523972994633504

`∑[∑[A017919(2*n)]]`
-/

namespace A014827.P14956523972994633504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017919 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014827.P14956523972994633504

namespace A014827

/-- `∑[∑[A017919(2*n)]]` -/
def P14956523972994633504.Spec : Prop :=
  ∀ n, P14956523972994633504.a n = A014827 (n + 1)

end A014827

/-! ## A014827.P13728499577826742436

`∑[∑[A017920(2*n)]]`
-/

namespace A014827.P13728499577826742436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017920 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014827.P13728499577826742436

namespace A014827

/-- `∑[∑[A017920(2*n)]]` -/
def P13728499577826742436.Spec : Prop :=
  ∀ n, P13728499577826742436.a n = A014827 (n + 1)

end A014827

/-! ## A014827.P5053466840244208539

`∑[∑[A017921(2*n)]]`
-/

namespace A014827.P5053466840244208539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017921 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014827.P5053466840244208539

namespace A014827

/-- `∑[∑[A017921(2*n)]]` -/
def P5053466840244208539.Spec : Prop :=
  ∀ n, P5053466840244208539.a n = A014827 (n + 1)

end A014827

/-! ## A014827.P1325475245792982699

`∑[∑[A026383(2*n)]]`
-/

namespace A014827.P1325475245792982699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014827.P1325475245792982699

namespace A014827

/-- `∑[∑[A026383(2*n)]]` -/
def P1325475245792982699.Spec : Prop :=
  ∀ n, P1325475245792982699.a n = A014827 (n + 1)

end A014827

/-! ## A014827.P4455295923813780376

`∑[∑[A056451(2*n)]]`
-/

namespace A014827.P4455295923813780376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014827.P4455295923813780376

namespace A014827

/-- `∑[∑[A056451(2*n)]]` -/
def P4455295923813780376.Spec : Prop :=
  ∀ n, P4455295923813780376.a n = A014827 (n + 1)

end A014827

/-! ## A014827.P878185157209698813

`∑[∑[A056487(2*n)]]`
-/

namespace A014827.P878185157209698813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014827.P878185157209698813

namespace A014827

/-- `∑[∑[A056487(2*n)]]` -/
def P878185157209698813.Spec : Prop :=
  ∀ n, P878185157209698813.a n = A014827 (n + 1)

end A014827

/-!
# A014828: Inverse of 819th cyclotomic polynomial.

The programs for A014828, there is no canonical definition to state claims against.
-/

/-! ## A014828.P16875806513235617114

`A010892(n)*A015647(n)`
-/

namespace A014828.P16875806513235617114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A015647 n

end

end A014828.P16875806513235617114

/-!
# A014829: a(1)=1, a(n) = 6*a(n-1) + n.

The programs for A014829, the canonical program `A014829.P1638713831257350806` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014829 has offset 1).

The definition of A014829 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+n+1` (program `A014829.P1638713831257350806`, by `A014829.P1638713831257350806.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014829.P1638713831257350806

`6*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014829

/-- `6*a(n-1)+n+1` -/
def P1638713831257350806.Spec : Prop :=
  ∀ n, (P1638713831257350806.a n : ℤ) = A014829 (n + 1)

theorem P1638713831257350806.correct : P1638713831257350806.Spec := by
  intro n
  simp only [A014829, Nat.add_sub_cancel]

end A014829

/-! ## A014829.P7596865824876851637

`(6^(n+2)-5*(n+1)-6)/25`
-/

namespace A014829.P7596865824876851637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ (n + 2) : ℤ) - (5 * (n + 1) : ℤ) - 6 : ℚ) / 25

end

end A014829.P7596865824876851637

namespace A014829

/-- `(6^(n+2)-5*(n+1)-6)/25` -/
def P7596865824876851637.Spec : Prop :=
  ∀ n, P7596865824876851637.a n = (A014829 (n + 1) : ℚ)

theorem P7596865824876851637.correct : P7596865824876851637.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014829, Nat.add_sub_cancel, A014829.P7596865824876851637.a, A014829.P1638713831257350806.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014829, Nat.add_sub_cancel, A014829.P7596865824876851637.a, A014829.P1638713831257350806.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014829

/-! ## A014829.P12995408586795764360

`∑[ogf(1/(1-7x+6x^2))]`
-/

namespace A014829.P12995408586795764360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P12995408586795764360

namespace A014829

/-- `∑[ogf(1/(1-7x+6x^2))]` -/
def P12995408586795764360.Spec : Prop :=
  ∀ n, P12995408586795764360.a n = A014829 (n + 1)

end A014829

/-! ## A014829.P10591200601442502756

`ogf(1/(1-8x+13x^2-6x^3))`
-/

namespace A014829.P10591200601442502756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 13, -6] n

end

end A014829.P10591200601442502756

namespace A014829

/-- `ogf(1/(1-8x+13x^2-6x^3))` -/
def P10591200601442502756.Spec : Prop :=
  ∀ n, P10591200601442502756.a n = A014829 (n + 1)

end A014829

/-! ## A014829.P10657609871949435070

`abs(∑[∑[6*a(n-1)]])` with `a(0)=1`
-/

namespace A014829.P10657609871949435070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  6 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P10657609871949435070

namespace A014829

/-- `abs(∑[∑[6*a(n-1)]])` -/
def P10657609871949435070.Spec : Prop :=
  ∀ n, (P10657609871949435070.a n : ℤ) = A014829 (n + 1)

end A014829

/-! ## A014829.P6687243575372494045

`floor(∑[∑[6*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014829.P6687243575372494045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  6 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P6687243575372494045

namespace A014829

/-- `floor(∑[∑[6*a(n-1)]])` -/
def P6687243575372494045.Spec : Prop :=
  ∀ n, (P6687243575372494045.a n : ℤ) = A014829 (n + 1)

end A014829

/-! ## A014829.P13925436055199550644

`ceil(∑[∑[6*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014829.P13925436055199550644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  6 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P13925436055199550644

namespace A014829

/-- `ceil(∑[∑[6*a(n-1)]])` -/
def P13925436055199550644.Spec : Prop :=
  ∀ n, (P13925436055199550644.a n : ℤ) = A014829 (n + 1)

end A014829

/-! ## A014829.P9941415064595271438

`round(∑[∑[6*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014829.P9941415064595271438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  6 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P9941415064595271438

namespace A014829

/-- `round(∑[∑[6*a(n-1)]])` -/
def P9941415064595271438.Spec : Prop :=
  ∀ n, (P9941415064595271438.a n : ℤ) = A014829 (n + 1)

end A014829

/-! ## A014829.P7369693888690683716

`∑[∑[2*3*a(n-1)]]` with `a(0)=1`
-/

namespace A014829.P7369693888690683716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * (3 * f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P7369693888690683716

namespace A014829

/-- `∑[∑[2*3*a(n-1)]]` -/
def P7369693888690683716.Spec : Prop :=
  ∀ n, (P7369693888690683716.a n : ℤ) = A014829 (n + 1)

end A014829

/-! ## A014829.P10366465372504684146

`∑[∑[A000400(n)]]`
-/

namespace A014829.P10366465372504684146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P10366465372504684146

namespace A014829

/-- `∑[∑[A000400(n)]]` -/
def P10366465372504684146.Spec : Prop :=
  ∀ n, P10366465372504684146.a n = A014829 (n + 1)

end A014829

/-! ## A014829.P10002749862629690403

`∑[A003464(n+1)]`
-/

namespace A014829.P10002749862629690403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P10002749862629690403

namespace A014829

/-- `∑[A003464(n+1)]` -/
def P10002749862629690403.Spec : Prop :=
  ∀ n, P10002749862629690403.a n = A014829 (n + 1)

end A014829

/-! ## A014829.P14270023302105287391

`∑[∑[A017922(2*n)]]`
-/

namespace A014829.P14270023302105287391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017922 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P14270023302105287391

namespace A014829

/-- `∑[∑[A017922(2*n)]]` -/
def P14270023302105287391.Spec : Prop :=
  ∀ n, P14270023302105287391.a n = A014829 (n + 1)

end A014829

/-! ## A014829.P8722019716591125001

`∑[∑[A017923(2*n)]]`
-/

namespace A014829.P8722019716591125001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017923 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P8722019716591125001

namespace A014829

/-- `∑[∑[A017923(2*n)]]` -/
def P8722019716591125001.Spec : Prop :=
  ∀ n, P8722019716591125001.a n = A014829 (n + 1)

end A014829

/-! ## A014829.P14601524572635442942

`∑[∑[A017924(2*n)]]`
-/

namespace A014829.P14601524572635442942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017924 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P14601524572635442942

namespace A014829

/-- `∑[∑[A017924(2*n)]]` -/
def P14601524572635442942.Spec : Prop :=
  ∀ n, P14601524572635442942.a n = A014829 (n + 1)

end A014829

/-! ## A014829.P12799742076580583037

`∑[∑[A026549(2*n)]]`
-/

namespace A014829.P12799742076580583037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P12799742076580583037

namespace A014829

/-- `∑[∑[A026549(2*n)]]` -/
def P12799742076580583037.Spec : Prop :=
  ∀ n, P12799742076580583037.a n = A014829 (n + 1)

end A014829

/-! ## A014829.P2229171105887404766

`∑[∑[A056452(2*n)]]`
-/

namespace A014829.P2229171105887404766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056452 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P2229171105887404766

namespace A014829

/-- `∑[∑[A056452(2*n)]]` -/
def P2229171105887404766.Spec : Prop :=
  ∀ n, P2229171105887404766.a n = A014829 (n + 1)

end A014829

/-! ## A014829.P11365884885702390346

`A094259(n+1)-(n+2)`
-/

namespace A014829.P11365884885702390346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094259 (n + 1) - (n + 2 : ℤ)

end

end A014829.P11365884885702390346

namespace A014829

/-- `A094259(n+1)-(n+2)` -/
def P11365884885702390346.Spec : Prop :=
  ∀ n, P11365884885702390346.a n = A014829 (n + 1)

end A014829

/-! ## A014829.P14282759601277215557

`∑[∑[A026532(2*n+1)]]`
-/

namespace A014829.P14282759601277215557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P14282759601277215557

namespace A014829

/-- `∑[∑[A026532(2*n+1)]]` -/
def P14282759601277215557.Spec : Prop :=
  ∀ n, P14282759601277215557.a n = A014829 (n + 1)

end A014829

/-! ## A014829.P14417501407674860727

`∑[∑[A164532(2*n+1)]]`
-/

namespace A014829.P14417501407674860727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164532 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P14417501407674860727

namespace A014829

/-- `∑[∑[A164532(2*n+1)]]` -/
def P14417501407674860727.Spec : Prop :=
  ∀ n, P14417501407674860727.a n = A014829 (n + 1)

end A014829

/-! ## A014829.P530119494772141607

`∑[∑[A166023(2*n+1)]]`
-/

namespace A014829.P530119494772141607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166023 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014829.P530119494772141607

namespace A014829

/-- `∑[∑[A166023(2*n+1)]]` -/
def P530119494772141607.Spec : Prop :=
  ∀ n, P530119494772141607.a n = A014829 (n + 1)

end A014829

/-!
# A014830: a(1)=1; for n > 1, a(n) = 7*a(n-1) + n.

The programs for A014830, the canonical program `A014830.P14158286752139887081` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014830 has offset 1).

The definition of A014830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+n+1` (program `A014830.P14158286752139887081`, by `A014830.P14158286752139887081.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014830.P14158286752139887081

`7*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014830

/-- `7*a(n-1)+n+1` -/
def P14158286752139887081.Spec : Prop :=
  ∀ n, (P14158286752139887081.a n : ℤ) = A014830 (n + 1)

theorem P14158286752139887081.correct : P14158286752139887081.Spec := by
  intro n
  simp only [A014830, Nat.add_sub_cancel]

end A014830

/-! ## A014830.P18090432134679737161

`(7^(n+2)-6*(n+1)-7)/36`
-/

namespace A014830.P18090432134679737161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 2) : ℤ) - (6 * (n + 1) : ℤ) - 7 : ℚ) / 36

end

end A014830.P18090432134679737161

namespace A014830

/-- `(7^(n+2)-6*(n+1)-7)/36` -/
def P18090432134679737161.Spec : Prop :=
  ∀ n, P18090432134679737161.a n = (A014830 (n + 1) : ℚ)

theorem P18090432134679737161.correct : P18090432134679737161.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014830, Nat.add_sub_cancel, A014830.P18090432134679737161.a, A014830.P14158286752139887081.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014830, Nat.add_sub_cancel, A014830.P18090432134679737161.a, A014830.P14158286752139887081.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014830

/-! ## A014830.P10703458799342967819

`∑[ogf(1/(1-8x+7x^2))]`
-/

namespace A014830.P10703458799342967819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 7] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014830.P10703458799342967819

namespace A014830

/-- `∑[ogf(1/(1-8x+7x^2))]` -/
def P10703458799342967819.Spec : Prop :=
  ∀ n, P10703458799342967819.a n = A014830 (n + 1)

end A014830

/-! ## A014830.P10432460112299208135

`ogf(1/(1-9x+15x^2-7x^3))`
-/

namespace A014830.P10432460112299208135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -9, 15, -7] n

end

end A014830.P10432460112299208135

namespace A014830

/-- `ogf(1/(1-9x+15x^2-7x^3))` -/
def P10432460112299208135.Spec : Prop :=
  ∀ n, P10432460112299208135.a n = A014830 (n + 1)

end A014830

/-! ## A014830.P5555227175080148177

`abs(∑[∑[7*a(n-1)]])` with `a(0)=1`
-/

namespace A014830.P5555227175080148177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  7 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014830.P5555227175080148177

namespace A014830

/-- `abs(∑[∑[7*a(n-1)]])` -/
def P5555227175080148177.Spec : Prop :=
  ∀ n, (P5555227175080148177.a n : ℤ) = A014830 (n + 1)

end A014830

/-! ## A014830.P4005271226115764438

`floor(∑[∑[7*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014830.P4005271226115764438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  7 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014830.P4005271226115764438

namespace A014830

/-- `floor(∑[∑[7*a(n-1)]])` -/
def P4005271226115764438.Spec : Prop :=
  ∀ n, (P4005271226115764438.a n : ℤ) = A014830 (n + 1)

end A014830

/-! ## A014830.P143117421114496738

`ceil(∑[∑[7*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014830.P143117421114496738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  7 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014830.P143117421114496738

namespace A014830

/-- `ceil(∑[∑[7*a(n-1)]])` -/
def P143117421114496738.Spec : Prop :=
  ∀ n, (P143117421114496738.a n : ℤ) = A014830 (n + 1)

end A014830

/-! ## A014830.P10623724464556724530

`round(∑[∑[7*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014830.P10623724464556724530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  7 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014830.P10623724464556724530

namespace A014830

/-- `round(∑[∑[7*a(n-1)]])` -/
def P10623724464556724530.Spec : Prop :=
  ∀ n, (P10623724464556724530.a n : ℤ) = A014830 (n + 1)

end A014830

/-! ## A014830.P2091084236232597061

`∑[∑[A000420(n)]]`
-/

namespace A014830.P2091084236232597061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014830.P2091084236232597061

namespace A014830

/-- `∑[∑[A000420(n)]]` -/
def P2091084236232597061.Spec : Prop :=
  ∀ n, P2091084236232597061.a n = A014830 (n + 1)

end A014830

/-! ## A014830.P14481781928556328640

`∑[A023000(n+1)]`
-/

namespace A014830.P14481781928556328640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014830.P14481781928556328640

namespace A014830

/-- `∑[A023000(n+1)]` -/
def P14481781928556328640.Spec : Prop :=
  ∀ n, P14481781928556328640.a n = A014830 (n + 1)

end A014830

/-! ## A014830.P17058757998367606396

`∑[∑[A017925(2*n)]]`
-/

namespace A014830.P17058757998367606396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017925 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014830.P17058757998367606396

namespace A014830

/-- `∑[∑[A017925(2*n)]]` -/
def P17058757998367606396.Spec : Prop :=
  ∀ n, P17058757998367606396.a n = A014830 (n + 1)

end A014830

/-! ## A014830.P12097609585719751324

`∑[∑[A017926(2*n)]]`
-/

namespace A014830.P12097609585719751324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017926 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014830.P12097609585719751324

namespace A014830

/-- `∑[∑[A017926(2*n)]]` -/
def P12097609585719751324.Spec : Prop :=
  ∀ n, P12097609585719751324.a n = A014830 (n + 1)

end A014830

/-! ## A014830.P12497992329209454081

`∑[∑[A017927(2*n)]]`
-/

namespace A014830.P12497992329209454081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014830.P12497992329209454081

namespace A014830

/-- `∑[∑[A017927(2*n)]]` -/
def P12497992329209454081.Spec : Prop :=
  ∀ n, P12497992329209454081.a n = A014830 (n + 1)

end A014830

/-! ## A014830.P3044938714484803815

`∑[∑[A123752(2*n)]]`
-/

namespace A014830.P3044938714484803815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014830.P3044938714484803815

namespace A014830

/-- `∑[∑[A123752(2*n)]]` -/
def P3044938714484803815.Spec : Prop :=
  ∀ n, P3044938714484803815.a n = A014830 (n + 1)

end A014830

/-! ## A014830.P15307122564397296646

`n+1+∑[A104896(n)]`
-/

namespace A014830.P15307122564397296646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014830.P15307122564397296646

namespace A014830

/-- `n+1+∑[A104896(n)]` -/
def P15307122564397296646.Spec : Prop :=
  ∀ n, P15307122564397296646.a n = A014830 (n + 1)

end A014830

/-! ## A014830.P15587810734319912910

`A238275(n)+a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A014830.P15587810734319912910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  A238275 n + a (n - 2)

end

end A014830.P15587810734319912910

namespace A014830

/-- `A238275(n)+a(n-2)` -/
def P15587810734319912910.Spec : Prop :=
  ∀ n, P15587810734319912910.a n = A014830 (n + 1)

end A014830

/-! ## A014830.P15075213961806259693

`∑[n+1]+∑[∑[A024075(n)]]`
-/

namespace A014830.P15075213961806259693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A014830.P15075213961806259693

namespace A014830

/-- `∑[n+1]+∑[∑[A024075(n)]]` -/
def P15075213961806259693.Spec : Prop :=
  ∀ n, P15075213961806259693.a n = A014830 (n + 1)

end A014830

/-! ## A014830.P2401690477825086265

`A178730(n+1)+A178730(n+2)`
-/

namespace A014830.P2401690477825086265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178730 (n + 1) + A178730 (n + 2)

end

end A014830.P2401690477825086265

namespace A014830

/-- `A178730(n+1)+A178730(n+2)` -/
def P2401690477825086265.Spec : Prop :=
  ∀ n, P2401690477825086265.a n = A014830 (n + 1)

end A014830

/-! ## A014830.P4585815439690047213

`floor(a(n-1)+7^(n+1)/6)` with `a(0)=1`
-/

namespace A014830.P4585815439690047213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (7 ^ (n + 1) : ℚ) / 6⌋

end

end A014830.P4585815439690047213

namespace A014830

/-- `floor(a(n-1)+7^(n+1)/6)` -/
def P4585815439690047213.Spec : Prop :=
  ∀ n, P4585815439690047213.a n = A014830 (n + 1)

end A014830

/-! ## A014830.P12663052140313401948

`∑[7^(n+1)/7]+a(n-1)` with `a(0)=1`
-/

namespace A014830.P12663052140313401948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 ^ (n + 1) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A014830.P12663052140313401948

namespace A014830

/-- `∑[7^(n+1)/7]+a(n-1)` -/
def P12663052140313401948.Spec : Prop :=
  ∀ n, P12663052140313401948.a n = (A014830 (n + 1) : ℚ)

end A014830

/-!
# A014831: a(1)=1; for n>1, a(n) = 8*a(n-1) + n.

The programs for A014831, the canonical program `A014831.P15083714595225687828` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014831 has offset 1).

The definition of A014831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+n+1` (program `A014831.P15083714595225687828`, by `A014831.P15083714595225687828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014831.P15083714595225687828

`8*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014831

/-- `8*a(n-1)+n+1` -/
def P15083714595225687828.Spec : Prop :=
  ∀ n, (P15083714595225687828.a n : ℤ) = A014831 (n + 1)

theorem P15083714595225687828.correct : P15083714595225687828.Spec := by
  intro n
  simp only [A014831, Nat.add_sub_cancel]

end A014831

/-! ## A014831.P2605157970738524692

`(8^(n+2)-7*(n+1)-8)/49`
-/

namespace A014831.P2605157970738524692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 2) : ℤ) - (7 * (n + 1) : ℤ) - 8 : ℚ) / 49

end

end A014831.P2605157970738524692

namespace A014831

/-- `(8^(n+2)-7*(n+1)-8)/49` -/
def P2605157970738524692.Spec : Prop :=
  ∀ n, P2605157970738524692.a n = (A014831 (n + 1) : ℚ)

theorem P2605157970738524692.correct : P2605157970738524692.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014831, Nat.add_sub_cancel, A014831.P2605157970738524692.a, A014831.P15083714595225687828.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014831, Nat.add_sub_cancel, A014831.P2605157970738524692.a, A014831.P15083714595225687828.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014831

/-! ## A014831.P17374057817786516041

`∑[ogf(1/(1-9x+8x^2))]`
-/

namespace A014831.P17374057817786516041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -9, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P17374057817786516041

namespace A014831

/-- `∑[ogf(1/(1-9x+8x^2))]` -/
def P17374057817786516041.Spec : Prop :=
  ∀ n, P17374057817786516041.a n = A014831 (n + 1)

end A014831

/-! ## A014831.P17526408145503772372

`ogf(1/(1-10x+17x^2-8x^3))`
-/

namespace A014831.P17526408145503772372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 17, -8] n

end

end A014831.P17526408145503772372

namespace A014831

/-- `ogf(1/(1-10x+17x^2-8x^3))` -/
def P17526408145503772372.Spec : Prop :=
  ∀ n, P17526408145503772372.a n = A014831 (n + 1)

end A014831

/-! ## A014831.P17726554939202451070

`abs(∑[∑[8*a(n-1)]])` with `a(0)=1`
-/

namespace A014831.P17726554939202451070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  8 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P17726554939202451070

namespace A014831

/-- `abs(∑[∑[8*a(n-1)]])` -/
def P17726554939202451070.Spec : Prop :=
  ∀ n, (P17726554939202451070.a n : ℤ) = A014831 (n + 1)

end A014831

/-! ## A014831.P9163927679644435217

`floor(∑[∑[8*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014831.P9163927679644435217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  8 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P9163927679644435217

namespace A014831

/-- `floor(∑[∑[8*a(n-1)]])` -/
def P9163927679644435217.Spec : Prop :=
  ∀ n, (P9163927679644435217.a n : ℤ) = A014831 (n + 1)

end A014831

/-! ## A014831.P14695411312180326589

`ceil(∑[∑[8*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014831.P14695411312180326589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  8 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P14695411312180326589

namespace A014831

/-- `ceil(∑[∑[8*a(n-1)]])` -/
def P14695411312180326589.Spec : Prop :=
  ∀ n, (P14695411312180326589.a n : ℤ) = A014831 (n + 1)

end A014831

/-! ## A014831.P13295588690111228827

`round(∑[∑[8*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014831.P13295588690111228827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  8 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P13295588690111228827

namespace A014831

/-- `round(∑[∑[8*a(n-1)]])` -/
def P13295588690111228827.Spec : Prop :=
  ∀ n, (P13295588690111228827.a n : ℤ) = A014831 (n + 1)

end A014831

/-! ## A014831.P13536426422385299269

`a(n-1)/(1/2)^3+n+1` with `a(0)=1`
-/

namespace A014831.P13536426422385299269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3 + (n + 1 : ℚ)

end

end A014831.P13536426422385299269

namespace A014831

/-- `a(n-1)/(1/2)^3+n+1` -/
def P13536426422385299269.Spec : Prop :=
  ∀ n, P13536426422385299269.a n = (A014831 (n + 1) : ℚ)

end A014831

/-! ## A014831.P16836455970962493088

`∑[∑[A001018(n)]]`
-/

namespace A014831.P16836455970962493088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P16836455970962493088

namespace A014831

/-- `∑[∑[A001018(n)]]` -/
def P16836455970962493088.Spec : Prop :=
  ∀ n, P16836455970962493088.a n = A014831 (n + 1)

end A014831

/-! ## A014831.P6380457691920777266

`∑[A023001(n+1)]`
-/

namespace A014831.P6380457691920777266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P6380457691920777266

namespace A014831

/-- `∑[A023001(n+1)]` -/
def P6380457691920777266.Spec : Prop :=
  ∀ n, P6380457691920777266.a n = A014831 (n + 1)

end A014831

/-! ## A014831.P8184781461754935296

`A145729(n)+1+n`
-/

namespace A014831.P8184781461754935296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145729 n + 1 + (n : ℤ)

end

end A014831.P8184781461754935296

namespace A014831

/-- `A145729(n)+1+n` -/
def P8184781461754935296.Spec : Prop :=
  ∀ n, P8184781461754935296.a n = A014831 (n + 1)

end A014831

/-! ## A014831.P8646186651506192955

`∑[∑[A017928(2*n)]]`
-/

namespace A014831.P8646186651506192955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017928 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P8646186651506192955

namespace A014831

/-- `∑[∑[A017928(2*n)]]` -/
def P8646186651506192955.Spec : Prop :=
  ∀ n, P8646186651506192955.a n = A014831 (n + 1)

end A014831

/-! ## A014831.P8296330881551238

`∑[∑[A017929(2*n)]]`
-/

namespace A014831.P8296330881551238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017929 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P8296330881551238

namespace A014831

/-- `∑[∑[A017929(2*n)]]` -/
def P8296330881551238.Spec : Prop :=
  ∀ n, P8296330881551238.a n = A014831 (n + 1)

end A014831

/-! ## A014831.P7210042509736521043

`∑[∑[A017930(2*n)]]`
-/

namespace A014831.P7210042509736521043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017930 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P7210042509736521043

namespace A014831

/-- `∑[∑[A017930(2*n)]]` -/
def P7210042509736521043.Spec : Prop :=
  ∀ n, P7210042509736521043.a n = A014831 (n + 1)

end A014831

/-! ## A014831.P18032084056115859986

`∑[∑[A094014(2*n)]]`
-/

namespace A014831.P18032084056115859986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P18032084056115859986

namespace A014831

/-- `∑[∑[A094014(2*n)]]` -/
def P18032084056115859986.Spec : Prop :=
  ∀ n, P18032084056115859986.a n = A014831 (n + 1)

end A014831

/-! ## A014831.P15093821018687625632

`∑[∑[A094015(2*n)]]`
-/

namespace A014831.P15093821018687625632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094015 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P15093821018687625632

namespace A014831

/-- `∑[∑[A094015(2*n)]]` -/
def P15093821018687625632.Spec : Prop :=
  ∀ n, P15093821018687625632.a n = A014831 (n + 1)

end A014831

/-! ## A014831.P9029629979506932785

`∑[∑[A096886(2*n)]]`
-/

namespace A014831.P9029629979506932785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096886 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P9029629979506932785

namespace A014831

/-- `∑[∑[A096886(2*n)]]` -/
def P9029629979506932785.Spec : Prop :=
  ∀ n, P9029629979506932785.a n = A014831 (n + 1)

end A014831

/-! ## A014831.P7251989054636302147

`∑[∑[A379530(2*n)]]`
-/

namespace A014831.P7251989054636302147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379530 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014831.P7251989054636302147

namespace A014831

/-- `∑[∑[A379530(2*n)]]` -/
def P7251989054636302147.Spec : Prop :=
  ∀ n, P7251989054636302147.a n = A014831 (n + 1)

end A014831

/-! ## A014831.P18216234153383256490

`abs(∑[∑[A104537(3*n)]])`
-/

namespace A014831.P18216234153383256490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104537 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A014831.P18216234153383256490

namespace A014831

/-- `abs(∑[∑[A104537(3*n)]])` -/
def P18216234153383256490.Spec : Prop :=
  ∀ n, P18216234153383256490.a n = A014831 (n + 1)

end A014831

/-!
# A014832: a(1)=1; for n>1, a(n) = 9*a(n-1) + n.

The programs for A014832, the canonical program `A014832.P16119270779884186029` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014832 has offset 1).

The definition of A014832 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+n+1` (program `A014832.P16119270779884186029`, by `A014832.P16119270779884186029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014832.P16119270779884186029

`9*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014832

/-- `9*a(n-1)+n+1` -/
def P16119270779884186029.Spec : Prop :=
  ∀ n, (P16119270779884186029.a n : ℤ) = A014832 (n + 1)

theorem P16119270779884186029.correct : P16119270779884186029.Spec := by
  intro n
  simp only [A014832, Nat.add_sub_cancel]

end A014832

/-! ## A014832.P11473295713199491677

`(9^(n+2)-8*(n+1)-9)/64`
-/

namespace A014832.P11473295713199491677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 2) : ℤ) - (8 * (n + 1) : ℤ) - 9 : ℚ) / 64

end

end A014832.P11473295713199491677

namespace A014832

/-- `(9^(n+2)-8*(n+1)-9)/64` -/
def P11473295713199491677.Spec : Prop :=
  ∀ n, P11473295713199491677.a n = (A014832 (n + 1) : ℚ)

theorem P11473295713199491677.correct : P11473295713199491677.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014832, Nat.add_sub_cancel, A014832.P11473295713199491677.a, A014832.P16119270779884186029.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014832, Nat.add_sub_cancel, A014832.P11473295713199491677.a, A014832.P16119270779884186029.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014832

/-! ## A014832.P10810802343563394638

`∑[ogf(1/(1-10x+9x^2))]`
-/

namespace A014832.P10810802343563394638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P10810802343563394638

namespace A014832

/-- `∑[ogf(1/(1-10x+9x^2))]` -/
def P10810802343563394638.Spec : Prop :=
  ∀ n, P10810802343563394638.a n = A014832 (n + 1)

end A014832

/-! ## A014832.P15103431233873723955

`ogf(1/(1-11x+19x^2-9x^3))`
-/

namespace A014832.P15103431233873723955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -11, 19, -9] n

end

end A014832.P15103431233873723955

namespace A014832

/-- `ogf(1/(1-11x+19x^2-9x^3))` -/
def P15103431233873723955.Spec : Prop :=
  ∀ n, P15103431233873723955.a n = A014832 (n + 1)

end A014832

/-! ## A014832.P13578002005055979889

`abs(∑[∑[9*a(n-1)]])` with `a(0)=1`
-/

namespace A014832.P13578002005055979889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  9 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P13578002005055979889

namespace A014832

/-- `abs(∑[∑[9*a(n-1)]])` -/
def P13578002005055979889.Spec : Prop :=
  ∀ n, (P13578002005055979889.a n : ℤ) = A014832 (n + 1)

end A014832

/-! ## A014832.P4333444525840890120

`floor(∑[∑[9*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014832.P4333444525840890120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  9 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P4333444525840890120

namespace A014832

/-- `floor(∑[∑[9*a(n-1)]])` -/
def P4333444525840890120.Spec : Prop :=
  ∀ n, (P4333444525840890120.a n : ℤ) = A014832 (n + 1)

end A014832

/-! ## A014832.P55340800352851396

`ceil(∑[∑[9*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014832.P55340800352851396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  9 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P55340800352851396

namespace A014832

/-- `ceil(∑[∑[9*a(n-1)]])` -/
def P55340800352851396.Spec : Prop :=
  ∀ n, (P55340800352851396.a n : ℤ) = A014832 (n + 1)

end A014832

/-! ## A014832.P4287923405678846235

`a(n-1)/(1/3)²+n+1` with `a(0)=1`
-/

namespace A014832.P4287923405678846235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 + (n + 1 : ℚ)

end

end A014832.P4287923405678846235

namespace A014832

/-- `a(n-1)/(1/3)²+n+1` -/
def P4287923405678846235.Spec : Prop :=
  ∀ n, P4287923405678846235.a n = (A014832 (n + 1) : ℚ)

end A014832

/-! ## A014832.P6983246954334249134

`∑[∑[A001019(n)]]`
-/

namespace A014832.P6983246954334249134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P6983246954334249134

namespace A014832

/-- `∑[∑[A001019(n)]]` -/
def P6983246954334249134.Spec : Prop :=
  ∀ n, P6983246954334249134.a n = A014832 (n + 1)

end A014832

/-! ## A014832.P6705387104235087795

`∑[A002452(n+1)]`
-/

namespace A014832.P6705387104235087795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P6705387104235087795

namespace A014832

/-- `∑[A002452(n+1)]` -/
def P6705387104235087795.Spec : Prop :=
  ∀ n, P6705387104235087795.a n = A014832 (n + 1)

end A014832

/-! ## A014832.P12484310036940687475

`∑[A239577(2*n)]`
-/

namespace A014832.P12484310036940687475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239577 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P12484310036940687475

namespace A014832

/-- `∑[A239577(2*n)]` -/
def P12484310036940687475.Spec : Prop :=
  ∀ n, P12484310036940687475.a n = A014832 (n + 1)

end A014832

/-! ## A014832.P16214467396961255268

`∑[∑[A000244(n)²]]`
-/

namespace A014832.P16214467396961255268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P16214467396961255268

namespace A014832

/-- `∑[∑[A000244(n)²]]` -/
def P16214467396961255268.Spec : Prop :=
  ∀ n, P16214467396961255268.a n = A014832 (n + 1)

end A014832

/-! ## A014832.P4503098539957482483

`∑[∑[A352779(n)²]]`
-/

namespace A014832.P4503098539957482483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352779 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P4503098539957482483

namespace A014832

/-- `∑[∑[A352779(n)²]]` -/
def P4503098539957482483.Spec : Prop :=
  ∀ n, P4503098539957482483.a n = A014832 (n + 1)

end A014832

/-! ## A014832.P2438710953134749426

`∑[∑[A000244(2*n)]]`
-/

namespace A014832.P2438710953134749426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P2438710953134749426

namespace A014832

/-- `∑[∑[A000244(2*n)]]` -/
def P2438710953134749426.Spec : Prop :=
  ∀ n, P2438710953134749426.a n = A014832 (n + 1)

end A014832

/-! ## A014832.P3097674071760554357

`∑[∑[A083423(2*n)]]`
-/

namespace A014832.P3097674071760554357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083423 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P3097674071760554357

namespace A014832

/-- `∑[∑[A083423(2*n)]]` -/
def P3097674071760554357.Spec : Prop :=
  ∀ n, P3097674071760554357.a n = A014832 (n + 1)

end A014832

/-! ## A014832.P10982725531275944994

`∑[∑[A092270(2*n)]]`
-/

namespace A014832.P10982725531275944994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092270 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P10982725531275944994

namespace A014832

/-- `∑[∑[A092270(2*n)]]` -/
def P10982725531275944994.Spec : Prop :=
  ∀ n, P10982725531275944994.a n = A014832 (n + 1)

end A014832

/-! ## A014832.P13560866404030204072

`∑[∑[A133125(2*n)]]`
-/

namespace A014832.P13560866404030204072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133125 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P13560866404030204072

namespace A014832

/-- `∑[∑[A133125(2*n)]]` -/
def P13560866404030204072.Spec : Prop :=
  ∀ n, P13560866404030204072.a n = A014832 (n + 1)

end A014832

/-! ## A014832.P6239565731610570340

`∑[∑[A156180(2*n)]]`
-/

namespace A014832.P6239565731610570340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156180 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P6239565731610570340

namespace A014832

/-- `∑[∑[A156180(2*n)]]` -/
def P6239565731610570340.Spec : Prop :=
  ∀ n, P6239565731610570340.a n = A014832 (n + 1)

end A014832

/-! ## A014832.P12236778143213126507

`∑[∑[A352779(2*n)]]`
-/

namespace A014832.P12236778143213126507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352779 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P12236778143213126507

namespace A014832

/-- `∑[∑[A352779(2*n)]]` -/
def P12236778143213126507.Spec : Prop :=
  ∀ n, P12236778143213126507.a n = A014832 (n + 1)

end A014832

/-! ## A014832.P14223724484814642403

`∑[A006342(2*n+1)]`
-/

namespace A014832.P14223724484814642403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014832.P14223724484814642403

namespace A014832

/-- `∑[A006342(2*n+1)]` -/
def P14223724484814642403.Spec : Prop :=
  ∀ n, P14223724484814642403.a n = A014832 (n + 1)

end A014832

/-!
# A014833: a(n) = 2^n - n*(n+1)/2.

The programs for A014833, the canonical program `A014833.P10131480639018625507` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014833 has offset 0).

The definition of A014833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014833.P10131480639018625507

`2^n-n*(n+1)/2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014833

/-- `2^n-n*(n+1)/2` -/
def P10131480639018625507.Spec : Prop :=
  ∀ n, P10131480639018625507.a n = (A014833 n : ℚ)

end A014833

/-! ## A014833.P3316669643438031524

`-or(-2^n, ∑[n])`
-/

namespace A014833.P3316669643438031524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-(2 ^ n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A014833.P3316669643438031524

namespace A014833

/-- `-or(-2^n, ∑[n])` -/
def P3316669643438031524.Spec : Prop :=
  ∀ n, P3316669643438031524.a n = A014833 n

end A014833

/-! ## A014833.P16203617884778589701

`-xor(-2^n, ∑[n])`
-/

namespace A014833.P16203617884778589701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-(2 ^ n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A014833.P16203617884778589701

namespace A014833

/-- `-xor(-2^n, ∑[n])` -/
def P16203617884778589701.Spec : Prop :=
  ∀ n, P16203617884778589701.a n = A014833 n

end A014833

/-! ## A014833.P7170135919149766846

`abs(2^n-C(n+1, 2))`
-/

namespace A014833.P7170135919149766846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - (Nat.choose (n + 1) 2 : ℤ)|

end

end A014833.P7170135919149766846

namespace A014833

/-- `abs(2^n-C(n+1, 2))` -/
def P7170135919149766846.Spec : Prop :=
  ∀ n, P7170135919149766846.a n = A014833 n

end A014833

/-! ## A014833.P7464124711474542266

`∑[Δ[2*a(n-1)]-n]` with `a(0)=0, a(1)=1`
-/

namespace A014833.P7464124711474542266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014833.P7464124711474542266

namespace A014833

/-- `∑[Δ[2*a(n-1)]-n]` -/
def P7464124711474542266.Spec : Prop :=
  ∀ n, P7464124711474542266.a n = A014833 n

end A014833

/-! ## A014833.P6411123621389244554

`∑[2*(a(n-1)-1)+n]` with `a(0)=1, a(1)=0`
-/

namespace A014833.P6411123621389244554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 * (f1 (n - 1) - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014833.P6411123621389244554

namespace A014833

/-- `∑[2*(a(n-1)-1)+n]` -/
def P6411123621389244554.Spec : Prop :=
  ∀ n, P6411123621389244554.a n = A014833 n

end A014833

/-! ## A014833.P12352529774420037293

`∑[n-2*(1-a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A014833.P12352529774420037293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) - 2 * (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014833.P12352529774420037293

namespace A014833

/-- `∑[n-2*(1-a(n-1))]` -/
def P12352529774420037293.Spec : Prop :=
  ∀ n, P12352529774420037293.a n = A014833 n

end A014833

/-! ## A014833.P67489051776077462

`∑[a(n-1)-2+a(n-1)+n]` with `a(0)=1, a(1)=0`
-/

namespace A014833.P67489051776077462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) - 2 + (f1 (n - 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014833.P67489051776077462

namespace A014833

/-- `∑[a(n-1)-2+a(n-1)+n]` -/
def P67489051776077462.Spec : Prop :=
  ∀ n, P67489051776077462.a n = A014833 n

end A014833

/-! ## A014833.P17499609443736075861

`∑[a(n-1)-(2-a(n-1)-n)]` with `a(0)=1, a(1)=0`
-/

namespace A014833.P17499609443736075861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014833.P17499609443736075861

namespace A014833

/-- `∑[a(n-1)-(2-a(n-1)-n)]` -/
def P17499609443736075861.Spec : Prop :=
  ∀ n, P17499609443736075861.a n = A014833 n

end A014833

/-! ## A014833.P420947784960137186

`∑[A011782(n)-n]`
-/

namespace A014833.P420947784960137186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014833.P420947784960137186

namespace A014833

/-- `∑[A011782(n)-n]` -/
def P420947784960137186.Spec : Prop :=
  ∀ n, P420947784960137186.a n = A014833 n

end A014833

/-! ## A014833.P11757172197883133031

`abs(∑[n]-A000079(n))`
-/

namespace A014833.P11757172197883133031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000079 n|

end

end A014833.P11757172197883133031

namespace A014833

/-- `abs(∑[n]-A000079(n))` -/
def P11757172197883133031.Spec : Prop :=
  ∀ n, P11757172197883133031.a n = A014833 n

end A014833

/-! ## A014833.P11746647626484213783

`∑[abs(A123344(n))-n]`
-/

namespace A014833.P11746647626484213783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123344 n| - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014833.P11746647626484213783

namespace A014833

/-- `∑[abs(A123344(n))-n]` -/
def P11746647626484213783.Spec : Prop :=
  ∀ n, P11746647626484213783.a n = A014833 n

end A014833

/-! ## A014833.P13598224845377846376

`abs(∑[n]-A186949(n))`
-/

namespace A014833.P13598224845377846376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A186949 n|

end

end A014833.P13598224845377846376

namespace A014833

/-- `abs(∑[n]-A186949(n))` -/
def P13598224845377846376.Spec : Prop :=
  ∀ n, P13598224845377846376.a n = A014833 n

end A014833

/-! ## A014833.P12241963779471312250

`∑[∑[A034008(n)]-n]`
-/

namespace A014833.P12241963779471312250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014833.P12241963779471312250

namespace A014833

/-- `∑[∑[A034008(n)]-n]` -/
def P12241963779471312250.Spec : Prop :=
  ∀ n, P12241963779471312250.a n = A014833 n

end A014833

/-! ## A014833.P11424616091932064472

`∑[Δ[A056469(n)]-n]`
-/

namespace A014833.P11424616091932064472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014833.P11424616091932064472

namespace A014833

/-- `∑[Δ[A056469(n)]-n]` -/
def P11424616091932064472.Spec : Prop :=
  ∀ n, P11424616091932064472.a n = A014833 n

end A014833

/-! ## A014833.P18275278508667896960

`∑[Δ[A131577(n)]-n]`
-/

namespace A014833.P18275278508667896960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014833.P18275278508667896960

namespace A014833

/-- `∑[Δ[A131577(n)]-n]` -/
def P18275278508667896960.Spec : Prop :=
  ∀ n, P18275278508667896960.a n = A014833 n

end A014833

/-! ## A014833.P14831316060926236168

`abs(A000217(n)-2^n)`
-/

namespace A014833.P14831316060926236168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 n - (2 ^ n : ℤ)|

end

end A014833.P14831316060926236168

namespace A014833

/-- `abs(A000217(n)-2^n)` -/
def P14831316060926236168.Spec : Prop :=
  ∀ n, P14831316060926236168.a n = A014833 n

end A014833

/-! ## A014833.P8967048034684369457

`∑[A166444(n+1)-n]`
-/

namespace A014833.P8967048034684369457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014833.P8967048034684369457

namespace A014833

/-- `∑[A166444(n+1)-n]` -/
def P8967048034684369457.Spec : Prop :=
  ∀ n, P8967048034684369457.a n = A014833 n

end A014833

/-! ## A014833.P3782477572234840732

`abs(A000217(n)-A000225(n)-1)`
-/

namespace A014833.P3782477572234840732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 n - A000225 n - 1|

end

end A014833.P3782477572234840732

namespace A014833

/-- `abs(A000217(n)-A000225(n)-1)` -/
def P3782477572234840732.Spec : Prop :=
  ∀ n, P3782477572234840732.a n = A014833 n

end A014833

/-! ## A014833.P13949440602998168811

`Δ[2^n-C(n+1, 3)]`
-/

namespace A014833.P13949440602998168811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.choose (n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014833.P13949440602998168811

namespace A014833

/-- `Δ[2^n-C(n+1, 3)]` -/
def P13949440602998168811.Spec : Prop :=
  ∀ n, P13949440602998168811.a n = A014833 n

end A014833

/-!
# A014834: Inverse of 825th cyclotomic polynomial.

The programs for A014834, there is no canonical definition to state claims against.
-/

/-! ## A014834.P7910464246504364344

`A014504(A340615(n))`
-/

namespace A014834.P7910464246504364344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014504 (A340615 n).toNat

end

end A014834.P7910464246504364344

/-!
# A014835: Inverse of 826th cyclotomic polynomial.

The programs for A014835, there is no canonical definition to state claims against.
-/

/-! ## A014835.P15623744135311418589

`A014422(n)*A033999(n)`
-/

namespace A014835.P15623744135311418589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014422 n * A033999 n

end

end A014835.P15623744135311418589

/-!
# A014836: Sum modulo n of all the digits of n in every base from 2 to n-1.

The programs for A014836, there is no canonical definition to state claims against.
-/

/-! ## A014836.P6502815487006330386

`A014837(n+3)%(n+3)`
-/

namespace A014836.P6502815487006330386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014837 (n + 3)) (n + 3 : ℤ)

end

end A014836.P6502815487006330386

/-! ## A014836.P7148228186045962434

`(A014842(n+3)+A014841(n+3))%(n+3)`
-/

namespace A014836.P7148228186045962434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014842 (n + 3) + A014841 (n + 3)) (n + 3 : ℤ)

end

end A014836.P7148228186045962434

/-! ## A014836.P899722087272252190

`(A043306(n+3)-1)%(n+3)`
-/

namespace A014836.P899722087272252190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043306 (n + 3) - 1) (n + 3 : ℤ)

end

end A014836.P899722087272252190

/-! ## A014836.P13395675342391140038

`(A131383(n+3)-1)%(n+3)`
-/

namespace A014836.P13395675342391140038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131383 (n + 3) - 1) (n + 3 : ℤ)

end

end A014836.P13395675342391140038

/-! ## A014836.P16807419030502509347

`(A233583(n+3)+A043306(n+3))%A233583(n+4)`
-/

namespace A014836.P16807419030502509347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 3) + A043306 (n + 3)) (A233583 (n + 4))

end

end A014836.P16807419030502509347

/-! ## A014836.P15528173899919677235

`(A233583(n+3)+A131383(n+3))%A233583(n+4)`
-/

namespace A014836.P15528173899919677235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 3) + A131383 (n + 3)) (A233583 (n + 4))

end

end A014836.P15528173899919677235

/-! ## A014836.P12256628372019942423

`A233583(A131383(n+3))%(n+3)`
-/

namespace A014836.P12256628372019942423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A131383 (n + 3)).toNat) (n + 3 : ℤ)

end

end A014836.P12256628372019942423

/-!
# A014837: Sum of all the digits of n in every base from 2 to n-1.

The programs for A014837, there is no canonical definition to state claims against.
-/

/-! ## A014837.P13112156625084257931

`A043306(n+3)-1`
-/

namespace A014837.P13112156625084257931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043306 (n + 3) - 1

end

end A014837.P13112156625084257931

/-! ## A014837.P706734968872833038

`A014842(n+3)+A014841(n+3)`
-/

namespace A014837.P706734968872833038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014842 (n + 3) + A014841 (n + 3)

end

end A014837.P706734968872833038

/-! ## A014837.P16204096188253267708

`∑[-Δ[-A043306(n+2)]]`
-/

namespace A014837.P16204096188253267708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A043306 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014837.P16204096188253267708

/-! ## A014837.P4973904868373193182

`∑[Δ[A043306(n+2)]%A005101(n+1)]`
-/

namespace A014837.P4973904868373193182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043306 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A005101 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014837.P4973904868373193182

/-! ## A014837.P8633237313257058462

`A320836(A020639(2*(n+1)))+A043306(n+3)`
-/

namespace A014837.P8633237313257058462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320836 (A020639 (2 * (n + 1))).toNat + A043306 (n + 3)

end

end A014837.P8633237313257058462

/-! ## A014837.P10619659515247076133

`A131383(n+3)-(n+4)`
-/

namespace A014837.P10619659515247076133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131383 (n + 3) - (n + 4 : ℤ)

end

end A014837.P10619659515247076133

/-! ## A014837.P2369774792311013222

`A023443(A043306(n+3))`
-/

namespace A014837.P2369774792311013222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A043306 (n + 3)).toNat

end

end A014837.P2369774792311013222

/-!
# A014841: Sum modulo the base of all the digits of n in every base from 2 to n-1.

The programs for A014841, there is no canonical definition to state claims against.
-/

/-! ## A014841.P17950073194405906328

`A014837(n+3)-A014842(n+3)`
-/

namespace A014841.P17950073194405906328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014837 (n + 3) - A014842 (n + 3)

end

end A014841.P17950073194405906328

/-! ## A014841.P14136869556007796433

`A043306(n+3)-1-A014842(n+3)`
-/

namespace A014841.P14136869556007796433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043306 (n + 3) - 1 - A014842 (n + 3)

end

end A014841.P14136869556007796433

/-! ## A014841.P2745274430191274143

`A131383(n+3)-(n+4)-A014842(n+3)`
-/

namespace A014841.P2745274430191274143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131383 (n + 3) - (n + 4 : ℤ) - A014842 (n + 3)

end

end A014841.P2745274430191274143

/-! ## A014841.P12050374600982062463

`A023443(A043306(n+3))-A014842(n+3)`
-/

namespace A014841.P12050374600982062463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A043306 (n + 3)).toNat - A014842 (n + 3)

end

end A014841.P12050374600982062463

/-!
# A014842: Difference between A014837 and A014841.

The programs for A014842, there is no canonical definition to state claims against.
-/

/-! ## A014842.P12907766792286568327

`A014837(n+3)-A014841(n+3)`
-/

namespace A014842.P12907766792286568327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014837 (n + 3) - A014841 (n + 3)

end

end A014842.P12907766792286568327

/-! ## A014842.P10552043458446591307

`A043306(n+3)-1-A014841(n+3)`
-/

namespace A014842.P10552043458446591307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043306 (n + 3) - 1 - A014841 (n + 3)

end

end A014842.P10552043458446591307

/-! ## A014842.P15737539321135251995

`A131383(n+3)-(n+4)-A014841(n+3)`
-/

namespace A014842.P15737539321135251995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131383 (n + 3) - (n + 4 : ℤ) - A014841 (n + 3)

end

end A014842.P15737539321135251995

/-! ## A014842.P15794237893035263120

`A023443(A043306(n+3))-A014841(n+3)`
-/

namespace A014842.P15794237893035263120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A043306 (n + 3)).toNat - A014841 (n + 3)

end

end A014842.P15794237893035263120

/-!
# A014844: a(n) = 2^n - n*(n-1)/2.

The programs for A014844, the canonical program `A014844.P9751159147757894953` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014844 has offset 0).

The definition of A014844 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n*(n-1)/2` (program `A014844.P3478116556774223249`, by `A014844.P3478116556774223249.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014844.P9751159147757894953

`2^n-C(n, 2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014844

/-- `2^n-C(n, 2)` -/
def P9751159147757894953.Spec : Prop :=
  ∀ n, P9751159147757894953.a n = A014844 n

theorem P9751159147757894953.correct : P9751159147757894953.Spec := by
  intro n
  simp only [A014844]

end A014844

/-! ## A014844.P3478116556774223249

`2^n-n*(n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014844.P3478116556774223249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - ((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2

end

end A014844.P3478116556774223249

namespace A014844

/-- `2^n-n*(n-1)/2` -/
def P3478116556774223249.Spec : Prop :=
  ∀ n, P3478116556774223249.a n = (A014844 n : ℚ)

theorem P3478116556774223249.correct : P3478116556774223249.Spec := by
  intro n
  simp only [A014844, Nat.add_sub_cancel, A014844.P3478116556774223249.a, A014844.P9751159147757894953.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014844

/-! ## A014844.P9583545133679884792

`∑[∑[2*a(n-1)+1]]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A014844.P9583545133679884792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  2 * f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014844.P9583545133679884792

namespace A014844

/-- `∑[∑[2*a(n-1)+1]]` -/
def P9583545133679884792.Spec : Prop :=
  ∀ n, (P9583545133679884792.a n : ℤ) = A014844 n

end A014844

/-! ## A014844.P5875326457539841761

`∑[2*a(n-1)-(3-n)]` with `a(0)=1, a(1)=1`
-/

namespace A014844.P5875326457539841761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1) - (3 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014844.P5875326457539841761

namespace A014844

/-- `∑[2*a(n-1)-(3-n)]` -/
def P5875326457539841761.Spec : Prop :=
  ∀ n, P5875326457539841761.a n = A014844 n

end A014844

/-! ## A014844.P15684363047004978935

`∑[∑[a(n-1)+a(n-1)+1]]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A014844.P15684363047004978935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014844.P15684363047004978935

namespace A014844

/-- `∑[∑[a(n-1)+a(n-1)+1]]` -/
def P15684363047004978935.Spec : Prop :=
  ∀ n, (P15684363047004978935.a n : ℤ) = A014844 n

end A014844

/-! ## A014844.P8017006956830694322

`∑[a(n-1)-(3-a(n-1)-n)]` with `a(0)=1, a(1)=1`
-/

namespace A014844.P8017006956830694322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014844.P8017006956830694322

namespace A014844

/-- `∑[a(n-1)-(3-a(n-1)-n)]` -/
def P8017006956830694322.Spec : Prop :=
  ∀ n, P8017006956830694322.a n = A014844 n

end A014844

/-! ## A014844.P10089429975566905581

`∑[A094373(n)-n]`
-/

namespace A014844.P10089429975566905581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014844.P10089429975566905581

namespace A014844

/-- `∑[A094373(n)-n]` -/
def P10089429975566905581.Spec : Prop :=
  ∀ n, P10089429975566905581.a n = A014844 n

end A014844

/-! ## A014844.P6117503482126090607

`∑[A000325(abs(1-n))]`
-/

namespace A014844.P6117503482126090607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014844.P6117503482126090607

namespace A014844

/-- `∑[A000325(abs(1-n))]` -/
def P6117503482126090607.Spec : Prop :=
  ∀ n, P6117503482126090607.a n = A014844 n

end A014844

/-! ## A014844.P16467163781624663416

`∑[abs(A248155(n))-n]`
-/

namespace A014844.P16467163781624663416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A248155 n| - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014844.P16467163781624663416

namespace A014844

/-- `∑[abs(A248155(n))-n]` -/
def P16467163781624663416.Spec : Prop :=
  ∀ n, P16467163781624663416.a n = A014844 n

end A014844

/-! ## A014844.P6250282946469661401

`∑[A056469(n)-(n+1)]`
-/

namespace A014844.P6250282946469661401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014844.P6250282946469661401

namespace A014844

/-- `∑[A056469(n)-(n+1)]` -/
def P6250282946469661401.Spec : Prop :=
  ∀ n, P6250282946469661401.a n = A014844 n

end A014844

/-! ## A014844.P1014319875211575764

`∑[A131577(n)+1-n]`
-/

namespace A014844.P1014319875211575764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014844.P1014319875211575764

namespace A014844

/-- `∑[A131577(n)+1-n]` -/
def P1014319875211575764.Spec : Prop :=
  ∀ n, P1014319875211575764.a n = A014844 n

end A014844

/-! ## A014844.P5608922678550842069

`∑[A228693(2*n)-n]`
-/

namespace A014844.P5608922678550842069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014844.P5608922678550842069

namespace A014844

/-- `∑[A228693(2*n)-n]` -/
def P5608922678550842069.Spec : Prop :=
  ∀ n, P5608922678550842069.a n = A014844 n

end A014844

/-! ## A014844.P7887974054975805909

`∑[A133140(n)/2-n]`
-/

namespace A014844.P7887974054975805909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133140 n : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014844.P7887974054975805909

namespace A014844

/-- `∑[A133140(n)/2-n]` -/
def P7887974054975805909.Spec : Prop :=
  ∀ n, P7887974054975805909.a n = (A014844 n : ℚ)

end A014844

/-! ## A014844.P15162419833094042946

`∑[A323227(n+1)-(2*n+1)]`
-/

namespace A014844.P15162419833094042946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323227 (n + 1) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014844.P15162419833094042946

namespace A014844

/-- `∑[A323227(n+1)-(2*n+1)]` -/
def P15162419833094042946.Spec : Prop :=
  ∀ n, P15162419833094042946.a n = A014844 n

end A014844

/-! ## A014844.P13773045483545978454

`(∑[A132824(n)]+1)/2`
-/

namespace A014844.P13773045483545978454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132824 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A014844.P13773045483545978454

namespace A014844

/-- `(∑[A132824(n)]+1)/2` -/
def P13773045483545978454.Spec : Prop :=
  ∀ n, P13773045483545978454.a n = (A014844 n : ℚ)

end A014844

/-! ## A014844.P17563817605093152213

`(A243860(n)+1-n)/2`
-/

namespace A014844.P17563817605093152213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243860 n + (1 - (n : ℤ)) : ℚ) / 2

end

end A014844.P17563817605093152213

namespace A014844

/-- `(A243860(n)+1-n)/2` -/
def P17563817605093152213.Spec : Prop :=
  ∀ n, P17563817605093152213.a n = (A014844 n : ℚ)

theorem P17563817605093152213.correct : P17563817605093152213.Spec := by
  intro n
  simp only [A014844, Nat.add_sub_cancel, A014844.P17563817605093152213.a, A014844.P9751159147757894953.a, A243860, A243860.P16506229345030888936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014844

/-! ## A014844.P9226300243633555089

`Δ[Δ[A052968(n+1)]-A050407(n+1)]`
-/

namespace A014844.P9226300243633555089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052968 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A050407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014844.P9226300243633555089

namespace A014844

/-- `Δ[Δ[A052968(n+1)]-A050407(n+1)]` -/
def P9226300243633555089.Spec : Prop :=
  ∀ n, P9226300243633555089.a n = A014844 n

end A014844

/-! ## A014844.P14083322845916024986

`A052481(n)%A000051(n)`
-/

namespace A014844.P14083322845916024986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052481 n) (A000051 n)

end

end A014844.P14083322845916024986

namespace A014844

/-- `A052481(n)%A000051(n)` -/
def P14083322845916024986.Spec : Prop :=
  ∀ n, P14083322845916024986.a n = A014844 n

end A014844

/-! ## A014844.P9376794864778911370

`Δ[A347017(n+1)]`
-/

namespace A014844.P9376794864778911370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014844.P9376794864778911370

namespace A014844

/-- `Δ[A347017(n+1)]` -/
def P9376794864778911370.Spec : Prop :=
  ∀ n, P9376794864778911370.a n = A014844 n

end A014844

/-!
# A014845: Inverse of 836th cyclotomic polynomial.

The programs for A014845, there is no canonical definition to state claims against.
-/

/-! ## A014845.P11499446885377321885

`A015681(A022998(n))`
-/

namespace A014845.P11499446885377321885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015681 (A022998 n).toNat

end

end A014845.P11499446885377321885

/-!
# A014846: a(n) = 2^(n-1) - n*(n+1)/2.

The programs for A014846, the canonical program `A014846.P11792114727721091064` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014846 has offset 1).

The definition of A014846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014846.P11792114727721091064

`2^n-(n+1)*(n+2)/2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014846

/-- `2^n-(n+1)*(n+2)/2` -/
def P11792114727721091064.Spec : Prop :=
  ∀ n, P11792114727721091064.a n = (A014846 (n + 1) : ℚ)

end A014846

/-! ## A014846.P5232663147791548879

`∑[∑[2*a(n-1)]-n]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A014846.P5232663147791548879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014846.P5232663147791548879

namespace A014846

/-- `∑[∑[2*a(n-1)]-n]` -/
def P5232663147791548879.Spec : Prop :=
  ∀ n, P5232663147791548879.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P6963595590353258108

`floor(a(n-1)+∑[n-1]+a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A014846.P6963595590353258108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A014846.P6963595590353258108

namespace A014846

/-- `floor(a(n-1)+∑[n-1]+a(n-1))` -/
def P6963595590353258108.Spec : Prop :=
  ∀ n, P6963595590353258108.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P16845262660560020201

`∑[∑[a(n-1)+a(n-1)+1]]` with `a(0)=0, a(1)=-1, a(2)=0`
-/

namespace A014846.P16845262660560020201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 0] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014846.P16845262660560020201

namespace A014846

/-- `∑[∑[a(n-1)+a(n-1)+1]]` -/
def P16845262660560020201.Spec : Prop :=
  ∀ n, P16845262660560020201.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P5114474835637058357

`∑[n-(1-a(n-1)-a(n-1))]` with `a(0)=0, a(1)=-1`
-/

namespace A014846.P5114474835637058357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014846.P5114474835637058357

namespace A014846

/-- `∑[n-(1-a(n-1)-a(n-1))]` -/
def P5114474835637058357.Spec : Prop :=
  ∀ n, P5114474835637058357.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P5329046364088509335

`∑[∑[A034008(n)-1]]`
-/

namespace A014846.P5329046364088509335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014846.P5329046364088509335

namespace A014846

/-- `∑[∑[A034008(n)-1]]` -/
def P5329046364088509335.Spec : Prop :=
  ∀ n, P5329046364088509335.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P17500833257462131272

`∑[A011782(n)-(n+1)]`
-/

namespace A014846.P17500833257462131272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014846.P17500833257462131272

namespace A014846

/-- `∑[A011782(n)-(n+1)]` -/
def P17500833257462131272.Spec : Prop :=
  ∀ n, P17500833257462131272.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P12954114336005994394

`∑[1-(A122958(n)+n)]`
-/

namespace A014846.P12954114336005994394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A122958 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014846.P12954114336005994394

namespace A014846

/-- `∑[1-(A122958(n)+n)]` -/
def P12954114336005994394.Spec : Prop :=
  ∀ n, P12954114336005994394.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P4943934572459570319

`∑[A116601(2*n)-n]`
-/

namespace A014846.P4943934572459570319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014846.P4943934572459570319

namespace A014846

/-- `∑[A116601(2*n)-n]` -/
def P4943934572459570319.Spec : Prop :=
  ∀ n, P4943934572459570319.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P11822607444799538464

`∑[Δ[A131577(n)]-(n+1)]`
-/

namespace A014846.P11822607444799538464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014846.P11822607444799538464

namespace A014846

/-- `∑[Δ[A131577(n)]-(n+1)]` -/
def P11822607444799538464.Spec : Prop :=
  ∀ n, P11822607444799538464.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P4496390777319215366

`∑[A166444(n+1)-(n+1)]`
-/

namespace A014846.P4496390777319215366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014846.P4496390777319215366

namespace A014846

/-- `∑[A166444(n+1)-(n+1)]` -/
def P4496390777319215366.Spec : Prop :=
  ∀ n, P4496390777319215366.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P6149734116997125651

`-(A000217(n)+n-2^n+1)`
-/

namespace A014846.P6149734116997125651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000217 n + (n : ℤ) - (2 ^ n : ℤ) + 1)

end

end A014846.P6149734116997125651

namespace A014846

/-- `-(A000217(n)+n-2^n+1)` -/
def P6149734116997125651.Spec : Prop :=
  ∀ n, P6149734116997125651.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P160545030663154678

`∑[A000225(n)-n-A131577(n)]`
-/

namespace A014846.P160545030663154678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (n : ℤ) - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014846.P160545030663154678

namespace A014846

/-- `∑[A000225(n)-n-A131577(n)]` -/
def P160545030663154678.Spec : Prop :=
  ∀ n, P160545030663154678.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P14973097885318533193

`∑[∑[A011782(n)-1]-A131577(n)]`
-/

namespace A014846.P14973097885318533193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014846.P14973097885318533193

namespace A014846

/-- `∑[∑[A011782(n)-1]-A131577(n)]` -/
def P14973097885318533193.Spec : Prop :=
  ∀ n, P14973097885318533193.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P8096426855588338497

`Δ[2^n-C(n+2, 3)]`
-/

namespace A014846.P8096426855588338497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.choose (n + 2) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014846.P8096426855588338497

namespace A014846

/-- `Δ[2^n-C(n+2, 3)]` -/
def P8096426855588338497.Spec : Prop :=
  ∀ n, P8096426855588338497.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P13778288391779787401

`A220588(n+1)/2`
-/

namespace A014846.P13778288391779787401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220588 (n + 1) : ℚ) / 2

end

end A014846.P13778288391779787401

namespace A014846

/-- `A220588(n+1)/2` -/
def P13778288391779787401.Spec : Prop :=
  ∀ n, P13778288391779787401.a n = (A014846 (n + 1) : ℚ)

end A014846

/-! ## A014846.P15384099810977760822

`Δ[A000079(n)-∑[∑[n]]]`
-/

namespace A014846.P15384099810977760822
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014846.P15384099810977760822

namespace A014846

/-- `Δ[A000079(n)-∑[∑[n]]]` -/
def P15384099810977760822.Spec : Prop :=
  ∀ n, P15384099810977760822.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P18440798869756285101

`Δ[A000225(n)-∑[∑[n]]]`
-/

namespace A014846.P18440798869756285101
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014846.P18440798869756285101

namespace A014846

/-- `Δ[A000225(n)-∑[∑[n]]]` -/
def P18440798869756285101.Spec : Prop :=
  ∀ n, P18440798869756285101.a n = A014846 (n + 1)

end A014846

/-! ## A014846.P17584574674438617159

`(A176778(n+1)+n+1)/2`
-/

namespace A014846.P17584574674438617159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176778 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A014846.P17584574674438617159

namespace A014846

/-- `(A176778(n+1)+n+1)/2` -/
def P17584574674438617159.Spec : Prop :=
  ∀ n, P17584574674438617159.a n = (A014846 (n + 1) : ℚ)

end A014846

/-! ## A014846.P13455085530570200034

`(A024012(n+1)-(n+1))/2`
-/

namespace A014846.P13455085530570200034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024012 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A014846.P13455085530570200034

namespace A014846

/-- `(A024012(n+1)-(n+1))/2` -/
def P13455085530570200034.Spec : Prop :=
  ∀ n, P13455085530570200034.a n = (A014846 (n + 1) : ℚ)

end A014846

/-!
# A014847: Numbers k such that k-th Catalan number C(2k,k)/(k+1) is divisible by k.

The programs for A014847, there is no canonical definition to state claims against.
-/

/-! ## A014847.P17301215001897005677

`A004782(n+1)-1`
-/

namespace A014847.P17301215001897005677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004782 (n + 1) - 1

end

end A014847.P17301215001897005677

/-! ## A014847.P5587001748503685802

`A048618(n+1)/2`
-/

namespace A014847.P5587001748503685802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048618 (n + 1) : ℚ) / 2

end

end A014847.P5587001748503685802

/-! ## A014847.P7184633614484408634

`A054527(A088837(2*n+5))+A004782(n+1)`
-/

namespace A014847.P7184633614484408634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (A088837 (2 * n + 5)).toNat + A004782 (n + 1)

end

end A014847.P7184633614484408634

/-! ## A014847.P5621900615484220084

`A103391(A048618(n+1)+2)-2`
-/

namespace A014847.P5621900615484220084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A048618 (n + 1) + 2).toNat - 2

end

end A014847.P5621900615484220084

/-! ## A014847.P10392544632788886339

`A057428(3*n+2)+A004782(n+1)`
-/

namespace A014847.P10392544632788886339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (3 * n + 2) + A004782 (n + 1)

end

end A014847.P10392544632788886339

/-! ## A014847.P12257421861847528204

`eq[1, A093527(n)]+1`
-/

namespace A014847.P12257421861847528204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014847.P12257421861847528204

/-! ## A014847.P14799876803436667574

`record[A071416(n+1)]`
-/

namespace A014847.P14799876803436667574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014847.P14799876803436667574

/-! ## A014847.P1407290663852276994

`record[gcd(n, A053214(n))]`
-/

namespace A014847.P1407290663852276994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A053214 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014847.P1407290663852276994

/-! ## A014847.P3276640609288721007

`eq[0, A059288(n+1)]+1`
-/

namespace A014847.P3276640609288721007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014847.P3276640609288721007

/-! ## A014847.P6558531426771968785

`eq[1, A059289(n+1)]+1`
-/

namespace A014847.P6558531426771968785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014847.P6558531426771968785

/-! ## A014847.P2752506344529885511

`record[gcd(A000027(n+1), A059288(n+1))]`
-/

namespace A014847.P2752506344529885511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A059288 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014847.P2752506344529885511

/-! ## A014847.P8741998517606546754

`record[(n+1)/A121943(A059288(n+1)+1)]`
-/

namespace A014847.P8741998517606546754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A121943 (A059288 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014847.P8741998517606546754

/-! ## A014847.P1473333460911153771

`A023443(A004782(n+1))`
-/

namespace A014847.P1473333460911153771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004782 (n + 1)).toNat

end

end A014847.P1473333460911153771

/-! ## A014847.P4252565483498955677

`A001281(A048618(n+1))`
-/

namespace A014847.P4252565483498955677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A048618 (n + 1)).toNat

end

end A014847.P4252565483498955677

/-! ## A014847.P805256201032389667

`A123108(A048618(n+1)+1)`
-/

namespace A014847.P805256201032389667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A048618 (n + 1) + 1).toNat

end

end A014847.P805256201032389667

/-! ## A014847.P15082271499279359750

`A000463(A048618(n+1)-1)`
-/

namespace A014847.P15082271499279359750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A048618 (n + 1) - 1).toNat

end

end A014847.P15082271499279359750

/-! ## A014847.P8171720369878410196

`A008619(A048618(n+1)-1)`
-/

namespace A014847.P8171720369878410196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A048618 (n + 1) - 1).toNat

end

end A014847.P8171720369878410196

/-! ## A014847.P579338211541033868

`A246277(A048618(n+1)+2)-1`
-/

namespace A014847.P579338211541033868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A048618 (n + 1) + 2).toNat - 1

end

end A014847.P579338211541033868

/-!
# A014848: a(n) = n^2 - floor( n/2 ).

The programs for A014848, the canonical program `A014848.P13929426272128160422` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014848 has offset 0).

The definition of A014848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-floor(n/2)` (program `A014848.P13929426272128160422`, by `A014848.P13929426272128160422.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014848.P13929426272128160422

`n²-floor(n/2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014848

/-- `n²-floor(n/2)` -/
def P13929426272128160422.Spec : Prop :=
  ∀ n, P13929426272128160422.a n = A014848 n

theorem P13929426272128160422.correct : P13929426272128160422.Spec := by
  intro n
  simp only [A014848]

end A014848

/-! ## A014848.P10256578109692839504

`∑[comp[or(2, n)+1]]`
-/

namespace A014848.P10256578109692839504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014848.P10256578109692839504

namespace A014848

/-- `∑[comp[or(2, n)+1]]` -/
def P10256578109692839504.Spec : Prop :=
  ∀ n, (P10256578109692839504.a n : ℤ) = A014848 n

end A014848

/-! ## A014848.P4140834675026557536

`ceil(C(2*n, 2)/2)`
-/

namespace A014848.P4140834675026557536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n) 2 : ℚ) / 2⌉

end

end A014848.P4140834675026557536

namespace A014848

/-- `ceil(C(2*n, 2)/2)` -/
def P4140834675026557536.Spec : Prop :=
  ∀ n, P4140834675026557536.a n = A014848 n

end A014848

/-! ## A014848.P11893232397488215878

`round(C(2*n, 2)/2)`
-/

namespace A014848.P11893232397488215878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n) 2 : ℚ) / 2)

end

end A014848.P11893232397488215878

namespace A014848

/-- `round(C(2*n, 2)/2)` -/
def P11893232397488215878.Spec : Prop :=
  ∀ n, P11893232397488215878.a n = A014848 n

end A014848

/-! ## A014848.P15068218278953115144

`∑[comp[∑[gcd(3, n%2)]]]`
-/

namespace A014848.P15068218278953115144
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014848.P15068218278953115144

namespace A014848

/-- `∑[comp[∑[gcd(3, n%2)]]]` -/
def P15068218278953115144.Spec : Prop :=
  ∀ n, (P15068218278953115144.a n : ℤ) = A014848 n

end A014848

/-! ## A014848.P6158040185022010227

`∑[record[and(n, -and(3, n))]]`
-/

namespace A014848.P6158040185022010227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(Nat.land 3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014848.P6158040185022010227

namespace A014848

/-- `∑[record[and(n, -and(3, n))]]` -/
def P6158040185022010227.Spec : Prop :=
  ∀ n, P6158040185022010227.a n = A014848 n

end A014848

/-! ## A014848.P5106920501064999014

`∑[record[C(n, xor(2, n+1))]]`
-/

namespace A014848.P5106920501064999014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.xor 2 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014848.P5106920501064999014

namespace A014848

/-- `∑[record[C(n, xor(2, n+1))]]` -/
def P5106920501064999014.Spec : Prop :=
  ∀ n, (P5106920501064999014.a n : ℤ) = A014848 n

end A014848

/-! ## A014848.P12020019029321034282

`∑[a(n-2)+4]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A014848.P12020019029321034282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014848.P12020019029321034282

namespace A014848

/-- `∑[a(n-2)+4]` -/
def P12020019029321034282.Spec : Prop :=
  ∀ n, (P12020019029321034282.a n : ℤ) = A014848 n

end A014848

/-! ## A014848.P4736720062679109947

`floor((C(2*n, 2)+1)/2)`
-/

namespace A014848.P4736720062679109947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n) 2 + 1 : ℚ) / 2⌋

end

end A014848.P4736720062679109947

namespace A014848

/-- `floor((C(2*n, 2)+1)/2)` -/
def P4736720062679109947.Spec : Prop :=
  ∀ n, P4736720062679109947.a n = A014848 n

end A014848

/-! ## A014848.P4859461496902507478

`ceil(lcm(n, 1-2*n)/2)`
-/

namespace A014848.P4859461496902507478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lcm (n : ℤ) (1 - (2 * n : ℤ)) : ℚ) / 2⌉

end

end A014848.P4859461496902507478

namespace A014848

/-- `ceil(lcm(n, 1-2*n)/2)` -/
def P4859461496902507478.Spec : Prop :=
  ∀ n, P4859461496902507478.a n = A014848 n

end A014848

/-! ## A014848.P8511310580135243753

`∑[eq[0, n*and(2, n-1)]]`
-/

namespace A014848.P8511310580135243753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 2 ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014848.P8511310580135243753

namespace A014848

/-- `∑[eq[0, n*and(2, n-1)]]` -/
def P8511310580135243753.Spec : Prop :=
  ∀ n, (P8511310580135243753.a n : ℤ) = A014848 n

end A014848

/-! ## A014848.P1019433217893743919

`∑[lt[xor(n+1, n-1), 3]]`
-/

namespace A014848.P1019433217893743919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014848.P1019433217893743919

namespace A014848

/-- `∑[lt[xor(n+1, n-1), 3]]` -/
def P1019433217893743919.Spec : Prop :=
  ∀ n, (P1019433217893743919.a n : ℤ) = A014848 n

end A014848

/-! ## A014848.P7573294294006722423

`∑[comp[∑[3^((n+1)%2)]]]`
-/

namespace A014848.P7573294294006722423
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ ((n + 1) % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014848.P7573294294006722423

namespace A014848

/-- `∑[comp[∑[3^((n+1)%2)]]]` -/
def P7573294294006722423.Spec : Prop :=
  ∀ n, (P7573294294006722423.a n : ℤ) = A014848 n

end A014848

/-! ## A014848.P8453142085763756299

`∑[comp[∑[3-2*and(1, n)]]]`
-/

namespace A014848.P8453142085763756299
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (2 * Nat.land 1 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014848.P8453142085763756299

namespace A014848

/-- `∑[comp[∑[3-2*and(1, n)]]]` -/
def P8453142085763756299.Spec : Prop :=
  ∀ n, (P8453142085763756299.a n : ℤ) = A014848 n

end A014848

/-! ## A014848.P13734937764046818166

`∑[comp[∑[3^and(1, n+1)]]]`
-/

namespace A014848.P13734937764046818166
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014848.P13734937764046818166

namespace A014848

/-- `∑[comp[∑[3^and(1, n+1)]]]` -/
def P13734937764046818166.Spec : Prop :=
  ∀ n, (P13734937764046818166.a n : ℤ) = A014848 n

end A014848

/-! ## A014848.P8683947655586115968

`record[ceil(2*n/5)²-n]`
-/

namespace A014848.P8683947655586115968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n : ℚ) / 5)⌉ ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014848.P8683947655586115968

namespace A014848

/-- `record[ceil(2*n/5)²-n]` -/
def P8683947655586115968.Spec : Prop :=
  ∀ n, P8683947655586115968.a n = A014848 n

end A014848

/-! ## A014848.P12052088407086916627

`∑[∑[4-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A014848.P12052088407086916627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014848.P12052088407086916627

namespace A014848

/-- `∑[∑[4-a(n-1)]]` -/
def P12052088407086916627.Spec : Prop :=
  ∀ n, P12052088407086916627.a n = A014848 n

end A014848

/-! ## A014848.P16880865354095832537

`(and(1, n)+C(2*n, 2))/2`
-/

namespace A014848.P16880865354095832537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + Nat.choose (2 * n) 2 : ℚ) / 2

end

end A014848.P16880865354095832537

namespace A014848

/-- `(and(1, n)+C(2*n, 2))/2` -/
def P16880865354095832537.Spec : Prop :=
  ∀ n, P16880865354095832537.a n = (A014848 n : ℚ)

end A014848

/-! ## A014848.P14756846366457226373

`ogf((x+x^2+2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A014848.P14756846366457226373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2] [1, -2, 0, 2, -1] n

end

end A014848.P14756846366457226373

namespace A014848

/-- `ogf((x+x^2+2x^3)/(1-2x+2x^3-x^4))` -/
def P14756846366457226373.Spec : Prop :=
  ∀ n, P14756846366457226373.a n = A014848 n

end A014848

/-!
# A014849: Inverse of 840th cyclotomic polynomial.

The programs for A014849, there is no canonical definition to state claims against.
-/

/-! ## A014849.P13679837977357966179

`A014429(A004525(n))`
-/

namespace A014849.P13679837977357966179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014429 (A004525 n).toNat

end

end A014849.P13679837977357966179

/-!
# A014850: Numbers k that divide s(k), where s(1)=1, s(j)=3*s(j-1)+j.

The programs for A014850, there is no canonical definition to state claims against.
-/

/-! ## A014850.P3978480659313609567

`A158605(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A014850.P3978480659313609567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A158605 (a (n - 1)).toNat

end

end A014850.P3978480659313609567

/-!
# A014851: Numbers k that divide s(k), where s(1)=1, s(j)=4*s(j-1)+j.

The programs for A014851, the canonical program `A014851.P4266678184961084627` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014851 has offset 1).

The definition of A014851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014851.P4266678184961084627

`record[lcm(A000189(n+1), A014491(n+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A014851

/-- `record[lcm(A000189(n+1), A014491(n+1))]` -/
def P4266678184961084627.Spec : Prop :=
  ∀ n, (P4266678184961084627.a n : ℤ) = A014851 (n + 1)

theorem P4266678184961084627.correct : P4266678184961084627.Spec := by
  intro n
  simp only [A014851, Nat.add_sub_cancel]

end A014851

/-! ## A014851.P8076383244751590845

`record[gcd(n+1, 4-4^(n+2))]`
-/

namespace A014851.P8076383244751590845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (4 - (4 ^ (n + 2) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014851.P8076383244751590845

namespace A014851

/-- `record[gcd(n+1, 4-4^(n+2))]` -/
def P8076383244751590845.Spec : Prop :=
  ∀ n, (P8076383244751590845.a n : ℤ) = A014851 (n + 1)

end A014851

/-! ## A014851.P1291801707983290930

`lt[A280169(n), gcd(n, A033042(n))]`
-/

namespace A014851.P1291801707983290930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280169 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A033042 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014851.P1291801707983290930

namespace A014851

/-- `lt[A280169(n), gcd(n, A033042(n))]` -/
def P1291801707983290930.Spec : Prop :=
  ∀ n, (P1291801707983290930.a n : ℤ) = A014851 (n + 1)

end A014851

/-! ## A014851.P12929338106286298487

`eq[A010194(n), A111008(A111008(n)²)]`
-/

namespace A014851.P12929338106286298487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111008 (A111008 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014851.P12929338106286298487

namespace A014851

/-- `eq[A010194(n), A111008(A111008(n)²)]` -/
def P12929338106286298487.Spec : Prop :=
  ∀ n, (P12929338106286298487.a n : ℤ) = A014851 (n + 1)

end A014851

/-! ## A014851.P15683488141161445152

`eq[A111008(A111008(n)²), A168181(n)]`
-/

namespace A014851.P15683488141161445152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111008 (A111008 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014851.P15683488141161445152

namespace A014851

/-- `eq[A111008(A111008(n)²), A168181(n)]` -/
def P15683488141161445152.Spec : Prop :=
  ∀ n, (P15683488141161445152.a n : ℤ) = A014851 (n + 1)

end A014851

/-!
# A014852: Numbers k that divide s(k), where s(1)=1, s(j)=5*s(j-1)+j.

The programs for A014852, there is no canonical definition to state claims against.
-/

/-! ## A014852.P7765534880206185393

`A106609(A222193(n+1)+A228196(n+1)+7^n)`
-/

namespace A014852.P7765534880206185393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A222193 (n + 1) + (A228196 (n + 1) + (7 ^ n : ℤ))).toNat

end

end A014852.P7765534880206185393

/-!
# A014853: Numbers k that divide s(k), where s(1)=1, s(j)=6*s(j-1)+j.

The programs for A014853, there is no canonical definition to state claims against.
-/

/-! ## A014853.P3573114634651799327

`record[gcd(n+1, A014829(n+1))]`
-/

namespace A014853.P3573114634651799327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A014829 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014853.P3573114634651799327

/-!
# A014854: Numbers k that divide s(k), where s(1)=1, s(j)=7*s(j-1)+j.

The programs for A014854, there is no canonical definition to state claims against.
-/

/-! ## A014854.P14848460226666624587

`∩[A324699(n+1), A386687(n+1)]`
-/

namespace A014854.P14848460226666624587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014854.P14848460226666624587

/-! ## A014854.P7060901819072207455

`A191106(lt[A097876(3*n+1), A061393(n)])`
-/

namespace A014854.P7060901819072207455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097876 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014854.P7060901819072207455

/-! ## A014854.P17033361383832222281

`∩[A235591(n+1), A125227(n+3)]`
-/

namespace A014854.P17033361383832222281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125227 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014854.P17033361383832222281

/-! ## A014854.P7385781313305811891

`∩[A351467(n+1), A125227(n+3)]`
-/

namespace A014854.P7385781313305811891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125227 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014854.P7385781313305811891

/-! ## A014854.P11671920819937149664

`A191106(A191283(n+1)%A276136(n+1))`
-/

namespace A014854.P11671920819937149664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (Int.tmod (A191283 (n + 1)) (A276136 (n + 1))).toNat

end

end A014854.P11671920819937149664

/-!
# A014855: Numbers k that divide s(k), where s(1)=1, s(j)=8*s(j-1)+j.

The programs for A014855, there is no canonical definition to state claims against.
-/

/-! ## A014855.P11898009286136845693

`record[gcd(n+1, ∑[A036294(n)])]`
-/

namespace A014855.P11898009286136845693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036294 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014855.P11898009286136845693

/-! ## A014855.P352012494131348519

`record[gcd(8*A023001(n), A028310(n))]`
-/

namespace A014855.P352012494131348519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (8 * A023001 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014855.P352012494131348519

/-! ## A014855.P6380019548278111747

`A165412(A158025(n+1)+floor(n/6))`
-/

namespace A014855.P6380019548278111747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (A158025 (n + 1) + ⌊(n : ℚ) / 6⌋).toNat

end

end A014855.P6380019548278111747

/-! ## A014855.P13886301305480838654

`lt[A032305(A260895(n+1)), A236104(n+1)]`
-/

namespace A014855.P13886301305480838654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032305 (A260895 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014855.P13886301305480838654

/-! ## A014855.P16257473418763970298

`lt[A002033(A027193(n)), A196020(n+1)]`
-/

namespace A014855.P16257473418763970298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A027193 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014855.P16257473418763970298

/-!
# A014856: Inverse of 847th cyclotomic polynomial.

The programs for A014856, there is no canonical definition to state claims against.
-/

/-! ## A014856.P4088707714702226308

`A015703(n)*A033999(n)`
-/

namespace A014856.P4088707714702226308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015703 n * A033999 n

end

end A014856.P4088707714702226308

/-!
# A014858: Numbers k that divide s(k), where s(1)=1, s(j)=11*s(j-1)+j.

The programs for A014858, there is no canonical definition to state claims against.
-/

/-! ## A014858.P13801086945790410668

`record[A108548(A107466(n+1))]`
-/

namespace A014858.P13801086945790410668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A107466 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014858.P13801086945790410668

/-! ## A014858.P13252350482929464484

`record[A003961(A215800(n+1))]`
-/

namespace A014858.P13252350482929464484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A215800 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014858.P13252350482929464484

/-! ## A014858.P1985675862235221546

`record[A003961(A324699(n+1))]`
-/

namespace A014858.P1985675862235221546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A324699 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014858.P1985675862235221546

/-! ## A014858.P14319018791040423583

`record[A242603(A249735(n+1))]`
-/

namespace A014858.P14319018791040423583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (A249735 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014858.P14319018791040423583

/-! ## A014858.P8172159149781863414

`∩[A022770(n+1), A035108(n+1)]`
-/

namespace A014858.P8172159149781863414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014858.P8172159149781863414

/-!
# A014860: Inverse of 851st cyclotomic polynomial.

The programs for A014860, there is no canonical definition to state claims against.
-/

/-! ## A014860.P13727459152456316671

`A015711(n)*A033999(n)`
-/

namespace A014860.P13727459152456316671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015711 n * A033999 n

end

end A014860.P13727459152456316671

/-!
# A014861: Numbers k that divide s(k), where s(1)=1, s(j)=13*s(j-1)+j.

The programs for A014861, there is no canonical definition to state claims against.
-/

/-! ## A014861.P1530249893681751949

`A185284(A000123(n))+A107364(n+1)`
-/

namespace A014861.P1530249893681751949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000123 n).toNat + A107364 (n + 1)

end

end A014861.P1530249893681751949

/-! ## A014861.P1082690788631314973

`A185284(A000217(n))+A107364(n+1)`
-/

namespace A014861.P1082690788631314973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000217 n).toNat + A107364 (n + 1)

end

end A014861.P1082690788631314973

/-!
# A014862: Numbers k that divide s(k), where s(1)=1, s(j)=14*s(j-1)+j.

The programs for A014862, there is no canonical definition to state claims against.
-/

/-! ## A014862.P9901016017945552558

`record[gcd(n+1, A014897(n+1))]`
-/

namespace A014862.P9901016017945552558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A014897 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014862.P9901016017945552558

/-!
# A014863: Inverse of 854th cyclotomic polynomial.

The programs for A014863, there is no canonical definition to state claims against.
-/

/-! ## A014863.P3516349342110154076

`A015717(2*n)`
-/

namespace A014863.P3516349342110154076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015717 (2 * n)

end

end A014863.P3516349342110154076

/-!
# A014864: Inverse of 855th cyclotomic polynomial.

The programs for A014864, there is no canonical definition to state claims against.
-/

/-! ## A014864.P11243930071749324937

`A010892(n)*A015719(n)`
-/

namespace A014864.P11243930071749324937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A015719 n

end

end A014864.P11243930071749324937

/-!
# A014865: Numbers k that divide s(k), where s(1)=1, s(j)=15*s(j-1)+j.

The programs for A014865, there is no canonical definition to state claims against.
-/

/-! ## A014865.P9358727385239526149

`record[A360908(A242330(n+1))]`
-/

namespace A014865.P9358727385239526149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360908 (A242330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014865.P9358727385239526149

/-! ## A014865.P11133000774363773011

`record[A000005(record[A347228(n+1)²])]`
-/

namespace A014865.P11133000774363773011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347228 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014865.P11133000774363773011

/-! ## A014865.P14187251961458337889

`record[A018617(n+1)%A166054(n+1)]`
-/

namespace A014865.P14187251961458337889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018617 (n + 1)) (A166054 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014865.P14187251961458337889

/-! ## A014865.P15492319307134618873

`lt[A339658(n+1), A324198(A008597(n))]`
-/

namespace A014865.P15492319307134618873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (A008597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014865.P15492319307134618873

/-! ## A014865.P12224274170019827803

`A252753(record[A112824(n+2)%A054500(n+1)])`
-/

namespace A014865.P12224274170019827803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112824 (n + 2)) (A054500 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014865.P12224274170019827803

/-!
# A014866: Numbers k that divide s(k), where s(1)=1, s(j)=16*s(j-1)+j.

The programs for A014866, the canonical program `A014866.P7494396681222093559` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014866 has offset 1).

The definition of A014866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014866.P7494396681222093559

`eq[A014491(A008574(n)), A106617(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014866

/-- `eq[A014491(A008574(n)), A106617(n)]` -/
def P7494396681222093559.Spec : Prop :=
  ∀ n, (P7494396681222093559.a n : ℤ) = A014866 (n + 1)

theorem P7494396681222093559.correct : P7494396681222093559.Spec := by
  intro n
  simp only [A014866, Nat.add_sub_cancel]

end A014866

/-! ## A014866.P1375301346628978935

`record[gcd(n+1, ∑[(4^(n+1))²])]`
-/

namespace A014866.P1375301346628978935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1)) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014866.P1375301346628978935

namespace A014866

/-- `record[gcd(n+1, ∑[(4^(n+1))²])]` -/
def P1375301346628978935.Spec : Prop :=
  ∀ n, (P1375301346628978935.a n : ℤ) = A014866 (n + 1)

end A014866

/-! ## A014866.P17173334027760620536

`A097752(n+1)+A010894(A097757(n))`
-/

namespace A014866.P17173334027760620536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1) + A010894 ((A097757 n).toNat + 21)

end

end A014866.P17173334027760620536

namespace A014866

/-- `A097752(n+1)+A010894(A097757(n))` -/
def P17173334027760620536.Spec : Prop :=
  ∀ n, P17173334027760620536.a n = A014866 (n + 1)

end A014866

/-!
# A014867: Inverse of 858th cyclotomic polynomial.

The programs for A014867, there is no canonical definition to state claims against.
-/

/-! ## A014867.P13864073124455820346

`A014438(n)*A033999(n)`
-/

namespace A014867.P13864073124455820346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014438 n * A033999 n

end

end A014867.P13864073124455820346

/-!
# A014868: Numbers k that divide s(k), where s(1)=1, s(j)=18*s(j-1)+j.

The programs for A014868, there is no canonical definition to state claims against.
-/

/-! ## A014868.P11948402087304997998

`record[gcd(A014901(n+1), A323404(n+1))]`
-/

namespace A014868.P11948402087304997998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014901 (n + 1)) (A323404 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014868.P11948402087304997998

/-! ## A014868.P8168140781263186819

`∑[A225572(A310847(n)²)]`
-/

namespace A014868.P8168140781263186819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225572 (A310847 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014868.P8168140781263186819

/-! ## A014868.P17561321574399338999

`∑[A002033(∑[A212093(n)])]`
-/

namespace A014868.P17561321574399338999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014868.P17561321574399338999

/-! ## A014868.P10675122794286774561

`record[A175213(Δ[A120043(n)])]`
-/

namespace A014868.P10675122794286774561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120043 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014868.P10675122794286774561

/-! ## A014868.P11073316559942334653

`∑[A002033(A185959(3*n+1))]`
-/

namespace A014868.P11073316559942334653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A185959 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014868.P11073316559942334653

/-!
# A014869: Numbers k that divide s(k), where s(1)=1, s(j)=19*s(j-1)+j.

The programs for A014869, there is no canonical definition to state claims against.
-/

/-! ## A014869.P11794835017455646542

`record[gcd(n+1, A006521(3*n+5))]`
-/

namespace A014869.P11794835017455646542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A006521 (3 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014869.P11794835017455646542

/-! ## A014869.P12296991876121410583

`A057257(A084092(n+1))`
-/

namespace A014869.P12296991876121410583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057257 (A084092 (n + 1)).toNat

end

end A014869.P12296991876121410583

/-! ## A014869.P4532859554885982928

`A182182(A015955(n+2))`
-/

namespace A014869.P4532859554885982928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 (A015955 (n + 2)).toNat

end

end A014869.P4532859554885982928

/-! ## A014869.P4166893449202221077

`A182182(A093546(n+2))`
-/

namespace A014869.P4166893449202221077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 (A093546 (n + 2)).toNat

end

end A014869.P4166893449202221077

/-! ## A014869.P17401950037626827347

`A182182(A093665(n+2))`
-/

namespace A014869.P17401950037626827347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 (A093665 (n + 2)).toNat

end

end A014869.P17401950037626827347

/-!
# A014870: Inverse of 861st cyclotomic polynomial.

The programs for A014870, there is no canonical definition to state claims against.
-/

/-! ## A014870.P8704543818628127077

`A015731(n)*A033999(n)`
-/

namespace A014870.P8704543818628127077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015731 n * A033999 n

end

end A014870.P8704543818628127077

/-!
# A014871: Numbers k that divide s(k), where s(1)=1, s(j)=20*s(j-1)+j.

The programs for A014871, there is no canonical definition to state claims against.
-/

/-! ## A014871.P13185501988639106830

`record[gcd(n+1, A014904(n+1))]`
-/

namespace A014871.P13185501988639106830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A014904 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014871.P13185501988639106830

/-!
# A014872: Numbers k that divide s(k), where s(1)=1, s(j)=21*s(j-1)+j.

The programs for A014872, there is no canonical definition to state claims against.
-/

/-! ## A014872.P15548557611869550380

`A008626(eq[8, A343251(n+1)])`
-/

namespace A014872.P15548557611869550380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014872.P15548557611869550380

/-! ## A014872.P7609313153818765769

`A018501(A036965(n+1))%200`
-/

namespace A014872.P7609313153818765769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018501 (A036965 (n + 1)).toNat) 200

end

end A014872.P7609313153818765769

/-! ## A014872.P4171549373256416865

`A018501(A101170(n+1))%200`
-/

namespace A014872.P4171549373256416865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018501 (A101170 (n + 1)).toNat) 200

end

end A014872.P4171549373256416865

/-! ## A014872.P5510557419052797392

`A018501(A216556(n))`
-/

namespace A014872.P5510557419052797392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018501 (A216556 n).toNat

end

end A014872.P5510557419052797392

/-! ## A014872.P10817275875130303379

`A018501(A342264(n+1)+1)`
-/

namespace A014872.P10817275875130303379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018501 (A342264 (n + 1) + 1).toNat

end

end A014872.P10817275875130303379

/-!
# A014873: Numbers k that divide s(k), where s(1)=1, s(j)=22*s(j-1)+j.

The programs for A014873, there is no canonical definition to state claims against.
-/

/-! ## A014873.P2739625772638120758

`record[gcd(n+1, A014907(n+1))]`
-/

namespace A014873.P2739625772638120758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A014907 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014873.P2739625772638120758

/-! ## A014873.P14911286660626467036

`record[gcd(2*A002281(n), A065033(n))]`
-/

namespace A014873.P14911286660626467036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A002281 n) (A065033 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014873.P14911286660626467036

/-!
# A014874: Numbers k that divide s(k), where s(1)=1, s(j)=23*s(j-1)+j.

The programs for A014874, there is no canonical definition to state claims against.
-/

/-! ## A014874.P1527016222952308840

`A314236(a(n-2)+a(n-2))` with `a(0)=1, a(1)=11, a(2)=23`
-/

namespace A014874.P1527016222952308840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11, 23] fun n a =>
  A314236 (a (n - 2) + a (n - 2)).toNat

end

end A014874.P1527016222952308840

/-! ## A014874.P6561568827302850057

`∏{e}[A110567(n), A068231(#)]`
-/

namespace A014874.P6561568827302850057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A068231 (Nat.factorization (f1 n).natAbs p)

end

end A014874.P6561568827302850057

/-! ## A014874.P16117639389343339670

`record[∏{e}[A206815(n+1), A208326(#)]]`
-/

namespace A014874.P16117639389343339670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A208326 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014874.P16117639389343339670

/-!
# A014876: Numbers k that divide s(k), where s(1)=1, s(j)=25*s(j-1)+j.

The programs for A014876, there is no canonical definition to state claims against.
-/

/-! ## A014876.P9654623001257106993

`A118759(A045602(n+1))`
-/

namespace A014876.P9654623001257106993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A045602 (n + 1)).toNat

end

end A014876.P9654623001257106993

/-! ## A014876.P17526338530554597032

`A000194(A045602(n+1)²)`
-/

namespace A014876.P17526338530554597032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A045602 (n + 1) ^ 2).toNat

end

end A014876.P17526338530554597032

/-! ## A014876.P13065293131894757413

`A000196(A045602(n+1)²)`
-/

namespace A014876.P13065293131894757413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A045602 (n + 1) ^ 2).toNat

end

end A014876.P13065293131894757413

/-! ## A014876.P10627218762738188641

`A033677(A045602(n+1)²)`
-/

namespace A014876.P10627218762738188641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A045602 (n + 1) ^ 2).toNat

end

end A014876.P10627218762738188641

/-! ## A014876.P10673446515744584420

`A037213(A045602(n+1)²)`
-/

namespace A014876.P10673446515744584420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A045602 (n + 1) ^ 2).toNat

end

end A014876.P10673446515744584420

/-!
# A014877: Inverse of 868th cyclotomic polynomial.

The programs for A014877, there is no canonical definition to state claims against.
-/

/-! ## A014877.P9709829587024597636

`A014821(n)*A354807(A014865(n+4))`
-/

namespace A014877.P9709829587024597636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014821 n * A354807 (A014865 (n + 4)).toNat

end

end A014877.P9709829587024597636

/-!
# A014878: Inverse of 869th cyclotomic polynomial.

The programs for A014878, there is no canonical definition to state claims against.
-/

/-! ## A014878.P9948107142037063172

`A015966(A151878(n+2)+comp[A152412(n+1)])`
-/

namespace A014878.P9948107142037063172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152412 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015966 (A151878 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A014878.P9948107142037063172

/-!
# A014879: Inverse of 870th cyclotomic polynomial.

The programs for A014879, there is no canonical definition to state claims against.
-/

/-! ## A014879.P3441736486970013977

`A015749(2*n)`
-/

namespace A014879.P3441736486970013977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015749 (2 * n)

end

end A014879.P3441736486970013977

/-! ## A014879.P2998866148658749205

`A014444(n)*A033999(n)`
-/

namespace A014879.P2998866148658749205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014444 n * A033999 n

end

end A014879.P2998866148658749205

/-! ## A014879.P1760505149838226272

`A014939(A182049(n+1))`
-/

namespace A014879.P1760505149838226272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014939 (A182049 (n + 1)).toNat

end

end A014879.P1760505149838226272

/-! ## A014879.P2819418031376483067

`A016139(A035062(n+1))`
-/

namespace A014879.P2819418031376483067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016139 (A035062 (n + 1)).toNat

end

end A014879.P2819418031376483067

/-!
# A014880: Inverse of 871st cyclotomic polynomial.

The programs for A014880, there is no canonical definition to state claims against.
-/

/-! ## A014880.P7226681902560241366

`A015751(n)*A033999(n)`
-/

namespace A014880.P7226681902560241366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015751 n * A033999 n

end

end A014880.P7226681902560241366

/-!
# A014881: a(1)=1, a(n) = 11*a(n-1) + n.

The programs for A014881, the canonical program `A014881.P17775345361805548799` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014881 has offset 1).

The definition of A014881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)+n+1` (program `A014881.P17775345361805548799`, by `A014881.P17775345361805548799.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014881.P17775345361805548799

`11*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014881

/-- `11*a(n-1)+n+1` -/
def P17775345361805548799.Spec : Prop :=
  ∀ n, (P17775345361805548799.a n : ℤ) = A014881 (n + 1)

theorem P17775345361805548799.correct : P17775345361805548799.Spec := by
  intro n
  simp only [A014881, Nat.add_sub_cancel]

end A014881

/-! ## A014881.P10551447182511294164

`(11^(n+2)-10*(n+1)-11)/100`
-/

namespace A014881.P10551447182511294164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 2) : ℤ) - (10 * (n + 1) : ℤ) - 11 : ℚ) / 100

end

end A014881.P10551447182511294164

namespace A014881

/-- `(11^(n+2)-10*(n+1)-11)/100` -/
def P10551447182511294164.Spec : Prop :=
  ∀ n, P10551447182511294164.a n = (A014881 (n + 1) : ℚ)

theorem P10551447182511294164.correct : P10551447182511294164.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014881, Nat.add_sub_cancel, A014881.P10551447182511294164.a, A014881.P17775345361805548799.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014881, Nat.add_sub_cancel, A014881.P10551447182511294164.a, A014881.P17775345361805548799.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014881

/-! ## A014881.P11237556939188765213

`∑[ogf(1/(1-12x+11x^2))]`
-/

namespace A014881.P11237556939188765213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 11] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014881.P11237556939188765213

namespace A014881

/-- `∑[ogf(1/(1-12x+11x^2))]` -/
def P11237556939188765213.Spec : Prop :=
  ∀ n, P11237556939188765213.a n = A014881 (n + 1)

end A014881

/-! ## A014881.P18121366147518307158

`ogf(1/(1-13x+23x^2-11x^3))`
-/

namespace A014881.P18121366147518307158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -13, 23, -11] n

end

end A014881.P18121366147518307158

namespace A014881

/-- `ogf(1/(1-13x+23x^2-11x^3))` -/
def P18121366147518307158.Spec : Prop :=
  ∀ n, P18121366147518307158.a n = A014881 (n + 1)

end A014881

/-! ## A014881.P13372937366682290508

`abs(∑[∑[11*a(n-1)]])` with `a(0)=1`
-/

namespace A014881.P13372937366682290508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  11 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014881.P13372937366682290508

namespace A014881

/-- `abs(∑[∑[11*a(n-1)]])` -/
def P13372937366682290508.Spec : Prop :=
  ∀ n, (P13372937366682290508.a n : ℤ) = A014881 (n + 1)

end A014881

/-! ## A014881.P5358028149119379154

`floor(∑[∑[11*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014881.P5358028149119379154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  11 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014881.P5358028149119379154

namespace A014881

/-- `floor(∑[∑[11*a(n-1)]])` -/
def P5358028149119379154.Spec : Prop :=
  ∀ n, (P5358028149119379154.a n : ℤ) = A014881 (n + 1)

end A014881

/-! ## A014881.P5742106085204932003

`ceil(∑[∑[11*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014881.P5742106085204932003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  11 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014881.P5742106085204932003

namespace A014881

/-- `ceil(∑[∑[11*a(n-1)]])` -/
def P5742106085204932003.Spec : Prop :=
  ∀ n, (P5742106085204932003.a n : ℤ) = A014881 (n + 1)

end A014881

/-! ## A014881.P13568357188404374571

`round(∑[∑[11*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014881.P13568357188404374571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  11 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014881.P13568357188404374571

namespace A014881

/-- `round(∑[∑[11*a(n-1)]])` -/
def P13568357188404374571.Spec : Prop :=
  ∀ n, (P13568357188404374571.a n : ℤ) = A014881 (n + 1)

end A014881

/-! ## A014881.P15253834984973789918

`∑[A016123(n)]`
-/

namespace A014881.P15253834984973789918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014881.P15253834984973789918

namespace A014881

/-- `∑[A016123(n)]` -/
def P15253834984973789918.Spec : Prop :=
  ∀ n, P15253834984973789918.a n = A014881 (n + 1)

end A014881

/-! ## A014881.P11607520626253568858

`∑[∑[A001020(n)]]`
-/

namespace A014881.P11607520626253568858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014881.P11607520626253568858

namespace A014881

/-- `∑[∑[A001020(n)]]` -/
def P11607520626253568858.Spec : Prop :=
  ∀ n, P11607520626253568858.a n = A014881 (n + 1)

end A014881

/-!
# A014882: a(1) = 1, a(n) = 12*a(n-1) + n.

The programs for A014882, the canonical program `A014882.P7900666385490449814` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014882 has offset 1).

The definition of A014882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)+n+1` (program `A014882.P7900666385490449814`, by `A014882.P7900666385490449814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014882.P7900666385490449814

`12*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014882

/-- `12*a(n-1)+n+1` -/
def P7900666385490449814.Spec : Prop :=
  ∀ n, (P7900666385490449814.a n : ℤ) = A014882 (n + 1)

theorem P7900666385490449814.correct : P7900666385490449814.Spec := by
  intro n
  simp only [A014882, Nat.add_sub_cancel]

end A014882

/-! ## A014882.P12049075045016790818

`(12^(n+2)-11*(n+1)-12)/121`
-/

namespace A014882.P12049075045016790818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 2) : ℤ) - (11 * (n + 1) : ℤ) - 12 : ℚ) / 121

end

end A014882.P12049075045016790818

namespace A014882

/-- `(12^(n+2)-11*(n+1)-12)/121` -/
def P12049075045016790818.Spec : Prop :=
  ∀ n, P12049075045016790818.a n = (A014882 (n + 1) : ℚ)

theorem P12049075045016790818.correct : P12049075045016790818.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014882, Nat.add_sub_cancel, A014882.P12049075045016790818.a, A014882.P7900666385490449814.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014882, Nat.add_sub_cancel, A014882.P12049075045016790818.a, A014882.P7900666385490449814.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014882

/-! ## A014882.P16292182784378232151

`∑[ogf(1/(1-13x+12x^2))]`
-/

namespace A014882.P16292182784378232151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -13, 12] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014882.P16292182784378232151

namespace A014882

/-- `∑[ogf(1/(1-13x+12x^2))]` -/
def P16292182784378232151.Spec : Prop :=
  ∀ n, P16292182784378232151.a n = A014882 (n + 1)

end A014882

/-! ## A014882.P13048867737246043151

`ogf(1/(1-14x+25x^2-12x^3))`
-/

namespace A014882.P13048867737246043151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -14, 25, -12] n

end

end A014882.P13048867737246043151

namespace A014882

/-- `ogf(1/(1-14x+25x^2-12x^3))` -/
def P13048867737246043151.Spec : Prop :=
  ∀ n, P13048867737246043151.a n = A014882 (n + 1)

end A014882

/-! ## A014882.P4694096040982553044

`abs(∑[∑[12*a(n-1)]])` with `a(0)=1`
-/

namespace A014882.P4694096040982553044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  12 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014882.P4694096040982553044

namespace A014882

/-- `abs(∑[∑[12*a(n-1)]])` -/
def P4694096040982553044.Spec : Prop :=
  ∀ n, (P4694096040982553044.a n : ℤ) = A014882 (n + 1)

end A014882

/-! ## A014882.P5335354882768894241

`floor(∑[∑[12*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014882.P5335354882768894241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  12 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014882.P5335354882768894241

namespace A014882

/-- `floor(∑[∑[12*a(n-1)]])` -/
def P5335354882768894241.Spec : Prop :=
  ∀ n, (P5335354882768894241.a n : ℤ) = A014882 (n + 1)

end A014882

/-! ## A014882.P13992646284436807779

`ceil(∑[∑[12*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014882.P13992646284436807779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  12 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014882.P13992646284436807779

namespace A014882

/-- `ceil(∑[∑[12*a(n-1)]])` -/
def P13992646284436807779.Spec : Prop :=
  ∀ n, (P13992646284436807779.a n : ℤ) = A014882 (n + 1)

end A014882

/-! ## A014882.P14237283631098036452

`∑[A016125(n)]`
-/

namespace A014882.P14237283631098036452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014882.P14237283631098036452

namespace A014882

/-- `∑[A016125(n)]` -/
def P14237283631098036452.Spec : Prop :=
  ∀ n, P14237283631098036452.a n = A014882 (n + 1)

end A014882

/-! ## A014882.P3310945950420785636

`∑[∑[A001021(n)]]`
-/

namespace A014882.P3310945950420785636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014882.P3310945950420785636

namespace A014882

/-- `∑[∑[A001021(n)]]` -/
def P3310945950420785636.Spec : Prop :=
  ∀ n, P3310945950420785636.a n = A014882 (n + 1)

end A014882

/-! ## A014882.P13719529679389672537

`∑[∑[A017940(2*n)]]`
-/

namespace A014882.P13719529679389672537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017940 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014882.P13719529679389672537

namespace A014882

/-- `∑[∑[A017940(2*n)]]` -/
def P13719529679389672537.Spec : Prop :=
  ∀ n, P13719529679389672537.a n = A014882 (n + 1)

end A014882

/-!
# A014883: Inverse of 874th cyclotomic polynomial.

The programs for A014883, there is no canonical definition to state claims against.
-/

/-! ## A014883.P4612213913617847984

`A014446(n)*A033999(n)`
-/

namespace A014883.P4612213913617847984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014446 n * A033999 n

end

end A014883.P4612213913617847984

/-!
# A014890: n is equal to the number of 1's in all numbers <= n written in base 6.

The programs for A014890, there is no canonical definition to state claims against.
-/

/-! ## A014890.P17776106983340431193

`∑[gcd(1-n, A166784(n+1))]`
-/

namespace A014890.P17776106983340431193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) (A166784 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014890.P17776106983340431193

/-! ## A014890.P10141056796674991455

`∑[gcd(n*A166784(n+1), A023443(n))]`
-/

namespace A014890.P10141056796674991455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A166784 (n + 1)) (A023443 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014890.P10141056796674991455

/-!
# A014893: Inverse of 884th cyclotomic polynomial.

The programs for A014893, there is no canonical definition to state claims against.
-/

/-! ## A014893.P13098149540179483413

`A015777(2*n)`
-/

namespace A014893.P13098149540179483413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015777 (2 * n)

end

end A014893.P13098149540179483413

/-! ## A014893.P2972646102101149576

`A014997(A175427(n+1))`
-/

namespace A014893.P2972646102101149576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014997 (A175427 (n + 1)).toNat

end

end A014893.P2972646102101149576

/-! ## A014893.P15295697138466882373

`A014997(n)%A182744(n+1)`
-/

namespace A014893.P15295697138466882373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014997 n) (A182744 (n + 1))

end

end A014893.P15295697138466882373

/-! ## A014893.P14763166978642054900

`A015205(n)%A182744(n+1)`
-/

namespace A014893.P14763166978642054900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015205 n) (A182744 (n + 1))

end

end A014893.P14763166978642054900

/-! ## A014893.P6747947718984578180

`A015517(n)%A182744(n+1)`
-/

namespace A014893.P6747947718984578180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015517 n) (A182744 (n + 1))

end

end A014893.P6747947718984578180

/-!
# A014894: Inverse of 885th cyclotomic polynomial.

The programs for A014894, there is no canonical definition to state claims against.
-/

/-! ## A014894.P1814928952350169454

`A014924(n)^Δ[A328168(n+1)]`
-/

namespace A014894.P1814928952350169454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328168 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014924 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A014894.P1814928952350169454

/-!
# A014896: a(1) = 1, a(n) = 13*a(n-1) + n.

The programs for A014896, the canonical program `A014896.P12230836874285414713` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014896 has offset 1).

The definition of A014896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*a(n-1)+n+1` (program `A014896.P12230836874285414713`, by `A014896.P12230836874285414713.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014896.P12230836874285414713

`13*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014896

/-- `13*a(n-1)+n+1` -/
def P12230836874285414713.Spec : Prop :=
  ∀ n, (P12230836874285414713.a n : ℤ) = A014896 (n + 1)

theorem P12230836874285414713.correct : P12230836874285414713.Spec := by
  intro n
  simp only [A014896, Nat.add_sub_cancel]

end A014896

/-! ## A014896.P15836835781433791988

`∑[∑[13^n]]`
-/

namespace A014896.P15836835781433791988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014896.P15836835781433791988

namespace A014896

/-- `∑[∑[13^n]]` -/
def P15836835781433791988.Spec : Prop :=
  ∀ n, (P15836835781433791988.a n : ℤ) = A014896 (n + 1)

end A014896

/-! ## A014896.P5360773722656689288

`abs(∑[∑[13*a(n-1)]])` with `a(0)=1`
-/

namespace A014896.P5360773722656689288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  13 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014896.P5360773722656689288

namespace A014896

/-- `abs(∑[∑[13*a(n-1)]])` -/
def P5360773722656689288.Spec : Prop :=
  ∀ n, (P5360773722656689288.a n : ℤ) = A014896 (n + 1)

end A014896

/-! ## A014896.P10264896427466215457

`floor(∑[∑[13*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014896.P10264896427466215457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  13 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014896.P10264896427466215457

namespace A014896

/-- `floor(∑[∑[13*a(n-1)]])` -/
def P10264896427466215457.Spec : Prop :=
  ∀ n, (P10264896427466215457.a n : ℤ) = A014896 (n + 1)

end A014896

/-! ## A014896.P4589577686760750594

`ceil(∑[∑[13*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014896.P4589577686760750594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  13 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014896.P4589577686760750594

namespace A014896

/-- `ceil(∑[∑[13*a(n-1)]])` -/
def P4589577686760750594.Spec : Prop :=
  ∀ n, (P4589577686760750594.a n : ℤ) = A014896 (n + 1)

end A014896

/-! ## A014896.P2202539857676124518

`∑[2*A091030(n+1)]/2`
-/

namespace A014896.P2202539857676124518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091030 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A014896.P2202539857676124518

namespace A014896

/-- `∑[2*A091030(n+1)]/2` -/
def P2202539857676124518.Spec : Prop :=
  ∀ n, P2202539857676124518.a n = (A014896 (n + 1) : ℚ)

end A014896

/-! ## A014896.P3572720210207426725

`∑[∑[A153079(n)-1]]-∑[n+1]`
-/

namespace A014896.P3572720210207426725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153079 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A014896.P3572720210207426725

namespace A014896

/-- `∑[∑[A153079(n)-1]]-∑[n+1]` -/
def P3572720210207426725.Spec : Prop :=
  ∀ n, P3572720210207426725.a n = A014896 (n + 1)

end A014896

/-! ## A014896.P5555821700534281736

`∑[A091030(n+1)]%A091030(n+4)`
-/

namespace A014896.P5555821700534281736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A091030 (n + 4))

end

end A014896.P5555821700534281736

namespace A014896

/-- `∑[A091030(n+1)]%A091030(n+4)` -/
def P5555821700534281736.Spec : Prop :=
  ∀ n, P5555821700534281736.a n = A014896 (n + 1)

end A014896

/-!
# A014897: a(1)=1, a(n) = 14*a(n-1) + n.

The programs for A014897, the canonical program `A014897.P5496574227829042255` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014897 has offset 1).

The definition of A014897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)+n+1` (program `A014897.P5496574227829042255`, by `A014897.P5496574227829042255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014897.P5496574227829042255

`14*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014897

/-- `14*a(n-1)+n+1` -/
def P5496574227829042255.Spec : Prop :=
  ∀ n, (P5496574227829042255.a n : ℤ) = A014897 (n + 1)

theorem P5496574227829042255.correct : P5496574227829042255.Spec := by
  intro n
  simp only [A014897, Nat.add_sub_cancel]

end A014897

/-! ## A014897.P1881168852221119401

`∑[∑[14^n]]`
-/

namespace A014897.P1881168852221119401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014897.P1881168852221119401

namespace A014897

/-- `∑[∑[14^n]]` -/
def P1881168852221119401.Spec : Prop :=
  ∀ n, (P1881168852221119401.a n : ℤ) = A014897 (n + 1)

end A014897

/-! ## A014897.P4148557123198563569

`abs(∑[∑[14*a(n-1)]])` with `a(0)=1`
-/

namespace A014897.P4148557123198563569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  14 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014897.P4148557123198563569

namespace A014897

/-- `abs(∑[∑[14*a(n-1)]])` -/
def P4148557123198563569.Spec : Prop :=
  ∀ n, (P4148557123198563569.a n : ℤ) = A014897 (n + 1)

end A014897

/-! ## A014897.P15782313769897872297

`floor(∑[∑[14*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014897.P15782313769897872297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  14 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014897.P15782313769897872297

namespace A014897

/-- `floor(∑[∑[14*a(n-1)]])` -/
def P15782313769897872297.Spec : Prop :=
  ∀ n, (P15782313769897872297.a n : ℤ) = A014897 (n + 1)

end A014897

/-! ## A014897.P2321167750812677197

`ceil(∑[∑[14*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014897.P2321167750812677197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  14 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014897.P2321167750812677197

namespace A014897

/-- `ceil(∑[∑[14*a(n-1)]])` -/
def P2321167750812677197.Spec : Prop :=
  ∀ n, (P2321167750812677197.a n : ℤ) = A014897 (n + 1)

end A014897

/-! ## A014897.P10563565720689285564

`round(∑[∑[14*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014897.P10563565720689285564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  14 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014897.P10563565720689285564

namespace A014897

/-- `round(∑[∑[14*a(n-1)]])` -/
def P10563565720689285564.Spec : Prop :=
  ∀ n, (P10563565720689285564.a n : ℤ) = A014897 (n + 1)

end A014897

/-! ## A014897.P12967519491648607407

`abs(∑[∑[A001023(n)]]-1)+1`
-/

namespace A014897.P12967519491648607407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001023 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1| + 1

end

end A014897.P12967519491648607407

namespace A014897

/-- `abs(∑[∑[A001023(n)]]-1)+1` -/
def P12967519491648607407.Spec : Prop :=
  ∀ n, P12967519491648607407.a n = A014897 (n + 1)

end A014897

/-! ## A014897.P5033625555257714388

`A135519(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A014897.P5033625555257714388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135519 (n + 1) + a (n - 1)

end

end A014897.P5033625555257714388

namespace A014897

/-- `A135519(n+1)+a(n-1)` -/
def P5033625555257714388.Spec : Prop :=
  ∀ n, P5033625555257714388.a n = A014897 (n + 1)

end A014897

/-!
# A014898: a(1)=1, a(n) = 15*a(n-1) + n.

The programs for A014898, the canonical program `A014898.P12346041002976962238` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014898 has offset 1).

The definition of A014898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*a(n-1)+n+1` (program `A014898.P12346041002976962238`, by `A014898.P12346041002976962238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014898.P12346041002976962238

`15*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014898

/-- `15*a(n-1)+n+1` -/
def P12346041002976962238.Spec : Prop :=
  ∀ n, (P12346041002976962238.a n : ℤ) = A014898 (n + 1)

theorem P12346041002976962238.correct : P12346041002976962238.Spec := by
  intro n
  simp only [A014898, Nat.add_sub_cancel]

end A014898

/-! ## A014898.P10715065140118861300

`(15^(n+2)-14*(n+1)-15)/196`
-/

namespace A014898.P10715065140118861300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((15 ^ (n + 2) : ℤ) - (14 * (n + 1) : ℤ) - 15 : ℚ) / 196

end

end A014898.P10715065140118861300

namespace A014898

/-- `(15^(n+2)-14*(n+1)-15)/196` -/
def P10715065140118861300.Spec : Prop :=
  ∀ n, P10715065140118861300.a n = (A014898 (n + 1) : ℚ)

theorem P10715065140118861300.correct : P10715065140118861300.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014898, Nat.add_sub_cancel, A014898.P10715065140118861300.a, A014898.P12346041002976962238.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014898, Nat.add_sub_cancel, A014898.P10715065140118861300.a, A014898.P12346041002976962238.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014898

/-! ## A014898.P6114993766700329527

`∑[ogf(1/(1-16x+15x^2))]`
-/

namespace A014898.P6114993766700329527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -16, 15] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014898.P6114993766700329527

namespace A014898

/-- `∑[ogf(1/(1-16x+15x^2))]` -/
def P6114993766700329527.Spec : Prop :=
  ∀ n, P6114993766700329527.a n = A014898 (n + 1)

end A014898

/-! ## A014898.P11466939377390037924

`floor(∑[∑[15*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014898.P11466939377390037924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  15 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014898.P11466939377390037924

namespace A014898

/-- `floor(∑[∑[15*a(n-1)]])` -/
def P11466939377390037924.Spec : Prop :=
  ∀ n, (P11466939377390037924.a n : ℤ) = A014898 (n + 1)

end A014898

/-! ## A014898.P9990280199960620314

`ceil(∑[∑[15*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014898.P9990280199960620314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  15 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014898.P9990280199960620314

namespace A014898

/-- `ceil(∑[∑[15*a(n-1)]])` -/
def P9990280199960620314.Spec : Prop :=
  ∀ n, (P9990280199960620314.a n : ℤ) = A014898 (n + 1)

end A014898

/-! ## A014898.P2979255170793223750

`round(∑[∑[15*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014898.P2979255170793223750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  15 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014898.P2979255170793223750

namespace A014898

/-- `round(∑[∑[15*a(n-1)]])` -/
def P2979255170793223750.Spec : Prop :=
  ∀ n, (P2979255170793223750.a n : ℤ) = A014898 (n + 1)

end A014898

/-! ## A014898.P18139971499296203134

`abs(xor(15*a(n-1), -1)-n)` with `a(0)=1`
-/

namespace A014898.P18139971499296203134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.xor (15 * a (n - 1)) (-1) - (n : ℤ)|

end

end A014898.P18139971499296203134

namespace A014898

/-- `abs(xor(15*a(n-1), -1)-n)` -/
def P18139971499296203134.Spec : Prop :=
  ∀ n, P18139971499296203134.a n = A014898 (n + 1)

end A014898

/-! ## A014898.P6139908910514418091

`∑[∑[A001024(n)]]`
-/

namespace A014898.P6139908910514418091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001024 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014898.P6139908910514418091

namespace A014898

/-- `∑[∑[A001024(n)]]` -/
def P6139908910514418091.Spec : Prop :=
  ∀ n, P6139908910514418091.a n = A014898 (n + 1)

end A014898

/-! ## A014898.P10797833558777101597

`∑[A135518(n+1)]`
-/

namespace A014898.P10797833558777101597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014898.P10797833558777101597

namespace A014898

/-- `∑[A135518(n+1)]` -/
def P10797833558777101597.Spec : Prop :=
  ∀ n, P10797833558777101597.a n = A014898 (n + 1)

end A014898

/-! ## A014898.P235491305620050951

`∑[∑[A017949(2*n)]]`
-/

namespace A014898.P235491305620050951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017949 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014898.P235491305620050951

namespace A014898

/-- `∑[∑[A017949(2*n)]]` -/
def P235491305620050951.Spec : Prop :=
  ∀ n, P235491305620050951.a n = A014898 (n + 1)

end A014898

/-!
# A014899: a(n) = (16^(n+1) - 15*n - 16)/225.

The programs for A014899, the canonical program `A014899.P1691869335658777091` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014899 has offset 0).

The definition of A014899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(16^(n+1)-15*n-16)/225` (program `A014899.P10473353271910284881`, by `A014899.P10473353271910284881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014899.P1691869335658777091

`16*a(n-1)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014899

/-- `16*a(n-1)+n` -/
def P1691869335658777091.Spec : Prop :=
  ∀ n, (P1691869335658777091.a n : ℤ) = A014899 n

theorem P1691869335658777091.correct : P1691869335658777091.Spec := by
  intro n
  simp only [A014899]

end A014899

/-! ## A014899.P10473353271910284881

`(16^(n+1)-15*n-16)/225`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014899.P10473353271910284881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 ^ (n + 1) : ℤ) - (15 * n : ℤ) - 16 : ℚ) / 225

end

end A014899.P10473353271910284881

namespace A014899

/-- `(16^(n+1)-15*n-16)/225` -/
def P10473353271910284881.Spec : Prop :=
  ∀ n, P10473353271910284881.a n = (A014899 n : ℚ)

theorem P10473353271910284881.correct : P10473353271910284881.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014899, Nat.add_sub_cancel, A014899.P10473353271910284881.a, A014899.P1691869335658777091.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014899, Nat.add_sub_cancel, A014899.P10473353271910284881.a, A014899.P1691869335658777091.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014899

/-! ## A014899.P7918897782631862112

`∑[∑[4*4*a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A014899.P7918897782631862112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  4 * (4 * f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014899.P7918897782631862112

namespace A014899

/-- `∑[∑[4*4*a(n-1)]]` -/
def P7918897782631862112.Spec : Prop :=
  ∀ n, (P7918897782631862112.a n : ℤ) = A014899 n

end A014899

/-! ## A014899.P15017084237762518892

`a(n-1)/(1/4)²+n` with `a(0)=0`
-/

namespace A014899.P15017084237762518892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 + (n : ℚ)

end

end A014899.P15017084237762518892

namespace A014899

/-- `a(n-1)/(1/4)²+n` -/
def P15017084237762518892.Spec : Prop :=
  ∀ n, P15017084237762518892.a n = (A014899 n : ℚ)

end A014899

/-! ## A014899.P3958485908165433423

`∑[lcm(16, a(n-1))+1]-1` with `a(0)=1, a(1)=1`
-/

namespace A014899.P3958485908165433423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.lcm 16 (f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A014899.P3958485908165433423

namespace A014899

/-- `∑[lcm(16, a(n-1))+1]-1` -/
def P3958485908165433423.Spec : Prop :=
  ∀ n, P3958485908165433423.a n = A014899 n

end A014899

/-! ## A014899.P15554567864189373646

`∑[a(n-1)+(4^(n-1))²]` with `a(0)=0`
-/

namespace A014899.P15554567864189373646
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014899.P15554567864189373646

namespace A014899

/-- `∑[a(n-1)+(4^(n-1))²]` -/
def P15554567864189373646.Spec : Prop :=
  ∀ n, P15554567864189373646.a n = (A014899 n : ℚ)

end A014899

/-! ## A014899.P136637849866101311

`n-4*(a(n-1)-5*a(n-1))` with `a(0)=0`
-/

namespace A014899.P136637849866101311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - 4 * (a (n - 1) - 5 * a (n - 1))

end

end A014899.P136637849866101311

namespace A014899

/-- `n-4*(a(n-1)-5*a(n-1))` -/
def P136637849866101311.Spec : Prop :=
  ∀ n, P136637849866101311.a n = A014899 n

end A014899

/-! ## A014899.P7751375321815807909

`∑[A115851(4*n)]`
-/

namespace A014899.P7751375321815807909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115851 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014899.P7751375321815807909

namespace A014899

/-- `∑[A115851(4*n)]` -/
def P7751375321815807909.Spec : Prop :=
  ∀ n, P7751375321815807909.a n = A014899 n

end A014899

/-! ## A014899.P2026154214317585411

`∑[A181586(4*n)]`
-/

namespace A014899.P2026154214317585411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014899.P2026154214317585411

namespace A014899

/-- `∑[A181586(4*n)]` -/
def P2026154214317585411.Spec : Prop :=
  ∀ n, P2026154214317585411.a n = A014899 n

end A014899

/-! ## A014899.P3760267238973384312

`∑[A113968(2*n+1)]`
-/

namespace A014899.P3760267238973384312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113968 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014899.P3760267238973384312

namespace A014899

/-- `∑[A113968(2*n+1)]` -/
def P3760267238973384312.Spec : Prop :=
  ∀ n, P3760267238973384312.a n = A014899 n

end A014899

