import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C047
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A261800: Number of 8-compositions of n: matrices with 8 rows of nonnegative integers with positive column sums and total element sum n.

The programs for A261800, the canonical program `A261800.P8662240630003657782` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261800 has offset 0).

The definition of A261800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261800.P8662240630003657782

`ogf((1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8)/(1-16x+56x^2-112x^3+140x^4-112x^5+56x^6-16x^7+2x^8))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A261800

/-- `ogf((1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8)/(1-16x+56x^2-112x^3+140x^4-112x^5+56x^6-16x^7+2x^8))` -/
def P8662240630003657782.Spec : Prop :=
  ∀ n, P8662240630003657782.a n = A261800 n

theorem P8662240630003657782.correct : P8662240630003657782.Spec := by
  intro n
  simp only [A261800]

end A261800

/-! ## A261800.P6627716408223241373

`A261780(A027379(n+7)-6)`
-/

namespace A261800.P6627716408223241373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A027379 (n + 7) - 6).toNat

end

end A261800.P6627716408223241373

namespace A261800

/-- `A261780(A027379(n+7)-6)` -/
def P6627716408223241373.Spec : Prop :=
  ∀ n, P6627716408223241373.a n = A261800 n

end A261800

/-!
# A261801: Number of 9-compositions of n: matrices with 9 rows of nonnegative integers with positive column sums and total element sum n.

The programs for A261801, the canonical program `A261801.P11560319133373359434` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261801 has offset 0).

The definition of A261801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261801.P11560319133373359434

`ogf((1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9)/(1-18x+72x^2-168x^3+252x^4-252x^5+168x^6-72x^7+18x^8-2x^9))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A261801

/-- `ogf((1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9)/(1-18x+72x^2-168x^3+252x^4-252x^5+168x^6-72x^7+18x^8-2x^9))` -/
def P11560319133373359434.Spec : Prop :=
  ∀ n, P11560319133373359434.a n = A261801 n

theorem P11560319133373359434.correct : P11560319133373359434.Spec := by
  intro n
  simp only [A261801]

end A261801

/-! ## A261801.P8931289519461705103

`A261780(eq[9, A025581(n)])`
-/

namespace A261801.P8931289519461705103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261801.P8931289519461705103

namespace A261801

/-- `A261780(eq[9, A025581(n)])` -/
def P8931289519461705103.Spec : Prop :=
  ∀ n, P8931289519461705103.a n = A261801 n

end A261801

/-!
# A261802: Number of 10-compositions of n: matrices with 10 rows of nonnegative integers with positive column sums and total element sum n.

The programs for A261802, the canonical program `A261802.P9524404349040084653` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261802 has offset 0).

The definition of A261802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261802.P9524404349040084653

`ogf((1-10x+45x^2-120x^3+210x^4-252x^5+210x^6-120x^7+45x^8-10x^9+x^10)/(1-20x+90x^2-240x^3+420x^4-504x^5+420x^6-240x^7+90x^8-20x^9+2x^10))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A261802

/-- `ogf((1-10x+45x^2-120x^3+210x^4-252x^5+210x^6-120x^7+45x^8-10x^9+x^10)/(1-20x+90x^2-240x^3+420x^4-504x^5+420x^6-240x^7+90x^8-20x^9+2x^10))` -/
def P9524404349040084653.Spec : Prop :=
  ∀ n, P9524404349040084653.a n = A261802 n

theorem P9524404349040084653.correct : P9524404349040084653.Spec := by
  intro n
  simp only [A261802]

end A261802

/-! ## A261802.P17598078989815268620

`A261780(eq[10, A025581(n)])`
-/

namespace A261802.P17598078989815268620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261802.P17598078989815268620

namespace A261802

/-- `A261780(eq[10, A025581(n)])` -/
def P17598078989815268620.Spec : Prop :=
  ∀ n, P17598078989815268620.a n = A261802 n

end A261802

/-!
# A261807: a(n) = n XOR n^3.

The programs for A261807, the canonical program `A261807.P846462203732169236` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261807 has offset 0).

The definition of A261807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261807.P846462203732169236

`xor(n, n^3)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A261807

/-- `xor(n, n^3)` -/
def P846462203732169236.Spec : Prop :=
  ∀ n, (P846462203732169236.a n : ℤ) = A261807 n

theorem P846462203732169236.correct : P846462203732169236.Spec := by
  intro n
  simp only [A261807]

end A261807

/-! ## A261807.P18418841135160411841

`lcm(2, xor(n, n*n²))`
-/

namespace A261807.P18418841135160411841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.xor n (n * n ^ 2))

end

end A261807.P18418841135160411841

namespace A261807

/-- `lcm(2, xor(n, n*n²))` -/
def P18418841135160411841.Spec : Prop :=
  ∀ n, (P18418841135160411841.a n : ℤ) = A261807 n

end A261807

/-! ## A261807.P11794197614350744409

`and(-2, xor(n, n*n²))`
-/

namespace A261807.P11794197614350744409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (Nat.xor n (n * n ^ 2) : ℤ)

end

end A261807.P11794197614350744409

namespace A261807

/-- `and(-2, xor(n, n*n²))` -/
def P11794197614350744409.Spec : Prop :=
  ∀ n, P11794197614350744409.a n = A261807 n

end A261807

/-! ## A261807.P18043408459025158316

`xor(1, xor(n, n*n²))-1`
-/

namespace A261807.P18043408459025158316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (Nat.xor n (n * n ^ 2)) : ℤ) - 1

end

end A261807.P18043408459025158316

namespace A261807

/-- `xor(1, xor(n, n*n²))-1` -/
def P18043408459025158316.Spec : Prop :=
  ∀ n, P18043408459025158316.a n = A261807 n

end A261807

/-! ## A261807.P12945974078823367230

`xor(2*n*n², 2*n)/2`
-/

namespace A261807.P12945974078823367230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor (2 * (n * n ^ 2)) (2 * n) : ℚ) / 2

end

end A261807.P12945974078823367230

namespace A261807

/-- `xor(2*n*n², 2*n)/2` -/
def P12945974078823367230.Spec : Prop :=
  ∀ n, P12945974078823367230.a n = (A261807 n : ℚ)

end A261807

/-! ## A261807.P9903419222982166489

`xor(n, n*n²)*A057427(n)`
-/

namespace A261807.P9903419222982166489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n * n ^ 2) : ℤ) * A057427 n

end

end A261807.P9903419222982166489

namespace A261807

/-- `xor(n, n*n²)*A057427(n)` -/
def P9903419222982166489.Spec : Prop :=
  ∀ n, P9903419222982166489.a n = A261807 n

end A261807

/-!
# A261809: a(n) = n! - prime(n).

The programs for A261809, the canonical program `A261809.P1476188145290052320` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261809 has offset 1).

The definition of A261809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!-A000040(n+1)` (program `A261809.P1476188145290052320`, by `A261809.P1476188145290052320.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261809.P1476188145290052320

