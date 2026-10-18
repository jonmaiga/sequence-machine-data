import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A390921.P4802921319269334055

`a(n-1)+A098658(n)` with `a(0)=1`
-/

namespace A390921.P4802921319269334055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A098658 n

end

end A390921.P4802921319269334055

noncomputable section

/-- A390921: Expansion of 1/((1-x) * sqrt(1-12*x)).

Offset 0, canonical program `A390921.P4802921319269334055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390921 (n : ℕ) : ℤ :=
  A390921.P4802921319269334055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390923.P6565390993815220059

`3*a(n-1)+A059304(n)` with `a(0)=1`
-/

namespace A390923.P6565390993815220059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + A059304 n

end

end A390923.P6565390993815220059

noncomputable section

/-- A390923: Expansion of 1/((1-3*x) * sqrt(1-8*x)).

Offset 0, canonical program `A390923.P6565390993815220059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390923 (n : ℕ) : ℤ :=
  A390923.P6565390993815220059.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390924.P5803395581487017869

`2*a(n-1)+A098658(n)` with `a(0)=1`
-/

namespace A390924.P5803395581487017869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A098658 n

end

end A390924.P5803395581487017869

noncomputable section

/-- A390924: Expansion of 1/((1-2*x) * sqrt(1-12*x)).

Offset 0, canonical program `A390924.P5803395581487017869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390924 (n : ℕ) : ℤ :=
  A390924.P5803395581487017869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392597.P12125127422441468717

`A006519(n+1)*A038500(n+1)*A060904(n+1)*A268354(n+1)`
-/

namespace A392597.P12125127422441468717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A038500 (n + 1) * A060904 (n + 1) * A268354 (n + 1)

end

end A392597.P12125127422441468717

noncomputable section

/-- A392597: The largest 7-smooth divisor of n.

Offset 1, canonical program `A392597.P12125127422441468717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392597 (n : ℕ) : ℤ :=
  A392597.P12125127422441468717.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387913.P14282635771981914480

`A359435(n+3)+1`
-/

namespace A387913.P14282635771981914480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359435 (n + 3) + 1

end

end A387913.P14282635771981914480

noncomputable section

/-- A387913: Hodge number h^{1,n-1} of a smooth hypersurface of degree n+2 in P^{n+1}.

