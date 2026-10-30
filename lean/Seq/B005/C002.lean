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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A336645.P7716507073345907638

`n+1-A326129(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336645.P7716507073345907638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A326129 (n + 1)

end

end A336645.P7716507073345907638

noncomputable section

/-- A336645: a(n) = n - A326129(n).

Offset 1, canonical program `A336645.P7716507073345907638`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-A326129(n+1)` (program `A336645.P7716507073345907638`, by `A336645.P7716507073345907638.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A336645 (n : ℕ) : ℤ :=
  A336645.P7716507073345907638.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-A326129(n+1)` (program `A336645.P7716507073345907638`, by `A336645.P7716507073345907638.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A336645.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A360402.P17555253377108157928

`A360392(A026430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360402.P17555253377108157928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (A026430 (n + 1)).toNat

end

end A360402.P17555253377108157928

noncomputable section

/-- A360402: a(n) = A360392(A026430(n)).

Offset 1, canonical program `A360402.P17555253377108157928`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A360392(A026430(n+1))` (program `A360402.P17555253377108157928`, by `A360402.P17555253377108157928.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A360402 (n : ℕ) : ℤ :=
  A360402.P17555253377108157928.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A360392(A026430(n+1))` (program `A360402.P17555253377108157928`, by `A360402.P17555253377108157928.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A360402.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A295311.P16426649915299872850

`(n+1)/A295310(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295311.P16426649915299872850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A295310 (n + 1) : ℚ)

end

end A295311.P16426649915299872850

noncomputable section

/-- A295311: a(n) = n / A295310(n) = n / gcd(n, phi(sigma(n))).

Offset 1, canonical program `A295311.P16426649915299872850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295311 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295311.P16426649915299872850.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295311.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295312.P2048515004002335457

`A062401(n+1)/A295310(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295312.P2048515004002335457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A295310 (n + 1) : ℚ)

end

end A295312.P2048515004002335457

noncomputable section

/-- A295312: a(n) = A062401(n) / A295310(n) = phi(sigma(n)) / gcd(n, phi(sigma(n))).

Offset 1, canonical program `A295312.P2048515004002335457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295312 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295312.P2048515004002335457.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295884.P5953786868987589474

`A056170(A062378(n+1))`
-/

namespace A295884.P5953786868987589474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A062378 (n + 1)).toNat

end

end A295884.P5953786868987589474

noncomputable section

/-- A295884: Number of exponents larger than 3 in the prime factorization of n.

Offset 1, canonical program `A295884.P5953786868987589474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295884 (n : ℕ) : ℤ :=
  A295884.P5953786868987589474.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295884.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A296062.P5761383797540387978

`n-A268289(n)`
-/

namespace A296062.P5761383797540387978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268289 n

end

end A296062.P5761383797540387978

noncomputable section

/-- A296062: Base-2 logarithm of the number of different shapes of balanced binary trees with n nodes (A110316).

Offset 0, canonical program `A296062.P5761383797540387978`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296062 (n : ℕ) : ℤ :=
  A296062.P5761383797540387978.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297116.P10389749861646648007

`A297115(2*n+1)`
-/

namespace A297116.P10389749861646648007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297115 (2 * n + 1)

end

end A297116.P10389749861646648007

noncomputable section

/-- A297116: Odd bisection of A297115, Möbius transform of A000120 (binary weight of n).

Offset 1, canonical program `A297116.P10389749861646648007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297116 (n : ℕ) : ℤ :=
  A297116.P10389749861646648007.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300720.P15695279460942759688

`A010848(n+1)-A300718(n+1)`
-/

namespace A300720.P15695279460942759688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (n + 1) - A300718 (n + 1)

end

end A300720.P15695279460942759688

noncomputable section

/-- A300720: Difference between A010848 and its Möbius transform.

Offset 1, canonical program `A300720.P15695279460942759688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300720 (n : ℕ) : ℤ :=
  A300720.P15695279460942759688.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300720.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A301336.P12381687914768118623

`A268289(n)-1`
-/

namespace A301336.P12381687914768118623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 n - 1

end

end A301336.P12381687914768118623

noncomputable section

/-- A301336: a(n) = total number of 1's minus total number of 0's in binary expansions of 0, ..., n.

Offset 0, canonical program `A301336.P12381687914768118623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301336 (n : ℕ) : ℤ :=
  A301336.P12381687914768118623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326828.P371920509662354273

`∑{d}[n+1, A008683((n+1)/#)*A007438(#)]`
-/

namespace A326828.P371920509662354273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A007438 d

end

end A326828.P371920509662354273

noncomputable section

/-- A326828: a(n) = (1/2) * Sum_{d|n} mu(n/d) * phi(d) * (psi(d) + 1), where mu = A008683, phi = A000010 and psi = A001615.

Offset 1, canonical program `A326828.P371920509662354273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326828 (n : ℕ) : ℤ :=
  A326828.P371920509662354273.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331176.P12674402394166952486

`n+1-A109395(n+1)`
-/

namespace A331176.P12674402394166952486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A109395 (n + 1)

end

end A331176.P12674402394166952486

noncomputable section

/-- A331176: a(n) = n - n/gcd(n, phi(n)), where phi is Euler totient function.

Offset 1, canonical program `A331176.P12674402394166952486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331176 (n : ℕ) : ℤ :=
  A331176.P12674402394166952486.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331176.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332658.P8845079109785442543

`∑{d}[n+1, A007427((n+1)/#)*A056789(#)]`
-/

namespace A332658.P8845079109785442543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A056789 d

end

end A332658.P8845079109785442543

noncomputable section

/-- A332658: a(n) = Sum_{k=1..n} mu(gcd(n, k)) * lcm(n, k) / gcd(n, k).

Offset 1, canonical program `A332658.P8845079109785442543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332658 (n : ℕ) : ℤ :=
  A332658.P8845079109785442543.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336567.P8607660645956000214

`A335341(n+1)-A003557(n+1)`
-/

namespace A336567.P8607660645956000214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (n + 1) - A003557 (n + 1)

end

end A336567.P8607660645956000214

noncomputable section

/-- A336567: Sum of proper divisors of {n divided by its largest squarefree divisor}.

Offset 1, canonical program `A336567.P8607660645956000214`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336567 (n : ℕ) : ℤ :=
  A336567.P8607660645956000214.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336647.P1661556818682037462

`n+1-A336566(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336647.P1661556818682037462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A336566 (n + 1)

end

end A336647.P1661556818682037462

noncomputable section

/-- A336647: a(n) = n - A336566(n).

Offset 1, canonical program `A336647.P1661556818682037462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336647 (n : ℕ) : ℤ :=
  A336647.P1661556818682037462.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336649.P1375712288515144548

`A335341(A000265(n+1))`
-/

namespace A336649.P1375712288515144548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A000265 (n + 1)).toNat

end

end A336649.P1375712288515144548

noncomputable section

/-- A336649: Sum of divisors of A336651(n) (odd part of n divided by its largest squarefree divisor).

Offset 1, canonical program `A336649.P1375712288515144548`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336649 (n : ℕ) : ℤ :=
  A336649.P1375712288515144548.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336649.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A339384.P8112757450954495595

`A056789(n+1)-(n+1)*∑{#}[n, floor((#+1)/gcd(n+1, #+1)²)]`
-/

namespace A339384.P8112757450954495595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056789 (n + 1) - (n + 1 : ℤ) * (∑ k ∈ Finset.range (f1 n + 1), ⌊(k + 1 : ℚ) / (Nat.gcd (n + 1) (k + 1) ^ 2 : ℚ)⌋)

end

end A339384.P8112757450954495595

noncomputable section

/-- A339384: a(n) = Sum_{k=1..n} (lcm(n,k)/gcd(n,k) mod n).

Offset 1, canonical program `A339384.P8112757450954495595`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A339384 (n : ℕ) : ℤ :=
  A339384.P8112757450954495595.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A339384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A340196.P13204647791419670441

`n+1-A340195(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340196.P13204647791419670441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A340195 (n + 1)

end

end A340196.P13204647791419670441

noncomputable section

/-- A340196: a(n) = n - A340195(n).

Offset 1, canonical program `A340196.P13204647791419670441`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A340196 (n : ℕ) : ℤ :=
  A340196.P13204647791419670441.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A340196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345938.P13711634937950283158

`A047994(n+1)/A345937(n+1)`
-/

namespace A345938.P13711634937950283158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345938.P13711634937950283158

noncomputable section

/-- A345938: a(n) = uphi(n) / gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

Offset 1, canonical program `A345938.P13711634937950283158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345938 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345938.P13711634937950283158.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345938.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345939.P16885342451554269271

`n/A345937(n+1)`
-/

namespace A345939.P16885342451554269271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345939.P16885342451554269271

noncomputable section

/-- A345939: a(n) = (n-1) / gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

Offset 1, canonical program `A345939.P16885342451554269271`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345939 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345939.P16885342451554269271.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353558.P5510355116585189927

`A000035(n+1)-A353557(n+1)`
-/

namespace A353558.P5510355116585189927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) - A353557 (n + 1)

end

end A353558.P5510355116585189927

noncomputable section

/-- A353558: a(n) = 1 if n is an odd number with an odd number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A353558.P5510355116585189927`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353558 (n : ℕ) : ℤ :=
  A353558.P5510355116585189927.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353644.P12499979160227092597

`A000010(n+1)/A353643(n+1)`
-/

namespace A353644.P12499979160227092597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P12499979160227092597

noncomputable section

/-- A353644: a(n) = phi(n) / gcd(phi(n), phi(sigma(n))).

Offset 1, canonical program `A353644.P12499979160227092597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353644 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353644.P12499979160227092597.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353644.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353646.P14527440753907412208

`A062401(n+1)/A353643(n+1)`
-/

namespace A353646.P14527440753907412208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353646.P14527440753907412208

noncomputable section

/-- A353646: a(n) = phi(sigma(n)) / gcd(phi(n), phi(sigma(n))).

Offset 1, canonical program `A353646.P14527440753907412208`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353646 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353646.P14527440753907412208.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353646.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358558.P4524358198685759852

`A049690(floor((n+1)/2))-A000523(n+1)`
-/

namespace A358558.P4524358198685759852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 ⌊(n + 1 : ℚ) / 2⌋.toNat - A000523 (n + 1)

end

end A358558.P4524358198685759852

noncomputable section

/-- A358558: a(n) is the number of pairs (k,m) of positive integers with 1 <= k < m <= n such that gcd(k,m) = 2^t, t > 0.

Offset 1, canonical program `A358558.P4524358198685759852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358558 (n : ℕ) : ℤ :=
  A358558.P4524358198685759852.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359162.P13529402606392842985

`A353557(n+1)-A359160(n+1)`
-/

namespace A359162.P13529402606392842985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) - A359160 (n + 1)

end

end A359162.P13529402606392842985

noncomputable section

/-- A359162: a(n) = 1 if n is a number of the form 4u+3 with an even number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A359162.P13529402606392842985`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359162 (n : ℕ) : ℤ :=
  A359162.P13529402606392842985.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359378.P8655727792828051139

`A359170(n+1)-A359172(n+1)`
-/

namespace A359378.P8655727792828051139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359170 (n + 1) - A359172 (n + 1)

end

end A359378.P8655727792828051139

noncomputable section

/-- A359378: Dirichlet inverse of A359377, where A359377(n) = 1 if 3*n is squarefree, otherwise 0.

Offset 1, canonical program `A359378.P8655727792828051139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359378 (n : ℕ) : ℤ :=
  A359378.P8655727792828051139.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359465.P15801582525117201442

`A008966(n+1)*A353557(n+1)`
-/

namespace A359465.P15801582525117201442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A353557 (n + 1)

end

end A359465.P15801582525117201442

noncomputable section

/-- A359465: a(n) = 1 if n is an odd squarefree number with an even number of prime factors, otherwise 0.

Offset 1, canonical program `A359465.P15801582525117201442`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359465 (n : ℕ) : ℤ :=
  A359465.P15801582525117201442.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359592.P9333331553555915030

`abs(A359591(n+1))`
-/

namespace A359592.P9333331553555915030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A359591 (n + 1)|

end

end A359592.P9333331553555915030

noncomputable section

/-- A359592: Parity (and also absolute values) of Dirichlet inverse of A035263, where A035263(n) is parity of 2-adic valuation of 2n.

Offset 1, canonical program `A359592.P9333331553555915030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359592 (n : ℕ) : ℤ :=
  A359592.P9333331553555915030.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359592.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360134.P1092804426433472261

`A356133(1+A026430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360134.P1092804426433472261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (1 + A026430 (n + 1)).toNat

end

end A360134.P1092804426433472261

noncomputable section

/-- A360134: a(n) = A356133(1 + A026430(n)).

Offset 1, canonical program `A360134.P1092804426433472261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360134 (n : ℕ) : ℤ :=
  A360134.P1092804426433472261.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360134.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360138.P2833924897830709977

`1+A026430(A356133(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360138.P2833924897830709977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A026430 (A356133 (n + 1)).toNat

end

end A360138.P2833924897830709977

noncomputable section

/-- A360138: a(n) = 1 + A026430(A356133(n)).

Offset 1, canonical program `A360138.P2833924897830709977`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360138 (n : ℕ) : ℤ :=
  A360138.P2833924897830709977.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360400.P9645885000250557637

`A356133(A360392(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360400.P9645885000250557637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (A360392 (n + 1)).toNat

end

end A360400.P9645885000250557637

noncomputable section

/-- A360400: a(n) = A356133(A360392(n)).

Offset 1, canonical program `A360400.P9645885000250557637`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360400 (n : ℕ) : ℤ :=
  A360400.P9645885000250557637.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360404.P16518747629998351864

`A360392(A356133(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360404.P16518747629998351864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (A356133 (n + 1)).toNat

end

end A360404.P16518747629998351864

noncomputable section

/-- A360404: a(n) = A360392(A356133(n)).

Offset 1, canonical program `A360404.P16518747629998351864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360404 (n : ℕ) : ℤ :=
  A360404.P16518747629998351864.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360404.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374263.P12173342319894559668

`(A049690(n+2)-1)/2`
-/

namespace A374263.P12173342319894559668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049690 (n + 2) - 1 : ℚ) / 2

end

end A374263.P12173342319894559668

noncomputable section

/-- A374263: Number of distinct primitive Pythagorean triples (j^2 - k^2, 2*j*k, j^2 + k^2) where 1 <= k < j <= n.

Offset 2, canonical program `A374263.P12173342319894559668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374263 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374263.P12173342319894559668.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378548.P2736405864805168493

`∑{d}[n+1, A353557((n+1)/#)*#]`
-/

namespace A378548.P2736405864805168493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ)

end

end A378548.P2736405864805168493

noncomputable section

/-- A378548: Sum of divisors d of n such that n/d is odd with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378548.P2736405864805168493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378548 (n : ℕ) : ℤ :=
  A378548.P2736405864805168493.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382511.P17328053456808510659

`(A069359(n+1)+A322078(n+1))/2`
-/

namespace A382511.P17328053456808510659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069359 (n + 1) + A322078 (n + 1) : ℚ) / 2

end

end A382511.P17328053456808510659

noncomputable section

/-- A382511: Expansion of Sum_{p prime} x^p / (1 - x^p)^3.

Offset 1, canonical program `A382511.P17328053456808510659`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382511.P17328053456808510659.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387219.P4420504410131079771

`(-1)^A255070(n+1)`
-/

namespace A387219.P4420504410131079771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A255070 (n + 1) : ℤ)

end

end A387219.P4420504410131079771

noncomputable section

/-- A387219: Product of the first n terms of the paperfolding sequence A034947, or the Kronecker symbol (-1|n!).

Offset 1, canonical program `A387219.P4420504410131079771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387219 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387219.P4420504410131079771.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387219.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390806.P17797365199190271958

`(n+1+A008966(n+1))*A063659(n+1)/2`
-/

namespace A390806.P17797365199190271958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) + A008966 (n + 1)) * A063659 (n + 1) : ℚ) / 2

end

end A390806.P17797365199190271958

noncomputable section

/-- A390806: The sum of the integers k from 1 to n such that gcd(n, k) is squarefree (A005117).

Offset 1, canonical program `A390806.P17797365199190271958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390806 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390806.P17797365199190271958.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295662.P12288310833318385704

`A162642(n+1)-A056169(n+1)`
-/

namespace A295662.P12288310833318385704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1) - A056169 (n + 1)

end

end A295662.P12288310833318385704

noncomputable section

/-- A295662: Number of odd exponents larger than one in the canonical prime factorization of n.

Offset 1, canonical program `A295662.P12288310833318385704`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295662 (n : ℕ) : ℤ :=
  A295662.P12288310833318385704.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300252.P5081431345107026110

`A003415(n+1)-A300251(n+1)`
-/

namespace A300252.P5081431345107026110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A300251 (n + 1)

end

end A300252.P5081431345107026110

noncomputable section

/-- A300252: Difference between arithmetic derivative (A003415) and its Möbius transform (A300251).

Offset 1, canonical program `A300252.P5081431345107026110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300252 (n : ℕ) : ℤ :=
  A300252.P5081431345107026110.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300252.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300253.P12261115453388229747

`gcd(A003415(n+1), A300251(n+1))`
-/

namespace A300253.P12261115453388229747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A300251 (n + 1))

end

end A300253.P12261115453388229747

noncomputable section

/-- A300253: GCD of arithmetic derivative (A003415) and its Möbius transform (A300251).

Offset 1, canonical program `A300253.P12261115453388229747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300253 (n : ℕ) : ℤ :=
  (A300253.P12261115453388229747.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316523.P9130007244371439540

`A162642(n+1)-A162641(n+1)`
-/

namespace A316523.P9130007244371439540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1) - A162641 (n + 1)

end

end A316523.P9130007244371439540

noncomputable section

/-- A316523: Number of odd multiplicities minus number of even multiplicities in the canonical prime factorization of n.

Offset 1, canonical program `A316523.P9130007244371439540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316523 (n : ℕ) : ℤ :=
  A316523.P9130007244371439540.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319677.P17823138448930020068

`(n+1)/A323409(n+1)`
-/

namespace A319677.P17823138448930020068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A323409 (n + 1) : ℚ)

end

end A319677.P17823138448930020068

noncomputable section

/-- A319677: Denominator of A047994(n)/n where A047994 is the unitary totient function.

Offset 1, canonical program `A319677.P17823138448930020068`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319677 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319677.P17823138448930020068.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324658.P12557822130857951693

`n+1-A324659(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324658.P12557822130857951693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A324659 (n + 1)

end

end A324658.P12557822130857951693

noncomputable section

/-- A324658: a(n) = n - A324659(n), where A324659(n) is half of bitwise-AND of 2*n and sigma(n).

Offset 1, canonical program `A324658.P12557822130857951693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324658 (n : ℕ) : ℤ :=
  A324658.P12557822130857951693.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342415.P5847240470460742720

`A000010(n+1)/A342413(n+1)`
-/

namespace A342415.P5847240470460742720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A342413 (n + 1) : ℚ)

end

end A342415.P5847240470460742720

noncomputable section

/-- A342415: a(n) = phi(n) / gcd(phi(n),A003415(n)), where A003415(n) is the arithmetic derivative of n, and phi is Euler totient function.

Offset 1, canonical program `A342415.P5847240470460742720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342415 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342415.P5847240470460742720.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342416.P843424585705305861

`gcd(A173557(n+1), A342001(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342416.P843424585705305861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173557 (n + 1)) (A342001 (n + 1))

end

end A342416.P843424585705305861

noncomputable section

/-- A342416: a(n) = gcd(A173557(n), A342001(n)).

Offset 1, canonical program `A342416.P843424585705305861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342416 (n : ℕ) : ℤ :=
  (A342416.P843424585705305861.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342416.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342459.P620409289771443930

`gcd(A048250(n+1), A342001(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342459.P620409289771443930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048250 (n + 1)) (A342001 (n + 1))

end

end A342459.P620409289771443930

noncomputable section

/-- A342459: a(n) = gcd(A048250(n), A342001(n)).

Offset 1, canonical program `A342459.P620409289771443930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342459 (n : ℕ) : ℤ :=
  (A342459.P620409289771443930.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342459.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343174.P1593472062629477177

`A004526(n+2)+A033264(n+1)`
-/

namespace A343174.P1593472062629477177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 2) + A033264 (n + 1)

end

end A343174.P1593472062629477177

noncomputable section

/-- A343174: Partial sums of paper-folding sequence A014577.

Offset 0, canonical program `A343174.P1593472062629477177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343174 (n : ℕ) : ℤ :=
  A343174.P1593472062629477177.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343227.P12175328120246538268

`A000203(n+1)/A343226(n+1)`
-/

namespace A343227.P12175328120246538268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A343227.P12175328120246538268

noncomputable section

/-- A343227: a(n) = sigma(n) / gcd(sigma(n), n+A003415(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343227.P12175328120246538268`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343227.P12175328120246538268.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344584.P9009511371490729863

`A319684(n+1)-A001065(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344584.P9009511371490729863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1) - A001065 (n + 1)

end

end A344584.P9009511371490729863

noncomputable section

/-- A344584: Difference between the inverse Möbius transform of the arithmetic derivative of n and the sum of the proper divisors of n: a(n) = A319684(n) - A001065(n).

Offset 1, canonical program `A344584.P9009511371490729863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344584 (n : ℕ) : ℤ :=
  A344584.P9009511371490729863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344584.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344756.P8531448200212779788

`A003415(n+2)/A340070(n+2)`
-/

namespace A344756.P8531448200212779788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 2) : ℚ) / (A340070 (n + 2) : ℚ)

end

end A344756.P8531448200212779788

noncomputable section

/-- A344756: a(n) = A003415(n) / gcd(A003415(n), A069359(n)).

Offset 2, canonical program `A344756.P8531448200212779788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344756 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344756.P8531448200212779788.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344757.P15343085714571016600

`A069359(n+2)/A340070(n+2)`
-/

namespace A344757.P15343085714571016600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069359 (n + 2) : ℚ) / (A340070 (n + 2) : ℚ)

end

end A344757.P15343085714571016600

noncomputable section

/-- A344757: a(n) = A069359(n) / gcd(A003415(n), A069359(n)).

Offset 2, canonical program `A344757.P15343085714571016600`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344757 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344757.P15343085714571016600.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344998.P3443638615018705273

`A342001(n+1)*A344753(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344998.P3443638615018705273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1) * A344753 (n + 1)

end

end A344998.P3443638615018705273

noncomputable section

/-- A344998: a(n) = A342001(n) * A344753(n).

Offset 1, canonical program `A344998.P3443638615018705273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344998 (n : ℕ) : ℤ :=
  A344998.P3443638615018705273.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345048.P15501208074800543925

`A342001(n+1)*A051709(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345048.P15501208074800543925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1) * A051709 (n + 1)

end

end A345048.P15501208074800543925

noncomputable section

/-- A345048: a(n) = A342001(n) * A051709(n).

Offset 1, canonical program `A345048.P15501208074800543925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345048 (n : ℕ) : ℤ :=
  A345048.P15501208074800543925.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345059.P15757506483102927457

`A129283(n+1)/A343226(n+1)`
-/

namespace A345059.P15757506483102927457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 (n + 1) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A345059.P15757506483102927457

noncomputable section

/-- A345059: a(n) = A129283(n) / gcd(sigma(n), A129283(n)), where A129283(n) is the sum of n and its arithmetic derivative.

Offset 1, canonical program `A345059.P15757506483102927457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345059 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345059.P15757506483102927457.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346244.P12938821840467746322

`n+1-A342001(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346244.P12938821840467746322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A342001 (n + 1)

end

end A346244.P12938821840467746322

noncomputable section

/-- A346244: a(n) = n - A342001(n).

Offset 1, canonical program `A346244.P12938821840467746322`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346244 (n : ℕ) : ℤ :=
  A346244.P12938821840467746322.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346422.P4569030555854337770

`(1+A014081(n))*a(A053645(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346422.P4569030555854337770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A014081 n) * a (A053645 n).toNat

end

end A346422.P4569030555854337770

noncomputable section

/-- A346422: a(n) = (1 + A014081(n))*a(A053645(n)) for n > 0 with a(0) = 1.

Offset 0, canonical program `A346422.P4569030555854337770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346422 (n : ℕ) : ℤ :=
  A346422.P4569030555854337770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346485.P14225594692106356284

`∑{d}[n+1, A008683((n+1)/#)*A342001(#)]`
-/

namespace A346485.P14225594692106356284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A342001 d

end

end A346485.P14225594692106356284

noncomputable section

/-- A346485: Möbius transform of A342001, where A342001(n) = A003415(n)/A003557(n).

Offset 1, canonical program `A346485.P14225594692106356284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346485 (n : ℕ) : ℤ :=
  A346485.P14225594692106356284.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347146.P1105541239269473015

`∑{d}[n+1, A068327(#)]`
-/

namespace A347146.P1105541239269473015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068327 d

end

end A347146.P1105541239269473015

noncomputable section

/-- A347146: a(n) = Sum_{d|n} (d^d)', where ' is the arithmetic derivative.

Offset 1, canonical program `A347146.P1105541239269473015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347146 (n : ℕ) : ℤ :=
  A347146.P1105541239269473015.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347146.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347235.P9796430336556407078

`∑{d}[n+1, A000010((n+1)/#)*A342001(#)]`
-/

namespace A347235.P9796430336556407078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A342001 d

end

end A347235.P9796430336556407078

noncomputable section

/-- A347235: Dirichlet convolution of Euler phi with A342001, where A342001(n) = A003415(n) / A003557(n).

Offset 1, canonical program `A347235.P9796430336556407078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347235 (n : ℕ) : ℤ :=
  A347235.P9796430336556407078.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347235.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347395.P11434132884089866351

`∑{d}[n+1, A008836((n+1)/#)*A342001(#)]`
-/

namespace A347395.P11434132884089866351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A342001 d

end

end A347395.P11434132884089866351

noncomputable section

/-- A347395: Dirichlet convolution of Liouville's lambda (A008836) with A342001, where A342001(n) = A003415(n)/A003557(n).

Offset 1, canonical program `A347395.P11434132884089866351`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347395 (n : ℕ) : ℤ :=
  A347395.P11434132884089866351.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347395.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347961.P14259934700239685963

`∑{d}[n+1, A342001(#)*A342001((n+1)/#)]`
-/

namespace A347961.P14259934700239685963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A342001 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347961.P14259934700239685963

noncomputable section

/-- A347961: Dirichlet convolution of A342001 with itself.

Offset 1, canonical program `A347961.P14259934700239685963`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347961 (n : ℕ) : ℤ :=
  A347961.P14259934700239685963.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347963.P2568942602520050035

`∑{d}[n+1, A003557(#)*A342001((n+1)/#)]`
-/

namespace A347963.P2568942602520050035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347963.P2568942602520050035

noncomputable section

/-- A347963: Dirichlet convolution of A342001 with A003557.

Offset 1, canonical program `A347963.P2568942602520050035`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347963 (n : ℕ) : ℤ :=
  A347963.P2568942602520050035.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348304.P16790100513106976712

`∑{d}[n+1, A068346(#)]`
-/

namespace A348304.P16790100513106976712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068346 d

end

end A348304.P16790100513106976712

noncomputable section

/-- A348304: a(n) = Sum_{d|n} d'', where d'' is the second arithmetic derivative of d (A068346).

Offset 1, canonical program `A348304.P16790100513106976712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348304 (n : ℕ) : ℤ :=
  A348304.P16790100513106976712.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348304.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348493.P12922612347308619464

`A003415(n+1)/A348492(n+1)`
-/

namespace A348493.P12922612347308619464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A348492 (n + 1) : ℚ)

end

end A348493.P12922612347308619464

noncomputable section

/-- A348493: a(n) = A003415(n) / gcd(A003415(n), A018804(n)), where A003415 is the arithmetic derivative and A018804 is Pillai's arithmetical function.

Offset 1, canonical program `A348493.P12922612347308619464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348493 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348493.P12922612347308619464.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348493.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348494.P11005774710442910739

`A348492(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348494.P11005774710442910739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A348494.P11005774710442910739

noncomputable section

/-- A348494: a(n) = A348492(n) / A003557(n), where A348492 is the GCD of the arithmetic derivative (A003415) and Pillai's arithmetical function (A018804).

Offset 1, canonical program `A348494.P11005774710442910739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348494 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348494.P11005774710442910739.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348495.P4852488823322459190

`gcd(A018804(n+1), A347130(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348495.P4852488823322459190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018804 (n + 1)) (A347130 (n + 1))

end

end A348495.P4852488823322459190

noncomputable section

/-- A348495: a(n) = gcd(A018804(n), A347130(n)), where A347130 is the Dirichlet convolution of the identity function with the arithmetic derivative of n (A003415), and A018804 is Pillai's arithmetical function.

Offset 1, canonical program `A348495.P4852488823322459190`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348495 (n : ℕ) : ℤ :=
  (A348495.P4852488823322459190.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348497.P15920549700664225963

`gcd(A003415(n+1), A347130(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348497.P15920549700664225963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A347130 (n + 1))

end

end A348497.P15920549700664225963

noncomputable section

/-- A348497: a(n) = gcd(A003415(n), A347130(n)), where A003415 is the arithmetic derivative and A347130 is its Dirichlet convolution with the identity function.

Offset 1, canonical program `A348497.P15920549700664225963`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348497 (n : ℕ) : ℤ :=
  (A348497.P15920549700664225963.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348976.P9987790780550882752

`A000010(n+1)+A300251(n+1)`
-/

namespace A348976.P9987790780550882752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A300251 (n + 1)

end

end A348976.P9987790780550882752

noncomputable section

/-- A348976: Möbius transform of A129283, which is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348976.P9987790780550882752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348976 (n : ℕ) : ℤ :=
  A348976.P9987790780550882752.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348976.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349396.P949036376249167062

`∑{d}[n+1, A055615(#)*A342001((n+1)/#)]`
-/

namespace A349396.P949036376249167062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349396.P949036376249167062

noncomputable section

/-- A349396: Dirichlet convolution of A342001 ({arithmetic derivative of n}/A003557(n)) with A055615 (Dirichlet inverse of n).

Offset 1, canonical program `A349396.P949036376249167062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349396 (n : ℕ) : ℤ :=
  A349396.P949036376249167062.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349909.P17520280238822638841

`A347870(n+1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A349909.P17520280238822638841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A347870 (n + 1) + a (n - 1)

end

end A349909.P17520280238822638841

noncomputable section

/-- A349909: Partial sums of A347870; Number of terms of A347877 (numbers k with an odd arithmetic derivative of sigma(k)) in range 1..n.

Offset 1, canonical program `A349909.P17520280238822638841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349909 (n : ℕ) : ℤ :=
  A349909.P17520280238822638841.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353555.P6127306696939932195

`A065043(n+1)-A353557(n+1)`
-/

namespace A353555.P6127306696939932195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A353557 (n + 1)

end

end A353555.P6127306696939932195

noncomputable section

/-- A353555: a(n) = 1 if n is an even number with an even number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A353555.P6127306696939932195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353555 (n : ℕ) : ℤ :=
  A353555.P6127306696939932195.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355689.P15683903993202269668

`A359156(n+1)-A359158(n+1)`
-/

namespace A355689.P15683903993202269668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359156 (n + 1) - A359158 (n + 1)

end

end A355689.P15683903993202269668

noncomputable section

/-- A355689: Dirichlet inverse of A166486, characteristic function of numbers that are not multiples of 4.

Offset 1, canonical program `A355689.P15683903993202269668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355689 (n : ℕ) : ℤ :=
  A355689.P15683903993202269668.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360692.P11101891494698958030

`A101279(n+2)-1`
-/

namespace A360692.P11101891494698958030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (n + 2) - 1

end

end A360692.P11101891494698958030

noncomputable section

/-- A360692: a(0) = 0. Thereafter a(n+1) = a(a(n)) if a(n) has not occurred previously, otherwise a(n+1) = n - 1 - a(n-1).

Offset 0, canonical program `A360692.P11101891494698958030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360692 (n : ℕ) : ℤ :=
  A360692.P11101891494698958030.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362412.P10869923801910997708

`(A001222(n+1)-A162642(n+1))/2`
-/

namespace A362412.P10869923801910997708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - A162642 (n + 1) : ℚ) / 2

end

end A362412.P10869923801910997708

noncomputable section

/-- A362412: The number of prime factors of the square root of the largest square dividing n, counted with multiplicity.

Offset 1, canonical program `A362412.P10869923801910997708`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A362412.P10869923801910997708.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366600.P7705734904773832928

`(1+A033264(n))*a(A053645(n))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366600.P7705734904773832928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 + A033264 n) * a (A053645 n).toNat

end

end A366600.P7705734904773832928

noncomputable section

/-- A366600: a(n) = (1 + A033264(n))*a(A053645(n)) for n > 0 with a(0) = 1.

Offset 0, canonical program `A366600.P7705734904773832928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366600 (n : ℕ) : ℤ :=
  A366600.P7705734904773832928.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368921.P16218200472489161701

`A003415(n)-A068346(n)`
-/

namespace A368921.P16218200472489161701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n - A068346 n

end

end A368921.P16218200472489161701

noncomputable section

/-- A368921: a(n) = n' - n'', where n' is the arithmetic derivative of n, A003415(n) and n'' is its second arithmetic derivative, A068346(n).

Offset 0, canonical program `A368921.P16218200472489161701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368921 (n : ℕ) : ℤ :=
  A368921.P16218200472489161701.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368994.P10252783783940313295

`A121262(A342001(n+1))`
-/

namespace A368994.P10252783783940313295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A342001 (n + 1)).toNat

end

end A368994.P10252783783940313295

noncomputable section

/-- A368994: a(n) = 1 if A342001(k) is a multiple of four, and 0 otherwise.

Offset 1, canonical program `A368994.P10252783783940313295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368994 (n : ℕ) : ℤ :=
  A368994.P10252783783940313295.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369008.P206606723966136315

`A085731(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369008.P206606723966136315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085731 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A369008.P206606723966136315

noncomputable section

/-- A369008: a(n) = A085731(n) / A003557(n).

Offset 1, canonical program `A369008.P206606723966136315`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369008.P206606723966136315.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369669.P5620005508573429478

`gcd(A003415(n), A068346(n))`
-/

namespace A369669.P5620005508573429478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 n) (A068346 n)

end

end A369669.P5620005508573429478

noncomputable section

/-- A369669: The greatest common divisor of the first and the second arithmetic derivative of n.

Offset 0, canonical program `A369669.P5620005508573429478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369669 (n : ℕ) : ℤ :=
  (A369669.P5620005508573429478.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369669.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373374.P7659164950999126342

`A059841(A373364(n+1))`
-/

namespace A373374.P7659164950999126342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A373364 (n + 1)).toNat

end

end A373374.P7659164950999126342

noncomputable section

/-- A373374: a(n) = 1 if both A001414(n) and A003415(n) are even, otherwise 0, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373374.P7659164950999126342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373374 (n : ℕ) : ℤ :=
  A373374.P7659164950999126342.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378542.P16518719972786175247

`A000203(n+1)-A378543(n+1)`
-/

namespace A378542.P16518719972786175247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378543 (n + 1)

end

end A378542.P16518719972786175247

noncomputable section

/-- A378542: Sum of divisors d of n such that n/d has an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378542.P16518719972786175247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378542 (n : ℕ) : ℤ :=
  A378542.P16518719972786175247.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382723.P441862081197136108

`(A033264(n)+2)*2^(A000120(n)-1)`
-/

namespace A382723.P441862081197136108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033264 n + 2 : ℚ) * (2 : ℚ) ^ (A000120 n - 1 : ℤ)

end

end A382723.P441862081197136108

noncomputable section

/-- A382723: Number of entries in the n-th row of Pascal's triangle not divisible by 4.

Offset 0, canonical program `A382723.P441862081197136108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382723 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382723.P441862081197136108.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384056.P13183105280516576560

`(n+1)*A047994(n+1)/A384055(n+1)`
-/

namespace A384056.P13183105280516576560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A047994 (n + 1) : ℚ) / (A384055 (n + 1) : ℚ)

end

end A384056.P13183105280516576560

noncomputable section

/-- A384056: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a power of 2.

Offset 1, canonical program `A384056.P13183105280516576560`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384056 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384056.P13183105280516576560.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390803.P15310609080008210001

`(n+1+A354354(n+1))*A384042(n+1)/2`
-/

namespace A390803.P15310609080008210001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) + A354354 (n + 1)) * A384042 (n + 1) : ℚ) / 2

end

end A390803.P15310609080008210001

noncomputable section

/-- A390803: The sum of the integers k from 1 to n such that gcd(n, k) is a 5-rough number (A007310).

Offset 1, canonical program `A390803.P15310609080008210001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390803 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390803.P15310609080008210001.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390803.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393435.P12847349373595133276

`(-1)^A033264(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393435.P12847349373595133276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A033264 n : ℤ)

end

end A393435.P12847349373595133276

noncomputable section

/-- A393435: a(n) = (-1)^A033264(n).

Offset 0, canonical program `A393435.P12847349373595133276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393435 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393435.P12847349373595133276.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393435.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397887.P4753864704729239179

`n+1+a(A026238(n+1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397887.P4753864704729239179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A026238 (n + 1) - 1).toNat

end

end A397887.P4753864704729239179

noncomputable section

/-- A397887: a(1) = 1; a(n) = n + a(A026238(n)) for n > 1.

Offset 1, canonical program `A397887.P4753864704729239179`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397887 (n : ℕ) : ℤ :=
  (A397887.P4753864704729239179.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400248.P4403918635695598036

`∑{d}[n+1, A055615((n+1)/#)*A085731(#)]`
-/

namespace A400248.P4403918635695598036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A085731 d

end

end A400248.P4403918635695598036

noncomputable section

/-- A400248: Dirichlet convolution of A085731 with A055615 (Dirichlet inverse of n), where A085731(n) = gcd(n,n'), and n' is the arithmetic derivative of n.

Offset 1, canonical program `A400248.P4403918635695598036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400248 (n : ℕ) : ℤ :=
  A400248.P4403918635695598036.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400249.P16858583021599629

`∑{d}[n+1, A008683((n+1)/#)*A085731(#)]`
-/

namespace A400249.P16858583021599629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A085731 d

end

end A400249.P16858583021599629

noncomputable section

/-- A400249: Möbius transform of A085731, where A085731(n) = gcd(n,n'), and n' is the arithmetic derivative of n.

Offset 1, canonical program `A400249.P16858583021599629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400249 (n : ℕ) : ℤ :=
  A400249.P16858583021599629.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295316.P1217032388411146580

`A005361(n+1)%2`
-/

namespace A295316.P1217032388411146580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005361 (n + 1)) 2

end

end A295316.P1217032388411146580

noncomputable section

/-- A295316: a(n) = 1 if there are no even exponents in the prime factorization of n, 0 otherwise.

Offset 1, canonical program `A295316.P1217032388411146580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295316 (n : ℕ) : ℤ :=
  A295316.P1217032388411146580.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295316.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295664.P6712857258460992871

`A007814(A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295664.P6712857258460992871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000005 (n + 1)).toNat

end

end A295664.P6712857258460992871

noncomputable section

/-- A295664: Exponent of the highest power of 2 dividing number of divisors of n: a(n) = A007814(A000005(n)); 2-adic valuation of tau(n).

Offset 1, canonical program `A295664.P6712857258460992871`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A000005(n+1))` (program `A295664.P6712857258460992871`, by `A295664.P6712857258460992871.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A295664 (n : ℕ) : ℤ :=
  A295664.P6712857258460992871.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A000005(n+1))` (program `A295664.P6712857258460992871`, by `A295664.P6712857258460992871.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A295664.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A296306.P7064557066489787750

`(4^(A007814(n+1)+1)-1)/3`
-/

namespace A296306.P7064557066489787750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) ^ (A007814 (n + 1) + 1 : ℤ) - 1) / 3

end

end A296306.P7064557066489787750

noncomputable section

/-- A296306: a(n) = A001157(n)/A050999(n).

Offset 1, canonical program `A296306.P7064557066489787750`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296306.P7064557066489787750.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A296966.P18250778610313653592

`(n+1)*A023645(n+1)`
-/

namespace A296966.P18250778610313653592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023645 (n + 1)

end

end A296966.P18250778610313653592

noncomputable section

/-- A296966: Sum of all the parts in the partitions of n into two distinct parts such that the smaller part divides the larger.

Offset 1, canonical program `A296966.P18250778610313653592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296966 (n : ℕ) : ℤ :=
  A296966.P18250778610313653592.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A298735.P15480129147772865535

`A046951(A000265(n+1))`
-/

namespace A298735.P15480129147772865535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A000265 (n + 1)).toNat

end

end A298735.P15480129147772865535

noncomputable section

/-- A298735: Number of odd squares dividing n.

Offset 1, canonical program `A298735.P15480129147772865535`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A298735 (n : ℕ) : ℤ :=
  A298735.P15480129147772865535.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A298735.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A299251.P8330585234016012379

`(A006218(A002620(n+2))-A000217(n+1))/2`
-/

namespace A299251.P8330585234016012379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 (A002620 (n + 2)).toNat - A000217 (n + 1) : ℚ) / 2

end

end A299251.P8330585234016012379

noncomputable section

/-- A299251: a(n) = ((Sum_{k=1..floor((n+1)^2/4)} d(k)) - T(n)) / 2, where d(n) = number of divisors of n (A000005) and T(n) = the n-th triangular number (A000217).

Offset 1, canonical program `A299251.P8330585234016012379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A299251.P8330585234016012379.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A299990.P6118966537885348026

`A243822(n+1)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A299990.P6118966537885348026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) - A000005 (n + 1)

end

end A299990.P6118966537885348026

noncomputable section

/-- A299990: a(n) = A243822(n) - A000005(n).

Offset 1, canonical program `A299990.P6118966537885348026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299990 (n : ℕ) : ℤ :=
  A299990.P6118966537885348026.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A303278.P12937793510976264127

`A005361(n+1)^A007947(n+1)`
-/

namespace A303278.P12937793510976264127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) ^ (A007947 (n + 1) : ℤ)

end

end A303278.P12937793510976264127

noncomputable section

/-- A303278: If n = Product_j p_j^k_j where the p_j are distinct primes then a(n) = (Product_j k_j)^(Product_j p_j).

Offset 1, canonical program `A303278.P12937793510976264127`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303278 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A303278.P12937793510976264127.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303278.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304407.P14639406114947155212

`A005361(n+1)*A173557(n+1)`
-/

namespace A304407.P14639406114947155212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A173557 (n + 1)

end

end A304407.P14639406114947155212

noncomputable section

/-- A304407: If n = Product (p_j^k_j) then a(n) = Product ((p_j - 1)*k_j).

Offset 1, canonical program `A304407.P14639406114947155212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304407 (n : ℕ) : ℤ :=
  A304407.P14639406114947155212.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304411.P4036889141773001327

`A005361(n+1)*A048250(n+1)`
-/

namespace A304411.P4036889141773001327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A048250 (n + 1)

end

end A304411.P4036889141773001327

noncomputable section

/-- A304411: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)*k_j).

Offset 1, canonical program `A304411.P4036889141773001327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304411 (n : ℕ) : ℤ :=
  A304411.P4036889141773001327.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306328.P7079305387791710767

`A008472(n+1)^A005361(n+1)`
-/

namespace A306328.P7079305387791710767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) ^ (A005361 (n + 1) : ℤ)

end

end A306328.P7079305387791710767

noncomputable section

/-- A306328: If n = Product (p_j^k_j) then a(n) = Sum (p_j)^Product (k_j).

Offset 1, canonical program `A306328.P7079305387791710767`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306328 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306328.P7079305387791710767.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308360.P14482252966188849651

`A064549(n+1)^(A005361(n+1)/2)`
-/

namespace A308360.P14482252966188849651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℝ) ^ ((A005361 (n + 1) : ℚ) / 2 : ℝ)

end

end A308360.P14482252966188849651

noncomputable section

/-- A308360: Product of positive divisors d of n that are divisible by every prime that divides n.

Offset 1, canonical program `A308360.P14482252966188849651`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308360 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308360.P14482252966188849651.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309507.P1026939547968616405

`A092517(n+1)-A063440(n+1)-1`
-/

namespace A309507.P1026939547968616405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 1) - A063440 (n + 1) - 1

end

end A309507.P1026939547968616405

noncomputable section

/-- A309507: Number of ways the n-th triangular number T(n) = A000217(n) can be written as the difference of two positive triangular numbers.

Offset 1, canonical program `A309507.P1026939547968616405`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309507 (n : ℕ) : ℤ :=
  A309507.P1026939547968616405.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309732.P16927828332471193003

`(n+1)*A152211(n+1)/2`
-/

namespace A309732.P16927828332471193003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A152211 (n + 1) : ℚ) / 2

end

end A309732.P16927828332471193003

noncomputable section

/-- A309732: Expansion of Sum_{k>=1} k^2 * x^k/(1 - x^k)^3.

Offset 1, canonical program `A309732.P16927828332471193003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309732 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309732.P16927828332471193003.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309732.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A318459.P16245640249373000386

`gcd(n+1, A009213(n+1))`
-/

namespace A318459.P16245640249373000386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A009213 (n + 1))

end

end A318459.P16245640249373000386

noncomputable section

/-- A318459: a(n) = gcd(n, tau(n), phi(n)), where tau = A000005 and phi = A000010.

Offset 1, canonical program `A318459.P16245640249373000386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318459 (n : ℕ) : ℤ :=
  (A318459.P16245640249373000386.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318459.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319683.P12610436916634477773

`A319684(n+1)-A003415(n+1)`
-/

namespace A319683.P12610436916634477773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1) - A003415 (n + 1)

end

end A319683.P12610436916634477773

noncomputable section

/-- A319683: Sum of A003415(d) over the proper divisors d of n, where A003415 is arithmetic derivative.

Offset 1, canonical program `A319683.P12610436916634477773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319683 (n : ℕ) : ℤ :=
  A319683.P12610436916634477773.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A322327.P7023019064319529347

`A005361(n+1)*A034444(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322327.P7023019064319529347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A034444 (n + 1)

end

end A322327.P7023019064319529347

noncomputable section

/-- A322327: a(n) = A005361(n) * A034444(n).

Offset 1, canonical program `A322327.P7023019064319529347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322327 (n : ℕ) : ℤ :=
  A322327.P7023019064319529347.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A322328.P406640115135084941

`A005361(n+1)*4^A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322328.P406640115135084941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) * (4 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A322328.P406640115135084941

noncomputable section

/-- A322328: a(n) = A005361(n) * 4^A001221(n) for n > 0.

Offset 1, canonical program `A322328.P406640115135084941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322328 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322328.P406640115135084941.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A322979.P6933631638193226101

`∑{d}[n+1, A009191(#)]`
-/

namespace A322979.P6933631638193226101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A009191 d

end

end A322979.P6933631638193226101

noncomputable section

/-- A322979: a(n) = Sum A009191(d) over the divisors d of n, where A009191(x) = gcd(x, A000005(x)), and A000005(x) gives the number of divisors of x.

Offset 1, canonical program `A322979.P6933631638193226101`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322979 (n : ℕ) : ℤ :=
  A322979.P6933631638193226101.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322979.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A323158.P16175357172864216776

`A049820(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323158.P16175357172864216776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049820 (n + 1)) 2

end

end A323158.P16175357172864216776

noncomputable section

/-- A323158: If n is a square, a(n) = 1-(n mod 2), otherwise a(n) = (n mod 2); a(n) = A049820(n) mod 2, where A049820(n) = n - number of divisors of n.

Offset 1, canonical program `A323158.P16175357172864216776`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A049820(n+1)%2` (program `A323158.P16175357172864216776`, by `A323158.P16175357172864216776.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A323158 (n : ℕ) : ℤ :=
  A323158.P16175357172864216776.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A049820(n+1)%2` (program `A323158.P16175357172864216776`, by `A323158.P16175357172864216776.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A323158.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A324121.P5058798757553332466

`gcd(A000203(n+1), A038040(n+1))`
-/

namespace A324121.P5058798757553332466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A038040 (n + 1))

end

end A324121.P5058798757553332466

noncomputable section

/-- A324121: a(n) = gcd(n*d(n), sigma(n)), where d(n) = number of divisors of n (A000005) and sigma(n) = sum of divisors of n (A000203).

Offset 1, canonical program `A324121.P5058798757553332466`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A324121.anchor (n : ℕ) (hn : 1 ≤ n) : A324121 n = ((Nat.gcd (n * n.divisors.card) (∑ d ∈ n.divisors, d) : ℕ) : ℤ)` in `Proof.A324.A324121`. -/
def A324121 (n : ℕ) : ℤ :=
  (A324121.P5058798757553332466.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A324121.anchor (n : ℕ) (hn : 1 ≤ n) : A324121 n = ((Nat.gcd (n * n.divisors.card) (∑ d ∈ n.divisors, d) : ℕ) : ℤ)` in `Proof.A324.A324121`. -/
def A324121.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A324379.P10721248754641140736

`A007814(A005187(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324379.P10721248754641140736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005187 (n + 1)).toNat

end

end A324379.P10721248754641140736

noncomputable section

/-- A324379: a(n) = A007814(A005187(n)).

Offset 1, canonical program `A324379.P10721248754641140736`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A005187(n+1))` (program `A324379.P10721248754641140736`, by `A324379.P10721248754641140736.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A324379 (n : ℕ) : ℤ :=
  A324379.P10721248754641140736.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A005187(n+1))` (program `A324379.P10721248754641140736`, by `A324379.P10721248754641140736.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A324379.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A324902.P6713213474126694737

`A007814(A318456(n+1))`
-/

namespace A324902.P6713213474126694737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318456 (n + 1)).toNat

end

end A324902.P6713213474126694737

noncomputable section

/-- A324902: The 2-adic valuation of A318456(n), where A318456(n) = n OR (sigma(n)-n).

Offset 1, canonical program `A324902.P6713213474126694737`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324902 (n : ℕ) : ℤ :=
  A324902.P6713213474126694737.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324906.P2435466228713464625

`A007814(1+A318466(n+1))`
-/

namespace A324906.P2435466228713464625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A318466 (n + 1)).toNat

end

end A324906.P2435466228713464625

noncomputable section

/-- A324906: Number of trailing 1-bits in the binary representation of A318466(n), where A318466(n) = 2*n OR sigma(n).

Offset 1, canonical program `A324906.P2435466228713464625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324906 (n : ℕ) : ℤ :=
  A324906.P2435466228713464625.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324906.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325837.P10403141756841379382

`A046951(A003557(n+1))`
-/

namespace A325837.P10403141756841379382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A003557 (n + 1)).toNat

end

end A325837.P10403141756841379382

noncomputable section

/-- A325837: The number of coreful divisors of n that are exponentially odd numbers (A268335).

Offset 1, canonical program `A325837.P10403141756841379382`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325837 (n : ℕ) : ℤ :=
  A325837.P10403141756841379382.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325837.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325838.P16251937646773924265

`A007955(A000217(n+1))`
-/

namespace A325838.P16251937646773924265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000217 (n + 1)).toNat

end

end A325838.P16251937646773924265

noncomputable section

/-- A325838: a(n) is the product of divisors of the n-th triangular number.

Offset 1, canonical program `A325838.P16251937646773924265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325838 (n : ℕ) : ℤ :=
  A325838.P16251937646773924265.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326714.P2677261734638902469

`A007814(n+1)+A161680(n+1)`
-/

namespace A326714.P2677261734638902469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A161680 (n + 1)

end

end A326714.P2677261734638902469

noncomputable section

/-- A326714: a(n) = binomial(n,2) + (2-adic valuation of n).

Offset 1, canonical program `A326714.P2677261734638902469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326714 (n : ℕ) : ℤ :=
  A326714.P2677261734638902469.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A327326.P15839165817513930619

`A006218(n)-A005187(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327326.P15839165817513930619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A005187 n

end

end A327326.P15839165817513930619

noncomputable section

/-- A327326: a(n) = A006218(n) - A005187(n).

Offset 0, canonical program `A327326.P15839165817513930619`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006218(n)-A005187(n)` (program `A327326.P15839165817513930619`, by `A327326.P15839165817513930619.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A327326 (n : ℕ) : ℤ :=
  A327326.P15839165817513930619.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006218(n)-A005187(n)` (program `A327326.P15839165817513930619`, by `A327326.P15839165817513930619.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A327326.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A327715.P7624630360277358397

`1+a(n-A009191(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327715.P7624630360277358397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A009191 n).toNat

end

end A327715.P7624630360277358397

noncomputable section

/-- A327715: a(0) = 0; for n >= 1, a(n) = 1 + a(n-A009191(n)).

Offset 0, canonical program `A327715.P7624630360277358397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327715 (n : ℕ) : ℤ :=
  (A327715.P7624630360277358397.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327715.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A330866.P8751946144507611148

`(n+1)*A065608(n+1)`
-/

namespace A330866.P8751946144507611148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065608 (n + 1)

end

end A330866.P8751946144507611148

noncomputable section

/-- A330866: a(n) = Sum_{d|n, d<n} (n/d) * (n-d).

Offset 1, canonical program `A330866.P8751946144507611148`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330866 (n : ℕ) : ℤ :=
  A330866.P8751946144507611148.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330866.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A333645.P9435485821383184367

`∑{d}[n+1, A023900(#)*A062949((n+1)/#)]`
-/

namespace A333645.P9435485821383184367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A062949 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333645.P9435485821383184367

noncomputable section

/-- A333645: a(n) = Sum_{d|n} uphi(d).

Offset 1, canonical program `A333645.P9435485821383184367`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A333645 (n : ℕ) : ℤ :=
  A333645.P9435485821383184367.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A333645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A335567.P3613381038398877744

`A000217(A049820(n+1))`
-/

namespace A335567.P3613381038398877744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A049820 (n + 1)).toNat

end

end A335567.P3613381038398877744

noncomputable section

/-- A335567: Number of distinct positive integer pairs (s,t) such that s <= t < n where neither s nor t divides n.

Offset 1, canonical program `A335567.P3613381038398877744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335567 (n : ℕ) : ℤ :=
  A335567.P3613381038398877744.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336318.P2686538755063264344

`A000188(A038040(n+1))`
-/

namespace A336318.P2686538755063264344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A038040 (n + 1)).toNat

end

end A336318.P2686538755063264344

noncomputable section

/-- A336318: Square root of the largest square dividing n*d(n), where d(n) is the number of divisors of n, A000005.

Offset 1, canonical program `A336318.P2686538755063264344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336318 (n : ℕ) : ℤ :=
  A336318.P2686538755063264344.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336722.P17887129013685471247

`gcd(A007955(n+1), A009205(n+1))`
-/

namespace A336722.P17887129013685471247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007955 (n + 1)) (A009205 (n + 1))

end

end A336722.P17887129013685471247

noncomputable section

/-- A336722: a(n) = gcd(tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A336722.P17887129013685471247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336722 (n : ℕ) : ℤ :=
  (A336722.P17887129013685471247.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336937.P4577035631224528791

`A286357(n+1)-1`
-/

namespace A336937.P4577035631224528791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1) - 1

end

end A336937.P4577035631224528791

noncomputable section

/-- A336937: The 2-adic valuation of sigma(n), the sum of divisors of n.

Offset 1, canonical program `A336937.P4577035631224528791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336937 (n : ℕ) : ℤ :=
  A336937.P4577035631224528791.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337195.P206722843149984959

`A007814(1+A000265(A000203(n+1)))`
-/

namespace A337195.P206722843149984959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A000265 (A000203 (n + 1)).toNat).toNat

end

end A337195.P206722843149984959

noncomputable section

/-- A337195: The 2-adic valuation of 1+A000265(sigma(n)), where A000265 gives the odd part.

Offset 1, canonical program `A337195.P206722843149984959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337195 (n : ℕ) : ℤ :=
  A337195.P206722843149984959.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337362.P16917080066168618758

`A184389(n+1)-A129308(n+1)`
-/

namespace A337362.P16917080066168618758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - A129308 (n + 1)

end

end A337362.P16917080066168618758

noncomputable section

/-- A337362: Number of pairs of divisors of n, (d1,d2), with d1 <= d2 such that d1 and d2 are nonconsecutive integers.

Offset 1, canonical program `A337362.P16917080066168618758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337362 (n : ℕ) : ℤ :=
  A337362.P16917080066168618758.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337362.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337363.P11598784413067799807

`A066446(n+1)-A129308(n+1)`
-/

namespace A337363.P11598784413067799807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) - A129308 (n + 1)

end

end A337363.P11598784413067799807

noncomputable section

/-- A337363: a(n) = Sum_{d1|n, d2|n, d1<d2} (1 - [d1 + 1 = d2]), where [ ] is the Iverson bracket.

Offset 1, canonical program `A337363.P11598784413067799807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337363 (n : ℕ) : ℤ :=
  A337363.P11598784413067799807.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337532.P17091941672721247953

`A000217(A000005(A000265(n+1)))+A000217(A000005(A000265(n+1))*A007814(n+1))`
-/

namespace A337532.P17091941672721247953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (A000265 (n + 1)).toNat).toNat + A000217 (A000005 (A000265 (n + 1)).toNat * A007814 (n + 1)).toNat

end

end A337532.P17091941672721247953

noncomputable section

/-- A337532: a(n) = Sum_{d1|n, d2|n, d1<=d2} [(d1 mod 2) = (d2 mod 2)], where [ ] is the Iverson bracket.

Offset 1, canonical program `A337532.P17091941672721247953`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337532 (n : ℕ) : ℤ :=
  A337532.P17091941672721247953.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A337923.P10900891668975764083

`A007814(A000045(n+1))`
-/

namespace A337923.P10900891668975764083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000045 (n + 1)).toNat

end

end A337923.P10900891668975764083

noncomputable section

/-- A337923: a(n) is the exponent of the highest power of 2 dividing the n-th Fibonacci number.

Offset 1, canonical program `A337923.P10900891668975764083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337923 (n : ℕ) : ℤ :=
  A337923.P10900891668975764083.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A337923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A338236.P4454191647509277163

`A000196(n+1)-A046951(n+1)`
-/

namespace A338236.P4454191647509277163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - A046951 (n + 1)

end

end A338236.P4454191647509277163

noncomputable section

/-- A338236: Number of numbers less than or equal to sqrt(n) whose square does not divide n.

Offset 1, canonical program `A338236.P4454191647509277163`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338236 (n : ℕ) : ℤ :=
  A338236.P4454191647509277163.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A338506.P3325007894870132421

`A100587(n+1)+1`
-/

namespace A338506.P3325007894870132421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100587 (n + 1) + 1

end

end A338506.P3325007894870132421

noncomputable section

/-- A338506: a(n) is the number of subsets of divisors of n.

Offset 1, canonical program `A338506.P3325007894870132421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338506 (n : ℕ) : ℤ :=
  A338506.P3325007894870132421.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A338576.P8156366932210890769

`(n+1)*A007955(n+1)`
-/

namespace A338576.P8156366932210890769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007955 (n + 1)

end

end A338576.P8156366932210890769

noncomputable section

/-- A338576: a(n) = n * pod(n) where pod(n) = the product of divisors of n (A007955).

Offset 1, canonical program `A338576.P8156366932210890769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338576 (n : ℕ) : ℤ :=
  A338576.P8156366932210890769.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A341276.P16530414387472096334

`1+A028896(n)-A006218(n)`
-/

namespace A341276.P16530414387472096334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A028896 n - A006218 n

end

end A341276.P16530414387472096334

noncomputable section

/-- A341276: a(n) = 1 + 3*n*(n+1) - Sum_{k=1..n} d(k), where d(k) is the number of divisors of k.

Offset 0, canonical program `A341276.P16530414387472096334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341276 (n : ℕ) : ℤ :=
  A341276.P16530414387472096334.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341276.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344299.P6650277037551991274

`2*A046951(4*(n+1))-3*A046951(n+1)`
-/

namespace A344299.P6650277037551991274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046951 (4 * (n + 1)) - 3 * A046951 (n + 1)

end

end A344299.P6650277037551991274

noncomputable section

/-- A344299: Expansion of Sum_{k>=1} (-1)^(k+1) * x^(k^2) / (1 - x^(k^2)).

Offset 1, canonical program `A344299.P6650277037551991274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344299 (n : ℕ) : ℤ :=
  A344299.P6650277037551991274.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346070.P15866064965806631537

`A007814(n+1)%4`
-/

namespace A346070.P15866064965806631537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (n + 1)) 4

end

end A346070.P15866064965806631537

noncomputable section

/-- A346070: Symbolic code for the corner turns in the Lévy dragon curve.

Offset 1, canonical program `A346070.P15866064965806631537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346070 (n : ℕ) : ℤ :=
  A346070.P15866064965806631537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346070.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347094.P17942219228521589400

`A038040(n+1)+A328722(n+1)`
-/

namespace A347094.P17942219228521589400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + A328722 (n + 1)

end

end A347094.P17942219228521589400

noncomputable section

/-- A347094: Sum of A038040 (convolution of sigma with Euler phi) and its Dirichlet inverse.

Offset 1, canonical program `A347094.P17942219228521589400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347094 (n : ℕ) : ℤ :=
  A347094.P17942219228521589400.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347094.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347129.P12459740348261300707

`A347130(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347129.P12459740348261300707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347130 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347129.P12459740348261300707

noncomputable section

/-- A347129: a(n) = A347130(n) / A003557(n), where A347130 is the Dirichlet convolution of the identity function with the arithmetic derivative of n.

Offset 1, canonical program `A347129.P12459740348261300707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347129 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A347129.P12459740348261300707.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347149.P4485454136861303499

`A008966(n+1)*A048691(n+1)`
-/

namespace A347149.P4485454136861303499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A048691 (n + 1)

end

end A347149.P4485454136861303499

noncomputable section

/-- A347149: Dirichlet g.f.: Product_{primes p} (1 + 3/p^s).

Offset 1, canonical program `A347149.P4485454136861303499`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347149 (n : ℕ) : ℤ :=
  A347149.P4485454136861303499.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348177.P4634512169973297206

`ceil((A046798(n+1)-2)/2)`
-/

namespace A348177.P4634512169973297206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046798 (n + 1) - 2 : ℚ) / 2⌉

end

end A348177.P4634512169973297206

noncomputable section

/-- A348177: a(n) is the number of pair of positive integers (x, y) with 1 <= x <= y such that sum s = x + y and product p = x * y satisfy s + p = 2^n, with n > 0.

Offset 1, canonical program `A348177.P4634512169973297206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348177 (n : ℕ) : ℤ :=
  A348177.P4634512169973297206.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348177.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348513.P206487317806841830

`n+1-A254503(n+1)`
-/

namespace A348513.P206487317806841830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A254503 (n + 1)

end

end A348513.P206487317806841830

noncomputable section

/-- A348513: Möbius transform of A048146, the sum of non-unitary divisors of n.

Offset 1, canonical program `A348513.P206487317806841830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348513 (n : ℕ) : ℤ :=
  A348513.P206487317806841830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349123.P12409960004387997580

`∑{d}[n+1, A038040((n+1)/#)*A003415(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349123.P12409960004387997580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A003415 d

end

end A349123.P12409960004387997580

noncomputable section

/-- A349123: a(n) = Sum_{d|n} A038040(n/d) * A003415(d), where A038040(n) = n*tau(n), and A003415 is the arithmetic derivative of n.

Offset 1, canonical program `A349123.P12409960004387997580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349123 (n : ℕ) : ℤ :=
  A349123.P12409960004387997580.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349212.P10495563625750167007

`A001227(n+1)*(n+1+A007814(n+1))`
-/

namespace A349212.P10495563625750167007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * ((n + 1 : ℤ) + A007814 (n + 1))

end

end A349212.P10495563625750167007

noncomputable section

/-- A349212: a(n) = Sum_{d|n} n^(d mod 2).

Offset 1, canonical program `A349212.P10495563625750167007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349212 (n : ℕ) : ℤ :=
  A349212.P10495563625750167007.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349213.P11981718417061897043

`A001227(n+1)*(1+(n+1)*A007814(n+1))`
-/

namespace A349213.P11981718417061897043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * (1 + (n + 1 : ℤ) * A007814 (n + 1))

end

end A349213.P11981718417061897043

noncomputable section

/-- A349213: a(n) = Sum_{d|n} n^((d+1) mod 2).

Offset 1, canonical program `A349213.P11981718417061897043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349213 (n : ℕ) : ℤ :=
  A349213.P11981718417061897043.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349658.P4827521432200241691

`A000005(n+1)-A336041(n+1)`
-/

namespace A349658.P4827521432200241691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A336041 (n + 1)

end

end A349658.P4827521432200241691

noncomputable section

/-- A349658: Number of nonrefactorable divisors of n.

Offset 1, canonical program `A349658.P4827521432200241691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349658 (n : ℕ) : ℤ :=
  A349658.P4827521432200241691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349659.P4651749158989321582

`A000203(n+1)-A335182(n+1)`
-/

namespace A349659.P4651749158989321582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A335182 (n + 1)

end

end A349659.P4651749158989321582

noncomputable section

/-- A349659: Sum of the nonrefactorable divisors of n.

Offset 1, canonical program `A349659.P4651749158989321582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349659 (n : ℕ) : ℤ :=
  A349659.P4651749158989321582.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350105.P14782711713728949417

`2^n-A350102(n)`
-/

namespace A350105.P14782711713728949417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A350102 n

end

end A350105.P14782711713728949417

noncomputable section

/-- A350105: Number of subsets of the initial segment of the natural numbers strictly below n which are not self-measuring. Number of subsets S of [n] with S != distset(S).

Offset 0, canonical program `A350105.P14782711713728949417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350105 (n : ℕ) : ℤ :=
  A350105.P14782711713728949417.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350159.P901158934797568537

`A099777(n+1)+A000203(n+1)`
-/

namespace A350159.P901158934797568537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) + A000203 (n + 1)

end

end A350159.P901158934797568537

noncomputable section

/-- A350159: Number of subgroups of the dicyclic group Dic_n.

Offset 1, canonical program `A350159.P901158934797568537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350159 (n : ℕ) : ℤ :=
  A350159.P901158934797568537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351355.P11606374728532719925

`(n+1)*(n+2)+A006218(n+1)-A006218(2*(n+1))`
-/

namespace A351355.P11606374728532719925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) + A006218 (n + 1) - A006218 (2 * (n + 1))

end

end A351355.P11606374728532719925

noncomputable section

/-- A351355: Number of ways the numbers from 1..n do not divide numbers from n+1..2n.

Offset 1, canonical program `A351355.P11606374728532719925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351355 (n : ℕ) : ℤ :=
  A351355.P11606374728532719925.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351362.P3275431609669981014

`(n+1)*(n+2)-1+A006218(n)-A006218(2*(n+1)-1)`
-/

namespace A351362.P3275431609669981014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - 1 + A006218 n - A006218 (2 * (n + 1) - 1)

end

end A351362.P3275431609669981014

noncomputable section

/-- A351362: Number of ways the numbers from 1..n do not divide the numbers from n..2n-1.

Offset 1, canonical program `A351362.P3275431609669981014`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351362 (n : ℕ) : ℤ :=
  A351362.P3275431609669981014.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351362.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351408.P16840462470180952888

`A048105(n+1)-A046951(n+1)+2`
-/

namespace A351408.P16840462470180952888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) - A046951 (n + 1) + 2

end

end A351408.P16840462470180952888

noncomputable section

/-- A351408: Number of divisors of n that are either trivial or are nonsquares with a square divisor > 1.

Offset 1, canonical program `A351408.P16840462470180952888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351408 (n : ℕ) : ℤ :=
  A351408.P16840462470180952888.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351408.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351414.P15953390987188253325

`A048105(n+1)+A361205(n+1)`
-/

namespace A351414.P15953390987188253325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + A361205 (n + 1)

end

end A351414.P15953390987188253325

noncomputable section

/-- A351414: Number of divisors of n that are either prime or have at least 1 square divisor > 1 and at least two distinct prime factors.

Offset 1, canonical program `A351414.P15953390987188253325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351414 (n : ℕ) : ℤ :=
  A351414.P15953390987188253325.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351417.P10622450361574635402

`A048105(n+1)+A001221(n+1)`
-/

namespace A351417.P10622450361574635402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + A001221 (n + 1)

end

end A351417.P10622450361574635402

noncomputable section

/-- A351417: Number of divisors of n that are either prime or have at least one square divisor > 1.

Offset 1, canonical program `A351417.P10622450361574635402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351417 (n : ℕ) : ℤ :=
  A351417.P10622450361574635402.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351417.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351521.P4143436504143602524

`A008966(n+1)*A035116(n+1)`
-/

namespace A351521.P4143436504143602524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A035116 (n + 1)

end

end A351521.P4143436504143602524

noncomputable section

/-- A351521: Dirichlet g.f.: Product_{p prime} (1 + 4*p^(-s)).

Offset 1, canonical program `A351521.P4143436504143602524`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351521 (n : ℕ) : ℤ :=
  A351521.P4143436504143602524.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351521.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353276.P4699711645647838418

`A110088(n+1)-A051612(n+1)`
-/

namespace A353276.P4699711645647838418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110088 (n + 1) - A051612 (n + 1)

end

end A353276.P4699711645647838418

noncomputable section

/-- A353276: a(n) = phi(n) + tau(n)^omega(n) - sigma(n).

Offset 1, canonical program `A353276.P4699711645647838418`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353276 (n : ℕ) : ℤ :=
  A353276.P4699711645647838418.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353276.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353374.P4573974283751582701

`A035263(n+1)*A065043(n+1)`
-/

namespace A353374.P4573974283751582701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A065043 (n + 1)

end

end A353374.P4573974283751582701

noncomputable section

/-- A353374: a(n) = 1 if the prime factorization of n has an even number of prime factors that sum to an even number, otherwise 0.

Offset 1, canonical program `A353374.P4573974283751582701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353374 (n : ℕ) : ℤ :=
  A353374.P4573974283751582701.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355750.P5981996292456239035

`A062731(n+1)-A099777(n+1)`
-/

namespace A355750.P5981996292456239035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (n + 1) - A099777 (n + 1)

end

end A355750.P5981996292456239035

noncomputable section

/-- A355750: Sum of the divisors of 2n minus the number of divisors of 2n.

Offset 1, canonical program `A355750.P5981996292456239035`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355750 (n : ℕ) : ℤ :=
  A355750.P5981996292456239035.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356006.P9495163879456603929

`A007814(n+1)+A007949(n+1)+A112765(n+1)`
-/

namespace A356006.P9495163879456603929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007949 (n + 1) + A112765 (n + 1)

end

end A356006.P9495163879456603929

noncomputable section

/-- A356006: The number of prime divisors of n that are not greater than 5, counted with multiplicity.

Offset 1, canonical program `A356006.P9495163879456603929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356006 (n : ℕ) : ℤ :=
  A356006.P9495163879456603929.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356274.P2384908976076462100

`1/(n+1)*∑{#}[n, n*(n+2)^A007814(#+1)+1]`
-/

namespace A356274.P2384908976076462100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), ((n : ℚ) * (n + 2 : ℚ) ^ (A007814 (k + 1) : ℤ) + 1))

end

end A356274.P2384908976076462100

noncomputable section

/-- A356274: a(n) is the number whose base-(n+1) expansion equals the binary expansion of n.

Offset 1, canonical program `A356274.P2384908976076462100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356274.P2384908976076462100.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356274.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356876.P10198726897312415874

`A000120(A002808(n+1))`
-/

namespace A356876.P10198726897312415874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002808 (n + 1)).toNat

end

end A356876.P10198726897312415874

noncomputable section

/-- A356876: Binary weight of the composite numbers (A002808).

Offset 1, canonical program `A356876.P10198726897312415874`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356876 (n : ℕ) : ℤ :=
  A356876.P10198726897312415874.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356876.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357669.P7459688075800984872

`A000005(n+1)/A056671(n+1)`
-/

namespace A357669.P7459688075800984872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A056671 (n + 1) : ℚ)

end

end A357669.P7459688075800984872

noncomputable section

/-- A357669: a(n) is the number of divisors of the powerful part of n.

Offset 1, canonical program `A357669.P7459688075800984872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357669 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357669.P7459688075800984872.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357669.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357761.P12264452491752923310

`A227872(n+1)-A356018(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357761.P12264452491752923310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (n + 1) - A356018 (n + 1)

end

end A357761.P12264452491752923310

noncomputable section

/-- A357761: a(n) = A227872(n) - A356018(n).

Offset 1, canonical program `A357761.P12264452491752923310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357761 (n : ℕ) : ℤ :=
  A357761.P12264452491752923310.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358336.P17404169341441301047

`∑{#}[n, gcd(#+1, n+1)*A005361(gcd(#+1, n+1))]`
-/

namespace A358336.P17404169341441301047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.gcd (k + 1) (n + 1) : ℤ) * A005361 (Nat.gcd (k + 1) (n + 1))

end

end A358336.P17404169341441301047

noncomputable section

/-- A358336: Multiplicative sequence with a(p^e) = ((p-1) * (1 + e*(e+1)/2) + e) * p^(e-1) for prime p and e > 0.

Offset 1, canonical program `A358336.P17404169341441301047`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358336 (n : ℕ) : ℤ :=
  A358336.P17404169341441301047.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358770.P14969810485770993373

`A035263(n+1)*A358769(n+1)`
-/

namespace A358770.P14969810485770993373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A358769 (n + 1)

end

end A358770.P14969810485770993373

noncomputable section

/-- A358770: a(n) = 1 if n is of the form p * m^2, where p is an odd prime and m is a natural number >= 1, otherwise 0.

Offset 1, canonical program `A358770.P14969810485770993373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358770 (n : ℕ) : ℤ :=
  A358770.P14969810485770993373.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358770.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359430.P332625973379969903

`A267142(n)+A369658(n)`
-/

namespace A359430.P332625973379969903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 n + A369658 n

end

end A359430.P332625973379969903

noncomputable section

/-- A359430: a(n) = 1 if the arithmetic derivative of n is a multiple of 3, otherwise 0.

Offset 0, canonical program `A359430.P332625973379969903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359430 (n : ℕ) : ℤ :=
  A359430.P332625973379969903.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360323.P5397994935056253969

`A079458(A000040(n+1))`
-/

namespace A360323.P5397994935056253969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079458 (A000040 (n + 1)).toNat

end

end A360323.P5397994935056253969

noncomputable section

/-- A360323: a(n) is the number of solutions to gcd(a^2 + b^2, p) = 1 where p is the n-th prime and 0 <= a,b <= p-1.

Offset 1, canonical program `A360323.P5397994935056253969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360323 (n : ℕ) : ℤ :=
  A360323.P5397994935056253969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360323.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360469.P3812770369488140680

`n+3-A007814(n+5)`
-/

namespace A360469.P3812770369488140680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A007814 (n + 5)

end

end A360469.P3812770369488140680

noncomputable section

/-- A360469: Only k >= 0 such that, for every odd r > 0, A093179(n) divides the generalized Fermat number (A007117(n)^r)^(2^k) + 1.

Offset 3, canonical program `A360469.P3812770369488140680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360469 (n : ℕ) : ℤ :=
  A360469.P3812770369488140680.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360969.P9537499425783326170

`A005361(n+1)²`
-/

namespace A360969.P9537499425783326170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) ^ 2

end

end A360969.P9537499425783326170

noncomputable section

/-- A360969: Multiplicative with a(p^e) = e^2, p prime and e > 0.

Offset 1, canonical program `A360969.P9537499425783326170`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360969 (n : ℕ) : ℤ :=
  A360969.P9537499425783326170.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360969.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360970.P1568768849045067679

`A005361(n+1)^3`
-/

namespace A360970.P1568768849045067679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) ^ 3

end

end A360970.P1568768849045067679

noncomputable section

/-- A360970: Multiplicative with a(p^e) = e^3, p prime and e > 0.

Offset 1, canonical program `A360970.P1568768849045067679`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360970 (n : ℕ) : ℤ :=
  A360970.P1568768849045067679.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360996.P18226206419198246505

`A005361(n+1)*A082476(n+1)`
-/

namespace A360996.P18226206419198246505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A082476 (n + 1)

end

end A360996.P18226206419198246505

noncomputable section

/-- A360996: Multiplicative with a(p^e) = 5*e, p prime and e > 0.

Offset 1, canonical program `A360996.P18226206419198246505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360996 (n : ℕ) : ℤ :=
  A360996.P18226206419198246505.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360996.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361025.P363613384465024841

`A007814(A000203(n+1))-A007814(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361025.P363613384465024841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000203 (n + 1)).toNat - A007814 (n + 1)

end

end A361025.P363613384465024841

noncomputable section

/-- A361025: a(n) = A007814(sigma(n)) - A007814(n), where A007814(n) gives the 2-adic valuation of n, and sigma is the sum of divisors function.

Offset 1, canonical program `A361025.P363613384465024841`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A000203(n+1))-A007814(n+1)` (program `A361025.P363613384465024841`, by `A361025.P363613384465024841.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A361025 (n : ℕ) : ℤ :=
  A361025.P363613384465024841.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A000203(n+1))-A007814(n+1)` (program `A361025.P363613384465024841`, by `A361025.P363613384465024841.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A361025.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A361132.P13495344161125318511

`A005361(n+1)^4`
-/

namespace A361132.P13495344161125318511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) ^ 4

end

end A361132.P13495344161125318511

noncomputable section

/-- A361132: Multiplicative with a(p^e) = e^4, p prime and e > 0.

Offset 1, canonical program `A361132.P13495344161125318511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361132 (n : ℕ) : ℤ :=
  A361132.P13495344161125318511.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361265.P11907308521798501536

`A005361(n+1)*A064549(n+1)`
-/

namespace A361265.P11907308521798501536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A064549 (n + 1)

end

end A361265.P11907308521798501536

noncomputable section

/-- A361265: Multiplicative with a(p^e) = e * p^(e + 1), e > 0.

Offset 1, canonical program `A361265.P11907308521798501536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361265 (n : ℕ) : ℤ :=
  A361265.P11907308521798501536.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361268.P17929476801326375082

`A005361(n+1)*A361264(n+1)`
-/

namespace A361268.P17929476801326375082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A361264 (n + 1)

end

end A361268.P17929476801326375082

noncomputable section

/-- A361268: Multiplicative with a(p^e) = e * p^(e + 2), e > 0.

Offset 1, canonical program `A361268.P17929476801326375082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361268 (n : ℕ) : ℤ :=
  A361268.P17929476801326375082.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361689.P3213455168666859639

`2*(1+A007814(n+1))*A275367(n+1)`
-/

namespace A361689.P3213455168666859639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 + A007814 (n + 1)) * A275367 (n + 1)

end

end A361689.P3213455168666859639

noncomputable section

/-- A361689: The number of divisors of 2*n^2.

Offset 1, canonical program `A361689.P3213455168666859639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361689 (n : ℕ) : ℤ :=
  A361689.P3213455168666859639.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362059.P13964323751538108829

`A006218(floor((n+1)/2))`
-/

namespace A362059.P13964323751538108829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A362059.P13964323751538108829

noncomputable section

/-- A362059: Total number of even divisors of all positive integers <= n.

Offset 1, canonical program `A362059.P13964323751538108829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362059 (n : ℕ) : ℤ :=
  A362059.P13964323751538108829.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363917.P8803550997163744915

`A363923(n+1)*A005361(n+1)`
-/

namespace A363917.P8803550997163744915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363923 (n + 1) * A005361 (n + 1)

end

end A363917.P8803550997163744915

noncomputable section

/-- A363917: a(n) = Product_{p in Factors(n)} mult(p) * n^mult(p) / p, where Factors(n) is the integer factorization of n and mult(p) the multiplicity of the prime factor p.

Offset 1, canonical program `A363917.P8803550997163744915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363917 (n : ℕ) : ℤ :=
  A363917.P8803550997163744915.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364063.P4438084833510939295

`A007503(2*(n+1)-1)/2`
-/

namespace A364063.P4438084833510939295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007503 (2 * (n + 1) - 1) : ℚ) / 2

end

end A364063.P4438084833510939295

noncomputable section

/-- A364063: Expansion of Sum_{k>0} k * x^k / (1 - x^(2*k-1)).

Offset 1, canonical program `A364063.P4438084833510939295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364063 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364063.P4438084833510939295.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364063.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365549.P7046597874236443597

`A322483(A000188(n+1))`
-/

namespace A365549.P7046597874236443597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A000188 (n + 1)).toNat

end

end A365549.P7046597874236443597

noncomputable section

/-- A365549: The number of exponentially odd divisors of the square root of the largest square dividing n.

Offset 1, canonical program `A365549.P7046597874236443597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365549 (n : ℕ) : ℤ :=
  A365549.P7046597874236443597.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365551.P16217230584168280310

`A322483(A356191(n+1))`
-/

namespace A365551.P16217230584168280310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A356191 (n + 1)).toNat

end

end A365551.P16217230584168280310

noncomputable section

/-- A365551: The number of exponentially odd divisors of the smallest exponentially odd number divisible by n.

Offset 1, canonical program `A365551.P16217230584168280310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365551 (n : ℕ) : ℤ :=
  A365551.P16217230584168280310.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366602.P128364681725489184

`A046801(2*(n+1))`
-/

namespace A366602.P128364681725489184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046801 (2 * (n + 1))

end

end A366602.P128364681725489184

noncomputable section

/-- A366602: Number of divisors of 4^n-1.

Offset 1, canonical program `A366602.P128364681725489184`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366602 (n : ℕ) : ℤ :=
  A366602.P128364681725489184.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366606.P16159170449788144016

`A046798(2*n)`
-/

namespace A366606.P16159170449788144016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (2 * n)

end

end A366606.P16159170449788144016

noncomputable section

/-- A366606: Number of divisors of 4^n+1.

Offset 0, canonical program `A366606.P16159170449788144016`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366606 (n : ℕ) : ℤ :=
  A366606.P16159170449788144016.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366652.P6334443311420927637

`A046801(3*(n+1))`
-/

namespace A366652.P6334443311420927637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046801 (3 * (n + 1))

end

end A366652.P6334443311420927637

noncomputable section

/-- A366652: Number of divisors of 8^n-1.

Offset 1, canonical program `A366652.P6334443311420927637`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366652 (n : ℕ) : ℤ :=
  A366652.P6334443311420927637.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366656.P9970264767175051345

`A046798(3*n)`
-/

namespace A366656.P9970264767175051345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (3 * n)

end

end A366656.P9970264767175051345

noncomputable section

/-- A366656: Number of divisors of 8^n+1.

Offset 0, canonical program `A366656.P9970264767175051345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366656 (n : ℕ) : ℤ :=
  A366656.P9970264767175051345.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368104.P6809811150617499491

`A286324(A057521(n+1))`
-/

namespace A368104.P6809811150617499491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A057521 (n + 1)).toNat

end

end A368104.P6809811150617499491

noncomputable section

/-- A368104: The number of bi-unitary divisors of the powerful part of n.

Offset 1, canonical program `A368104.P6809811150617499491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368104 (n : ℕ) : ℤ :=
  A368104.P6809811150617499491.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369337.P7600900275624018704

`∑{d}[n+1, A006218(#-1)-A006218(#)+#]`
-/

namespace A369337.P7600900275624018704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A006218 (d - 1) - A006218 d + (d : ℤ))

end

end A369337.P7600900275624018704

noncomputable section

/-- A369337: Total number of numbers less than each divisor d of n that do not divide d.

Offset 1, canonical program `A369337.P7600900275624018704`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369337 (n : ℕ) : ℤ :=
  A369337.P7600900275624018704.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370831.P12708300684849236063

`A002808(n+1)-a(n-1)` with `a(0)=4`
-/

namespace A370831.P12708300684849236063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A002808 (n + 1) - a (n - 1)

end

end A370831.P12708300684849236063

noncomputable section

/-- A370831: Alternating sum of composites.

Offset 1, canonical program `A370831.P12708300684849236063`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370831 (n : ℕ) : ℤ :=
  A370831.P12708300684849236063.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371093.P8625920196172340784

`A007814(A016777(n))`
-/

namespace A371093.P8625920196172340784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A016777 n).toNat

end

end A371093.P8625920196172340784

noncomputable section

/-- A371093: a(n) is the 2-adic valuation of 3n+1.

Offset 0, canonical program `A371093.P8625920196172340784`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371093 (n : ℕ) : ℤ :=
  A371093.P8625920196172340784.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372205.P8398281046845519076

`(-1)^n*a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372205.P8398281046845519076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n * a (SequenceMachineLib.roundAway (((n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2)).toNat + a ⌊((2 * n : ℚ) - (2 : ℚ) ^ (A007814 n : ℤ)) / 2⌋.toNat

end

end A372205.P8398281046845519076

noncomputable section

/-- A372205: a(n) = (-1)^n*a((n - 2^A007814(n))/2) + a(floor((2*n - 2^A007814(n))/2)) for n > 0 and a(0) = 1.

Offset 0, canonical program `A372205.P8398281046845519076`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` (program `A372205.P8398281046845519076`, by `A372205.P8398281046845519076.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372205 (n : ℕ) : ℤ :=
  A372205.P8398281046845519076.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` (program `A372205.P8398281046845519076`, by `A372205.P8398281046845519076.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372205.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373155.P8541549841256857123

`A011655(n+1)*A035263(n+1)`
-/

namespace A373155.P8541549841256857123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) * A035263 (n + 1)

end

end A373155.P8541549841256857123

noncomputable section

/-- A373155: a(n) = 1 if n is a non-multiple of 3 whose 2-adic valuation is even, otherwise 0.

Offset 1, canonical program `A373155.P8541549841256857123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373155 (n : ℕ) : ℤ :=
  A373155.P8541549841256857123.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374113.P12323162382327089993

`A035263(n+1)*A373585(n+1)`
-/

namespace A374113.P12323162382327089993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A373585 (n + 1)

end

end A374113.P12323162382327089993

noncomputable section

/-- A374113: a(n) = 1 if A113177(n) and A276085(n) are both even, otherwise 0, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374113.P12323162382327089993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374113 (n : ℕ) : ℤ :=
  A374113.P12323162382327089993.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374113.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374216.P3301399781499645410

`A007814(A001414(n+2))`
-/

namespace A374216.P3301399781499645410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A001414 (n + 2)).toNat

end

end A374216.P3301399781499645410

noncomputable section

/-- A374216: The 2-adic valuation of sopfr(n), where sopfr is the sum of prime factors with repetition, A001414.

Offset 2, canonical program `A374216.P3301399781499645410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374216 (n : ℕ) : ℤ :=
  A374216.P3301399781499645410.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376760.P3377594604691721728

`2*A002808(n+1)-A000720(2*A002808(n+1))-(n+1)`
-/

namespace A376760.P3377594604691721728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002808 (n + 1) - A000720 (2 * A002808 (n + 1)).toNat - (n + 1 : ℤ)

end

end A376760.P3377594604691721728

noncomputable section

/-- A376760: Let c(n) = A002808(n) denote the n-th composite number; a(n) = number of composite numbers c with c(n) <= c <= 2*c(n).

Offset 1, canonical program `A376760.P3377594604691721728`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376760 (n : ℕ) : ℤ :=
  A376760.P3377594604691721728.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376760.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376761.P13913482911145713931

`A000720(2*A002808(n+1))-A002808(n+1)+n+1+1`
-/

namespace A376761.P13913482911145713931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A002808 (n + 1)).toNat - A002808 (n + 1) + (n + 1 : ℤ) + 1

end

end A376761.P13913482911145713931

noncomputable section

/-- A376761: Number of primes between the n-th composite number c(n) and 2*c(n).

Offset 1, canonical program `A376761.P13913482911145713931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376761 (n : ℕ) : ℤ :=
  A376761.P13913482911145713931.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378888.P6768742438089139191

`gcd(n+1, A007814(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378888.P6768742438089139191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007814 (n + 1))

end

end A378888.P6768742438089139191

noncomputable section

/-- A378888: a(n) = gcd(n, A007814(n)).

Offset 1, canonical program `A378888.P6768742438089139191`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A007814(n+1))` (program `A378888.P6768742438089139191`, by `A378888.P6768742438089139191.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378888 (n : ℕ) : ℤ :=
  (A378888.P6768742438089139191.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A007814(n+1))` (program `A378888.P6768742438089139191`, by `A378888.P6768742438089139191.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378888.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378998.P7086565219959481475

`A007814(A088580(n+1))`
-/

namespace A378998.P7086565219959481475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A088580 (n + 1)).toNat

end

end A378998.P7086565219959481475

noncomputable section

/-- A378998: Number of trailing 1-bits in the binary representation of sigma(n).

Offset 1, canonical program `A378998.P7086565219959481475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378998 (n : ℕ) : ℤ :=
  A378998.P7086565219959481475.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379054.P762129589633278871

`A002808(2*(n+1)+2)-A002808(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379054.P762129589633278871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * (n + 1) + 2) - A002808 (2 * (n + 1))

end

end A379054.P762129589633278871

noncomputable section

/-- A379054: a(n) = composite(2*n+2) - composite(2*n).

Offset 1, canonical program `A379054.P762129589633278871`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(2*(n+1)+2)-A002808(2*(n+1))` (program `A379054.P762129589633278871`, by `A379054.P762129589633278871.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379054 (n : ℕ) : ℤ :=
  A379054.P762129589633278871.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(2*(n+1)+2)-A002808(2*(n+1))` (program `A379054.P762129589633278871`, by `A379054.P762129589633278871.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379054.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379055.P14974910481515750343

`A002808(2*n+3)-A002808(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379055.P14974910481515750343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * n + 3) - A002808 (2 * n + 1)

end

end A379055.P14974910481515750343

noncomputable section

/-- A379055: a(n) = composite(2*n+3) - composite(2*n+1).

Offset 0, canonical program `A379055.P14974910481515750343`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(2*n+3)-A002808(2*n+1)` (program `A379055.P14974910481515750343`, by `A379055.P14974910481515750343.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379055 (n : ℕ) : ℤ :=
  A379055.P14974910481515750343.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(2*n+3)-A002808(2*n+1)` (program `A379055.P14974910481515750343`, by `A379055.P14974910481515750343.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379055.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379769.P2860525123367169776

`A006218(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379769.P2860525123367169776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 (n + 1)) (n + 1 : ℤ)

end

end A379769.P2860525123367169776

noncomputable section

/-- A379769: a(n) = (A006218(n) mod n).

Offset 1, canonical program `A379769.P2860525123367169776`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006218(n+1)%(n+1)` (program `A379769.P2860525123367169776`, by `A379769.P2860525123367169776.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379769 (n : ℕ) : ℤ :=
  A379769.P2860525123367169776.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006218(n+1)%(n+1)` (program `A379769.P2860525123367169776`, by `A379769.P2860525123367169776.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379769.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A380449.P8792025045371275510

`A000203(n+1)+A033273(n+1)`
-/

namespace A380449.P8792025045371275510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A033273 (n + 1)

end

end A380449.P8792025045371275510

noncomputable section

/-- A380449: Sum of the divisors of n plus the number of nonprime divisors of n.

Offset 1, canonical program `A380449.P8792025045371275510`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380449 (n : ℕ) : ℤ :=
  A380449.P8792025045371275510.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385122.P7971090258386335497

`A062821(n+1)-A163109(n+1)`
-/

namespace A385122.P7971090258386335497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1) - A163109 (n + 1)

end

end A385122.P7971090258386335497

noncomputable section

/-- A385122: a(n) = d(phi(n)) - phi(d(n)) where d(n) = A000005(n) is the number of divisors and phi(n) = A000010(n) is the Euler totient function.

Offset 1, canonical program `A385122.P7971090258386335497`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385122 (n : ℕ) : ℤ :=
  A385122.P7971090258386335497.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385313.P15017568967422953247

`∑{d}[n+1, A380447(#)*A008683((n+1)/#)]`
-/

namespace A385313.P15017568967422953247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A380447 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385313.P15017568967422953247

noncomputable section

/-- A385313: a(n) = c(n) + Sum_{d|n} d * phi(n/d) * (1 - c(d)), where c = A010051.

Offset 1, canonical program `A385313.P15017568967422953247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385313 (n : ℕ) : ℤ :=
  A385313.P15017568967422953247.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386258.P4775169082945672394

`A007814(A005361(n+1))`
-/

namespace A386258.P4775169082945672394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005361 (n + 1)).toNat

end

end A386258.P4775169082945672394

noncomputable section

/-- A386258: Exponent of the highest power of 2 dividing the product of exponents of the prime factorization of n.

Offset 1, canonical program `A386258.P4775169082945672394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386258 (n : ℕ) : ℤ :=
  A386258.P4775169082945672394.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386438.P6678444631215707728

`A007503(n+1)-A348219(n+1)`
-/

namespace A386438.P6678444631215707728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A348219 (n + 1)

end

end A386438.P6678444631215707728

noncomputable section

/-- A386438: a(n) = sigma(n) + omega(n) - n * Sum_{p|n, p prime} 1 / p.

Offset 1, canonical program `A386438.P6678444631215707728`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386438 (n : ℕ) : ℤ :=
  A386438.P6678444631215707728.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388286.P13565212649214377843

`1/2*(A254503(n+1)+abs(A055615(n+1)))`
-/

namespace A388286.P13565212649214377843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A254503 (n + 1) + |A055615 (n + 1)| : ℚ)

end

end A388286.P13565212649214377843

noncomputable section

/-- A388286: Möbius transform of A325973, where A325973 is the arithmetic mean of {sum of unitary divisors} and {sum of squarefree divisors}.

Offset 1, canonical program `A388286.P13565212649214377843`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388286.P13565212649214377843.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390957.P13897140593149333572

`A000005(n+1)-A286324(n+1)`
-/

namespace A390957.P13897140593149333572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A286324 (n + 1)

end

end A390957.P13897140593149333572

noncomputable section

/-- A390957: The number of non-bi-unitary divisors of n.

Offset 1, canonical program `A390957.P13897140593149333572`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390957 (n : ℕ) : ℤ :=
  A390957.P13897140593149333572.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390957.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391713.P12918001386924230058

`A000005(n+1)-A005361(n+1)-2^A001221(n+1)+1`
-/

namespace A391713.P12918001386924230058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - A005361 (n + 1) : ℚ) - (2 : ℚ) ^ (A001221 (n + 1) : ℤ) + 1

end

end A391713.P12918001386924230058

noncomputable section

/-- A391713: Number of divisors d | n such that d is neither squarefree nor powerful (in A332785).

Offset 1, canonical program `A391713.P12918001386924230058`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391713.P12918001386924230058.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391713.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391900.P11135445181283333301

`A001222(A005361(n+1))`
-/

namespace A391900.P11135445181283333301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005361 (n + 1)).toNat

end

end A391900.P11135445181283333301

noncomputable section

/-- A391900: The total number of prime factors (counted with multiplicity) of the prime factorization exponents of n.

Offset 1, canonical program `A391900.P11135445181283333301`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391900 (n : ℕ) : ℤ :=
  A391900.P11135445181283333301.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395301.P11832353311031738574

`A033273(n+1)+A345266(n+1)`
-/

namespace A395301.P11832353311031738574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + A345266 (n + 1)

end

end A395301.P11832353311031738574

noncomputable section

/-- A395301: a(n) = tau(n) - omega(n) + Sum_{p|n, p prime} gcd(p,n/p).

Offset 1, canonical program `A395301.P11832353311031738574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395301 (n : ℕ) : ℤ :=
  A395301.P11832353311031738574.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395301.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395990.P6546272165125092159

`A000005(n+1)+A076752(n+1)-A046951(n+1)`
-/

namespace A395990.P6546272165125092159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A076752 (n + 1) - A046951 (n + 1)

end

end A395990.P6546272165125092159

noncomputable section

/-- A395990: a(n) = Sum_{d|n} d^(tau(n/d) mod 2).

Offset 1, canonical program `A395990.P6546272165125092159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395990 (n : ℕ) : ℤ :=
  A395990.P6546272165125092159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396701.P6362032344804532156

`∑{d}[n+1, A007430(#)]`
-/

namespace A396701.P6362032344804532156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d

end

end A396701.P6362032344804532156

noncomputable section

/-- A396701: a(n) = Sum_{d|n} tau_3(d) * sigma(n/d).

Offset 1, canonical program `A396701.P6362032344804532156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396701 (n : ℕ) : ℤ :=
  A396701.P6362032344804532156.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396701.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396702.P8488418173161308459

`∑{d}[n+1, A000005(#)*A007430((n+1)/#)]`
-/

namespace A396702.P8488418173161308459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A007430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396702.P8488418173161308459

noncomputable section

/-- A396702: a(n) = Sum_{d|n} tau_4(d) * sigma(n/d).

Offset 1, canonical program `A396702.P8488418173161308459`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396702 (n : ℕ) : ℤ :=
  A396702.P8488418173161308459.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396702.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397071.P3539504569464205153

`n²+6*n+3+2*A006218(n)`
-/

namespace A397071.P3539504569464205153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 6 * n + 3 : ℤ) + 2 * A006218 n

end

end A397071.P3539504569464205153

noncomputable section

/-- A397071: Number of true statements (x op y) = z, where 0 <= x, y, z <= n, op is in {+,-,*,/}.

Offset 0, canonical program `A397071.P3539504569464205153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397071 (n : ℕ) : ℤ :=
  A397071.P3539504569464205153.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397549.P9260473788895763969

`∑{d}[n+1, A061391(#)]`
-/

namespace A397549.P9260473788895763969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061391 d

end

end A397549.P9260473788895763969

noncomputable section

/-- A397549: Multiplicative with a(p^e) = (e+1)^2*(e+2)/2.

Offset 1, canonical program `A397549.P9260473788895763969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397549 (n : ℕ) : ℤ :=
  A397549.P9260473788895763969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397549.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A397645.P309890179960751511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397645 (n : ℕ) : ℤ :=
  A397645.P309890179960751511.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397686.P10496162093996895226

`∑{d}[n+1, A359037(#)]`
-/

namespace A397686.P10496162093996895226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359037 d

end

end A397686.P10496162093996895226

noncomputable section

/-- A397686: Multiplicative with a(p^e) = (e+1)*(e+2)*(2*e+1)/2.

Offset 1, canonical program `A397686.P10496162093996895226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397686 (n : ℕ) : ℤ :=
  A397686.P10496162093996895226.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397779.P3478401780238339042

`a(n-3)+A007814(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A397779.P3478401780238339042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + A007814 n

end

end A397779.P3478401780238339042

noncomputable section

/-- A397779: 2-adic valuation of the triple factorial of n.

Offset 0, canonical program `A397779.P3478401780238339042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397779 (n : ℕ) : ℤ :=
  A397779.P3478401780238339042.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400142.P15885049014009625684

`A000005(n+1)*A001316(A007814(n+1))/(A007814(n+1)+1)`
-/

namespace A400142.P15885049014009625684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A001316 (A007814 (n + 1)).toNat : ℚ) / (A007814 (n + 1) + 1 : ℚ)

end

end A400142.P15885049014009625684

noncomputable section

/-- A400142: The number of divisors d of n such that gcid(d, n/d) is odd, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400142.P15885049014009625684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400142 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400142.P15885049014009625684.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400413.P13849645286402086857

`∑{#}[n, 2^A007814(floor((n+1)/(#+1)))-1]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400413.P13849645286402086857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((2 : ℚ) ^ (A007814 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat : ℤ) - 1)

end

end A400413.P13849645286402086857

noncomputable section

/-- A400413: a(n) = Sum_{k=1..n} (2^A007814(floor(n/k)) - 1).

Offset 1, canonical program `A400413.P13849645286402086857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400413 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400413.P13849645286402086857.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400413.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400524.P13401482131933218640

`A007814(A005117(n+1)+1)`
-/

namespace A400524.P13401482131933218640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005117 (n + 1) + 1).toNat

end

end A400524.P13401482131933218640

noncomputable section

/-- A400524: The exponent of the highest power of 2 dividing the number following the n-th squarefree number.

Offset 1, canonical program `A400524.P13401482131933218640`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400524 (n : ℕ) : ℤ :=
  A400524.P13401482131933218640.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400525.P4597029500458234892

`A007814(A005117(n+2)-1)`
-/

namespace A400525.P4597029500458234892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005117 (n + 2) - 1).toNat

end

end A400525.P4597029500458234892

noncomputable section

/-- A400525: The exponent of the highest power of 2 dividing the number preceding the n-th squarefree number.

Offset 2, canonical program `A400525.P4597029500458234892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400525 (n : ℕ) : ℤ :=
  A400525.P4597029500458234892.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401009.P808647470638771537

`A049820(n+1)-A401008(n+1)`
-/

namespace A401009.P808647470638771537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A401008 (n + 1)

end

end A401009.P808647470638771537

noncomputable section

/-- A401009: a(n) = the number of even non-divisors of n in 1..n.

Offset 1, canonical program `A401009.P808647470638771537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401009 (n : ℕ) : ℤ :=
  A401009.P808647470638771537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A334954.P6871016967396285998

`A337360(n+1)/A000203(n+1)`
-/

namespace A334954.P6871016967396285998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337360 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A334954.P6871016967396285998

noncomputable section

/-- A334954: a(n) is 1 plus the number of divisors of n.

Offset 1, canonical program `A334954.P6871016967396285998`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334954 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A334954.P6871016967396285998.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349693.P1618582373112485882

`1/3*A115364(n+1)*A372784(n+1)`
-/

namespace A349693.P1618582373112485882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A115364 (n + 1) : ℚ) * (A372784 (n + 1) : ℚ)

end

end A349693.P1618582373112485882

noncomputable section

/-- A349693: Dirichlet convolution of the ruler function (A001511) with itself.

Offset 1, canonical program `A349693.P1618582373112485882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349693 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349693.P1618582373112485882.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373933.P14223243970326009727

`A373934(n+2)-A373934(n+1)`
-/

namespace A373933.P14223243970326009727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373934 (n + 2) - A373934 (n + 1)

end

end A373933.P14223243970326009727

noncomputable section

/-- A373933: Number of compositions of 7*n-1 into parts 6 and 7.

Offset 1, canonical program `A373933.P14223243970326009727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373933 (n : ℕ) : ℤ :=
  A373933.P14223243970326009727.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373933.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295306.P345186050737543050

`round(tanh(A295305(n+1)))`
-/

namespace A295306.P345186050737543050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (A295305 (n + 1) : ℝ))

end

end A295306.P345186050737543050

noncomputable section

/-- A295306: a(n) = +1 if tau(sigma(n)) > tau(n), -1 if n < tau(sigma(n)) < tau(n), and 0 if tau(sigma(n)) = tau(n), where tau = A000005 and sigma = A000203.

Offset 1, canonical program `A295306.P345186050737543050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295306 (n : ℕ) : ℤ :=
  A295306.P345186050737543050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295307.P10274143985494883344

`eq[1, A295303(n+1)]+1`
-/

namespace A295307.P10274143985494883344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295307.P10274143985494883344

noncomputable section

/-- A295307: Numbers k such that k > phi(sigma(k)), where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295307.P10274143985494883344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295307 (n : ℕ) : ℤ :=
  (A295307.P10274143985494883344.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295308.P2202808230107505075

`dr(and(10, A295303(n+1)))`
-/

namespace A295308.P2202808230107505075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 10 (A295303 (n + 1)))

end

end A295308.P2202808230107505075

noncomputable section

/-- A295308: Characteristic function for A066694: a(n) = 1 if n < phi(sigma(n)), 0 otherwise.

Offset 1, canonical program `A295308.P2202808230107505075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295308 (n : ℕ) : ℤ :=
  (A295308.P2202808230107505075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296082.P6565057320872565321

`∑{e}[A100577(n+1), #/A296081(n+1)]`
-/

namespace A296082.P6565057320872565321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / (A296081 (n + 1) : ℚ)

end

end A296082.P6565057320872565321

noncomputable section

/-- A296082: a(1) = 0; for n > 1, a(n) = A032741(n) / gcd(A039653(n),A032741(n)).

Offset 1, canonical program `A296082.P6565057320872565321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A296082 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296082.P6565057320872565321.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A296082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296083.P6935362212108863333

`A039653(n+1)/A028310(A296081(n+1))`
-/

namespace A296083.P6935362212108863333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) : ℚ) / (A028310 (A296081 (n + 1)).toNat : ℚ)

end

end A296083.P6935362212108863333

noncomputable section

/-- A296083: a(1) = 0; for n > 1, a(n) = A039653(n) / gcd(A039653(n),A032741(n)).

Offset 1, canonical program `A296083.P6935362212108863333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296083.P6935362212108863333.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296213.P5254110992213968641

`char[A063532(1+n)-1]`
-/

namespace A296213.P5254110992213968641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063532 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296213.P5254110992213968641

noncomputable section

/-- A296213: a(n) = 1 if both 1+phi(k) and 1+sigma(k) are squares, 0 otherwise.

Offset 1, canonical program `A296213.P5254110992213968641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296213 (n : ℕ) : ℤ :=
  (A296213.P5254110992213968641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297401.P14594620375848981182

`record[A105570(A030626(n+1))]`
-/

namespace A297401.P14594620375848981182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A030626 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297401.P14594620375848981182

noncomputable section

/-- A297401: Non-sphenic numbers with exactly 8 divisors.

Offset 1, canonical program `A297401.P14594620375848981182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. -/
def A297401 (n : ℕ) : ℤ :=
  A297401.P14594620375848981182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. -/
def A297401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298612.P5426295925633337968

`A262232(n+3)-1`
-/

namespace A298612.P5426295925633337968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262232 (n + 3) - 1

end

end A298612.P5426295925633337968

noncomputable section

/-- A298612: The number of concave polygon classes.

Offset 3, canonical program `A298612.P5426295925633337968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262232, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298612 (n : ℕ) : ℤ :=
  A298612.P5426295925633337968.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262232, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A298612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A298946.P6641515519858639546

`A099908(A002808(1+n))`
-/

namespace A298946.P6641515519858639546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099908 (A002808 (1 + n)).toNat

end

end A298946.P6641515519858639546

noncomputable section

/-- A298946: a(n) = binomial(2*c-1, c-1) (mod c^4), where c is the n-th composite number.

Offset 1, canonical program `A298946.P6641515519858639546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A298946 (n : ℕ) : ℤ :=
  A298946.P6641515519858639546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A298946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300624.P1798579072279093080

`A008421(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A300624.P1798579072279093080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008421 (n - 1) + a (n - 1)

end

end A300624.P1798579072279093080

noncomputable section

/-- A300624: Figurate numbers based on the 11-dimensional regular convex polytope called the 11-dimensional cross-polytope, or 11-dimensional hyperoctahedron.

Offset 0, canonical program `A300624.P1798579072279093080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300624 (n : ℕ) : ℤ :=
  A300624.P1798579072279093080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301764.P11755840573215303962

`A086898(A028310(n))+1`
-/

namespace A301764.P11755840573215303962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086898 (A028310 n).toNat + 1

end

end A301764.P11755840573215303962

noncomputable section

/-- A301764: Number of ways to choose a constant rooted partition of each part in a constant rooted partition of n such that the flattened sequence is also constant.

Offset 1, canonical program `A301764.P11755840573215303962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A301764 (n : ℕ) : ℤ :=
  A301764.P11755840573215303962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A301764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301975.P361994510138605052

`eq[A054008(n+1), A160550(n+1)]+1`
-/

namespace A301975.P361994510138605052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A301975.P361994510138605052

noncomputable section

/-- A301975: Numbers whose abundance is divisible by its number of divisors.

Offset 1, canonical program `A301975.P361994510138605052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2706 terms. -/
def A301975 (n : ℕ) : ℤ :=
  (A301975.P361994510138605052.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2706 terms. -/
def A301975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302479.P14274027432024504587

`floor(A076608(n+1)/2)`
-/

namespace A302479.P14274027432024504587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076608 (n + 1) : ℚ) / 2⌋

end

end A302479.P14274027432024504587

noncomputable section

/-- A302479: Number of partitions of n into two distinct nonprime parts.

Offset 1, canonical program `A302479.P14274027432024504587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302479 (n : ℕ) : ℤ :=
  A302479.P14274027432024504587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302975.P17848082813074921203

`A137926(n+1)^Δ[A006218(n)]`
-/

namespace A302975.P17848082813074921203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137926 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A302975.P17848082813074921203

noncomputable section

/-- A302975: a(n) = denominator of tau(n)^n / n^tau(n).

Offset 1, canonical program `A302975.P17848082813074921203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2729 terms. -/
def A302975 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A302975.P17848082813074921203.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2729 terms. -/
def A302975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303781.P6125466833604398313

`A009191(n+1)-A063524(n)`
-/

namespace A303781.P6125466833604398313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1) - A063524 n

end

end A303781.P6125466833604398313

noncomputable section

/-- A303781: a(2) = 1; for n <> 2, a(n) = gcd(n, A000005(n)), where A000005(n) = number of divisors of n.

Offset 1, canonical program `A303781.P6125466833604398313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303781 (n : ℕ) : ℤ :=
  A303781.P6125466833604398313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304337.P3685069978609455408

`A133256(A253146(n+1))`
-/

namespace A304337.P3685069978609455408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A253146 (n + 1)).toNat

end

end A304337.P3685069978609455408

noncomputable section

/-- A304337: Lexicographically earliest fractal-like sequence such that the erasure of all pairs of contiguous terms of opposite parity leaves the sequence unchanged.

Offset 1, canonical program `A304337.P3685069978609455408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A304337 (n : ℕ) : ℤ :=
  A304337.P3685069978609455408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A304337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305724.P8769741493615946767

`∑[A035747(n)]`
-/

namespace A305724.P8769741493615946767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305724.P8769741493615946767

noncomputable section

/-- A305724: Crystal ball sequence for the lattice C_10.

Offset 0, canonical program `A305724.P8769741493615946767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305724 (n : ℕ) : ℤ :=
  A305724.P8769741493615946767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305737.P15108128819623381577

`∑{#}[n, A158474(C(n+1, 2)+#)*A051179(n-#)]`
-/

namespace A305737.P15108128819623381577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A158474 (Nat.choose (n + 1) 2 + k) * A051179 (n - k)

end

end A305737.P15108128819623381577

noncomputable section

/-- A305737: Number of subsets S of vectors in GF(2)^n such that span(S) = GF(2)^n.

Offset 0, canonical program `A305737.P15108128819623381577`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305737 (n : ℕ) : ℤ :=
  A305737.P15108128819623381577.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305737.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305801.P4138315772594876190

`A305800(n+1)+A157928(n)`
-/

namespace A305801.P4138315772594876190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) + A157928 n

end

end A305801.P4138315772594876190

noncomputable section

/-- A305801: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = 0 if n is an odd prime, with f(n) = n for all other n.

Offset 1, canonical program `A305801.P4138315772594876190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305801 (n : ℕ) : ℤ :=
  A305801.P4138315772594876190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306379.P13856813588637983137

`∑{d}[n+1, A060648(#)*A063659((n+1)/#)]`
-/

namespace A306379.P13856813588637983137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306379.P13856813588637983137

noncomputable section

/-- A306379: Dirichlet convolution of psi(n) with itself.

Offset 1, canonical program `A306379.P13856813588637983137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306379 (n : ℕ) : ℤ :=
  A306379.P13856813588637983137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306528.P17599500303172333272

`eq[A109395(n+1), A332881(n+1)]+1`
-/

namespace A306528.P17599500303172333272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A306528.P17599500303172333272

noncomputable section

/-- A306528: Numbers k such that gcd(k, phi(k)) = gcd(k, psi(k)).

Offset 1, canonical program `A306528.P17599500303172333272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306528 (n : ℕ) : ℤ :=
  (A306528.P17599500303172333272.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306671.P11706413506972891445

`∑{d}[n+1, A057427(#)]/A137927(n+1)`
-/

namespace A306671.P11706413506972891445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A057427 d : ℤ) : ℚ) / (A137927 (n + 1) : ℚ)

end

end A306671.P11706413506972891445

noncomputable section

/-- A306671: a(n) = gcd(tau(n), pod(n)) where tau(k) = the number of the divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A306671.P11706413506972891445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A306671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306671.P11706413506972891445.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A306671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307000.P4616291830837639980

`∑{d}[n+1, A252505(#)*A353628((n+1)/#)]`
-/

namespace A307000.P4616291830837639980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A252505 d * A353628 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307000.P4616291830837639980

noncomputable section

/-- A307000: Number of unitary rings with additive group (Z/nZ)^2. Equivalently, number of unitary commutative rings with additive group (Z/nZ)^2.

Offset 1, canonical program `A307000.P4616291830837639980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307000 (n : ℕ) : ℤ :=
  A307000.P4616291830837639980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307037.P8535599594476544073

`∑{d}[n+1, A074722(#)*A295295((n+1)/#)]`
-/

namespace A307037.P8535599594476544073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A295295 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307037.P8535599594476544073

noncomputable section

/-- A307037: The unitary analog of the alternating sum-of-divisors function (A206369).

Offset 1, canonical program `A307037.P8535599594476544073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307037 (n : ℕ) : ℤ :=
  A307037.P8535599594476544073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307848.P12640290595922898816

`∏{e}[n+1, A286324(#)]`
-/

namespace A307848.P12640290595922898816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A286324 (Nat.factorization (f1 n) p)

end

end A307848.P12640290595922898816

noncomputable section

/-- A307848: The number of exponential infinitary divisors of n.

Offset 1, canonical program `A307848.P12640290595922898816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307848 (n : ℕ) : ℤ :=
  A307848.P12640290595922898816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308127.P13327846023797537183

`lt[A336564(n+2), 0]+2`
-/

namespace A308127.P13327846023797537183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A308127.P13327846023797537183

noncomputable section

/-- A308127: Non-coreful abundant numbers: numbers k such that ncsigma(k) > k, where ncsigma(k) is the sum of the non-coreful divisors of k (A308135).

Offset 1, canonical program `A308127.P13327846023797537183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A308127 (n : ℕ) : ℤ :=
  (A308127.P13327846023797537183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A308127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309128.P2974277503094288749

`(n+2)*A063776(n+1)/4-A000010(n+1)/2*(1+(-1)^(n+1))/2`
-/

namespace A309128.P2974277503094288749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A063776 (n + 1) : ℚ) / 4 - (A000010 (n + 1) : ℚ) / 2 * (1 + (-1) ^ (n + 1) : ℚ) / 2

end

end A309128.P2974277503094288749

noncomputable section

/-- A309128: (1/n) times the sum of the elements of all subsets of [n] whose sum is divisible by n.

Offset 1, canonical program `A309128.P2974277503094288749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A309128 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309128.P2974277503094288749.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A309128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309718.P15639493879307278302

`A013916(eq[2, Δ[A013916(n+1)]]+1)`
-/

namespace A309718.P15639493879307278302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A309718.P15639493879307278302

noncomputable section

/-- A309718: Numbers k such that the sums of the first k and k+2 primes are also prime.

Offset 1, canonical program `A309718.P15639493879307278302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. -/
def A309718 (n : ℕ) : ℤ :=
  A309718.P15639493879307278302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. -/
def A309718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309720.P3653890474350407193

`A096379(eq[A036263(n+1), A054541(n+1)])`
-/

namespace A309720.P3653890474350407193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309720.P3653890474350407193

noncomputable section

/-- A309720: Numbers of the form p+q-r = q+r-s where p < q < r < s are consecutive primes.

Offset 1, canonical program `A309720.P3653890474350407193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A309720 (n : ℕ) : ℤ :=
  A309720.P3653890474350407193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A309720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313565.P15751569244382166249

`A313144(n)+A128834(n)`
-/

namespace A313565.P15751569244382166249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313144 n + A128834 n

end

end A313565.P15751569244382166249

noncomputable section

/-- A313565: Coordination sequence Gal.5.219.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313565.P15751569244382166249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313565 (n : ℕ) : ℤ :=
  A313565.P15751569244382166249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A313565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313698.P13755199689401812010

`A313251(n)+A128834(n)`
-/

namespace A313698.P13755199689401812010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A128834 n

end

end A313698.P13755199689401812010

noncomputable section

/-- A313698: Coordination sequence Gal.6.157.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313698.P13755199689401812010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313698 (n : ℕ) : ℤ :=
  A313698.P13755199689401812010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A313698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313801.P717888020838785705

`abs(A008592(n)-A313682(n))`
-/

namespace A313801.P717888020838785705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313682 n|

end

end A313801.P717888020838785705

noncomputable section

/-- A313801: Coordination sequence Gal.5.291.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313801.P717888020838785705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313801 (n : ℕ) : ℤ :=
  A313801.P717888020838785705.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313853.P5161189615059206870

`A313246(n)+A128834(A004525(n))`
-/

namespace A313853.P5161189615059206870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A128834 (A004525 n).toNat

end

end A313853.P5161189615059206870

noncomputable section

/-- A313853: Coordination sequence Gal.6.156.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313853.P5161189615059206870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313853 (n : ℕ) : ℤ :=
  A313853.P5161189615059206870.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. -/
def A313853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313905.P339684935486502025

`abs(A008592(n)-A313525(n))`
-/

namespace A313905.P339684935486502025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313525 n|

end

end A313905.P339684935486502025

noncomputable section

/-- A313905: Coordination sequence Gal.6.352.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313905.P339684935486502025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313905 (n : ℕ) : ℤ :=
  A313905.P339684935486502025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313922.P17676570645266848054

`A313246(n)+A004525(n)`
-/

namespace A313922.P17676570645266848054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A004525 n

end

end A313922.P17676570645266848054

noncomputable section

/-- A313922: Coordination sequence Gal.6.356.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313922.P17676570645266848054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A313922 (n : ℕ) : ℤ :=
  A313922.P17676570645266848054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A313922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313924.P10563583441028807303

`A313251(n)+A004525(n)`
-/

namespace A313924.P10563583441028807303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A004525 n

end

end A313924.P10563583441028807303

noncomputable section

/-- A313924: Coordination sequence Gal.6.626.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313924.P10563583441028807303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A313924 (n : ℕ) : ℤ :=
  A313924.P10563583441028807303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A313924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314899.P7105760915525544627

`A004525(n)+A314841(n)-A004396(A004525(n))`
-/

namespace A314899.P7105760915525544627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314841 n - A004396 (A004525 n).toNat)

end

end A314899.P7105760915525544627

noncomputable section

/-- A314899: Coordination sequence Gal.6.153.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314899.P7105760915525544627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A314899 (n : ℕ) : ℤ :=
  A314899.P7105760915525544627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A314899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314912.P18076292877621533634

`A004525(n)+A314841(n)-A004525(A004396(n))`
-/

namespace A314912.P18076292877621533634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314841 n - A004525 (A004396 n).toNat)

end

end A314912.P18076292877621533634

noncomputable section

/-- A314912: Coordination sequence Gal.6.195.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314912.P18076292877621533634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A314912 (n : ℕ) : ℤ :=
  A314912.P18076292877621533634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A314912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315069.P429606285114840225

`abs(A008592(n)-A314020(n))`
-/

namespace A315069.P429606285114840225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314020 n|

end

end A315069.P429606285114840225

noncomputable section

/-- A315069: Coordination sequence Gal.6.325.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315069.P429606285114840225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315069 (n : ℕ) : ℤ :=
  A315069.P429606285114840225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315266.P7852260397978347680

`A314841(n)+A004525(n)`
-/

namespace A315266.P7852260397978347680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + A004525 n

end

end A315266.P7852260397978347680

noncomputable section

/-- A315266: Coordination sequence Gal.6.205.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315266.P7852260397978347680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A315266 (n : ℕ) : ℤ :=
  A315266.P7852260397978347680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A315266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315275.P16320743547030048239

`A330025(n)+A314972(n)`
-/

namespace A315275.P16320743547030048239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314972 n

end

end A315275.P16320743547030048239

noncomputable section

/-- A315275: Coordination sequence Gal.6.329.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315275.P16320743547030048239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A315275 (n : ℕ) : ℤ :=
  A315275.P16320743547030048239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A315275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315399.P10081948034211585204

`abs(A008592(n)-A313292(n))`
-/

namespace A315399.P10081948034211585204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313292 n|

end

end A315399.P10081948034211585204

noncomputable section

/-- A315399: Coordination sequence Gal.4.43.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315399.P10081948034211585204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315399 (n : ℕ) : ℤ :=
  A315399.P10081948034211585204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315455.P3215631304142781688

`A313891(n)+A128834(n)`
-/

namespace A315455.P3215631304142781688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n + A128834 n

end

end A315455.P3215631304142781688

noncomputable section

/-- A315455: Coordination sequence Gal.6.208.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315455.P3215631304142781688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315455 (n : ℕ) : ℤ :=
  A315455.P3215631304142781688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. -/
def A315455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315468.P18044790226856226141

`A314972(n)+A253262(n)`
-/

namespace A315468.P18044790226856226141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314972 n + A253262 n

end

end A315468.P18044790226856226141

noncomputable section

/-- A315468: Coordination sequence Gal.5.300.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315468.P18044790226856226141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315468 (n : ℕ) : ℤ :=
  A315468.P18044790226856226141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315512.P16857491610922492177

`A315246(n)+∑[A021913(n)]`
-/

namespace A315512.P16857491610922492177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315246 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315512.P16857491610922492177

noncomputable section

/-- A315512: Coordination sequence Gal.6.626.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315512.P16857491610922492177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315512 (n : ℕ) : ℤ :=
  A315512.P16857491610922492177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315527.P15376779248736554616

`A314841(n)+n`
-/

namespace A315527.P15376779248736554616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + (n : ℤ)

end

end A315527.P15376779248736554616

noncomputable section

/-- A315527: Coordination sequence Gal.6.638.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315527.P15376779248736554616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2107 terms. -/
def A315527 (n : ℕ) : ℤ :=
  A315527.P15376779248736554616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2107 terms. -/
def A315527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315680.P2686874256871590290

`A315463(n)+A004396(n-A004396(n))`
-/

namespace A315680.P2686874256871590290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315463 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315680.P2686874256871590290

noncomputable section

/-- A315680: Coordination sequence Gal.5.89.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315680.P2686874256871590290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2300 terms. -/
def A315680 (n : ℕ) : ℤ :=
  A315680.P2686874256871590290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2300 terms. -/
def A315680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315681.P15551591667760656861

`A004525(n)+A315670(n)-A004525(A004396(n))`
-/

namespace A315681.P15551591667760656861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315670 n - A004525 (A004396 n).toNat)

end

end A315681.P15551591667760656861

noncomputable section

/-- A315681: Coordination sequence Gal.6.159.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315681.P15551591667760656861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315681 (n : ℕ) : ℤ :=
  A315681.P15551591667760656861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315700.P8415465502126498151

`abs(11*n-A313891(n))`
-/

namespace A315700.P8415465502126498151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A313891 n|

end

end A315700.P8415465502126498151

noncomputable section

/-- A315700: Coordination sequence Gal.6.638.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315700.P8415465502126498151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315700 (n : ℕ) : ℤ :=
  A315700.P8415465502126498151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A315700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315726.P3826273257408320648

`2*A313682(n)-A008574(n)`
-/

namespace A315726.P3826273257408320648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313682 n - A008574 n

end

end A315726.P3826273257408320648

noncomputable section

/-- A315726: Coordination sequence Gal.6.252.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315726.P3826273257408320648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A315726 (n : ℕ) : ℤ :=
  A315726.P3826273257408320648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A315726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315742.P4234331020117959484

`A313682(n)+n`
-/

namespace A315742.P4234331020117959484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313682 n + (n : ℤ)

end

end A315742.P4234331020117959484

noncomputable section

/-- A315742: Coordination sequence Gal.5.302.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315742.P4234331020117959484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A315742 (n : ℕ) : ℤ :=
  A315742.P4234331020117959484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A315742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315768.P5080605822707988904

`A314208(n)+A004525(n)`
-/

namespace A315768.P5080605822707988904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314208 n + A004525 n

end

end A315768.P5080605822707988904

noncomputable section

/-- A315768: Coordination sequence Gal.6.628.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315768.P5080605822707988904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315768 (n : ℕ) : ℤ :=
  A315768.P5080605822707988904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316717.P5515055320797680457

`A014081(eq[0, and(n, 2*and(n, 2*n))])`
-/

namespace A316717.P5515055320797680457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * Nat.land n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316717.P5515055320797680457

noncomputable section

/-- A316717: a(n) is the number of 3s in A316713(n). That is, a(n) is the number of C-sequences (A278041) used in the tribonacci ABC-representation of n >= 0.

Offset 0, canonical program `A316717.P5515055320797680457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316717 (n : ℕ) : ℤ :=
  A316717.P5515055320797680457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316831.P2741381390933968218

`A046819(a(floor(n/2))+n%2)` with `a(0)=0, a(1)=1`
-/

namespace A316831.P2741381390933968218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A046819 (a ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)).toNat

end

end A316831.P2741381390933968218

noncomputable section

/-- A316831: Trajectory of 0 under repeated application of the morphism 0 -> 01, 1 -> 21, 2 -> 13, 3 -> 33.

Offset 0, canonical program `A316831.P2741381390933968218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316831 (n : ℕ) : ℤ :=
  A316831.P2741381390933968218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316844.P16115526743851967488

`A056557(lt[A056559(n), A056558(n)])`
-/

namespace A316844.P16115526743851967488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316844.P16115526743851967488

noncomputable section

/-- A316844: Column 2 of table A316841.

Offset 1, canonical program `A316844.P16115526743851967488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316844 (n : ℕ) : ℤ :=
  A316844.P16115526743851967488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316845.P7291579847746609250

`A056558(lt[A056559(n), A056558(n)])`
-/

namespace A316845.P7291579847746609250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316845.P7291579847746609250

noncomputable section

/-- A316845: Column 3 of table A316841.

Offset 1, canonical program `A316845.P7291579847746609250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316845 (n : ℕ) : ℤ :=
  A316845.P7291579847746609250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316965.P11469551014600044917

`A316670(n+1)-1`
-/

namespace A316965.P11469551014600044917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316670 (n + 1) - 1

end

end A316965.P11469551014600044917

noncomputable section

/-- A316965: Same as A316670, except numbering of the squares starts at 0 rather than 1.

Offset 0, canonical program `A316965.P11469551014600044917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316965 (n : ℕ) : ℤ :=
  A316965.P11469551014600044917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317751.P3394042211911026629

`A219977(A034444(n+1))+A046951(n+1)`
-/

namespace A317751.P3394042211911026629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A034444 (n + 1)).toNat + A046951 (n + 1)

end

end A317751.P3394042211911026629

noncomputable section

/-- A317751: Number of divisors d of n such that there exists a factorization of n into factors > 1 with GCD d.

Offset 1, canonical program `A317751.P3394042211911026629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317751 (n : ℕ) : ℤ :=
  A317751.P3394042211911026629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317950.P649723107157043023

`Δ[abs(1-A317198(n))]`
-/

namespace A317950.P649723107157043023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A317198 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317950.P649723107157043023

noncomputable section

/-- A317950: First differences of ternary tribonacci word A080843.

Offset 0, canonical program `A317950.P649723107157043023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317950 (n : ℕ) : ℤ :=
  A317950.P649723107157043023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318734.P12849207879321018043

`∑[A033999(n)*A099774(n+1)]`
-/

namespace A318734.P12849207879321018043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A099774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318734.P12849207879321018043

noncomputable section

/-- A318734: a(n) = Sum_{k=1..n} (-1)^(k + 1) * d(2*k - 1), where d(k) is the number of divisors of k (A000005).

Offset 1, canonical program `A318734.P12849207879321018043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318734 (n : ℕ) : ℤ :=
  A318734.P12849207879321018043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318768.P8764569558194296029

`∑{d}[1+n, A288571(#)]`
-/

namespace A318768.P8764569558194296029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288571 d

end

end A318768.P8764569558194296029

noncomputable section

/-- A318768: a(n) = Sum_{d|n} (-1)^(n/d+1) * Sum_{j|d} tau(j), where tau = number of divisors (A000005).

Offset 1, canonical program `A318768.P8764569558194296029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318768 (n : ℕ) : ℤ :=
  A318768.P8764569558194296029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318845.P4959675748145721690

`∑{d}[n+1, #*A288571((n+1)/#)]`
-/

namespace A318845.P4959675748145721690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A288571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P4959675748145721690

noncomputable section

/-- A318845: a(n) = Sum_{d|n} (-1)^(n/d+1) * Sum_{j|d} sigma(j), where sigma(j) = sum of divisors of j (A000203).

Offset 1, canonical program `A318845.P4959675748145721690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318845 (n : ℕ) : ℤ :=
  A318845.P4959675748145721690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319035.P4592568975545693552

`A000096(eq[A063440(n+2), A063440(n+1)])+1`
-/

namespace A319035.P4592568975545693552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A319035.P4592568975545693552

noncomputable section

/-- A319035: Triangular numbers T(k) that have the same number of divisors as their successors T(k+1).

Offset 1, canonical program `A319035.P4592568975545693552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1669 terms. -/
def A319035 (n : ℕ) : ℤ :=
  A319035.P4592568975545693552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1669 terms. -/
def A319035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320515.P891390049597261690

`record[A007913(A320514(n+2))]`
-/

namespace A320515.P891390049597261690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A320514 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320515.P891390049597261690

noncomputable section

/-- A320515: Squarefree k > 1 with sigma(sigma(k)) < 2*k + 1.

Offset 1, canonical program `A320515.P891390049597261690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3608 terms. -/
def A320515 (n : ℕ) : ℤ :=
  A320515.P891390049597261690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3608 terms. -/
def A320515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320585.P11050667382939563471

`p?[A320584(n+1)]`
-/

namespace A320585.P11050667382939563471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320585.P11050667382939563471

noncomputable section

/-- A320585: Primes whose first digit is prime.

Offset 1, canonical program `A320585.P11050667382939563471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. -/
def A320585 (n : ℕ) : ℤ :=
  A320585.P11050667382939563471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. -/
def A320585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322577.P2466038700097355167

`∑{d}[n+1, #*A063659((n+1)/#)]`
-/

namespace A322577.P2466038700097355167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P2466038700097355167

noncomputable section

/-- A322577: a(n) = Sum_{d|n} psi(n/d) * phi(d).

Offset 1, canonical program `A322577.P2466038700097355167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322577 (n : ℕ) : ℤ :=
  A322577.P2466038700097355167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322673.P9006485126655051311

`A206032(n+1)/gcd(A007955(n+1), A206032(n+1))`
-/

namespace A322673.P9006485126655051311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206032 (n + 1) : ℚ) / (Int.gcd (A007955 (n + 1)) (A206032 (n + 1)) : ℚ)

end

end A322673.P9006485126655051311

noncomputable section

/-- A322673: a(n) = numerator of Product_{d|n} (sigma(d)/d) where sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A322673.P9006485126655051311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A322673 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322673.P9006485126655051311.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A322673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322966.P13519530522843253695

`A007947(n+1)/A008473(n+1)*A322965(n+1)`
-/

namespace A322966.P13519530522843253695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A008473 (n + 1) : ℚ) * (A322965 (n + 1) : ℚ)

end

end A322966.P13519530522843253695

noncomputable section

/-- A322966: Denominator of Sum_{d | n} 1/rad(d) where rad = A007947.

Offset 1, canonical program `A322966.P13519530522843253695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322966 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322966.P13519530522843253695.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322980.P7974162186634940196

`A063524(A009191(n+1))`
-/

namespace A322980.P7974162186634940196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A009191 (n + 1)).toNat

end

end A322980.P7974162186634940196

noncomputable section

/-- A322980: a(n) = 1 if n and d(n) are coprime, 0 otherwise. Here d(n) is the number of divisors of n, A000005.

Offset 1, canonical program `A322980.P7974162186634940196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322980 (n : ℕ) : ℤ :=
  A322980.P7974162186634940196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322997.P13099986161292464516

`A322996(2*n)`
-/

namespace A322997.P13099986161292464516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (2 * n)

end

end A322997.P13099986161292464516

noncomputable section

/-- A322997: Number of iterations of A049820(x) = x - A000005(x) needed to reach an odd number or zero, when starting from x = 2n.

Offset 0, canonical program `A322997.P13099986161292464516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322997 (n : ℕ) : ℤ :=
  A322997.P13099986161292464516.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323172.P1211456420547319738

`A001221(n+2)/A008472(n+2)*A323171(n+2)`
-/

namespace A323172.P1211456420547319738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 2) : ℚ) / (A008472 (n + 2) : ℚ) * (A323171 (n + 2) : ℚ)

end

end A323172.P1211456420547319738

noncomputable section

/-- A323172: Denominator of the average of distinct prime factors of n (A008472(n)/A001221(n)).

Offset 2, canonical program `A323172.P1211456420547319738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323172 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323172.P1211456420547319738.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323466.P8596251984879986670

`A005811(n+1)+A014081(n+1)+1`
-/

namespace A323466.P8596251984879986670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) + (A014081 (n + 1) + 1)

end

end A323466.P8596251984879986670

noncomputable section

/-- A323466: Number of terms in row n of A323465.

Offset 1, canonical program `A323466.P8596251984879986670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A323466 (n : ℕ) : ℤ :=
  A323466.P8596251984879986670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A323466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324470.P11516600818281016258

`∑[2-A317198(n)]`
-/

namespace A324470.P11516600818281016258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A317198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324470.P11516600818281016258

noncomputable section

/-- A324470: Partial sums of ternary tribonacci word A092782.

Offset 1, canonical program `A324470.P11516600818281016258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324470 (n : ℕ) : ℤ :=
  A324470.P11516600818281016258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324501.P1716032831025346766

`∑{d}[n+1, A007955(n+1)/A007955(#)]`
-/

namespace A324501.P1716032831025346766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007955 (n + 1) : ℚ) / (A007955 d : ℚ)

end

end A324501.P1716032831025346766

noncomputable section

/-- A324501: a(n) = numerator of Sum_{d|n} (1/pod(d)) where pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A324501.P1716032831025346766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324501 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324501.P1716032831025346766.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324639.P17877870540520381496

`eq[(A318466(n+1)-A318467(n+1))/2, A318458(n+1)]+1`
-/

namespace A324639.P17877870540520381496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318466 (n + 1) - A318467 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A324639.P17877870540520381496

noncomputable section

/-- A324639: Numbers k such that bitand(2k,sigma(k)) = 2*bitand(k,sigma(k)-k), where bitand is bitwise-AND, A004198.

Offset 1, canonical program `A324639.P17877870540520381496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 872 terms. -/
def A324639 (n : ℕ) : ℤ :=
  (A324639.P17877870540520381496.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 872 terms. -/
def A324639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324980.P16337764306550110740

`A007955(n+1)*A206032(n+1)`
-/

namespace A324980.P16337764306550110740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A206032 (n + 1)

end

end A324980.P16337764306550110740

noncomputable section

/-- A324980: a(n) = Product_{d|n} (d*sigma(d)) where sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A324980.P16337764306550110740`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324980 (n : ℕ) : ℤ :=
  A324980.P16337764306550110740.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325964.P15804438111234452342

`floor(1/A073802(n+1))`
-/

namespace A325964.P15804438111234452342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A073802 (n + 1) : ℚ)⌋

end

end A325964.P15804438111234452342

noncomputable section

/-- A325964: a(n) = 1 if n and sigma(n) are relatively prime, 0 otherwise, where sigma(n) = sum of divisors of n, A000203; Characteristic function of A014567.

Offset 1, canonical program `A325964.P15804438111234452342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325964 (n : ℕ) : ℤ :=
  A325964.P15804438111234452342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327224.P10926925885471084677

`A327207(n+1)-A327205(A327207(n+2)-3)`
-/

namespace A327224.P10926925885471084677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327207 (n + 1) - A327205 (A327207 (n + 2) - 3).toNat

end

end A327224.P10926925885471084677

noncomputable section

/-- A327224: Positions of 1's in {A327222(k) : n > 0}.

Offset 1, canonical program `A327224.P10926925885471084677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327224 (n : ℕ) : ℤ :=
  A327224.P10926925885471084677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327864.P823315764509377038

`eq[0, A353493(n)]`
-/

namespace A327864.P823315764509377038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327864.P823315764509377038

noncomputable section

/-- A327864: Numbers whose arithmetic derivative is a multiple of 4, cf. A003415.

Offset 1, canonical program `A327864.P823315764509377038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327864 (n : ℕ) : ℤ :=
  (A327864.P823315764509377038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327952.P3929770748935459996

`Δ[A153818(n+1)-A006218(n+1)]`
-/

namespace A327952.P3929770748935459996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153818 (n + 1) - A006218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327952.P3929770748935459996

noncomputable section

/-- A327952: a(n) is the number of positive integers k such that some multiple of sqrt(k) falls strictly between n and n+1.

Offset 1, canonical program `A327952.P3929770748935459996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327952 (n : ℕ) : ℤ :=
  A327952.P3929770748935459996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328311.P6899217752375846038

`abs(A328310(A028310(n)+1)+1)`
-/

namespace A328311.P6899217752375846038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328310 (A028310 n + 1).toNat + 1|

end

end A328311.P6899217752375846038

noncomputable section

/-- A328311: a(n) = 1 + A051903(A003415(n)) - A051903(n), a(1) = 0 by convention.

Offset 1, canonical program `A328311.P6899217752375846038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328311 (n : ℕ) : ℤ :=
  A328311.P6899217752375846038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328956.P11991261187535572273

`eq[0, A328958(n+1)]+1`
-/

namespace A328956.P11991261187535572273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328956.P11991261187535572273

noncomputable section

/-- A328956: Numbers k such that sigma_0(k) = omega(k) * Omega(k), where sigma_0 = A000005, omega = A001221, Omega = A001222.

Offset 1, canonical program `A328956.P11991261187535572273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328956 (n : ℕ) : ℤ :=
  (A328956.P11991261187535572273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328957.P13829238471357950740

`lt[0, A328958(n+1)²]+1`
-/

namespace A328957.P13829238471357950740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328958 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A328957.P13829238471357950740

noncomputable section

/-- A328957: Numbers k such that sigma_0(k) != omega(k) * Omega(k), where sigma_0 = A000005, omega = A001221, Omega = A001222.

Offset 1, canonical program `A328957.P13829238471357950740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9502 terms. -/
def A328957 (n : ℕ) : ℤ :=
  (A328957.P13829238471357950740.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9502 terms. -/
def A328957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329323.P11900882605263196427

`A126988(C(row(n)+1, 2)+col(n)+1)*A134577(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A329323.P11900882605263196427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) * A134577 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A329323.P11900882605263196427

noncomputable section

/-- A329323: Triangle read by rows: T(n,k) is the sum of the parts congruent to 0 mod k in the partitions of n into equal parts, 1 <= k <= n.

Offset 1, canonical program `A329323.P11900882605263196427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134577, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329323 (n : ℕ) : ℤ :=
  A329323.P11900882605263196427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134577, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329393.P14477851111522146474

`∑{d}[A002808(n+1), -(-1)^#]`
-/

namespace A329393.P14477851111522146474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (-((-1) ^ d))

end

end A329393.P14477851111522146474

noncomputable section

/-- A329393: Number of odd divisors minus number of even divisors of the n-th composite.

Offset 1, canonical program `A329393.P14477851111522146474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A329393 (n : ℕ) : ℤ :=
  A329393.P14477851111522146474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A329393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329688.P12630296760197187195

`A329686(A042965(1+n))`
-/

namespace A329688.P12630296760197187195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 (A042965 (1 + n)).toNat

end

end A329688.P12630296760197187195

noncomputable section

/-- A329688: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, HH, HD and DU.

Offset 0, canonical program `A329688.P12630296760197187195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A329688 (n : ℕ) : ℤ :=
  A329688.P12630296760197187195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A329688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330320.P16120986544821140952

`∑[A229949(2*(n+1))]`
-/

namespace A330320.P16120986544821140952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229949 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P16120986544821140952

noncomputable section

/-- A330320: a(n) = Sum_{i=1..n} tau(i)*tau(i+1), where tau(n) = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A330320.P16120986544821140952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330320 (n : ℕ) : ℤ :=
  A330320.P16120986544821140952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330561.P8312419357431212609

`n-A330560(n+1)`
-/

namespace A330561.P8312419357431212609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A330560 (n + 1)

end

end A330561.P8312419357431212609

noncomputable section

/-- A330561: a(n) = number of primes p <= prime(n) with Delta(p) == 0 (mod 4), where Delta(p) = nextprime(p) - p.

Offset 1, canonical program `A330561.P8312419357431212609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330561 (n : ℕ) : ℤ :=
  A330561.P8312419357431212609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330578.P12262846410611221760

`A053767(n)%A002808(n+1)`
-/

namespace A330578.P12262846410611221760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053767 n) (A002808 (n + 1))

end

end A330578.P12262846410611221760

noncomputable section

/-- A330578: a(n) is the remainder when the sum of the first n composite numbers is divided by the n-th composite number.

Offset 1, canonical program `A330578.P12262846410611221760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053767, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330578 (n : ℕ) : ℤ :=
  A330578.P12262846410611221760.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053767, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330809.P313460960627115106

`A253145(eq[8, A063440(n+1)])`
-/

namespace A330809.P313460960627115106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A330809.P313460960627115106

noncomputable section

/-- A330809: Triangular numbers having exactly 8 divisors.

Offset 1, canonical program `A330809.P313460960627115106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A330809 (n : ℕ) : ℤ :=
  A330809.P313460960627115106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A330809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330933.P1547525484770531212

`∩[A330932(n+1)-1, A330932(n+1)]`
-/

namespace A330933.P1547525484770531212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330932 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330933.P1547525484770531212

noncomputable section

/-- A330933: Starts of runs of 4 consecutive Niven numbers in base 2 (A049445).

Offset 1, canonical program `A330933.P1547525484770531212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A330933 (n : ℕ) : ℤ :=
  (A330933.P1547525484770531212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A330933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331131.P16311086492705837412

`∑[(A032741(n+1)+1)*A007425(n+2)]`
-/

namespace A331131.P16311086492705837412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A007425 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331131.P16311086492705837412

noncomputable section

/-- A331131: a(n) = Sum_{i=1..n} d(i)*d_3(i+1), where d(n) = A000005(n) and d_3(n) = A007425(n).

Offset 1, canonical program `A331131.P16311086492705837412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331131 (n : ℕ) : ℤ :=
  A331131.P16311086492705837412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331132.P5685763318772251677

`∑[A000005(n+1)*A092517(n+1)]`
-/

namespace A331132.P5685763318772251677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A092517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331132.P5685763318772251677

noncomputable section

/-- A331132: a(n) = Sum_{i=1..n} d(i)^2*d(i+1), where d(n) = A000005(n).

Offset 1, canonical program `A331132.P5685763318772251677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A331132 (n : ℕ) : ℤ :=
  A331132.P5685763318772251677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A331132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331830.P3749508068268674475

`A268272(eq[1, A268272(n+1)-A268272(n)])`
-/

namespace A331830.P3749508068268674475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (n + 1) - A268272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331830.P3749508068268674475

noncomputable section

/-- A331830: Numbers k such that k and k + 1 are both negabinary evil numbers.

Offset 1, canonical program `A331830.P3749508068268674475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A331830 (n : ℕ) : ℤ :=
  A331830.P3749508068268674475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A331830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331831.P1834665176300229750

`record[A141310(A268272(A004442(n)))]`
-/

namespace A331831.P1834665176300229750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A268272 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331831.P1834665176300229750

noncomputable section

/-- A331831: Numbers k such that k and k + 1 are both negabinary odious numbers.

Offset 1, canonical program `A331831.P1834665176300229750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A331831 (n : ℕ) : ℤ :=
  A331831.P1834665176300229750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A331831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332386.P12576416511398998806

`eq[A319442(n+1), A319442(n+2)]+1`
-/

namespace A332386.P12576416511398998806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319442 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332386.P12576416511398998806

noncomputable section

/-- A332386: Numbers k such that k and k + 1 have the same number of divisors in Eisenstein integers.

Offset 1, canonical program `A332386.P12576416511398998806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A332386 (n : ℕ) : ℤ :=
  (A332386.P12576416511398998806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A332386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332422.P2549243754206614322

`∑{p}[n+1, A181983(A026238(#))]`
-/

namespace A332422.P2549243754206614322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A181983 (A026238 p).toNat

end

end A332422.P2549243754206614322

noncomputable section

/-- A332422: If n = Product (p_j^k_j) then a(n) = Sum ((-1)^(pi(p_j) + 1) * pi(p_j)), where pi = A000720.

Offset 1, canonical program `A332422.P2549243754206614322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332422 (n : ℕ) : ℤ :=
  A332422.P2549243754206614322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332616.P3784539761157873667

`A056556(n)^3+A056557(n)^3+A056558(n)^3-3*A056556(n)*A056557(n)*A056558(n)`
-/

namespace A332616.P3784539761157873667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n ^ 3 + A056557 n ^ 3 + A056558 n ^ 3 - 3 * A056556 n * A056557 n * A056558 n

end

end A332616.P3784539761157873667

noncomputable section

/-- A332616: a(n) = value of the cubic form A^3 + B^3 + C^3 - 3ABC evaluated at row n of the table in A331195.

Offset 0, canonical program `A332616.P3784539761157873667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332616 (n : ℕ) : ℤ :=
  A332616.P3784539761157873667.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332616.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333167.P7830250556896041600

`A105397(n)*A193432(n)`
-/

namespace A333167.P7830250556896041600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 n * A193432 n

end

end A333167.P7830250556896041600

noncomputable section

/-- A333167: a(n) = r_2(n^2 + 1), where r_2(k) is the number of ways of writing k as a sum of 2 squares (A004018).

Offset 0, canonical program `A333167.P7830250556896041600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333167 (n : ℕ) : ℤ :=
  A333167.P7830250556896041600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333215.P5189667732100044682

`Δ[A258026(abs(1-n)+1)%(12*n+1)]`
-/

namespace A333215.P5189667732100044682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258026 (|1 - (n : ℤ)| + 1).toNat) (12 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333215.P5189667732100044682

noncomputable section

/-- A333215: Lengths of maximal weakly increasing subsequences in the sequence of prime gaps (A001223).

Offset 1, canonical program `A333215.P5189667732100044682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333215 (n : ℕ) : ℤ :=
  A333215.P5189667732100044682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333293.P15015957038887528182

`(A319087(n+1)+A319087(n+2))/2`
-/

namespace A333293.P15015957038887528182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319087 (n + 1) + A319087 (n + 2) : ℚ) / 2

end

end A333293.P15015957038887528182

noncomputable section

/-- A333293: a(n) = Sum_{k=1..n-1} k^2*phi(k) + n^2*phi(n)/2, where phi = A000010.

Offset 2, canonical program `A333293.P15015957038887528182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A333293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333293.P15015957038887528182.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A333293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333427.P1257739180150662020

`∩[A333426(n+1)-1, A333426(n+1)]`
-/

namespace A333427.P1257739180150662020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333426 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333427.P1257739180150662020

noncomputable section

/-- A333427: Numbers k such that k and k+1 are both primorial base Niven numbers (A333426).

Offset 1, canonical program `A333427.P1257739180150662020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A333427 (n : ℕ) : ℤ :=
  (A333427.P1257739180150662020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A333427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333471.P823821264202545124

`∑{d}[n+1, A008683((n+1)/#)*A054541(#)]`
-/

namespace A333471.P823821264202545124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A054541 d

end

end A333471.P823821264202545124

noncomputable section

/-- A333471: a(n) = 2 * mu(n) + Sum_{d|n, d > 1} mu(n/d) * (prime(d) - prime(d-1)).

Offset 1, canonical program `A333471.P823821264202545124`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054541, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333471 (n : ℕ) : ℤ :=
  A333471.P823821264202545124.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054541, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333623.P14520114881090528427

`lt[(n+1)%A319715(n+1), 1]+1`
-/

namespace A333623.P14520114881090528427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A319715 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333623.P14520114881090528427

noncomputable section

/-- A333623: Numbers k such that k is divisible by the sum of digits of all the divisors of k in primorial base (A319715).

Offset 1, canonical program `A333623.P14520114881090528427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A333623 (n : ℕ) : ℤ :=
  (A333623.P14520114881090528427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A333623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334209.P10125829427661465114

`2*A133009(n+1)`
-/

namespace A334209.P10125829427661465114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133009 (n + 1)

end

end A334209.P10125829427661465114

noncomputable section

/-- A334209: Number of solutions to n = i+j, 0 <= i,j <= n for which A010060(i)=A010060(j)=0, i != j.

Offset 1, canonical program `A334209.P10125829427661465114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334209 (n : ℕ) : ℤ :=
  A334209.P10125829427661465114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334664.P3656540446261014513

`∏{d}[n+1, A009191(#)]`
-/

namespace A334664.P3656540446261014513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009191 d

end

end A334664.P3656540446261014513

noncomputable section

/-- A334664: a(n) = Product_{d|n} gcd(d, tau(d)).

Offset 1, canonical program `A334664.P3656540446261014513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334664 (n : ℕ) : ℤ :=
  A334664.P3656540446261014513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334729.P8285158854772711246

`∏{d}[n+1, A009205(#)]`
-/

namespace A334729.P8285158854772711246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009205 d

end

end A334729.P8285158854772711246

noncomputable section

/-- A334729: a(n) = Product_{d|n} gcd(tau(d), sigma(d)).

Offset 1, canonical program `A334729.P8285158854772711246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334729 (n : ℕ) : ℤ :=
  A334729.P8285158854772711246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334806.P16639427483834950340

`∏{d}[n+1, A009278(#)]`
-/

namespace A334806.P16639427483834950340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009278 d

end

end A334806.P16639427483834950340

noncomputable section

/-- A334806: a(n) = Product_{d|n} lcm(tau(d), sigma(d)) where tau(k) is the number of divisors of k (A000005) and sigma(k) is the sum of divisors of k (A000203).

Offset 1, canonical program `A334806.P16639427483834950340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A334806 (n : ℕ) : ℤ :=
  A334806.P16639427483834950340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A334806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335001.P3223247444215741324

`eq[A063375(abs(1-n)+1), A272377(n)]`
-/

namespace A335001.P3223247444215741324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335001.P3223247444215741324

noncomputable section

/-- A335001: Integers m such that d(F(m)) = d(L(m)) where d is the number of divisors function, F(n) and L(n) are respectively the n-th Fibonacci and n-th Lucas numbers.

Offset 1, canonical program `A335001.P3223247444215741324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A335001 (n : ℕ) : ℤ :=
  (A335001.P3223247444215741324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A335001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335003.P13569162527481826655

`A000051(A002024(n+1))*A057728(A080036(n))`
-/

namespace A335003.P13569162527481826655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A002024 (n + 1)).toNat * A057728 (A080036 n).toNat

end

end A335003.P13569162527481826655

noncomputable section

/-- A335003: Triangle read by rows where the n-th row is the cycle trajectory of 2^n+1 in the divide-or-choose 2 rule.

Offset 1, canonical program `A335003.P13569162527481826655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A335003 (n : ℕ) : ℤ :=
  A335003.P13569162527481826655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A335003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335438.P3356434190855580502

`floor((A000188(A335437(n+1))-1)/2)`
-/

namespace A335438.P3356434190855580502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000188 (A335437 (n + 1)).toNat - 1 : ℚ) / 2⌋

end

end A335438.P3356434190855580502

noncomputable section

/-- A335438: Number of partitions of k_n into two distinct parts (s,t) such that k_n | s*t, where k_n = A335437(n).

Offset 1, canonical program `A335438.P3356434190855580502`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335437, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335438 (n : ℕ) : ℤ :=
  A335438.P3356434190855580502.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335437, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335657.P17958321216927884544

`A036348(n+1)/2`
-/

namespace A335657.P17958321216927884544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036348 (n + 1) : ℚ) / 2

end

end A335657.P17958321216927884544

noncomputable section

/-- A335657: Numbers whose prime factors (including repetitions) sum to an odd number.

Offset 1, canonical program `A335657.P17958321216927884544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335657 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335657.P17958321216927884544.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336323.P14905383246300325352

`A002808(A334880(n+1))`
-/

namespace A336323.P14905383246300325352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A334880 (n + 1)).toNat

end

end A336323.P14905383246300325352

noncomputable section

/-- A336323: Numbers composite(n) such that gcd(n,composite(n)) > 1.

Offset 1, canonical program `A336323.P14905383246300325352`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336323 (n : ℕ) : ℤ :=
  A336323.P14905383246300325352.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336612.P16379185797943986426

`eq[0, (n+1)%A062069(n+1)]+1`
-/

namespace A336612.P16379185797943986426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A062069 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336612.P16379185797943986426

noncomputable section

/-- A336612: Numbers m such that sigma(tau(m)) divides m, where tau(m) is the number of divisors function (A000005) and sigma(m) is the sum of divisors function (A000203).

Offset 1, canonical program `A336612.P16379185797943986426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A336612 (n : ℕ) : ℤ :=
  (A336612.P16379185797943986426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A336612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336615.P1929992287404199022

`eq[2, A295878(n+1)]+1`
-/

namespace A336615.P1929992287404199022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336615.P1929992287404199022

noncomputable section

/-- A336615: Numbers of the form p * m^2, where p is prime and m > 0 is not divisible by p.

Offset 1, canonical program `A336615.P1929992287404199022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9899 terms. -/
def A336615 (n : ℕ) : ℤ :=
  (A336615.P1929992287404199022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9899 terms. -/
def A336615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336715.P8758040222245764786

`record[gcd(n+1, A062355(n+1))]`
-/

namespace A336715.P8758040222245764786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A062355 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336715.P8758040222245764786

noncomputable section

/-- A336715: Numbers m that divide the product phi(m) * tau(m), where tau is the number of divisors function (A000005) and phi is the Euler totient function (A000010).

Offset 1, canonical program `A336715.P8758040222245764786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A336715 (n : ℕ) : ℤ :=
  (A336715.P8758040222245764786.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A336715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336940.P4983532060712905772

`A027423(n)/(A011371(n)+1)`
-/

namespace A336940.P4983532060712905772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027423 n : ℚ) / (A011371 n + 1 : ℚ)

end

end A336940.P4983532060712905772

noncomputable section

/-- A336940: Number of odd divisors of n!.

Offset 0, canonical program `A336940.P4983532060712905772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A336940 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336940.P4983532060712905772.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A336940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338038.P9375141477363809092

`A275812(n+1)+A008472(n+1)`
-/

namespace A338038.P9375141477363809092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (n + 1) + A008472 (n + 1)

end

end A338038.P9375141477363809092

noncomputable section

/-- A338038: a(n) is the sum of the primes and exponents in the prime factorization of n, but ignoring 1-exponents.

Offset 1, canonical program `A338038.P9375141477363809092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338038 (n : ℕ) : ℤ :=
  A338038.P9375141477363809092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338630.P3744715892641447114

`A135679(n+1)%A029940(n+1)`
-/

namespace A338630.P3744715892641447114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135679 (n + 1)) (A029940 (n + 1))

end

end A338630.P3744715892641447114

noncomputable section

/-- A338630: Least number of odd primes that add up to n, or 0 if no such representation is possible.

Offset 1, canonical program `A338630.P3744715892641447114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A338630 (n : ℕ) : ℤ :=
  A338630.P3744715892641447114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A338630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338894.P18059410456497600823

`A132188((n+1)²)`
-/

namespace A338894.P18059410456497600823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132188 ((n + 1) ^ 2)

end

end A338894.P18059410456497600823

noncomputable section

/-- A338894: Number of ordered pairs (x,y): 1 <= x, y <= n*n, such that x*y is a square.

Offset 1, canonical program `A338894.P18059410456497600823`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338894 (n : ℕ) : ℤ :=
  A338894.P18059410456497600823.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341625.P17225356341816704463

`round(n/(A129283(n)+1))`
-/

namespace A341625.P17225356341816704463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A129283 n + 1 : ℚ))

end

end A341625.P17225356341816704463

noncomputable section

/-- A341625: a(n) = 1 if the arithmetic derivative of n is less than n, otherwise 0.

Offset 0, canonical program `A341625.P17225356341816704463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341625 (n : ℕ) : ℤ :=
  A341625.P17225356341816704463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341836.P13945260103919537689

`∑{d}[n+1, A007427(#)*A341834((n+1)/#)]`
-/

namespace A341836.P13945260103919537689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A341834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341836.P13945260103919537689

noncomputable section

/-- A341836: Dirichlet g.f.: 1 / zeta(s)^10.

Offset 1, canonical program `A341836.P13945260103919537689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341836 (n : ℕ) : ℤ :=
  A341836.P13945260103919537689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341880.P3597837637879415614

`6*A000005(n+16)-4*A007425(n+16)+A007426(n+16)-4`
-/

namespace A341880.P3597837637879415614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000005 (n + 16) - 4 * A007425 (n + 16) + A007426 (n + 16) - 4

end

end A341880.P3597837637879415614

noncomputable section

/-- A341880: Number of ordered factorizations of n into 4 factors > 1.

Offset 16, canonical program `A341880.P3597837637879415614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341880 (n : ℕ) : ℤ :=
  A341880.P3597837637879415614.a (n - 16)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341882.P15214908650408016804

`15*A000005(n+64)-20*A007425(n+64)+15*A007426(n+64)-6*A061200(n+64)+A034695(n+64)-6`
-/

namespace A341882.P15214908650408016804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A000005 (n + 64) - 20 * A007425 (n + 64) + 15 * A007426 (n + 64) - 6 * A061200 (n + 64) + A034695 (n + 64) - 6

end

end A341882.P15214908650408016804

noncomputable section

/-- A341882: Number of ordered factorizations of n into 6 factors > 1.

Offset 64, canonical program `A341882.P15214908650408016804`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007426, A034695, A061200, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341882 (n : ℕ) : ℤ :=
  A341882.P15214908650408016804.a (n - 64)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007426, A034695, A061200, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341987.P4668828004346130365

`∑{#}[n, A341983(#+4)*A341983(n-#+4)]`
-/

namespace A341987.P4668828004346130365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A341983 (k + 4) * A341983 ((n : ℤ) - (k : ℤ) + 4).toNat

end

end A341987.P4668828004346130365

noncomputable section

/-- A341987: Number of ways to write n as an ordered sum of 8 primes (counting 1 as a prime).

Offset 8, canonical program `A341987.P4668828004346130365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A341987 (n : ℕ) : ℤ :=
  A341987.P4668828004346130365.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A341987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341995.P4102610596282420216

`A000212(C(2, A068346(n)))`
-/

namespace A341995.P4102610596282420216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (Nat.choose 2 (A068346 n).toNat)

end

end A341995.P4102610596282420216

noncomputable section

/-- A341995: a(n) = 1 if the arithmetic derivative (A003415) of n is a prime, otherwise 0.

Offset 0, canonical program `A341995.P4102610596282420216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341995 (n : ℕ) : ℤ :=
  A341995.P4102610596282420216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342051.P3922930689487154872

`record[(n+1)*A008683(n+1-A276151(n+1))]`
-/

namespace A342051.P3922930689487154872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 ((n + 1 : ℤ) - A276151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342051.P3922930689487154872

noncomputable section

/-- A342051: Numbers k which have an even number of trailing zeros in their primorial base representation A049345(k).

Offset 1, canonical program `A342051.P3922930689487154872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6376 terms. -/
def A342051 (n : ℕ) : ℤ :=
  A342051.P3922930689487154872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6376 terms. -/
def A342051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343109.P14668972200541254521

`lt[A188171(n+1), 1]+1`
-/

namespace A343109.P14668972200541254521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188171 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A343109.P14668972200541254521

noncomputable section

/-- A343109: Numbers having no divisor of the form 8*k + 5.

Offset 1, canonical program `A343109.P14668972200541254521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4042 terms. -/
def A343109 (n : ℕ) : ℤ :=
  (A343109.P14668972200541254521.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4042 terms. -/
def A343109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343113.P7654673107795558321

`eq[1, A188171(n+1)]+1`
-/

namespace A343113.P7654673107795558321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343113.P7654673107795558321

noncomputable section

/-- A343113: Numbers having exactly 1 divisor of the form 8*k + 5.

Offset 1, canonical program `A343113.P7654673107795558321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2903 terms. -/
def A343113 (n : ℕ) : ℤ :=
  (A343113.P7654673107795558321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2903 terms. -/
def A343113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343216.P4920638713080032200

`lt[A342925(n+1), n+1]+1`
-/

namespace A343216.P4920638713080032200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A343216.P4920638713080032200

noncomputable section

/-- A343216: Numbers k such that A003415(sigma(k)) < k, where A003415(x) gives the arithmetic derivative of x.

Offset 1, canonical program `A343216.P4920638713080032200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 873 terms. -/
def A343216 (n : ℕ) : ℤ :=
  (A343216.P4920638713080032200.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 873 terms. -/
def A343216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343217.P4280884664025876512

`lt[n, A342925(n+1)]+1`
-/

namespace A343217.P4280884664025876512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A343217.P4280884664025876512

noncomputable section

/-- A343217: Numbers k such that A003415(sigma(k)) >= k, where A003415(x) gives the arithmetic derivative of x.

Offset 1, canonical program `A343217.P4280884664025876512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343217 (n : ℕ) : ℤ :=
  (A343217.P4280884664025876512.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343218.P8338746516779628182

`lt[n, A342925(gcd(n, C(2, n)))]`
-/

namespace A343218.P8338746516779628182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A343218.P8338746516779628182

noncomputable section

/-- A343218: Numbers k such that A003415(sigma(k)) > k.

Offset 1, canonical program `A343218.P8338746516779628182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343218 (n : ℕ) : ℤ :=
  (A343218.P8338746516779628182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343219.P139965300624176428

`ceil(A342926(n+1)/(A016754(n)+1))`
-/

namespace A343219.P139965300624176428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342926 (n + 1) : ℚ) / (A016754 n + 1 : ℚ)⌉

end

end A343219.P139965300624176428

noncomputable section

/-- A343219: a(n) = 1 if A003415(sigma(k)) > k, otherwise 0.

Offset 1, canonical program `A343219.P139965300624176428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343219 (n : ℕ) : ℤ :=
  A343219.P139965300624176428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343785.P5171936398951743688

`A008836(A343430(n+1))`
-/

namespace A343785.P5171936398951743688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A343430 (n + 1)).toNat

end

end A343785.P5171936398951743688

noncomputable section

/-- A343785: a(n) is completely multiplicative with a(p^e) = (-1)^e if p == 2 (mod 3) and a(p^e) = 1 otherwise.

Offset 1, canonical program `A343785.P5171936398951743688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343785 (n : ℕ) : ℤ :=
  A343785.P5171936398951743688.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343785.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344134.P1833307381121386491

`∑{d}[n+1, #*A070919(#)]`
-/

namespace A344134.P1833307381121386491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A070919 d

end

end A344134.P1833307381121386491

noncomputable section

/-- A344134: a(n) = Sum_{i|n, j|n, k|n} lcm(i,j,k).

Offset 1, canonical program `A344134.P1833307381121386491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344134 (n : ℕ) : ℤ :=
  A344134.P1833307381121386491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344313.P8586429644628599476

`eq[0, Δ[A286324(n+1)]]+1`
-/

namespace A344313.P8586429644628599476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344313.P8586429644628599476

noncomputable section

/-- A344313: Number k such that k and k+1 have the same number of bi-unitary divisors (A286324).

Offset 1, canonical program `A344313.P8586429644628599476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A344313 (n : ℕ) : ℤ :=
  (A344313.P8586429644628599476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A344313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344314.P13255996641734891554

`eq[A048105(n+1), A048105(n+2)]+1`
-/

namespace A344314.P13255996641734891554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344314.P13255996641734891554

noncomputable section

/-- A344314: Number k such that k and k+1 have the same number of nonunitary divisors (A048105).

Offset 1, canonical program `A344314.P13255996641734891554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3460 terms. -/
def A344314 (n : ℕ) : ℤ :=
  (A344314.P13255996641734891554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3460 terms. -/
def A344314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344343.P11569095817677921307

`A344342(eq[1, A344342(n+2)-A344342(n+1)]+1)`
-/

namespace A344343.P11569095817677921307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (n + 2) - A344342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A344343.P11569095817677921307

noncomputable section

/-- A344343: Starts of runs of 3 consecutive Gray-code Niven numbers (A344341).

Offset 1, canonical program `A344343.P11569095817677921307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1219 terms. -/
def A344343 (n : ℕ) : ℤ :=
  A344343.P11569095817677921307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1219 terms. -/
def A344343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344585.P13042026218123859001

`lt[A211991(n+1), 0]+1`
-/

namespace A344585.P13042026218123859001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A344585.P13042026218123859001

noncomputable section

/-- A344585: Numbers whose sum of proper divisors (A001065) is greater than their arithmetic derivative (A003415).

Offset 1, canonical program `A344585.P13042026218123859001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344585 (n : ℕ) : ℤ :=
  (A344585.P13042026218123859001.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344683.P10035867171660024197

`∑{d}[n+1, A174466(#)*A247343((n+1)/#)]`
-/

namespace A344683.P10035867171660024197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174466 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344683.P10035867171660024197

noncomputable section

/-- A344683: Dirichlet convolution of the Euler totient function with itself, applied twice.

Offset 1, canonical program `A344683.P10035867171660024197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344683 (n : ℕ) : ℤ :=
  A344683.P10035867171660024197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344875.P1341474813427060519

`2*(n+1)-A323410(2*(n+1))`
-/

namespace A344875.P1341474813427060519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A323410 (2 * (n + 1))

end

end A344875.P1341474813427060519

noncomputable section

/-- A344875: Multiplicative with a(2^e) = 2^(1+e) - 1, and a(p^e) = p^e - 1 for odd primes p.

Offset 1, canonical program `A344875.P1341474813427060519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344875 (n : ℕ) : ℤ :=
  A344875.P1341474813427060519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345001.P11556338326385216766

`A001065(n+1)+A168036(n+1)`
-/

namespace A345001.P11556338326385216766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A168036 (n + 1)

end

end A345001.P11556338326385216766

noncomputable section

/-- A345001: a(n) = sigma(n) + n' - 2n, where n' is the arithmetic derivative of n (A003415) and sigma is the sum of divisors (A000203).

Offset 1, canonical program `A345001.P11556338326385216766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A168036, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345001 (n : ℕ) : ℤ :=
  A345001.P11556338326385216766.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A168036, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345001.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345039.P8520321823126508405

`A057860(n+1)%A008619(A016035(n+1))`
-/

namespace A345039.P8520321823126508405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057860 (n + 1)) (A008619 (A016035 (n + 1)).toNat)

end

end A345039.P8520321823126508405

noncomputable section

/-- A345039: Number of partitions of n into two composite parts that share a nontrivial divisor.

Offset 1, canonical program `A345039.P8520321823126508405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345039 (n : ℕ) : ℤ :=
  A345039.P8520321823126508405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345345.P14068785434058537424

`∑{d}[n+1, A124315(#)*A143519((n+1)/#)]`
-/

namespace A345345.P14068785434058537424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345345.P14068785434058537424

noncomputable section

/-- A345345: a(n) = Sum_{d^2|n} omega(n/d^2).

Offset 1, canonical program `A345345.P14068785434058537424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345345 (n : ℕ) : ℤ :=
  A345345.P14068785434058537424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345909.P9109467703785145948

`eq[1, A124754(n)]`
-/

namespace A345909.P9109467703785145948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345909.P9109467703785145948

noncomputable section

/-- A345909: Numbers k such that the k-th composition in standard order (row k of A066099) has alternating sum 1.

Offset 1, canonical program `A345909.P9109467703785145948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A345909 (n : ℕ) : ℤ :=
  (A345909.P9109467703785145948.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A345909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346014.P10793326421959037662

`eq[1, A346010(n+1)]+1`
-/

namespace A346014.P10793326421959037662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346014.P10793326421959037662

noncomputable section

/-- A346014: Numbers whose average number of distinct prime factors of their divisors is an integer.

Offset 1, canonical program `A346014.P10793326421959037662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3067 terms. -/
def A346014 (n : ℕ) : ℤ :=
  (A346014.P10793326421959037662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3067 terms. -/
def A346014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346416.P9477400210160570327

`A055377(∩[A001043(n+1), A249666(n+1)])`
-/

namespace A346416.P9477400210160570327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249666 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A346416.P9477400210160570327

noncomputable section

/-- A346416: Primes p such that the greatest perimeter of a triangle with prime sides including p and the next prime is prime.

Offset 1, canonical program `A346416.P9477400210160570327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A346416 (n : ℕ) : ℤ :=
  A346416.P9477400210160570327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A346416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347026.P1087206353886803899

`or(1, A253580(n))`
-/

namespace A347026.P1087206353886803899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A253580 n)

end

end A347026.P1087206353886803899

noncomputable section

/-- A347026: Irregular triangle read by rows in which row n lists the first n odd numbers, followed by the first n odd numbers in decreasing order.

Offset 1, canonical program `A347026.P1087206353886803899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A347026 (n : ℕ) : ℤ :=
  A347026.P1087206353886803899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A347026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347872.P7267029531139032759

`eq[0, A347871(n+1)]+1`
-/

namespace A347872.P7267029531139032759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347872.P7267029531139032759

noncomputable section

/-- A347872: Numbers k such that k and A003415(sigma(k)) have the same parity.

Offset 1, canonical program `A347872.P7267029531139032759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347872 (n : ℕ) : ℤ :=
  (A347872.P7267029531139032759.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347873.P7226621123320201345

`lt[0, A347871(n+1)]+1`
-/

namespace A347873.P7226621123320201345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347873.P7226621123320201345

noncomputable section

/-- A347873: Numbers k such that k and A003415(sigma(k)) are of different parity.

Offset 1, canonical program `A347873.P7226621123320201345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347873 (n : ℕ) : ℤ :=
  (A347873.P7226621123320201345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347877.P587708220660822344

`record[(n+2)*A347870(n+2)]`
-/

namespace A347877.P587708220660822344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A347870 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347877.P587708220660822344

noncomputable section

/-- A347877: Numbers k for which A003415(sigma(k)) is odd.

Offset 1, canonical program `A347877.P587708220660822344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9653 terms. -/
def A347877 (n : ℕ) : ℤ :=
  A347877.P587708220660822344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9653 terms. -/
def A347877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347883.P4782406160806441288

`(A342926(n+1)%3+3)%3`
-/

namespace A347883.P4782406160806441288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A342926 (n + 1)) 3 + 3) 3

end

end A347883.P4782406160806441288

noncomputable section

/-- A347883: a(n) = A342926(n) mod 3.

Offset 1, canonical program `A347883.P4782406160806441288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347883 (n : ℕ) : ℤ :=
  A347883.P4782406160806441288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348093.P4410502798466718450

`∩[A036434(n+1), A045765(n+1)]`
-/

namespace A348093.P4410502798466718450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348093.P4410502798466718450

noncomputable section

/-- A348093: Numbers k >= 1 such that there is no pair (x,y) such that x - d(x) = k or y + d(y) = k, where d = A000005 = number of divisors.

Offset 1, canonical program `A348093.P4410502798466718450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A348093 (n : ℕ) : ℤ :=
  (A348093.P4410502798466718450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A348093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348097.P16199017349381684825

`eq[A056169(n+1), A056170(n+1)]+1`
-/

namespace A348097.P16199017349381684825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348097.P16199017349381684825

noncomputable section

/-- A348097: Numbers having equally many unitary and nonunitary prime divisors.

Offset 1, canonical program `A348097.P16199017349381684825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A348097 (n : ℕ) : ℤ :=
  (A348097.P16199017349381684825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A348097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348121.P4983876733815640948

`lt[A056169(n+1), A056170(n+1)]+1`
-/

namespace A348121.P4983876733815640948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A348121.P4983876733815640948

noncomputable section

/-- A348121: Numbers having more nonunitary than unitary prime divisors.

Offset 1, canonical program `A348121.P4983876733815640948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A348121 (n : ℕ) : ℤ :=
  (A348121.P4983876733815640948.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A348121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348540.P1296944890108127661

`∑[A023645(n+1)-∑{d}[n, (#%#²)%2]]`
-/

namespace A348540.P1296944890108127661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) - ((∑ d ∈ Nat.divisors (f2 n), d % d ^ 2 % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348540.P1296944890108127661

noncomputable section

/-- A348540: Number of partitions of n into 3 parts whose smallest part divides the largest part.

Offset 1, canonical program `A348540.P1296944890108127661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1903 terms. -/
def A348540 (n : ℕ) : ℤ :=
  A348540.P1296944890108127661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1903 terms. -/
def A348540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348962.P1767311607257798879

`filter[A348961(n+1), A353626(#)]`
-/

namespace A348962.P1767311607257798879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A348962.P1767311607257798879

noncomputable section

/-- A348962: Exponential harmonic numbers of type 1 (A348961) that are not squarefree.

Offset 1, canonical program `A348962.P1767311607257798879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A348962 (n : ℕ) : ℤ :=
  A348962.P1767311607257798879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A348962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349342.P11414406444135434568

`A026741(n+1)+A349341(n+1)`
-/

namespace A349342.P11414406444135434568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + A349341 (n + 1)

end

end A349342.P11414406444135434568

noncomputable section

/-- A349342: Sum of A026741 and its Dirichlet inverse.

Offset 1, canonical program `A349342.P11414406444135434568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349342 (n : ℕ) : ℤ :=
  A349342.P11414406444135434568.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350700.P12913165554531738281

`Δ[A214923(abs(1-n))]`
-/

namespace A350700.P12913165554531738281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214923 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350700.P12913165554531738281

noncomputable section

/-- A350700: a(n) is the number of 1's minus the number of 0's in A004685(n).

Offset 0, canonical program `A350700.P12913165554531738281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350700 (n : ℕ) : ℤ :=
  A350700.P12913165554531738281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350833.P15049473008228286715

`A007814(A350618(n+1))`
-/

namespace A350833.P15049473008228286715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A350618 (n + 1)).toNat

end

end A350833.P15049473008228286715

noncomputable section

/-- A350833: Run lengths of even terms in A350877 (half if even, add next prime if odd).

Offset 1, canonical program `A350833.P15049473008228286715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350833 (n : ℕ) : ℤ :=
  A350833.P15049473008228286715.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351114.P13024542866936842174

`A063524(A289412(n+1))`
-/

namespace A351114.P13024542866936842174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A289412 (n + 1)).toNat

end

end A351114.P13024542866936842174

noncomputable section

/-- A351114: Characteristic function of balanced numbers: a(n) = 1 if phi(n) divides sigma(n), otherwise 0.

Offset 1, canonical program `A351114.P13024542866936842174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351114 (n : ℕ) : ℤ :=
  A351114.P13024542866936842174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351604.P4214175923410223717

`∑{d}[n+1, A069091(#)*A351308((n+1)/#)]`
-/

namespace A351604.P4214175923410223717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069091 d * A351308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351604.P4214175923410223717

noncomputable section

/-- A351604: a(n) = n^6 * Sum_{d^2|n} 1 / d^6.

Offset 1, canonical program `A351604.P4214175923410223717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351604 (n : ℕ) : ℤ :=
  A351604.P4214175923410223717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351711.P10274480873794141417

`A248577(n+1)+∑{d}[n+1, A055631(#)]`
-/

namespace A351711.P10274480873794141417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A055631 d

end

end A351711.P10274480873794141417

noncomputable section

/-- A351711: a(n) = Sum_{p|n, p prime} Sum_{d|n} gcd(d,p).

Offset 1, canonical program `A351711.P10274480873794141417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351711 (n : ℕ) : ℤ :=
  A351711.P10274480873794141417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352202.P16382500020271687373

`A111113(n+1)+A000120(n+1)`
-/

namespace A352202.P16382500020271687373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111113 (n + 1) + A000120 (n + 1)

end

end A352202.P16382500020271687373

noncomputable section

/-- A352202: a(n) = binary weight of A115510(n).

Offset 1, canonical program `A352202.P16382500020271687373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A352202 (n : ℕ) : ℤ :=
  A352202.P16382500020271687373.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A352202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352273.P15168054115810300813

`filter[A055048(n+1), A035263(#)]`
-/

namespace A352273.P15168054115810300813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A352273.P15168054115810300813

noncomputable section

/-- A352273: Numbers whose squarefree part is congruent to 5 modulo 6.

Offset 1, canonical program `A352273.P15168054115810300813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6659 terms. -/
def A352273 (n : ℕ) : ℤ :=
  A352273.P15168054115810300813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6659 terms. -/
def A352273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352291.P14610308504021664996

`A094694(eq[1, A094694(n+1)%2]+1)`
-/

namespace A352291.P14610308504021664996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094694 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A352291.P14610308504021664996

noncomputable section

/-- A352291: Odd numbers k such that hammingweight(k^2) < hammingweight(k).

Offset 1, canonical program `A352291.P14610308504021664996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4178 terms. -/
def A352291 (n : ℕ) : ℤ :=
  A352291.P14610308504021664996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4178 terms. -/
def A352291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352482.P1047364551664792945

`A038040(n+1)/gcd(A038040(n+1), A049820(n+1))`
-/

namespace A352482.P1047364551664792945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (Int.gcd (A038040 (n + 1)) (A049820 (n + 1)) : ℚ)

end

end A352482.P1047364551664792945

noncomputable section

/-- A352482: Denominator of (n-d)/n*d where d = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A352482.P1047364551664792945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A352482.P1047364551664792945.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353137.P706346639936671998

`∩[A061771(n+1), A151800(A061771(n+1))]`
-/

namespace A353137.P706346639936671998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A061771 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353137.P706346639936671998

noncomputable section

/-- A353137: Primes whose gaps to both neighbor primes are powers of two.

Offset 1, canonical program `A353137.P706346639936671998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A353137 (n : ℕ) : ℤ :=
  (A353137.P706346639936671998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A353137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353498.P9279087021698104160

`and(A019427(n)²²², A318829(n+1))`
-/

namespace A353498.P9279087021698104160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((A019427 n ^ 2) ^ 2) ^ 2) (A318829 (n + 1))

end

end A353498.P9279087021698104160

noncomputable section

/-- A353498: a(n) = 1 if n > 1 and the 2-adic valuation of phi(n) does not exceed the 2-adic valuation of n-1, otherwise 0.

Offset 1, canonical program `A353498.P9279087021698104160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353498 (n : ℕ) : ℤ :=
  A353498.P9279087021698104160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354038.P758983584770723081

`lt[0, A354037(n+1)]+1`
-/

namespace A354038.P758983584770723081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354038.P758983584770723081

noncomputable section

/-- A354038: Numbers k such that sum of the proper divisors of k is a multiple of 4.

Offset 1, canonical program `A354038.P758983584770723081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354038 (n : ℕ) : ℤ :=
  (A354038.P758983584770723081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354098.P8617954858712711501

`lt[0, A354097(n+1)]+1`
-/

namespace A354098.P8617954858712711501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354098.P8617954858712711501

noncomputable section

/-- A354098: Numbers k such that the cototient of k (= k-phi(k)) is a multiple of 4.

Offset 1, canonical program `A354098.P8617954858712711501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354098 (n : ℕ) : ℤ :=
  (A354098.P8617954858712711501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354714.P1386875788327276487

`filter[A272872(n+1), A005171(#)]`
-/

namespace A354714.P1386875788327276487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A354714.P1386875788327276487

noncomputable section

/-- A354714: Nonprime numbers k such that the number of divisors of k divides k+1.

Offset 1, canonical program `A354714.P1386875788327276487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5618 terms. -/
def A354714 (n : ℕ) : ℤ :=
  A354714.P1386875788327276487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5618 terms. -/
def A354714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354927.P9536107206795731212

`val(A140482(n+1), n+3)`
-/

namespace A354927.P9536107206795731212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A140482 (n + 1)).toNat (n + 3)

end

end A354927.P9536107206795731212

noncomputable section

/-- A354927: a(n) = 1 if the product of divisors of n is n^2, otherwise 0.

Offset 1, canonical program `A354927.P9536107206795731212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354927 (n : ℕ) : ℤ :=
  (A354927.P9536107206795731212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356744.P10025507909788214387

`∩[A030626(n+1), A062832(n+1)]`
-/

namespace A356744.P10025507909788214387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356744.P10025507909788214387

noncomputable section

/-- A356744: Numbers k such that both k and k+2 have exactly 8 divisors.

Offset 1, canonical program `A356744.P10025507909788214387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1489 terms. -/
def A356744 (n : ℕ) : ℤ :=
  (A356744.P10025507909788214387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1489 terms. -/
def A356744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357014.P2212409832347884879

`filter[A197680(n+1), A000035(#)]`
-/

namespace A357014.P2212409832347884879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A357014.P2212409832347884879

noncomputable section

/-- A357014: Numbers whose sum of exponential divisors (A051377) is odd.

Offset 1, canonical program `A357014.P2212409832347884879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4101 terms. -/
def A357014 (n : ℕ) : ℤ :=
  A357014.P2212409832347884879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4101 terms. -/
def A357014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357625.P1034363125234446896

`eq[1, A124754(and(n, A006068(n)))+1]`
-/

namespace A357625.P1034363125234446896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (Int.land (n : ℤ) (A006068 n)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357625.P1034363125234446896

noncomputable section

/-- A357625: Numbers k such that the k-th composition in standard order has half-alternating sum 0.

Offset 1, canonical program `A357625.P1034363125234446896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A357625 (n : ℕ) : ℤ :=
  (A357625.P1034363125234446896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A357625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357684.P2308657959105153288

`A007913(A335275(n+1))`
-/

namespace A357684.P2308657959105153288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A335275 (n + 1)).toNat

end

end A357684.P2308657959105153288

noncomputable section

/-- A357684: The squarefree part (A007913) of numbers whose squarefree part is a unitary divisor (A335275).

Offset 1, canonical program `A357684.P2308657959105153288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357684 (n : ℕ) : ℤ :=
  A357684.P2308657959105153288.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358261.P13898711941004689551

`A046951(n+1)-A358260(n+1)`
-/

namespace A358261.P13898711941004689551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A358260 (n + 1)

end

end A358261.P13898711941004689551

noncomputable section

/-- A358261: a(n) is the number of noninfinitary square divisors of n.

Offset 1, canonical program `A358261.P13898711941004689551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358261 (n : ℕ) : ℤ :=
  A358261.P13898711941004689551.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358531.P7250430587380128327

`A258026(n+1)+2`
-/

namespace A358531.P7250430587380128327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1) + 2

end

end A358531.P7250430587380128327

noncomputable section

/-- A358531: Indices of the primes in A358530.

Offset 1, canonical program `A358531.P7250430587380128327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358531 (n : ℕ) : ℤ :=
  A358531.P7250430587380128327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358531.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358772.P7530290515183113547

`eq[1, A353493(n)]`
-/

namespace A358772.P7530290515183113547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358772.P7530290515183113547

noncomputable section

/-- A358772: Numbers whose arithmetic derivative is of the form 4k+1, cf. A003415.

Offset 1, canonical program `A358772.P7530290515183113547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358772 (n : ℕ) : ℤ :=
  (A358772.P7530290515183113547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359121.P4053117108237885316

`∑[char[A068811(n+1)-1]]`
-/

namespace A359121.P4053117108237885316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068811 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359121.P4053117108237885316

noncomputable section

/-- A359121: a(n) = number of terms of A068811 that are <= n.

Offset 1, canonical program `A359121.P4053117108237885316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359121 (n : ℕ) : ℤ :=
  (A359121.P4053117108237885316.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359123.P2533263003964580868

`A004525(A068811(n+2)-A068811(n+1))`
-/

namespace A359123.P2533263003964580868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A068811 (n + 2) - A068811 (n + 1)).toNat

end

end A359123.P2533263003964580868

noncomputable section

/-- A359123: First differences of A068811, halved.

Offset 1, canonical program `A359123.P2533263003964580868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359123 (n : ℕ) : ℤ :=
  A359123.P2533263003964580868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359161.P8726554361443463211

`filter[A091113(n+1), A353557(#)]`
-/

namespace A359161.P8726554361443463211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A359161.P8726554361443463211

noncomputable section

/-- A359161: Numbers of the form 4u+1 with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359161.P8726554361443463211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A359161 (n : ℕ) : ℤ :=
  A359161.P8726554361443463211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A359161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359163.P2654985658167397465

`filter[A091236(n+1), A353557(#)]`
-/

namespace A359163.P2654985658167397465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A359163.P2654985658167397465

noncomputable section

/-- A359163: Numbers of the form 4u+3 with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359163.P2654985658167397465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A359163 (n : ℕ) : ℤ :=
  A359163.P2654985658167397465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A359163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359381.P4166977693379255214

`lt[0, A359172(n+1)]+1`
-/

namespace A359381.P4166977693379255214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359381.P4166977693379255214

noncomputable section

/-- A359381: Nonmultiples of 3 that have an odd number of prime factors (with multiplicity).

Offset 1, canonical program `A359381.P4166977693379255214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359381 (n : ℕ) : ℤ :=
  (A359381.P4166977693379255214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359411.P11879795316904517508

`∏{e}[n+1, A092505(#)]`
-/

namespace A359411.P11879795316904517508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A092505 (Nat.factorization (f1 n) p)

end

end A359411.P11879795316904517508

noncomputable section

/-- A359411: a(n) is the number of divisors of n that are both infinitary and exponential.

Offset 1, canonical program `A359411.P11879795316904517508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359411 (n : ℕ) : ℤ :=
  A359411.P11879795316904517508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359552.P1693999533399603662

`C(A085731(n+1), n+1)`
-/

namespace A359552.P1693999533399603662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A085731 (n + 1)).toNat (n + 1)

end

end A359552.P1693999533399603662

noncomputable section

/-- A359552: Multiplicative with a(p^e) = 1 if e == 0 mod p, otherwise 0.

Offset 1, canonical program `A359552.P1693999533399603662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359552 (n : ℕ) : ℤ :=
  (A359552.P1693999533399603662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360125.P8640991440014561384

`A319684(gcd(xor(1, n²), ∑[n]))%2`
-/

namespace A360125.P8640991440014561384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319684 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))) 2

end

end A360125.P8640991440014561384

noncomputable section

/-- A360125: Parity of A359425, where A359425 is Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

Offset 1, canonical program `A360125.P8640991440014561384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360125 (n : ℕ) : ℤ :=
  A360125.P8640991440014561384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360390.P9795167924610291332

`∑[A359485(n+1)]`
-/

namespace A360390.P9795167924610291332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360390.P9795167924610291332

noncomputable section

/-- A360390: a(1) = 1; a(n) = -Sum_{k=2..n} k^2 * a(floor(n/k)).

Offset 1, canonical program `A360390.P9795167924610291332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360390 (n : ℕ) : ℤ :=
  A360390.P9795167924610291332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360396.P1664411454202365035

`∩[A356133(n+1), A360392(n+1)]`
-/

namespace A360396.P1664411454202365035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360396.P1664411454202365035

noncomputable section

/-- A360396: Intersection of A356133 and A360392.

Offset 1, canonical program `A360396.P1664411454202365035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A360396 (n : ℕ) : ℤ :=
  (A360396.P1664411454202365035.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A360396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360779.P10771138546409897050

`A033950(n+2)-A033950(n+1)`
-/

namespace A360779.P10771138546409897050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 2) - A033950 (n + 1)

end

end A360779.P10771138546409897050

noncomputable section

/-- A360779: Refactorable numbers gaps: differences between consecutive refactorable numbers.

Offset 1, canonical program `A360779.P10771138546409897050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360779 (n : ℕ) : ℤ :=
  A360779.P10771138546409897050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360779.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360902.P15024982832837445279

`eq[A005361(n+1), A000005(A007947(n+1))]+1`
-/

namespace A360902.P15024982832837445279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360902.P15024982832837445279

noncomputable section

/-- A360902: Numbers with the same number of squarefree divisors and powerful divisors.

Offset 1, canonical program `A360902.P15024982832837445279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A360902 (n : ℕ) : ℤ :=
  (A360902.P15024982832837445279.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A360902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360997.P15884179674524214355

`A074816(n+1)*A007426(n+1)/A007425(n+1)`
-/

namespace A360997.P15884179674524214355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074816 (n + 1) * A007426 (n + 1) : ℚ) / (A007425 (n + 1) : ℚ)

end

end A360997.P15884179674524214355

noncomputable section

/-- A360997: Multiplicative with a(p^e) = e + 3.

Offset 1, canonical program `A360997.P15884179674524214355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360997 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360997.P15884179674524214355.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361123.P17185907231639651446

`1-A361122(n+1)`
-/

namespace A361123.P17185907231639651446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361122 (n + 1)

end

end A361123.P17185907231639651446

noncomputable section

/-- A361123: 1 if n-th composite number A002808(n) is divisible by 3, otherwise 0.

Offset 1, canonical program `A361123.P17185907231639651446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361123 (n : ℕ) : ℤ :=
  A361123.P17185907231639651446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361338.P12830044282010602030

`A122856(C(floor(n/2), 56))`
-/

namespace A361338.P12830044282010602030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat 56)

end

end A361338.P12830044282010602030

noncomputable section

/-- A361338: Number of different single-digit numbers that can be reached from n by any permissible sequence of split-and-multiply operations.

Offset 0, canonical program `A361338.P12830044282010602030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A361338 (n : ℕ) : ℤ :=
  A361338.P12830044282010602030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A361338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362934.P7877997360191221463

`A000982(n+1)-A132188(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362934.P7877997360191221463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) - A132188 (n + 1)

end

end A362934.P7877997360191221463

noncomputable section

/-- A362934: a(n) = A000982(n) - A132188(n).

Offset 1, canonical program `A362934.P7877997360191221463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362934 (n : ℕ) : ℤ :=
  A362934.P7877997360191221463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363037.P17593486041959232839

`A188169(n+1)-A188171(n+1)`
-/

namespace A363037.P17593486041959232839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) - A188171 (n + 1)

end

end A363037.P17593486041959232839

noncomputable section

/-- A363037: Expansion of Sum_{k>0} x^k / (1 + x^(4*k)).

Offset 1, canonical program `A363037.P17593486041959232839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363037 (n : ℕ) : ℤ :=
  A363037.P17593486041959232839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363718.P3369360157164842008

`Δ[record[A268289(n)]]`
-/

namespace A363718.P3369360157164842008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363718.P3369360157164842008

noncomputable section

/-- A363718: Irregular triangle read by rows. An infinite binary tree which has root node 1 in row n = 0. Each node then has left child m-1 if greater than 0 and right child m+1, where m is the value of the parent node.

Offset 0, canonical program `A363718.P3369360157164842008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. -/
def A363718 (n : ℕ) : ℤ :=
  A363718.P3369360157164842008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. -/
def A363718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365170.P4762611898248662452

`∑{d}[n+1, A254503(#)*A295295((n+1)/#)]`
-/

namespace A365170.P4762611898248662452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d * A295295 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365170.P4762611898248662452

noncomputable section

/-- A365170: The sum of divisors d of n such that gcd(d, n/d) is squarefree.

Offset 1, canonical program `A365170.P4762611898248662452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365170 (n : ℕ) : ℤ :=
  A365170.P4762611898248662452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365552.P17496407190159151436

`A322483(A057521(n+1))`
-/

namespace A365552.P17496407190159151436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A057521 (n + 1)).toNat

end

end A365552.P17496407190159151436

noncomputable section

/-- A365552: The number of exponentially odd divisors of the powerful part of n.

Offset 1, canonical program `A365552.P17496407190159151436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365552 (n : ℕ) : ℤ :=
  A365552.P17496407190159151436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366643.P15455375307676145949

`A046951(A165725(n+1)*A165725(n+1))`
-/

namespace A366643.P15455375307676145949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A165725 (n + 1) * A165725 (n + 1)).toNat

end

end A366643.P15455375307676145949

noncomputable section

/-- A366643: a(n) is the number of divisors of n that are coprime to the terms of A366642.

Offset 1, canonical program `A366643.P15455375307676145949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366643 (n : ℕ) : ℤ :=
  A366643.P15455375307676145949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366721.P14264005158293563005

`∑[char[A102477(A054541(3*n+4))]]+1`
-/

namespace A366721.P14264005158293563005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102477 (A054541 (3 * n + 4)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A366721.P14264005158293563005

noncomputable section

/-- A366721: Number of digits left of the radix point of n when written in base Pi using a greedy algorithm representation.

Offset 0, canonical program `A366721.P14264005158293563005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366721 (n : ℕ) : ℤ :=
  (A366721.P14264005158293563005.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366761.P11411157237785428008

`lt[1, A080278(A005361(n+1))]+1`
-/

namespace A366761.P11411157237785428008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080278 (A005361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366761.P11411157237785428008

noncomputable section

/-- A366761: Numbers that have at least one exponent in their canonical prime factorization that is divisible by 3.

Offset 1, canonical program `A366761.P11411157237785428008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5242 terms. -/
def A366761 (n : ℕ) : ℤ :=
  (A366761.P11411157237785428008.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5242 terms. -/
def A366761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366840.P17137846369514752914

`A100006(n+1)-A366839(n+1)`
-/

namespace A366840.P17137846369514752914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) - A366839 (n + 1)

end

end A366840.P17137846369514752914

noncomputable section

/-- A366840: Sum of odd prime factors of n, counted with multiplicity.

Offset 1, canonical program `A366840.P17137846369514752914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366840 (n : ℕ) : ℤ :=
  A366840.P17137846369514752914.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367516.P12997703582462291800

`2^A367512(n+1)`
-/

namespace A367516.P12997703582462291800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A367512 (n + 1) : ℤ)

end

end A367516.P12997703582462291800

noncomputable section

/-- A367516: The number of unitary divisors of n that are exponentially evil numbers (A262675).

Offset 1, canonical program `A367516.P12997703582462291800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367516 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367516.P12997703582462291800.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368474.P7622636264866400950

`A005361(A197680(n+1))`
-/

namespace A368474.P7622636264866400950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A197680 (n + 1)).toNat

end

end A368474.P7622636264866400950

noncomputable section

/-- A368474: Product of exponents of prime factorization of the numbers whose exponents in their prime power factorization are squares (A197680).

Offset 1, canonical program `A368474.P7622636264866400950`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368474 (n : ℕ) : ℤ :=
  A368474.P7622636264866400950.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368533.P3880062833887801388

`eq[A007913(A271410(n)), A271410(n)]`
-/

namespace A368533.P3880062833887801388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A271410 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368533.P3880062833887801388

noncomputable section

/-- A368533: Numbers whose binary indices are all squarefree.

Offset 1, canonical program `A368533.P3880062833887801388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A368533 (n : ℕ) : ℤ :=
  (A368533.P3880062833887801388.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A368533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368810.P15557103798044834844

`A096617(n+1)*A297382(n+1)`
-/

namespace A368810.P15557103798044834844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096617 (n + 1) * A297382 (n + 1)

end

end A368810.P15557103798044834844

noncomputable section

/-- A368810: a(n) = numerator of Sum_{i=1..n} Sum_{j=1..n} (1/i + 1/j).

Offset 1, canonical program `A368810.P15557103798044834844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A368810 (n : ℕ) : ℤ :=
  A368810.P15557103798044834844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A368810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369048.P3645363535030871227

`ceil(A168036(n)/record[xor(7, n)])`
-/

namespace A369048.P3645363535030871227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168036 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌉

end

end A369048.P3645363535030871227

noncomputable section

/-- A369048: a(n) = 1 if the arithmetic derivative of n is greater than n, otherwise 0.

Offset 0, canonical program `A369048.P3645363535030871227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369048 (n : ℕ) : ℤ :=
  A369048.P3645363535030871227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369189.P17989487729230229152

`A185027(∏{p}[n+1, #])`
-/

namespace A369189.P17989487729230229152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185027 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A369189.P17989487729230229152

noncomputable section

/-- A369189: Sum of the squarefree triangular divisors of n.

Offset 1, canonical program `A369189.P17989487729230229152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369189 (n : ℕ) : ℤ :=
  A369189.P17989487729230229152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369211.P2557391982136002407

`eq[A005361(n+1), A005361(n+2)]+1`
-/

namespace A369211.P2557391982136002407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A369211.P2557391982136002407

noncomputable section

/-- A369211: Numbers k such that A005361(k) = A005361(k+1).

Offset 1, canonical program `A369211.P2557391982136002407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369211 (n : ℕ) : ℤ :=
  (A369211.P2557391982136002407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369659.P4114768482975404549

`eq[1, A369658(n)]`
-/

namespace A369659.P4114768482975404549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369659.P4114768482975404549

noncomputable section

/-- A369659: Non-multiples of 3 whose arithmetic derivative, or equally, the sum of prime factors (with multiplicity) is a multiple of 3.

Offset 1, canonical program `A369659.P4114768482975404549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369659 (n : ℕ) : ℤ :=
  (A369659.P4114768482975404549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369904.P7842773644825472258

`∑{d}[n+1, #*A322078((n+1)/#)]`
-/

namespace A369904.P7842773644825472258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A322078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P7842773644825472258

noncomputable section

/-- A369904: a(n) = n * Sum_{p|n, p prime} sigma(n/p) / p.

Offset 1, canonical program `A369904.P7842773644825472258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369904 (n : ℕ) : ℤ :=
  A369904.P7842773644825472258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369935.P16814839049346386395

`A051903(A197680(n+1))`
-/

namespace A369935.P16814839049346386395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A197680 (n + 1)).toNat

end

end A369935.P16814839049346386395

noncomputable section

/-- A369935: The maximal exponent in the prime factorization of the numbers whose all exponents are squares (A197680).

Offset 1, canonical program `A369935.P16814839049346386395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369935 (n : ℕ) : ℤ :=
  A369935.P16814839049346386395.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369939.P1009109779092640903

`eq[1, A166918(A051903(n+1)!)]+1`
-/

namespace A369939.P1009109779092640903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 (Nat.factorial (A051903 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369939.P1009109779092640903

noncomputable section

/-- A369939: Numbers whose maximal exponent in their prime factorization is a Fibonacci number.

Offset 1, canonical program `A369939.P1009109779092640903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A369939 (n : ℕ) : ℤ :=
  (A369939.P1009109779092640903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A369939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369968.P13152354729471573061

`A011558(n)*A369967(n)`
-/

namespace A369968.P13152354729471573061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 n * A369967 n

end

end A369968.P13152354729471573061

noncomputable section

/-- A369968: a(n) = 1 if n is not multiple of 5, but its arithmetic derivative is, otherwise 0.

Offset 0, canonical program `A369968.P13152354729471573061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369968 (n : ℕ) : ℤ :=
  A369968.P13152354729471573061.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370597.P7414276233010119171

`record[root(A000027(2*(n+1)), A378887(n+1))]`
-/

namespace A370597.P7414276233010119171
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * (n + 1)) : ℝ) ^ (1 / (A378887 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370597.P7414276233010119171

noncomputable section

/-- A370597: Even numbers k such that gcd(k, A007814(k)) = 1.

Offset 1, canonical program `A370597.P7414276233010119171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A370597 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370597.P7414276233010119171.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A370597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371201.P4499511649538821653

`A138383(n)-A054541(n+1)`
-/

namespace A371201.P4499511649538821653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n - A054541 (n + 1)

end

end A371201.P4499511649538821653

noncomputable section

/-- A371201: a(n) = Sum_{k=prime(n)..prime(n+1)-1} k, with a(0) = 1.

Offset 0, canonical program `A371201.P4499511649538821653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371201 (n : ℕ) : ℤ :=
  A371201.P4499511649538821653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371492.P8329581871496110581

`∑{d}[n+1, A053191(#)*A084218((n+1)/#)]`
-/

namespace A371492.P8329581871496110581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A084218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371492.P8329581871496110581

noncomputable section

/-- A371492: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} ( gcd(x_1, n)/gcd(x_1, x_2, x_3, n) )^2.

Offset 1, canonical program `A371492.P8329581871496110581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371492 (n : ℕ) : ℤ :=
  A371492.P8329581871496110581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372380.P1399385396783804805

`∑{d}[n+1, A359473(#)]`
-/

namespace A372380.P1399385396783804805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359473 d

end

end A372380.P1399385396783804805

noncomputable section

/-- A372380: The number of divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A372380.P1399385396783804805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372380 (n : ℕ) : ℤ :=
  A372380.P1399385396783804805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372470.P1016400995932517880

`A359473(n+1)*A000005(n+1)`
-/

namespace A372470.P1016400995932517880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359473 (n + 1) * A000005 (n + 1)

end

end A372470.P1016400995932517880

noncomputable section

/-- A372470: Multiplicative with a(p^e) = e+1 if e+1 is a power of 2, and 0 otherwise.

Offset 1, canonical program `A372470.P1016400995932517880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372470 (n : ℕ) : ℤ :=
  A372470.P1016400995932517880.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372504.P18324101778545976838

`A355823(n+1)*A005361(n+1)`
-/

namespace A372504.P18324101778545976838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355823 (n + 1) * A005361 (n + 1)

end

end A372504.P18324101778545976838

noncomputable section

/-- A372504: Multiplicative with a(p^e) = e if e is a power of 2, and 0 otherwise.

Offset 1, canonical program `A372504.P18324101778545976838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355823, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372504 (n : ℕ) : ℤ :=
  A372504.P18324101778545976838.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355823, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372538.P6016142959646065391

`eq[1, A372516(n+1)]+1`
-/

namespace A372538.P6016142959646065391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A372538.P6016142959646065391

noncomputable section

/-- A372538: Numbers k such that the number of ones minus the number of zeros in the binary expansion of the k-th prime number is 1.

Offset 1, canonical program `A372538.P6016142959646065391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A372538 (n : ℕ) : ℤ :=
  (A372538.P6016142959646065391.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A372538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372539.P15910707666179442912

`A000720(A095072(n+1))`
-/

namespace A372539.P15910707666179442912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095072 (n + 1)).toNat

end

end A372539.P15910707666179442912

noncomputable section

/-- A372539: Numbers k such that the number of ones minus the number of zeros in the binary expansion of the k-th prime number is -1.

Offset 1, canonical program `A372539.P15910707666179442912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1031 terms. -/
def A372539 (n : ℕ) : ℤ :=
  A372539.P15910707666179442912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1031 terms. -/
def A372539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372962.P14331124591361525302

`∑{d}[n+1, A084218(#)*A238533((n+1)/#)]`
-/

namespace A372962.P14331124591361525302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084218 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372962.P14331124591361525302

noncomputable section

/-- A372962: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} ( n/gcd(x_1, x_2, x_3, n) )^2.

Offset 1, canonical program `A372962.P14331124591361525302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372962 (n : ℕ) : ℤ :=
  A372962.P14331124591361525302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373003.P9408942086696317807

`A373002(1+n)/(n+1)`
-/

namespace A373003.P9408942086696317807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373002 (1 + n) : ℚ) / (n + 1 : ℚ)

end

end A373003.P9408942086696317807

noncomputable section

/-- A373003: a(n) = (1/n) * Sum_{k=1..n} tau( (n/gcd(k,n))^n ).

Offset 1, canonical program `A373003.P9408942086696317807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1009 terms. -/
def A373003 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373003.P9408942086696317807.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1009 terms. -/
def A373003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373040.P10623131507799743519

`(A084218(n+1)-1)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373040.P10623131507799743519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084218 (n + 1) - 1 : ℚ) / 12

end

end A373040.P10623131507799743519

noncomputable section

/-- A373040: a(n) = (A084218(n) - 1)/12.

Offset 1, canonical program `A373040.P10623131507799743519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373040 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373040.P10623131507799743519.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373060.P5015462163291241472

`∑{d}[n+1, A053191(#)*A350156((n+1)/#)]`
-/

namespace A373060.P5015462163291241472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373060.P5015462163291241472

noncomputable section

/-- A373060: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, n)/gcd(x_1, x_2, x_3, n).

Offset 1, canonical program `A373060.P5015462163291241472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373060 (n : ℕ) : ℤ :=
  A373060.P5015462163291241472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373082.P13712031001074262158

`A087116(xor(n, floor(n/2)))`
-/

namespace A373082.P13712031001074262158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A373082.P13712031001074262158

noncomputable section

/-- A373082: Number of runs of 0's in A014550(n).

Offset 0, canonical program `A373082.P13712031001074262158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A373082 (n : ℕ) : ℤ :=
  A373082.P13712031001074262158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A373082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373130.P1368605892545228178

`∑{d}[n+1, A000056(#)*A372998((n+1)/#)]`
-/

namespace A373130.P1368605892545228178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A372998 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373130.P1368605892545228178

noncomputable section

/-- A373130: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} sigma( n/gcd(x_1, x_2, x_3, n) ).

Offset 1, canonical program `A373130.P1368605892545228178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373130 (n : ℕ) : ℤ :=
  A373130.P1368605892545228178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373254.P8394585419154962729

`ceil(A373253(n)/2)`
-/

namespace A373254.P8394585419154962729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A373253 n : ℚ) / 2⌉

end

end A373254.P8394585419154962729

noncomputable section

/-- A373254: a(n) = 1 if A003415(n) == +1 (mod 3), otherwise 0, where A003415 is the arithmetic derivative.

Offset 0, canonical program `A373254.P8394585419154962729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373254 (n : ℕ) : ℤ :=
  A373254.P8394585419154962729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373255.P16434717924263259340

`eq[1, A373253(n)]`
-/

namespace A373255.P16434717924263259340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373255.P16434717924263259340

noncomputable section

/-- A373255: Numbers k for which A003415(k) == +1 (mod 3), where A003415 is the arithmetic derivative.

Offset 1, canonical program `A373255.P16434717924263259340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373255 (n : ℕ) : ℤ :=
  (A373255.P16434717924263259340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373260.P13345870415244065994

`A372573(3*(n+1))`
-/

namespace A373260.P13345870415244065994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (3 * (n + 1))

end

end A373260.P13345870415244065994

noncomputable section

/-- A373260: a(n) = 1 if A276085(n) == +1 (mod 3), otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373260.P13345870415244065994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373260 (n : ℕ) : ℤ :=
  A373260.P13345870415244065994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373261.P11625810487040253736

`eq[1, A373153(n+1)]+1`
-/

namespace A373261.P11625810487040253736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373261.P11625810487040253736

noncomputable section

/-- A373261: Numbers k for which A276085(k) == +1 (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373261.P11625810487040253736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373261 (n : ℕ) : ℤ :=
  (A373261.P11625810487040253736.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373262.P3920179608283670955

`lt[A373153(n+1), 0]+1`
-/

namespace A373262.P3920179608283670955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373153 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A373262.P3920179608283670955

noncomputable section

/-- A373262: Numbers k for which A276085(k) == -1 (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373262.P3920179608283670955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373262 (n : ℕ) : ℤ :=
  (A373262.P3920179608283670955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373279.P11473354882696235237

`∑{d}[n+1, #*A046211(#)]`
-/

namespace A373279.P11473354882696235237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A046211 d

end

end A373279.P11473354882696235237

noncomputable section

/-- A373279: Expansion of Sum_{k>=0} x^(3^k) / (1 - 3*x^(3^k)).

Offset 1, canonical program `A373279.P11473354882696235237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046211, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373279 (n : ℕ) : ℤ :=
  A373279.P11473354882696235237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046211, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373281.P14728433294096842931

`∑{d}[n+1, #*A054662(#)]`
-/

namespace A373281.P14728433294096842931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A054662 d

end

end A373281.P14728433294096842931

noncomputable section

/-- A373281: Expansion of Sum_{k>=0} x^(5^k) / (1 - 5*x^(5^k)).

Offset 1, canonical program `A373281.P14728433294096842931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373281 (n : ℕ) : ℤ :=
  A373281.P14728433294096842931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373308.P3476267260338702901

`∑{#}[n, A106400(#)*A106407(n-#+1)]`
-/

namespace A373308.P3476267260338702901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A106400 k * A106407 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A373308.P3476267260338702901

noncomputable section

/-- A373308: Expansion of Product_{n>=0} (1 - x^(2^n))^3.

Offset 0, canonical program `A373308.P3476267260338702901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373308 (n : ℕ) : ℤ :=
  A373308.P3476267260338702901.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373477.P8315579709806562220

`A079978(A373364(n+1))`
-/

namespace A373477.P8315579709806562220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373364 (n + 1)).toNat

end

end A373477.P8315579709806562220

noncomputable section

/-- A373477: a(n) = 1 if A001414(n) and A003415(n) are both multiples of 3, otherwise 0, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373477.P8315579709806562220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373477 (n : ℕ) : ℤ :=
  A373477.P8315579709806562220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373481.P1918728620852161106

`C(A373364(n+1), A001414(n+1))`
-/

namespace A373481.P1918728620852161106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373364 (n + 1)).toNat (A001414 (n + 1)).toNat

end

end A373481.P1918728620852161106

noncomputable section

/-- A373481: a(n) = 1 if A003415(n) is a multiple of A001414(n), otherwise 0, where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

Offset 1, canonical program `A373481.P1918728620852161106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373481 (n : ℕ) : ℤ :=
  (A373481.P1918728620852161106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373493.P17147766796197231588

`A079978(A373378(n+1))`
-/

namespace A373493.P17147766796197231588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373378 (n + 1)).toNat

end

end A373493.P17147766796197231588

noncomputable section

/-- A373493: a(n) = 1 if A059975(n) and A003415(n) are both multiples of 3, otherwise 0, where A059975 is fully additive with a(p) = p-1, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373493.P17147766796197231588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373493 (n : ℕ) : ℤ :=
  A373493.P17147766796197231588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373592.P4059303154280305185

`A001222(n+1)-(A007949(n+1)+A373591(n+1))`
-/

namespace A373592.P4059303154280305185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - (A007949 (n + 1) + A373591 (n + 1))

end

end A373592.P4059303154280305185

noncomputable section

/-- A373592: Number of primes congruent to 2 modulo 3 dividing n (with multiplicity).

Offset 1, canonical program `A373592.P4059303154280305185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373592 (n : ℕ) : ℤ :=
  A373592.P4059303154280305185.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373834.P8702571557965328653

`(16^A373832(round(sqrt(n²+1))))%4`
-/

namespace A373834.P8702571557965328653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((16 : ℚ) ^ (A373832 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℤ))) 4

end

end A373834.P8702571557965328653

noncomputable section

/-- A373834: a(n) = 1 if n is a multiple of A276150(n), otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373834.P8702571557965328653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373834 (n : ℕ) : ℤ :=
  A373834.P8702571557965328653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373838.P492642340660410059

`A079978(A373833(n))`
-/

namespace A373838.P492642340660410059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373833 n).toNat

end

end A373838.P492642340660410059

noncomputable section

/-- A373838: a(n) = 1 if n and A276150(n) are both multiples of 3, otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373838.P492642340660410059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373838 (n : ℕ) : ℤ :=
  A373838.P492642340660410059.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373841.P7395299450031379173

`record[n*A373840(n)]`
-/

namespace A373841.P7395299450031379173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A373840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373841.P7395299450031379173

noncomputable section

/-- A373841: Numbers whose digital sum in the primorial base is a multiple of 3.

Offset 1, canonical program `A373841.P7395299450031379173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373841 (n : ℕ) : ℤ :=
  A373841.P7395299450031379173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374042.P17381506644215364162

`filter[A074232(n+1), A372573(#)]`
-/

namespace A374042.P17381506644215364162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A374042.P17381506644215364162

noncomputable section

/-- A374042: Numbers k such that A276085(k) and A328768(k) are both multiples of 3, where A276085 is the primorial base log-function, and A328768 is the first primorial based variant of arithmetic derivative.

Offset 1, canonical program `A374042.P17381506644215364162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6312 terms. -/
def A374042 (n : ℕ) : ℤ :=
  A374042.P17381506644215364162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6312 terms. -/
def A374042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374206.P12143354826922197723

`A007814(A113177(n+2))`
-/

namespace A374206.P12143354826922197723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A113177 (n + 2)).toNat

end

end A374206.P12143354826922197723

noncomputable section

/-- A374206: The 2-adic valuation of A113177(n), where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 2, canonical program `A374206.P12143354826922197723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374206 (n : ℕ) : ℤ :=
  A374206.P12143354826922197723.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374467.P9810705810024272100

`eq[1, A374466(n+1)]+1`
-/

namespace A374467.P9810705810024272100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374467.P9810705810024272100

noncomputable section

/-- A374467: Numbers that are products of an odd number of primes and the total number of 1-bits in the exponents of their prime factorization n is odd.

Offset 1, canonical program `A374467.P9810705810024272100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374467 (n : ℕ) : ℤ :=
  (A374467.P9810705810024272100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374534.P17728637451671606639

`∑[A111938(n+1)]-A111938(n+1)`
-/

namespace A374534.P17728637451671606639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A111938 (n + 1)

end

end A374534.P17728637451671606639

noncomputable section

/-- A374534: Expansion of (x/(4 * (1-x))) * d/dx(theta_3(x)^2).

Offset 0, canonical program `A374534.P17728637451671606639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374534 (n : ℕ) : ℤ :=
  A374534.P17728637451671606639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374823.P10577400453278388443

`filter[A033950(n+1)+1, A010051(#)]`
-/

namespace A374823.P10577400453278388443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A374823.P10577400453278388443

noncomputable section

/-- A374823: Primes p such that p-1 is refactorable.

Offset 1, canonical program `A374823.P10577400453278388443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1145 terms. -/
def A374823 (n : ℕ) : ℤ :=
  A374823.P10577400453278388443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1145 terms. -/
def A374823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375008.P4839878587626124872

`A046301(A333231(n+1))`
-/

namespace A375008.P4839878587626124872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (A333231 (n + 1)).toNat

end

end A375008.P4839878587626124872

noncomputable section

/-- A375008: Products m of k = 3 consecutive primes p_1..p_k, where only p_1 < m^(1/k).

Offset 1, canonical program `A375008.P4839878587626124872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A375008 (n : ℕ) : ℤ :=
  A375008.P4839878587626124872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A375008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375187.P4678637540643680979

`A040000(n)^A348841(A028310(n))`
-/

namespace A375187.P4678637540643680979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040000 n : ℚ) ^ (A348841 (A028310 n).toNat : ℤ)

end

end A375187.P4678637540643680979

noncomputable section

/-- A375187: Number of unitary square divisors of n!.

Offset 0, canonical program `A375187.P4678637540643680979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A375187 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375187.P4678637540643680979.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A375187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375960.P2597128475225749997

`∪[A211338(n+1), ∑[A003215(n)]]`
-/

namespace A375960.P2597128475225749997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211338 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375960.P2597128475225749997

noncomputable section

/-- A375960: Numbers whose product of proper divisors is a cube.

Offset 1, canonical program `A375960.P2597128475225749997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375960 (n : ℕ) : ℤ :=
  (A375960.P2597128475225749997.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376074.P11076744248211188563

`A099777(A355264(n+1))`
-/

namespace A376074.P11076744248211188563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A355264 (n + 1)).toNat

end

end A376074.P11076744248211188563

noncomputable section

/-- A376074: a(n) is the number of distinct right circular cones with integer radius and height having the same volume as a sphere with radius n.

Offset 1, canonical program `A376074.P11076744248211188563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A376074 (n : ℕ) : ℤ :=
  A376074.P11076744248211188563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A376074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377019.P8238063563762477433

`eq[A001221(n+1), A376885(n+1)]+1`
-/

namespace A377019.P8238063563762477433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A377019.P8238063563762477433

noncomputable section

/-- A377019: Numbers whose prime factorization has exponents that are all factorial numbers.

Offset 1, canonical program `A377019.P8238063563762477433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8401 terms. -/
def A377019 (n : ℕ) : ℤ :=
  (A377019.P8238063563762477433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8401 terms. -/
def A377019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377356.P5890288277493149309

`A002110(n)*A099795(n+1)`
-/

namespace A377356.P5890288277493149309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A099795 (n + 1)

end

end A377356.P5890288277493149309

noncomputable section

/-- A377356: a(n) = Product{i = 1..(n-1)} prime(i)^e_i, where prime(i)^e_i is the smallest power of prime(i) which exceeds prime(n).

Offset 1, canonical program `A377356.P5890288277493149309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377356 (n : ℕ) : ℤ :=
  A377356.P5890288277493149309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377902.P10934479624454164712

`Δ[comp[(n%2)^n*A002808(n+1)]]`
-/

namespace A377902.P10934479624454164712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2) ^ n : ℕ) : ℤ) * A002808 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A377902.P10934479624454164712

noncomputable section

/-- A377902: First differences of A377898.

Offset 1, canonical program `A377902.P10934479624454164712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A377902 (n : ℕ) : ℤ :=
  A377902.P10934479624454164712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A377902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378298.P155601813315861815

`(A062803(n+1)-(n+1))/2`
-/

namespace A378298.P155601813315861815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062803 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A378298.P155601813315861815

noncomputable section

/-- A378298: Number of solutions that satisfy the congruence: i^2 == j^2 (mod n) with 1 <= i < j <= n.

Offset 1, canonical program `A378298.P155601813315861815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378298 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378298.P155601813315861815.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378314.P16230530394060533899

`A190940(n)+a(n-1)` with `a(0)=0`
-/

namespace A378314.P16230530394060533899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A190940 n + a (n - 1)

end

end A378314.P16230530394060533899

noncomputable section

/-- A378314: a(n) = number of subsets of {1, 2, ..., n} that represent the first k divisors of m for some positive integers m and 1 <= k <= A000005(m).

Offset 0, canonical program `A378314.P16230530394060533899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A378314 (n : ℕ) : ℤ :=
  A378314.P16230530394060533899.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A378314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378443.P3282744420953376765

`∑{d}[n+1, A372573(#)]`
-/

namespace A378443.P3282744420953376765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372573 d

end

end A378443.P3282744420953376765

noncomputable section

/-- A378443: Inverse Möbius transform of A372573.

Offset 1, canonical program `A378443.P3282744420953376765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378443 (n : ℕ) : ℤ :=
  A378443.P3282744420953376765.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378443.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378784.P5059854642230422677

`A164677(n)+a(n-1)` with `a(0)=1`
-/

namespace A378784.P5059854642230422677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164677 n + a (n - 1)

end

end A378784.P5059854642230422677

noncomputable section

/-- A378784: a(1)=1, a(2)=2, then the terms from a(2^k + 1) to a(2^(k+1)) are the first 2^k terms in reverse order, increased by a(2^k).

Offset 1, canonical program `A378784.P5059854642230422677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A378784 (n : ℕ) : ℤ :=
  A378784.P5059854642230422677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A378784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378930.P6933035363972546027

`A009230(n+1)/A009191(n+1)`
-/

namespace A378930.P6933035363972546027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009230 (n + 1) : ℚ) / (A009191 (n + 1) : ℚ)

end

end A378930.P6933035363972546027

noncomputable section

/-- A378930: a(n) = n * d(n) / gcd(n, d(n))^2, where d = A000005.

Offset 1, canonical program `A378930.P6933035363972546027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009230, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378930 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378930.P6933035363972546027.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009230, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378930.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379028.P1083358816384689747

`∏{e}[n+1, A252505(#+1)]`
-/

namespace A379028.P1083358816384689747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A252505 (Nat.factorization (f1 n) p + 1)

end

end A379028.P1083358816384689747

noncomputable section

/-- A379028: The number of modified exponential divisors of n.

Offset 1, canonical program `A379028.P1083358816384689747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379028 (n : ℕ) : ℤ :=
  A379028.P1083358816384689747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379705.P4574485097972664711

`A242219(n+1)²/(n+1)`
-/

namespace A379705.P4574485097972664711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242219 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A379705.P4574485097972664711

noncomputable section

/-- A379705: a(n) is the least integer k > n such that integers p, q exist for which n, p, k are in arithmetic and n, q, k are in geometric progression.

Offset 1, canonical program `A379705.P4574485097972664711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379705 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379705.P4574485097972664711.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381920.P15799259453814782413

`∩[A333771(n+1), A000384(n)]`
-/

namespace A381920.P15799259453814782413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381920.P15799259453814782413

noncomputable section

/-- A381920: Hexagonal numbers that are products of exactly four distinct primes.

Offset 1, canonical program `A381920.P15799259453814782413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A381920 (n : ℕ) : ℤ :=
  (A381920.P15799259453814782413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A381920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382419.P6079477750325987353

`2^A376366(n+1)`
-/

namespace A382419.P6079477750325987353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A376366 (n + 1) : ℤ)

end

end A382419.P6079477750325987353

noncomputable section

/-- A382419: The product of exponents in the prime factorization of the cubefree numbers.

Offset 1, canonical program `A382419.P6079477750325987353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A376366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382419 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382419.P6079477750325987353.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A376366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382419.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382630.P1089145758881786009

`floor(A078152(A028310(n))/2)`
-/

namespace A382630.P1089145758881786009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078152 (A028310 n).toNat : ℚ) / 2⌋

end

end A382630.P1089145758881786009

noncomputable section

/-- A382630: a(n) is the number of ways that n can be written as b+c*d, where b, c and d are positive integers and b < c < d.

Offset 0, canonical program `A382630.P1089145758881786009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382630 (n : ℕ) : ℤ :=
  A382630.P1089145758881786009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382787.P2533475124958767227

`A005361(A335275(n+1))`
-/

namespace A382787.P2533475124958767227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A335275 (n + 1)).toNat

end

end A382787.P2533475124958767227

noncomputable section

/-- A382787: The product of exponents in the prime factorization of the numbers whose prime factorization contains exponents that are either 1 or even.

Offset 1, canonical program `A382787.P2533475124958767227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382787 (n : ℕ) : ℤ :=
  A382787.P2533475124958767227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382787.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382788.P17277517064423675341

`∑{d}[n+1, #*A359473(#)]`
-/

namespace A382788.P17277517064423675341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A359473 d

end

end A382788.P17277517064423675341

noncomputable section

/-- A382788: The sum of divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A382788.P17277517064423675341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382788 (n : ℕ) : ℤ :=
  A382788.P17277517064423675341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382890.P5080446729015347365

`sqrt(A382889(n+1))`
-/

namespace A382890.P5080446729015347365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A382889 (n + 1) : ℝ)

end

end A382890.P5080446729015347365

noncomputable section

/-- A382890: The square root of the largest square dividing the n-th cubefree number.

Offset 1, canonical program `A382890.P5080446729015347365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382890 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382890.P5080446729015347365.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382890.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382891.P5915587379995941909

`A004709(n+1)/A382889(n+1)`
-/

namespace A382891.P5915587379995941909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004709 (n + 1) : ℚ) / (A382889 (n + 1) : ℚ)

end

end A382891.P5915587379995941909

noncomputable section

/-- A382891: The powerfree part of the n-th cubefree number.

Offset 1, canonical program `A382891.P5915587379995941909`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382891.P5915587379995941909.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382968.P9973608297298639006

`A056170(A382967(n+1))`
-/

namespace A382968.P9973608297298639006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A382967 (n + 1)).toNat

end

end A382968.P9973608297298639006

noncomputable section

/-- A382968: The number of non-unitary prime divisors of the n-th biquadratefree number that is not squarefree.

Offset 1, canonical program `A382968.P9973608297298639006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382968 (n : ℕ) : ℤ :=
  A382968.P9973608297298639006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383004.P7561396610622061570

`A007814(A004709(n+1))`
-/

namespace A383004.P7561396610622061570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A004709 (n + 1)).toNat

end

end A383004.P7561396610622061570

noncomputable section

/-- A383004: Exponent of the highest power of 2 dividing the n-th cubefree number.

Offset 1, canonical program `A383004.P7561396610622061570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383004 (n : ℕ) : ℤ :=
  A383004.P7561396610622061570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383004.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383032.P9967081723231949955

`A007814(A028982(n+1))`
-/

namespace A383032.P9967081723231949955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A028982 (n + 1)).toNat

end

end A383032.P9967081723231949955

noncomputable section

/-- A383032: Exponent of the highest power of 2 dividing the n-th number that is either a square or twice a square.

Offset 1, canonical program `A383032.P9967081723231949955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028982, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383032 (n : ℕ) : ℤ :=
  A383032.P9967081723231949955.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028982, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383685.P17659077601752719078

`A000040(lt[A054541(n+1), A038194(n+1)])`
-/

namespace A383685.P17659077601752719078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383685.P17659077601752719078

noncomputable section

/-- A383685: The lesser of two consecutive primes whose gap equals the difference between their digital roots.

Offset 1, canonical program `A383685.P17659077601752719078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A383685 (n : ℕ) : ℤ :=
  A383685.P17659077601752719078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A383685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383793.P8012503440223215475

`A038502(n+1)*A256688(n+1)`
-/

namespace A383793.P8012503440223215475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) * A256688 (n + 1)

end

end A383793.P8012503440223215475

noncomputable section

/-- A383793: Numerators of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s-1)^(1/3).

Offset 1, canonical program `A383793.P8012503440223215475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383793 (n : ℕ) : ℤ :=
  A383793.P8012503440223215475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383960.P17897654466748925857

`∑{e}[n+1, A286324(#)]`
-/

namespace A383960.P17897654466748925857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A286324 (Nat.factorization (f1 n) p)

end

end A383960.P17897654466748925857

noncomputable section

/-- A383960: The number of prime powers p^e having the property that e is an infinitary divisor of the p-adic valuation of n.

Offset 1, canonical program `A383960.P17897654466748925857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383960 (n : ℕ) : ℤ :=
  A383960.P17897654466748925857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384021.P7727466552774279921

`∪[A000079(n), A164874(n+1)]`
-/

namespace A384021.P7727466552774279921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384021.P7727466552774279921

noncomputable section

/-- A384021: Powers of 2 along with numbers one power of 2 less than binary repunits, but the power of two subtracted does not flip the leading bit.

Offset 1, canonical program `A384021.P7727466552774279921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A384021 (n : ℕ) : ℤ :=
  (A384021.P7727466552774279921.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A384021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385350.P6185656812643599907

`filter[A007422(n+1), A035263(#)]`
-/

namespace A385350.P6185656812643599907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A385350.P6185656812643599907

noncomputable section

/-- A385350: Numbers j such that the product of odd proper divisors of j is j.

Offset 1, canonical program `A385350.P6185656812643599907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7685 terms. -/
def A385350 (n : ℕ) : ℤ :=
  A385350.P6185656812643599907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7685 terms. -/
def A385350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385998.P16754963175489702644

`eq[A001221(n+1), A046951(n+1)]+1`
-/

namespace A385998.P16754963175489702644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A385998.P16754963175489702644

noncomputable section

/-- A385998: Numbers that are divisible by an equal number of distinct primes and squares.

Offset 1, canonical program `A385998.P16754963175489702644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A385998 (n : ℕ) : ℤ :=
  (A385998.P16754963175489702644.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. -/
def A385998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386259.P13017037285920601135

`A007814(A066301(n+1)+1)`
-/

namespace A386259.P13017037285920601135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A066301 (n + 1) + 1).toNat

end

end A386259.P13017037285920601135

noncomputable section

/-- A386259: Exponent of the highest power of 2 dividing the maximum exponent in the prime factorization of n; a(1) = 0.

Offset 1, canonical program `A386259.P13017037285920601135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386259 (n : ℕ) : ℤ :=
  A386259.P13017037285920601135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386468.P12637838022396373735

`A051903(A365683(n+1))`
-/

namespace A386468.P12637838022396373735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A365683 (n + 1)).toNat

end

end A386468.P12637838022396373735

noncomputable section

/-- A386468: The maximum exponent in the prime factorization of the largest exponentially squarefree divisor of n.

Offset 1, canonical program `A386468.P12637838022396373735`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A365683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386468 (n : ℕ) : ℤ :=
  A386468.P12637838022396373735.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A365683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386536.P5039393821723974418

`A007814(A067259(n+1))`
-/

namespace A386536.P5039393821723974418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A067259 (n + 1)).toNat

end

end A386536.P5039393821723974418

noncomputable section

/-- A386536: Exponent of the highest power of 2 dividing the n-th number that is cubefree but not squarefree.

Offset 1, canonical program `A386536.P5039393821723974418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386536 (n : ℕ) : ℤ :=
  A386536.P5039393821723974418.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387216.P11263226985652021586

`lt[1, A373591(A004277(n))]`
-/

namespace A387216.P11263226985652021586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373591 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A387216.P11263226985652021586

noncomputable section

/-- A387216: Numbers that have at least two prime factors (counting multiplicity) congruent to 1 mod 3.

Offset 1, canonical program `A387216.P11263226985652021586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1390 terms. -/
def A387216 (n : ℕ) : ℤ :=
  (A387216.P11263226985652021586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1390 terms. -/
def A387216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387349.P7395513142153534106

`comp[A190429(n+1)]+1`
-/

namespace A387349.P7395513142153534106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387349.P7395513142153534106

noncomputable section

/-- A387349: Positions of 0's in A387348.

Offset 1, canonical program `A387349.P7395513142153534106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A387349 (n : ℕ) : ℤ :=
  (A387349.P7395513142153534106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A387349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388044.P13308265605785602702

`A010846(eq[1, A056671(n+1)]+1)`
-/

namespace A388044.P13308265605785602702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A388044.P13308265605785602702

noncomputable section

/-- A388044: a(n) = number of k <= m such that rad(k) | m, where m = A001694(n) and rad(n) = A007947(n).

Offset 1, canonical program `A388044.P13308265605785602702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A388044 (n : ℕ) : ℤ :=
  A388044.P13308265605785602702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A388044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388973.P2955072861727697620

`A049419(A388972(n+1))`
-/

namespace A388973.P2955072861727697620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A388972 (n + 1)).toNat

end

end A388973.P2955072861727697620

noncomputable section

/-- A388973: The number of exponential divisors of the numbers whose number of exponential divisors is a power of 2.

Offset 1, canonical program `A388973.P2955072861727697620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A388972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388973 (n : ℕ) : ℤ :=
  A388973.P2955072861727697620.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A388972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389199.P2572344504919042834

`filter[A389197(n+1), A353814(#)]`
-/

namespace A389199.P2572344504919042834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A389199.P2572344504919042834

noncomputable section

/-- A389199: Numbers whose sum of squarefree divisors (A048250) is congruent to 2 modulo 4.

Offset 1, canonical program `A389199.P2572344504919042834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9835 terms. -/
def A389199 (n : ℕ) : ℤ :=
  A389199.P2572344504919042834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9835 terms. -/
def A389199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389497.P5638867141399024017

`eq[1, A010052(A005361(n+1))]+1`
-/

namespace A389497.P5638867141399024017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A005361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A389497.P5638867141399024017

noncomputable section

/-- A389497: Numbers whose number of powerful divisors is a square.

Offset 1, canonical program `A389497.P5638867141399024017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389497 (n : ℕ) : ℤ :=
  (A389497.P5638867141399024017.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389838.P12199354101649347898

`∪[A002808(n+1), A053726(n+1)]`
-/

namespace A389838.P12199354101649347898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389838.P12199354101649347898

noncomputable section

/-- A389838: Numbers of the form j*k or j*k + (j-1)*(k-1) with j, k > 1.

Offset 1, canonical program `A389838.P12199354101649347898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389838 (n : ℕ) : ℤ :=
  (A389838.P12199354101649347898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389921.P16454545496110612837

`A094373(n)-A350102(n)`
-/

namespace A389921.P16454545496110612837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A350102 n

end

end A389921.P16454545496110612837

noncomputable section

/-- A389921: Number of subsets of {1..n} that contain n but do not form a finite arithmetic progression.

Offset 0, canonical program `A389921.P16454545496110612837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A389921 (n : ℕ) : ℤ :=
  A389921.P16454545496110612837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A389921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389947.P487126535237801923

`A332785(1+n)²`
-/

namespace A389947.P487126535237801923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (1 + n) ^ 2

end

end A389947.P487126535237801923

noncomputable section

/-- A389947: Squares of nonsquarefree numbers k that are not squareful.

Offset 1, canonical program `A389947.P487126535237801923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389947 (n : ℕ) : ℤ :=
  A389947.P487126535237801923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390258.P5353601345552815747

`∑{d}[n+1, A007427(#)*A174466((n+1)/#)]`
-/

namespace A390258.P5353601345552815747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A174466 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P5353601345552815747

noncomputable section

/-- A390258: Multiplicative sequence a(n) with a(p^e) = p^(e-1) * (e + 1) * (p * (2 + e) - e) / 2 for prime p and e > 0.

Offset 1, canonical program `A390258.P5353601345552815747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390258 (n : ℕ) : ℤ :=
  A390258.P5353601345552815747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390317.P12726225618828404859

`∑{d}[n+1, A060724(#)*A271102((n+1)/#)]`
-/

namespace A390317.P12726225618828404859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P12726225618828404859

noncomputable section

/-- A390317: Multiplicative sequence a(n) with a(p^e) = 2 + (p^e + p^(e-1) - 2) * (p+1) / (p-1) for prime p and e > 0.

Offset 1, canonical program `A390317.P12726225618828404859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390317 (n : ℕ) : ℤ :=
  A390317.P12726225618828404859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390692.P5551387115142065116

`A343430(A007913(n+1))`
-/

namespace A390692.P5551387115142065116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (A007913 (n + 1)).toNat

end

end A390692.P5551387115142065116

noncomputable section

/-- A390692: a(n) is the smallest positive integer such that a(n) * n is a Loeschian number (A003136).

Offset 1, canonical program `A390692.P5551387115142065116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390692 (n : ℕ) : ℤ :=
  A390692.P5551387115142065116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391026.P7612980702264081441

`filter[A332785(n+1), A354034(#)]`
-/

namespace A391026.P7612980702264081441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A391026.P7612980702264081441

noncomputable section

/-- A391026: Even numbers that are neither powerful nor squarefree.

Offset 1, canonical program `A391026.P7612980702264081441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7629 terms. -/
def A391026 (n : ℕ) : ℤ :=
  A391026.P7612980702264081441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7629 terms. -/
def A391026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391397.P1293131465768369781

`eq[A212181(n+1), A212181(n+2)]+1`
-/

namespace A391397.P1293131465768369781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212181 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A391397.P1293131465768369781

noncomputable section

/-- A391397: Numbers k such that d(k+1)/d(k) = 2^m for some integer m (positive, zero, or negative), where d(k) is the number of divisors of k.

Offset 1, canonical program `A391397.P1293131465768369781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. -/
def A391397 (n : ℕ) : ℤ :=
  (A391397.P1293131465768369781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. -/
def A391397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391712.P957787148813764837

`A000045(A063745(n+1))`
-/

namespace A391712.P957787148813764837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A063745 (n + 1)).toNat

end

end A391712.P957787148813764837

noncomputable section

/-- A391712: Fibonacci numbers whose indices are even positive numbers with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A391712.P957787148813764837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391712 (n : ℕ) : ℤ :=
  A391712.P957787148813764837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391712.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392024.P5035804302326905048

`eq[1, A001222(A009191(n+1))]+1`
-/

namespace A392024.P5035804302326905048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A009191 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392024.P5035804302326905048

noncomputable section

/-- A392024: Positive integers k such that gcd(k, tau(k)) is prime.

Offset 1, canonical program `A392024.P5035804302326905048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392024 (n : ℕ) : ℤ :=
  (A392024.P5035804302326905048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392450.P7898530236286233614

`∏{e}[n+1, A056671(#)]`
-/

namespace A392450.P7898530236286233614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A056671 (Nat.factorization (f1 n) p)

end

end A392450.P7898530236286233614

noncomputable section

/-- A392450: The number of exponential unitary (or e-unitary) divisors of n that are exponentially squarefree numbers (A209061).

Offset 1, canonical program `A392450.P7898530236286233614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392450 (n : ℕ) : ℤ :=
  A392450.P7898530236286233614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392537.P5789005694378708755

`∩[A332785(n+1), A382967(n+1)]`
-/

namespace A392537.P5789005694378708755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392537.P5789005694378708755

noncomputable section

/-- A392537: Biquadratefree numbers that are neither squareful nor squarefree.

Offset 1, canonical program `A392537.P5789005694378708755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8135 terms. -/
def A392537 (n : ℕ) : ℤ :=
  (A392537.P5789005694378708755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8135 terms. -/
def A392537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392564.P9319350472348829098

`A332785(n+1)^3`
-/

namespace A392564.P9319350472348829098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1) ^ 3

end

end A392564.P9319350472348829098

noncomputable section

/-- A392564: Cubes of numbers that are neither squarefree nor squareful.

Offset 1, canonical program `A392564.P9319350472348829098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392564 (n : ℕ) : ℤ :=
  A392564.P9319350472348829098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392842.P10202073856946613228

`A007814(record[A109168(3*n+2)])`
-/

namespace A392842.P10202073856946613228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A392842.P10202073856946613228

noncomputable section

/-- A392842: Number of trailing zeros in a type of Zeckendorf expansion based on Fibonacci numbers of even index.

Offset 1, canonical program `A392842.P10202073856946613228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A392842 (n : ℕ) : ℤ :=
  A392842.P10202073856946613228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A392842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394247.P15100105498780897883

`A328806(n)-1`
-/

namespace A394247.P15100105498780897883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328806 n - 1

end

end A394247.P15100105498780897883

noncomputable section

/-- A394247: Maximum number of parts i with multiplicity i possible in a partition of n.

Offset 0, canonical program `A394247.P15100105498780897883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394247 (n : ℕ) : ℤ :=
  A394247.P15100105498780897883.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394380.P12740966740896101419

`A264810(2^(n+1)-1)`
-/

namespace A394380.P12740966740896101419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (2 ^ (n + 1) - 1)

end

end A394380.P12740966740896101419

noncomputable section

/-- A394380: Number of totients below 2^n.

Offset 1, canonical program `A394380.P12740966740896101419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394380 (n : ℕ) : ℤ :=
  A394380.P12740966740896101419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394380.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394381.P15980332945039088340

`A264810(A000149(n+1))`
-/

namespace A394381.P15980332945039088340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A000149 (n + 1)).toNat

end

end A394381.P15980332945039088340

noncomputable section

/-- A394381: Number of totients below exp(n).

Offset 1, canonical program `A394381.P15980332945039088340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394381 (n : ℕ) : ℤ :=
  A394381.P15980332945039088340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394426.P7725940493784829555

`A049419(A197680(n+1))`
-/

namespace A394426.P7725940493784829555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A197680 (n + 1)).toNat

end

end A394426.P7725940493784829555

noncomputable section

/-- A394426: The number of exponential divisors of the numbers whose exponents in their prime factorization are squares (A197680).

Offset 1, canonical program `A394426.P7725940493784829555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394426 (n : ℕ) : ℤ :=
  A394426.P7725940493784829555.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394426.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394433.P13092312073096952237

`eq[2, A073811(n+1)]+1`
-/

namespace A394433.P13092312073096952237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A394433.P13092312073096952237

noncomputable section

/-- A394433: Numbers k such that gcd(k, phi(k)) is prime.

Offset 1, canonical program `A394433.P13092312073096952237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4568 terms. -/
def A394433 (n : ℕ) : ℤ :=
  (A394433.P13092312073096952237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4568 terms. -/
def A394433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394747.P2470656169310210325

`∩[A087680(n+1), A392199(n+1)]`
-/

namespace A394747.P2470656169310210325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394747.P2470656169310210325

noncomputable section

/-- A394747: Numbers k such that k-4 and k+4 are prime and gcd(k, sigma(k)) is prime.

Offset 1, canonical program `A394747.P2470656169310210325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A394747 (n : ℕ) : ℤ :=
  (A394747.P2470656169310210325.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A394747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396072.P11544927877256094205

`comp[∑[A046951(n+1)]-1]+1`
-/

namespace A396072.P11544927877256094205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396072.P11544927877256094205

noncomputable section

/-- A396072: Numbers not of the form Sum_{k=1..m} floor(m/k^2).

Offset 1, canonical program `A396072.P11544927877256094205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6307 terms. -/
def A396072 (n : ℕ) : ℤ :=
  (A396072.P11544927877256094205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6307 terms. -/
def A396072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396543.P10005515851274933396

`A005361(n+1)-A049419(n+1)`
-/

namespace A396543.P10005515851274933396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - A049419 (n + 1)

end

end A396543.P10005515851274933396

noncomputable section

/-- A396543: The number of coreful divisors of n that are not exponential divisors of n.

Offset 1, canonical program `A396543.P10005515851274933396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396543 (n : ℕ) : ℤ :=
  A396543.P10005515851274933396.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396548.P9291011898899936861

`A005361(n+1)-A278908(n+1)`
-/

namespace A396548.P9291011898899936861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - A278908 (n + 1)

end

end A396548.P9291011898899936861

noncomputable section

/-- A396548: The number of coreful divisors of n that are not exponential unitary divisors of n.

Offset 1, canonical program `A396548.P9291011898899936861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396548 (n : ℕ) : ℤ :=
  A396548.P9291011898899936861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398161.P17501496371240396645

`∩[A335275(n+1)-1, A335275(n+1)]`
-/

namespace A398161.P17501496371240396645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398161.P17501496371240396645

noncomputable section

/-- A398161: Numbers k such that every exponent in the prime factorizations of both k and k+1 is either 1 or even.

Offset 1, canonical program `A398161.P17501496371240396645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8739 terms. -/
def A398161 (n : ℕ) : ℤ :=
  (A398161.P17501496371240396645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8739 terms. -/
def A398161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398166.P1860804899348792232

`∩[A023443(A197680(n+1)), A197680(n+1)]`
-/

namespace A398166.P1860804899348792232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A197680 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398166.P1860804899348792232

noncomputable section

/-- A398166: Numbers k such that all the exponents in the prime factorizations of k and k+1 are squares.

Offset 1, canonical program `A398166.P1860804899348792232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3739 terms. -/
def A398166 (n : ℕ) : ℤ :=
  (A398166.P1860804899348792232.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3739 terms. -/
def A398166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398547.P9174656088477173349

`A056558(n)^A056557(n)^A056556(n)`
-/

namespace A398547.P9174656088477173349
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056558 n : ℝ) ^ ((A056557 n : ℚ) ^ (A056556 n : ℤ) : ℝ)

end

end A398547.P9174656088477173349

noncomputable section

/-- A398547: d^c^b, where b >= c >= d >= 0 ordered by b then c then d.

Offset 0, canonical program `A398547.P9174656088477173349`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398547 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398547.P9174656088477173349.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398547.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398820.P11830360858725720909

`filter[A335275(n+2), A087049(#)]`
-/

namespace A398820.P11830360858725720909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A398820.P11830360858725720909

noncomputable section

/-- A398820: Numbers whose powerful part (A057521) is a square that is larger than 1.

Offset 1, canonical program `A398820.P11830360858725720909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3108 terms. -/
def A398820 (n : ℕ) : ℤ :=
  A398820.P11830360858725720909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3108 terms. -/
def A398820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398922.P11315198121938335182

`A346759(n+1)-A065608(n+1)`
-/

namespace A398922.P11315198121938335182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346759 (n + 1) - A065608 (n + 1)

end

end A398922.P11315198121938335182

noncomputable section

/-- A398922: Number of distinct acute lattice trapezia of area n/2 with horizontal base.

Offset 1, canonical program `A398922.P11315198121938335182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398922 (n : ℕ) : ℤ :=
  A398922.P11315198121938335182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399090.P13526670085507445655

`A051903(A335275(n+1))`
-/

namespace A399090.P13526670085507445655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A335275 (n + 1)).toNat

end

end A399090.P13526670085507445655

noncomputable section

/-- A399090: The maximum exponent in the prime factorization of the numbers whose powerful part is a square (A335275).

Offset 1, canonical program `A399090.P13526670085507445655`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A335275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399090 (n : ℕ) : ℤ :=
  A399090.P13526670085507445655.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A335275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399430.P14427685385738939723

`A056556(n)*A056557(n)*A056558(n)`
-/

namespace A399430.P14427685385738939723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n * A056557 n * A056558 n

end

end A399430.P14427685385738939723

noncomputable section

/-- A399430: b * c * d where b >= c >= d >= 0 ordered by b then c then d.

Offset 1, canonical program `A399430.P14427685385738939723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399430 (n : ℕ) : ℤ :=
  A399430.P14427685385738939723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399430.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399504.P3432684880369202973

`A056556(n)-A056557(n)-A056558(n)`
-/

namespace A399504.P3432684880369202973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n - A056557 n - A056558 n

end

end A399504.P3432684880369202973

noncomputable section

/-- A399504: b - c - d where b >= c >= d >= 0 ordered by b then c then d.

Offset 0, canonical program `A399504.P3432684880369202973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399504 (n : ℕ) : ℤ :=
  A399504.P3432684880369202973.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399833.P5824088692699989258

`(val(n+1, 2)+1)*A286324((n+1)/2^val(n+1, 2))`
-/

namespace A399833.P5824088692699989258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A286324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A399833.P5824088692699989258

noncomputable section

/-- A399833: The number of divisors d of n such that gcud(d, n/d) is a power of 2, where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399833.P5824088692699989258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399833 (n : ℕ) : ℤ :=
  A399833.P5824088692699989258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400198.P10752574168841274575

`A056556(n)^A056557(n)^A056558(n)`
-/

namespace A400198.P10752574168841274575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056556 n : ℝ) ^ ((A056557 n : ℚ) ^ (A056558 n : ℤ) : ℝ)

end

end A400198.P10752574168841274575

noncomputable section

/-- A400198: b^c^d, where b >= c >= d >= 0 ordered by b then c then d.

Offset 0, canonical program `A400198.P10752574168841274575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A400198 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400198.P10752574168841274575.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A400198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400252.P11412868992192274508

`∑{d}[n+1, A319684(#)*A359484((n+1)/#)]`
-/

namespace A400252.P11412868992192274508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319684 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400252.P11412868992192274508

noncomputable section

/-- A400252: The exponent of the highest power of 2 dividing A380459(n).

Offset 1, canonical program `A400252.P11412868992192274508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400252 (n : ℕ) : ℤ :=
  A400252.P11412868992192274508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400450.P6566241445451218318

`∑{d}[n+1, A008966(#)*A056170((n+1)/#)]`
-/

namespace A400450.P6566241445451218318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A056170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400450.P6566241445451218318

noncomputable section

/-- A400450: The number of divisors d of n such that gcd(d, n/d) is prime.

Offset 1, canonical program `A400450.P6566241445451218318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400450 (n : ℕ) : ℤ :=
  A400450.P6566241445451218318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400523.P6739092181508487678

`A007814(A197680(n+1))`
-/

namespace A400523.P6739092181508487678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A197680 (n + 1)).toNat

end

end A400523.P6739092181508487678

noncomputable section

/-- A400523: The exponent of the highest power of 2 dividing the n-th number whose prime factorization exponents are squares (A197680).

Offset 1, canonical program `A400523.P6739092181508487678`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400523 (n : ℕ) : ℤ :=
  A400523.P6739092181508487678.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400872.P2371818492116596202

`∏{e}[n+1, A007425(#)]`
-/

namespace A400872.P2371818492116596202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007425 (Nat.factorization (f1 n) p)

end

end A400872.P2371818492116596202

noncomputable section

/-- A400872: The total number of exponential divisors of the exponential divisors of n.

Offset 1, canonical program `A400872.P2371818492116596202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400872 (n : ℕ) : ℤ :=
  A400872.P2371818492116596202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400930.P9795398723456261995

`A326195(∏{p}[1+n, #])`
-/

namespace A400930.P9795398723456261995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326195 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A400930.P9795398723456261995

noncomputable section

/-- A400930: Maximum length of a strictly increasing sequence of distinct prime divisors p_1, ..., p_k of n such that p_i divides p_{i+1} - 1 for 1 <= i < k.

Offset 1, canonical program `A400930.P9795398723456261995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400930 (n : ℕ) : ℤ :=
  A400930.P9795398723456261995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400955.P5010137716607798832

`A264802(n+1)-A057728(n+1)`
-/

namespace A400955.P5010137716607798832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264802 (n + 1) - A057728 (n + 1)

end

end A400955.P5010137716607798832

noncomputable section

/-- A400955: Triangle read by rows: T(n,k) is the minimum runtime for k threads to complete n tasks, where time(n_i) = 2^(i-1), with 1 <= i <= n.

Offset 1, canonical program `A400955.P5010137716607798832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A400955 (n : ℕ) : ℤ :=
  A400955.P5010137716607798832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A400955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401083.P2325488339389485643

`A007425(A019554(n+1))`
-/

namespace A401083.P2325488339389485643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A019554 (n + 1)).toNat

end

end A401083.P2325488339389485643

noncomputable section

/-- A401083: The total number of exponentially odd divisors of the exponentially odd divisors of n.

Offset 1, canonical program `A401083.P2325488339389485643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401083 (n : ℕ) : ℤ :=
  A401083.P2325488339389485643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401241.P16677631895232613569

`∑{d}[n+1, A069513(#)*A359473(#)]`
-/

namespace A401241.P16677631895232613569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069513 d * A359473 d

end

end A401241.P16677631895232613569

noncomputable section

/-- A401241: The number of divisors of n that are prime powers (A246655) whose number of divisors is a power of 2.

Offset 1, canonical program `A401241.P16677631895232613569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401241 (n : ℕ) : ℤ :=
  A401241.P16677631895232613569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401241.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295705.P1140010899799709872

`p?[A000040(n+2)*A001222(A052288(n+1))]`
-/

namespace A295705.P1140010899799709872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A001222 (A052288 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295705.P1140010899799709872

noncomputable section

/-- A295705: The first of a pair of alternate primes the difference between which is twice a prime.

Offset 1, canonical program `A295705.P1140010899799709872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3154 terms. -/
def A295705 (n : ℕ) : ℤ :=
  A295705.P1140010899799709872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3154 terms. -/
def A295705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295901.P16032985280607238720

`A296206((1+n)²)`
-/

namespace A295901.P16032985280607238720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296206 ((1 + n) ^ 2)

end

end A295901.P16032985280607238720

noncomputable section

/-- A295901: Unique sequence satisfying SumXOR_{d divides n} a(d) = n^2 for any n > 0, where SumXOR is the analog of summation under the binary XOR operation.

Offset 1, canonical program `A295901.P16032985280607238720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A295901 (n : ℕ) : ℤ :=
  A295901.P16032985280607238720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A295901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296204.P8696193483855065832

`record[gcd(n+1, A262202(n+1)-1)]²`
-/

namespace A296204.P8696193483855065832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A262202 (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A296204.P8696193483855065832

noncomputable section

/-- A296204: Numbers k such that Product_{d|k, gcd(d,k/d) is prime} gcd(d,k/d) = k; the fixed points of A295666.

Offset 1, canonical program `A296204.P8696193483855065832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1859 terms. -/
def A296204 (n : ℕ) : ℤ :=
  (A296204.P8696193483855065832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1859 terms. -/
def A296204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303479.P8152554123791237719

`A303481(n+1)-2*A303973(n+1)`
-/

namespace A303479.P8152554123791237719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303481 (n + 1) - 2 * A303973 (n + 1)

end

end A303479.P8152554123791237719

noncomputable section

/-- A303479: Total volume of the family of rectangular prisms with dimensions p, q, and |q - p| where p divides q, n = p + q and p < q.

Offset 1, canonical program `A303479.P8152554123791237719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303479 (n : ℕ) : ℤ :=
  A303479.P8152554123791237719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304327.P8179685896533217852

`∑{d}[n+1, A091050(#)*A271102((n+1)/#)]`
-/

namespace A304327.P8179685896533217852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091050 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304327.P8179685896533217852

noncomputable section

/-- A304327: Number of ways to write n as a product of a perfect power and a squarefree number.

Offset 1, canonical program `A304327.P8179685896533217852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304327 (n : ℕ) : ℤ :=
  A304327.P8179685896533217852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304572.P1363963036755555797

`A304571(n+1)-A304570(n+1)`
-/

namespace A304572.P1363963036755555797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (n + 1) - A304570 (n + 1)

end

end A304572.P1363963036755555797

noncomputable section

/-- A304572: Triangle read by rows: T(n,k) = 1 if k does not divide n^e, positive nonzero integers, and gcd(n,k) > 1.

Offset 1, canonical program `A304572.P1363963036755555797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304572 (n : ℕ) : ℤ :=
  A304572.P1363963036755555797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305542.P4052484984925121273

`A056343(n+1)-A056489(n+1)`
-/

namespace A305542.P4052484984925121273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056343 (n + 1) - A056489 (n + 1)

end

end A305542.P4052484984925121273

noncomputable section

/-- A305542: Number of chiral pairs of color loops of length n with exactly 3 different colors.

Offset 1, canonical program `A305542.P4052484984925121273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A305542 (n : ℕ) : ℤ :=
  A305542.P4052484984925121273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A305542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306157.P7780927257187570198

`A383035(n+1)+A306156(n+1)`
-/

namespace A306157.P7780927257187570198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383035 (n + 1) + A306156 (n + 1)

end

end A306157.P7780927257187570198

noncomputable section

/-- A306157: Inverse Weigh transform of 3^n.

Offset 1, canonical program `A306157.P7780927257187570198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A306157 (n : ℕ) : ℤ :=
  A306157.P7780927257187570198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A306157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306217.P10231340410320966270

`filter[A045718(n), A354926(#)]`
-/

namespace A306217.P10231340410320966270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A306217.P10231340410320966270

noncomputable section

/-- A306217: Sphenic numbers with a prime nearest neighbor.

Offset 1, canonical program `A306217.P10231340410320966270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. -/
def A306217 (n : ℕ) : ℤ :=
  A306217.P10231340410320966270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. -/
def A306217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306409.P2461275947846805459

`(A006134(n)-A120305(n))/2`
-/

namespace A306409.P2461275947846805459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 n - A120305 n : ℚ) / 2

end

end A306409.P2461275947846805459

noncomputable section

/-- A306409: a(n) = -Sum_{0<=i<j<=n} (-1)^(i+j) * (i+j)!/(i!*j!).

Offset 0, canonical program `A306409.P2461275947846805459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306409 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306409.P2461275947846805459.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306834.P8589768313617631174

`A014285(n+1)/gcd(A014285(n+1), A316322(n+1))`
-/

namespace A306834.P8589768313617631174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014285 (n + 1) : ℚ) / (Int.gcd (A014285 (n + 1)) (A316322 (n + 1)) : ℚ)

end

end A306834.P8589768313617631174

noncomputable section

/-- A306834: Numerator of the barycenter of first n primes defined as a(n) = numerator(Sum_{i=1..n} (i*prime(i)) / Sum_{i=1..n} prime(i)).

Offset 1, canonical program `A306834.P8589768313617631174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306834 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306834.P8589768313617631174.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307354.P6583539778900423417

`(A006134(n)+A120305(n))/2`
-/

namespace A307354.P6583539778900423417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 n + A120305 n : ℚ) / 2

end

end A307354.P6583539778900423417

noncomputable section

/-- A307354: a(n) = Sum_{0<=i<=j<=n} (-1)^(i+j) * (i+j)!/(i!*j!).

Offset 0, canonical program `A307354.P6583539778900423417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307354 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307354.P6583539778900423417.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308731.P16581783222327330498

`A316322(n+1)+A007290(n+2)`
-/

namespace A308731.P16581783222327330498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316322 (n + 1) + A007290 (n + 2)

end

end A308731.P16581783222327330498

noncomputable section

/-- A308731: a(n) is the sum of the terms of the symmetric square array defined by M(i,j) = prime(i)+i-j for i >= j and M(i,j) = M(j,i) if i < j.

Offset 1, canonical program `A308731.P16581783222327330498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A316322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308731 (n : ℕ) : ℤ :=
  A308731.P16581783222327330498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A316322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308731.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309502.P2115304276531406201

`filter[A114871(n+2), A359820(#)]`
-/

namespace A309502.P2115304276531406201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A309502.P2115304276531406201

noncomputable section

/-- A309502: Totients congruent to 2 mod 4.

Offset 1, canonical program `A309502.P2115304276531406201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4845 terms. -/
def A309502 (n : ℕ) : ℤ :=
  A309502.P2115304276531406201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4845 terms. -/
def A309502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309790.P12506806462962635043

`A104895(2*n+3)+A065620(A063946(2*(n+1)))`
-/

namespace A309790.P12506806462962635043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (2 * n + 3) + A065620 (A063946 (2 * (n + 1))).toNat

end

end A309790.P12506806462962635043

noncomputable section

/-- A309790: G.f. A(x) satisfies: A(x) = 2*x*(1 - x)*A(x^2) + x/(1 - x).

Offset 0, canonical program `A309790.P12506806462962635043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A309790 (n : ℕ) : ℤ :=
  A309790.P12506806462962635043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A309790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311256.P1958209585559977164

`A008574(n)+A315690(n)-A315684(n)`
-/

namespace A311256.P1958209585559977164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315690 n - A315684 n)

end

end A311256.P1958209585559977164

noncomputable section

/-- A311256: Coordination sequence Gal.5.52.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311256.P1958209585559977164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A311256 (n : ℕ) : ℤ :=
  A311256.P1958209585559977164.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A311256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312143.P2878235992731397495

`A313682(n)-A253262(n)`
-/

namespace A312143.P2878235992731397495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313682 n - A253262 n

end

end A312143.P2878235992731397495

noncomputable section

/-- A312143: Coordination sequence Gal.5.55.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312143.P2878235992731397495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A312143 (n : ℕ) : ℤ :=
  A312143.P2878235992731397495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A312143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312206.P1241787982787610248

`abs(10*n-A315670(n))`
-/

namespace A312206.P1241787982787610248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315670 n|

end

end A312206.P1241787982787610248

noncomputable section

/-- A312206: Coordination sequence Gal.6.157.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312206.P1241787982787610248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A312206 (n : ℕ) : ℤ :=
  A312206.P1241787982787610248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A312206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312684.P12134066676930196282

`abs(A008592(n)-A315630(n))`
-/

namespace A312684.P12134066676930196282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315630 n|

end

end A312684.P12134066676930196282

noncomputable section

/-- A312684: Coordination sequence Gal.6.252.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312684.P12134066676930196282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A312684 (n : ℕ) : ℤ :=
  A312684.P12134066676930196282.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A312684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313125.P8596607718569848778

`abs(A008592(n)-A315463(n))`
-/

namespace A313125.P8596607718569848778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315463 n|

end

end A313125.P8596607718569848778

noncomputable section

/-- A313125: Coordination sequence Gal.5.111.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313125.P8596607718569848778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A313125 (n : ℕ) : ℤ :=
  A313125.P8596607718569848778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A313125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313284.P7231035941228258190

`A314203(n)-A253262(n)`
-/

namespace A313284.P7231035941228258190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314203 n - A253262 n

end

end A313284.P7231035941228258190

noncomputable section

/-- A313284: Coordination sequence Gal.5.88.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313284.P7231035941228258190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313284 (n : ℕ) : ℤ :=
  A313284.P7231035941228258190.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313715.P10014129678615076953

`A313703(n)+A313736(n)-A313721(n)`
-/

namespace A313715.P10014129678615076953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313703 n + (A313736 n - A313721 n)

end

end A313715.P10014129678615076953

noncomputable section

/-- A313715: Coordination sequence Gal.6.363.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313715.P10014129678615076953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A313715 (n : ℕ) : ℤ :=
  A313715.P10014129678615076953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A313715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313769.P5587162002525287589

`A004396(n)+A313619(n)-A004525(n)`
-/

namespace A313769.P5587162002525287589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313619 n - A004525 n)

end

end A313769.P5587162002525287589

noncomputable section

/-- A313769: Coordination sequence Gal.6.339.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313769.P5587162002525287589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313769 (n : ℕ) : ℤ :=
  A313769.P5587162002525287589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313855.P14947819833165197464

`A313719(n)+A002266(n+2)`
-/

namespace A313855.P14947819833165197464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n + A002266 (n + 2)

end

end A313855.P14947819833165197464

noncomputable section

/-- A313855: Coordination sequence Gal.5.87.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313855.P14947819833165197464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313855 (n : ℕ) : ℤ :=
  A313855.P14947819833165197464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313890.P2997046397026414357

`∪[A313891(2*n+1), A313894(2*n)]`
-/

namespace A313890.P2997046397026414357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A313890.P2997046397026414357

noncomputable section

/-- A313890: Coordination sequence Gal.6.648.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313890.P2997046397026414357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313890 (n : ℕ) : ℤ :=
  (A313890.P2997046397026414357.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313939.P1821970513572052391

`A008576(n)+A313799(n)-A072154(n)`
-/

namespace A313939.P1821970513572052391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313799 n - A072154 n)

end

end A313939.P1821970513572052391

noncomputable section

/-- A313939: Coordination sequence Gal.6.659.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313939.P1821970513572052391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A313939 (n : ℕ) : ℤ :=
  A313939.P1821970513572052391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A313939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314085.P6510588875040797776

`A315670(n)-A004525(A004396(n))`
-/

namespace A314085.P6510588875040797776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315670 n - A004525 (A004396 n).toNat

end

end A314085.P6510588875040797776

noncomputable section

/-- A314085: Coordination sequence Gal.6.132.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314085.P6510588875040797776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314085 (n : ℕ) : ℤ :=
  A314085.P6510588875040797776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314129.P3295900941499139215

`A313966(n)+A314123(n)-A313957(n)`
-/

namespace A314129.P3295900941499139215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313966 n + (A314123 n - A313957 n)

end

end A314129.P3295900941499139215

noncomputable section

/-- A314129: Coordination sequence Gal.5.312.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314129.P3295900941499139215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314129 (n : ℕ) : ℤ :=
  A314129.P3295900941499139215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314130.P11569106488579326638

`A313966(n)+A314125(n)-A313957(n)`
-/

namespace A314130.P11569106488579326638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313966 n + (A314125 n - A313957 n)

end

end A314130.P11569106488579326638

noncomputable section

/-- A314130: Coordination sequence Gal.5.312.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314130.P11569106488579326638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314130 (n : ℕ) : ℤ :=
  A314130.P11569106488579326638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A314130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314176.P4544315038910432247

`A313932(n)+A244895(A142150(n))`
-/

namespace A314176.P4544315038910432247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313932 n + A244895 (A142150 n).toNat

end

end A314176.P4544315038910432247

noncomputable section

/-- A314176: Coordination sequence Gal.5.313.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314176.P4544315038910432247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314176 (n : ℕ) : ℤ :=
  A314176.P4544315038910432247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A314176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314210.P1704120020659904217

`(A310496(n)+A008458(n))/2`
-/

namespace A314210.P1704120020659904217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310496 n + A008458 n : ℚ) / 2

end

end A314210.P1704120020659904217

noncomputable section

/-- A314210: Coordination sequence Gal.6.623.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314210.P1704120020659904217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314210 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A314210.P1704120020659904217.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314680.P15412562109567247213

`abs(A008592(n)-A314244(n))`
-/

namespace A314680.P15412562109567247213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314244 n|

end

end A314680.P15412562109567247213

noncomputable section

/-- A314680: Coordination sequence Gal.6.149.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314680.P15412562109567247213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A314680 (n : ℕ) : ℤ :=
  A314680.P15412562109567247213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A314680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314689.P7889334889047970928

`abs(A008592(n)-A314234(n))`
-/

namespace A314689.P7889334889047970928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314234 n|

end

end A314689.P7889334889047970928

noncomputable section

/-- A314689: Coordination sequence Gal.6.255.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314689.P7889334889047970928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314689 (n : ℕ) : ℤ :=
  A314689.P7889334889047970928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314740.P9773231279088824093

`A312979(n)-A092202(n+2)`
-/

namespace A314740.P9773231279088824093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312979 n - A092202 (n + 2)

end

end A314740.P9773231279088824093

noncomputable section

/-- A314740: Coordination sequence Gal.5.116.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314740.P9773231279088824093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314740 (n : ℕ) : ℤ :=
  A314740.P9773231279088824093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314885.P6042204147825848892

`abs(A008592(n)-A314133(n))`
-/

namespace A314885.P6042204147825848892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314133 n|

end

end A314885.P6042204147825848892

noncomputable section

/-- A314885: Coordination sequence Gal.6.245.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314885.P6042204147825848892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314885 (n : ℕ) : ℤ :=
  A314885.P6042204147825848892.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314971.P14452924613501510343

`abs(A008592(n)-A314088(n))`
-/

namespace A314971.P14452924613501510343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314088 n|

end

end A314971.P14452924613501510343

noncomputable section

/-- A314971: Coordination sequence Gal.5.138.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314971.P14452924613501510343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A314971 (n : ℕ) : ℤ :=
  A314971.P14452924613501510343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A314971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315019.P7036511611890630324

`abs(10*n-A314057(n))`
-/

namespace A315019.P7036511611890630324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314057 n|

end

end A315019.P7036511611890630324

noncomputable section

/-- A315019: Coordination sequence Gal.6.320.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315019.P7036511611890630324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A315019 (n : ℕ) : ℤ :=
  A315019.P7036511611890630324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A315019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315056.P4925321079305398332

`abs(A008592(n)-A314029(n))`
-/

namespace A315056.P4925321079305398332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314029 n|

end

end A315056.P4925321079305398332

noncomputable section

/-- A315056: Coordination sequence Gal.6.348.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315056.P4925321079305398332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315056 (n : ℕ) : ℤ :=
  A315056.P4925321079305398332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315172.P15889676630402810519

`2*A314671(n)-A008574(n)`
-/

namespace A315172.P15889676630402810519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314671 n - A008574 n

end

end A315172.P15889676630402810519

noncomputable section

/-- A315172: Coordination sequence Gal.5.54.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315172.P15889676630402810519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A315172 (n : ℕ) : ℤ :=
  A315172.P15889676630402810519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A315172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315212.P16544204040533700131

`abs(10*n-A310496(n))`
-/

namespace A315212.P16544204040533700131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A310496 n|

end

end A315212.P16544204040533700131

noncomputable section

/-- A315212: Coordination sequence Gal.6.351.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315212.P16544204040533700131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A315212 (n : ℕ) : ℤ :=
  A315212.P16544204040533700131.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A315212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315267.P18096296036471696412

`A313799(n)+A134667(A006369(n))`
-/

namespace A315267.P18096296036471696412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n + A134667 (A006369 n).toNat

end

end A315267.P18096296036471696412

noncomputable section

/-- A315267: Coordination sequence Gal.6.215.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315267.P18096296036471696412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2284 terms. -/
def A315267 (n : ℕ) : ℤ :=
  A315267.P18096296036471696412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2284 terms. -/
def A315267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315446.P15191818491354741477

`A315398(n)+Δ[A011862(n)]`
-/

namespace A315446.P15191818491354741477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315398 n + (f1 (n + 1) - f1 n)

end

end A315446.P15191818491354741477

noncomputable section

/-- A315446: Coordination sequence Gal.5.68.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315446.P15191818491354741477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315446 (n : ℕ) : ℤ :=
  A315446.P15191818491354741477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A315446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315631.P14361202183170723118

`A315398(n)+A004396(n-A004396(n))`
-/

namespace A315631.P14361202183170723118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315398 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315631.P14361202183170723118

noncomputable section

/-- A315631: Coordination sequence Gal.5.68.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315631.P14361202183170723118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2391 terms. -/
def A315631 (n : ℕ) : ℤ :=
  A315631.P14361202183170723118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2391 terms. -/
def A315631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315727.P1759850529148023067

`A315669(n)+Δ[A011862(n)]`
-/

namespace A315727.P1759850529148023067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315669 n + (f1 (n + 1) - f1 n)

end

end A315727.P1759850529148023067

noncomputable section

/-- A315727: Coordination sequence Gal.5.89.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315727.P1759850529148023067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A315727 (n : ℕ) : ℤ :=
  A315727.P1759850529148023067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. -/
def A315727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315959.P3345584257071925561

`3*n+A004525(A315828(n))`
-/

namespace A315959.P3345584257071925561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A004525 (A315828 n).toNat

end

end A315959.P3345584257071925561

noncomputable section

/-- A315959: Coordination sequence Gal.5.146.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315959.P3345584257071925561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A315959 (n : ℕ) : ℤ :=
  A315959.P3345584257071925561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A315959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318926.P10945222443270223942

`A275536(A003188(1+n))`
-/

namespace A318926.P10945222443270223942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (A003188 (1 + n)).toNat

end

end A318926.P10945222443270223942

noncomputable section

/-- A318926: Take the binary expansion of n, starting with the least significant bit, and concatenate the lengths of the runs.

Offset 1, canonical program `A318926.P10945222443270223942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A318926 (n : ℕ) : ℤ :=
  A318926.P10945222443270223942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A318926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319444.P14641291008283883018

`2*A001222(n+1)-A001222(A343430(n+1))`
-/

namespace A319444.P14641291008283883018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (n + 1) - A001222 (A343430 (n + 1)).toNat

end

end A319444.P14641291008283883018

noncomputable section

/-- A319444: Total number of factors in a factorization of n into Eisenstein primes.

Offset 1, canonical program `A319444.P14641291008283883018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319444 (n : ℕ) : ℤ :=
  A319444.P14641291008283883018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319713.P63459542084956252

`A319715(n+1)-A276150(n+1)`
-/

namespace A319713.P63459542084956252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319715 (n + 1) - A276150 (n + 1)

end

end A319713.P63459542084956252

noncomputable section

/-- A319713: Sum of A276150(d) over proper divisors d of n, where A276150 gives the sum of digits in primorial base.

Offset 1, canonical program `A319713.P63459542084956252`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A319715, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319713 (n : ℕ) : ℤ :=
  A319713.P63459542084956252.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A319715, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319967.P4287753706179414986

`A003145(A003144(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319967.P4287753706179414986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A003144 (n + 1)).toNat

end

end A319967.P4287753706179414986

noncomputable section

/-- A319967: a(n) = A003145(A003144(n)) where A003144 and A003145 are positions of '1' and '2' in the tribonacci word A092782.

Offset 1, canonical program `A319967.P4287753706179414986`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319967 (n : ℕ) : ℤ :=
  A319967.P4287753706179414986.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319968.P16398350758420422133

`A003145(A003145(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319968.P16398350758420422133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A003145 (n + 1)).toNat

end

end A319968.P16398350758420422133

noncomputable section

/-- A319968: a(n) = A003145(A003145(n)).

Offset 1, canonical program `A319968.P16398350758420422133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319968 (n : ℕ) : ℤ :=
  A319968.P16398350758420422133.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319969.P14966318444219165670

`3*A003144(n+1)+4*A003145(n+1)+2*(n+1)`
-/

namespace A319969.P14966318444219165670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003144 (n + 1) + 4 * A003145 (n + 1) + (2 * (n + 1) : ℤ)

end

end A319969.P14966318444219165670

noncomputable section

/-- A319969: a(n) = A003145(A003146(n)).

Offset 1, canonical program `A319969.P14966318444219165670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319969 (n : ℕ) : ℤ :=
  A319969.P14966318444219165670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319971.P17707355117856194328

`3*A003144(n+1)+4*A003145(n+1)+2*n`
-/

namespace A319971.P17707355117856194328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003144 (n + 1) + 4 * A003145 (n + 1) + (2 * n : ℤ)

end

end A319971.P17707355117856194328

noncomputable section

/-- A319971: a(n) = A003146(A003145(n)).

Offset 1, canonical program `A319971.P17707355117856194328`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319971 (n : ℕ) : ℤ :=
  A319971.P17707355117856194328.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, A003145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320627.P6502014669296269449

`A006134(A038754(n)-1)/3^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320627.P6502014669296269449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 (A038754 n - 1).toNat : ℚ) / (3 ^ n : ℚ)

end

end A320627.P6502014669296269449

noncomputable section

/-- A320627: a(n) = A006134(A038754(n) - 1)/3^n.

Offset 0, canonical program `A320627.P6502014669296269449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320627 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320627.P6502014669296269449.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320701.P6478986865021011395

`A000720(A031924(n+1))`
-/

namespace A320701.P6478986865021011395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031924 (n + 1)).toNat

end

end A320701.P6478986865021011395

noncomputable section

/-- A320701: Indices of primes followed by a gap (distance to next larger prime) of 6.

Offset 1, canonical program `A320701.P6478986865021011395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320701 (n : ℕ) : ℤ :=
  A320701.P6478986865021011395.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320701.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322583.P14311457502044672591

`A344438(∑[A063226(n+1)])+A344438(n+1)`
-/

namespace A322583.P14311457502044672591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A344438 (n + 1)

end

end A322583.P14311457502044672591

noncomputable section

/-- A322583: a(n) is the number of factorizations of n into factorial numbers larger than one; a(1) = 1.

Offset 1, canonical program `A322583.P14311457502044672591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A322583 (n : ℕ) : ℤ :=
  A322583.P14311457502044672591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A322583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325401.P9378557464177393728

`(A055944(n)-abs(A055945(n)))/2`
-/

namespace A325401.P9378557464177393728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055944 n - |A055945 n| : ℚ) / 2

end

end A325401.P9378557464177393728

noncomputable section

/-- A325401: minflip(n) = min(n, r(n)) where r(n) is the binary reverse of n.

Offset 0, canonical program `A325401.P9378557464177393728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325401 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325401.P9378557464177393728.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327175.P4858780168493079708

`lt[A327174(n+1), 1]+1`
-/

namespace A327175.P4858780168493079708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327175.P4858780168493079708

noncomputable section

/-- A327175: Positions of 0's in {A327174(n) : n > 0}.

Offset 1, canonical program `A327175.P4858780168493079708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327175 (n : ℕ) : ℤ :=
  (A327175.P4858780168493079708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327176.P1040020970767484414

`lt[0, A327174(n)]`
-/

namespace A327176.P1040020970767484414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327176.P1040020970767484414

noncomputable section

/-- A327176: Positions of 1's in {A327174(n) : n > 0}.

Offset 1, canonical program `A327176.P1040020970767484414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327176 (n : ℕ) : ℤ :=
  (A327176.P1040020970767484414.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327216.P15350666802733433296

`A327174(2*A327174(1+n)+n)`
-/

namespace A327216.P15350666802733433296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (2 * A327174 (1 + n) + (n : ℤ)).toNat

end

end A327216.P15350666802733433296

noncomputable section

/-- A327216: a(n) = [(2n+3)r] - [(n+3)r] - [nr], where [ ] = floor and r = (1+sqrt(5))/2.

Offset 0, canonical program `A327216.P15350666802733433296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327216 (n : ℕ) : ℤ :=
  A327216.P15350666802733433296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327862.P13198743302065105987

`lt[0, A353495(n)]`
-/

namespace A327862.P13198743302065105987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327862.P13198743302065105987

noncomputable section

/-- A327862: Numbers whose arithmetic derivative is of the form 4k+2, cf. A003415.

Offset 1, canonical program `A327862.P13198743302065105987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6202 terms. -/
def A327862 (n : ℕ) : ℤ :=
  (A327862.P13198743302065105987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6202 terms. -/
def A327862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327865.P18409360037918019854

`eq[1, A369967(n)]`
-/

namespace A327865.P18409360037918019854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327865.P18409360037918019854

noncomputable section

/-- A327865: Numbers whose arithmetic derivative is a multiple of 5, cf. A003415.

Offset 1, canonical program `A327865.P18409360037918019854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9433 terms. -/
def A327865 (n : ℕ) : ℤ :=
  (A327865.P18409360037918019854.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9433 terms. -/
def A327865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328190.P10977472533607710601

`A328984(n+1)+and(A298468(n), A328979(n+1))`
-/

namespace A328190.P10977472533607710601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328984 (n + 1) + Int.land (A298468 n) (A328979 (n + 1))

end

end A328190.P10977472533607710601

noncomputable section

/-- A328190: Lexicographically earliest infinite sequence of distinct positive integers such that the sequence and its first differences have no values in common.

Offset 1, canonical program `A328190.P10977472533607710601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328190 (n : ℕ) : ℤ :=
  A328190.P10977472533607710601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328234.P5040501548362449687

`eq[1, A342003(n+2)]+2`
-/

namespace A328234.P5040501548362449687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A328234.P5040501548362449687

noncomputable section

/-- A328234: Numbers whose arithmetic derivative (A003415) is a squarefree number (A005117) > 1.

Offset 1, canonical program `A328234.P5040501548362449687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328234 (n : ℕ) : ℤ :=
  (A328234.P5040501548362449687.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328393.P15555907351680932415

`eq[A342003(n+2)², A342003(n+2)]+2`
-/

namespace A328393.P15555907351680932415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A328393.P15555907351680932415

noncomputable section

/-- A328393: Numbers whose arithmetic derivative (A003415) is a squarefree number (A005117).

Offset 1, canonical program `A328393.P15555907351680932415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328393 (n : ℕ) : ℤ :=
  (A328393.P15555907351680932415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328484.P15261960755088240361

`A373438(n+1)*A035191(n+1)`
-/

namespace A328484.P15261960755088240361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373438 (n + 1) * A035191 (n + 1)

end

end A328484.P15261960755088240361

noncomputable section

/-- A328484: Dirichlet g.f.: zeta(s)^2 / (1 - 3^(-s)).

Offset 1, canonical program `A328484.P15261960755088240361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373438, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328484 (n : ℕ) : ℤ :=
  A328484.P15261960755088240361.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373438, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328902.P11557614217852770634

`A134478(n)/A046899(n)*A328901(n)`
-/

namespace A328902.P11557614217852770634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134478 n : ℚ) / (A046899 n : ℚ) * (A328901 n : ℚ)

end

end A328902.P11557614217852770634

noncomputable section

/-- A328902: Triangle T(n, k) read by rows: T(n, k) is the denominator of the rational Catalan number defined as binomial(n + k, n)/(n + k) for 0 <= k <= n, n > 0; T(0, 0) = 1.

Offset 0, canonical program `A328902.P11557614217852770634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328902 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A328902.P11557614217852770634.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329242.P1185710204891356265

`A033270(n+1)-4*A071839(n+1)`
-/

namespace A329242.P1185710204891356265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) - 4 * A071839 (n + 1)

end

end A329242.P1185710204891356265

noncomputable section

/-- A329242: a(n) = Pi(8,3)(n) + Pi(8,5)(n) + Pi(8,7)(n) - 3*Pi(8,1)(n), where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

Offset 1, canonical program `A329242.P1185710204891356265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329242 (n : ℕ) : ℤ :=
  A329242.P1185710204891356265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329243.P9180453080884109219

`A038698(n+1)+A321861(n+1)+A320858(n+1)`
-/

namespace A329243.P9180453080884109219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 1) + (A321861 (n + 1) + A320858 (n + 1))

end

end A329243.P9180453080884109219

noncomputable section

/-- A329243: a(n) = Pi(8,3)(prime(n)) + Pi(8,5)(prime(n)) + Pi(8,7)(prime(n)) - 3*Pi(8,1)(prime(n)), where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

Offset 1, canonical program `A329243.P9180453080884109219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329243 (n : ℕ) : ℤ :=
  A329243.P9180453080884109219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329836.P12686953867278850669

`A110303(2*n+2)%A074822(A000463(n+4))`
-/

namespace A329836.P12686953867278850669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110303 (2 * n + 2)) (A074822 (A000463 (n + 4)).toNat)

end

end A329836.P12686953867278850669

noncomputable section

/-- A329836: Beatty sequence for (11+sqrt(101))/10.

Offset 1, canonical program `A329836.P12686953867278850669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A329836 (n : ℕ) : ℤ :=
  A329836.P12686953867278850669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A329836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330136.P7111195287136975651

`∩[A047229(n+1), A081062(n+1)]`
-/

namespace A330136.P7111195287136975651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330136.P7111195287136975651

noncomputable section

/-- A330136: Numbers m such that 1 < gcd(m, 6) < m and m does not divide 6^e for e >= 0.

Offset 1, canonical program `A330136.P7111195287136975651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7589 terms. -/
def A330136 (n : ℕ) : ℤ :=
  (A330136.P7111195287136975651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7589 terms. -/
def A330136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330557.P15434734115232232872

`A001281(A330556(n)+∑[A101264(n)])`
-/

namespace A330557.P15434734115232232872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A330556 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330557.P15434734115232232872

noncomputable section

/-- A330557: a(n) = number of primes p <= 2*n+1 with Delta(p) == 2 mod 4, where Delta(p) = nextprime(p) - p.

Offset 0, canonical program `A330557.P15434734115232232872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330557 (n : ℕ) : ℤ :=
  A330557.P15434734115232232872.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331698.P4122289337441276779

`A056930(n+2)-A007491(n+2)`
-/

namespace A331698.P4122289337441276779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056930 (n + 2) - A007491 (n + 2)

end

end A331698.P4122289337441276779

noncomputable section

/-- A331698: a(n) = (1/2) * ((greatest prime < (n+1)^2) - (least prime > n^2)) for n >= 2.

Offset 2, canonical program `A331698.P4122289337441276779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331698 (n : ℕ) : ℤ :=
  A331698.P4122289337441276779.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331891.P10796456041934863719

`∑[2*A119608(n+1)]-A119608(n+1)`
-/

namespace A331891.P10796456041934863719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A119608 (n + 1)

end

end A331891.P10796456041934863719

noncomputable section

/-- A331891: Negabinary palindromes: nonnegative numbers whose negabinary expansion (A039724) is palindromic.

Offset 1, canonical program `A331891.P10796456041934863719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331891 (n : ℕ) : ℤ :=
  A331891.P10796456041934863719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333039.P4908284397635419986

`∩[A002808(n+1), A053226(n+1)+1]`
-/

namespace A333039.P4908284397635419986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333039.P4908284397635419986

noncomputable section

/-- A333039: Composites m such that sigma(m) < sigma(m-1).

Offset 1, canonical program `A333039.P4908284397635419986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7736 terms. -/
def A333039 (n : ℕ) : ℤ :=
  (A333039.P4908284397635419986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7736 terms. -/
def A333039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333976.P13271542286250004937

`A184389(n+1)-A018892(n+1)`
-/

namespace A333976.P13271542286250004937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - A018892 (n + 1)

end

end A333976.P13271542286250004937

noncomputable section

/-- A333976: Number of pairs of divisors of n, (d1,d2), such that d1 <= d2 and gcd(d1,d2) > 1.

Offset 1, canonical program `A333976.P13271542286250004937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333976 (n : ℕ) : ℤ :=
  A333976.P13271542286250004937.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335431.P1130457591279741781

`∩[A054784(n+1), A175332(n+1)]`
-/

namespace A335431.P1130457591279741781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335431.P1130457591279741781

noncomputable section

/-- A335431: Numbers of the form q*(2^k), where q is one of the Mersenne primes (A000668) and k >= 0.

Offset 1, canonical program `A335431.P1130457591279741781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A335431 (n : ℕ) : ℤ :=
  (A335431.P1130457591279741781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A335431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336377.P11303749911854219269

`A000040(A336375(n+1))`
-/

namespace A336377.P11303749911854219269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336375 (n + 1)).toNat

end

end A336377.P11303749911854219269

noncomputable section

/-- A336377: Primes p(n) such that gcd(n, prime(n)+prime(n+2)) > 1.

Offset 1, canonical program `A336377.P11303749911854219269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6364 terms. -/
def A336377 (n : ℕ) : ℤ :=
  A336377.P11303749911854219269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6364 terms. -/
def A336377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336963.P15058899882861974710

`A057889(A336962(A057889(n)))`
-/

namespace A336963.P15058899882861974710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A336962 (A057889 n).toNat).toNat

end

end A336963.P15058899882861974710

noncomputable section

/-- A336963: Left-rotate run-lengths of consecutive equal digits in binary representation of n.

Offset 0, canonical program `A336963.P15058899882861974710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A336963 (n : ℕ) : ℤ :=
  A336963.P15058899882861974710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A336963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338533.P15816568125547245429

`p?[A102770(n+3)-A102770(n+1)]`
-/

namespace A338533.P15816568125547245429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102770 (n + 3) - A102770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338533.P15816568125547245429

noncomputable section

/-- A338533: Primes in A338529/2.

Offset 1, canonical program `A338533.P15816568125547245429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A338533 (n : ℕ) : ℤ :=
  A338533.P15816568125547245429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A338533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339194.P3840768483066506201

`A034960(n+1)-A143215(n+1)`
-/

namespace A339194.P3840768483066506201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034960 (n + 1) - A143215 (n + 1)

end

end A339194.P3840768483066506201

noncomputable section

/-- A339194: Sum of all squarefree semiprimes with greater prime factor prime(n).

Offset 1, canonical program `A339194.P3840768483066506201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034960, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339194 (n : ℕ) : ℤ :=
  A339194.P3840768483066506201.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034960, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339640.P13360000113742845411

`(A062772(n+1)+A054270(n+1))/2-A001248(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339640.P13360000113742845411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062772 (n + 1) + A054270 (n + 1) : ℚ) / 2 - (A001248 (n + 1) : ℚ)

end

end A339640.P13360000113742845411

noncomputable section

/-- A339640: a(n) = (A062772(n) + A054270(n)) / 2 - A001248(n).

Offset 1, canonical program `A339640.P13360000113742845411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339640 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A339640.P13360000113742845411.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339746.P14149983824418019061

`eq[1, A372573(n+1)]+1`
-/

namespace A339746.P14149983824418019061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339746.P14149983824418019061

noncomputable section

/-- A339746: Positive integers of the form 2^i*3^j*k, gcd(k,6)=1, and i == j (mod 3).

Offset 1, canonical program `A339746.P14149983824418019061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339746 (n : ℕ) : ℤ :=
  (A339746.P14149983824418019061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339952.P16856889474786655151

`filter[2*n+1, A353814(#)]`
-/

namespace A339952.P16856889474786655151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j) = 1) n)

end

end A339952.P16856889474786655151

noncomputable section

/-- A339952: Numbers that are the sum of an even square > 0 and an odd square.

Offset 1, canonical program `A339952.P16856889474786655151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339952 (n : ℕ) : ℤ :=
  (A339952.P16856889474786655151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341403.P9679903586376955087

`∑[A045850(n)]`
-/

namespace A341403.P9679903586376955087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341403.P9679903586376955087

noncomputable section

/-- A341403: Number of nonnegative solutions to (x_1)^2 + (x_2)^2 + ... + (x_8)^2 <= n.

Offset 0, canonical program `A341403.P9679903586376955087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341403 (n : ℕ) : ℤ :=
  A341403.P9679903586376955087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341833.P7490125277756735496

`∑{d}[n+1, A341834(#)]`
-/

namespace A341833.P7490125277756735496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341834 d

end

end A341833.P7490125277756735496

noncomputable section

/-- A341833: Dirichlet g.f.: 1 / zeta(s)^7.

Offset 1, canonical program `A341833.P7490125277756735496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341833 (n : ℕ) : ℤ :=
  A341833.P7490125277756735496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342185.P15363331262892615647

`p?[ceil(A074822(n+1)/10)]`
-/

namespace A342185.P15363331262892615647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074822 (n + 1) : ℚ) / 10⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342185.P15363331262892615647

noncomputable section

/-- A342185: Primes q such that 10*q-1 and 10*q+3 are cousin primes.

Offset 1, canonical program `A342185.P15363331262892615647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1069 terms. -/
def A342185 (n : ℕ) : ℤ :=
  A342185.P15363331262892615647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1069 terms. -/
def A342185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344220.P16997399058361643495

`A175919(n)%A016116(A070939(n))`
-/

namespace A344220.P16997399058361643495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175919 n) (A016116 (A070939 n).toNat)

end

end A344220.P16997399058361643495

noncomputable section

/-- A344220: a(n) is the least k >= 0 such that n XOR k is a binary palindrome (where XOR denotes the bitwise XOR operator).

Offset 0, canonical program `A344220.P16997399058361643495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A344220 (n : ℕ) : ℤ :=
  A344220.P16997399058361643495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A344220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345366.P10256940836531311170

`A023523(n+2)%A001043(n+1)`
-/

namespace A345366.P10256940836531311170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023523 (n + 2)) (A001043 (n + 1))

end

end A345366.P10256940836531311170

noncomputable section

/-- A345366: a(n) = (p*q+1) mod (p+q) where p=prime(n) and q=prime(n+1).

Offset 1, canonical program `A345366.P10256940836531311170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345366 (n : ℕ) : ℤ :=
  A345366.P10256940836531311170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345401.P14238453183397205627

`A145341(A337909(n+1))`
-/

namespace A345401.P14238453183397205627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (A337909 (n + 1)).toNat

end

end A345401.P14238453183397205627

noncomputable section

/-- A345401: a(n) is the unique odd number h such that BCR(h*2^m-1) = 2n (except for BCR(0) = 1) where BCR is bit complement and reverse per A036044.

Offset 0, canonical program `A345401.P14238453183397205627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345401 (n : ℕ) : ℤ :=
  A345401.P14238453183397205627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346009.P10450314313708159874

`A062799(n+1)/A000005(n+1)*A346010(n+1)`
-/

namespace A346009.P10450314313708159874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062799 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A346010 (n + 1) : ℚ)

end

end A346009.P10450314313708159874

noncomputable section

/-- A346009: a(n) is the numerator of the average number of distinct prime factors of the divisors of n.

Offset 1, canonical program `A346009.P10450314313708159874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346009 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346009.P10450314313708159874.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348907.P8875665345231982490

`A008578(A342165(n+2))`
-/

namespace A348907.P8875665345231982490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A342165 (n + 2)).toNat

end

end A348907.P8875665345231982490

noncomputable section

/-- A348907: If n is prime, a(n) = n, else a(n) = a(n-pi(n)), n >= 2; where pi is the prime counting function A000720.

Offset 2, canonical program `A348907.P8875665345231982490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348907 (n : ℕ) : ℤ :=
  A348907.P8875665345231982490.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348932.P8495340966039162489

`filter[A260682(n+2), A070563(#)]`
-/

namespace A348932.P8495340966039162489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A348932.P8495340966039162489

noncomputable section

/-- A348932: Numbers k congruent to 1 or 5 mod 6, for which A348930(k) > k.

Offset 1, canonical program `A348932.P8495340966039162489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9610 terms. -/
def A348932 (n : ℕ) : ℤ :=
  A348932.P8495340966039162489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9610 terms. -/
def A348932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349434.P347975015890233595

`∑{d}[n+1, A129283((n+1)/#)*A349337(#)]`
-/

namespace A349434.P347975015890233595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A349337 d

end

end A349434.P347975015890233595

noncomputable section

/-- A349434: Dirichlet convolution of A129283 (n + its arithmetic derivative) with A349337 (Dirichlet inverse of A230593).

Offset 1, canonical program `A349434.P347975015890233595`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349434 (n : ℕ) : ℤ :=
  A349434.P347975015890233595.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349337, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351359.P2301868971868708912

`A008965(n+1)-(A032190(n+1)+A000007(n))`
-/

namespace A351359.P2301868971868708912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) - (A032190 (n + 1) + A000007 n)

end

end A351359.P2301868971868708912

noncomputable section

/-- A351359: Number of binary necklaces with n beads and at least two consecutive black beads.

Offset 1, canonical program `A351359.P2301868971868708912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A351359 (n : ℕ) : ℤ :=
  A351359.P2301868971868708912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A351359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351528.P8807216159401882128

`p?[ceil(A145341(n+1)/2)]`
-/

namespace A351528.P8807216159401882128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A145341 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351528.P8807216159401882128

noncomputable section

/-- A351528: Prime numbers ordered by their binary reversal.

Offset 1, canonical program `A351528.P8807216159401882128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A351528 (n : ℕ) : ℤ :=
  A351528.P8807216159401882128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A351528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352087.P2052615442428702218

`eq[0, A175919(A003726(n+1))]`
-/

namespace A352087.P2052615442428702218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003726 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352087.P2052615442428702218

noncomputable section

/-- A352087: Numbers whose minimal (or greedy) tribonacci representation (A278038) is palindromic.

Offset 1, canonical program `A352087.P2052615442428702218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A352087 (n : ℕ) : ℤ :=
  (A352087.P2052615442428702218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A352087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352447.P16230586406353503362

`comp[A175787(n+1)]+1`
-/

namespace A352447.P16230586406353503362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352447.P16230586406353503362

noncomputable section

/-- A352447: Numbers k such that BarnesG(k) is divisible by Gamma(k).

Offset 1, canonical program `A352447.P16230586406353503362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352447 (n : ℕ) : ℤ :=
  (A352447.P16230586406353503362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352601.P1362138026747844660

`A124320(C(2*n+1, 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A352601.P1362138026747844660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 (Nat.choose (2 * n + 1) 2 + n)

end

end A352601.P1362138026747844660

noncomputable section

/-- A352601: a(n) = RisingFactorial(2*n, n) = A124320(2*n, n).

Offset 0, canonical program `A352601.P1362138026747844660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352601 (n : ℕ) : ℤ :=
  A352601.P1362138026747844660.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352601.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352775.P2048892064585624364

`A352753(n+1)+A352754(n+1)`
-/

namespace A352775.P2048892064585624364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352753 (n + 1) + A352754 (n + 1)

end

end A352775.P2048892064585624364

noncomputable section

/-- A352775: a(n) = pi(n) * (Sum_{n <= q < 2n, q prime} q) + (pi(2n-1) - pi(n-1)) * (Sum_{p <= n, p prime} p).

Offset 1, canonical program `A352775.P2048892064585624364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352753, A352754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352775 (n : ℕ) : ℤ :=
  A352775.P2048892064585624364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352753, A352754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353084.P13564049963541245376

`A003265(n+1)-n`
-/

namespace A353084.P13564049963541245376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003265 (n + 1) - (n : ℤ)

end

end A353084.P13564049963541245376

noncomputable section

/-- A353084: Column 0 of the extended Trithoff (tribonacci) array.

Offset 1, canonical program `A353084.P13564049963541245376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353084 (n : ℕ) : ℤ :=
  A353084.P13564049963541245376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353198.P877011731945880113

`filter[A024614(n+1), A353814(#)]`
-/

namespace A353198.P877011731945880113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A353198.P877011731945880113

noncomputable section

/-- A353198: Intersection of A000404 and A024614.

Offset 1, canonical program `A353198.P877011731945880113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2650 terms. -/
def A353198 (n : ℕ) : ℤ :=
  A353198.P877011731945880113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2650 terms. -/
def A353198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353371.P5704616763070307128

`A000005(n+1)-A353372(n+1)`
-/

namespace A353371.P5704616763070307128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353372 (n + 1)

end

end A353371.P5704616763070307128

noncomputable section

/-- A353371: Number of divisors of n that are not in A325698.

Offset 1, canonical program `A353371.P5704616763070307128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353371 (n : ℕ) : ℤ :=
  A353371.P5704616763070307128.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353372, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354923.P18081959809145531847

`C(A007814(n+1), C(A008480(n+1), 2))`
-/

namespace A354923.P18081959809145531847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007814 (n + 1)).toNat (Nat.choose (A008480 (n + 1)).toNat 2)

end

end A354923.P18081959809145531847

noncomputable section

/-- A354923: a(n) = 1 if n is either a power of prime or 2*prime, otherwise 0.

Offset 1, canonical program `A354923.P18081959809145531847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354923 (n : ℕ) : ℤ :=
  (A354923.P18081959809145531847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355450.P7145778670325853768

`A355451(1+(n+1)²)`
-/

namespace A355450.P7145778670325853768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (1 + (n + 1) ^ 2)

end

end A355450.P7145778670325853768

noncomputable section

/-- A355450: a(n) = 1 if n is odd and phi(x) = n^2 + 1 has no solutions, otherwise 0.

Offset 1, canonical program `A355450.P7145778670325853768`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355450 (n : ℕ) : ℤ :=
  A355450.P7145778670325853768.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357590.P13214365663631185069

`∩[A061304(n+1), A076579(n+1)]`
-/

namespace A357590.P13214365663631185069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357590.P13214365663631185069

noncomputable section

/-- A357590: Triangular numbers which are products of five distinct primes.

Offset 1, canonical program `A357590.P13214365663631185069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2966 terms. -/
def A357590 (n : ℕ) : ℤ :=
  (A357590.P13214365663631185069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2966 terms. -/
def A357590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358530.P16462741210301020417

`A151800(A051634(n+1))`
-/

namespace A358530.P16462741210301020417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A051634 (n + 1)).toNat

end

end A358530.P16462741210301020417

noncomputable section

/-- A358530: a(n) = n-th prime prime(k) such that prime(k) - prime(k-1) < prime(k-1) - prime(k-2).

Offset 1, canonical program `A358530.P16462741210301020417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051634, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358530 (n : ℕ) : ℤ :=
  A358530.P16462741210301020417.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051634, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359479.P2526974503153798656

`∑[∑{d}[n+1, A059841(#-1)*A327268((n+1)/#)]]`
-/

namespace A359479.P2526974503153798656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A059841 (d - 1) * A327268 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359479.P2526974503153798656

noncomputable section

/-- A359479: a(1) = 1; a(n) = Sum_{k=2..n} (-1)^k * k * a(floor(n/k)).

Offset 1, canonical program `A359479.P2526974503153798656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359479 (n : ℕ) : ℤ :=
  A359479.P2526974503153798656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361985.P15140877785734381926

`∑{d}[n+1, A059841(#-1)*A327268((n+1)/#)]`
-/

namespace A361985.P15140877785734381926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A327268 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361985.P15140877785734381926

noncomputable section

/-- A361985: a(1) = 1, a(2) = 1; a(n) = n * Sum_{d|n, d < n} (-1)^(n/d) a(d) / d.

Offset 1, canonical program `A361985.P15140877785734381926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361985 (n : ℕ) : ℤ :=
  A361985.P15140877785734381926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363033.P3715738251278879840

`A284281(5*(n+1)-1)`
-/

namespace A363033.P3715738251278879840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * (n + 1) - 1)

end

end A363033.P3715738251278879840

noncomputable section

/-- A363033: Sum of divisors of 5*n-1 of form 5*k+3.

Offset 1, canonical program `A363033.P3715738251278879840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363033 (n : ℕ) : ℤ :=
  A363033.P3715738251278879840.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363034.P8832158960344729897

`A284281(5*(n+1)-2)`
-/

namespace A363034.P8832158960344729897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * (n + 1) - 2)

end

end A363034.P8832158960344729897

noncomputable section

/-- A363034: Sum of divisors of 5*n-2 of form 5*k+3.

Offset 1, canonical program `A363034.P8832158960344729897`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363034 (n : ℕ) : ℤ :=
  A363034.P8832158960344729897.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363035.P2703347928261583590

`A284281(5*(n+1)-3)`
-/

namespace A363035.P2703347928261583590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * (n + 1) - 3)

end

end A363035.P2703347928261583590

noncomputable section

/-- A363035: Sum of divisors of 5*n-3 of form 5*k+3.

Offset 1, canonical program `A363035.P2703347928261583590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363035 (n : ℕ) : ℤ :=
  A363035.P2703347928261583590.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363035.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363053.P13013895526662378901

`A284281(5*n+1)`
-/

namespace A363053.P13013895526662378901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (5 * n + 1)

end

end A363053.P13013895526662378901

noncomputable section

/-- A363053: Sum of divisors of 5*n-4 of form 5*k+3.

Offset 1, canonical program `A363053.P13013895526662378901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363053 (n : ℕ) : ℤ :=
  A363053.P13013895526662378901.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363928.P10938334218304106877

`(2*A001878(n+1)+A284281(n+1))/5`
-/

namespace A363928.P10938334218304106877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001878 (n + 1) + A284281 (n + 1) : ℚ) / 5

end

end A363928.P10938334218304106877

noncomputable section

/-- A363928: Expansion of Sum_{k>0} x^(3*k) / (1 - x^(5*k))^2.

Offset 1, canonical program `A363928.P10938334218304106877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001878, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363928 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363928.P10938334218304106877.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001878, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366378.P2407206345280088483

`eq[A010872(n), A010872(A057889(n))]`
-/

namespace A366378.P2407206345280088483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A057889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366378.P2407206345280088483

noncomputable section

/-- A366378: Numbers k such that A057889(k) == k (mod 3), where A057889 is the bijective bit-reverse.

Offset 1, canonical program `A366378.P2407206345280088483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5799 terms. -/
def A366378 (n : ℕ) : ℤ :=
  (A366378.P2407206345280088483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5799 terms. -/
def A366378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368473.P11836645701216829903

`A005361(A138302(n+1))`
-/

namespace A368473.P11836645701216829903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A138302 (n + 1)).toNat

end

end A368473.P11836645701216829903

noncomputable section

/-- A368473: Product of exponents of prime factorization of the exponentially 2^n-numbers (A138302).

Offset 1, canonical program `A368473.P11836645701216829903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368473 (n : ℕ) : ℤ :=
  A368473.P11836645701216829903.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368583.P3867222332504349126

`A124320(C(row(n)+2, 2)+col(n))*A132393(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368583.P3867222332504349126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 (Nat.choose (SequenceMachineLib.triRow n + 2) 2 + SequenceMachineLib.triCol n) * A132393 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A368583.P3867222332504349126

noncomputable section

/-- A368583: Table read by rows: T(n, k) = A124320(n + 1, k) * A132393(n, k).

Offset 0, canonical program `A368583.P3867222332504349126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368583 (n : ℕ) : ℤ :=
  A368583.P3867222332504349126.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368583.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368584.P17128309337209527976

`A124320(C(row(n)+2, 2)+col(n))*A048993(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368584.P17128309337209527976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 (Nat.choose (SequenceMachineLib.triRow n + 2) 2 + SequenceMachineLib.triCol n) * A048993 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A368584.P17128309337209527976

noncomputable section

/-- A368584: Table read by rows: T(n, k) = A124320(n + 1, k) * A048993(n, k).

Offset 0, canonical program `A368584.P17128309337209527976`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368584 (n : ℕ) : ℤ :=
  A368584.P17128309337209527976.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368883.P5151374445955228630

`A061389(A053165(n+1))`
-/

namespace A368883.P5151374445955228630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A053165 (n + 1)).toNat

end

end A368883.P5151374445955228630

noncomputable section

/-- A368883: The number of infinitary divisors of n that are cubefree.

Offset 1, canonical program `A368883.P5151374445955228630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368883 (n : ℕ) : ℤ :=
  A368883.P5151374445955228630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370983.P7991274931919617133

`A165680(n+1)*A253283(n)`
-/

namespace A370983.P7991274931919617133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165680 (n + 1) * A253283 n

end

end A370983.P7991274931919617133

noncomputable section

/-- A370983: Triangle read by rows: T(n, k) = (n + k - 1)! / (k!*(n - k)!) if k > 0 and T(n, 0) = 0^n.

Offset 0, canonical program `A370983.P7991274931919617133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. -/
def A370983 (n : ℕ) : ℤ :=
  A370983.P7991274931919617133.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. -/
def A370983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371238.P16159629807628423493

`A000010(A048701(n+1))`
-/

namespace A371238.P16159629807628423493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A048701 (n + 1)).toNat

end

end A371238.P16159629807628423493

noncomputable section

/-- A371238: Euler totient function applied to the binary palindromes of even length.

Offset 1, canonical program `A371238.P16159629807628423493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371238 (n : ℕ) : ℤ :=
  A371238.P16159629807628423493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372606.P14110259587396499167

`A106476(n)*A372619(n+1)`
-/

namespace A372606.P14110259587396499167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106476 n * A372619 (n + 1)

end

end A372606.P14110259587396499167

noncomputable section

/-- A372606: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = Sum_{j=1..n} phi(k*j).

Offset 1, canonical program `A372606.P14110259587396499167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372606 (n : ℕ) : ℤ :=
  A372606.P14110259587396499167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373836.P14977565913195360682

`A372573(n+1)*A373975(n+1)`
-/

namespace A373836.P14977565913195360682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1) * A373975 (n + 1)

end

end A373836.P14977565913195360682

noncomputable section

/-- A373836: a(n) = 1 if bigomega(n) and A276085(n) are both multiples of 3, otherwise 0, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373836.P14977565913195360682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373836 (n : ℕ) : ℤ :=
  A373836.P14977565913195360682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373947.P8857403306256119126

`A037201(n+2)/2`
-/

namespace A373947.P8857403306256119126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037201 (n + 2) : ℚ) / 2

end

end A373947.P8857403306256119126

noncomputable section

/-- A373947: Halved and run-compressed first differences of consecutive odd primes.

Offset 1, canonical program `A373947.P8857403306256119126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373947 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373947.P8857403306256119126.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374119.P18024338057745193586

`A372573(n+1)*A374051(n+1)`
-/

namespace A374119.P18024338057745193586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1) * A374051 (n + 1)

end

end A374119.P18024338057745193586

noncomputable section

/-- A374119: a(n) = 1 if A113177(n) and A276085(n) are both multiples of 3, otherwise 0, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374119.P18024338057745193586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A374051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374119 (n : ℕ) : ℤ :=
  A374119.P18024338057745193586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A374051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374119.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374276.P15801528438707414755

`A374093(n)+A214284(n)`
-/

namespace A374276.P15801528438707414755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374093 n + A214284 n

end

end A374276.P15801528438707414755

noncomputable section

/-- A374276: Number of representations of n by the quadratic form x^2 + 3*x*y + y^2 with 0 <= x <= y.

Offset 0, canonical program `A374276.P15801528438707414755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374276 (n : ℕ) : ℤ :=
  A374276.P15801528438707414755.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375510.P4398942062596491998

`A185725(n+1)-A068344(n)`
-/

namespace A375510.P4398942062596491998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185725 (n + 1) - A068344 n

end

end A375510.P4398942062596491998

noncomputable section

/-- A375510: Fringe indices of Zernike polynomials.

Offset 0, canonical program `A375510.P4398942062596491998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375510 (n : ℕ) : ℤ :=
  A375510.P4398942062596491998.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375933.P3247189904836465685

`A051903(A375932(n+1))`
-/

namespace A375933.P3247189904836465685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A375932 (n + 1)).toNat

end

end A375933.P3247189904836465685

noncomputable section

/-- A375933: The second-largest exponent in the prime factorization of n, or 0 if it does not exist.

Offset 1, canonical program `A375933.P3247189904836465685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375933 (n : ℕ) : ℤ :=
  A375933.P3247189904836465685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376886.P16961276185423937314

`∑{e}[n+1, A267263(#)]`
-/

namespace A376886.P16961276185423937314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A267263 (Nat.factorization (f1 n) p)

end

end A376886.P16961276185423937314

noncomputable section

/-- A376886: The number of distinct factors of n of the form p^(k!), where p is a prime and k >= 1, when the factorization is uniquely done using the factorial-base representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A376886.P16961276185423937314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376886 (n : ℕ) : ℤ :=
  A376886.P16961276185423937314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377818.P3955144140515496482

`∩[A377816(n+1), A393924(n+1)]`
-/

namespace A377818.P3955144140515496482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377818.P3955144140515496482

noncomputable section

/-- A377818: Powerful numbers that have a single even exponent in their prime factorization.

Offset 1, canonical program `A377818.P3955144140515496482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A377818 (n : ℕ) : ℤ :=
  (A377818.P3955144140515496482.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A377818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378434.P1462916945159414399

`(A158523(n+1)+A178450(n+1))/2`
-/

namespace A378434.P1462916945159414399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158523 (n + 1) + A178450 (n + 1) : ℚ) / 2

end

end A378434.P1462916945159414399

noncomputable section

/-- A378434: Arithmetic mean between the Dirichlet inverses of {sum of unitary divisors} and {sum of squarefree divisors}.

Offset 1, canonical program `A378434.P1462916945159414399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378434 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378434.P1462916945159414399.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378615.P14217085017096801148

`A000040(n+1)-A027883(n+1)`
-/

namespace A378615.P14217085017096801148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A027883 (n + 1)

end

end A378615.P14217085017096801148

noncomputable section

/-- A378615: Number of non prime powers <= prime(n).

Offset 1, canonical program `A378615.P14217085017096801148`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027883, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378615 (n : ℕ) : ℤ :=
  A378615.P14217085017096801148.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027883, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378615.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379099.P6794364004104742208

`A000108(n)*A006134(n)`
-/

namespace A379099.P6794364004104742208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A006134 n

end

end A379099.P6794364004104742208

noncomputable section

/-- A379099: a(n) = Sum_{k=0..n} binomial(2*k, k)*binomial(2*n, n)/(n + 1). Row sums of A379100.

Offset 0, canonical program `A379099.P6794364004104742208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379099 (n : ℕ) : ℤ :=
  A379099.P6794364004104742208.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379561.P6001539951614561260

`A025558(n+1)+A027457(n+2)`
-/

namespace A379561.P6001539951614561260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025558 (n + 1) + A027457 (n + 2)

end

end A379561.P6001539951614561260

noncomputable section

/-- A379561: a(n) = A003418(n+1)*H(n), where H(n) = 1 + 1/2 + ... + 1/n is the n-th harmonic number.

Offset 1, canonical program `A379561.P6001539951614561260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027457, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379561 (n : ℕ) : ℤ :=
  A379561.P6001539951614561260.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027457, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379561.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380151.P6636326723691283784

`A035487(n+1)-A380804(n+1)`
-/

namespace A380151.P6636326723691283784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035487 (n + 1) - A380804 (n + 1)

end

end A380151.P6636326723691283784

noncomputable section

/-- A380151: Classification sequence for the Stolarsky array A035506.

Offset 1, canonical program `A380151.P6636326723691283784`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, A380804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380151 (n : ℕ) : ℤ :=
  A380151.P6636326723691283784.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, A380804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380372.P8539157090065438516

`char[A082851(1+n)-1]`
-/

namespace A380372.P8539157090065438516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082851 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A380372.P8539157090065438516

noncomputable section

/-- A380372: Characteristic function of A082851.

Offset 1, canonical program `A380372.P8539157090065438516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380372 (n : ℕ) : ℤ :=
  (A380372.P8539157090065438516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380443.P17503996144246579122

`A004525(A378299(n+1))`
-/

namespace A380443.P17503996144246579122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A378299 (n + 1)).toNat

end

end A380443.P17503996144246579122

noncomputable section

/-- A380443: a(n) = numerator(b(n)), where b(n) = b(n/2)/2 for n even and 1 - b((n-1)/2)/2 for n odd with b(1) = 1.

Offset 1, canonical program `A380443.P17503996144246579122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A380443 (n : ℕ) : ℤ :=
  A380443.P17503996144246579122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A380443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380910.P6919724403864687655

`A004730(abs(1-n))`
-/

namespace A380910.P6919724403864687655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 |1 - (n : ℤ)|.toNat

end

end A380910.P6919724403864687655

noncomputable section

/-- A380910: a(n) = denominator(n!! / (n - 1)!!).

Offset 0, canonical program `A380910.P6919724403864687655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A380910 (n : ℕ) : ℤ :=
  A380910.P6919724403864687655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A380910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380950.P16297941268626771220

`A004730(A289207(n))*A380909(n)`
-/

namespace A380950.P16297941268626771220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (A289207 n).toNat * A380909 n

end

end A380950.P16297941268626771220

noncomputable section

/-- A380950: a(n) = denominator(r(n)) where r(n) = (n/2)*(Pi/2)^cos(Pi*(n-1))*((n/2-1/2)!/(n/2)!)^2.

Offset 0, canonical program `A380950.P16297941268626771220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A380950 (n : ℕ) : ℤ :=
  A380950.P16297941268626771220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A380950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381314.P1696934832685863059

`∩[A386796(n+1), A393924(n+1)]`
-/

namespace A381314.P1696934832685863059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381314.P1696934832685863059

noncomputable section

/-- A381314: Powerful numbers that have a single exponent in their prime factorization that equals 2.

Offset 1, canonical program `A381314.P1696934832685863059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A381314 (n : ℕ) : ℤ :=
  (A381314.P1696934832685863059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A381314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381852.P9783243754932668671

`A053644(2*n+1)-A049773(A049773(2*n+1))`
-/

namespace A381852.P9783243754932668671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n + 1) - A049773 (A049773 (2 * n + 1)).toNat

end

end A381852.P9783243754932668671

noncomputable section

/-- A381852: In the binary expansion of n (without leading zeros): complement the bits strictly to the right of the leftmost zero digit, if any.

Offset 0, canonical program `A381852.P9783243754932668671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A381852 (n : ℕ) : ℤ :=
  A381852.P9783243754932668671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A381852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382422.P18312410070460850629

`A005361(A046100(n+1))`
-/

namespace A382422.P18312410070460850629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A046100 (n + 1)).toNat

end

end A382422.P18312410070460850629

noncomputable section

/-- A382422: The product of exponents in the prime factorization of the biquadratefree numbers.

Offset 1, canonical program `A382422.P18312410070460850629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382422 (n : ℕ) : ℤ :=
  A382422.P18312410070460850629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382966.P5975578079117178061

`A056170(A375072(n+1))`
-/

namespace A382966.P5975578079117178061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A375072 (n + 1)).toNat

end

end A382966.P5975578079117178061

noncomputable section

/-- A382966: The number of non-unitary prime divisors of the n-th biquadratefree number that is not cubefree.

Offset 1, canonical program `A382966.P5975578079117178061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382966 (n : ℕ) : ℤ :=
  A382966.P5975578079117178061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383005.P1801605340694019833

`A007814(A046100(n+1))`
-/

namespace A383005.P1801605340694019833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046100 (n + 1)).toNat

end

end A383005.P1801605340694019833

noncomputable section

/-- A383005: Exponent of the highest power of 2 dividing the n-th biquadratefree number.

Offset 1, canonical program `A383005.P1801605340694019833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383005 (n : ℕ) : ℤ :=
  A383005.P1801605340694019833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383034.P16762733124447717769

`A306156(n+1)-A209229(n+1)`
-/

namespace A383034.P16762733124447717769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306156 (n + 1) - A209229 (n + 1)

end

end A383034.P16762733124447717769

noncomputable section

/-- A383034: Inverse Weigh transform of 2^(n-1).

Offset 1, canonical program `A383034.P16762733124447717769`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A306156, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A383034 (n : ℕ) : ℤ :=
  A383034.P16762733124447717769.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A306156, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A383034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383423.P11431245251035309516

`∩[A022342(n+1), A383427(n+1)]`
-/

namespace A383423.P11431245251035309516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383423.P11431245251035309516

noncomputable section

/-- A383423: Indices k such that A003849(k) = 0 and A383422(k) = 0.

Offset 1, canonical program `A383423.P11431245251035309516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4766 terms. -/
def A383423 (n : ℕ) : ℤ :=
  (A383423.P11431245251035309516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4766 terms. -/
def A383423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383424.P17133997064317184709

`∩[A003622(n+1), A383427(n+1)]`
-/

namespace A383424.P17133997064317184709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383424.P17133997064317184709

noncomputable section

/-- A383424: Indices k such that A003849(k) = 1 and A383422(k) = 1.

Offset 1, canonical program `A383424.P17133997064317184709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4377 terms. -/
def A383424 (n : ℕ) : ℤ :=
  (A383424.P17133997064317184709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4377 terms. -/
def A383424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384041.P8191093603258971194

`∑{d}[n+1, A007432(#)*A332730((n+1)/#)]`
-/

namespace A384041.P8191093603258971194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A332730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384041.P8191093603258971194

noncomputable section

/-- A384041: The number of integers k from 1 to n such that gcd(n,k) is an exponentially odd number.

Offset 1, canonical program `A384041.P8191093603258971194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384041 (n : ℕ) : ℤ :=
  A384041.P8191093603258971194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384164.P2352012248476875328

`A124320(C(3*n+1, 2)+n)`
-/

namespace A384164.P2352012248476875328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 (Nat.choose (3 * n + 1) 2 + n)

end

end A384164.P2352012248476875328

noncomputable section

/-- A384164: a(n) = Product_{k=0..n-1} (3*n+k).

Offset 0, canonical program `A384164.P2352012248476875328`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384164 (n : ℕ) : ℤ :=
  A384164.P2352012248476875328.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384164.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384418.P15387864905350044636

`record[A057521(A209061(n+1))]`
-/

namespace A384418.P15387864905350044636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A209061 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384418.P15387864905350044636

noncomputable section

/-- A384418: Powerful exponentially squarefree numbers.

Offset 1, canonical program `A384418.P15387864905350044636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A384418 (n : ℕ) : ℤ :=
  A384418.P15387864905350044636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A384418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384419.P10385921889359605999

`filter[A209061(n+1), A010055(#)]`
-/

namespace A384419.P10385921889359605999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A384419.P10385921889359605999

noncomputable section

/-- A384419: Exponentially squarefree prime powers.

Offset 1, canonical program `A384419.P10385921889359605999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1273 terms. -/
def A384419 (n : ℕ) : ℤ :=
  A384419.P10385921889359605999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1273 terms. -/
def A384419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386537.P3580917112878141729

`A007814(A138302(n+1))`
-/

namespace A386537.P3580917112878141729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A138302 (n + 1)).toNat

end

end A386537.P3580917112878141729

noncomputable section

/-- A386537: Exponent of the highest power of 2 dividing the n-th number whose prime factorization exponents are all powers of 2 (A138302).

Offset 1, canonical program `A386537.P3580917112878141729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386537 (n : ℕ) : ℤ :=
  A386537.P3580917112878141729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386537.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386803.P12507161777922497949

`and(A375155(n+1), A388972(n+1))`
-/

namespace A386803.P12507161777922497949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A375155 (n + 1)) (A388972 (n + 1))

end

end A386803.P12507161777922497949

noncomputable section

/-- A386803: Numbers without an exponent 4 in their prime factorization.

Offset 1, canonical program `A386803.P12507161777922497949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A386803 (n : ℕ) : ℤ :=
  A386803.P12507161777922497949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A386803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387348.P10737065631606712067

`A096270(n)-A327174(n)`
-/

namespace A387348.P10737065631606712067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n - A327174 n

end

end A387348.P10737065631606712067

noncomputable section

/-- A387348: a(n) = W(n,2) - S(n,2) where W is the Wythoff array (A035513) and S is the Stolarsky array (A035506).

Offset 1, canonical program `A387348.P10737065631606712067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387348 (n : ℕ) : ℤ :=
  A387348.P10737065631606712067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387720.P14118648609453806553

`lt[A107758(n+1), 2*(n+1)]+1`
-/

namespace A387720.P14118648609453806553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107758 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387720.P14118648609453806553

noncomputable section

/-- A387720: Numbers k for which A107758(k) < 2*k, where A107758 is sigma+, multiplicative function with a(p^e) = 1+sigma(p^e).

Offset 1, canonical program `A387720.P14118648609453806553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4432 terms. -/
def A387720 (n : ℕ) : ℤ :=
  (A387720.P14118648609453806553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4432 terms. -/
def A387720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387721.P8750990091940802958

`lt[2*(n+1), A107758(n+1)]+1`
-/

namespace A387721.P8750990091940802958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107758 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387721.P8750990091940802958

noncomputable section

/-- A387721: Numbers k for which A107758(k) > 2*k, where A107758 is sigma+, multiplicative function with a(p^e) = 1+sigma(p^e).

Offset 1, canonical program `A387721.P8750990091940802958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A387721 (n : ℕ) : ℤ :=
  (A387721.P8750990091940802958.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A387721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388984.P10702588259379283515

`filter[A388983(n+1), A359770(#)]`
-/

namespace A388984.P10702588259379283515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A388984.P10702588259379283515

noncomputable section

/-- A388984: Even numbers, not powers of primes, that are of the form p * m^2, where p is prime and m by necessity > 1.

Offset 1, canonical program `A388984.P10702588259379283515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5578 terms. -/
def A388984 (n : ℕ) : ℤ :=
  A388984.P10702588259379283515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5578 terms. -/
def A388984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389425.P17457791161868218869

`A199716(n+2)-A199716(n+1)`
-/

namespace A389425.P17457791161868218869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199716 (n + 2) - A199716 (n + 1)

end

end A389425.P17457791161868218869

noncomputable section

/-- A389425: First differences of A199716.

Offset 1, canonical program `A389425.P17457791161868218869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389425 (n : ℕ) : ℤ :=
  A389425.P17457791161868218869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390423.P17417933540098587345

`∑{#}[n, A289684(#)*A289684(n-#)]`
-/

namespace A390423.P17417933540098587345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A289684 k * A289684 (n - k)

end

end A390423.P17417933540098587345

noncomputable section

/-- A390423: Expansion of 1/(2 - g^2)^2, where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A390423.P17417933540098587345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A390423 (n : ℕ) : ℤ :=
  A390423.P17417933540098587345.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A390423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390788.P17759256906105032846

`lt[A210882(A210882(2*n+1)), A210882(2*n+1)]`
-/

namespace A390788.P17759256906105032846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (A210882 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390788.P17759256906105032846

noncomputable section

/-- A390788: Numbers k such that 2*k - (greatest prime < 2*k) < (least prime > 2*k) - 2*k.

Offset 1, canonical program `A390788.P17759256906105032846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2118 terms. -/
def A390788 (n : ℕ) : ℤ :=
  (A390788.P17759256906105032846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2118 terms. -/
def A390788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390789.P3572526343516217248

`A072568(n+1)/2`
-/

namespace A390789.P3572526343516217248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072568 (n + 1) : ℚ) / 2

end

end A390789.P3572526343516217248

noncomputable section

/-- A390789: Numbers k such that 2*k - (greatest prime < 2*k) = (least prime > 2*k) - 2*k.

Offset 1, canonical program `A390789.P3572526343516217248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390789 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390789.P3572526343516217248.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391351.P2535624415018184533

`lt[A210882(A210882(3*n+1)), A210882(3*n+1)]`
-/

namespace A391351.P2535624415018184533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (A210882 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391351.P2535624415018184533

noncomputable section

/-- A391351: Numbers k such that 3*k - (greatest prime < 3*k) < (least prime > 3*k) - 3*k.

Offset 1, canonical program `A391351.P2535624415018184533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1285 terms. -/
def A391351 (n : ℕ) : ℤ :=
  (A391351.P2535624415018184533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1285 terms. -/
def A391351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391353.P11489721104169908748

`lt[A210882(3*n+1), 3*n]`
-/

namespace A391353.P11489721104169908748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A391353.P11489721104169908748

noncomputable section

/-- A391353: Numbers k such that 3*k - (greatest prime < 3*k) > (least prime > 3*k) - 3*k.

Offset 1, canonical program `A391353.P11489721104169908748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1287 terms. -/
def A391353 (n : ℕ) : ℤ :=
  (A391353.P11489721104169908748.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1287 terms. -/
def A391353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391513.P11445667860711738503

`(A289684(n)+A115141(n))/2`
-/

namespace A391513.P11445667860711738503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289684 n + A115141 n : ℚ) / 2

end

end A391513.P11445667860711738503

noncomputable section

/-- A391513: Expansion of 1/(g^2 * (2 - g^2)), where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A391513.P11445667860711738503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A391513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391513.P11445667860711738503.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A391513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391899.P10823638519009848898

`A051903(A209061(n+1))`
-/

namespace A391899.P10823638519009848898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A209061 (n + 1)).toNat

end

end A391899.P10823638519009848898

noncomputable section

/-- A391899: The maximum exponent in the prime factorization of the exponentially squarefree numbers (A209061).

Offset 1, canonical program `A391899.P10823638519009848898`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A209061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391899 (n : ℕ) : ℤ :=
  A391899.P10823638519009848898.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A209061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391899.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391988.P2363059144124611115

`A049419(A209061(n+1))`
-/

namespace A391988.P2363059144124611115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A209061 (n + 1)).toNat

end

end A391988.P2363059144124611115

noncomputable section

/-- A391988: The number of exponential divisors of the exponentially squarefree numbers.

Offset 1, canonical program `A391988.P2363059144124611115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A209061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391988 (n : ℕ) : ℤ :=
  A391988.P2363059144124611115.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A209061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393212.P8608727344683158324

`or(A005843(A007814(3*n+5)), A073575(3*n+5))`
-/

namespace A393212.P8608727344683158324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005843 (A007814 (3 * n + 5)).toNat) (A073575 (3 * n + 5))

end

end A393212.P8608727344683158324

noncomputable section

/-- A393212: Halting time for Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

Offset 1, canonical program `A393212.P8608727344683158324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A393212 (n : ℕ) : ℤ :=
  A393212.P8608727344683158324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A393212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393697.P7831953345102612304

`A393562(n)-A172471(n)`
-/

namespace A393697.P7831953345102612304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393562 n - A172471 n

end

end A393697.P7831953345102612304

noncomputable section

/-- A393697: a(n) is the number of unit squares in the square lattice, divided by 4, that have 1 vertex strictly inside and 3 vertices strictly outside the circle x^2 + y^2 = n.

Offset 0, canonical program `A393697.P7831953345102612304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393697 (n : ℕ) : ℤ :=
  A393697.P7831953345102612304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395959.P2730340011751273461

`2*n+A395958(2*n)`
-/

namespace A395959.P2730340011751273461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A395958 (2 * n)

end

end A395959.P2730340011751273461

noncomputable section

/-- A395959: Numbers k such that A395958(k) = 0.

Offset 1, canonical program `A395959.P2730340011751273461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395959 (n : ℕ) : ℤ :=
  A395959.P2730340011751273461.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395960.P5958715908451391238

`2*n+1-A395958(2*n)`
-/

namespace A395960.P5958715908451391238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A395958 (2 * n)

end

end A395960.P5958715908451391238

noncomputable section

/-- A395960: Numbers k such that A395958(k) = 1.

Offset 1, canonical program `A395960.P5958715908451391238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395960 (n : ℕ) : ℤ :=
  A395960.P5958715908451391238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397623.P16201342378175094011

`A000040(A005652(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397623.P16201342378175094011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A005652 (n + 1)).toNat

end

end A397623.P16201342378175094011

noncomputable section

/-- A397623: a(n) = prime(A005652(n)).

Offset 1, canonical program `A397623.P16201342378175094011`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397623 (n : ℕ) : ℤ :=
  A397623.P16201342378175094011.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398164.P2146957604628113734

`∩[A209061(n+1)-1, A209061(n+1)]`
-/

namespace A398164.P2146957604628113734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398164.P2146957604628113734

noncomputable section

/-- A398164: Numbers k such that both k and k+1 are both exponentially squarefree numbers.

Offset 1, canonical program `A398164.P2146957604628113734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A398164 (n : ℕ) : ℤ :=
  (A398164.P2146957604628113734.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A398164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399924.P7475448484565824650

`filter[A353511(n+1), A035263(#)]`
-/

namespace A399924.P7475448484565824650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A399924.P7475448484565824650

noncomputable section

/-- A399924: Numbers k such that A007429(k) is odd.

Offset 1, canonical program `A399924.P7475448484565824650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A399924 (n : ℕ) : ℤ :=
  A399924.P7475448484565824650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A399924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400144.P1155357798941404441

`A035316(n+1)*A367991(n+1)`
-/

namespace A400144.P1155357798941404441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) * A367991 (n + 1)

end

end A400144.P1155357798941404441

noncomputable section

/-- A400144: The sum of divisors d of n such that gcid(d, n/d) is a square, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400144.P1155357798941404441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400144 (n : ℕ) : ℤ :=
  A400144.P1155357798941404441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400258.P3398933769381967192

`A267263(A003415(n))`
-/

namespace A400258.P3398933769381967192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A003415 n).toNat

end

end A400258.P3398933769381967192

noncomputable section

/-- A400258: Number of nonzero digits in primorial base representation of n' [where n' stands for the arithmetic derivative of n, A003415].

Offset 0, canonical program `A400258.P3398933769381967192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400258 (n : ℕ) : ℤ :=
  A400258.P3398933769381967192.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A267263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400521.P1868779038590815743

`A007814(A209061(n+1))`
-/

namespace A400521.P1868779038590815743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A209061 (n + 1)).toNat

end

end A400521.P1868779038590815743

noncomputable section

/-- A400521: The exponent of the highest power of 2 dividing the n-th exponentially squarefree number (A209061).

Offset 1, canonical program `A400521.P1868779038590815743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400521 (n : ℕ) : ℤ :=
  A400521.P1868779038590815743.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401437.P81839502749205339

`∑[A401409(n)]`
-/

namespace A401437.P81839502749205339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401437.P81839502749205339

noncomputable section

/-- A401437: Partial sums of A401409.

Offset 0, canonical program `A401437.P81839502749205339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401437 (n : ℕ) : ℤ :=
  A401437.P81839502749205339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306300.P13125878749927857730

`A007913(A003658(n+1))`
-/

namespace A306300.P13125878749927857730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003658 (n + 1)).toNat

end

end A306300.P13125878749927857730

noncomputable section

/-- A306300: Discriminant D of real quadratic number field Q(sqrt(D)) associated with fundamental discriminant d = A003658(n).

Offset 1, canonical program `A306300.P13125878749927857730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306300 (n : ℕ) : ℤ :=
  A306300.P13125878749927857730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A310455.P786279696323869961

`(A310496(n)+A310413(n))/2`
-/

namespace A310455.P786279696323869961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310496 n + A310413 n : ℚ) / 2

end

end A310455.P786279696323869961

noncomputable section

/-- A310455: Coordination sequence Gal.6.348.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310455.P786279696323869961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A310455 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A310455.P786279696323869961.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A310455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310531.P139863264852785367

`A313293(n)+A004396(A002264(n+1))`
-/

namespace A310531.P139863264852785367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313293 n + A004396 (A002264 (n + 1)).toNat

end

end A310531.P139863264852785367

noncomputable section

/-- A310531: Coordination sequence Gal.5.135.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310531.P139863264852785367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A310531 (n : ℕ) : ℤ :=
  A310531.P139863264852785367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A310531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311334.P17172168312493708932

`2*A312125(n)-A312669(n)`
-/

namespace A311334.P17172168312493708932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312125 n - A312669 n

end

end A311334.P17172168312493708932

noncomputable section

/-- A311334: Coordination sequence Gal.5.105.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311334.P17172168312493708932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A311334 (n : ℕ) : ℤ :=
  A311334.P17172168312493708932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A311334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311576.P2952944293918818847

`2*A313089(n)-A310493(n)`
-/

namespace A311576.P2952944293918818847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313089 n - A310493 n

end

end A311576.P2952944293918818847

noncomputable section

/-- A311576: Coordination sequence Gal.5.76.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311576.P2952944293918818847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A311576 (n : ℕ) : ℤ :=
  A311576.P2952944293918818847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A311576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311798.P17873321092687646606

`A313026(n)+A313682(n)-A314088(n)`
-/

namespace A311798.P17873321092687646606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + (A313682 n - A314088 n)

end

end A311798.P17873321092687646606

noncomputable section

/-- A311798: Coordination sequence Gal.5.52.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311798.P17873321092687646606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A311798 (n : ℕ) : ℤ :=
  A311798.P17873321092687646606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A311798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311861.P8116900546318081513

`A047588(n+1)+A311687(n)-n`
-/

namespace A311861.P8116900546318081513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1) + (A311687 n - (n : ℤ))

end

end A311861.P8116900546318081513

noncomputable section

/-- A311861: Coordination sequence Gal.6.130.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311861.P8116900546318081513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311861 (n : ℕ) : ℤ :=
  A311861.P8116900546318081513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313543.P17775607979476667023

`A004396(A314038(n)+2*n)`
-/

namespace A313543.P17775607979476667023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314038 n + (2 * n : ℤ)).toNat

end

end A313543.P17775607979476667023

noncomputable section

/-- A313543: Coordination sequence Gal.6.196.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313543.P17775607979476667023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313543 (n : ℕ) : ℤ :=
  A313543.P17775607979476667023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. -/
def A313543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313639.P9445063185818086660

`abs(A008592(n)-A313825(n))`
-/

namespace A313639.P9445063185818086660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313825 n|

end

end A313639.P9445063185818086660

noncomputable section

/-- A313639: Coordination sequence Gal.6.204.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313639.P9445063185818086660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313639 (n : ℕ) : ℤ :=
  A313639.P9445063185818086660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313803.P13524405696789602585

`A314737(n)+n-A004396(A004525(n))`
-/

namespace A313803.P13524405696789602585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A313803.P13524405696789602585

noncomputable section

/-- A313803: Coordination sequence Gal.6.210.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313803.P13524405696789602585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313803 (n : ℕ) : ℤ :=
  A313803.P13524405696789602585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A313803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313842.P14836794253891960675

`abs(A008592(n)-A313610(n))`
-/

namespace A313842.P14836794253891960675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313610 n|

end

end A313842.P14836794253891960675

noncomputable section

/-- A313842: Coordination sequence Gal.5.289.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313842.P14836794253891960675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A313842 (n : ℕ) : ℤ :=
  A313842.P14836794253891960675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A313842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314172.P6734173723682606366

`2*A301718(n)-A314263(n)`
-/

namespace A314172.P6734173723682606366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301718 n - A314263 n

end

end A314172.P6734173723682606366

noncomputable section

/-- A314172: Coordination sequence Gal.6.662.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314172.P6734173723682606366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A314172 (n : ℕ) : ℤ :=
  A314172.P6734173723682606366.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A314172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314428.P9611413599869563837

`A315214(n)-A004396(A006369(n))`
-/

namespace A314428.P9611413599869563837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315214 n - A004396 (A006369 n).toNat

end

end A314428.P9611413599869563837

noncomputable section

/-- A314428: Coordination sequence Gal.6.58.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314428.P9611413599869563837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314428 (n : ℕ) : ℤ :=
  A314428.P9611413599869563837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A314428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314742.P12640656443291314387

`A311332(n)+A004525(n)`
-/

namespace A314742.P12640656443291314387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311332 n + A004525 n

end

end A314742.P12640656443291314387

noncomputable section

/-- A314742: Coordination sequence Gal.6.262.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314742.P12640656443291314387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A314742 (n : ℕ) : ℤ :=
  A314742.P12640656443291314387.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A314742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315186.P13057520070277243894

`2*A314684(n)-A008574(n)`
-/

namespace A315186.P13057520070277243894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314684 n - A008574 n

end

end A315186.P13057520070277243894

noncomputable section

/-- A315186: Coordination sequence Gal.6.263.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315186.P13057520070277243894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A315186 (n : ℕ) : ℤ :=
  A315186.P13057520070277243894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A315186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315321.P17466874395387374429

`abs(A008592(n)-A310396(n))`
-/

namespace A315321.P17466874395387374429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310396 n|

end

end A315321.P17466874395387374429

noncomputable section

/-- A315321: Coordination sequence Gal.6.635.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315321.P17466874395387374429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315321 (n : ℕ) : ℤ :=
  A315321.P17466874395387374429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315695.P671725202491789356

`2*A313722(n)-A311889(n)`
-/

namespace A315695.P671725202491789356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313722 n - A311889 n

end

end A315695.P671725202491789356

noncomputable section

/-- A315695: Coordination sequence Gal.6.620.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315695.P671725202491789356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A315695 (n : ℕ) : ℤ :=
  A315695.P671725202491789356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A315695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315702.P17954955877429710355

`abs(A008592(n)-A311889(n))`
-/

namespace A315702.P17954955877429710355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311889 n|

end

end A315702.P17954955877429710355

noncomputable section

/-- A315702: Coordination sequence Gal.6.641.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315702.P17954955877429710355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2230 terms. -/
def A315702 (n : ℕ) : ℤ :=
  A315702.P17954955877429710355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2230 terms. -/
def A315702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315758.P11537770092758335120

`abs(A008592(n)-A311332(n))`
-/

namespace A315758.P11537770092758335120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311332 n|

end

end A315758.P11537770092758335120

noncomputable section

/-- A315758: Coordination sequence Gal.6.210.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315758.P11537770092758335120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A315758 (n : ℕ) : ℤ :=
  A315758.P11537770092758335120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A315758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317991.P6443215802569184834

`A001221(A003658(n+2))-1`
-/

namespace A317991.P6443215802569184834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003658 (n + 2)).toNat - 1

end

end A317991.P6443215802569184834

noncomputable section

/-- A317991: 2-rank of the narrow class group of the real quadratic field with discriminant A003658(n), n >= 2.

Offset 2, canonical program `A317991.P6443215802569184834`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317991 (n : ℕ) : ℤ :=
  A317991.P6443215802569184834.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322430.P13676474653024602128

`eq[0, A005882(n)]`
-/

namespace A322430.P13676474653024602128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P13676474653024602128

noncomputable section

/-- A322430: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^8 is zero.

Offset 1, canonical program `A322430.P13676474653024602128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5866 terms. -/
def A322430 (n : ℕ) : ℤ :=
  (A322430.P13676474653024602128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5866 terms. -/
def A322430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322812.P11194875774676953615

`A001221(A048675(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322812.P11194875774676953615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048675 (n + 2)).toNat

end

end A322812.P11194875774676953615

noncomputable section

/-- A322812: a(n) = A001221(A048675(n)).

Offset 2, canonical program `A322812.P11194875774676953615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322812 (n : ℕ) : ℤ :=
  A322812.P11194875774676953615.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322821.P8922676155250871452

`A048675(n+1)/gcd(A000079(n), A048675(n+1))`
-/

namespace A322821.P8922676155250871452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048675 (n + 1) : ℚ) / (Int.gcd (A000079 n) (A048675 (n + 1)) : ℚ)

end

end A322821.P8922676155250871452

noncomputable section

/-- A322821: a(1) = 0; for n > 1, a(n) = A000265(A048675(n)).

Offset 1, canonical program `A322821.P8922676155250871452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A322821 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322821.P8922676155250871452.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A322821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322869.P13858766443451224919

`A000120(A048675(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322869.P13858766443451224919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048675 (n + 1)).toNat

end

end A322869.P13858766443451224919

noncomputable section

/-- A322869: a(n) = A000120(A048675(n)).

Offset 1, canonical program `A322869.P13858766443451224919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322869 (n : ℕ) : ℤ :=
  A322869.P13858766443451224919.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322869.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323511.P13166536761734004681

`A008966(n+1)*A079559(A048675(n+1))`
-/

namespace A323511.P13166536761734004681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A079559 (A048675 (n + 1)).toNat

end

end A323511.P13166536761734004681

noncomputable section

/-- A323511: a(n) = 1 if n is squarefree and A079559(A048675(n)) = 1, otherwise a(n) = 0.

Offset 1, canonical program `A323511.P13166536761734004681`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323511 (n : ℕ) : ℤ :=
  A323511.P13166536761734004681.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324286.P15965892089874497265

`A002487(A048675(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324286.P15965892089874497265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A048675 (n + 1)).toNat

end

end A324286.P15965892089874497265

noncomputable section

/-- A324286: a(n) = A002487(A048675(n)).

Offset 1, canonical program `A324286.P15965892089874497265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324286 (n : ℕ) : ℤ :=
  A324286.P15965892089874497265.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329586.P2238239881953716898

`(A057427(n)+1)*A086669(n+1)`
-/

namespace A329586.P2238239881953716898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A086669 (n + 1)

end

end A329586.P2238239881953716898

noncomputable section

/-- A329586: Row lengths of A329585: number of solutions of the congruences x^2 == +1 (mod n) or (inclusive) x^2 == -1 (mod n), for n >= 1.

Offset 1, canonical program `A329586.P2238239881953716898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329586 (n : ℕ) : ℤ :=
  A329586.P2238239881953716898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329760.P7902454852561261286

`∩[A038604(n+1), A038615(n+1)]`
-/

namespace A329760.P7902454852561261286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329760.P7902454852561261286

noncomputable section

/-- A329760: Primes without {2, 7} as digits.

Offset 1, canonical program `A329760.P7902454852561261286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9910 terms. -/
def A329760 (n : ℕ) : ℤ :=
  (A329760.P7902454852561261286.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9910 terms. -/
def A329760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331740.P9260061976321167483

`A048675(A375240(n+1))`
-/

namespace A331740.P9260061976321167483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A375240 (n + 1)).toNat

end

end A331740.P9260061976321167483

noncomputable section

/-- A331740: Number of prime factors in A225546(n), counted with multiplicity.

Offset 1, canonical program `A331740.P9260061976321167483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A331740 (n : ℕ) : ℤ :=
  A331740.P9260061976321167483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A331740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331750.P157088168861994408

`A048675(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331750.P157088168861994408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A000203 (n + 1)).toNat

end

end A331750.P157088168861994408

noncomputable section

/-- A331750: a(n) = A048675(sigma(n)).

Offset 1, canonical program `A331750.P157088168861994408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331750 (n : ℕ) : ℤ :=
  A331750.P157088168861994408.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332813.P10985166550549235178

`A048675(n+1)%3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332813.P10985166550549235178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048675 (n + 1)) 3

end

end A332813.P10985166550549235178

noncomputable section

/-- A332813: a(n) = A048675(n) mod 3.

Offset 1, canonical program `A332813.P10985166550549235178`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332813 (n : ℕ) : ℤ :=
  A332813.P10985166550549235178.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332823.P6707942267644391447

`A102283(A048675(n+1))`
-/

namespace A332823.P6707942267644391447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A048675 (n + 1)).toNat

end

end A332823.P6707942267644391447

noncomputable section

/-- A332823: A 3-way classification indicator generated by the products of two consecutive primes and the cubes of primes. a(n) is -1, 0, or 1 such that a(n) == A048675(n) (mod 3).

Offset 1, canonical program `A332823.P6707942267644391447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332823 (n : ℕ) : ℤ :=
  A332823.P6707942267644391447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332823.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333910.P3160973853015198064

`lt[A070176(A001615(n+1)), 1]+1`
-/

namespace A333910.P3160973853015198064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A001615 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333910.P3160973853015198064

noncomputable section

/-- A333910: Numbers k such that psi(k) is the sum of 2 squares, where psi is the Dedekind psi function (A001615).

Offset 1, canonical program `A333910.P3160973853015198064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 962 terms. -/
def A333910 (n : ℕ) : ℤ :=
  (A333910.P3160973853015198064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 962 terms. -/
def A333910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334109.P1143459477839108207

`A048675(A019554((n+1)/A019554(n+1)))`
-/

namespace A334109.P1143459477839108207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A019554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat).toNat

end

end A334109.P1143459477839108207

noncomputable section

/-- A334109: a(n) = A329697(A225546(n)).

Offset 1, canonical program `A334109.P1143459477839108207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334109 (n : ℕ) : ℤ :=
  A334109.P1143459477839108207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335397.P14891039673154172877

`∩[A335328(n+1)-1, A335328(n+1)]`
-/

namespace A335397.P14891039673154172877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335328 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335397.P14891039673154172877

noncomputable section

/-- A335397: Starts of runs of 3 consecutive numbers that have an equal number of unitary and nonunitary divisors (A048109).

Offset 1, canonical program `A335397.P14891039673154172877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A335397 (n : ℕ) : ℤ :=
  (A335397.P14891039673154172877.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A335397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336415.P15157755128090898253

`A048675(n)+a(n-1)` with `a(0)=1`
-/

namespace A336415.P15157755128090898253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048675 n + a (n - 1)

end

end A336415.P15157755128090898253

noncomputable section

/-- A336415: Number of divisors of n! with equal prime multiplicities.

Offset 0, canonical program `A336415.P15157755128090898253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A336415 (n : ℕ) : ℤ :=
  A336415.P15157755128090898253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A336415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340855.P12146415182299526798

`comp[A340854(n+1)-1]+1`
-/

namespace A340855.P12146415182299526798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A340855.P12146415182299526798

noncomputable section

/-- A340855: Numbers that can be factored into factors > 1, the least of which is odd.

Offset 1, canonical program `A340855.P12146415182299526798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340855 (n : ℕ) : ℤ :=
  (A340855.P12146415182299526798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348193.P14696204599237552078

`A348195(n+1)-A348196(n+1)`
-/

namespace A348193.P14696204599237552078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348195 (n + 1) - A348196 (n + 1)

end

end A348193.P14696204599237552078

noncomputable section

/-- A348193: (Number of primes == 3 mod 4 less than n^2) - (number of primes == 1 mod 4 less than n^2).

Offset 1, canonical program `A348193.P14696204599237552078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348195, A348196, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348193 (n : ℕ) : ℤ :=
  A348193.P14696204599237552078.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348195, A348196, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348193.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349015.P2508565767968700062

`∑[A007477(abs(1-n))*A033999(n)]`
-/

namespace A349015.P2508565767968700062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007477 |1 - (n : ℤ)|.toNat * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349015.P2508565767968700062

noncomputable section

/-- A349015: G.f. A(x) satisfies: A(x) = 1 + x * A(x) / (1 - x) - x * A(x)^2.

Offset 0, canonical program `A349015.P2508565767968700062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A349015 (n : ℕ) : ℤ :=
  A349015.P2508565767968700062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A349015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349740.P5150068755569788510

`A090181(n)+T(n,k-1)` with `a(0)=1`
-/

namespace A349740.P5150068755569788510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090181 n + SequenceMachineLib.triLeft a n

end

end A349740.P5150068755569788510

noncomputable section

/-- A349740: Number of partitions of set [n] in a set of <= k noncrossing subsets. Number of Dyck n-paths with at most k peaks. Both with 0 <= k <= n, read by rows.

Offset 0, canonical program `A349740.P5150068755569788510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349740 (n : ℕ) : ℤ :=
  A349740.P5150068755569788510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353202.P16479654457777802616

`lt[A070176(n), 2]+1`
-/

namespace A353202.P16479654457777802616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353202.P16479654457777802616

noncomputable section

/-- A353202: Positive integers which can be expressed as the sum of three or fewer squares, no more than two of which are greater than 1.

Offset 1, canonical program `A353202.P16479654457777802616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4828 terms. -/
def A353202 (n : ℕ) : ℤ :=
  (A353202.P16479654457777802616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4828 terms. -/
def A353202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353350.P17688933372676458567

`A079978(A048675(n+1))`
-/

namespace A353350.P17688933372676458567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A048675 (n + 1)).toNat

end

end A353350.P17688933372676458567

noncomputable section

/-- A353350: a(n) = 1 if A048675(n) is a multiple of 3, otherwise 0.

Offset 1, canonical program `A353350.P17688933372676458567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353350 (n : ℕ) : ℤ :=
  A353350.P17688933372676458567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353350.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353360.P3063535457221817968

`A006047(A048675(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353360.P3063535457221817968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A048675 (n + 1)).toNat

end

end A353360.P3063535457221817968

noncomputable section

/-- A353360: a(n) = A006047(A048675(n)).

Offset 1, canonical program `A353360.P3063535457221817968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353360 (n : ℕ) : ℤ :=
  A353360.P3063535457221817968.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359832.P2867967108972259624

`A000035(n+1+A048675(n+1))`
-/

namespace A359832.P2867967108972259624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n + 1 : ℤ) + A048675 (n + 1)).toNat

end

end A359832.P2867967108972259624

noncomputable section

/-- A359832: a(n) = 1 if the 2-adic valuation of n is either 0 or odd, otherwise 0.

Offset 1, canonical program `A359832.P2867967108972259624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359832 (n : ℕ) : ℤ :=
  A359832.P2867967108972259624.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360280.P7719168232723027333

`A008846(n+1)²`
-/

namespace A360280.P7719168232723027333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1) ^ 2

end

end A360280.P7719168232723027333

noncomputable section

/-- A360280: Squares that are the hypotenuse of a primitive Pythagorean triangle.

Offset 1, canonical program `A360280.P7719168232723027333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360280 (n : ℕ) : ℤ :=
  A360280.P7719168232723027333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360758.P7102341119995455638

`eq[2, A096501(A003415(n)+1)]`
-/

namespace A360758.P7102341119995455638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360758.P7102341119995455638

noncomputable section

/-- A360758: Numbers k for which k' - 1 and k' + 1 are twin primes, where the prime denotes the arithmetic derivative.

Offset 1, canonical program `A360758.P7102341119995455638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360758 (n : ℕ) : ℤ :=
  (A360758.P7102341119995455638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362148.P4847235968772766025

`∩[A046099(n+1), A362147(n+1)]`
-/

namespace A362148.P4847235968772766025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362148.P4847235968772766025

noncomputable section

/-- A362148: Numbers that are neither cubefree nor cubefull.

Offset 1, canonical program `A362148.P4847235968772766025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1639 terms. -/
def A362148 (n : ℕ) : ℤ :=
  (A362148.P4847235968772766025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1639 terms. -/
def A362148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362789.P4013718917275567408

`A011973(n)*A344392(n)`
-/

namespace A362789.P4013718917275567408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n * A344392 n

end

end A362789.P4013718917275567408

noncomputable section

/-- A362789: Triangle read by rows. T(n, k) = FallingFactorial(n - k, k) * Stirling2(n - k, k), for n >= 0 and 0 <= k <= n//2, where '//' denotes integer division.

Offset 0, canonical program `A362789.P4013718917275567408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A362789 (n : ℕ) : ℤ :=
  A362789.P4013718917275567408.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A362789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366960.P14113807688568308762

`eq[3, A037904(n+1)]+1`
-/

namespace A366960.P14113807688568308762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366960.P14113807688568308762

noncomputable section

/-- A366960: Numbers whose difference between the largest and smallest digits is equal to 3.

Offset 1, canonical program `A366960.P14113807688568308762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A366960 (n : ℕ) : ℤ :=
  (A366960.P14113807688568308762.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A366960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366961.P17753619816558675089

`eq[4, A037904(n+1)]+1`
-/

namespace A366961.P17753619816558675089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366961.P17753619816558675089

noncomputable section

/-- A366961: Numbers whose difference between the largest and smallest digits is equal to 4.

Offset 1, canonical program `A366961.P17753619816558675089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A366961 (n : ℕ) : ℤ :=
  (A366961.P17753619816558675089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A366961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366963.P13437376339825858114

`eq[6, A037904(n+1)]+1`
-/

namespace A366963.P13437376339825858114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366963.P13437376339825858114

noncomputable section

/-- A366963: Numbers whose difference between the largest and smallest digits is equal to 6.

Offset 1, canonical program `A366963.P13437376339825858114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1747 terms. -/
def A366963 (n : ℕ) : ℤ :=
  (A366963.P13437376339825858114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1747 terms. -/
def A366963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366965.P15368654095798603801

`eq[8, A037904(n+1)]+1`
-/

namespace A366965.P15368654095798603801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366965.P15368654095798603801

noncomputable section

/-- A366965: Numbers whose difference between the largest and smallest digits is equal to 8.

Offset 1, canonical program `A366965.P15368654095798603801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. -/
def A366965 (n : ℕ) : ℤ :=
  (A366965.P15368654095798603801.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. -/
def A366965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367254.P9567232435763842961

`abs(A137452(C(2*n+1, 2)+n))`
-/

namespace A367254.P9567232435763842961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137452 (Nat.choose (2 * n + 1) 2 + n)|

end

end A367254.P9567232435763842961

noncomputable section

/-- A367254: a(n) = binomial(2*n - 1, n - 1)*(2*n)^n.

Offset 0, canonical program `A367254.P9567232435763842961`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367254 (n : ℕ) : ℤ :=
  A367254.P9567232435763842961.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367254.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370410.P7118795628727837074

`A007055(n+1)-A056458(n+1)`
-/

namespace A370410.P7118795628727837074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007055 (n + 1) - A056458 (n + 1)

end

end A370410.P7118795628727837074

noncomputable section

/-- A370410: Number of length-n binary strings that are the concatenation of two nonempty palindromes.

Offset 1, canonical program `A370410.P7118795628727837074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007055, A056458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370410 (n : ℕ) : ℤ :=
  A370410.P7118795628727837074.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007055, A056458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372059.P3781003696721754099

`filter[A117285(n+1), A355937(#)]`
-/

namespace A372059.P3781003696721754099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A372059.P3781003696721754099

noncomputable section

/-- A372059: Indices of record high-points in A280741.

Offset 1, canonical program `A372059.P3781003696721754099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A372059 (n : ℕ) : ℤ :=
  A372059.P3781003696721754099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A372059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378767.P14747477378798876079

`filter[A046099(n+1), A355447(#)]`
-/

namespace A378767.P14747477378798876079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A378767.P14747477378798876079

noncomputable section

/-- A378767: Numbers k that are not prime powers which are divisible by a cube greater than 1.

Offset 1, canonical program `A378767.P14747477378798876079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9962 terms. -/
def A378767 (n : ℕ) : ℤ :=
  A378767.P14747477378798876079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9962 terms. -/
def A378767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382420.P7625293795778711111

`A056170(A046099(n+1))`
-/

namespace A382420.P7625293795778711111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A046099 (n + 1)).toNat

end

end A382420.P7625293795778711111

noncomputable section

/-- A382420: The number of non-unitary prime divisors of the noncubefree numbers.

Offset 1, canonical program `A382420.P7625293795778711111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382420 (n : ℕ) : ℤ :=
  A382420.P7625293795778711111.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382421.P17694037240617820596

`A005361(A046099(n+1))`
-/

namespace A382421.P17694037240617820596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A046099 (n + 1)).toNat

end

end A382421.P17694037240617820596

noncomputable section

/-- A382421: The product of exponents in the prime factorization of the noncubefree numbers.

Offset 1, canonical program `A382421.P17694037240617820596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382421 (n : ℕ) : ℤ :=
  A382421.P17694037240617820596.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382969.P16762746786205773467

`A046660(A046099(n+1))`
-/

namespace A382969.P16762746786205773467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A046099 (n + 1)).toNat

end

end A382969.P16762746786205773467

noncomputable section

/-- A382969: The excess of the n-th noncubefree number.

Offset 1, canonical program `A382969.P16762746786205773467`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382969 (n : ℕ) : ℤ :=
  A382969.P16762746786205773467.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382987.P16727742091010566575

`A026269(n+2)-A005554(n+1)`
-/

namespace A382987.P16727742091010566575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026269 (n + 2) - A005554 (n + 1)

end

end A382987.P16727742091010566575

noncomputable section

/-- A382987: a(n) is the total sum of the last symbol in all Catalan words of length n avoiding the pattern (>=,>=).

Offset 0, canonical program `A382987.P16727742091010566575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A382987 (n : ℕ) : ℤ :=
  A382987.P16727742091010566575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A382987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386020.P5151810573370523150

`∩[A160337(n+1), A380906(n+1)]`
-/

namespace A386020.P5151810573370523150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386020.P5151810573370523150

noncomputable section

/-- A386020: Primes having only {0, 1, 2, 7} as digits.

Offset 1, canonical program `A386020.P5151810573370523150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A386020 (n : ℕ) : ℤ :=
  (A386020.P5151810573370523150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A386020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386025.P16199978454777636192

`∩[A160337(n+1), A361822(n+1)]`
-/

namespace A386025.P16199978454777636192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386025.P16199978454777636192

noncomputable section

/-- A386025: Primes having only {0, 1, 3, 7} as digits.

Offset 1, canonical program `A386025.P16199978454777636192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A386025 (n : ℕ) : ℤ :=
  (A386025.P16199978454777636192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A386025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386111.P9785451128808228405

`∩[A030096(n+1), A190222(n+1)]`
-/

namespace A386111.P9785451128808228405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386111.P9785451128808228405

noncomputable section

/-- A386111: Primes having only {1, 3, 5, 7} as digits.

Offset 1, canonical program `A386111.P9785451128808228405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2029 terms. -/
def A386111 (n : ℕ) : ℤ :=
  (A386111.P9785451128808228405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2029 terms. -/
def A386111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386342.P11450868314914418014

`∩[A038611(n+1), A038615(n+1)]`
-/

namespace A386342.P11450868314914418014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386342.P11450868314914418014

noncomputable section

/-- A386342: Primes without {3, 7} as digits.

Offset 1, canonical program `A386342.P11450868314914418014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6633 terms. -/
def A386342 (n : ℕ) : ℤ :=
  (A386342.P11450868314914418014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6633 terms. -/
def A386342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386351.P7318400634088148714

`∩[A038613(n+1), A038615(n+1)]`
-/

namespace A386351.P7318400634088148714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386351.P7318400634088148714

noncomputable section

/-- A386351: Primes without {5, 7} as digits.

Offset 1, canonical program `A386351.P7318400634088148714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4967 terms. -/
def A386351 (n : ℕ) : ℤ :=
  (A386351.P7318400634088148714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4967 terms. -/
def A386351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386354.P16560442262164628227

`∩[A038614(n+1), A038615(n+1)]`
-/

namespace A386354.P16560442262164628227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386354.P16560442262164628227

noncomputable section

/-- A386354: Primes without {6, 7} as digits.

Offset 1, canonical program `A386354.P16560442262164628227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4953 terms. -/
def A386354 (n : ℕ) : ℤ :=
  (A386354.P16560442262164628227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4953 terms. -/
def A386354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386357.P4558547617115754189

`∩[A038615(n+1), A038616(n+1)]`
-/

namespace A386357.P4558547617115754189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386357.P4558547617115754189

noncomputable section

/-- A386357: Primes without {7, 8} as digits.

Offset 1, canonical program `A386357.P4558547617115754189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386357 (n : ℕ) : ℤ :=
  (A386357.P4558547617115754189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386965.P13767053820222605654

`(n+1)!*A324361(n+1)`
-/

namespace A386965.P13767053820222605654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A324361 (n + 1)

end

end A386965.P13767053820222605654

noncomputable section

/-- A386965: Number of permutations p of [2*n] such that there is at least one index i in [2*n-1] with p(i+1) = n + p(i).

Offset 1, canonical program `A386965.P13767053820222605654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386965 (n : ℕ) : ℤ :=
  A386965.P13767053820222605654.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399705.P7439880869776146323

`((A008846(n+1)-1)/4)%2`
-/

namespace A399705.P7439880869776146323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A008846 (n + 1) - 1 : ℚ) / 4)) 2

end

end A399705.P7439880869776146323

noncomputable section

/-- A399705: a(n) is 1 if A008846(n) is congruent to 5 modulo 8, and 0 if A008846(n) is congruent to 1 modulo 8.

Offset 1, canonical program `A399705.P7439880869776146323`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399705 (n : ℕ) : ℤ :=
  A399705.P7439880869776146323.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399705.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A310404.P2932539923178756672

`A310378(n)+A004525(A310420(n)-A310378(n))`
-/

namespace A310404.P2932539923178756672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310378 n + A004525 (A310420 n - A310378 n).toNat

end

end A310404.P2932539923178756672

noncomputable section

/-- A310404: Coordination sequence Gal.6.338.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310404.P2932539923178756672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310404 (n : ℕ) : ℤ :=
  A310404.P2932539923178756672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313228.P2561284602986671939

`A313859(n)-A004525(A004396(n))`
-/

namespace A313228.P2561284602986671939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313859 n - A004525 (A004396 n).toNat

end

end A313228.P2561284602986671939

noncomputable section

/-- A313228: Coordination sequence Gal.6.155.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313228.P2561284602986671939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313228 (n : ℕ) : ℤ :=
  A313228.P2561284602986671939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313824.P16488686342278004829

`A004396(A004525(n))+A313859(n)-A004525(n)`
-/

namespace A313824.P16488686342278004829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313859 n - A004525 n)

end

end A313824.P16488686342278004829

noncomputable section

/-- A313824: Coordination sequence Gal.6.195.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313824.P16488686342278004829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313824 (n : ℕ) : ℤ :=
  A313824.P16488686342278004829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314032.P4483602225519338393

`abs(A008592(n)-(A315329(n)+A312507(n))/2)`
-/

namespace A314032.P4483602225519338393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A008592 n : ℚ) - (A315329 n + A312507 n : ℚ) / 2|

end

end A314032.P4483602225519338393

noncomputable section

/-- A314032: Coordination sequence Gal.6.324.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314032.P4483602225519338393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A314032 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A314032.P4483602225519338393.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A314032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381579.P9755719263119690810

`A007089(A381608(n))`
-/

namespace A381579.P9755719263119690810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A381608 n).toNat

end

end A381579.P9755719263119690810

noncomputable section

/-- A381579: The Chung-Graham representation of n: representation of n in base of even-indexed Fibonacci numbers.

Offset 0, canonical program `A381579.P9755719263119690810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381579 (n : ℕ) : ℤ :=
  A381579.P9755719263119690810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383371.P1134250893838150847

`p?[A028846(n+1)]`
-/

namespace A383371.P1134250893838150847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A383371.P1134250893838150847

noncomputable section

/-- A383371: Primes having only {1, 2, 4, 8} as digits.

Offset 1, canonical program `A383371.P1134250893838150847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A383371 (n : ℕ) : ℤ :=
  A383371.P1134250893838150847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A383371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386069.P385928273964232171

`∩[A072960(n+1), A386337(n+1)]`
-/

namespace A386069.P385928273964232171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P385928273964232171

noncomputable section

/-- A386069: Primes having only {0, 3, 8, 9} as digits.

Offset 1, canonical program `A386069.P385928273964232171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A386069 (n : ℕ) : ℤ :=
  (A386069.P385928273964232171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A386069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311153.P6232300738477938526

`A310533(n)+A008574(n)-A310530(n)`
-/

namespace A311153.P6232300738477938526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310533 n + A008574 n - A310530 n

end

end A311153.P6232300738477938526

noncomputable section

/-- A311153: Coordination sequence Gal.5.121.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311153.P6232300738477938526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. -/
def A311153 (n : ℕ) : ℤ :=
  A311153.P6232300738477938526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. -/
def A311153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313259.P1861422749685330600

`A004396(A310533(n)+2*n)`
-/

namespace A313259.P1861422749685330600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310533 n + (2 * n : ℤ)).toNat

end

end A313259.P1861422749685330600

noncomputable section

/-- A313259: Coordination sequence Gal.6.204.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313259.P1861422749685330600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A313259 (n : ℕ) : ℤ :=
  A313259.P1861422749685330600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A313259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315473.P5440894521520911496

`A310533(n)+A000034(n)*A128834(n)`
-/

namespace A315473.P5440894521520911496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310533 n + A000034 n * A128834 n

end

end A315473.P5440894521520911496

noncomputable section

/-- A315473: Coordination sequence Gal.6.658.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315473.P5440894521520911496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315473 (n : ℕ) : ℤ :=
  A315473.P5440894521520911496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310465.P7677132150427515020

`A310380(n)+A001281(A310533(n)-A310380(n))`
-/

namespace A310465.P7677132150427515020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310380 n + A001281 (A310533 n - A310380 n).toNat

end

end A310465.P7677132150427515020

noncomputable section

/-- A310465: Coordination sequence Gal.6.342.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310465.P7677132150427515020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. -/
def A310465 (n : ℕ) : ℤ :=
  A310465.P7677132150427515020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. -/
def A310465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308993.P18444456858046890751

`A066990(A057521(n+1)*A071974(n+1))`
-/

namespace A308993.P18444456858046890751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A057521 (n + 1) * A071974 (n + 1)).toNat

end

end A308993.P18444456858046890751

noncomputable section

/-- A308993: Multiplicative with a(p) = 1 and a(p^e) = p^a(e) for any e > 1 and prime number p.

Offset 1, canonical program `A308993.P18444456858046890751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A308993 (n : ℕ) : ℤ :=
  A308993.P18444456858046890751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A308993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319293.P13782557292742531831

`eq[1, dr(A050985(n+1)²)]+1`
-/

namespace A319293.P13782557292742531831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A050985 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319293.P13782557292742531831

noncomputable section

/-- A319293: Numbers of the form 27^i*(9*j +- 1).

Offset 1, canonical program `A319293.P13782557292742531831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319293 (n : ℕ) : ℤ :=
  (A319293.P13782557292742531831.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A319293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324899.P2367865667595697050

`lt[1, A353493(2*n)]²`
-/

namespace A324899.P2367865667595697050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A324899.P2367865667595697050

noncomputable section

/-- A324899: Odd numbers k for which sigma(k) == 3 (mod 4).

Offset 1, canonical program `A324899.P2367865667595697050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8133 terms. -/
def A324899 (n : ℕ) : ℤ :=
  (A324899.P2367865667595697050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8133 terms. -/
def A324899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326297.P1023007589455328915

`abs(A325126(n+1))/A007947(n+1)`
-/

namespace A326297.P1023007589455328915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A325126 (n + 1)| : ℚ) / (A007947 (n + 1) : ℚ)

end

end A326297.P1023007589455328915

noncomputable section

/-- A326297: If n = Product (p_j^k_j) then a(n) = Product ((p_j - 1)^(k_j - 1)).

Offset 1, canonical program `A326297.P1023007589455328915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326297 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A326297.P1023007589455328915.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326297.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331080.P324264719985017404

`∑[A007425(n+1)*A007425(n+2)]`
-/

namespace A331080.P324264719985017404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) * A007425 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331080.P324264719985017404

noncomputable section

/-- A331080: a(n) = Sum_{i=1..n} d_3(i)*d_3(i+1), where d_3(n) = A007425(n).

Offset 1, canonical program `A331080.P324264719985017404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331080 (n : ℕ) : ℤ :=
  A331080.P324264719985017404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331738.P12324963354578380825

`A071974(n+1)*a(A071974(n+1)-1)` with `a(0)=1`
-/

namespace A331738.P12324963354578380825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071974 (n + 1) * a (A071974 (n + 1) - 1).toNat

end

end A331738.P12324963354578380825

noncomputable section

/-- A331738: Multiplicative with a(p^e) = p^(e-A000265(e)), where A000265(x) gives the odd part of x.

Offset 1, canonical program `A331738.P12324963354578380825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331738 (n : ℕ) : ℤ :=
  A331738.P12324963354578380825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333244.P8270922417689406728

`A000040(A333243(n+1))`
-/

namespace A333244.P8270922417689406728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A333243 (n + 1)).toNat

end

end A333244.P8270922417689406728

noncomputable section

/-- A333244: Prime numbers with prime indices in A333243.

Offset 1, canonical program `A333244.P8270922417689406728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333243, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333244 (n : ℕ) : ℤ :=
  A333244.P8270922417689406728.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333243, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333244.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333777.P17376492726482821964

`A053644(n)+a(A030109(n))` with `a(0)=0`
-/

namespace A333777.P17376492726482821964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053644 n + a (A030109 n).toNat

end

end A333777.P17376492726482821964

noncomputable section

/-- A333777: Inverse permutation to A333776.

Offset 0, canonical program `A333777.P17376492726482821964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A333777 (n : ℕ) : ℤ :=
  A333777.P17376492726482821964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A333777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339451.P5257208981662838490

`∑[A079559(n)]-A182105(n+1)`
-/

namespace A339451.P5257208981662838490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182105 (n + 1)

end

end A339451.P5257208981662838490

noncomputable section

/-- A339451: Gray-code-like sequence in which, at each step, the least significant bit that has never been toggled from the previous value, is toggled.

Offset 0, canonical program `A339451.P5257208981662838490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339451 (n : ℕ) : ℤ :=
  A339451.P5257208981662838490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343303.P7519863497709517625

`A231089(n+1)+A033999(p?[A016777(n)])`
-/

namespace A343303.P7519863497709517625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1) + A033999 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343303.P7519863497709517625

noncomputable section

/-- A343303: Numbers in A231626 but not in A343302; first of 5 consecutive deficient numbers in arithmetic progression with common difference > 1.

Offset 1, canonical program `A343303.P7519863497709517625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A343303 (n : ℕ) : ℤ :=
  A343303.P7519863497709517625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A343303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349612.P13385529495902003326

`∑{d}[n+1, A342001(#)*A325126((n+1)/#)]`
-/

namespace A349612.P13385529495902003326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A342001 d * A325126 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349612.P13385529495902003326

noncomputable section

/-- A349612: Dirichlet convolution of A342001 [{arithmetic derivative of n}/A003557(n)] with A325126 [Dirichlet inverse of rad(n)].

Offset 1, canonical program `A349612.P13385529495902003326`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349612 (n : ℕ) : ℤ :=
  A349612.P13385529495902003326.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349618.P12586933095763914751

`∑{d}[n+1, A003415(#)*A325126((n+1)/#)]`
-/

namespace A349618.P12586933095763914751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A325126 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349618.P12586933095763914751

noncomputable section

/-- A349618: Dirichlet convolution of arithmetic derivative with A325126 [Dirichlet inverse of rad(n)].

Offset 1, canonical program `A349618.P12586933095763914751`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349618 (n : ℕ) : ℤ :=
  A349618.P12586933095763914751.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350388.P14803128031435634268

`A071974(n+1)²`
-/

namespace A350388.P14803128031435634268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1) ^ 2

end

end A350388.P14803128031435634268

noncomputable section

/-- A350388: a(n) is the largest unitary divisor of n that is a square.

Offset 1, canonical program `A350388.P14803128031435634268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350388 (n : ℕ) : ℤ :=
  A350388.P14803128031435634268.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353637.P5440180522401724762

`∏{d}[A353636(n+1), A001221(#)]`
-/

namespace A353637.P5440180522401724762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A353637.P5440180522401724762

noncomputable section

/-- A353637: a(n) = 1 if phi(sigma(n)) is equal to phi(n), otherwise 0.

Offset 1, canonical program `A353637.P5440180522401724762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353637 (n : ℕ) : ℤ :=
  A353637.P5440180522401724762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353681.P403205491971656766

`ceil(A353636(n+1)/A008000(n))`
-/

namespace A353681.P403205491971656766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A008000 n : ℚ)⌉

end

end A353681.P403205491971656766

noncomputable section

/-- A353681: a(n) = 1 if phi(sigma(n)) > phi(n), otherwise 0.

Offset 1, canonical program `A353681.P403205491971656766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353681 (n : ℕ) : ℤ :=
  A353681.P403205491971656766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354039.P14555955065410119290

`lt[0, A354036(n+1)]+1`
-/

namespace A354039.P14555955065410119290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354039.P14555955065410119290

noncomputable section

/-- A354039: Odd numbers k for which sigma(k^2) == 1 (mod 4).

Offset 1, canonical program `A354039.P14555955065410119290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354039 (n : ℕ) : ℤ :=
  (A354039.P14555955065410119290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358274.P17704842436153696573

`A262275(n+1)-A348677(n+1)`
-/

namespace A358274.P17704842436153696573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262275 (n + 1) - A348677 (n + 1)

end

end A358274.P17704842436153696573

noncomputable section

/-- A358274: a(n) is the prime before A262275(n).

Offset 1, canonical program `A358274.P17704842436153696573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, A348677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358274 (n : ℕ) : ℤ :=
  A358274.P17704842436153696573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, A348677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358771.P5761548446586358589

`C(A129283(n)+2-n, 3)%2`
-/

namespace A358771.P5761548446586358589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129283 n + (2 - (n : ℤ))).toNat 3 % 2

end

end A358771.P5761548446586358589

noncomputable section

/-- A358771: a(n) = 1 if the arithmetic derivative of n is of the form 4k+1, otherwise 0.

Offset 0, canonical program `A358771.P5761548446586358589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358771 (n : ℕ) : ℤ :=
  (A358771.P5761548446586358589.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359153.P11980574962426657024

`filter[A004767(n), A354036(#)]`
-/

namespace A359153.P11980574962426657024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A359153.P11980574962426657024

noncomputable section

/-- A359153: Numbers of the form 4u+3 with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359153.P11980574962426657024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. -/
def A359153 (n : ℕ) : ℤ :=
  A359153.P11980574962426657024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5112 terms. -/
def A359153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360539.P1925901688017653991

`A050985(A058035(n+1))`
-/

namespace A360539.P1925901688017653991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A058035 (n + 1)).toNat

end

end A360539.P1925901688017653991

noncomputable section

/-- A360539: a(n) is the cubefree part of n: the largest unitary divisor of n that is a cubefree number (A004709).

Offset 1, canonical program `A360539.P1925901688017653991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360539 (n : ℕ) : ℤ :=
  A360539.P1925901688017653991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364017.P4674726286493129954

`∑{d}[n+1, A007438(#)*A364011((n+1)/#)]`
-/

namespace A364017.P4674726286493129954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A364011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364017.P4674726286493129954

noncomputable section

/-- A364017: Expansion of Sum_{k>0} (-1)^(k-1) * x^(3*k-2) / (1 - x^(3*k-2))^3.

Offset 1, canonical program `A364017.P4674726286493129954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364017 (n : ℕ) : ℤ :=
  A364017.P4674726286493129954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364018.P745909422124864912

`∑{d}[n+1, A007438(#)*A364014((n+1)/#)]`
-/

namespace A364018.P745909422124864912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A364014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364018.P745909422124864912

noncomputable section

/-- A364018: Expansion of Sum_{k>0} (-1)^(k-1) * x^(3*k-1) / (1 - x^(3*k-1))^3.

Offset 1, canonical program `A364018.P745909422124864912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364018 (n : ℕ) : ℤ :=
  A364018.P745909422124864912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364084.P12661241187166773764

`A363904(4*n+1)`
-/

namespace A364084.P12661241187166773764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363904 (4 * n + 1)

end

end A364084.P12661241187166773764

noncomputable section

/-- A364084: Expansion of Sum_{k>0} k * x^(3*k) / (1 - x^(4*k-1)).

Offset 1, canonical program `A364084.P12661241187166773764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364084 (n : ℕ) : ℤ :=
  A364084.P12661241187166773764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364085.P4521992801007173167

`A363904(4*(n+1)-1)`
-/

namespace A364085.P4521992801007173167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363904 (4 * (n + 1) - 1)

end

end A364085.P4521992801007173167

noncomputable section

/-- A364085: Expansion of Sum_{k>0} k * x^k / (1 - x^(4*k-1)).

Offset 1, canonical program `A364085.P4521992801007173167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364085 (n : ℕ) : ℤ :=
  A364085.P4521992801007173167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365857.P2641707062679739397

`A032189(2*(1+n))`
-/

namespace A365857.P2641707062679739397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032189 (2 * (1 + n))

end

end A365857.P2641707062679739397

noncomputable section

/-- A365857: Number of cyclic compositions of 2*n into odd parts.

Offset 1, canonical program `A365857.P2641707062679739397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A365857 (n : ℕ) : ℤ :=
  A365857.P2641707062679739397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A365857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367076.P8374161418526432458

`abs(∑[A365968(n)])`
-/

namespace A367076.P8374161418526432458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A367076.P8374161418526432458

noncomputable section

/-- A367076: Irregular triangle read by rows: T(n,k) (0 <= n, 0 <= k < 2^n). T(n,k) = -Sum_{i=0..k} A365968(n,i).

Offset 0, canonical program `A367076.P8374161418526432458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A367076 (n : ℕ) : ℤ :=
  A367076.P8374161418526432458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A367076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367987.P14204999189059379175

`A000005(A071974(n+1))`
-/

namespace A367987.P14204999189059379175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A071974 (n + 1)).toNat

end

end A367987.P14204999189059379175

noncomputable section

/-- A367987: The number of square divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367987.P14204999189059379175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367987 (n : ℕ) : ℤ :=
  A367987.P14204999189059379175.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367988.P14682528638246534316

`A000203(A071974(n+1))`
-/

namespace A367988.P14682528638246534316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A071974 (n + 1)).toNat

end

end A367988.P14682528638246534316

noncomputable section

/-- A367988: The sum of the divisors of the square root of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367988.P14682528638246534316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367988 (n : ℕ) : ℤ :=
  A367988.P14682528638246534316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368171.P3649920215832031940

`(n+1)/A368170(n+1)`
-/

namespace A368171.P3649920215832031940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368170 (n + 1) : ℚ)

end

end A368171.P3649920215832031940

noncomputable section

/-- A368171: a(n) is the smallest divisor d of n such that n/d is a cubefull exponentially odd number (A335988).

Offset 1, canonical program `A368171.P3649920215832031940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368171 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368171.P3649920215832031940.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368172.P14008522485894596196

`A000005(A368170(n+1))`
-/

namespace A368172.P14008522485894596196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A368170 (n + 1)).toNat

end

end A368172.P14008522485894596196

noncomputable section

/-- A368172: The number of divisors of the largest cubefull exponentially odd divisor of n (A368170).

Offset 1, canonical program `A368172.P14008522485894596196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368172 (n : ℕ) : ℤ :=
  A368172.P14008522485894596196.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369668.P5612230000554155073

`2*A359151(n+1)`
-/

namespace A369668.P5612230000554155073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359151 (n + 1)

end

end A369668.P5612230000554155073

noncomputable section

/-- A369668: Numbers that have an even number of prime factors with multiplicity and whose arithmetic derivative is of the form 4k+3.

Offset 1, canonical program `A369668.P5612230000554155073`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369668 (n : ℕ) : ℤ :=
  A369668.P5612230000554155073.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370707.P9731332465882975184

`col(n)!*A370706(C(row(n)+1, 2)+col(n))`
-/

namespace A370707.P9731332465882975184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triCol n) : ℤ) * A370706 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A370707.P9731332465882975184

noncomputable section

/-- A370707: Triangle read by rows: T(n, k) = (-1)^k*Product_{j=0..k-1} (j - n)*(j + n), for 0 <= k <= n.

Offset 0, canonical program `A370707.P9731332465882975184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370707 (n : ℕ) : ℤ :=
  A370707.P9731332465882975184.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383764.P4000777454404002987

`A071974((n+1)*A365683(n+1))`
-/

namespace A383764.P4000777454404002987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 ((n + 1 : ℤ) * A365683 (n + 1)).toNat

end

end A383764.P4000777454404002987

noncomputable section

/-- A383764: The largest unitary divisor of n that is an exponentially squarefree number.

Offset 1, canonical program `A383764.P4000777454404002987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A383764 (n : ℕ) : ℤ :=
  A383764.P4000777454404002987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A383764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384868.P5511449840220434533

`A231204(A054429(n+1))-A231204(n+1)`
-/

namespace A384868.P5511449840220434533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A054429 (n + 1)).toNat - A231204 (n + 1)

end

end A384868.P5511449840220434533

noncomputable section

/-- A384868: a(n) = Sum_{i=1...|b|} i*(-1)^b_i where b is the lexicographically n-th binary string.

Offset 0, canonical program `A384868.P5511449840220434533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384868 (n : ℕ) : ℤ :=
  A384868.P5511449840220434533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385138.P14446959269686956335

`A064987(n+1)/A385137(n+1)`
-/

namespace A385138.P14446959269686956335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (A385137 (n + 1) : ℚ)

end

end A385138.P14446959269686956335

noncomputable section

/-- A385138: The sum of divisors d of n such that n/d is a 5-rough number (A007310).

Offset 1, canonical program `A385138.P14446959269686956335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385138 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385138.P14446959269686956335.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386431.P5232922445090336553

`A238013(n+1)+A074279(n+1)*A237451(n+1)`
-/

namespace A386431.P5232922445090336553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238013 (n + 1) + A074279 (n + 1) * A237451 (n + 1)

end

end A386431.P5232922445090336553

noncomputable section

/-- A386431: Triangle T(n,k) read by rows, where row n contains the numbers 1, ..., n^2, written columnwise into a square matrix and read rowwise.

Offset 1, canonical program `A386431.P5232922445090336553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9455 terms. -/
def A386431 (n : ℕ) : ℤ :=
  A386431.P5232922445090336553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9455 terms. -/
def A386431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391211.P17799184732969912048

`A333242(n+2)-A151799(A333242(n+2))`
-/

namespace A391211.P17799184732969912048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333242 (n + 2) - A151799 (A333242 (n + 2)).toNat

end

end A391211.P17799184732969912048

noncomputable section

/-- A391211: Difference between A333242(n) and the next lower prime number.

Offset 2, canonical program `A391211.P17799184732969912048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391211 (n : ℕ) : ℤ :=
  A391211.P17799184732969912048.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397100.P2153576112342565242

`A007814(n+1)-A396409(n)`
-/

namespace A397100.P2153576112342565242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A396409 n

end

end A397100.P2153576112342565242

noncomputable section

/-- A397100: a(n) is the number of steps by which n's trajectory under f is ahead of 0's; i.e., f^k(0) = f^(k-a(n))(n) for all sufficiently large k, where f(n) = n XOR 2^A000120(n).

Offset 0, canonical program `A397100.P2153576112342565242`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397100 (n : ℕ) : ℤ :=
  A397100.P2153576112342565242.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398950.P7122882423077720818

`eq[A335341(n+4), A379971(n+1)]`
-/

namespace A398950.P7122882423077720818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398950.P7122882423077720818

noncomputable section

/-- A398950: Numbers k such that k, k+2, and k+4 are all squarefree.

Offset 1, canonical program `A398950.P7122882423077720818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4103 terms. -/
def A398950 (n : ℕ) : ℤ :=
  (A398950.P7122882423077720818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4103 terms. -/
def A398950.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A300837.P3407511099178858747

`A300836(n+1)+A007895(n+1)`
-/

namespace A300837.P3407511099178858747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300836 (n + 1) + A007895 (n + 1)

end

end A300837.P3407511099178858747

noncomputable section

/-- A300837: a(n) is the total number of terms (1-digits) in Zeckendorf representation of all divisors of n.

Offset 1, canonical program `A300837.P3407511099178858747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A300836, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300837 (n : ℕ) : ℤ :=
  A300837.P3407511099178858747.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A300836, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300837.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A301593.P6623717910831163898

`A034968((n+1)*C(A060130(n+1), A034968(n+1)))`
-/

namespace A301593.P6623717910831163898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 ((n + 1) * Nat.choose (A060130 (n + 1)).toNat (A034968 (n + 1)).toNat)

end

end A301593.P6623717910831163898

noncomputable section

/-- A301593: a(n) = k if n can be written as the sum of the factorials of k distinct positive integers. Otherwise, a(n) = 0.

Offset 1, canonical program `A301593.P6623717910831163898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301593 (n : ℕ) : ℤ :=
  A301593.P6623717910831163898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302056.P1047659896841164977

`eq[0, A097195(n)]`
-/

namespace A302056.P1047659896841164977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302056.P1047659896841164977

noncomputable section

/-- A302056: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1 - x^j)^4 is zero.

Offset 1, canonical program `A302056.P1047659896841164977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4167 terms. -/
def A302056 (n : ℕ) : ℤ :=
  (A302056.P1047659896841164977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4167 terms. -/
def A302056.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A308375.P5312636960333740944

`A007953(A002808(n+1))`
-/

namespace A308375.P5312636960333740944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002808 (n + 1)).toNat

end

end A308375.P5312636960333740944

noncomputable section

/-- A308375: Digital sum of composite numbers.

Offset 1, canonical program `A308375.P5312636960333740944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308375 (n : ℕ) : ℤ :=
  A308375.P5312636960333740944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318315.P13571981915240890591

`A007814(A318314(n+1))`
-/

namespace A318315.P13571981915240890591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318314 (n + 1)).toNat

end

end A318315.P13571981915240890591

noncomputable section

/-- A318315: The 2-adic valuation of A318314.

Offset 1, canonical program `A318315.P13571981915240890591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318315 (n : ℕ) : ℤ :=
  A318315.P13571981915240890591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318315.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318445.P14423617105751206309

`A211779(n+1)+A318447(n+1)`
-/

namespace A318445.P14423617105751206309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + A318447 (n + 1)

end

end A318445.P14423617105751206309

noncomputable section

/-- A318445: a(n) = Sum_{d|n, d<n} A005187(d).

Offset 1, canonical program `A318445.P14423617105751206309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318445 (n : ℕ) : ℤ :=
  A318445.P14423617105751206309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318465.P12082296130128085348

`2^A318464(n+1)`
-/

namespace A318465.P12082296130128085348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318464 (n + 1) : ℤ)

end

end A318465.P12082296130128085348

noncomputable section

/-- A318465: The number of Zeckendorf-infinitary divisors of n = Product_{i} p(i)^r(i): divisors d = Product_{i} p(i)^s(i), such that the Zeckendorf expansion (A014417) of each s(i) contains only terms that are in the Zeckendorf expansion of r(i).

Offset 1, canonical program `A318465.P12082296130128085348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318465 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318465.P12082296130128085348.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318473.P15254297892022099386

`A007814(A318474(n+1))`
-/

namespace A318473.P15254297892022099386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318474 (n + 1)).toNat

end

end A318473.P15254297892022099386

noncomputable section

/-- A318473: Additive with a(p^e) = A000045(e+1).

Offset 1, canonical program `A318473.P15254297892022099386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318473 (n : ℕ) : ℤ :=
  A318473.P15254297892022099386.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319711.P4258072044163212966

`∑{d}[n+1, A034968(#%(n+1))]`
-/

namespace A319711.P4258072044163212966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034968 (d % (n + 1))

end

end A319711.P4258072044163212966

noncomputable section

/-- A319711: Sum of A034968(d) over proper divisors d of n, where A034968 gives the sum of digits in factorial base.

Offset 1, canonical program `A319711.P4258072044163212966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319711 (n : ℕ) : ℤ :=
  A319711.P4258072044163212966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320003.P14814290166151194418

`A091954(n+1)-A320015(n+1)`
-/

namespace A320003.P14814290166151194418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - A320015 (n + 1)

end

end A320003.P14814290166151194418

noncomputable section

/-- A320003: Number of proper divisors of n of the form 6*k + 3.

Offset 1, canonical program `A320003.P14814290166151194418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320003 (n : ℕ) : ℤ :=
  A320003.P14814290166151194418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322581.P15493543185383869202

`A003958(n+1)+A097945(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322581.P15493543185383869202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) + A097945 (n + 1)

end

end A322581.P15493543185383869202

noncomputable section

/-- A322581: Sum of A003958 and its Dirichlet inverse: a(n) = A003958(n) + A097945(n).

Offset 1, canonical program `A322581.P15493543185383869202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322581 (n : ℕ) : ℤ :=
  A322581.P15493543185383869202.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322581.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322582.P8560399753878851377

`n+1-A003958(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322582.P8560399753878851377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003958 (n + 1)

end

end A322582.P8560399753878851377

noncomputable section

/-- A322582: a(n) = n - A003958(n), where A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A322582.P8560399753878851377`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322582 (n : ℕ) : ℤ :=
  A322582.P8560399753878851377.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322582.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324044.P16013423005150912487

`A003958(n+1)-A033879(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324044.P16013423005150912487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) - A033879 (n + 1)

end

end A324044.P16013423005150912487

noncomputable section

/-- A324044: a(n) = A003958(n) - A033879(n).

Offset 1, canonical program `A324044.P16013423005150912487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324044 (n : ℕ) : ℤ :=
  A324044.P16013423005150912487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324044.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330740.P3370590016903294651

`A117967(abs(A117966(n)))`
-/

namespace A330740.P3370590016903294651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 |A117966 n|.toNat

end

end A330740.P3370590016903294651

noncomputable section

/-- A330740: a(n) = min(n, A004488(n)), where A004488(n) is base-3 sum n+n without carries.

Offset 0, canonical program `A330740.P3370590016903294651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330740 (n : ℕ) : ℤ :=
  A330740.P3370590016903294651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333415.P142928759278303053

`A007088(A145341(n+1))`
-/

namespace A333415.P142928759278303053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A145341 (n + 1)).toNat

end

end A333415.P142928759278303053

noncomputable section

/-- A333415: Odd positive integers in base 2 read backwards.

Offset 1, canonical program `A333415.P142928759278303053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A145341, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333415 (n : ℕ) : ℤ :=
  A333415.P142928759278303053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A145341, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333415.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333753.P1428503214538916222

`A023889(A072504(n+1))`
-/

namespace A333753.P1428503214538916222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (A072504 (n + 1)).toNat

end

end A333753.P1428503214538916222

noncomputable section

/-- A333753: Sum of prime power divisors of n that are <= sqrt(n).

Offset 1, canonical program `A333753.P1428503214538916222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333753 (n : ℕ) : ℤ :=
  A333753.P1428503214538916222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333787.P7563771657480233851

`A003958(n+1)*A006519(n+1)`
-/

namespace A333787.P7563771657480233851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A006519 (n + 1)

end

end A333787.P7563771657480233851

noncomputable section

/-- A333787: Fully multiplicative with a(2) = 2 and a(p) = p-1 for odd primes p.

Offset 1, canonical program `A333787.P7563771657480233851`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333787 (n : ℕ) : ℤ :=
  A333787.P7563771657480233851.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333787.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336466.P16200719452775638290

`A000265(A003958(n+1))`
-/

namespace A336466.P16200719452775638290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003958 (n + 1)).toNat

end

end A336466.P16200719452775638290

noncomputable section

/-- A336466: Fully multiplicative with a(p) = A000265(p-1) for any prime p, where A000265(k) gives the odd part of k.

Offset 1, canonical program `A336466.P16200719452775638290`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336466 (n : ℕ) : ℤ :=
  A336466.P16200719452775638290.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337290.P12355850104571192112

`A020899(eq[1, A020899(n+2)-A020899(n+1)]+1)`
-/

namespace A337290.P12355850104571192112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 2) - A020899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A337290.P12355850104571192112

noncomputable section

/-- A337290: Numbers k such that both k and k+1 are in A020899.

Offset 1, canonical program `A337290.P12355850104571192112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4471 terms. -/
def A337290 (n : ℕ) : ℤ :=
  A337290.P12355850104571192112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4471 terms. -/
def A337290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338452.P13216430907170277132

`eq[A093653(n+2), A093653(n+3)]+2`
-/

namespace A338452.P13216430907170277132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A338452.P13216430907170277132

noncomputable section

/-- A338452: Numbers k such that k and k+1 have the same total binary weight of their divisors (A093653).

Offset 1, canonical program `A338452.P13216430907170277132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A338452 (n : ℕ) : ℤ :=
  (A338452.P13216430907170277132.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A338452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339214.P16424243800326708504

`comp[A034968(n)+n]`
-/

namespace A339214.P16424243800326708504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A339214.P16424243800326708504

noncomputable section

/-- A339214: Factorial-base self numbers: numbers not of the form k + A034968(k).

Offset 1, canonical program `A339214.P16424243800326708504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A339214 (n : ℕ) : ℤ :=
  (A339214.P16424243800326708504.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A339214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340081.P14898792459419955035

`gcd(n, A003958(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340081.P14898792459419955035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A003958 (n + 1))

end

end A340081.P14898792459419955035

noncomputable section

/-- A340081: a(n) = gcd(n-1, A003958(n)).

Offset 1, canonical program `A340081.P14898792459419955035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340081 (n : ℕ) : ℤ :=
  (A340081.P14898792459419955035.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342036.P14204125781141140411

`A007088(A048701(n))`
-/

namespace A342036.P14204125781141140411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048701 n).toNat

end

end A342036.P14204125781141140411

noncomputable section

/-- A342036: Palindromes of even length only using 0 or 1.

Offset 0, canonical program `A342036.P14204125781141140411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342036 (n : ℕ) : ℤ :=
  A342036.P14204125781141140411.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342184.P10340909780046926633

`p?[ceil(A289353(n+1)/10)]`
-/

namespace A342184.P10340909780046926633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289353 (n + 1) : ℚ) / 10⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342184.P10340909780046926633

noncomputable section

/-- A342184: Primes q such that 10*q-3 and 10*q+1 are cousin primes.

Offset 1, canonical program `A342184.P10340909780046926633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A342184 (n : ℕ) : ℤ :=
  A342184.P10340909780046926633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A342184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343501.P17916702806192043918

`2*A338691(n+1)`
-/

namespace A343501.P17916702806192043918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338691 (n + 1)

end

end A343501.P17916702806192043918

noncomputable section

/-- A343501: Positions of 4's in A003324.

Offset 1, canonical program `A343501.P17916702806192043918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343501 (n : ℕ) : ℤ :=
  A343501.P17916702806192043918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343501.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348928.P1977074338902689538

`gcd(n+1, A003958(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348928.P1977074338902689538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003958 (n + 1))

end

end A348928.P1977074338902689538

noncomputable section

/-- A348928: a(n) = gcd(n, A003958(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e.

Offset 1, canonical program `A348928.P1977074338902689538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348928 (n : ℕ) : ℤ :=
  (A348928.P1977074338902689538.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348975.P14334171170777144493

`A003415(n+1)+A003958(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348975.P14334171170777144493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + A003958 (n + 1) - (n + 1 : ℤ)

end

end A348975.P14334171170777144493

noncomputable section

/-- A348975: a(n) = A003415(n) + A003958(n) - n, where A003415 is the arithmetic derivative and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A348975.P14334171170777144493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348975 (n : ℕ) : ℤ :=
  A348975.P14334171170777144493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348975.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349130.P12900436076985490935

`∑{d}[n+1, #*A003958((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349130.P12900436076985490935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A003958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349130.P12900436076985490935

noncomputable section

/-- A349130: a(n) = Sum_{d|n} d * A003958(n/d), where A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A349130.P12900436076985490935`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349130 (n : ℕ) : ℤ :=
  A349130.P12900436076985490935.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349131.P14789906931524733824

`∑{d}[n+1, A000010(#)*A003958((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349131.P14789906931524733824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A003958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349131.P14789906931524733824

noncomputable section

/-- A349131: a(n) = Sum_{d|n} phi(d) * A003958(n/d), where A003958 is fully multiplicative with a(p) = (p-1), and phi is Euler totient function.

Offset 1, canonical program `A349131.P14789906931524733824`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349131 (n : ℕ) : ℤ :=
  A349131.P14789906931524733824.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349133.P1756529070579348651

`∑{d}[n+1, A003415(#)*A003958((n+1)/#)]`
-/

namespace A349133.P1756529070579348651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A003958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349133.P1756529070579348651

noncomputable section

/-- A349133: Dirichlet convolution of A003415 with A003958, where A003415 is the arithmetic derivative and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A349133.P1756529070579348651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349133 (n : ℕ) : ℤ :=
  A349133.P1756529070579348651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349355.P2660659661651567786

`∑{d}[n+1, A003958((n+1)/#)*A063441(#)]`
-/

namespace A349355.P2660659661651567786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A063441 d

end

end A349355.P2660659661651567786

noncomputable section

/-- A349355: Dirichlet convolution of A003958 with A063441 (Dirichlet inverse of A003959), where A003958 and A003959 are fully multiplicative with a(p) = p-1 and p+1 respectively.

Offset 1, canonical program `A349355.P2660659661651567786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349355 (n : ℕ) : ℤ :=
  A349355.P2660659661651567786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351442.P14048376927472810043

`A003958(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351442.P14048376927472810043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A000203 (n + 1)).toNat

end

end A351442.P14048376927472810043

noncomputable section

/-- A351442: a(n) = A003958(sigma(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351442.P14048376927472810043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351442 (n : ℕ) : ℤ :=
  A351442.P14048376927472810043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351444.P6173397424864781659

`n+1-A003958(n+1)+A003958(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351444.P6173397424864781659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003958 (n + 1) + A003958 (A000203 (n + 1)).toNat

end

end A351444.P6173397424864781659

noncomputable section

/-- A351444: a(n) = n - A003958(n) + A003958(sigma(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351444.P6173397424864781659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351444 (n : ℕ) : ℤ :=
  A351444.P6173397424864781659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351445.P15142338061005417043

`A003958(A000203(n+1))-A003958(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351445.P15142338061005417043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A000203 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P15142338061005417043

noncomputable section

/-- A351445: a(n) = A003958(sigma(n)) - A003958(n), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351445.P15142338061005417043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351445 (n : ℕ) : ℤ :=
  A351445.P15142338061005417043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354112.P8571420097554948375

`A093653(A000225(n+1))`
-/

namespace A354112.P8571420097554948375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (A000225 (n + 1)).toNat

end

end A354112.P8571420097554948375

noncomputable section

/-- A354112: Total number of 1's in binary expansion of all divisors of 2^n-1.

Offset 1, canonical program `A354112.P8571420097554948375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354112 (n : ℕ) : ℤ :=
  A354112.P8571420097554948375.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355280.P12882028884349807086

`A007088(A033015(n+1))`
-/

namespace A355280.P12882028884349807086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A033015 (n + 1)).toNat

end

end A355280.P12882028884349807086

noncomputable section

/-- A355280: Binary numbers (digits in {0, 1}) with no run of digits with length < 2.

Offset 1, canonical program `A355280.P12882028884349807086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A033015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355280 (n : ℕ) : ℤ :=
  A355280.P12882028884349807086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A033015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357696.P6244782871759486007

`filter[A357695(n+1), A294930(#)]`
-/

namespace A357696.P6244782871759486007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A357696.P6244782871759486007

noncomputable section

/-- A357696: Cubefree primitive abundant numbers: cubefree abundant numbers having no abundant proper divisor.

Offset 1, canonical program `A357696.P6244782871759486007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A357696 (n : ℕ) : ℤ :=
  A357696.P6244782871759486007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A357696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358976.P7223524224958330645

`eq[1, gcd(n, A034968(n))]`
-/

namespace A358976.P7223524224958330645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A034968 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358976.P7223524224958330645

noncomputable section

/-- A358976: Numbers that are coprime to the sum of their factorial base digits (A034968).

Offset 1, canonical program `A358976.P7223524224958330645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6064 terms. -/
def A358976 (n : ℕ) : ℤ :=
  (A358976.P7223524224958330645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6064 terms. -/
def A358976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363259.P18232685269626442063

`A363904(Δ[n²])`
-/

namespace A363259.P18232685269626442063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363904 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A363259.P18232685269626442063

noncomputable section

/-- A363259: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(4*k-1)).

Offset 1, canonical program `A363259.P18232685269626442063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363259 (n : ℕ) : ℤ :=
  A363259.P18232685269626442063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364019.P5738425657626568886

`∑{d}[n+1, A000010(#)*A364043((n+1)/#)]`
-/

namespace A364019.P5738425657626568886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364019.P5738425657626568886

noncomputable section

/-- A364019: Expansion of Sum_{k>0} k * x^k / (1 + x^(5*k)).

Offset 1, canonical program `A364019.P5738425657626568886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364019 (n : ℕ) : ℤ :=
  A364019.P5738425657626568886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368050.P9877690928199603770

`A193564(2*n+3)`
-/

namespace A368050.P9877690928199603770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (2 * n + 3)

end

end A368050.P9877690928199603770

noncomputable section

/-- A368050: Main diagonal of the array where row n=0 lists the natural numbers and each new row n=1,2,... is found by taking the number n in the previous row, and "leaping" it over the next n terms to its right, keeping the other numbers fixed (see example).

Offset 1, canonical program `A368050.P9877690928199603770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A368050 (n : ℕ) : ℤ :=
  A368050.P9877690928199603770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A368050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368342.P15145048510541553360

`∑[A034968(floor(n²/(n+1)))]`
-/

namespace A368342.P15145048510541553360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368342.P15145048510541553360

noncomputable section

/-- A368342: Sum of digits of the numbers 0..n-1 in factorial base (A108731).

Offset 0, canonical program `A368342.P15145048510541553360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368342 (n : ℕ) : ℤ :=
  A368342.P15145048510541553360.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368804.P4492888258836152047

`A007088(A362030(n+1))`
-/

namespace A368804.P4492888258836152047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A362030 (n + 1)).toNat

end

end A368804.P4492888258836152047

noncomputable section

/-- A368804: Irregular triangle read by rows: T(n,k) is the k-th balanced binary word of length 2*n, where words within a row are in lexicographical order (with leading zeros removed and interpreted as decimal numbers).

Offset 1, canonical program `A368804.P4492888258836152047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368804 (n : ℕ) : ℤ :=
  A368804.P4492888258836152047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371263.P7260451375417791318

`A371256(A117967(n))`
-/

namespace A371263.P7260451375417791318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (A117967 n).toNat

end

end A371263.P7260451375417791318

noncomputable section

/-- A371263: The run lengths transform of the balanced ternary expansion of n corresponds to the run lengths transform of the binary expansion of a(n).

Offset 0, canonical program `A371263.P7260451375417791318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A371263 (n : ℕ) : ℤ :=
  A371263.P7260451375417791318.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A371263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373189.P2339985558679468875

`∑{d}[n+1, A023896(#)*A373188((n+1)/#)]`
-/

namespace A373189.P2339985558679468875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A373188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373189.P2339985558679468875

noncomputable section

/-- A373189: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^3.

Offset 1, canonical program `A373189.P2339985558679468875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373189 (n : ℕ) : ℤ :=
  A373189.P2339985558679468875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373303.P10871280826768265393

`A371176(n+2)-A371176(n+1)`
-/

namespace A373303.P10871280826768265393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (n + 2) - A371176 (n + 1)

end

end A373303.P10871280826768265393

noncomputable section

/-- A373303: First differences of A371176.

Offset 1, canonical program `A373303.P10871280826768265393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373303 (n : ℕ) : ℤ :=
  A373303.P10871280826768265393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373303.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374468.P16396236909376006343

`A034968(n)%2`
-/

namespace A374468.P16396236909376006343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034968 n) 2

end

end A374468.P16396236909376006343

noncomputable section

/-- A374468: Parity of the digit sum of n in factorial base.

Offset 0, canonical program `A374468.P16396236909376006343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374468 (n : ℕ) : ℤ :=
  A374468.P16396236909376006343.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374473.P16675953149575422784

`∪[A026424(n+1), A066427(n+1)]`
-/

namespace A374473.P16675953149575422784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374473.P16675953149575422784

noncomputable section

/-- A374473: Numbers k such that bigomega(k) and A064547(k) are not both even, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

Offset 1, canonical program `A374473.P16675953149575422784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374473 (n : ℕ) : ℤ :=
  (A374473.P16675953149575422784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378200.P9582015431075575270

`A056023(A381664(A381664(n+1)))`
-/

namespace A378200.P9582015431075575270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A381664 (A381664 (n + 1)).toNat).toNat

end

end A378200.P9582015431075575270

noncomputable section

/-- A378200: Square array read by upward antidiagonals: T(n,k) = ((k + n - 1)^2 + (k - n + 1)*(-1)^n + (1 - k - n)*(-1)^k + (1 - k - n)*(-1)^(k + n) + 2)/2.

Offset 1, canonical program `A378200.P9582015431075575270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378200 (n : ℕ) : ℤ :=
  A378200.P9582015431075575270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378489.P15105494429949913084

`filter[A066427(1+n), A065043(#)]`
-/

namespace A378489.P15105494429949913084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066427 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A378489.P15105494429949913084

noncomputable section

/-- A378489: Intersection of A000028 and A028260.

Offset 1, canonical program `A378489.P15105494429949913084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8378 terms. -/
def A378489 (n : ℕ) : ℤ :=
  A378489.P15105494429949913084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8378 terms. -/
def A378489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378494.P8782437258541775153

`filter[A066428(n+1), A066829(#)]`
-/

namespace A378494.P8782437258541775153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A378494.P8782437258541775153

noncomputable section

/-- A378494: Intersection of A000379 and A026424.

Offset 1, canonical program `A378494.P8782437258541775153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8436 terms. -/
def A378494 (n : ℕ) : ℤ :=
  A378494.P8782437258541775153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8436 terms. -/
def A378494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378705.P16790697538674376241

`A381664(A056023(n+1))`
-/

namespace A378705.P16790697538674376241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A056023 (n + 1)).toNat

end

end A378705.P16790697538674376241

noncomputable section

/-- A378705: Inverse permutation to A378200.

Offset 1, canonical program `A378705.P16790697538674376241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378705 (n : ℕ) : ℤ :=
  A378705.P16790697538674376241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379739.P13853497522422973330

`A193564(2*(n+2))`
-/

namespace A379739.P13853497522422973330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (2 * (n + 2))

end

end A379739.P13853497522422973330

noncomputable section

/-- A379739: Subdiagonal of the Hurt-Sada array.

Offset 1, canonical program `A379739.P13853497522422973330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A379739 (n : ℕ) : ℤ :=
  A379739.P13853497522422973330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. -/
def A379739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380079.P368606423001304580

`A026272(A022342(n+2))`
-/

namespace A380079.P368606423001304580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A022342 (n + 2)).toNat

end

end A380079.P368606423001304580

noncomputable section

/-- A380079: Start with a list of the positive integers L in increasing order. Then, at turn n>=1, element n jumps from its current position, m, to position m+n. Then a(n) = L(m+1).

Offset 1, canonical program `A380079.P368606423001304580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A380079 (n : ℕ) : ℤ :=
  A380079.P368606423001304580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A380079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387350.P5346268956136855131

`A002251(A005652(n+1))`
-/

namespace A387350.P5346268956136855131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A005652 (n + 1)).toNat

end

end A387350.P5346268956136855131

noncomputable section

/-- A387350: Positions of 1's in A387348.

Offset 1, canonical program `A387350.P5346268956136855131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A387350 (n : ℕ) : ℤ :=
  A387350.P5346268956136855131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A387350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389923.P14713725332339076935

`A371176(lt[runs[floor(n/ϕ)], 2]-1)`
-/

namespace A389923.P14713725332339076935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n - 1)

end

end A389923.P14713725332339076935

noncomputable section

/-- A389923: Standard composition numbers of integer compositions with last part = length.

Offset 1, canonical program `A389923.P14713725332339076935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A389923 (n : ℕ) : ℤ :=
  A389923.P14713725332339076935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A389923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392980.P15181118893878896143

`A392236(2*(n+1))/2`
-/

namespace A392980.P15181118893878896143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392236 (2 * (n + 1)) : ℚ) / 2

end

end A392980.P15181118893878896143

noncomputable section

/-- A392980: Positions of zeros in A393336.

Offset 1, canonical program `A392980.P15181118893878896143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A392236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392980 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392980.P15181118893878896143.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A392236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294901.P8529106131992005002

`A294903(n+1)-A294905(n+1)`
-/

namespace A294901.P8529106131992005002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (n + 1) - A294905 (n + 1)

end

end A294901.P8529106131992005002

noncomputable section

/-- A294901: Number of proper divisors of n that are in A257691.

Offset 1, canonical program `A294901.P8529106131992005002`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294903, A294905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294901 (n : ℕ) : ℤ :=
  A294901.P8529106131992005002.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294903, A294905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294902.P3192607995574418211

`A294904(n+1)+A294905(n+1)-1`
-/

namespace A294902.P3192607995574418211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294904 (n + 1) + A294905 (n + 1) - 1

end

end A294902.P3192607995574418211

noncomputable section

/-- A294902: Number of proper divisors of n that are in A175526.

Offset 1, canonical program `A294902.P3192607995574418211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294904, A294905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294902 (n : ℕ) : ℤ :=
  A294902.P3192607995574418211.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294904, A294905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328728.P9496393580234342524

`A328749(A328727(n+1))`
-/

namespace A328728.P9496393580234342524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A328727 (n + 1)).toNat

end

end A328728.P9496393580234342524

noncomputable section

/-- A328728: a(n) = Sum_{k = 0..w and t_k > 0} (-1)^t_k * 2^k, where Sum_{k = 0..w} t_k * 3^k is the ternary representation of A328727(n).

Offset 1, canonical program `A328728.P9496393580234342524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328727, A328749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328728 (n : ℕ) : ℤ :=
  A328728.P9496393580234342524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328727, A328749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343022.P16274586819737777029

`(eq[1, A343023(n+1)]+1)²`
-/

namespace A343022.P16274586819737777029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A343022.P16274586819737777029

noncomputable section

/-- A343022: Discriminants with exactly 1 associated cyclic cubic field.

Offset 1, canonical program `A343022.P16274586819737777029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. -/
def A343022 (n : ℕ) : ℤ :=
  (A343022.P16274586819737777029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. -/
def A343022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370650.P533710446170374147

`filter[A000379(n+1), A373975(#)]`
-/

namespace A370650.P533710446170374147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A370650.P533710446170374147

noncomputable section

/-- A370650: Numbers whose number of infinitary divisors that are terms of A366242 is equal to the number of infinitary divisors that are terms of A366243.

Offset 1, canonical program `A370650.P533710446170374147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1797 terms. -/
def A370650 (n : ℕ) : ℤ :=
  A370650.P533710446170374147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1797 terms. -/
def A370650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337690.P488329027084497173

`∑{d}[n+1, A341619(#)]`
-/

namespace A337690.P488329027084497173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341619 d

end

end A337690.P488329027084497173

noncomputable section

/-- A337690: a(n) is the number of primitive nondeficient numbers (A006039) dividing n.

Offset 1, canonical program `A337690.P488329027084497173`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341619, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337690 (n : ℕ) : ℤ :=
  A337690.P488329027084497173.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341619, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337690.provenance : SequenceMachineLib.Provenance := .conditional