`(n+1)!-A000040(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A261809

/-- `(n+1)!-A000040(n+1)` -/
def P1476188145290052320.Spec : Prop :=
  ∀ n, P1476188145290052320.a n = A261809 (n + 1)

theorem P1476188145290052320.correct : P1476188145290052320.Spec := by
  intro n
  simp only [A261809, Nat.add_sub_cancel]

end A261809

/-! ## A261809.P13156659062408768575

`A000142(n+1)-A000040(n+1)`
-/

namespace A261809.P13156659062408768575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A000040 (n + 1)

end

end A261809.P13156659062408768575

namespace A261809

/-- `A000142(n+1)-A000040(n+1)` -/
def P13156659062408768575.Spec : Prop :=
  ∀ n, P13156659062408768575.a n = A261809 (n + 1)

end A261809

/-! ## A261809.P4406966990481460509

`(n+1)!-eq[1, ∑{e}[n, #]]`
-/

namespace A261809.P4406966990481460509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A261809.P4406966990481460509

namespace A261809

/-- `(n+1)!-eq[1, ∑{e}[n, #]]` -/
def P4406966990481460509.Spec : Prop :=
  ∀ n, P4406966990481460509.a n = A261809 (n + 1)

end A261809

/-! ## A261809.P3605962939165735521

`(n+1)!-record[∑{p}[n+2, #]]`
-/

namespace A261809.P3605962939165735521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A261809.P3605962939165735521

namespace A261809

/-- `(n+1)!-record[∑{p}[n+2, #]]` -/
def P3605962939165735521.Spec : Prop :=
  ∀ n, P3605962939165735521.a n = A261809 (n + 1)

end A261809

/-! ## A261809.P2005301783209909791

`(n+1)!-eq[n+1, ∑{d}[n, #]]`
-/

namespace A261809.P2005301783209909791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A261809.P2005301783209909791

namespace A261809

/-- `(n+1)!-eq[n+1, ∑{d}[n, #]]` -/
def P2005301783209909791.Spec : Prop :=
  ∀ n, P2005301783209909791.a n = A261809 (n + 1)

end A261809

/-! ## A261809.P2546561239051972554

`∏[n+1]-abs(Δ[A008348(n)])`
-/

namespace A261809.P2546561239051972554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - |f2 (n + 1) - f2 n|

end

end A261809.P2546561239051972554

namespace A261809

/-- `∏[n+1]-abs(Δ[A008348(n)])` -/
def P2546561239051972554.Spec : Prop :=
  ∀ n, P2546561239051972554.a n = A261809 (n + 1)

end A261809

/-! ## A261809.P47776979528867267

`(n+1)!-record[A006530(n+2)]`
-/

namespace A261809.P47776979528867267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261809.P47776979528867267

namespace A261809

/-- `(n+1)!-record[A006530(n+2)]` -/
def P47776979528867267.Spec : Prop :=
  ∀ n, P47776979528867267.a n = A261809 (n + 1)

end A261809

/-! ## A261809.P8822092549778807524

`(n+1)!-record[A020639(n+2)]`
-/

namespace A261809.P8822092549778807524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261809.P8822092549778807524

namespace A261809

/-- `(n+1)!-record[A020639(n+2)]` -/
def P8822092549778807524.Spec : Prop :=
  ∀ n, P8822092549778807524.a n = A261809 (n + 1)

end A261809

/-! ## A261809.P2579713526436509296

`(n+1)!-record[A000010(n+1)+1]`
-/

namespace A261809.P2579713526436509296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261809.P2579713526436509296

namespace A261809

/-- `(n+1)!-record[A000010(n+1)+1]` -/
def P2579713526436509296.Spec : Prop :=
  ∀ n, P2579713526436509296.a n = A261809 (n + 1)

end A261809

/-! ## A261809.P4556732929350629869

`A038507(n+1)-A008864(n+1)`
-/

namespace A261809.P4556732929350629869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 (n + 1) - A008864 (n + 1)

end

end A261809.P4556732929350629869

namespace A261809

/-- `A038507(n+1)-A008864(n+1)` -/
def P4556732929350629869.Spec : Prop :=
  ∀ n, P4556732929350629869.a n = A261809 (n + 1)

theorem P4556732929350629869.correct : P4556732929350629869.Spec := by
  intro n
  simp only [A261809, Nat.add_sub_cancel, A261809.P4556732929350629869.a, A261809.P1476188145290052320.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A038507, A038507.P6297172410669872132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261809

/-!
# A261810: n and (2*n^2 + 2*n - 1) are primes.

The programs for A261810, there is no canonical definition to state claims against.
-/

/-! ## A261810.P1851949415430501680

`A210186(A241726(n+1))`
-/

namespace A261810.P1851949415430501680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210186 (A241726 (n + 1 + 36)).toNat

end

end A261810.P1851949415430501680

/-! ## A261810.P1930470112678913294

`record[A341676(A325836(3*n+4))]`
-/

namespace A261810.P1930470112678913294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341676 (A325836 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261810.P1930470112678913294

/-!
# A261811: Numbers m such that Sum_{k>=0} k^m/3^k is an integer.

The programs for A261811, there is no canonical definition to state claims against.
-/

/-! ## A261811.P12811386335326289778

`eq[n%4, A036987(A219227(n+1))]`
-/

namespace A261811.P12811386335326289778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A219227 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261811.P12811386335326289778

/-! ## A261811.P456265367827628213

`lt[A030103(n), A064097(A027589(n))]`
-/

namespace A261811.P456265367827628213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A027589 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261811.P456265367827628213

/-! ## A261811.P1541306669760367113

`lt[A318142(n+1), A319078(n)]`
-/

namespace A261811.P1541306669760367113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261811.P1541306669760367113

/-! ## A261811.P12875442298104292555

`eq[A070352(n), A263845(A028829(n))]`
-/

namespace A261811.P12875442298104292555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 (A028829 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261811.P12875442298104292555

/-! ## A261811.P14687276450749989611

`eq[A010127(n), A010127(A065673(2*(n+2)))]`
-/

namespace A261811.P14687276450749989611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (A065673 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261811.P14687276450749989611

/-!
# A261812: First differences of A098842.

The programs for A261812, there is no canonical definition to state claims against.
-/

/-! ## A261812.P10619765794867526542

`A098842(n+2)-A098842(n+1)`
-/

namespace A261812.P10619765794867526542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098842 (n + 2) - A098842 (n + 1)

end

end A261812.P10619765794867526542

/-! ## A261812.P1602325825354027675

`A050815(n+2)-A098842(n+1)`
-/

namespace A261812.P1602325825354027675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050815 (n + 2) - A098842 (n + 1)

end

end A261812.P1602325825354027675

/-! ## A261812.P6116842343618723945

`Δ[runs[A060384(n)]]`
-/

namespace A261812.P6116842343618723945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A261812.P6116842343618723945

/-!
# A261814: a(n) = smallest initial value s such that n is in the Collatz trajectory of s (s is not regarded as part of its trajectory).

The programs for A261814, there is no canonical definition to state claims against.
-/

/-! ## A261814.P13356613265392710303

`A070167(C(A070167(n+1), n)+n+1)`
-/

namespace A261814.P13356613265392710303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (Nat.choose (A070167 (n + 1)).toNat n + n + 1)

end

end A261814.P13356613265392710303

/-!
# A261815: Total number of semimagic squares of order n that can be formed from the numbers 1, ..., n^2.

The programs for A261815, there is no canonical definition to state claims against.
-/

/-! ## A261815.P2722668331506506322

`A031176(n)*A271103(n+1)`
-/

namespace A261815.P2722668331506506322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n * A271103 (n + 1)

end

end A261815.P2722668331506506322

/-!
# A261816: Number of basic semimagic squares of order n that can be formed from the numbers 1, ..., n^2.

The programs for A261816, there is no canonical definition to state claims against.
-/

/-! ## A261816.P6740650640696563703

`A261815(n+1)/A063965(n+1)`
-/

namespace A261816.P6740650640696563703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261815 (n + 1) : ℚ) / (A063965 (n + 1) : ℚ)

end

end A261816.P6740650640696563703

/-!
# A261819: Encoded symmetrical antidiagonal square binary matrices with either 1 or 2 ones.

The programs for A261819, there is no canonical definition to state claims against.
-/

/-! ## A261819.P11476813972634909600

`A261195(2^n)`
-/

namespace A261819.P11476813972634909600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261195 (2 ^ n)

end

end A261819.P11476813972634909600

/-! ## A261819.P2096314947992761674

`record[A261195(A001316(n))]`
-/

namespace A261819.P2096314947992761674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261195 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261819.P2096314947992761674

/-! ## A261819.P13095145484869312382

`record[A261195(A059268(n))]`
-/

namespace A261819.P13095145484869312382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261195 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261819.P13095145484869312382

/-! ## A261819.P9409565429800112687

`record[A261195(A082392(n))]`
-/

namespace A261819.P9409565429800112687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261195 (A082392 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261819.P9409565429800112687

/-! ## A261819.P14933455105784698831

`record[A261195(A130123(n))]`
-/

namespace A261819.P14933455105784698831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261195 (A130123 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261819.P14933455105784698831

/-!
# A261828: Number of compositions of 2n into distinct parts where each part i is marked with a word of length i over an n-ary alphabet whose letters appear in alphabetical order and all n letters occur at least once in the composition.

The programs for A261828, there is no canonical definition to state claims against.
-/

/-! ## A261828.P2374194971084196086

`A261836(C(2*n+1, 2)+n)`
-/

namespace A261828.P2374194971084196086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (Nat.choose (2 * n + 1) 2 + n)

end

end A261828.P2374194971084196086

/-! ## A261828.P9851773795823271129

`A261836(∑[4*n])`
-/

namespace A261828.P9851773795823271129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261828.P9851773795823271129

/-!
# A261831: a(2*n-1) = 2*n-1; otherwise a(n) is the smallest even number not already present which is obtained from the existing terms by the rules of (3*n+1)-problem.

The programs for A261831, the canonical program `A261831.P7516603240182007547` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261831 has offset 1).

The definition of A261831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261831.P7516603240182007547

`ogf((1+4x+3x^2+2x^3+5x^4+10x^5+5x^6+8x^7+3x^8+4x^9+x^10+2x^11)/(1-2x^6+x^12))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A261831

/-- `ogf((1+4x+3x^2+2x^3+5x^4+10x^5+5x^6+8x^7+3x^8+4x^9+x^10+2x^11)/(1-2x^6+x^12))` -/
def P7516603240182007547.Spec : Prop :=
  ∀ n, P7516603240182007547.a n = A261831 (n + 1)

theorem P7516603240182007547.correct : P7516603240182007547.Spec := by
  intro n
  simp only [A261831, Nat.add_sub_cancel]

end A261831

/-!
# A261834: Number of n-step adjacent expansions on the hexagonal (honeycomb) lattice. Holes allowed.

The programs for A261834, there is no canonical definition to state claims against.
-/

/-! ## A261834.P7533612864364633858

`3*A338919(round(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A261834.P7533612864364633858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A338919 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat

end

end A261834.P7533612864364633858

/-!
# A261835: Number A(n,k) of compositions of n into distinct parts where each part i is marked with a word of length i over a k-ary alphabet whose letters appear in alphabetical order; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A261835, there is no canonical definition to state claims against.
-/

/-! ## A261835.P2365169438004894934

`A071919(n)*A166240(A145085(n))`
-/

namespace A261835.P2365169438004894934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n * A166240 (A145085 n).toNat

end

end A261835.P2365169438004894934

/-! ## A261835.P14851753898306895750

`A071919(n)*A240471(A156953(n))`
-/

namespace A261835.P14851753898306895750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n * A240471 (A156953 n).toNat

end

end A261835.P14851753898306895750

/-! ## A261835.P12407446242910463831

`A124778(A091063(n))*A392378(n)`
-/

namespace A261835.P12407446242910463831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A091063 n).toNat * A392378 n

end

end A261835.P12407446242910463831

/-! ## A261835.P5653168317978504500

`A166240(A145085(n))*A321791(n)`
-/

namespace A261835.P5653168317978504500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166240 (A145085 n).toNat * A321791 n

end

end A261835.P5653168317978504500

/-! ## A261835.P10742138369556546301

`A240471(A156953(n))*A321791(n)`
-/

namespace A261835.P10742138369556546301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240471 (A156953 n).toNat * A321791 n

end

end A261835.P10742138369556546301

/-!
# A261836: Number T(n,k) of compositions of n into distinct parts where each part i is marked with a word of length i over a k-ary alphabet whose letters appear in alphabetical order and all k letters occur at least once in the composition; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A261836, there is no canonical definition to state claims against.
-/

/-! ## A261836.P6537573978005603523

`or(A244372(n+1), A258241(A258222(n)))`
-/

namespace A261836.P6537573978005603523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A244372 (n + 1)) (A258241 (A258222 n).toNat)

end

end A261836.P6537573978005603523

/-! ## A261836.P4340065555277812576

`A231516(2^A327244(n))`
-/

namespace A261836.P4340065555277812576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231516 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A327244 n : ℤ))).toNat

end

end A261836.P4340065555277812576

/-!
# A261837: Number of compositions of n into distinct parts where each part i is marked with a word of length i over an n-ary alphabet whose letters appear in alphabetical order.

The programs for A261837, there is no canonical definition to state claims against.
-/

/-! ## A261837.P17310704409903199520

`A261835(C(n+n+1, 2)+n)`
-/

namespace A261837.P17310704409903199520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (Nat.choose (n + n + 1) 2 + n)

end

end A261837.P17310704409903199520

/-! ## A261837.P15200590818777169729

`A261835(∑[4*n])`
-/

namespace A261837.P15200590818777169729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261837.P15200590818777169729

/-!
# A261838: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a k-ary alphabet (k=1,2,3,...) whose letters appear in alphabetical order and all k letters occur at least once in the composition.

The programs for A261838, there is no canonical definition to state claims against.
-/

/-! ## A261838.P5018975243100621359

`A293514(or(1, A068327(n)))`
-/

namespace A261838.P5018975243100621359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293514 (Int.lor 1 (A068327 n)).toNat

end

end A261838.P5018975243100621359

/-!
# A261840: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a binary alphabet whose letters appear in alphabetical order.

The programs for A261840, there is no canonical definition to state claims against.
-/

/-! ## A261840.P15028184528060921252

`A261835(∑[n+3])`
-/

namespace A261840.P15028184528060921252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261840.P15028184528060921252

/-! ## A261840.P2888108237534500314

`record[A261835(A165157(n))]`
-/

namespace A261840.P2888108237534500314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A165157 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261840.P2888108237534500314

/-! ## A261840.P11131466794528687278

`record[A261835(A027379(A002262(n)))]`
-/

namespace A261840.P11131466794528687278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A027379 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261840.P11131466794528687278

/-! ## A261840.P13191237293375979430

`record[A261835(A027379(A008611(n)))]`
-/

namespace A261840.P13191237293375979430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A027379 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261840.P13191237293375979430

/-! ## A261840.P5357803650691131196

`record[A261835(A027379(A025480(n)))]`
-/

namespace A261840.P5357803650691131196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A027379 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261840.P5357803650691131196

/-! ## A261840.P9511465925236570632

`record[A261835(A027379(A028242(n)))]`
-/

namespace A261840.P9511465925236570632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A027379 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261840.P9511465925236570632

/-! ## A261840.P14333860889891754349

`record[A261835(A055998(A008612(n)))]`
-/

namespace A261840.P14333860889891754349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055998 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261840.P14333860889891754349

/-! ## A261840.P1442612594493588291

`record[A261835(A055998(A008615(n)))]`
-/

namespace A261840.P1442612594493588291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055998 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261840.P1442612594493588291

/-! ## A261840.P7187071147428143652

`record[A261835(A027379(A049084(n+1)))]`
-/

namespace A261840.P7187071147428143652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A027379 (A049084 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261840.P7187071147428143652

/-! ## A261840.P7760157089762370711

`record[A261835(A055998(A026242(n+1)))]`
-/

namespace A261840.P7760157089762370711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055998 (A026242 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261840.P7760157089762370711

/-! ## A261840.P4772244960364251902

`record[A261835(A055998(A055396(n+1)))]`
-/

namespace A261840.P4772244960364251902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055998 (A055396 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261840.P4772244960364251902

/-! ## A261840.P17224593711177825795

`record[A261835(A055998(A164306(n+1)))]`
-/

namespace A261840.P17224593711177825795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055998 (A164306 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261840.P17224593711177825795

/-!
# A261841: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a ternary alphabet whose letters appear in alphabetical order.

The programs for A261841, there is no canonical definition to state claims against.
-/

/-! ## A261841.P15862874039072977151

`A261835(∑[n+4]+2)`
-/

namespace A261841.P15862874039072977151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A261841.P15862874039072977151

/-! ## A261841.P16572281721162666364

`record[A261835(abs(A046691(n)))]`
-/

namespace A261841.P16572281721162666364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261841.P16572281721162666364

/-! ## A261841.P9166603311940543365

`record[A261835(A027379(n)-1)]`
-/

namespace A261841.P9166603311940543365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261841.P9166603311940543365

/-! ## A261841.P18027364952859958947

`record[A261835(A046691(n)+A000007(n))]`
-/

namespace A261841.P18027364952859958947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A046691 n + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261841.P18027364952859958947

/-! ## A261841.P17301622210509036055

`record[A261835(A046691(n)%A027379(n))]`
-/

namespace A261841.P17301622210509036055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (Int.tmod (A046691 n) (A027379 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261841.P17301622210509036055

/-!
# A261842: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a quaternary alphabet whose letters appear in alphabetical order.

The programs for A261842, there is no canonical definition to state claims against.
-/

/-! ## A261842.P10644581295926802859

`A261835(∑[n+5]+5)`
-/

namespace A261842.P10644581295926802859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A261842.P10644581295926802859

/-! ## A261842.P15460989292775562294

`record[A261835(A052905(n))]`
-/

namespace A261842.P15460989292775562294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261842.P15460989292775562294

/-! ## A261842.P9700067718957928739

`record[A261835(A055999(n)+1)]`
-/

namespace A261842.P9700067718957928739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261842.P9700067718957928739

/-! ## A261842.P3452193695409594670

`record[A261835(abs(A046691(n))-1)]`
-/

namespace A261842.P3452193695409594670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261842.P3452193695409594670

/-! ## A261842.P9433282605023535975

`record[A261835(A046691(n+1)-1)]`
-/

namespace A261842.P9433282605023535975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261842.P9433282605023535975

/-! ## A261842.P11135999505661885823

`record[A261835(A027379(n+1)-2)]`
-/

namespace A261842.P11135999505661885823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261842.P11135999505661885823

/-! ## A261842.P13925061874214297695

`record[A261835(A055998(n+1)-2)]`
-/

namespace A261842.P13925061874214297695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055998 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261842.P13925061874214297695

/-! ## A261842.P3979637998725400996

`record[A261835(A034856(n+2)-3)]`
-/

namespace A261842.P3979637998725400996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261842.P3979637998725400996

/-! ## A261842.P5029444433474307325

`record[A261835(A165157(2*n+1)+n)]`
-/

namespace A261842.P5029444433474307325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A165157 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261842.P5029444433474307325

/-!
# A261843: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a quinary alphabet whose letters appear in alphabetical order.

The programs for A261843, there is no canonical definition to state claims against.
-/

/-! ## A261843.P9483755622259804042

`record[A261835(∑[n+4])]`
-/

namespace A261843.P9483755622259804042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261843.P9483755622259804042

/-! ## A261843.P10277829721096997454

`A261835(A055999(n+3))`
-/

namespace A261843.P10277829721096997454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055999 (n + 3)).toNat

end

end A261843.P10277829721096997454

/-!
# A261844: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a senary alphabet whose letters appear in alphabetical order.

The programs for A261844, there is no canonical definition to state claims against.
-/

/-! ## A261844.P3504427578505728904

`A261835(A155212(n+3)+1)`
-/

namespace A261844.P3504427578505728904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A155212 (n + 3) + 1).toNat

end

end A261844.P3504427578505728904

/-! ## A261844.P18407712979933813637

`record[A261835(abs(A046691(n)+n))]`
-/

namespace A261844.P18407712979933813637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 |A046691 n + (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261844.P18407712979933813637

/-! ## A261844.P8402361516294867468

`record[A261835(A027379(n+2)-4)]`
-/

namespace A261844.P8402361516294867468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A027379 (n + 2) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261844.P8402361516294867468

/-! ## A261844.P8153069008532874366

`record[A261835(A055998(n+1)+n)]`
-/

namespace A261844.P8153069008532874366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055998 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261844.P8153069008532874366

/-! ## A261844.P2001663011002170122

`record[A261835(A317440(n+1)+A034856(n+1))]`
-/

namespace A261844.P2001663011002170122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A317440 (n + 1) + A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261844.P2001663011002170122

/-!
# A261845: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a septenary alphabet whose letters appear in alphabetical order.

The programs for A261845, there is no canonical definition to state claims against.
-/

/-! ## A261845.P8297307589217626673

`A261835(A155212(n+4))`
-/

namespace A261845.P8297307589217626673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A155212 (n + 4)).toNat

end

end A261845.P8297307589217626673

/-!
# A261846: Number of compositions of n into distinct parts where each part i is marked with a word of length i over an octonary alphabet whose letters appear in alphabetical order.

The programs for A261846, there is no canonical definition to state claims against.
-/

/-! ## A261846.P14015559326445201094

`A261835(eq[8, A025581(n)])`
-/

namespace A261846.P14015559326445201094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261846.P14015559326445201094

/-!
# A261847: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a nonary alphabet whose letters appear in alphabetical order.

The programs for A261847, there is no canonical definition to state claims against.
-/

/-! ## A261847.P3691884819927262504

`A261835(eq[9, A025581(n)])`
-/

namespace A261847.P3691884819927262504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261847.P3691884819927262504

/-!
# A261848: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a denary alphabet whose letters appear in alphabetical order.

The programs for A261848, there is no canonical definition to state claims against.
-/

/-! ## A261848.P975032790415269768

`A261835(A000217(n+11)-11)`
-/

namespace A261848.P975032790415269768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A000217 (n + 11) - 11).toNat

end

end A261848.P975032790415269768

/-! ## A261848.P5441761865448067354

`record[A261835(∑[A057717(n)])]`
-/

namespace A261848.P5441761865448067354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261848.P5441761865448067354

/-!
# A261849: Number of squares in an n X n grid that are enclosed in a circle of diameter n (having the same center as the grid).

The programs for A261849, there is no canonical definition to state claims against.
-/

/-! ## A261849.P10257759763879562208

`n²-eq[A089311(A094544(n)), A178226(n)]`
-/

namespace A261849.P10257759763879562208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A094544 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A261849.P10257759763879562208

/-! ## A261849.P17018197709637011101

`∑[A230406(A166287(n+2)-A110654(2*(n+1))+1)]`
-/

namespace A261849.P17018197709637011101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 (A166287 (n + 2) - A110654 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261849.P17018197709637011101

/-! ## A261849.P12122749557500787523

`A248333(A053827(n)+A002061(n))`
-/

namespace A261849.P12122749557500787523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A053827 n + A002061 n).toNat

end

end A261849.P12122749557500787523

/-! ## A261849.P2975456593554585965

`A003192(n+1)-A000120(A000073(n))`
-/

namespace A261849.P2975456593554585965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003192 (n + 1) - A000120 (A000073 n).toNat

end

end A261849.P2975456593554585965

/-! ## A261849.P6989440360410400412

`A003192(n+1)-A001222(A001372(n))`
-/

namespace A261849.P6989440360410400412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003192 (n + 1) - A001222 (A001372 n).toNat

end

end A261849.P6989440360410400412

/-!
# A261853: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a binary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261853, there is no canonical definition to state claims against.
-/

/-! ## A261853.P6025015999295445184

`A261836(C(n+3, 2)+2)`
-/

namespace A261853.P6025015999295445184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (Nat.choose (n + 3) 2 + 2)

end

end A261853.P6025015999295445184

/-! ## A261853.P11919797758943567393

`A261836(∑[n+2]+3)`
-/

namespace A261853.P11919797758943567393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A261853.P11919797758943567393

/-! ## A261853.P12712908203799100144

`record[A261836(A000124(n)+1)]`
-/

namespace A261853.P12712908203799100144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A000124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261853.P12712908203799100144

/-! ## A261853.P11029367691610804221

`record[A261836(A152948(n+1))]`
-/

namespace A261853.P11029367691610804221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A152948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261853.P11029367691610804221

/-! ## A261853.P2147389210026771450

`record[A261836(A000217(n)+2)]`
-/

namespace A261853.P2147389210026771450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261853.P2147389210026771450

/-!
# A261854: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a ternary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261854, there is no canonical definition to state claims against.
-/

/-! ## A261854.P9195055556994301401

`A261836(C(n+4, 2)+3)`
-/

namespace A261854.P9195055556994301401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (Nat.choose (n + 4) 2 + 3)

end

end A261854.P9195055556994301401

/-! ## A261854.P13417613200087553578

`A261836(∑[n+3]+6)`
-/

namespace A261854.P13417613200087553578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A261854.P13417613200087553578

/-!
# A261855: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a quaternary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261855, there is no canonical definition to state claims against.
-/

/-! ## A261855.P11974269798612497454

`A261836(C(n+5, 2)+4)`
-/

namespace A261855.P11974269798612497454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (Nat.choose (n + 5) 2 + 4)

end

end A261855.P11974269798612497454

/-!
# A261856: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a quinary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261856, there is no canonical definition to state claims against.
-/

/-! ## A261856.P12750647356317896966

`A261836(C(n+6, 2)+5)`
-/

namespace A261856.P12750647356317896966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (Nat.choose (n + 6) 2 + 5)

end

end A261856.P12750647356317896966

/-!
# A261857: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a senary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261857, there is no canonical definition to state claims against.
-/

/-! ## A261857.P1542623723009496703

`A261836(C(n+7, 2)+6)`
-/

namespace A261857.P1542623723009496703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (Nat.choose (n + 7) 2 + 6)

end

end A261857.P1542623723009496703

/-!
# A261858: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a septenary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261858, there is no canonical definition to state claims against.
-/

/-! ## A261858.P13651263728548394888

`A261836(C(n+8, 2)+7)`
-/

namespace A261858.P13651263728548394888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (Nat.choose (n + 8) 2 + 7)

end

end A261858.P13651263728548394888

/-!
# A261859: Number of compositions of n into distinct parts where each part i is marked with a word of length i over an octonary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261859, there is no canonical definition to state claims against.
-/

/-! ## A261859.P739708242401369937

`A261836(C(n+9, 2)+8)`
-/

namespace A261859.P739708242401369937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (Nat.choose (n + 9) 2 + 8)

end

end A261859.P739708242401369937

/-!
# A261860: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a nonary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261860, there is no canonical definition to state claims against.
-/

/-! ## A261860.P8754798412075083278

`A261836(C(n+10, 2)+9)`
-/

namespace A261860.P8754798412075083278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (Nat.choose (n + 10) 2 + 9)

end

end A261860.P8754798412075083278

/-! ## A261860.P11287884307689767039

`A261836(eq[9, col(n)])`
-/

namespace A261860.P11287884307689767039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A261860.P11287884307689767039

/-!
# A261861: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a denary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261861, there is no canonical definition to state claims against.
-/

/-! ## A261861.P15219250932684773687

`A261836(C(n+11, 2)+10)`
-/

namespace A261861.P15219250932684773687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (Nat.choose (n + 11) 2 + 10)

end

end A261861.P15219250932684773687

/-! ## A261861.P13221029111101078572

`A261836(eq[10, col(n)])`
-/

namespace A261861.P13221029111101078572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A261861.P13221029111101078572

/-!
# A261862: Terms in A261524 that are not multiples of earlier terms.

The programs for A261862, there is no canonical definition to state claims against.
-/

/-! ## A261862.P9751780991029067288

`∩[A064896(n+1), A323161(A366849(n+1))]`
-/

namespace A261862.P9751780991029067288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A366849 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261862.P9751780991029067288

/-! ## A261862.P1503594071400221509

`∩[A359080(n+1), A374759(A374759(2*n+5))]`
-/

namespace A261862.P1503594071400221509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374759 (A374759 (2 * n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261862.P1503594071400221509

/-!
# A261863: a(n) = A143480(n)/n.

The programs for A261863, there is no canonical definition to state claims against.
-/

/-! ## A261863.P4133150839839879171

`A143480(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261863.P4133150839839879171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143480 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A261863.P4133150839839879171

/-! ## A261863.P7976562392355629386

`A008586(A143480(n+1))%A004767(n)`
-/

namespace A261863.P7976562392355629386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (A143480 (n + 1)).toNat) (A004767 n)

end

end A261863.P7976562392355629386

/-! ## A261863.P127788054897574857

`A008486(A143480(n+1))%A016789(n)`
-/

namespace A261863.P127788054897574857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A143480 (n + 1)).toNat) (A016789 n)

end

end A261863.P127788054897574857

/-!
# A261865: a(n) is the least integer k such that some multiple of sqrt(k) falls strictly between n and n+1.

The programs for A261865, there is no canonical definition to state claims against.
-/

/-! ## A261865.P2032507053875147802

`p?[A141810(A062050(n+1))%A318453(n+1)]`
-/

namespace A261865.P2032507053875147802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141810 (A062050 (n + 1)).toNat) (A318453 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261865.P2032507053875147802

/-! ## A261865.P903588686841053608

`A272565(lcm(A252868(n+1), A272592(n+1)))`
-/

namespace A261865.P903588686841053608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (Int.lcm (A252868 (n + 1)) (A272592 (n + 1)))

end

end A261865.P903588686841053608

/-! ## A261865.P10229221094534516444

`A272565(A252868(n+1)*A272592(n+1))`
-/

namespace A261865.P10229221094534516444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (A252868 (n + 1) * A272592 (n + 1)).toNat

end

end A261865.P10229221094534516444

/-! ## A261865.P14675104343401296283

`p?[runs[A195969(n+2)]]`
-/

namespace A261865.P14675104343401296283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A261865.P14675104343401296283

/-! ## A261865.P4013640297730033662

`p?[gcd(18, A331916(n+2))]`
-/

namespace A261865.P4013640297730033662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 18 (A331916 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A261865.P4013640297730033662

/-!
# A261866: Expansion of (G(-x) / chi(-x))^2 in powers of x where chi() is a Ramanujan theta function and G() is a Rogers-Ramanujan function.

The programs for A261866, there is no canonical definition to state claims against.
-/

/-! ## A261866.P12288642203822181931

`A147699(5*n)`
-/

namespace A261866.P12288642203822181931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147699 (5 * n)

end

end A261866.P12288642203822181931

/-! ## A261866.P17256272307534284550

`abs(A147699(A135042(n+1)))`
-/

namespace A261866.P17256272307534284550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147699 (A135042 (n + 1)).toNat|

end

end A261866.P17256272307534284550

/-! ## A261866.P11709916020222304412

`∑{#}[n, A122134(#)*A122134(n-#)]`
-/

namespace A261866.P11709916020222304412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A122134 k * A122134 (n - k)

end

end A261866.P11709916020222304412

/-! ## A261866.P6507169160554048002

`A138532(10*n+1)`
-/

namespace A261866.P6507169160554048002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138532 (10 * n + 1)

end

end A261866.P6507169160554048002

/-!
# A261867: Triangle T(n, k) read by rows (n >= 1, 1 <= k <= n), where row n gives the lexicographically first permutation of n cards that is a winning (or reformed) deck at Cayley's Mousetrap.

The programs for A261867, there is no canonical definition to state claims against.
-/

/-! ## A261867.P6648154630092361496

`A326032(A085601(n)%A201088(n+1))`
-/

namespace A261867.P6648154630092361496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326032 (Int.tmod (A085601 n) (A201088 (n + 1))).toNat

end

end A261867.P6648154630092361496

/-! ## A261867.P5519824936126938918

`A141169(n)+A043562(A022068(n*A141169(n)))`
-/

namespace A261867.P5519824936126938918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A043562 (A022068 ((n : ℤ) * A141169 n).toNat).toNat

end

end A261867.P5519824936126938918

/-! ## A261867.P6746491327964589315

`A057058(∑[A090751(n+1)!])`
-/

namespace A261867.P6746491327964589315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A090751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261867.P6746491327964589315

/-! ## A261867.P14339024072631162080

`A141169(n)+A043562(A022068(n))`
-/

namespace A261867.P14339024072631162080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A043562 (A022068 n).toNat

end

end A261867.P14339024072631162080

/-! ## A261867.P12031328427823332380

`A212620(A383410(n))`
-/

namespace A261867.P12031328427823332380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212620 (A383410 n).toNat

end

end A261867.P12031328427823332380

/-!
# A261868: Least number with exactly n triples {x, y, x mod y} of three distinct divisors.

The programs for A261868, there is no canonical definition to state claims against.
-/

/-! ## A261868.P14666018901640961305

`fo[A260073(n+1)]+1`
-/

namespace A261868.P14666018901640961305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A261868.P14666018901640961305

/-!
# A261869: First differences of A055615.

The programs for A261869, the canonical program `A261869.P9442405635502317177` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261869 has offset 1).

The definition of A261869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261869.P9442405635502317177

`Δ[(1+n)*∏{e}[1+n, -floor(1/#)]]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A261869

/-- `Δ[(1+n)*∏{e}[1+n, -floor(1/#)]]` -/
def P9442405635502317177.Spec : Prop :=
  ∀ n, P9442405635502317177.a n = A261869 (n + 1)

theorem P9442405635502317177.correct : P9442405635502317177.Spec := by
  intro n
  simp only [A261869, Nat.add_sub_cancel]

end A261869

/-! ## A261869.P16900302561445256721

`Δ[(1+n)*∏{e}[n+1, -#!]%2]`
-/

namespace A261869.P16900302561445256721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * Int.tmod (∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorial (Nat.factorization (f2 n) p) : ℤ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P16900302561445256721

namespace A261869

/-- `Δ[(1+n)*∏{e}[n+1, -#!]%2]` -/
def P16900302561445256721.Spec : Prop :=
  ∀ n, P16900302561445256721.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P6238077088742821047

`Δ[(n+1)*round(1/∏{e}[n+1, -#²])]`
-/

namespace A261869.P6238077088742821047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p ^ 2 : ℤ)) : ℤ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P6238077088742821047

namespace A261869

/-- `Δ[(n+1)*round(1/∏{e}[n+1, -#²])]` -/
def P6238077088742821047.Spec : Prop :=
  ∀ n, P6238077088742821047.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P4861536120870180783

`Δ[round(∏{e}[n+1, -#^-2])*(n+1)]`
-/

namespace A261869.P4861536120870180783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (-((Nat.factorization (f2 n) p : ℚ) ^ (-2 : ℤ)))) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P4861536120870180783

namespace A261869

/-- `Δ[round(∏{e}[n+1, -#^-2])*(n+1)]` -/
def P4861536120870180783.Spec : Prop :=
  ∀ n, P4861536120870180783.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P16014975161441123724

`Δ[(n+1)*round(∏{p}[n+1, -#]/(n+2))]`
-/

namespace A261869.P16014975161441123724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P16014975161441123724

namespace A261869

/-- `Δ[(n+1)*round(∏{p}[n+1, -#]/(n+2))]` -/
def P16014975161441123724.Spec : Prop :=
  ∀ n, P16014975161441123724.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P762281128379308639

`Δ[A055615(1+n)]`
-/

namespace A261869.P762281128379308639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P762281128379308639

namespace A261869

/-- `Δ[A055615(1+n)]` -/
def P762281128379308639.Spec : Prop :=
  ∀ n, P762281128379308639.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P1355092728893488739

`Δ[A061669(1+n)]-1`
-/

namespace A261869.P1355092728893488739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A261869.P1355092728893488739

namespace A261869

/-- `Δ[A061669(1+n)]-1` -/
def P1355092728893488739.Spec : Prop :=
  ∀ n, P1355092728893488739.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P6571872165758068330

`Δ[(1+n)*A008683(n+1)]`
-/

namespace A261869.P6571872165758068330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P6571872165758068330

namespace A261869

/-- `Δ[(1+n)*A008683(n+1)]` -/
def P6571872165758068330.Spec : Prop :=
  ∀ n, P6571872165758068330.a n = A261869 (n + 1)

theorem P6571872165758068330.correct : P6571872165758068330.Spec := by
  intro n
  simp only [A261869, Nat.add_sub_cancel, A261869.P6571872165758068330.f1, A261869.P6571872165758068330.a, A261869.P9442405635502317177.f2, A261869.P9442405635502317177.f1, A261869.P9442405635502317177.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261869

/-! ## A261869.P6926924992582826471

`Δ[∏{p}[n+1, -#]*A008966(n+1)]`
-/

namespace A261869.P6926924992582826471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))) * A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P6926924992582826471

namespace A261869

/-- `Δ[∏{p}[n+1, -#]*A008966(n+1)]` -/
def P6926924992582826471.Spec : Prop :=
  ∀ n, P6926924992582826471.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P18210895060204918775

`A055615(n+2)-A055615(n+1)`
-/

namespace A261869.P18210895060204918775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 2) - A055615 (n + 1)

end

end A261869.P18210895060204918775

namespace A261869

/-- `A055615(n+2)-A055615(n+1)` -/
def P18210895060204918775.Spec : Prop :=
  ∀ n, P18210895060204918775.a n = A261869 (n + 1)

theorem P18210895060204918775.correct : P18210895060204918775.Spec := by
  intro n
  simp only [A261869, Nat.add_sub_cancel, A261869.P18210895060204918775.a, A261869.P9442405635502317177.f2, A261869.P9442405635502317177.f1, A261869.P9442405635502317177.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261869

/-! ## A261869.P5867322689535284579

`(n+2)*A008683(n+2)-(n+1)*A008683(n+1)`
-/

namespace A261869.P5867322689535284579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A008683 (n + 2) - (n + 1 : ℤ) * A008683 (n + 1)

end

end A261869.P5867322689535284579

namespace A261869

/-- `(n+2)*A008683(n+2)-(n+1)*A008683(n+1)` -/
def P5867322689535284579.Spec : Prop :=
  ∀ n, P5867322689535284579.a n = A261869 (n + 1)

theorem P5867322689535284579.correct : P5867322689535284579.Spec := by
  intro n
  simp only [A261869, Nat.add_sub_cancel, A261869.P5867322689535284579.a, A261869.P9442405635502317177.f2, A261869.P9442405635502317177.f1, A261869.P9442405635502317177.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261869

/-! ## A261869.P16567142830528929438

`Δ[A080848(n+1)]-2`
-/

namespace A261869.P16567142830528929438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A261869.P16567142830528929438

namespace A261869

/-- `Δ[A080848(n+1)]-2` -/
def P16567142830528929438.Spec : Prop :=
  ∀ n, P16567142830528929438.a n = A261869 (n + 1)

theorem P16567142830528929438.correct : P16567142830528929438.Spec := by
  intro n
  simp only [A261869, Nat.add_sub_cancel, A261869.P16567142830528929438.f1, A261869.P16567142830528929438.a, A261869.P9442405635502317177.f2, A261869.P9442405635502317177.f1, A261869.P9442405635502317177.a, A080848, A080848.P7283304606114589538.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261869

/-! ## A261869.P8317024958655905025

`Δ[A062004(n+1)/2]`
-/

namespace A261869.P8317024958655905025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062004 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P8317024958655905025

namespace A261869

/-- `Δ[A062004(n+1)/2]` -/
def P8317024958655905025.Spec : Prop :=
  ∀ n, P8317024958655905025.a n = (A261869 (n + 1) : ℚ)

theorem P8317024958655905025.correct : P8317024958655905025.Spec := by
  intro n
  simp only [A261869, Nat.add_sub_cancel, A261869.P8317024958655905025.f1, A261869.P8317024958655905025.a, A261869.P9442405635502317177.f2, A261869.P9442405635502317177.f1, A261869.P9442405635502317177.a, A062004, A062004.P15381032056684289952.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261869

/-! ## A261869.P6926988392258067136

`Δ[A334657(n+1)/(n+1)]`
-/

namespace A261869.P6926988392258067136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334657 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P6926988392258067136

namespace A261869

/-- `Δ[A334657(n+1)/(n+1)]` -/
def P6926988392258067136.Spec : Prop :=
  ∀ n, P6926988392258067136.a n = (A261869 (n + 1) : ℚ)

theorem P6926988392258067136.correct : P6926988392258067136.Spec := by
  intro n
  simp only [A261869, Nat.add_sub_cancel, A261869.P6926988392258067136.f1, A261869.P6926988392258067136.a, A261869.P9442405635502317177.f2, A261869.P9442405635502317177.f1, A261869.P9442405635502317177.a, A334657, A334657.P15465611070505972424.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261869

/-! ## A261869.P9628958611506871936

`Δ[A334659(n+1)/(n+1)²]`
-/

namespace A261869.P9628958611506871936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334659 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P9628958611506871936

namespace A261869

/-- `Δ[A334659(n+1)/(n+1)²]` -/
def P9628958611506871936.Spec : Prop :=
  ∀ n, P9628958611506871936.a n = (A261869 (n + 1) : ℚ)

theorem P9628958611506871936.correct : P9628958611506871936.Spec := by
  intro n
  simp only [A261869, Nat.add_sub_cancel, A261869.P9628958611506871936.f1, A261869.P9628958611506871936.a, A261869.P9442405635502317177.f2, A261869.P9442405635502317177.f1, A261869.P9442405635502317177.a, A334659, A334659.P4253169947487790436.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261869

/-! ## A261869.P4898762948810300822

`Δ[A008683(A008619(2*n))*A008619(2*n)]`
-/

namespace A261869.P4898762948810300822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008619 (2 * n)).toNat * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P4898762948810300822

namespace A261869

/-- `Δ[A008683(A008619(2*n))*A008619(2*n)]` -/
def P4898762948810300822.Spec : Prop :=
  ∀ n, P4898762948810300822.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P8373503112871029710

`Δ[A008683(A052938(2*n))*A052938(2*n)]`
-/

namespace A261869.P8373503112871029710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A052938 (2 * n)).toNat * A052938 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P8373503112871029710

namespace A261869

/-- `Δ[A008683(A052938(2*n))*A052938(2*n)]` -/
def P8373503112871029710.Spec : Prop :=
  ∀ n, P8373503112871029710.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P13975864768048739356

`Δ[A008683(A027656(2*n))*A027656(2*n)]`
-/

namespace A261869.P13975864768048739356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A027656 (2 * n)).toNat * A027656 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P13975864768048739356

namespace A261869

/-- `Δ[A008683(A027656(2*n))*A027656(2*n)]` -/
def P13975864768048739356.Spec : Prop :=
  ∀ n, P13975864768048739356.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P5815203550425595564

`Δ[A008683(A028242(2*n))*A028242(2*n)]`
-/

namespace A261869.P5815203550425595564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028242 (2 * n)).toNat * A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P5815203550425595564

namespace A261869

/-- `Δ[A008683(A028242(2*n))*A028242(2*n)]` -/
def P5815203550425595564.Spec : Prop :=
  ∀ n, P5815203550425595564.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P1120349864680306964

`Δ[(n+1)*A369453((n+1)²)]`
-/

namespace A261869.P1120349864680306964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369453 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P1120349864680306964

namespace A261869

/-- `Δ[(n+1)*A369453((n+1)²)]` -/
def P1120349864680306964.Spec : Prop :=
  ∀ n, P1120349864680306964.a n = A261869 (n + 1)

end A261869

/-!
# A261871: Numbers of the form (2*j-1)*(2^k-1); j>=1, k>=2.

The programs for A261871, the canonical program `A261871.P15252140952457326992` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261871 has offset 1).

The definition of A261871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261871.P15252140952457326992

`∩[1+2*n, A382875(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A261871

/-- `∩[1+2*n, A382875(n+1)]` -/
def P15252140952457326992.Spec : Prop :=
  ∀ n, (P15252140952457326992.a n : ℤ) = A261871 (n + 1)

theorem P15252140952457326992.correct : P15252140952457326992.Spec := by
  intro n
  simp only [A261871, Nat.add_sub_cancel]

end A261871

/-! ## A261871.P15074879877493160216

`lt[A093178(n), A154402(n+1)]+1`
-/

namespace A261871.P15074879877493160216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A261871.P15074879877493160216

namespace A261871

/-- `lt[A093178(n), A154402(n+1)]+1` -/
def P15074879877493160216.Spec : Prop :=
  ∀ n, (P15074879877493160216.a n : ℤ) = A261871 (n + 1)

end A261871

/-! ## A261871.P12599754035431461747

`lt[1, A154402(A093178(n))]`
-/

namespace A261871.P12599754035431461747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A261871.P12599754035431461747

namespace A261871

/-- `lt[1, A154402(A093178(n))]` -/
def P12599754035431461747.Spec : Prop :=
  ∀ n, (P12599754035431461747.a n : ℤ) = A261871 (n + 1)

end A261871

/-! ## A261871.P12974597120172948825

`∩[A382875(n+1), A004281(n)]`
-/

namespace A261871.P12974597120172948825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261871.P12974597120172948825

namespace A261871

/-- `∩[A382875(n+1), A004281(n)]` -/
def P12974597120172948825.Spec : Prop :=
  ∀ n, (P12974597120172948825.a n : ℤ) = A261871 (n + 1)

end A261871

/-! ## A261871.P4855920026979738087

`∩[A382875(n+1), A060747(n)]`
-/

namespace A261871.P4855920026979738087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261871.P4855920026979738087

namespace A261871

/-- `∩[A382875(n+1), A060747(n)]` -/
def P4855920026979738087.Spec : Prop :=
  ∀ n, (P4855920026979738087.a n : ℤ) = A261871 (n + 1)

end A261871

/-! ## A261871.P3744812134184551057

`lt[1, A161789(n^(n%2))]`
-/

namespace A261871.P3744812134184551057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161789 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A261871.P3744812134184551057

namespace A261871

/-- `lt[1, A161789(n^(n%2))]` -/
def P3744812134184551057.Spec : Prop :=
  ∀ n, (P3744812134184551057.a n : ℤ) = A261871 (n + 1)

end A261871

/-! ## A261871.P10505928506576303534

`filter[A382875(n+1), A000035(#)]`
-/

namespace A261871.P10505928506576303534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A261871.P10505928506576303534

namespace A261871

/-- `filter[A382875(n+1), A000035(#)]` -/
def P10505928506576303534.Spec : Prop :=
  ∀ n, P10505928506576303534.a n = A261871 (n + 1)

end A261871

/-! ## A261871.P13428440906784947168

`filter[A382875(n+2), A266070(#)]`
-/

namespace A261871.P13428440906784947168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A261871.P13428440906784947168

namespace A261871

/-- `filter[A382875(n+2), A266070(#)]` -/
def P13428440906784947168.Spec : Prop :=
  ∀ n, P13428440906784947168.a n = A261871 (n + 1)

end A261871

/-! ## A261871.P7623513190415200068

`filter[A382875(n+2), A266719(#)]`
-/

namespace A261871.P7623513190415200068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A261871.P7623513190415200068

namespace A261871

/-- `filter[A382875(n+2), A266719(#)]` -/
def P7623513190415200068.Spec : Prop :=
  ∀ n, P7623513190415200068.a n = A261871 (n + 1)

end A261871

/-! ## A261871.P18351826348053197615

`filter[A382875(n+2), A296066(#)]`
-/

namespace A261871.P18351826348053197615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A261871.P18351826348053197615

namespace A261871

/-- `filter[A382875(n+2), A296066(#)]` -/
def P18351826348053197615.Spec : Prop :=
  ∀ n, P18351826348053197615.a n = A261871 (n + 1)

end A261871

/-! ## A261871.P17743372084395780436

`lt[A166333(A049073(n+1)), 2]+1`
-/

namespace A261871.P17743372084395780436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A049073 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A261871.P17743372084395780436

namespace A261871

/-- `lt[A166333(A049073(n+1)), 2]+1` -/
def P17743372084395780436.Spec : Prop :=
  ∀ n, (P17743372084395780436.a n : ℤ) = A261871 (n + 1)

end A261871

/-! ## A261871.P5519226876867722000

`lt[A040168(n), A049073(A093178(n))]`
-/

namespace A261871.P5519226876867722000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049073 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261871.P5519226876867722000

namespace A261871

/-- `lt[A040168(n), A049073(A093178(n))]` -/
def P5519226876867722000.Spec : Prop :=
  ∀ n, (P5519226876867722000.a n : ℤ) = A261871 (n + 1)

end A261871

/-! ## A261871.P8482529230571878497

`lt[A166333(n), A049073(A093178(n))]`
-/

namespace A261871.P8482529230571878497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049073 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261871.P8482529230571878497

namespace A261871

/-- `lt[A166333(n), A049073(A093178(n))]` -/
def P8482529230571878497.Spec : Prop :=
  ∀ n, (P8482529230571878497.a n : ℤ) = A261871 (n + 1)

end A261871

/-! ## A261871.P4977248833748888058

`lt[A093178(n+3), A049073(A093178(n))]`
-/

namespace A261871.P4977248833748888058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049073 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261871.P4977248833748888058

namespace A261871

/-- `lt[A093178(n+3), A049073(A093178(n))]` -/
def P4977248833748888058.Spec : Prop :=
  ∀ n, (P4977248833748888058.a n : ℤ) = A261871 (n + 1)

end A261871

/-!
# A261872: a(n) = phi(n) mod 5, where phi is the Euler totient function.

The programs for A261872, the canonical program `A261872.P7054032506093188784` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261872 has offset 1).

The definition of A261872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)%5` (program `A261872.P7054032506093188784`, by `A261872.P7054032506093188784.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261872.P7054032506093188784

`A000010(n+1)%5`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A261872

/-- `A000010(n+1)%5` -/
def P7054032506093188784.Spec : Prop :=
  ∀ n, P7054032506093188784.a n = A261872 (n + 1)

theorem P7054032506093188784.correct : P7054032506093188784.Spec := by
  intro n
  simp only [A261872, Nat.add_sub_cancel]

end A261872

/-! ## A261872.P10858790068857773858

`A010874(A000010(n+1))`
-/

namespace A261872.P10858790068857773858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A000010 (n + 1)).toNat

end

end A261872.P10858790068857773858

namespace A261872

/-- `A010874(A000010(n+1))` -/
def P10858790068857773858.Spec : Prop :=
  ∀ n, P10858790068857773858.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P17300807347881888397

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%5`
-/

namespace A261872.P17300807347881888397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) 5

end

end A261872.P17300807347881888397

namespace A261872

/-- `((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%5` -/
def P17300807347881888397.Spec : Prop :=
  ∀ n, P17300807347881888397.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P223114702436631400

`Δ[A002088(n)]%5`
-/

namespace A261872.P223114702436631400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 5

end

end A261872.P223114702436631400

namespace A261872

/-- `Δ[A002088(n)]%5` -/
def P223114702436631400.Spec : Prop :=
  ∀ n, P223114702436631400.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P6480538425596572398

`Δ[A005728(n)]%5`
-/

namespace A261872.P6480538425596572398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 5

end

end A261872.P6480538425596572398

namespace A261872

/-- `Δ[A005728(n)]%5` -/
def P6480538425596572398.Spec : Prop :=
  ∀ n, P6480538425596572398.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P3365908962132627888

`A059378(n+1)%5`
-/

namespace A261872.P3365908962132627888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059378 (n + 1)) 5

end

end A261872.P3365908962132627888

namespace A261872

/-- `A059378(n+1)%5` -/
def P3365908962132627888.Spec : Prop :=
  ∀ n, P3365908962132627888.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P4514712453654078488

`A069094(n+1)%5`
-/

namespace A261872.P4514712453654078488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069094 (n + 1)) 5

end

end A261872.P4514712453654078488

namespace A261872

/-- `A069094(n+1)%5` -/
def P4514712453654078488.Spec : Prop :=
  ∀ n, P4514712453654078488.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P7669291974807657080

`(A109606(n+1)+1)%5`
-/

namespace A261872.P7669291974807657080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109606 (n + 1) + 1) 5

end

end A261872.P7669291974807657080

namespace A261872

/-- `(A109606(n+1)+1)%5` -/
def P7669291974807657080.Spec : Prop :=
  ∀ n, P7669291974807657080.a n = A261872 (n + 1)

theorem P7669291974807657080.correct : P7669291974807657080.Spec := by
  intro n
  simp only [A261872, Nat.add_sub_cancel, A261872.P7669291974807657080.a, A261872.P7054032506093188784.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261872

/-! ## A261872.P11872588162335951979

`(A039649(n+1)-1)%5`
-/

namespace A261872.P11872588162335951979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039649 (n + 1) - 1) 5

end

end A261872.P11872588162335951979

namespace A261872

/-- `(A039649(n+1)-1)%5` -/
def P11872588162335951979.Spec : Prop :=
  ∀ n, P11872588162335951979.a n = A261872 (n + 1)

theorem P11872588162335951979.correct : P11872588162335951979.Spec := by
  intro n
  simp only [A261872, Nat.add_sub_cancel, A261872.P11872588162335951979.a, A261872.P7054032506093188784.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261872

/-! ## A261872.P16889001140896784997

`A349137(2*n+1)%5`
-/

namespace A261872.P16889001140896784997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349137 (2 * n + 1)) 5

end

end A261872.P16889001140896784997

namespace A261872

/-- `A349137(2*n+1)%5` -/
def P16889001140896784997.Spec : Prop :=
  ∀ n, P16889001140896784997.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P13039166940889800490

`∑{d}[n+1, #*A008683((n+1)/#)]%5`
-/

namespace A261872.P13039166940889800490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) 5

end

end A261872.P13039166940889800490

namespace A261872

/-- `∑{d}[n+1, #*A008683((n+1)/#)]%5` -/
def P13039166940889800490.Spec : Prop :=
  ∀ n, P13039166940889800490.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P16308909704479981446

`A010874(Δ[A002088(n)])`
-/

namespace A261872.P16308909704479981446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (f1 (n + 1) - f1 n).toNat

end

end A261872.P16308909704479981446

namespace A261872

/-- `A010874(Δ[A002088(n)])` -/
def P16308909704479981446.Spec : Prop :=
  ∀ n, P16308909704479981446.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P8180524495394086079

`A029578(A039649(n+1))%5`
-/

namespace A261872.P8180524495394086079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029578 (A039649 (n + 1)).toNat) 5

end

end A261872.P8180524495394086079

namespace A261872

/-- `A029578(A039649(n+1))%5` -/
def P8180524495394086079.Spec : Prop :=
  ∀ n, P8180524495394086079.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P9160951126094497331

`(A002322(n+1)*A034380(n+1))%5`
-/

namespace A261872.P9160951126094497331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002322 (n + 1) * A034380 (n + 1)) 5

end

end A261872.P9160951126094497331

namespace A261872

/-- `(A002322(n+1)*A034380(n+1))%5` -/
def P9160951126094497331.Spec : Prop :=
  ∀ n, P9160951126094497331.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P12433056142450473706

`(A046073(n+1)*A060594(n+1))%5`
-/

namespace A261872.P12433056142450473706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046073 (n + 1) * A060594 (n + 1)) 5

end

end A261872.P12433056142450473706

namespace A261872

/-- `(A046073(n+1)*A060594(n+1))%5` -/
def P12433056142450473706.Spec : Prop :=
  ∀ n, P12433056142450473706.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P16835823183297917001

`A010879(2*A000010(n+1))/2`
-/

namespace A261872.P16835823183297917001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010879 (2 * A000010 (n + 1)).toNat : ℚ) / 2

end

end A261872.P16835823183297917001

namespace A261872

/-- `A010879(2*A000010(n+1))/2` -/
def P16835823183297917001.Spec : Prop :=
  ∀ n, P16835823183297917001.a n = (A261872 (n + 1) : ℚ)

end A261872

/-! ## A261872.P10161344568735529486

`A067541(2*n+1)%5`
-/

namespace A261872.P10161344568735529486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067541 (2 * n + 1)) 5

end

end A261872.P10161344568735529486

namespace A261872

/-- `A067541(2*n+1)%5` -/
def P10161344568735529486.Spec : Prop :=
  ∀ n, P10161344568735529486.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P7201318166125712644

`A309563(2*n+1)%5`
-/

namespace A261872.P7201318166125712644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309563 (2 * n + 1)) 5

end

end A261872.P7201318166125712644

namespace A261872

/-- `A309563(2*n+1)%5` -/
def P7201318166125712644.Spec : Prop :=
  ∀ n, P7201318166125712644.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P8619874791822740179

`A257164(A200905(n+1))`
-/

namespace A261872.P8619874791822740179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257164 (A200905 (n + 1)).toNat

end

end A261872.P8619874791822740179

namespace A261872

/-- `A257164(A200905(n+1))` -/
def P8619874791822740179.Spec : Prop :=
  ∀ n, P8619874791822740179.a n = A261872 (n + 1)

end A261872

/-! ## A261872.P14441814044615209673

`A343492(n+1)%5`
-/

namespace A261872.P14441814044615209673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343492 (n + 1)) 5

end

end A261872.P14441814044615209673

namespace A261872

/-- `A343492(n+1)%5` -/
def P14441814044615209673.Spec : Prop :=
  ∀ n, P14441814044615209673.a n = A261872 (n + 1)

end A261872

/-!
# A261874: Numbers n such that the sum of digits of n is divisible by at least one prime divisor of n.

The programs for A261874, the canonical program `A261874.P15074968218185570690` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261874 has offset 1).

