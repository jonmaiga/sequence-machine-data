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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A261800: Number of 8-compositions of n: matrices with 8 rows of nonnegative integers with positive column sums and total element sum n.

The programs for A261800, there is no canonical definition to state claims against.
-/

/-! ## A261800.P6627716408223241373

`A261780(A027379(n+7)-6)`
-/

namespace A261800.P6627716408223241373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A027379 (n + 7) - 6).toNat

end

end A261800.P6627716408223241373

/-! ## A261800.P14282517144110894308

`A261780(A000217(n+9)-9)`
-/

namespace A261800.P14282517144110894308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000217 (n + 9) - 9).toNat

end

end A261800.P14282517144110894308

/-! ## A261800.P13295483344591220338

`A261780(A000124(n+9)-10)`
-/

namespace A261800.P13295483344591220338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000124 (n + 9) - 10).toNat

end

end A261800.P13295483344591220338

/-! ## A261800.P5512130376952153241

`A261780(A179865(n+10)-9)`
-/

namespace A261800.P5512130376952153241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A179865 (n + 10) - 9).toNat

end

end A261800.P5512130376952153241

/-! ## A261800.P16190550161686603728

`A261780(A000096(n+7)+n+1)`
-/

namespace A261800.P16190550161686603728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A261800.P16190550161686603728

/-!
# A261801: Number of 9-compositions of n: matrices with 9 rows of nonnegative integers with positive column sums and total element sum n.

The programs for A261801, there is no canonical definition to state claims against.
-/

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

/-! ## A261801.P11830429000145340066

`A261780(eq[10, A193739(n)])`
-/

namespace A261801.P11830429000145340066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261801.P11830429000145340066

/-! ## A261801.P788168428233450927

`A261780(A000217(n+10)-10)`
-/

namespace A261801.P788168428233450927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000217 (n + 10) - 10).toNat

end

end A261801.P788168428233450927

/-! ## A261801.P5006026825412878477

`A261780(eq[10, A004736(n+1)])`
-/

namespace A261801.P5006026825412878477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261801.P5006026825412878477

/-! ## A261801.P17925708162239244089

`A261780(A000124(n+9)-(1-n))`
-/

namespace A261801.P17925708162239244089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000124 (n + 9) - (1 - (n : ℤ))).toNat

end

end A261801.P17925708162239244089

/-!
# A261802: Number of 10-compositions of n: matrices with 10 rows of nonnegative integers with positive column sums and total element sum n.

The programs for A261802, there is no canonical definition to state claims against.
-/

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

/-! ## A261802.P6674586818002599720

`A261780(eq[11, A193739(n)])`
-/

namespace A261802.P6674586818002599720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261802.P6674586818002599720

/-! ## A261802.P17727199510992114492

`A261780(eq[11, A195663(n)])`
-/

namespace A261802.P17727199510992114492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261802.P17727199510992114492

/-! ## A261802.P14636140518444359498

`A261780(eq[21, A099375(n)])`
-/

namespace A261802.P14636140518444359498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261802.P14636140518444359498

/-! ## A261802.P17768565221924093101

`A261780(eq[11, A004736(n+1)])`
-/

namespace A261802.P17768565221924093101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261802.P17768565221924093101

/-!
# A261807: a(n) = n XOR n^3.

The programs for A261807, the canonical program `A261807.P846462203732169236` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261807 has offset 0).

The definition of A261807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261807.P846462203732169236

`xor(n, n^3)`

The canonical program, it is in `Seq.B000.C028`.
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

The programs for A261809, there is no canonical definition to state claims against.
-/

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

/-! ## A261809.P1476188145290052320

`(n+1)!-A000040(n+1)`
-/

namespace A261809.P1476188145290052320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A000040 (n + 1)

end

end A261809.P1476188145290052320

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

/-! ## A261809.P13156659062408768575

`A000142(n+1)-A000040(n+1)`
-/

namespace A261809.P13156659062408768575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A000040 (n + 1)

end

end A261809.P13156659062408768575

/-! ## A261809.P4556732929350629869

`A038507(n+1)-A008864(n+1)`
-/

namespace A261809.P4556732929350629869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 (n + 1) - A008864 (n + 1)

end

end A261809.P4556732929350629869

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

/-! ## A261810.P1892354821313189787

`A210186(A328545(n+1)^A255934(n))`
-/

namespace A261810.P1892354821313189787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210186 (SequenceMachineLib.roundAway ((A328545 (n + 1) : ℚ) ^ (A255934 n : ℤ))).toNat

end

end A261810.P1892354821313189787

/-! ## A261810.P5518235349898358567

`A210186(C(A359683(n), A229557(n+1)))`
-/

namespace A261810.P5518235349898358567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210186 (Nat.choose (A359683 n).toNat (A229557 (n + 1)).toNat)

end

end A261810.P5518235349898358567

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

/-! ## A261811.P14387419794770890878

`eq[A279060(n), A339060(A014681(n))]`
-/

namespace A261811.P14387419794770890878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339060 (A014681 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261811.P14387419794770890878

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

/-! ## A261828.P17301224323174513759

`gcd(A000038(n), A261836(A046092(n)))`
-/

namespace A261828.P17301224323174513759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A261836 (A046092 n).toNat)

end

end A261828.P17301224323174513759

/-! ## A261828.P16441601408467000015

`or(A000007(n), A261836(A046092(n)))`
-/

namespace A261828.P16441601408467000015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A261836 (A046092 n).toNat)

end

end A261828.P16441601408467000015

/-! ## A261828.P7913375524985846546

`A033999(n)²*A261836(A046092(n))`
-/

namespace A261828.P7913375524985846546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A261836 (A046092 n).toNat

end

end A261828.P7913375524985846546

/-! ## A261828.P1606629083535996015

`A261836(A046092(n))/A007318(∑[n])`
-/

namespace A261828.P1606629083535996015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261836 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A261828.P1606629083535996015

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

/-! ## A261835.P2209092846385571589

`A384580(A007967(n²))`
-/

namespace A261835.P2209092846385571589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384580 (A007967 (n ^ 2)).toNat

end

end A261835.P2209092846385571589

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

/-! ## A261837.P3448632113104775632

`gcd((2^n)%2, A261835(A046092(n)))`
-/

namespace A261837.P3448632113104775632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 ^ n % 2 : ℕ) : ℤ) (A261835 (A046092 n).toNat)

end

end A261837.P3448632113104775632

/-! ## A261837.P12735770621248573458