Offset 1, canonical program `A387913.P14282635771981914480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A387913 (n : ℕ) : ℤ :=
  A387913.P14282635771981914480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A387913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388067.P9453088931527127366

`∑{d}[n+1, A369308(#)]`
-/

namespace A388067.P9453088931527127366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369308 d

end

end A388067.P9453088931527127366

noncomputable section

/-- A388067: Multiplicative sequence a(n) with a(p^e) = (1+floor(e/2)) * (2+floor(e/2)) / 2 for prime p and e >= 0.

Offset 1, canonical program `A388067.P9453088931527127366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388067 (n : ℕ) : ℤ :=
  A388067.P9453088931527127366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388973.P9138127869321454466

`filter[A049419(n+1), A010060(#)]`
-/

namespace A388973.P9138127869321454466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A388973.P9138127869321454466

noncomputable section

/-- A388973: The number of exponential divisors of the numbers whose number of exponential divisors is a power of 2.

Offset 1, canonical program `A388973.P9138127869321454466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9581 terms. -/
def A388973 (n : ℕ) : ℤ :=
  A388973.P9138127869321454466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9581 terms. -/
def A388973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389648.P661621194831941048

`A000194(A340172(n+1)*A340172(n))`
-/

namespace A389648.P661621194831941048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A340172 (n + 1) * A340172 n).toNat

end

end A389648.P661621194831941048

noncomputable section

/-- A389648: Y coordinate of point n while traversing the half plane by integer points in rectangular layers starting from n=1 at the origin.

Offset 1, canonical program `A389648.P661621194831941048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389648 (n : ℕ) : ℤ :=
  A389648.P661621194831941048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389648.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390262.P9624603092470050995

`∑{d}[n+1, #*A140697((n+1)/#)]`
-/

namespace A390262.P9624603092470050995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A140697 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390262.P9624603092470050995

noncomputable section

/-- A390262: Multiplicative sequence a(n) with a(p^e) = ((p + 1)^2 * p^(e-1) - 2) * p^(e-1) for prime p and e > 0.

Offset 1, canonical program `A390262.P9624603092470050995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390262 (n : ℕ) : ℤ :=
  A390262.P9624603092470050995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390524.P6174133227094776359

`A000045(A025581(n))*A002262(n)`
-/

namespace A390524.P6174133227094776359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025581 n).toNat * A002262 n

end

end A390524.P6174133227094776359

noncomputable section

/-- A390524: Array read by ascending antidiagonals: A(n, k) = k * Fibonacci(n).

Offset 0, canonical program `A390524.P6174133227094776359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390524 (n : ℕ) : ℤ :=
  A390524.P6174133227094776359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390965.P17095960951919550593

`A070857(n)-A070031(n)`
-/

namespace A390965.P17095960951919550593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 n - A070031 n

end

end A390965.P17095960951919550593

noncomputable section

/-- A390965: a(n) = (1/(n+1)) * Sum_{k=0..n} k^2 * (k+1) * binomial(2*n-k,n-k).

Offset 0, canonical program `A390965.P17095960951919550593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A390965 (n : ℕ) : ℤ :=
  A390965.P17095960951919550593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A390965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391134.P1699678046192407440

`A030238(n+1)-A132364(n+1)`
-/

namespace A391134.P1699678046192407440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030238 (n + 1) - A132364 (n + 1)

end

end A391134.P1699678046192407440

noncomputable section

/-- A391134: Expansion of g^2/(1 - x^2*g), where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A391134.P1699678046192407440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391134 (n : ℕ) : ℤ :=
  A391134.P1699678046192407440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391358.P1151688618796119787

`A389809(n+1)+A104887(n+1)`
-/

namespace A391358.P1151688618796119787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (n + 1) + A104887 (n + 1)

end

end A391358.P1151688618796119787

noncomputable section

/-- A391358: Rectangular array R read by falling antidiagonals: R(n,k) = prime(k) + prime(n+k).

Offset 1, canonical program `A391358.P1151688618796119787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391358 (n : ℕ) : ℤ :=
  A391358.P1151688618796119787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391384.P18148672950887766433

`p?[A275418(n+1)]`
-/

namespace A391384.P18148672950887766433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A391384.P18148672950887766433

noncomputable section

/-- A391384: Primes p such that p - 1 has exactly as many odd divisors as p + 1.

Offset 1, canonical program `A391384.P18148672950887766433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A391384 (n : ℕ) : ℤ :=
  A391384.P18148672950887766433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A391384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392332.P10626276045092877156

`A256562(n+1)-A091194(n+1)`
-/

namespace A392332.P10626276045092877156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256562 (n + 1) - A091194 (n + 1)

end

end A392332.P10626276045092877156

noncomputable section

/-- A392332: a(n) is the excess of deficient numbers over abundant numbers in the first n positive integers.

Offset 1, canonical program `A392332.P10626276045092877156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A256562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392332 (n : ℕ) : ℤ :=
  A392332.P10626276045092877156.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A256562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392332.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393292.P14481508653223136911

`1-A362248(n+1)+n`
-/

namespace A393292.P14481508653223136911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A362248 (n + 1) + (n : ℤ)

end

end A393292.P14481508653223136911

noncomputable section

/-- A393292: Number computed by Wolfram's 2-state 2-symbol Turing machine 2205 when started with n on the tape.

Offset 1, canonical program `A393292.P14481508653223136911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393292 (n : ℕ) : ℤ :=
  A393292.P14481508653223136911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393292.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A394529.P4813404703482126856

`(n²*A000108(n)+A008549(n))/2`
-/

namespace A394529.P4813404703482126856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A000108 n + A008549 n : ℚ) / 2

end

end A394529.P4813404703482126856

noncomputable section

/-- A394529: Total number of cells under all Dyck paths of semilength n in the first quadrant of the square grid.

Offset 0, canonical program `A394529.P4813404703482126856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394529.P4813404703482126856.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394927.P16215032132539986639

`∑[A099375(n)]-A099375(n)`
-/

namespace A394927.P16215032132539986639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099375 n

end

end A394927.P16215032132539986639

noncomputable section

/-- A394927: a(n) is the minimal sum of squares over partitions of n into distinct parts.

Offset 0, canonical program `A394927.P16215032132539986639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394927 (n : ℕ) : ℤ :=
  A394927.P16215032132539986639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395251.P13720670033681036438

`eq[A288997(2*n+3)+1, A288997(n+1)]`
-/

namespace A395251.P13720670033681036438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (2 * n + 3) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395251.P13720670033681036438

noncomputable section

/-- A395251: a(n) gives positions k >= 1 where the equation b(b(k)+b(k-1)) = k fails, for b(k) = floor(k/sqrt(2) + 2*(sqrt(2)-1)).

Offset 1, canonical program `A395251.P13720670033681036438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A395251 (n : ℕ) : ℤ :=
  (A395251.P13720670033681036438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A395251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395768.P1059238046107922784

`∑{d}[n+1, #*A374367((n+1)/#)]`
-/

namespace A395768.P1059238046107922784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A374367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395768.P1059238046107922784

noncomputable section

/-- A395768: The twisted Euler phi-function for the Dirichlet character kronecker(-4,.) mod 4.

Offset 1, canonical program `A395768.P1059238046107922784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395768 (n : ℕ) : ℤ :=
  A395768.P1059238046107922784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395962.P3547014246278371736

`2*n+A395961(2*n)`
-/

namespace A395962.P3547014246278371736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A395961 (2 * n)

end

end A395962.P3547014246278371736

noncomputable section

/-- A395962: Numbers k such that A395961(k) = 0.

Offset 1, canonical program `A395962.P3547014246278371736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395962 (n : ℕ) : ℤ :=
  A395962.P3547014246278371736.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395963.P4100947188399208588

`2*n+1-A395961(2*n)`
-/

namespace A395963.P4100947188399208588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - A395961 (2 * n))

end

end A395963.P4100947188399208588

noncomputable section

/-- A395963: Numbers k such that A395961(k) = 1.

Offset 1, canonical program `A395963.P4100947188399208588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395963 (n : ℕ) : ℤ :=
  A395963.P4100947188399208588.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395963.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396269.P4590932951071944405

`filter[A386684(n+1), A379958(#)]`
-/

namespace A396269.P4590932951071944405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A396269.P4590932951071944405

noncomputable section

/-- A396269: Cubefree k that are neither squarefree nor squareful that have more than 2 distinct prime factors.

Offset 1, canonical program `A396269.P4590932951071944405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7193 terms. -/
def A396269 (n : ℕ) : ℤ :=
  A396269.P4590932951071944405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7193 terms. -/
def A396269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397495.P2362568275880317952

`A074149(A102781(n+2))`
-/

namespace A397495.P2362568275880317952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (A102781 (n + 2)).toNat

end

end A397495.P2362568275880317952

noncomputable section

/-- A397495: Number of quadruples (a,b,c,d) of nonzero quadratic residues modulo prime(n) such that a + b == c + d (mod prime(n)).

Offset 2, canonical program `A397495.P2362568275880317952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A397495 (n : ℕ) : ℤ :=
  A397495.P2362568275880317952.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A397495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398167.P15155754403201331677

`filter[A340152(n+1), A295316(#)]`
-/

namespace A398167.P15155754403201331677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A398167.P15155754403201331677

noncomputable section

/-- A398167: Squarefree numbers k such that k+1 is cubefree.

Offset 1, canonical program `A398167.P15155754403201331677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7076 terms. -/
def A398167 (n : ℕ) : ℤ :=
  A398167.P15155754403201331677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7076 terms. -/
def A398167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388011.P2434188042193603591

`comp[A388012(n+1)-1]+1`
-/

namespace A388011.P2434188042193603591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388012 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A388011.P2434188042193603591

noncomputable section

/-- A388011: Numbers k such that sigma(k)/k < 5/3.

Offset 1, canonical program `A388011.P2434188042193603591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388011 (n : ℕ) : ℤ :=
  (A388011.P2434188042193603591.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389810.P16776173714572326767

`A008578(A175969(n+1)-n)`
-/

namespace A389810.P16776173714572326767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A175969 (n + 1) - (n : ℤ)).toNat

end

end A389810.P16776173714572326767

noncomputable section

/-- A389810: Prime(k)-1 copies of prime(k) ordered by increasing k.

Offset 1, canonical program `A389810.P16776173714572326767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389810 (n : ℕ) : ℤ :=
  A389810.P16776173714572326767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389826.P9330026923282160192

`floor((n+1)*A030101(n+1)/(n+1+A030101(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389826.P9330026923282160192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * A030101 (n + 1) : ℚ) / ((n + 1 : ℤ) + A030101 (n + 1) : ℚ)⌋

end

end A389826.P9330026923282160192

noncomputable section

/-- A389826: a(n) = floor(n*A030101(n)/(n + A030101(n))).

Offset 1, canonical program `A389826.P9330026923282160192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389826 (n : ℕ) : ℤ :=
  A389826.P9330026923282160192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389826.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391597.P14152947396835619235

`2*(A006218(n+1)+A061201(n+1))+A013936(n+1)-(n+1)`
-/

namespace A391597.P14152947396835619235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006218 (n + 1) + A061201 (n + 1)) + A013936 (n + 1) - (n + 1 : ℤ)

end

end A391597.P14152947396835619235

noncomputable section

/-- A391597: a(n) is the number of quadratic polynomials with coefficients in {-n, ..., n}, positive leading coefficient, and having two integer roots.

Offset 1, canonical program `A391597.P14152947396835619235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A013936, A061201, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391597 (n : ℕ) : ℤ :=
  A391597.P14152947396835619235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A013936, A061201, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391597.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391711.P7269243793553933826

`A000045(A046470(n+1))`
-/

namespace A391711.P7269243793553933826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A046470 (n + 1)).toNat

end

end A391711.P7269243793553933826

noncomputable section

/-- A391711: Fibonacci numbers whose indices are even positive numbers with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A391711.P7269243793553933826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046470, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391711 (n : ℕ) : ℤ :=
  A391711.P7269243793553933826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046470, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391733.P1683383338998513801

`eq[1, A005590(n)]`
-/

namespace A391733.P1683383338998513801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391733.P1683383338998513801

noncomputable section

/-- A391733: Numbers in whose binary expansion there is exactly one run of 1-bits with an odd length, while all other run of 1-bits are of an even length (or absent).

Offset 1, canonical program `A391733.P1683383338998513801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A391733 (n : ℕ) : ℤ :=
  (A391733.P1683383338998513801.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A391733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392013.P4907640714609065482

`A049419(A138302(n+1))`
-/

namespace A392013.P4907640714609065482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A138302 (n + 1)).toNat

end

end A392013.P4907640714609065482

noncomputable section

/-- A392013: The number of exponential divisors of the exponentially-2^n numbers.

Offset 1, canonical program `A392013.P4907640714609065482`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392013 (n : ℕ) : ℤ :=
  A392013.P4907640714609065482.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392365.P14078290519509760206

`A004709(n+1)²`
-/

namespace A392365.P14078290519509760206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) ^ 2

end

end A392365.P14078290519509760206

noncomputable section

/-- A392365: The cubefree numbers squared.

Offset 1, canonical program `A392365.P14078290519509760206`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392365 (n : ℕ) : ℤ :=
  A392365.P14078290519509760206.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392670.P14366886065038149397

`A002487(A046699(n+2))`
-/

namespace A392670.P14366886065038149397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A046699 (n + 2)).toNat

end

end A392670.P14366886065038149397

noncomputable section

/-- A392670: Triangle read by rows where row n is the numerators of the node values in a preorder traversal of the Calkin-Wilf tree with n levels, columns 0 <= k < 2^n-1.

Offset 1, canonical program `A392670.P14366886065038149397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392670 (n : ℕ) : ℤ :=
  A392670.P14366886065038149397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394425.P13849324502405230266

`A049419(A046100(n+1))`
-/

namespace A394425.P13849324502405230266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A046100 (n + 1)).toNat

end

end A394425.P13849324502405230266

noncomputable section

/-- A394425: The number of exponential divisors of the biquadratefree numbers.

Offset 1, canonical program `A394425.P13849324502405230266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394425 (n : ℕ) : ℤ :=
  A394425.P13849324502405230266.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394471.P5852096907617755890

`∩[A000040(n+1), A048448(n+4)-1]`
-/

namespace A394471.P5852096907617755890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 4) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394471.P5852096907617755890

noncomputable section

/-- A394471: Primes of the form prime(k) + prime(k+2) - 1, where prime(k) is the k-th prime.

Offset 1, canonical program `A394471.P5852096907617755890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1187 terms. -/
def A394471 (n : ℕ) : ℤ :=
  (A394471.P5852096907617755890.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1187 terms. -/
def A394471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395089.P12188725371683441728

`1-A395088(n)`
-/

namespace A395089.P12188725371683441728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A395088 n

end

end A395089.P12188725371683441728

noncomputable section

/-- A395089: Binary complement of A395088.

Offset 0, canonical program `A395089.P12188725371683441728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395089 (n : ℕ) : ℤ :=
  A395089.P12188725371683441728.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395114.P18219317400035454050

`A005590(A103354(n+2))`
-/

namespace A395114.P18219317400035454050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A103354 (n + 2)).toNat

end

end A395114.P18219317400035454050

noncomputable section

/-- A395114: Irregular triangle, next row is the previous row with the difference between consecutive numbers inserted between, starting with row 1 1.

Offset 1, canonical program `A395114.P18219317400035454050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395114 (n : ℕ) : ℤ :=
  A395114.P18219317400035454050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395700.P10863328374740441814

`eq[n, A181859(n)]`
-/

namespace A395700.P10863328374740441814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395700.P10863328374740441814

noncomputable section

/-- A395700: k is term if and only if k = gcd(k^2, k!) / gcd(k^2, k!/floor(k/2)!^2).

Offset 1, canonical program `A395700.P10863328374740441814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A395700 (n : ℕ) : ℤ :=
  (A395700.P10863328374740441814.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A395700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397071.P1842801038344067177

`n²+6*n+3+2*A006218(n)`
-/

namespace A397071.P1842801038344067177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 6 * n : ℤ) + (3 + 2 * A006218 n)

end

end A397071.P1842801038344067177

noncomputable section

/-- A397071: Number of true statements (x op y) = z, where 0 <= x, y, z <= n, op is in {+,-,*,/}.

Offset 0, canonical program `A397071.P1842801038344067177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397071 (n : ℕ) : ℤ :=
  A397071.P1842801038344067177.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397071.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397466.P11172842824194226049

`A008578(A087057(n+1))`
-/

namespace A397466.P11172842824194226049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A087057 (n + 1)).toNat

end

end A397466.P11172842824194226049

noncomputable section

/-- A397466: a(n) = prime(floor(n*sqrt(2))).

Offset 1, canonical program `A397466.P11172842824194226049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A397466 (n : ℕ) : ℤ :=
  A397466.P11172842824194226049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A397466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398165.P11536307954340140639

`∩[A138302(n+1)-1, A138302(n+1)]`
-/

namespace A398165.P11536307954340140639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398165.P11536307954340140639

noncomputable section

/-- A398165: Numbers k such that all the exponents in the prime factorizations of k and k+1 are powers of 2.

Offset 1, canonical program `A398165.P11536307954340140639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8631 terms. -/
def A398165 (n : ℕ) : ℤ :=
  (A398165.P11536307954340140639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8631 terms. -/
def A398165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398168.P16108428066764494187

`eq[(n+1)/∏{p}[n+1, #], char[A004709(n+1)]]`
-/

namespace A398168.P16108428066764494187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A398168.P16108428066764494187

noncomputable section

/-- A398168: Cubefree numbers k such that k+1 is squarefree.

Offset 1, canonical program `A398168.P16108428066764494187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4800 terms. -/
def A398168 (n : ℕ) : ℤ :=
  (A398168.P16108428066764494187.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4800 terms. -/
def A398168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398324.P4813511843978568844

`eq[A088570(A216345(n+1)), A157928(n)]`
-/

namespace A398324.P4813511843978568844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (A216345 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398324.P4813511843978568844

noncomputable section

/-- A398324: Positions k such that the prefix of length k of the Kolakoski sequence contains an even number of 1's and an even number of 2's.

Offset 1, canonical program `A398324.P4813511843978568844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1657 terms. -/
def A398324 (n : ℕ) : ℤ :=
  (A398324.P4813511843978568844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1657 terms. -/
def A398324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392569.P15058182535622603523

`a(n-1)+A000788(n)` with `a(0)=0`
-/

namespace A392569.P15058182535622603523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000788 n

end

end A392569.P15058182535622603523

noncomputable section

/-- A392569: Partial sums of A000788.

Offset 0, canonical program `A392569.P15058182535622603523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392569 (n : ℕ) : ℤ :=
  A392569.P15058182535622603523.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396203.P15910022281224477011

`p?[A396279(n+1)]`
-/

namespace A396203.P15910022281224477011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396203.P15910022281224477011

noncomputable section

/-- A396203: Primes p such that the gap to the next prime is floor(log_2(p)).

Offset 1, canonical program `A396203.P15910022281224477011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A396203 (n : ℕ) : ℤ :=
  A396203.P15910022281224477011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A396203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393336.P13809973050334025134

`A029931(n)-A359400(n)`
-/

namespace A393336.P13809973050334025134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A359400 n

end

end A393336.P13809973050334025134

noncomputable section

/-- A393336: a(n) is the sum of positions of 1's minus sum of positions of 0's in the binary expansion of n.

Offset 0, canonical program `A393336.P13809973050334025134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A359400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393336 (n : ℕ) : ℤ :=
  A393336.P13809973050334025134.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A359400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387893.P4630578512810266503

`A014681(lt[A014681(n), A306927(n+1)])`
-/

namespace A387893.P4630578512810266503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A387893.P4630578512810266503

noncomputable section

/-- A387893: Psi-abundant numbers: numbers k such that psi(k) > 2*k.

Offset 1, canonical program `A387893.P4630578512810266503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1758 terms. -/
def A387893 (n : ℕ) : ℤ :=
  A387893.P4630578512810266503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1758 terms. -/
def A387893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388994.P3930905186296382464

`A048250(n+1)-A162296(n+1)`
-/

namespace A388994.P3930905186296382464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A162296 (n + 1)

end

end A388994.P3930905186296382464

noncomputable section

/-- A388994: a(n) = {sum of squarefree divisors of n} minus {sum of divisors of n that have a square factor}.

Offset 1, canonical program `A388994.P3930905186296382464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A162296, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388994 (n : ℕ) : ℤ :=
  A388994.P3930905186296382464.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A162296, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389244.P9929055792756023973

`A057521((n+1)*(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389244.P9929055792756023973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 ((n + 1) * (n + 2))

end

end A389244.P9929055792756023973

noncomputable section

/-- A389244: Powerful part of n*(n+1): a(n) = A057521(n*(n+1)).

Offset 1, canonical program `A389244.P9929055792756023973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389244 (n : ℕ) : ℤ :=
  A389244.P9929055792756023973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389244.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389446.P10095306458237006129

`gcd(A000203(n+1), A057723(n+1))`
-/

namespace A389446.P10095306458237006129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A057723 (n + 1))

end

end A389446.P10095306458237006129

noncomputable section

/-- A389446: a(n) = gcd(sigma(n), A057723(n)), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

Offset 1, canonical program `A389446.P10095306458237006129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389446 (n : ℕ) : ℤ :=
  (A389446.P10095306458237006129.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389905.P14127833197963390982

`A107078(n+1)*(1-A112526(n+1))`
-/

namespace A389905.P14127833197963390982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) * (1 - A112526 (n + 1))

end

end A389905.P14127833197963390982

noncomputable section

/-- A389905: a(n) = 1 if n is neither squarefree nor powerful, otherwise 0.

Offset 1, canonical program `A389905.P14127833197963390982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107078, A112526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389905 (n : ℕ) : ℤ :=
  A389905.P14127833197963390982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107078, A112526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390225.P7477734311538200322

`∩[A037310(n+1), A037312(n+1)]`
-/

namespace A390225.P7477734311538200322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390225.P7477734311538200322

noncomputable section

/-- A390225: Positive numbers whose base-3, base-5, and base-7 expansions have the same digit sum.

Offset 1, canonical program `A390225.P7477734311538200322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A390225 (n : ℕ) : ℤ :=
  (A390225.P7477734311538200322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A390225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391023.P14661047719889867302

`filter[A067259(n+1), A355447(#)]`
-/

namespace A391023.P14661047719889867302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A391023.P14661047719889867302

noncomputable section

/-- A391023: Numbers with more than 1 distinct prime factor and whose largest prime factor exponent is 2.

Offset 1, canonical program `A391023.P14661047719889867302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A391023 (n : ℕ) : ℤ :=
  A391023.P14661047719889867302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A391023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392012.P18374582958621527053

`A057723(A004709(2*n+1-n))`
-/

namespace A392012.P18374582958621527053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A004709 (2 * n + 1 - n)).toNat

end

end A392012.P18374582958621527053

noncomputable section

/-- A392012: The sum of the exponential divisors of the cubefree numbers.

Offset 1, canonical program `A392012.P18374582958621527053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A392012 (n : ℕ) : ℤ :=
  A392012.P18374582958621527053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A392012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397136.P9058078001182760132

`lcm(A007427(n+1), A347291(n+1))`
-/

namespace A397136.P9058078001182760132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007427 (n + 1)) (A347291 (n + 1))

end

end A397136.P9058078001182760132

noncomputable section

/-- A397136: Dirichlet g.f.: Product_{p prime} (1 + 2/p^s + 1/p^(2*s-1)).

Offset 1, canonical program `A397136.P9058078001182760132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397136 (n : ℕ) : ℤ :=
  (A397136.P9058078001182760132.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389888.P10709983666780608653

`record[A007913(n+1)*A007913(n+5)]`
-/

namespace A389888.P10709983666780608653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A007913 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389888.P10709983666780608653

noncomputable section

/-- A389888: Discriminants of real quadratic fields in which every additively indecomposable element is a unit.

Offset 1, canonical program `A389888.P10709983666780608653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389888 (n : ℕ) : ℤ :=
  A389888.P10709983666780608653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389888.provenance : SequenceMachineLib.Provenance := .conjectured