The definition of A261874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5425 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261874.P15074968218185570690

`lt[1, gcd(n, ∑{digits}[n, #])]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A261874

/-- `lt[1, gcd(n, ∑{digits}[n, #])]` -/
def P15074968218185570690.Spec : Prop :=
  ∀ n, (P15074968218185570690.a n : ℤ) = A261874 (n + 1)

theorem P15074968218185570690.correct : P15074968218185570690.Spec := by
  intro n
  simp only [A261874, Nat.add_sub_cancel]

end A261874

/-! ## A261874.P1881075748604336629

`lt[1, gcd(n, A007953(n))]`
-/

namespace A261874.P1881075748604336629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261874.P1881075748604336629

namespace A261874

/-- `lt[1, gcd(n, A007953(n))]` -/
def P1881075748604336629.Spec : Prop :=
  ∀ n, (P1881075748604336629.a n : ℤ) = A261874 (n + 1)

end A261874

/-! ## A261874.P7450739969660472064

`lt[2, gcd(n², A169805(n))]`
-/

namespace A261874.P7450739969660472064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A169805 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261874.P7450739969660472064

namespace A261874

/-- `lt[2, gcd(n², A169805(n))]` -/
def P7450739969660472064.Spec : Prop :=
  ∀ n, (P7450739969660472064.a n : ℤ) = A261874 (n + 1)

end A261874

/-! ## A261874.P6755907464443011317

`lt[1, A066750(n+1)]+1`
-/

namespace A261874.P6755907464443011317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A261874.P6755907464443011317

namespace A261874

/-- `lt[1, A066750(n+1)]+1` -/
def P6755907464443011317.Spec : Prop :=
  ∀ n, (P6755907464443011317.a n : ℤ) = A261874 (n + 1)

end A261874

/-! ## A261874.P2472466714296520857

`lt[A065517(n+1), n+1]+1`
-/

namespace A261874.P2472466714296520857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A261874.P2472466714296520857

namespace A261874

/-- `lt[A065517(n+1), n+1]+1` -/
def P2472466714296520857.Spec : Prop :=
  ∀ n, (P2472466714296520857.a n : ℤ) = A261874 (n + 1)

end A261874

/-! ## A261874.P1189702233183097651

`lt[A065517(A028310(n)), n]`
-/

namespace A261874.P1189702233183097651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A261874.P1189702233183097651

namespace A261874

/-- `lt[A065517(A028310(n)), n]` -/
def P1189702233183097651.Spec : Prop :=
  ∀ n, (P1189702233183097651.a n : ℤ) = A261874 (n + 1)

end A261874

/-! ## A261874.P12173237896360099235

`eq[char[A339076(n+1)], A000007(n)]`
-/

namespace A261874.P12173237896360099235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339076 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A261874.P12173237896360099235

namespace A261874

/-- `eq[char[A339076(n+1)], A000007(n)]` -/
def P12173237896360099235.Spec : Prop :=
  ∀ n, (P12173237896360099235.a n : ℤ) = A261874 (n + 1)

end A261874

/-! ## A261874.P15190179833564822311

`eq[char[A339076(n+1)], A000038(n)]`
-/

namespace A261874.P15190179833564822311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339076 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A261874.P15190179833564822311

namespace A261874

/-- `eq[char[A339076(n+1)], A000038(n)]` -/
def P15190179833564822311.Spec : Prop :=
  ∀ n, (P15190179833564822311.a n : ℤ) = A261874 (n + 1)

end A261874

/-! ## A261874.P6406386050772463609

`lt[A065518(A028310(n)), A007953(n)]`
-/

namespace A261874.P6406386050772463609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261874.P6406386050772463609

namespace A261874

/-- `lt[A065518(A028310(n)), A007953(n)]` -/
def P6406386050772463609.Spec : Prop :=
  ∀ n, (P6406386050772463609.a n : ℤ) = A261874 (n + 1)

end A261874

/-! ## A261874.P12759290527821258783

`lt[2*A065518(A028310(n)), A169805(n)]`
-/

namespace A261874.P12759290527821258783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065518 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261874.P12759290527821258783

namespace A261874

/-- `lt[2*A065518(A028310(n)), A169805(n)]` -/
def P12759290527821258783.Spec : Prop :=
  ∀ n, (P12759290527821258783.a n : ℤ) = A261874 (n + 1)

end A261874

/-! ## A261874.P18418368911380946061

`lt[A065518(A028310(n))+n, A062028(n)]`
-/

namespace A261874.P18418368911380946061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (A028310 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261874.P18418368911380946061

namespace A261874

/-- `lt[A065518(A028310(n))+n, A062028(n)]` -/
def P18418368911380946061.Spec : Prop :=
  ∀ n, (P18418368911380946061.a n : ℤ) = A261874 (n + 1)

end A261874

/-! ## A261874.P10870837665520584329

`lt[A065518(A060000(n+1)), A007953(n)]`
-/

namespace A261874.P10870837665520584329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (A060000 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261874.P10870837665520584329

namespace A261874

/-- `lt[A065518(A060000(n+1)), A007953(n)]` -/
def P10870837665520584329.Spec : Prop :=
  ∀ n, (P10870837665520584329.a n : ℤ) = A261874 (n + 1)

end A261874

/-! ## A261874.P16702315333962782695

`comp[C(A065517(n+1), n)]`
-/

namespace A261874.P16702315333962782695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065517 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A261874.P16702315333962782695

namespace A261874

/-- `comp[C(A065517(n+1), n)]` -/
def P16702315333962782695.Spec : Prop :=
  ∀ n, (P16702315333962782695.a n : ℤ) = A261874 (n + 1)

end A261874

/-! ## A261874.P6575493838239157965

`lt[A065517(A233583(n+1)), n]`
-/

namespace A261874.P6575493838239157965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A261874.P6575493838239157965

namespace A261874

/-- `lt[A065517(A233583(n+1)), n]` -/
def P6575493838239157965.Spec : Prop :=
  ∀ n, (P6575493838239157965.a n : ℤ) = A261874 (n + 1)

end A261874

/-! ## A261874.P12741574414667506590

`lt[A065518(A233583(n+1)), A007953(n)]`
-/

namespace A261874.P12741574414667506590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261874.P12741574414667506590

namespace A261874

/-- `lt[A065518(A233583(n+1)), A007953(n)]` -/
def P12741574414667506590.Spec : Prop :=
  ∀ n, (P12741574414667506590.a n : ℤ) = A261874 (n + 1)

end A261874

/-!
# A261876: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with (5*x^2+7*y^2+9*z^2)*y*z a square, where x,y,z,w are nonnegative integers with z > 0.

The programs for A261876, there is no canonical definition to state claims against.
-/

/-! ## A261876.P340466087925625983

`A272336(n+1)-A212619(A196646(2*(n+2)))`
-/

namespace A261876.P340466087925625983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272336 (n + 1) - A212619 (A196646 (2 * (n + 2))).toNat

end

end A261876.P340466087925625983

/-! ## A261876.P3495574840285707783

`A106486(A267121(n+1)²)`
-/

namespace A261876.P3495574840285707783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (A267121 (n + 1) ^ 2).toNat

end

end A261876.P3495574840285707783

/-! ## A261876.P17786485195240541659

`A212625(A267121(n+1)²)`
-/

namespace A261876.P17786485195240541659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (A267121 (n + 1) ^ 2).toNat

end

end A261876.P17786485195240541659

/-! ## A261876.P17171843864436908719

`A307467(A267121(n+1)+6)`
-/

namespace A261876.P17171843864436908719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307467 (A267121 (n + 1) + 6).toNat

end

end A261876.P17171843864436908719

/-!
# A261877: Expansion of psi(x^4) / phi(-x^3) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A261877, there is no canonical definition to state claims against.
-/

/-! ## A261877.P16112519796459892203

`A143068(Δ[n²])/2`
-/

namespace A261877.P16112519796459892203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A261877.P16112519796459892203

/-! ## A261877.P12014532998842172155

`gcd(A262938(Δ[n²])/2, A000038(n))`
-/

namespace A261877.P12014532998842172155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A262938 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)) (A000038 n)

end

end A261877.P12014532998842172155

/-! ## A261877.P10477142703292080660

`A307757(2*n+1)/(A131713(n+1)+1)`
-/

namespace A261877.P10477142703292080660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307757 (2 * n + 1) : ℚ) / (A131713 (n + 1) + 1 : ℚ)

end

end A261877.P10477142703292080660

/-! ## A261877.P13855330768510020445

`A307757(2*n+1)/(A132954(2*n)-2)`
-/

namespace A261877.P13855330768510020445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307757 (2 * n + 1) : ℚ) / (A132954 (2 * n) - 2 : ℚ)

end

end A261877.P13855330768510020445

/-! ## A261877.P14847338225654951038

`A307757(2*n+1)/(1-A057079(2*n+1))`
-/

namespace A261877.P14847338225654951038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307757 (2 * n + 1) : ℚ) / (1 - A057079 (2 * n + 1) : ℚ)