`gcd(A000038(n), A261835(A046092(n)))`
-/

namespace A261837.P12735770621248573458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A261835 (A046092 n).toNat)

end

end A261837.P12735770621248573458

/-! ## A261837.P8306289387979247690

`lcm(A033999(n), A261835(A046092(n)))`
-/

namespace A261837.P8306289387979247690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A261835 (A046092 n).toNat)

end

end A261837.P8306289387979247690

/-! ## A261837.P14470638263391079818

`or(A000007(n), A261835(A046092(n)))`
-/

namespace A261837.P14470638263391079818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A261835 (A046092 n).toNat)

end

end A261837.P14470638263391079818

/-! ## A261837.P10938358556388056060

`A204162(A125102(n))*A261835(A046092(n))`
-/

namespace A261837.P10938358556388056060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204162 (A125102 n).toNat * A261835 (A046092 n).toNat

end

end A261837.P10938358556388056060

/-! ## A261837.P1761984930015453706

`A261835(A046092(n))^A001221(A001316(n))`
-/

namespace A261837.P1761984930015453706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261835 (A046092 n).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A261837.P1761984930015453706

/-!
# A261838: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a k-ary alphabet (k=1,2,3,...) whose letters appear in alphabetical order and all k letters occur at least once in the composition.

The programs for A261838, there is no canonical definition to state claims against.
-/

/-! ## A261838.P11378937214062167571

`A325365(A343865(n+1))`
-/

namespace A261838.P11378937214062167571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325365 (A343865 (n + 1)).toNat

end

end A261838.P11378937214062167571

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

/-! ## A261842.P6511486653629642513

`lcm(A000034(n), A261835(A052905(n+2)))`
-/

namespace A261842.P6511486653629642513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A261835 (A052905 (n + 2)).toNat)

end

end A261842.P6511486653629642513

/-! ## A261842.P16537833780181070052

`A000035(2*n+1)*A261835(A000217(n+5)-5)`
-/

namespace A261842.P16537833780181070052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A261835 (A000217 (n + 5) - 5).toNat

end

end A261842.P16537833780181070052

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

/-! ## A261843.P12735381557002738998

`A261835(eq[5, A025581(n)])`
-/

namespace A261843.P12735381557002738998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261843.P12735381557002738998

/-! ## A261843.P4993313045145577165

`A261835(Δ[A023551(n+1)])`
-/

namespace A261843.P4993313045145577165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (f1 (n + 1) - f1 n).toNat

end

end A261843.P4993313045145577165

/-! ## A261843.P2775199430953742697

`A261835(A052905(n+3)-1)`
-/

namespace A261843.P2775199430953742697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A052905 (n + 3) - 1).toNat

end

end A261843.P2775199430953742697

/-! ## A261843.P9707860911483961452

`A261835(A056000(n+2)+4)`
-/

namespace A261843.P9707860911483961452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A056000 (n + 2) + 4).toNat

end

end A261843.P9707860911483961452

/-! ## A261843.P6688894477985723691

`A261835(A000217(n+6)-6)`
-/

namespace A261843.P6688894477985723691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A000217 (n + 6) - 6).toNat

end

end A261843.P6688894477985723691

/-! ## A261843.P5621559378831501561

`A261835(A000124(n+5)+n-1)`
-/

namespace A261843.P5621559378831501561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A261843.P5621559378831501561

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

/-! ## A261844.P15603074037103433534

`A261835(A055999(n+4)-1)`
-/

namespace A261844.P15603074037103433534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055999 (n + 4) - 1).toNat

end

end A261844.P15603074037103433534

/-! ## A261844.P15704648216069376525

`A261835(A052905(n+4)-2)`
-/

namespace A261844.P15704648216069376525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A052905 (n + 4) - 2).toNat

end

end A261844.P15704648216069376525

/-! ## A261844.P7647841302768458263

`A261835(A055998(n+5)-4)`
-/

namespace A261844.P7647841302768458263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055998 (n + 5) - 4).toNat

end

end A261844.P7647841302768458263

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

/-! ## A261844.P1084929678497243094

`A261835(Δ[A023551(n+2)]-1)`
-/

namespace A261844.P1084929678497243094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (f1 (n + 1) - f1 n - 1).toNat

end

end A261844.P1084929678497243094

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

/-! ## A261845.P2145710289948147027

`A261835(eq[7, A025581(n)])`
-/

namespace A261845.P2145710289948147027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261845.P2145710289948147027

/-! ## A261845.P6312064749659343805

`A261835(A000217(n+8)-8)`
-/

namespace A261845.P6312064749659343805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A000217 (n + 8) - 8).toNat

end

end A261845.P6312064749659343805

/-! ## A261845.P8640469847126178031

`A261835(A055998(n+5)+n+3)`
-/

namespace A261845.P8640469847126178031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055998 (n + 5) + (n + 3 : ℤ)).toNat

end

end A261845.P8640469847126178031

/-! ## A261845.P9187193777365868348

`A261835(A052905(n+4)+n+5)`
-/

namespace A261845.P9187193777365868348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A052905 (n + 4) + (n + 5 : ℤ)).toNat

end

end A261845.P9187193777365868348

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

/-! ## A261846.P17093826599038903121

`A261835(A155212(n+5)-1)`
-/

namespace A261846.P17093826599038903121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A155212 (n + 5) - 1).toNat

end

end A261846.P17093826599038903121

/-! ## A261846.P1188227830642082661

`A261835(eq[9, A004736(n+1)])`
-/

namespace A261846.P1188227830642082661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261846.P1188227830642082661

/-! ## A261846.P15086619808794330047

`A261835(A055998(n+6)+n+3)`
-/

namespace A261846.P15086619808794330047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055998 (n + 6) + (n + 3 : ℤ)).toNat

end

end A261846.P15086619808794330047

/-! ## A261846.P6625019652376687016

`A261835(A052905(n+5)+n+5)`
-/

namespace A261846.P6625019652376687016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A052905 (n + 5) + (n + 5 : ℤ)).toNat

end

end A261846.P6625019652376687016

/-! ## A261846.P10144338517238298454

`A261835(A008587(n+5)+A000124(n+4))`
-/

namespace A261846.P10144338517238298454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A008587 (n + 5) + A000124 (n + 4)).toNat

end

end A261846.P10144338517238298454

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

/-! ## A261847.P15275745187663598358

`A261835(A155212(n+6)-2)`
-/

namespace A261847.P15275745187663598358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A155212 (n + 6) - 2).toNat

end