end

end A261877.P14847338225654951038

/-!
# A261878: Number of distinct fractional parts of the sums 1/j+...+1/k with 1 <= j <= k <= n, where the fractional part of x is given by x - floor(x).

The programs for A261878, there is no canonical definition to state claims against.
-/

/-! ## A261878.P6803073378227088711

`∑[n]+1-∑[A321722(n)%A321744(n+1)]`
-/

namespace A261878.P6803073378227088711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321722 n) (A321744 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A261878.P6803073378227088711

/-! ## A261878.P7892349765772003988

`∑[A028310(n)-A321722(n)%A321744(n+1)]`
-/

namespace A261878.P7892349765772003988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - Int.tmod (A321722 n) (A321744 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261878.P7892349765772003988

/-! ## A261878.P10148410307155202548

`∑[A033273(A000079(n))-A065205(n+1)]`
-/

namespace A261878.P10148410307155202548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A000079 n).toNat - A065205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261878.P10148410307155202548

/-! ## A261878.P17259434139023767809

`abs(∑[A365562(n+1)%A135010(n+1)-n])+1`
-/

namespace A261878.P17259434139023767809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365562 (n + 1)) (A135010 (n + 1)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j| + 1

end

end A261878.P17259434139023767809

/-! ## A261878.P1434181137576658409

`record[A083742(A348433(n+1))]`
-/

namespace A261878.P1434181137576658409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083742 (A348433 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261878.P1434181137576658409

/-!
# A261882: Decimal expansion of 32/27.

The programs for A261882, the canonical program `A261882.P15485000611920570270` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261882 has offset 1).

The definition of A261882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261882.P15485000611920570270

`ogf((1+x+8x^2+4x^3)/(1-x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A261882

/-- `ogf((1+x+8x^2+4x^3)/(1-x^3))` -/
def P15485000611920570270.Spec : Prop :=
  ∀ n, P15485000611920570270.a n = A261882 (n + 1)

theorem P15485000611920570270.correct : P15485000611920570270.Spec := by
  intro n
  simp only [A261882, Nat.add_sub_cancel]

end A261882

/-!
# A261883: Decimal expansion of 1 - 2^(-1/3).

The programs for A261883, there is no canonical definition to state claims against.
-/

/-! ## A261883.P10208912674068276164

`9-A270714(n)`
-/

namespace A261883.P10208912674068276164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A270714 n

end

end A261883.P10208912674068276164

/-!
# A261884: Expansion of (a(q) - a(q^2) - 2*a(q^3) + 2*a(q^6)) / 6 in powers of q where a() is a cubic AGM function.

The programs for A261884, the canonical program `A261884.P17761053337338084082` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261884 has offset 1).

The definition of A261884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261884.P1024507353910676760

`A093829(n+1-∑[∑[n+1]]%(n+1))`
-/

namespace A261884.P1024507353910676760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1 - (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A261884.P1024507353910676760

namespace A261884

/-- `A093829(n+1-∑[∑[n+1]]%(n+1))` -/
def P1024507353910676760.Spec : Prop :=
  ∀ n, P1024507353910676760.a n = A261884 (n + 1)

end A261884

/-! ## A261884.P17402471831993689113

`A093829(n+1)*A131561(n)`
-/

namespace A261884.P17402471831993689113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1) * A131561 n

end

end A261884.P17402471831993689113

namespace A261884

/-- `A093829(n+1)*A131561(n)` -/
def P17402471831993689113.Spec : Prop :=
  ∀ n, P17402471831993689113.a n = A261884 (n + 1)

end A261884

/-! ## A261884.P17761053337338084082

`A112848(n+1)/A177702(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A261884

/-- `A112848(n+1)/A177702(n)` -/
def P17761053337338084082.Spec : Prop :=
  ∀ n, P17761053337338084082.a n = (A261884 (n + 1) : ℚ)

end A261884

/-! ## A261884.P12012829475732401295

`A112848(n+1)/(2-A010892(n)²)`
-/

namespace A261884.P12012829475732401295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (n + 1) : ℚ) / (2 - A010892 n ^ 2 : ℚ)

end

end A261884.P12012829475732401295

namespace A261884

/-- `A112848(n+1)/(2-A010892(n)²)` -/
def P12012829475732401295.Spec : Prop :=
  ∀ n, P12012829475732401295.a n = (A261884 (n + 1) : ℚ)

end A261884

/-! ## A261884.P14830341289862929833

`A112848(n+1)/(2-A049347(n)²)`
-/

namespace A261884.P14830341289862929833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (n + 1) : ℚ) / (2 - A049347 n ^ 2 : ℚ)

end

end A261884.P14830341289862929833

namespace A261884

/-- `A112848(n+1)/(2-A049347(n)²)` -/
def P14830341289862929833.Spec : Prop :=
  ∀ n, P14830341289862929833.a n = (A261884 (n + 1) : ℚ)

end A261884

/-! ## A261884.P1807541270787778203

`A112848(n+1)/(Δ[A008620(n)]+1)`
-/

namespace A261884.P1807541270787778203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (n + 1) : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A261884.P1807541270787778203

namespace A261884

/-- `A112848(n+1)/(Δ[A008620(n)]+1)` -/
def P1807541270787778203.Spec : Prop :=
  ∀ n, P1807541270787778203.a n = (A261884 (n + 1) : ℚ)

end A261884

/-! ## A261884.P3918262485847709819

`A112848(n+1)/(2-A099544(n+1)²)`
-/

namespace A261884.P3918262485847709819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (n + 1) : ℚ) / (2 - A099544 (n + 1) ^ 2 : ℚ)

end

end A261884.P3918262485847709819

namespace A261884

/-- `A112848(n+1)/(2-A099544(n+1)²)` -/
def P3918262485847709819.Spec : Prop :=
  ∀ n, P3918262485847709819.a n = (A261884 (n + 1) : ℚ)

end A261884