end A261847.P15275745187663598358

/-! ## A261847.P10019407146103501616

`A261835(A000217(n+10)-10)`
-/

namespace A261847.P10019407146103501616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A000217 (n + 10) - 10).toNat

end

end A261847.P10019407146103501616

/-! ## A261847.P16165700977185715550

`A261835(eq[10, A004736(n+1)])`
-/

namespace A261847.P16165700977185715550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261847.P16165700977185715550

/-! ## A261847.P14058346040461488933

`A261835(A055998(n+7)+n+3)`
-/

namespace A261847.P14058346040461488933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055998 (n + 7) + (n + 3 : ℤ)).toNat

end

end A261847.P14058346040461488933

/-! ## A261847.P17900825976204162167

`A261835(A052905(n+6)+n+5)`
-/

namespace A261847.P17900825976204162167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A052905 (n + 6) + (n + 5 : ℤ)).toNat

end

end A261847.P17900825976204162167

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

/-! ## A261848.P9898780260960081142

`A261835(A000096(n+9)+n+1)`
-/

namespace A261848.P9898780260960081142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A261848.P9898780260960081142

/-! ## A261848.P9678891795692502899

`A261835(A055998(n+8)+n+3)`
-/

namespace A261848.P9678891795692502899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A055998 (n + 8) + (n + 3 : ℤ)).toNat

end

end A261848.P9678891795692502899

/-! ## A261848.P2772373912437239121

`A261835(A052905(n+7)+n+5)`
-/

namespace A261848.P2772373912437239121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A052905 (n + 7) + (n + 5 : ℤ)).toNat

end

end A261848.P2772373912437239121

/-! ## A261848.P17187014776994946668

`A261835(A167614(n+9)+n-3)`
-/

namespace A261848.P17187014776994946668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A167614 (n + 9) + ((n : ℤ) - 3)).toNat

end

end A261848.P17187014776994946668

/-! ## A261848.P16740716246108496995

`A261835(A155212(n+6)+n+8)`
-/

namespace A261848.P16740716246108496995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 (A155212 (n + 6) + (n + 8 : ℤ)).toNat

end

end A261848.P16740716246108496995

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

/-! ## A261853.P1009900912505412334

`A261836(A340266(n+1))%A042544(n)`
-/

namespace A261853.P1009900912505412334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261836 (A340266 (n + 1)).toNat) (A042544 n)

end

end A261853.P1009900912505412334

/-!
# A261854: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a ternary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261854, there is no canonical definition to state claims against.
-/

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

/-! ## A261854.P311857143064482474

`or(char[1], A261836(A167614(n+2)))`
-/

namespace A261854.P311857143064482474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A261836 (A167614 (n + 2)).toNat)

end

end A261854.P311857143064482474

/-! ## A261854.P771550147243099534

`A261836(A167614(n+2))%A242257(n)`
-/

namespace A261854.P771550147243099534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261836 (A167614 (n + 2)).toNat) (A242257 (n + 19))

end

end A261854.P771550147243099534

/-! ## A261854.P7760964964469035368

`A261836(A167614(n+2))+A000010(n+5)%2`
-/

namespace A261854.P7760964964469035368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A167614 (n + 2)).toNat + Int.tmod (A000010 (n + 5)) 2

end

end A261854.P7760964964469035368

/-! ## A261854.P15736909449350977569

`A261836(A167614(n+2))+A086483(A082660(n+1))`
-/

namespace A261854.P15736909449350977569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A167614 (n + 2)).toNat + A086483 (A082660 (n + 1)).toNat

end

end A261854.P15736909449350977569

/-!
# A261855: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a quaternary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261855, there is no canonical definition to state claims against.
-/

/-! ## A261855.P1358329598165564172

`A261836(A155212(n)+12)`
-/

namespace A261855.P1358329598165564172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A155212 n + 12).toNat

end

end A261855.P1358329598165564172

/-! ## A261855.P5914032025988718162

`A261836(eq[3, A141169(n)])`
-/

namespace A261855.P5914032025988718162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261855.P5914032025988718162

/-! ## A261855.P15911859614304295121

`A261836(eq[4, A002262(n)])`
-/

namespace A261855.P15911859614304295121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261855.P15911859614304295121

/-! ## A261855.P7830562569521586697

`A261836(eq[16, A059268(n)])`
-/

namespace A261855.P7830562569521586697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261855.P7830562569521586697

/-! ## A261855.P9820233458753289953

`A261836(A000217(n+4)+4)`
-/

namespace A261855.P9820233458753289953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A000217 (n + 4) + 4).toNat

end

end A261855.P9820233458753289953

/-! ## A261855.P16804244997499790737

`A261836(A055998(n+2)+7)`
-/

namespace A261855.P16804244997499790737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A055998 (n + 2) + 7).toNat

end

end A261855.P16804244997499790737

/-! ## A261855.P14447703971885999237

`A261836(eq[5, A002260(n+1)])`
-/

namespace A261855.P14447703971885999237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261855.P14447703971885999237

/-! ## A261855.P13228146110074111704

`A261836(eq[2, A144328(n+1)-2])`
-/

namespace A261855.P13228146110074111704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261855.P13228146110074111704

/-! ## A261855.P17326127653943161978

`A261836(eq[2, A144328(n+1)/2])`
-/

namespace A261855.P17326127653943161978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A261855.P17326127653943161978

/-!
# A261856: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a quinary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261856, there is no canonical definition to state claims against.
-/

/-! ## A261856.P12578119917955072630

`A261836(A167499(n+4))`
-/

namespace A261856.P12578119917955072630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A167499 (n + 4)).toNat

end

end A261856.P12578119917955072630

/-! ## A261856.P6177210851170613715

`A261836(eq[5, A002262(n)])`
-/

namespace A261856.P6177210851170613715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261856.P6177210851170613715

/-! ## A261856.P14692991432670097002

`A261836(eq[32, A059268(n)])`
-/

namespace A261856.P14692991432670097002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261856.P14692991432670097002

/-! ## A261856.P5428127703449818892

`A261836(A167614(n+4)+2)`
-/

namespace A261856.P5428127703449818892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A167614 (n + 4) + 2).toNat

end

end A261856.P5428127703449818892

/-! ## A261856.P10388676676585560234

`A261836(A000217(n+5)+5)`
-/

namespace A261856.P10388676676585560234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A000217 (n + 5) + 5).toNat

end

end A261856.P10388676676585560234

/-!
# A261857: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a senary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261857, there is no canonical definition to state claims against.
-/