/-! ## A261884.P11997095317956745620

`∑{d}[n+1, A112300(#)*A131561((n+1)/#-1)]`
-/

namespace A261884.P11997095317956745620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112300 d * A131561 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A261884.P11997095317956745620

namespace A261884

/-- `∑{d}[n+1, A112300(#)*A131561((n+1)/#-1)]` -/
def P11997095317956745620.Spec : Prop :=
  ∀ n, P11997095317956745620.a n = A261884 (n + 1)

end A261884

/-! ## A261884.P7952361387453008983

`A112848(n+1)/A000097(Δ[A008620(n)])`
-/

namespace A261884.P7952361387453008983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (n + 1) : ℚ) / (A000097 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A261884.P7952361387453008983

namespace A261884

/-- `A112848(n+1)/A000097(Δ[A008620(n)])` -/
def P7952361387453008983.Spec : Prop :=
  ∀ n, P7952361387453008983.a n = (A261884 (n + 1) : ℚ)

end A261884

/-! ## A261884.P308497100176671028

`A193426(A080031(n+1))-A193426(n+1)`
-/

namespace A261884.P308497100176671028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193426 (A080031 (n + 1)).toNat - A193426 (n + 1)

end

end A261884.P308497100176671028

namespace A261884

/-- `A193426(A080031(n+1))-A193426(n+1)` -/
def P308497100176671028.Spec : Prop :=
  ∀ n, P308497100176671028.a n = A261884 (n + 1)

end A261884

/-! ## A261884.P737369141186130516

`A113447((n+1)*gcd(3, n+1)+n+1)`
-/

namespace A261884.P737369141186130516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 ((n + 1) * Nat.gcd 3 (n + 1) + n + 1)

end

end A261884.P737369141186130516

namespace A261884

/-- `A113447((n+1)*gcd(3, n+1)+n+1)` -/
def P737369141186130516.Spec : Prop :=
  ∀ n, P737369141186130516.a n = A261884 (n + 1)

end A261884

/-! ## A261884.P9773131199044126072

`A093829(lcm(3, n+1)+n+1)`
-/

namespace A261884.P9773131199044126072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (Nat.lcm 3 (n + 1) + n + 1)

end

end A261884.P9773131199044126072

namespace A261884

/-- `A093829(lcm(3, n+1)+n+1)` -/
def P9773131199044126072.Spec : Prop :=
  ∀ n, P9773131199044126072.a n = A261884 (n + 1)

end A261884

/-!
# A261885: E.g.f. satisfies: A(x) = A( x/(1-x)^3 ) * (1-x)/(1+2*x) with A(0)=0.

The programs for A261885, there is no canonical definition to state claims against.
-/

/-! ## A261885.P12114490488971430207

`3*A261886(n)`
-/

namespace A261885.P12114490488971430207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A261886 n

end

end A261885.P12114490488971430207

/-!
# A261886: E.g.f. satisfies: A(x) = A( x/(1-x)^3 ) * (1-x)/(1+2*x) with A(0)=0.

The programs for A261886, there is no canonical definition to state claims against.
-/

/-! ## A261886.P16995155474449737106

`A261885(n)/3`
-/

namespace A261886.P16995155474449737106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261885 n : ℚ) / 3

end

end A261886.P16995155474449737106

/-!
# A261887: Number of triples of primes (p,q,r) that satisfy p+q^2+r^3=n.

The programs for A261887, there is no canonical definition to state claims against.
-/

/-! ## A261887.P12836309759004111833

`∑{e}[∑{e}[A210229(∑[n-n%13]+1)-1, #], #]`
-/

namespace A261887.P12836309759004111833
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 13 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210229 (∑ j ∈ Finset.range (n + 1), f3 j + 1).toNat - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A261887.P12836309759004111833

/-! ## A261887.P9983275258110820195

`A285726(∏{p}[A143591(n+1), #])`
-/

namespace A261887.P9983275258110820195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A261887.P9983275258110820195

/-! ## A261887.P13569889576124255835

`A337695(2*n+3)%A048793(A007306(n))`
-/

namespace A261887.P13569889576124255835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337695 (2 * n + 3)) (A048793 (A007306 n).toNat)

end

end A261887.P13569889576124255835

/-!
# A261888: Positive integers n such that there is no triple of primes (p, q, r) satisfying p+q^2+r^3=n.

The programs for A261888, there is no canonical definition to state claims against.
-/

/-! ## A261888.P18395748059209393881

`eq[4, a(A261887(n))²]` with `a(0)=2`
-/

namespace A261888.P18395748059209393881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A261887 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261888.P18395748059209393881

/-! ## A261888.P15769456032066012845

`eq[0, A261887(n+1)]+1`
-/

namespace A261888.P15769456032066012845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261887 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A261888.P15769456032066012845

/-! ## A261888.P15398026566802241559

`eq[2, A000032(a(A261887(n)))]` with `a(0)=0`
-/

namespace A261888.P15398026566802241559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A261887 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261888.P15398026566802241559

/-! ## A261888.P1929212912938650139

`eq[2, A000010(a(A261887(n)))]` with `a(0)=3`
-/

namespace A261888.P1929212912938650139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A261887 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261888.P1929212912938650139

/-! ## A261888.P7839208194996576171

`eq[2, A000045(a(A261887(n)))]` with `a(0)=3`
-/

namespace A261888.P7839208194996576171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A261887 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261888.P7839208194996576171

/-!
# A261889: Primes that are the square of the sum of a twin prime pair plus 1.

The programs for A261889, there is no canonical definition to state claims against.
-/

/-! ## A261889.P262364307344832171

`A053755(∩[A001912(n+1), A014574(n+1)])`
-/

namespace A261889.P262364307344832171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A261889.P262364307344832171

/-! ## A261889.P1651734962848678799

`∩[A002496(n+1), A053755(A014574(n+1))]`
-/