/-! ## A261857.P16916777961444396203

`A261836(A166136(n+5))`
-/

namespace A261857.P16916777961444396203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A166136 (n + 5)).toNat

end

end A261857.P16916777961444396203

/-! ## A261857.P2397634516688370690

`A261836(eq[6, A002262(n)])`
-/

namespace A261857.P2397634516688370690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261857.P2397634516688370690

/-! ## A261857.P9592396039563001472

`A261836(eq[64, A059268(n)])`
-/

namespace A261857.P9592396039563001472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261857.P9592396039563001472

/-! ## A261857.P10160052885263892603

`A261836(A167499(n+5)+1)`
-/

namespace A261857.P10160052885263892603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A167499 (n + 5) + 1).toNat

end

end A261857.P10160052885263892603

/-! ## A261857.P5258021277630052058

`A261836(A000217(n+6)+6)`
-/

namespace A261857.P5258021277630052058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A000217 (n + 6) + 6).toNat

end

end A261857.P5258021277630052058

/-! ## A261857.P98106095318699395

`A261836(eq[7, A002260(n+1)])`
-/

namespace A261857.P98106095318699395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261857.P98106095318699395

/-! ## A261857.P4505917239987464375

`A261836(log2(1/2)+A161680(n+7)+7)`
-/

namespace A261857.P4505917239987464375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (A161680 (n + 7) + 7 : ℝ))).toNat

end

end A261857.P4505917239987464375

/-!
# A261858: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a septenary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261858, there is no canonical definition to state claims against.
-/

/-! ## A261858.P9430993969558497842

`A261836(eq[7, A002262(n)])`
-/

namespace A261858.P9430993969558497842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261858.P9430993969558497842

/-! ## A261858.P10465072407147379256

`A261836(eq[7, A144328(n+1)])`
-/

namespace A261858.P10465072407147379256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261858.P10465072407147379256

/-! ## A261858.P17473559411052912215

`A261836(eq[8, A002260(n+1)])`
-/

namespace A261858.P17473559411052912215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261858.P17473559411052912215

/-! ## A261858.P11371932114395457684

`A261836(eq[8, A134868(n+1)])`
-/

namespace A261858.P11371932114395457684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261858.P11371932114395457684

/-! ## A261858.P5659522987332425695

`A261836(eq[19, A037126(n+1)])`
-/

namespace A261858.P5659522987332425695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261858.P5659522987332425695

/-!
# A261859: Number of compositions of n into distinct parts where each part i is marked with a word of length i over an octonary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261859, there is no canonical definition to state claims against.
-/

/-! ## A261859.P4322372640949864960

`A261836(eq[8, A002262(n)])`
-/

namespace A261859.P4322372640949864960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261859.P4322372640949864960

/-! ## A261859.P18290245050324554895

`A261836(eq[21, A141169(n)])`
-/

namespace A261859.P18290245050324554895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261859.P18290245050324554895

/-! ## A261859.P12817540151156989280

`A261836(eq[8, A144328(n+1)])`
-/

namespace A261859.P12817540151156989280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261859.P12817540151156989280

/-! ## A261859.P5510167603280309738

`A261836(eq[9, A002260(n+1)])`
-/

namespace A261859.P5510167603280309738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261859.P5510167603280309738

/-! ## A261859.P10847436523695414079

`A261836(eq[9, A134868(n+1)])`
-/

namespace A261859.P10847436523695414079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261859.P10847436523695414079

/-!
# A261860: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a nonary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261860, there is no canonical definition to state claims against.
-/

/-! ## A261860.P13582103980868829708

`A261836(eq[9, A002262(n)])`
-/

namespace A261860.P13582103980868829708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261860.P13582103980868829708

/-! ## A261860.P1532542980406862549

`A261836(eq[9, A144328(n+1)])`
-/

namespace A261860.P1532542980406862549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261860.P1532542980406862549

/-! ## A261860.P7871641239063089459

`A261836(eq[10, A002260(n+1)])`
-/

namespace A261860.P7871641239063089459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261860.P7871641239063089459

/-! ## A261860.P7320124333679828287

`A261836(eq[10, A134868(n+1)])`
-/

namespace A261860.P7320124333679828287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261860.P7320124333679828287

/-! ## A261860.P13946705663839815954

`A261836(eq[9, A133233(n)])`
-/

namespace A261860.P13946705663839815954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261860.P13946705663839815954

/-!
# A261861: Number of compositions of n into distinct parts where each part i is marked with a word of length i over a denary alphabet whose letters appear in alphabetical order and all letters occur at least once in the composition.

The programs for A261861, there is no canonical definition to state claims against.
-/

/-! ## A261861.P11974787169017022975

`A261836(eq[10, A002262(n)])`
-/

namespace A261861.P11974787169017022975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261861.P11974787169017022975

/-! ## A261861.P5102299382885051314

`A261836(eq[10, A144328(n+1)])`
-/

namespace A261861.P5102299382885051314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261861.P5102299382885051314

/-! ## A261861.P17360741139105614852

`A261836(eq[11, A002260(n+1)])`
-/

namespace A261861.P17360741139105614852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261861.P17360741139105614852

/-! ## A261861.P6066877331473016220

`A261836(eq[11, A134868(n+1)])`
-/

namespace A261861.P6066877331473016220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261861.P6066877331473016220

/-! ## A261861.P1041212199414770103

`A261836(eq[11, A135223(n+1)])`
-/

namespace A261861.P1041212199414770103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261861.P1041212199414770103

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

/-!
# A261863: a(n) = A143480(n)/n.

The programs for A261863, there is no canonical definition to state claims against.
-/

/-! ## A261863.P4133150839839879171

`A143480(n+1)/(n+1)`
-/

namespace A261863.P4133150839839879171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143480 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A261863.P4133150839839879171

/-! ## A261863.P9750888380796637946

`(n+1)^A163805(A124625(2*(n+1)))*A143480(n+1)`
-/

namespace A261863.P9750888380796637946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A163805 (A124625 (2 * (n + 1))).toNat : ℤ) * (A143480 (n + 1) : ℚ)

end

end A261863.P9750888380796637946

/-! ## A261863.P16329162470676179828

`(n+1)^A163805(A016813(n))*A143480(n+1)`
-/

namespace A261863.P16329162470676179828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A163805 (A016813 n).toNat : ℤ) * (A143480 (n + 1) : ℚ)

end

end A261863.P16329162470676179828

/-! ## A261863.P3729935402221158597