namespace A261889.P1651734962848678799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (A014574 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261889.P1651734962848678799

/-! ## A261889.P4289969848327191743

`∩[A053755(A014574(n+1)), A054755(n+1)]`
-/

namespace A261889.P4289969848327191743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (A014574 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261889.P4289969848327191743

/-! ## A261889.P17862577608457968513

`∩[A053755(A014574(n+1)), A168024(n)]`
-/

namespace A261889.P17862577608457968513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (A014574 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168024 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261889.P17862577608457968513

/-! ## A261889.P4957478646793928565

`record[A089120(A054735(n+3))]`
-/

namespace A261889.P4957478646793928565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A054735 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261889.P4957478646793928565

/-!
# A261890: Second differences of A055615, first differences of A261869.

The programs for A261890, the canonical program `A261890.P4080102561957379191` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261890 has offset 1).

The definition of A261890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261890.P4080102561957379191

`A055615(n+3)-2*A055615(n+2)+A055615(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A261890

/-- `A055615(n+3)-2*A055615(n+2)+A055615(n+1)` -/
def P4080102561957379191.Spec : Prop :=
  ∀ n, P4080102561957379191.a n = A261890 (n + 1)

theorem P4080102561957379191.correct : P4080102561957379191.Spec := by
  intro n
  simp only [A261890, Nat.add_sub_cancel]

end A261890

/-! ## A261890.P1322271082121406528

`Δ[Δ[(1+n)*∏{e}[1+n, -floor(1/#)]]]`
-/

namespace A261890.P1322271082121406528
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), (-⌊1 / (Nat.factorization (f3 n) p : ℚ)⌋))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261890.P1322271082121406528

namespace A261890

/-- `Δ[Δ[(1+n)*∏{e}[1+n, -floor(1/#)]]]` -/
def P1322271082121406528.Spec : Prop :=
  ∀ n, P1322271082121406528.a n = A261890 (n + 1)

theorem P1322271082121406528.correct : P1322271082121406528.Spec := by
  intro n
  simp only [A261890, Nat.add_sub_cancel, A261890.P1322271082121406528.f3, A261890.P1322271082121406528.f2, A261890.P1322271082121406528.f1, A261890.P1322271082121406528.a, A261890.P4080102561957379191.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261890

/-! ## A261890.P15910072995350455524

`Δ[Δ[(n+1)*round(∏{p}[n+1, -#]/(n+2))]]`
-/

namespace A261890.P15910072995350455524
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 2 : ℚ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261890.P15910072995350455524

namespace A261890

/-- `Δ[Δ[(n+1)*round(∏{p}[n+1, -#]/(n+2))]]` -/
def P15910072995350455524.Spec : Prop :=
  ∀ n, P15910072995350455524.a n = A261890 (n + 1)

end A261890

/-! ## A261890.P16628969477391682838

`Δ[Δ[A055615(1+n)]]`
-/

namespace A261890.P16628969477391682838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261890.P16628969477391682838

namespace A261890

/-- `Δ[Δ[A055615(1+n)]]` -/
def P16628969477391682838.Spec : Prop :=
  ∀ n, P16628969477391682838.a n = A261890 (n + 1)

theorem P16628969477391682838.correct : P16628969477391682838.Spec := by
  intro n
  simp only [A261890, Nat.add_sub_cancel, A261890.P16628969477391682838.f2, A261890.P16628969477391682838.f1, A261890.P16628969477391682838.a, A261890.P4080102561957379191.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A261890

/-! ## A261890.P637220036830223779

`Δ[Δ[A061669(n+1)]]`
-/

namespace A261890.P637220036830223779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261890.P637220036830223779

namespace A261890

/-- `Δ[Δ[A061669(n+1)]]` -/
def P637220036830223779.Spec : Prop :=
  ∀ n, P637220036830223779.a n = A261890 (n + 1)

theorem P637220036830223779.correct : P637220036830223779.Spec := by
  intro n
  simp only [A261890, Nat.add_sub_cancel, A261890.P637220036830223779.f2, A261890.P637220036830223779.f1, A261890.P637220036830223779.a, A261890.P4080102561957379191.a, A055615, A055615.P8993130195977213181.a, A061669, A061669.P9904449998917605232.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261890

/-! ## A261890.P3908862239131713390

`Δ[Δ[(n+1)*A008683(n+1)]]`
-/

namespace A261890.P3908862239131713390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261890.P3908862239131713390

namespace A261890

/-- `Δ[Δ[(n+1)*A008683(n+1)]]` -/
def P3908862239131713390.Spec : Prop :=
  ∀ n, P3908862239131713390.a n = A261890 (n + 1)

theorem P3908862239131713390.correct : P3908862239131713390.Spec := by
  intro n
  simp only [A261890, Nat.add_sub_cancel, A261890.P3908862239131713390.f2, A261890.P3908862239131713390.f1, A261890.P3908862239131713390.a, A261890.P4080102561957379191.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A055615, A055615.P8993130195977213181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261890

/-! ## A261890.P8138596833390216183

`Δ[A261869(n+1)]`
-/

namespace A261890.P8138596833390216183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261890.P8138596833390216183

namespace A261890

/-- `Δ[A261869(n+1)]` -/
def P8138596833390216183.Spec : Prop :=
  ∀ n, P8138596833390216183.a n = A261890 (n + 1)

theorem P8138596833390216183.correct : P8138596833390216183.Spec := by
  intro n
  simp only [A261890, Nat.add_sub_cancel, A261890.P8138596833390216183.f1, A261890.P8138596833390216183.a, A261890.P4080102561957379191.a, A055615, A055615.P8993130195977213181.a, A261869, A261869.P9442405635502317177.f2, A261869.P9442405635502317177.f1, A261869.P9442405635502317177.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261890

/-! ## A261890.P1648416681721152298

`A261869(n+2)-A261869(n+1)`
-/

namespace A261890.P1648416681721152298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261869 (n + 2) - A261869 (n + 1)

end

end A261890.P1648416681721152298

namespace A261890

/-- `A261869(n+2)-A261869(n+1)` -/
def P1648416681721152298.Spec : Prop :=
  ∀ n, P1648416681721152298.a n = A261890 (n + 1)

theorem P1648416681721152298.correct : P1648416681721152298.Spec := by
  intro n
  simp only [A261890, Nat.add_sub_cancel, A261890.P1648416681721152298.a, A261890.P4080102561957379191.a, A055615, A055615.P8993130195977213181.a, A261869, A261869.P9442405635502317177.f2, A261869.P9442405635502317177.f1, A261869.P9442405635502317177.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261890

/-! ## A261890.P6482293872843605660

`Δ[Δ[A080848(n+1)]]`
-/

namespace A261890.P6482293872843605660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080848 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261890.P6482293872843605660

namespace A261890

/-- `Δ[Δ[A080848(n+1)]]` -/
def P6482293872843605660.Spec : Prop :=
  ∀ n, P6482293872843605660.a n = A261890 (n + 1)

theorem P6482293872843605660.correct : P6482293872843605660.Spec := by
  intro n
  simp only [A261890, Nat.add_sub_cancel, A261890.P6482293872843605660.f2, A261890.P6482293872843605660.f1, A261890.P6482293872843605660.a, A261890.P4080102561957379191.a, A055615, A055615.P8993130195977213181.a, A080848, A080848.P7283304606114589538.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261890

/-! ## A261890.P11491092023256969242

`Δ[Δ[A062004(n+1)/2]]`
-/

namespace A261890.P11491092023256969242
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062004 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261890.P11491092023256969242

namespace A261890

/-- `Δ[Δ[A062004(n+1)/2]]` -/
def P11491092023256969242.Spec : Prop :=
  ∀ n, P11491092023256969242.a n = (A261890 (n + 1) : ℚ)

theorem P11491092023256969242.correct : P11491092023256969242.Spec := by
  intro n
  simp only [A261890, Nat.add_sub_cancel, A261890.P11491092023256969242.f2, A261890.P11491092023256969242.f1, A261890.P11491092023256969242.a, A261890.P4080102561957379191.a, A055615, A055615.P8993130195977213181.a, A062004, A062004.P15381032056684289952.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261890

/-! ## A261890.P9075313444254623638

`Δ[Δ[A349126(A003961(n+1))]]`
-/

namespace A261890.P9075313444254623638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349126 (A003961 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261890.P9075313444254623638

namespace A261890

/-- `Δ[Δ[A349126(A003961(n+1))]]` -/
def P9075313444254623638.Spec : Prop :=
  ∀ n, P9075313444254623638.a n = A261890 (n + 1)

end A261890

/-!
# A261891: Least k>0 such that n AND (k*n) = 0, where AND stands for the binary AND operator.

The programs for A261891, there is no canonical definition to state claims against.
-/

/-! ## A261891.P10090985352809279011

`A261892(1+n)/(n+1)`
-/

namespace A261891.P10090985352809279011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261892 (1 + n) : ℚ) / (n + 1 : ℚ)

end

end A261891.P10090985352809279011

/-! ## A261891.P7021064715158836896

`A253719(A158231((char[∑[n]]+1)*(n+1)))`
-/

namespace A261891.P7021064715158836896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253719 (A158231 (((if ∃ j, f1 j = n then 1 else 0) + 1) * (n + 1))).toNat

end

end A261891.P7021064715158836896

/-! ## A261891.P16714921633243110316

`A253719(A076338(lcm(2, 1+n)/2))`
-/

namespace A261891.P16714921633243110316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253719 (A076338 (SequenceMachineLib.roundAway ((Nat.lcm 2 (1 + n) : ℚ) / 2)).toNat).toNat

end

end A261891.P16714921633243110316

/-! ## A261891.P6990627753972659744

`A253719(A076338(n+1))`
-/

namespace A261891.P6990627753972659744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253719 (A076338 (n + 1)).toNat

end

end A261891.P6990627753972659744

/-!
# A261892: Least multiple m of n such that n and m have no common one bit in their binary representations.

The programs for A261892, there is no canonical definition to state claims against.
-/

/-! ## A261892.P1067648115147797456

`(n+1)*A261891(n+1)`
-/

namespace A261892.P1067648115147797456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A261891 (n + 1)

end

end A261892.P1067648115147797456

/-! ## A261892.P8687977215517333303

`(n+1)*A253719(A158231((char[∑[n]]+1)*(n+1)))`
-/

namespace A261892.P8687977215517333303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A253719 (A158231 (((if ∃ j, f1 j = n then 1 else 0) + 1) * (n + 1))).toNat

end

end A261892.P8687977215517333303

/-! ## A261892.P6295513822710564779

`(n+1)*A253719(A076338(lcm(2, n+1)/2))`
-/

namespace A261892.P6295513822710564779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A253719 (A076338 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat).toNat

end

end A261892.P6295513822710564779

/-! ## A261892.P12360807564022503431

`(n+1)*A253719(A076338(n+1))`
-/

namespace A261892.P12360807564022503431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A253719 (A076338 (n + 1)).toNat

end

end A261892.P12360807564022503431

/-! ## A261892.P8834322761165951345

`(n+1)*A253719(A158231(n+1)+A158231(n+1)-1)`
-/

namespace A261892.P8834322761165951345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A253719 (A158231 (n + 1) + (A158231 (n + 1) - 1)).toNat

end

end A261892.P8834322761165951345

/-! ## A261892.P8472730983379880212

`(n+1)*A253719(A157951(n+1))%A264618(A045849(n))`
-/

namespace A261892.P8472730983379880212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A253719 (A157951 (n + 1)).toNat) (A264618 (A045849 n).toNat)

end

end A261892.P8472730983379880212

/-!
# A261893: a(n) = (n+1)^3 - n^2.

The programs for A261893, the canonical program `A261893.P3894214550865537964` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261893 has offset 0).

The definition of A261893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3-n²` (program `A261893.P3894214550865537964`, by `A261893.P3894214550865537964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261893.P3894214550865537964

`(n+1)^3-n²`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A261893

/-- `(n+1)^3-n²` -/
def P3894214550865537964.Spec : Prop :=
  ∀ n, P3894214550865537964.a n = A261893 n

theorem P3894214550865537964.correct : P3894214550865537964.Spec := by
  intro n
  simp only [A261893]

end A261893

/-! ## A261893.P10766698608132103352

`ogf((1+3x+x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A261893.P10766698608132103352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1, 1] [1, -4, 6, -4, 1] n

end

end A261893.P10766698608132103352

namespace A261893

/-- `ogf((1+3x+x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P10766698608132103352.Spec : Prop :=
  ∀ n, P10766698608132103352.a n = A261893 n

end A261893

/-! ## A261893.P4810736009228179826

`or(1, (2+(n+1)²)*n)`
-/

namespace A261893.P4810736009228179826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((2 + (n + 1) ^ 2) * n)

end

end A261893.P4810736009228179826

namespace A261893

/-- `or(1, (2+(n+1)²)*n)` -/
def P4810736009228179826.Spec : Prop :=
  ∀ n, (P4810736009228179826.a n : ℤ) = A261893 n

end A261893

/-! ## A261893.P3392387182061760399

`xor(1, (2+(n+1)²)*n)`
-/

namespace A261893.P3392387182061760399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((2 + (n + 1) ^ 2) * n)

end

end A261893.P3392387182061760399

namespace A261893

/-- `xor(1, (2+(n+1)²)*n)` -/
def P3392387182061760399.Spec : Prop :=
  ∀ n, (P3392387182061760399.a n : ℤ) = A261893 n

end A261893

/-! ## A261893.P12621493641029377470

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=5, a(2)=10`
-/

namespace A261893.P12621493641029377470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 10] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261893.P12621493641029377470

namespace A261893

/-- `∑[∑[a(n-1)+6]]` -/
def P12621493641029377470.Spec : Prop :=
  ∀ n, (P12621493641029377470.a n : ℤ) = A261893 n

end A261893

/-! ## A261893.P1310916965320698902

`floor(2*n+lcm(n, (n+1)²)+ϕ)`
-/

namespace A261893.P1310916965320698902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) + ((Nat.lcm n ((n + 1) ^ 2) : ℝ) + Real.goldenRatio)⌋

end

end A261893.P1310916965320698902

namespace A261893

/-- `floor(2*n+lcm(n, (n+1)²)+ϕ)` -/
def P1310916965320698902.Spec : Prop :=
  ∀ n, P1310916965320698902.a n = A261893 n

end A261893

/-! ## A261893.P316978768986728116

`a(n-1)+(n-1)²+(n+1)*(2*n+1)` with `a(0)=1`
-/

namespace A261893.P316978768986728116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) ^ 2 + ((n + 1) * (2 * n + 1) : ℤ)

end

end A261893.P316978768986728116

namespace A261893

/-- `a(n-1)+(n-1)²+(n+1)*(2*n+1)` -/
def P316978768986728116.Spec : Prop :=
  ∀ n, P316978768986728116.a n = A261893 n

theorem P316978768986728116.correct : P316978768986728116.Spec := by
  intro n
  induction n with
  | zero => simp [A261893, A261893.P316978768986728116.a, A261893.P3894214550865537964.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A261893, Nat.add_sub_cancel, A261893.P316978768986728116.a, A261893.P3894214550865537964.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A261893

/-! ## A261893.P16810805427657182027

`∑[A005918(n)+n]`
-/

namespace A261893.P16810805427657182027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261893.P16810805427657182027

namespace A261893

/-- `∑[A005918(n)+n]` -/
def P16810805427657182027.Spec : Prop :=
  ∀ n, P16810805427657182027.a n = A261893 n

end A261893

/-! ## A261893.P9122946526844261735

`∑[∑[A270545(n)]+n]`
-/

namespace A261893.P9122946526844261735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261893.P9122946526844261735

namespace A261893

/-- `∑[∑[A270545(n)]+n]` -/
def P9122946526844261735.Spec : Prop :=
  ∀ n, P9122946526844261735.a n = A261893 n

end A261893

/-! ## A261893.P3329726971718193114

`∑[A003215(n)-A004273(n)]`
-/

namespace A261893.P3329726971718193114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261893.P3329726971718193114

namespace A261893

/-- `∑[A003215(n)-A004273(n)]` -/
def P3329726971718193114.Spec : Prop :=
  ∀ n, P3329726971718193114.a n = A261893 n

end A261893

/-! ## A261893.P6676172140841191945

`(A071253(n+1)+n)/(n+2)`
-/

namespace A261893.P6676172140841191945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071253 (n + 1) + (n : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A261893.P6676172140841191945

namespace A261893

/-- `(A071253(n+1)+n)/(n+2)` -/
def P6676172140841191945.Spec : Prop :=
  ∀ n, P6676172140841191945.a n = (A261893 n : ℚ)

theorem P6676172140841191945.correct : P6676172140841191945.Spec := by
  intro n
  simp only [A261893, Nat.add_sub_cancel, A261893.P6676172140841191945.a, A261893.P3894214550865537964.a, A071253, A071253.P8759095852449772691.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261893

/-! ## A261893.P11696773971883248169

`(A059826(n+1)+n-1)/(n+2)`
-/

namespace A261893.P11696773971883248169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059826 (n + 1) + ((n : ℤ) - 1) : ℚ) / (n + 2 : ℚ)

end

end A261893.P11696773971883248169

namespace A261893

/-- `(A059826(n+1)+n-1)/(n+2)` -/
def P11696773971883248169.Spec : Prop :=
  ∀ n, P11696773971883248169.a n = (A261893 n : ℚ)

theorem P11696773971883248169.correct : P11696773971883248169.Spec := by
  intro n
  simp only [A261893, Nat.add_sub_cancel, A261893.P11696773971883248169.a, A261893.P3894214550865537964.a, A059826, A059826.P10107357562865888263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261893

/-! ## A261893.P3574316794296789444

`∑[∑[A005004(2*n+1)]]`
-/

namespace A261893.P3574316794296789444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005004 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261893.P3574316794296789444

namespace A261893

/-- `∑[∑[A005004(2*n+1)]]` -/
def P3574316794296789444.Spec : Prop :=
  ∀ n, P3574316794296789444.a n = A261893 n

end A261893

/-! ## A261893.P6481352604266670275

`∑[A267529(2*n)+2*n]`
-/

namespace A261893.P6481352604266670275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267529 (2 * n) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261893.P6481352604266670275

namespace A261893

/-- `∑[A267529(2*n)+2*n]` -/
def P6481352604266670275.Spec : Prop :=
  ∀ n, P6481352604266670275.a n = A261893 n

end A261893

/-! ## A261893.P9234019070135336524

`record[Δ[A109614(n+2)+A071538(n+2)]]`
-/

namespace A261893.P9234019070135336524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (n + 2) + A071538 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261893.P9234019070135336524

namespace A261893

/-- `record[Δ[A109614(n+2)+A071538(n+2)]]` -/
def P9234019070135336524.Spec : Prop :=
  ∀ n, P9234019070135336524.a n = A261893 n

end A261893

/-! ## A261893.P17514964587485308603

`∑[A097921(2*n+1+n)]`
-/

namespace A261893.P17514964587485308603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097921 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261893.P17514964587485308603

namespace A261893

/-- `∑[A097921(2*n+1+n)]` -/
def P17514964587485308603.Spec : Prop :=
  ∀ n, P17514964587485308603.a n = A261893 n

end A261893

/-! ## A261893.P4630186074450587570

`∑[A097922(2*n+1+n)]`
-/

namespace A261893.P4630186074450587570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097922 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261893.P4630186074450587570

namespace A261893

/-- `∑[A097922(2*n+1+n)]` -/
def P4630186074450587570.Spec : Prop :=
  ∀ n, P4630186074450587570.a n = A261893 n

end A261893

/-! ## A261893.P14883692435670373803

`A257925(n+1)%A066023(n+1)`
-/

namespace A261893.P14883692435670373803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257925 (n + 1)) (A066023 (n + 1))

end

end A261893.P14883692435670373803

namespace A261893

/-- `A257925(n+1)%A066023(n+1)` -/
def P14883692435670373803.Spec : Prop :=
  ∀ n, P14883692435670373803.a n = A261893 n

end A261893

/-! ## A261893.P11823945303497181752

`record[fp[n²]^3-n]`
-/

namespace A261893.P11823945303497181752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => n < f2 j) 0 ^ 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261893.P11823945303497181752

namespace A261893

/-- `record[fp[n²]^3-n]` -/
def P11823945303497181752.Spec : Prop :=
  ∀ n, P11823945303497181752.a n = A261893 n

end A261893

/-!
# A261894: Number of compositions of n where the (possibly scattered) maximal subsequence of part i with multiplicity j is marked with a word of length j over an a(i-1)-ary alphabet whose letters appear in alphabetical order.

The programs for A261894, there is no canonical definition to state claims against.
-/

/-! ## A261894.P1267334872157414633

`A000108(n)-A058348(A190552(n+1))`
-/

namespace A261894.P1267334872157414633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A058348 (A190552 (n + 1)).toNat

end

end A261894.P1267334872157414633

/-! ## A261894.P7588957342668460963

`A000108(n)-A249870(A001419(n+1))`
-/

namespace A261894.P7588957342668460963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A249870 (A001419 (n + 1)).toNat

end

end A261894.P7588957342668460963

/-! ## A261894.P1211622506749805878

`A000108(n)-A058348(A287568(n+1))`
-/

namespace A261894.P1211622506749805878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A058348 (A287568 (n + 1)).toNat

end

end A261894.P1211622506749805878

/-! ## A261894.P14936343054096341483

`A255072(A149339(n))`
-/

namespace A261894.P14936343054096341483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A149339 n).toNat

end

end A261894.P14936343054096341483

/-!
# A261896: Consider the 2^n values of A162795(i)/i^2 for 2^n <= i < 2^(n+1); a(n) = value of i where this quantity is minimized.

The programs for A261896, there is no canonical definition to state claims against.
-/

/-! ## A261896.P14824424171329733482

`A005408(C(A170927(n), A146291(3*n+5)))`
-/

namespace A261896.P14824424171329733482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Nat.choose (A170927 n).toNat (A146291 (3 * n + 5)).toNat)

end

end A261896.P14824424171329733482

/-! ## A261896.P15691299448505530137

`A131925(A150019(n+1))`
-/

namespace A261896.P15691299448505530137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131925 (A150019 (n + 1)).toNat

end

end A261896.P15691299448505530137

/-! ## A261896.P14593333875759351561

`A308168(A261049(n)+2*n)`
-/

namespace A261896.P14593333875759351561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308168 (A261049 n + (2 * n : ℤ)).toNat

end

end A261896.P14593333875759351561

/-!
# A261897: Triangle read by rows: T(n,k) (1 <= k <= n+1) = number of sequences of length n, dominated by the squares, with entries from [0,k] and largest entry k.

The programs for A261897, there is no canonical definition to state claims against.
-/

/-! ## A261897.P12083231486278175571

`A131078(A211357(n)!)*A131084(n+1)`
-/

namespace A261897.P12083231486278175571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131078 (Nat.factorial (A211357 n).toNat) * A131084 (n + 1)

end

end A261897.P12083231486278175571

/-! ## A261897.P17434256495141044941

`A131084(n+1)-A018843(A213275(n))`
-/

namespace A261897.P17434256495141044941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131084 (n + 1) - A018843 (A213275 n).toNat

end

end A261897.P17434256495141044941

/-! ## A261897.P16439326321617540357

`A131084(n+1)%A305296(A126183(n))`
-/

namespace A261897.P16439326321617540357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131084 (n + 1)) (A305296 (A126183 n).toNat)

end

end A261897.P16439326321617540357

/-! ## A261897.P10578284776094131326

`A010815(A010893(2*(n+2)))*A131084(n+1)`
-/

namespace A261897.P10578284776094131326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A010893 (2 * (n + 2) + 13)).toNat * A131084 (n + 1)

end

end A261897.P10578284776094131326

/-! ## A261897.P5620775271869409567

`C(A131084(n+1), A257490(A258709(n)))`
-/

namespace A261897.P5620775271869409567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131084 (n + 1)).toNat (A257490 (A258709 n).toNat).toNat

end

end A261897.P5620775271869409567

/-!
# A261898: Values of |G-hat_1(n)|, a sum involving Stirling numbers of the second kind.

The programs for A261898, there is no canonical definition to state claims against.
-/

/-! ## A261898.P16167839961909833471

`(2*n+1-3/(n+1))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A261898.P16167839961909833471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((2 * n + 1 : ℚ) - 3 / (n + 1 : ℚ)) * a (n - 1)

end

end A261898.P16167839961909833471

/-! ## A261898.P1141607646246799194

`round((n+2)/3*A001147(n))`
-/

namespace A261898.P1141607646246799194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / 3 * (A001147 n : ℚ))

end

end A261898.P1141607646246799194

/-! ## A261898.P10612434094566833467

`A112493(∑[1+a(n-1)])` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A261898.P10612434094566833467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  1 + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112493 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261898.P10612434094566833467

/-! ## A261898.P12927807263481353030

`A054589(A212342(1+n))`
-/

namespace A261898.P12927807263481353030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054589 (A212342 (1 + n)).toNat

end

end A261898.P12927807263481353030