`(n+1)^A163805(A106963(n+1))*A143480(n+1)`
-/

namespace A261863.P3729935402221158597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A163805 (A106963 (n + 1)).toNat : ℤ) * (A143480 (n + 1) : ℚ)

end

end A261863.P3729935402221158597

/-! ## A261863.P11978024882484694701

`(n+1)^A163805(A273421(n))*A143480(n+1)`
-/

namespace A261863.P11978024882484694701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A163805 (A273421 n).toNat : ℤ) * (A143480 (n + 1) : ℚ)

end

end A261863.P11978024882484694701

/-! ## A261863.P1883621443351022970

`(n+1)^A163805(A325470(n+1)²)*A143480(n+1)`
-/

namespace A261863.P1883621443351022970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A163805 (A325470 (n + 1) ^ 2).toNat : ℤ) * (A143480 (n + 1) : ℚ)

end

end A261863.P1883621443351022970

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

/-! ## A261866.P14336572326812600659

`abs(A147699(A008586(n)+n))`
-/

namespace A261866.P14336572326812600659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147699 (A008586 n + (n : ℤ)).toNat|

end

end A261866.P14336572326812600659

/-! ## A261866.P13113090969459767029

`gcd(A000038(n), A147699(A008586(n)+n))`
-/

namespace A261866.P13113090969459767029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A147699 (A008586 n + (n : ℤ)).toNat)

end

end A261866.P13113090969459767029

/-! ## A261866.P11888235120891426698

`or(A000007(n), A147699(A008586(n)+n))`
-/

namespace A261866.P11888235120891426698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A147699 (A008586 n + (n : ℤ)).toNat)

end

end A261866.P11888235120891426698

/-! ## A261866.P6382986257050854959

`A147699(A008586(n)+n)/A009001(A005843(n))²`
-/

namespace A261866.P6382986257050854959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147699 (A008586 n + (n : ℤ)).toNat : ℚ) / (A009001 (A005843 n).toNat ^ 2 : ℚ)

end

end A261866.P6382986257050854959

/-! ## A261866.P9305714842219042200

`A147699(A008586(n)+n)/A034947(A005408(n))²`
-/

namespace A261866.P9305714842219042200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147699 (A008586 n + (n : ℤ)).toNat : ℚ) / (A034947 (A005408 n).toNat ^ 2 : ℚ)

end

end A261866.P9305714842219042200

/-! ## A261866.P10630300202875112093

`A147699(A008586(n)+n)^A014963(A298026(n))`
-/

namespace A261866.P10630300202875112093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147699 (A008586 n + (n : ℤ)).toNat : ℚ) ^ (A014963 (A298026 n).toNat : ℤ)

end

end A261866.P10630300202875112093

/-! ## A261866.P10581510041625572216

`A147699(A008586(n)+n)^A014963(A017233(n))`
-/

namespace A261866.P10581510041625572216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147699 (A008586 n + (n : ℤ)).toNat : ℚ) ^ (A014963 (A017233 n).toNat : ℤ)

end

end A261866.P10581510041625572216

/-! ## A261866.P6507169160554048002

`A138532(10*n+1)`
-/

namespace A261866.P6507169160554048002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138532 (10 * n + 1)

end

end A261866.P6507169160554048002

/-! ## A261866.P6926625233086713844

`A147699(A008586(n)+n)%∑[A016724(n)]`
-/

namespace A261866.P6926625233086713844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147699 (A008586 n + (n : ℤ)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261866.P6926625233086713844

/-!
# A261867: Triangle T(n, k) read by rows (n >= 1, 1 <= k <= n), where row n gives the lexicographically first permutation of n cards that is a winning (or reformed) deck at Cayley's Mousetrap.

The programs for A261867, there is no canonical definition to state claims against.
-/

/-! ## A261867.P4677328432034161667

`A343945(or(n^(char[n²]/2), A343960(n+1)))`
-/

namespace A261867.P4677328432034161667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343945 (Int.lor (SequenceMachineLib.roundAway ((n : ℝ) ^ (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ))) (A343960 (n + 1))).toNat

end

end A261867.P4677328432034161667

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

/-!
# A261869: First differences of A055615.

The programs for A261869, the canonical program `A261869.P11309295285550165440` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261869 has offset 1).

The definition of A261869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261869.P11309295285550165440

`Δ[A055615(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A261869

/-- `Δ[A055615(n+1)]` -/
def P11309295285550165440.Spec : Prop :=
  ∀ n, P11309295285550165440.a n = A261869 (n + 1)

theorem P11309295285550165440.correct : P11309295285550165440.Spec := by
  intro n
  simp only [A261869, Nat.add_sub_cancel]

end A261869

/-! ## A261869.P12862650231696245175

`Δ[A061669(n+1)]-1`
-/

namespace A261869.P12862650231696245175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A261869.P12862650231696245175

namespace A261869

/-- `Δ[A061669(n+1)]-1` -/
def P12862650231696245175.Spec : Prop :=
  ∀ n, P12862650231696245175.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P11733626567345512823

`Δ[(n+1)*A008683(n+1)]`
-/

namespace A261869.P11733626567345512823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P11733626567345512823

namespace A261869

/-- `Δ[(n+1)*A008683(n+1)]` -/
def P11733626567345512823.Spec : Prop :=
  ∀ n, P11733626567345512823.a n = A261869 (n + 1)

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
  simp only [A261869, Nat.add_sub_cancel, A261869.P18210895060204918775.a, A261869.P11309295285550165440.f1, A261869.P11309295285550165440.a, SequenceMachineLib.memo_apply]

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

/-! ## A261869.P13577676022561229

`A055615(n+2)+A055615(n+1)*A153881(n+2)`
-/

namespace A261869.P13577676022561229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 2) + A055615 (n + 1) * A153881 (n + 2)

end

end A261869.P13577676022561229

namespace A261869

/-- `A055615(n+2)+A055615(n+1)*A153881(n+2)` -/
def P13577676022561229.Spec : Prop :=
  ∀ n, P13577676022561229.a n = A261869 (n + 1)

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

/-! ## A261869.P8339077501577664626

`Δ[A008683(A029579(2*n))*A029579(2*n)]`
-/

namespace A261869.P8339077501577664626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A029579 (2 * n)).toNat * A029579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P8339077501577664626

namespace A261869

/-- `Δ[A008683(A029579(2*n))*A029579(2*n)]` -/
def P8339077501577664626.Spec : Prop :=
  ∀ n, P8339077501577664626.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P17295876657917079196

`Δ[A008683(A080513(2*n))*A080513(2*n)]`
-/

namespace A261869.P17295876657917079196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A080513 (2 * n)).toNat * A080513 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P17295876657917079196

namespace A261869

/-- `Δ[A008683(A080513(2*n))*A080513(2*n)]` -/
def P17295876657917079196.Spec : Prop :=
  ∀ n, P17295876657917079196.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P17201445286573573822

`Δ[A008683(A110514(2*n))*A110514(2*n)]`
-/

namespace A261869.P17201445286573573822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A110514 (2 * n)).toNat * A110514 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P17201445286573573822

namespace A261869

/-- `Δ[A008683(A110514(2*n))*A110514(2*n)]` -/
def P17201445286573573822.Spec : Prop :=
  ∀ n, P17201445286573573822.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P958901894753299112

`Δ[A008683(A131732(2*n))*A131732(2*n)]`
-/

namespace A261869.P958901894753299112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A131732 (2 * n)).toNat * A131732 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P958901894753299112

namespace A261869

/-- `Δ[A008683(A131732(2*n))*A131732(2*n)]` -/
def P958901894753299112.Spec : Prop :=
  ∀ n, P958901894753299112.a n = A261869 (n + 1)

end A261869

/-! ## A261869.P16701200175936025320

`Δ[A008683(A266285(2*n))*A266285(2*n)]`
-/

namespace A261869.P16701200175936025320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A266285 (2 * n)).toNat * A266285 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261869.P16701200175936025320

namespace A261869

/-- `Δ[A008683(A266285(2*n))*A266285(2*n)]` -/
def P16701200175936025320.Spec : Prop :=
  ∀ n, P16701200175936025320.a n = A261869 (n + 1)

end A261869

/-!
# A261871: Numbers of the form (2*j-1)*(2^k-1); j>=1, k>=2.

The programs for A261871, the canonical program `A261871.P2363050559107076458` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261871 has offset 1).

The definition of A261871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4518 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261871.P371706210485905998

`∩[A261524(n+1), A382875(n+1)]`
-/

namespace A261871.P371706210485905998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261871.P371706210485905998

namespace A261871

/-- `∩[A261524(n+1), A382875(n+1)]` -/
def P371706210485905998.Spec : Prop :=
  ∀ n, (P371706210485905998.a n : ℤ) = A261871 (n + 1)

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

/-! ## A261871.P2363050559107076458

`∩[A005818(n+1), A382875(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A261871

/-- `∩[A005818(n+1), A382875(n+1)]` -/
def P2363050559107076458.Spec : Prop :=
  ∀ n, (P2363050559107076458.a n : ℤ) = A261871 (n + 1)

theorem P2363050559107076458.correct : P2363050559107076458.Spec := by
  intro n
  simp only [A261871, Nat.add_sub_cancel]

end A261871

/-! ## A261871.P12477011209222062138

`∩[A144396(n+1), A382875(n+1)]`
-/

namespace A261871.P12477011209222062138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261871.P12477011209222062138

namespace A261871

/-- `∩[A144396(n+1), A382875(n+1)]` -/
def P12477011209222062138.Spec : Prop :=
  ∀ n, (P12477011209222062138.a n : ℤ) = A261871 (n + 1)

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

/-! ## A261871.P18003771288540416996

`∩[A004280(n+1), A382875(n+1)]`
-/

namespace A261871.P18003771288540416996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261871.P18003771288540416996

namespace A261871

/-- `∩[A004280(n+1), A382875(n+1)]` -/
def P18003771288540416996.Spec : Prop :=
  ∀ n, (P18003771288540416996.a n : ℤ) = A261871 (n + 1)

end A261871

/-! ## A261871.P11306283942749894739

`∩[A088948(n+1), A382875(n+1)]`
-/

namespace A261871.P11306283942749894739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261871.P11306283942749894739

namespace A261871

/-- `∩[A088948(n+1), A382875(n+1)]` -/
def P11306283942749894739.Spec : Prop :=
  ∀ n, (P11306283942749894739.a n : ℤ) = A261871 (n + 1)

end A261871

/-! ## A261871.P16767637224193801273

`∩[A196499(n+1), A382875(n+1)]`
-/

namespace A261871.P16767637224193801273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261871.P16767637224193801273

namespace A261871

/-- `∩[A196499(n+1), A382875(n+1)]` -/
def P16767637224193801273.Spec : Prop :=
  ∀ n, (P16767637224193801273.a n : ℤ) = A261871 (n + 1)

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

The programs for A261872, the canonical program `A261872.P10858790068857773858` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261872 has offset 1).

The definition of A261872 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261872.P10858790068857773858

`A010874(A000010(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A261872

/-- `A010874(A000010(n+1))` -/
def P10858790068857773858.Spec : Prop :=
  ∀ n, P10858790068857773858.a n = A261872 (n + 1)

theorem P10858790068857773858.correct : P10858790068857773858.Spec := by
  intro n
  simp only [A261872, Nat.add_sub_cancel]

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

/-! ## A261872.P8999188955510084265

`dr(A000010(2*n-(n-1))%5)`
-/

namespace A261872.P8999188955510084265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 5)

end

end A261872.P8999188955510084265

namespace A261872

/-- `dr(A000010(2*n-(n-1))%5)` -/
def P8999188955510084265.Spec : Prop :=
  ∀ n, (P8999188955510084265.a n : ℤ) = A261872 (n + 1)

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

/-! ## A261872.P1007581819580837048

`A000010(n+1)%A168092(n)`
-/

namespace A261872.P1007581819580837048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A168092 n)

end

end A261872.P1007581819580837048

namespace A261872

/-- `A000010(n+1)%A168092(n)` -/
def P1007581819580837048.Spec : Prop :=
  ∀ n, P1007581819580837048.a n = A261872 (n + 1)

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

/-! ## A261872.P12863477379519414944

`A010874(A002088(n+1)-A002088(n))`
-/

namespace A261872.P12863477379519414944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A002088 (n + 1) - A002088 n).toNat

end

end A261872.P12863477379519414944

namespace A261872

/-- `A010874(A002088(n+1)-A002088(n))` -/
def P12863477379519414944.Spec : Prop :=
  ∀ n, P12863477379519414944.a n = A261872 (n + 1)

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

/-!
# A261874: Numbers n such that the sum of digits of n is divisible by at least one prime divisor of n.

The programs for A261874, the canonical program `A261874.P15074968218185570690` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261874 has offset 1).

The definition of A261874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5425 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261874.P15074968218185570690

`lt[1, gcd(n, ∑{digits}[n, #])]`

The canonical program, it is in `Seq.B000.C028`.
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

/-! ## A261876.P7700015381974040236

`A212625(A267121(n+1)^2)`
-/

namespace A261876.P7700015381974040236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (A267121 (n + 1) ^ 2).toNat

end

end A261876.P7700015381974040236

/-! ## A261876.P4685941624828326439

`A322813(A267121(n+1)²²)`
-/

namespace A261876.P4685941624828326439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 ((A267121 (n + 1) ^ 2) ^ 2).toNat

end

end A261876.P4685941624828326439

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

/-! ## A261877.P14102837833301502021

`abs(A262938(2*n+1)/2)`
-/

namespace A261877.P14102837833301502021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A262938 (2 * n + 1) : ℚ) / 2|

end

end A261877.P14102837833301502021

/-! ## A261877.P371112380720711076

`gcd(A262938(2*n+1)/2, A000038(n))`
-/

namespace A261877.P371112380720711076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A262938 (2 * n + 1) : ℚ) / 2)) (A000038 n)

end

end A261877.P371112380720711076

/-! ## A261877.P10477142703292080660

`A307757(2*n+1)/(A131713(n+1)+1)`
-/

namespace A261877.P10477142703292080660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307757 (2 * n + 1) : ℚ) / (A131713 (n + 1) + 1 : ℚ)

end

end A261877.P10477142703292080660

/-! ## A261877.P14185340358677998972

`A262938(2*n+1)/(A000007(n+1)-2)`
-/

namespace A261877.P14185340358677998972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262938 (2 * n + 1) : ℚ) / (A000007 (n + 1) - 2 : ℚ)

end

end A261877.P14185340358677998972

/-! ## A261877.P12332291892414939721

`A262938(2*n+1)/(A000038(n+1)-2)`
-/

namespace A261877.P12332291892414939721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262938 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A261877.P12332291892414939721

/-! ## A261877.P13855330768510020445

`A307757(2*n+1)/(A132954(2*n)-2)`
-/

namespace A261877.P13855330768510020445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307757 (2 * n + 1) : ℚ) / (A132954 (2 * n) - 2 : ℚ)

end

end A261877.P13855330768510020445

/-! ## A261877.P18356172708102682473

`lcm(A000034(n+1), A262938(2*n+1))/2`
-/

namespace A261877.P18356172708102682473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A262938 (2 * n + 1)) : ℚ) / 2

end

end A261877.P18356172708102682473

/-! ## A261877.P14013533640795894958

`A262938(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A261877.P14013533640795894958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262938 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A261877.P14013533640795894958

/-! ## A261877.P14847338225654951038

`A307757(2*n+1)/(1-A057079(2*n+1))`
-/

namespace A261877.P14847338225654951038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307757 (2 * n + 1) : ℚ) / (1 - A057079 (2 * n + 1) : ℚ)

end

end A261877.P14847338225654951038

/-! ## A261877.P10463835226046468191

`A262938(2*n+1)/A000034(2*n+1)-A262938(2*n+1)`
-/

namespace A261877.P10463835226046468191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262938 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A262938 (2 * n + 1) : ℚ)

end

end A261877.P10463835226046468191

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

/-! ## A261878.P5553982629075189798

`A025747(n)-A014155(A077168(n))`
-/

namespace A261878.P5553982629075189798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 n - A014155 (A077168 n).toNat

end

end A261878.P5553982629075189798

/-!
# A261882: Decimal expansion of 32/27.

The programs for A261882, the canonical program `A261882.P17291366412787845795` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261882 has offset 1).

The definition of A261882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261882.P17291366412787845795

`a(n-3)` with `a(0)=1, a(1)=1, a(2)=8, a(3)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A261882

/-- `a(n-3)` -/
def P17291366412787845795.Spec : Prop :=
  ∀ n, (P17291366412787845795.a n : ℤ) = A261882 (n + 1)

theorem P17291366412787845795.correct : P17291366412787845795.Spec := by
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

The programs for A261884, the canonical program `A261884.P17761053337338084082` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261884 has offset 1).

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

The canonical program, it is in `Seq.B002.C004`.
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

/-! ## A261884.P8895822734790868480

`A093829(A186101(n+1))`
-/

namespace A261884.P8895822734790868480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A186101 (n + 1)).toNat

end

end A261884.P8895822734790868480

namespace A261884

/-- `A093829(A186101(n+1))` -/
def P8895822734790868480.Spec : Prop :=
  ∀ n, P8895822734790868480.a n = A261884 (n + 1)

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

/-! ## A261884.P17394272597905739141

`A093829(A066393(n+1))`
-/

namespace A261884.P17394272597905739141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A066393 (n + 1)).toNat

end

end A261884.P17394272597905739141

namespace A261884

/-- `A093829(A066393(n+1))` -/
def P17394272597905739141.Spec : Prop :=
  ∀ n, P17394272597905739141.a n = A261884 (n + 1)

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

/-! ## A261887.P15915423355906794461

`A218604(A074919(n+1))^A046802(2*n)`
-/

namespace A261887.P15915423355906794461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218604 (A074919 (n + 1)).toNat : ℚ) ^ (A046802 (2 * n) : ℤ)

end

end A261887.P15915423355906794461

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

/-!
# A261890: Second differences of A055615, first differences of A261869.

The programs for A261890, the canonical program `A261890.P4080102561957379191` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261890 has offset 1).

The definition of A261890 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261890.P4080102561957379191

`A055615(n+3)-2*A055615(n+2)+A055615(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A261890

/-- `A055615(n+3)-2*A055615(n+2)+A055615(n+1)` -/
def P4080102561957379191.Spec : Prop :=
  ∀ n, P4080102561957379191.a n = A261890 (n + 1)

theorem P4080102561957379191.correct : P4080102561957379191.Spec := by
  intro n
  simp only [A261890, Nat.add_sub_cancel]

end A261890

/-! ## A261890.P12601217149731493522

`Δ[A055615(n+2)-A055615(n+1)]`
-/

namespace A261890.P12601217149731493522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 2) - A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261890.P12601217149731493522

namespace A261890

/-- `Δ[A055615(n+2)-A055615(n+1)]` -/
def P12601217149731493522.Spec : Prop :=
  ∀ n, P12601217149731493522.a n = A261890 (n + 1)

theorem P12601217149731493522.correct : P12601217149731493522.Spec := by
  intro n
  simp only [A261890, Nat.add_sub_cancel, A261890.P12601217149731493522.f1, A261890.P12601217149731493522.a, A261890.P4080102561957379191.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

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

end A261890

/-! ## A261890.P11052144557228011063

`Δ[Δ[A055615(n+1)]]`
-/

namespace A261890.P11052144557228011063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261890.P11052144557228011063

namespace A261890

/-- `Δ[Δ[A055615(n+1)]]` -/
def P11052144557228011063.Spec : Prop :=
  ∀ n, P11052144557228011063.a n = A261890 (n + 1)

theorem P11052144557228011063.correct : P11052144557228011063.Spec := by
  intro n
  simp only [A261890, Nat.add_sub_cancel, A261890.P11052144557228011063.f2, A261890.P11052144557228011063.f1, A261890.P11052144557228011063.a, A261890.P4080102561957379191.a, SequenceMachineLib.memo_apply]
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

/-! ## A261891.P830778844416713501

`A261892(n+1)/(n+1)`
-/

namespace A261891.P830778844416713501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261892 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A261891.P830778844416713501

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

/-! ## A261891.P15428442064969668480

`A253719(A076338(lcm(2, n+1)/2))`
-/

namespace A261891.P15428442064969668480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253719 (A076338 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat).toNat

end

end A261891.P15428442064969668480

/-! ## A261891.P6512787976153327997

`A253719(A076338(floor(n/gcd(2, n+1))+1))`
-/

namespace A261891.P6512787976153327997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253719 (A076338 (⌊(n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)⌋ + 1).toNat).toNat

end

end A261891.P6512787976153327997

/-! ## A261891.P11619468696715304614

`A253719(A076338((∑[n]+n)%(n+1)+1))`
-/

namespace A261891.P11619468696715304614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253719 (A076338 ((∑ j ∈ Finset.range (n + 1), f1 j + n) % (n + 1) + 1)).toNat

end

end A261891.P11619468696715304614

/-! ## A261891.P6990627753972659744

`A253719(A076338(n+1))`
-/

namespace A261891.P6990627753972659744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253719 (A076338 (n + 1)).toNat

end

end A261891.P6990627753972659744

/-! ## A261891.P13378303997790169264

`A253719(A158231(n+1)+A158231(n+1)-1)`
-/

namespace A261891.P13378303997790169264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253719 (A158231 (n + 1) + (A158231 (n + 1) - 1)).toNat

end

end A261891.P13378303997790169264

/-! ## A261891.P12726575889157772337

`A253719(A157951(n+1))%A264618(A045849(n))`
-/

namespace A261891.P12726575889157772337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253719 (A157951 (n + 1)).toNat) (A264618 (A045849 n).toNat)

end

end A261891.P12726575889157772337

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

/-! ## A261892.P1706105603233546398

`A135835(∑[n]+1)*A253719(A157951(n+1))`
-/

namespace A261892.P1706105603233546398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135835 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A253719 (A157951 (n + 1)).toNat

end

end A261892.P1706105603233546398

/-! ## A261892.P7697361994721280916

`(A332202(2*n+1)+n)*A253719(A157951(n+1))`
-/

namespace A261892.P7697361994721280916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332202 (2 * n + 1) + (n : ℤ)) * A253719 (A157951 (n + 1)).toNat

end

end A261892.P7697361994721280916

/-!
# A261893: a(n) = (n+1)^3 - n^2.

The programs for A261893, the canonical program `A261893.P3894214550865537964` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261893 has offset 0).

The definition of A261893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3-n²` (program `A261893.P3894214550865537964`, by `A261893.P3894214550865537964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261893.P3894214550865537964

`(n+1)^3-n²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A261893

/-- `(n+1)^3-n²` -/
def P3894214550865537964.Spec : Prop :=
  ∀ n, P3894214550865537964.a n = A261893 n

theorem P3894214550865537964.correct : P3894214550865537964.Spec := by
  intro n
  simp only [A261893]

end A261893

/-! ## A261893.P14647576284169226551

`or(1, n*((n+1)²+2))`
-/

namespace A261893.P14647576284169226551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * ((n + 1) ^ 2 + 2))

end

end A261893.P14647576284169226551

namespace A261893

/-- `or(1, n*((n+1)²+2))` -/
def P14647576284169226551.Spec : Prop :=
  ∀ n, (P14647576284169226551.a n : ℤ) = A261893 n

end A261893

/-! ## A261893.P3160056232894195665

`xor(1, n*((n+1)²+2))`
-/

namespace A261893.P3160056232894195665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * ((n + 1) ^ 2 + 2))

end

end A261893.P3160056232894195665

namespace A261893

/-- `xor(1, n*((n+1)²+2))` -/
def P3160056232894195665.Spec : Prop :=
  ∀ n, (P3160056232894195665.a n : ℤ) = A261893 n

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

/-! ## A261896.P16378955856139128404

`A131507(A156615(n+1)+A156589(n))`
-/

namespace A261896.P16378955856139128404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A156615 (n + 1) + A156589 n).toNat

end

end A261896.P16378955856139128404

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

/-! ## A261898.P14770582130331315526

`A054589(A212342(n+1))`
-/

namespace A261898.P14770582130331315526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054589 (A212342 (n + 1)).toNat

end

end A261898.P14770582130331315526

/-! ## A261898.P1468999103515776164

`A112493(A186752(n+2))`
-/

namespace A261898.P1468999103515776164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112493 (A186752 (n + 2)).toNat

end

end A261898.P1468999103515776164

/-! ## A261898.P14060674829009697199

`A054589(A027379(n)-n)`
-/

namespace A261898.P14060674829009697199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054589 (A027379 n - (n : ℤ)).toNat

end

end A261898.P14060674829009697199

/-! ## A261898.P13732605266799227542

`A054589(record[abs(1-A057944(n))])`
-/

namespace A261898.P13732605266799227542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A057944 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054589 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261898.P13732605266799227542

/-! ## A261898.P1140357746998169821

`A054589(A000096(n)^((n+2)%(n+1)))`
-/

namespace A261898.P1140357746998169821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054589 (A000096 n ^ ((n + 2) % (n + 1))).toNat

end

end A261898.P1140357746998169821

/-! ## A261898.P13097836986758334956

`A054589(A000096(n)+A000038(n))`
-/

namespace A261898.P13097836986758334956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054589 (A000096 n + A000038 n).toNat

end

end A261898.P13097836986758334956

