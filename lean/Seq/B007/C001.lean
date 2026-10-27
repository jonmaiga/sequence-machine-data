import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C015
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A375782.P12848737483940934003

`1+A007814(A085062(n+1))`
-/

namespace A375782.P12848737483940934003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A007814 (A085062 (n + 1)).toNat

end

end A375782.P12848737483940934003

noncomputable section

/-- A375782: The 2-adic valuation of the result, starting from n, of Collatz steps x -> (3x+1)/2 while odd.

Offset 1, canonical program `A375782.P12848737483940934003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375782 (n : ℕ) : ℤ :=
  A375782.P12848737483940934003.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379222.P16799102987765888211

`A378999(2*n+1)`
-/

namespace A379222.P16799102987765888211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378999 (2 * n + 1)

end

end A379222.P16799102987765888211

noncomputable section

/-- A379222: Number of trailing 1-bits in the binary representation of the sum of the divisors of the n-th odd square: a(n) = sigma((2*n-1)^2).

Offset 1, canonical program `A379222.P16799102987765888211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379222 (n : ℕ) : ℤ :=
  A379222.P16799102987765888211.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394497.P5937869929885374420

`2*A085062(n)+1`
-/

namespace A394497.P5937869929885374420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085062 n + 1

end

end A394497.P5937869929885374420

noncomputable section

/-- A394497: Recurrence: a(2*n + 1) = 2*n + 1, a(2*n) = 3*a(n).

Offset 1, canonical program `A394497.P5937869929885374420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394497 (n : ℕ) : ℤ :=
  A394497.P5937869929885374420.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372331.P6557326080855113142

`∏{e}[n+1, A080100(#)]`
-/

namespace A372331.P6557326080855113142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A080100 (Nat.factorization (f1 n) p)

end

end A372331.P6557326080855113142

noncomputable section

/-- A372331: The number of infinitary divisors of the smallest number k such that k*n is a number whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372331.P6557326080855113142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372331 (n : ℕ) : ℤ :=
  A372331.P6557326080855113142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378959.P5432620633639023974

`A003817(n)*A090706(n)`
-/

namespace A378959.P5432620633639023974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n * A090706 n

end

end A378959.P5432620633639023974

noncomputable section

/-- A378959: Sum, in base 10, of the permutations of the digits of n, written in base 2.

Offset 0, canonical program `A378959.P5432620633639023974`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378959 (n : ℕ) : ℤ :=
  A378959.P5432620633639023974.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379267.P15908437696186355973

`∩[A144754(n+1), A059010(n)]`
-/

namespace A379267.P15908437696186355973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379267.P15908437696186355973

noncomputable section

/-- A379267: Numbers whose binary representation contains exactly two zeros.

Offset 1, canonical program `A379267.P15908437696186355973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A379267 (n : ℕ) : ℤ :=
  (A379267.P15908437696186355973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A379267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373058.P8412675158221474829

`A336563(A013929(n+1))`
-/

namespace A373058.P8412675158221474829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (A013929 (n + 1)).toNat

end

end A373058.P8412675158221474829

noncomputable section

/-- A373058: The sum of the aliquot coreful divisors of the nonsquarefree numbers.

Offset 1, canonical program `A373058.P8412675158221474829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A336563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373058 (n : ℕ) : ℤ :=
  A373058.P8412675158221474829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A336563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373587.P2627240491300231812

`comp[∪[A373586(n+1), n²]]`
-/

namespace A373587.P2627240491300231812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A373587.P2627240491300231812

noncomputable section

/-- A373587: Numbers k for which A373149(k) is odd, where A373149 is fully additive with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

Offset 1, canonical program `A373587.P2627240491300231812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373587 (n : ℕ) : ℤ :=
  (A373587.P2627240491300231812.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374108.P14839641477557879055

`filter[A373586(n+1), A152822(#)]`
-/

namespace A374108.P14839641477557879055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A374108.P14839641477557879055

noncomputable section

/-- A374108: Numbers k such that A113177(k) and A328845(k) are both even, where A113177 is fully additive with a(p) = Fibonacci(p) and A328845 is the first Fibonacci-based variant of the arithmetic derivative.

Offset 1, canonical program `A374108.P14839641477557879055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7256 terms. -/
def A374108 (n : ℕ) : ℤ :=
  A374108.P14839641477557879055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7256 terms. -/
def A374108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374469.P9574300939196503578

`A000265(A364255(n))`
-/

namespace A374469.P9574300939196503578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A364255 n).toNat

end

end A374469.P9574300939196503578

noncomputable section

/-- A374469: The odd part of gcd(n, A163511(n)).

Offset 0, canonical program `A374469.P9574300939196503578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374469 (n : ℕ) : ℤ :=
  A374469.P9574300939196503578.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379269.P8220945055481371508

`eq[4, A290251(n)]`
-/

namespace A379269.P8220945055481371508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379269.P8220945055481371508

noncomputable section

/-- A379269: Numbers whose binary representation has exactly three zeros.

Offset 1, canonical program `A379269.P8220945055481371508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1456 terms. -/
def A379269 (n : ℕ) : ℤ :=
  (A379269.P8220945055481371508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1456 terms. -/
def A379269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380839.P1105865872776131656

`A173557(n+1)/A305444(n+1)*A307410(n+1)`
-/

namespace A380839.P1105865872776131656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A305444 (n + 1) : ℚ) * (A307410 (n + 1) : ℚ)

end

end A380839.P1105865872776131656

noncomputable section

/-- A380839: Numerators of J(n) = Product_{p|n, p odd prime} (p - 1)/(p - 2).

Offset 1, canonical program `A380839.P1105865872776131656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380839 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380839.P1105865872776131656.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381315.P9914003275205982349

`∩[A375072(n+1), A377844(n+1)]`
-/

namespace A381315.P9914003275205982349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P9914003275205982349

noncomputable section

/-- A381315: Numbers whose prime factorization exponents include exactly one 3 and no exponent greater than 3.

Offset 1, canonical program `A381315.P9914003275205982349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7798 terms. -/
def A381315 (n : ℕ) : ℤ :=
  (A381315.P9914003275205982349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7798 terms. -/
def A381315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386573.P13918329885309829820

`A351113(∏{p}[n+1, #])`
-/

namespace A386573.P13918329885309829820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351113 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A386573.P13918329885309829820

noncomputable section

/-- A386573: Sum of the squarefree balanced divisors of n.

Offset 1, canonical program `A386573.P13918329885309829820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386573 (n : ℕ) : ℤ :=
  A386573.P13918329885309829820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386574.P1108007266045445128

`A351112(∏{p}[n+1, #])`
-/

namespace A386574.P1108007266045445128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A386574.P1108007266045445128

noncomputable section

/-- A386574: Number of squarefree balanced divisors of n.

Offset 1, canonical program `A386574.P1108007266045445128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386574 (n : ℕ) : ℤ :=
  A386574.P1108007266045445128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386589.P14364682863583384821

`A000005(n+1)+A351113(n+1)-A351112(n+1)`
-/

namespace A386589.P14364682863583384821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A351113 (n + 1) - A351112 (n + 1)

end

end A386589.P14364682863583384821

noncomputable section

/-- A386589: a(n) = Sum_{d|n} d^c(d), where c = A351114.

Offset 1, canonical program `A386589.P14364682863583384821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386589 (n : ℕ) : ℤ :=
  A386589.P14364682863583384821.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386589.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386591.P14499915022508730926

`A000005(n+1)-A351112(n+1)`
-/

namespace A386591.P14499915022508730926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A351112 (n + 1)

end

end A386591.P14499915022508730926

noncomputable section

/-- A386591: Number of divisors of n that are not balanced numbers.

Offset 1, canonical program `A386591.P14499915022508730926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386591 (n : ℕ) : ℤ :=
  A386591.P14499915022508730926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386592.P13459167421288589562

`A000203(n+1)-A351113(n+1)`
-/

namespace A386592.P13459167421288589562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A351113 (n + 1)

end

end A386592.P13459167421288589562

noncomputable section

/-- A386592: Sum of the divisors of n that are not balanced numbers.

Offset 1, canonical program `A386592.P13459167421288589562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351113, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386592 (n : ℕ) : ℤ :=
  A386592.P13459167421288589562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351113, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390266.P11586587757660382785

`A108080(n)+A054441(n)`
-/

namespace A390266.P11586587757660382785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108080 n + A054441 n

end

end A390266.P11586587757660382785

noncomputable section

/-- A390266: a(n) = Sum_{k=0..n} binomial(2*n+k+1,n-k).

Offset 0, canonical program `A390266.P11586587757660382785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A390266 (n : ℕ) : ℤ :=
  A390266.P11586587757660382785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A390266.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391428.P16960108032895023113

`A087248(n+1)²`
-/

namespace A391428.P16960108032895023113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1) ^ 2

end

end A391428.P16960108032895023113

noncomputable section

/-- A391428: Exponential abundant numbers that are squares of squarefree numbers.

Offset 1, canonical program `A391428.P16960108032895023113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391428 (n : ℕ) : ℤ :=
  A391428.P16960108032895023113.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370123.P8428876455859098462

`eq[1, A370122(n)]`
-/

namespace A370123.P8428876455859098462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370123.P8428876455859098462

noncomputable section

/-- A370123: Numbers whose second arithmetic derivative (A068346) is a multiple of 3.

Offset 1, canonical program `A370123.P8428876455859098462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370123 (n : ℕ) : ℤ :=
  (A370123.P8428876455859098462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370354.P16956646947341725089

`lt[A089026(n+1), A082299(n+1)]+1`
-/

namespace A370354.P16956646947341725089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A370354.P16956646947341725089

noncomputable section

/-- A370354: Composite numbers k that share a factor with sopfr(k), the sum of the primes dividing k, with repetition.

Offset 1, canonical program `A370354.P16956646947341725089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3422 terms. -/
def A370354 (n : ℕ) : ℤ :=
  (A370354.P16956646947341725089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3422 terms. -/
def A370354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371016.P443611739013701360

`A099776(A108769(2*n+1-n))`
-/

namespace A371016.P443611739013701360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (A108769 (2 * n + 1 - n)).toNat

end

end A371016.P443611739013701360

noncomputable section

/-- A371016: Centered square numbers which are semiprime.

Offset 1, canonical program `A371016.P443611739013701360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3705 terms. -/
def A371016 (n : ℕ) : ℤ :=
  A371016.P443611739013701360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3705 terms. -/
def A371016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371054.P16164343174787979327

`∩[A043583(n+1), A089118(n+1)]`
-/

namespace A371054.P16164343174787979327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371054.P16164343174787979327

noncomputable section

/-- A371054: Numbers whose ternary representation consists of a run of 1's, then a run of 0's, then a run of 2's.

Offset 1, canonical program `A371054.P16164343174787979327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A371054 (n : ℕ) : ℤ :=
  (A371054.P16164343174787979327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A371054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373144.P16197007913121420560

`record[(n+1)*A373143(n+1)]`
-/

namespace A373144.P16197007913121420560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373144.P16197007913121420560

noncomputable section

/-- A373144: Numbers k such that both A003415(k) and A276085(k) are multiples of 3, where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373144.P16197007913121420560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373144 (n : ℕ) : ℤ :=
  A373144.P16197007913121420560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373372.P1234123365246061466

`A373371(n+1)*A372573(n+1)`
-/

namespace A373372.P1234123365246061466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (n + 1) * A372573 (n + 1)

end

end A373372.P1234123365246061466

noncomputable section

/-- A373372: a(n) = 1 if A001414(n) and A276085(n) are both multiples of 3, otherwise 0, where A001414 is the sum of prime factors with repetition and A276085 is the primorial base log-function.

Offset 1, canonical program `A373372.P1234123365246061466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373371, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373372 (n : ℕ) : ℤ :=
  A373372.P1234123365246061466.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373371, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373472.P17598235069966866873

`A373371(n+1)*A373975(n+1)`
-/

namespace A373472.P17598235069966866873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (n + 1) * A373975 (n + 1)

end

end A373472.P17598235069966866873

noncomputable section

/-- A373472: a(n) = 1 if A001414(n) and A059975(n) are both multiples of 3, otherwise 0, where A001414 and A059975 are fully additive with a(p) = p and a(p) = p-1, respectively.

Offset 1, canonical program `A373472.P17598235069966866873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373472 (n : ℕ) : ℤ :=
  A373472.P17598235069966866873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373478.P4147642878322058632

`record[(n+1)*A373477(n+1)]`
-/

namespace A373478.P4147642878322058632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373478.P4147642878322058632

noncomputable section

/-- A373478: Numbers k such that A001414(k) and A003415(k) are both multiples of 3, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373478.P4147642878322058632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373478 (n : ℕ) : ℤ :=
  A373478.P4147642878322058632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373482.P4247517866636361981

`eq[1, A373481(n+1)]+1`
-/

namespace A373482.P4247517866636361981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373482.P4247517866636361981

noncomputable section

/-- A373482: Numbers k for which A003415(k) is a multiple of A001414(k), where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

Offset 1, canonical program `A373482.P4247517866636361981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373482 (n : ℕ) : ℤ :=
  (A373482.P4247517866636361981.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373494.P12895813285925351519

`record[(n+1)*A373493(n+1)]`
-/

namespace A373494.P12895813285925351519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373494.P12895813285925351519

noncomputable section

/-- A373494: Numbers k for which A059975(k) and A003415(k) are both multiples of 3, where A059975 is fully additive with a(p) = p-1, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373494.P12895813285925351519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A373494 (n : ℕ) : ℤ :=
  A373494.P12895813285925351519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A373494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376734.P16205018272451621134

`∩[A234099(n+1), A234102(n+1)]`
-/

namespace A376734.P16205018272451621134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376734.P16205018272451621134

noncomputable section

/-- A376734: Numbers k such that 2*k-1 and 2*k+1 are products of exactly three distinct odd primes (A046389).

Offset 1, canonical program `A376734.P16205018272451621134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2003 terms. -/
def A376734 (n : ℕ) : ℤ :=
  (A376734.P16205018272451621134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2003 terms. -/
def A376734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379762.P18428336242211905384

`∩[A046386(n+1), A087248(n+1)]`
-/

namespace A379762.P18428336242211905384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P18428336242211905384

noncomputable section

/-- A379762: Products of 4 distinct prime numbers (or tetraprimes) that are abundant.

Offset 1, canonical program `A379762.P18428336242211905384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A379762 (n : ℕ) : ℤ :=
  (A379762.P18428336242211905384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A379762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382661.P8563438829571950820

`A191414(A268335(n+1))`
-/

namespace A382661.P8563438829571950820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (A268335 (n + 1)).toNat

end

end A382661.P8563438829571950820

noncomputable section

/-- A382661: The unitary Jordan totient function applied to the exponentially odd numbers (A268335).

Offset 1, canonical program `A382661.P8563438829571950820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A191414, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382661 (n : ℕ) : ℤ :=
  A382661.P8563438829571950820.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A191414, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382663.P5371014751236149270

`A191414(A004709(n+1))`
-/

namespace A382663.P5371014751236149270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (A004709 (n + 1)).toNat

end

end A382663.P5371014751236149270

noncomputable section

/-- A382663: The unitary Jordan totient function applied to the cubefree numbers (A004709).

Offset 1, canonical program `A382663.P5371014751236149270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A191414, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382663 (n : ℕ) : ℤ :=
  A382663.P5371014751236149270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A191414, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386105.P11382381309896313627

`∩[A038604(n+1), A084545(n+1)]`
-/

namespace A386105.P11382381309896313627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386105.P11382381309896313627

noncomputable section

/-- A386105: Primes having only {1, 3, 4, 5} as digits.

Offset 1, canonical program `A386105.P11382381309896313627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A386105 (n : ℕ) : ℤ :=
  (A386105.P11382381309896313627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A386105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388986.P11904024746085052397

`lt[A325973(n+1), n]+1`
-/

namespace A388986.P11904024746085052397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388986.P11904024746085052397

noncomputable section

/-- A388986: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} is less than 2*k.

Offset 1, canonical program `A388986.P11904024746085052397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4846 terms. -/
def A388986 (n : ℕ) : ℤ :=
  (A388986.P11904024746085052397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4846 terms. -/
def A388986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389074.P18108287681303167250

`A034448(n+1)/A323159(n+1)`
-/

namespace A389074.P18108287681303167250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A323159 (n + 1) : ℚ)

end

end A389074.P18108287681303167250

noncomputable section

/-- A389074: Numerator of ratio A034448(n) / A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389074.P18108287681303167250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389074.P18108287681303167250.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389075.P12257504307077228747

`A048250(n+1)/A323159(n+1)`
-/

namespace A389075.P12257504307077228747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A323159 (n + 1) : ℚ)

end

end A389075.P12257504307077228747

noncomputable section

/-- A389075: Denominator of ratio A034448(n) / A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389075.P12257504307077228747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389075 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389075.P12257504307077228747.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389170.P11666675562721126669

`A057723(n+1)-A048146(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389170.P11666675562721126669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - A048146 (n + 1)

end

end A389170.P11666675562721126669

noncomputable section

/-- A389170: a(n) = A057723(n) - A048146(n), where A048146 is sum of non-unitary divisors and A057723 is sum of positive divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A389170.P11666675562721126669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389170 (n : ℕ) : ℤ :=
  A389170.P11666675562721126669.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389171.P8921738463794581484

`n+1+A048146(n+1)-A057723(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389171.P8921738463794581484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A048146 (n + 1) - A057723 (n + 1)

end

end A389171.P8921738463794581484

noncomputable section

/-- A389171: a(n) = n + A048146(n) - A057723(n), where A048146 is sum of non-unitary divisors and A057723 is sum of positive divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A389171.P8921738463794581484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389171 (n : ℕ) : ℤ :=
  A389171.P8921738463794581484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389215.P13589853183880962071

`lt[n, A325973(n+1)]+1`
-/

namespace A389215.P13589853183880962071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389215.P13589853183880962071

noncomputable section

/-- A389215: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} >= 2*k.

Offset 1, canonical program `A389215.P13589853183880962071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389215 (n : ℕ) : ℤ :=
  (A389215.P13589853183880962071.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390954.P6202897047478684223

`∑{d}[n+1, A328254(#)*A390554((n+1)/#)]`
-/

namespace A390954.P6202897047478684223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328254 d * A390554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390954.P6202897047478684223

noncomputable section

/-- A390954: Dirichlet convolution of A390554 and A328254.

Offset 1, canonical program `A390954.P6202897047478684223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390954 (n : ℕ) : ℤ :=
  A390954.P6202897047478684223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393980.P14400587957278650939

`A153154(A233280(n))`
-/

namespace A393980.P14400587957278650939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A233280 n).toNat

end

end A393980.P14400587957278650939

noncomputable section

/-- A393980: On the nonnegative integer number line, go to the first next unused power of 2 minus 1, then spiral back to pick up any skipped numbers, and repeat.

Offset 0, canonical program `A393980.P14400587957278650939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A393980 (n : ℕ) : ℤ :=
  A393980.P14400587957278650939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A393980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394997.P14454066831357329865

`A337524(n+1)-A063647(n+1)`
-/

namespace A394997.P14454066831357329865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337524 (n + 1) - A063647 (n + 1)

end

end A394997.P14454066831357329865

noncomputable section

/-- A394997: Wiener index of the divisor prime graph of n.

Offset 1, canonical program `A394997.P14454066831357329865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A337524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394997 (n : ℕ) : ℤ :=
  A394997.P14454066831357329865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A337524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396323.P6518160970652980328

`filter[A391319(n+1), A379958(#)]`
-/

namespace A396323.P6518160970652980328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A396323.P6518160970652980328

noncomputable section

/-- A396323: Numbers that are neither cubefree nor powerful with at least 3 distinct prime factors.

Offset 1, canonical program `A396323.P6518160970652980328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7067 terms. -/
def A396323 (n : ℕ) : ℤ :=
  A396323.P6518160970652980328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7067 terms. -/
def A396323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397429.P9837664119609473260

`∩[A080790(n+1), A161601(n+1)]`
-/

namespace A397429.P9837664119609473260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397429.P9837664119609473260

noncomputable section

/-- A397429: Primes in A161601 whose binary reversal is prime.

Offset 1, canonical program `A397429.P9837664119609473260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 759 terms. -/
def A397429 (n : ℕ) : ℤ :=
  (A397429.P9837664119609473260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 759 terms. -/
def A397429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375076.P5343439789459528226

`filter[A391497(n+1), A295316(#)]`
-/

namespace A375076.P5343439789459528226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A375076.P5343439789459528226

noncomputable section

/-- A375076: Numbers whose prime factorization exponents include at least one 1, at least one 3 and no other exponents.

Offset 1, canonical program `A375076.P5343439789459528226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076 (n : ℕ) : ℤ :=
  A375076.P5343439789459528226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379208.P17735300703008624525

`A297113(∩[A000040(n+1), A228157(n+1)])`
-/

namespace A379208.P17735300703008624525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228157 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A379208.P17735300703008624525

noncomputable section

/-- A379208: Numbers k such that prime(k) and prime(k) + 9 are anagrams.

Offset 1, canonical program `A379208.P17735300703008624525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A379208 (n : ℕ) : ℤ :=
  A379208.P17735300703008624525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A379208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381588.P6316090729294100752

`A005361(n+1)*A083346(n+1)`
-/

namespace A381588.P6316090729294100752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A083346 (n + 1)

end

end A381588.P6316090729294100752

noncomputable section

/-- A381588: If n = Product (p_j^k_j) then a(n) = Product (lcm(p_j, k_j)), with a(1) = 1.

Offset 1, canonical program `A381588.P6316090729294100752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381588 (n : ℕ) : ℤ :=
  A381588.P6316090729294100752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386336.P17651694690908270259

`∩[A038604(n+1), A038612(n+1)]`
-/

namespace A386336.P17651694690908270259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386336.P17651694690908270259

noncomputable section

/-- A386336: Primes without {2, 4} as digits.

Offset 1, canonical program `A386336.P17651694690908270259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6038 terms. -/
def A386336 (n : ℕ) : ℤ :=
  (A386336.P17651694690908270259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6038 terms. -/
def A386336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386340.P1648994612721377908

`∩[A038611(n+1), A038612(n+1)]`
-/

namespace A386340.P1648994612721377908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386340.P1648994612721377908

noncomputable section

/-- A386340: Primes without {3, 4} as digits.

Offset 1, canonical program `A386340.P1648994612721377908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4563 terms. -/
def A386340 (n : ℕ) : ℤ :=
  (A386340.P1648994612721377908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4563 terms. -/
def A386340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386345.P11453822956591974223

`∩[A038612(n+1), A038613(n+1)]`
-/

namespace A386345.P11453822956591974223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386345.P11453822956591974223

noncomputable section

/-- A386345: Primes without {4, 5} as digits.

Offset 1, canonical program `A386345.P11453822956591974223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6132 terms. -/
def A386345 (n : ℕ) : ℤ :=
  (A386345.P11453822956591974223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6132 terms. -/
def A386345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386346.P8892965724520616261

`∩[A038612(n+1), A038614(n+1)]`
-/

namespace A386346.P8892965724520616261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386346.P8892965724520616261

noncomputable section

/-- A386346: Primes without {4, 6} as digits.

Offset 1, canonical program `A386346.P8892965724520616261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6157 terms. -/
def A386346 (n : ℕ) : ℤ :=
  (A386346.P8892965724520616261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6157 terms. -/
def A386346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386347.P3539177770067542842

`∩[A038612(n+1), A038615(n+1)]`
-/

namespace A386347.P3539177770067542842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386347.P3539177770067542842

noncomputable section

/-- A386347: Primes without {4, 7} as digits.

Offset 1, canonical program `A386347.P3539177770067542842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A386347 (n : ℕ) : ℤ :=
  (A386347.P3539177770067542842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A386347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386348.P14876660133788585214

`∩[A038612(n+1), A038616(n+1)]`
-/

namespace A386348.P14876660133788585214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386348.P14876660133788585214

noncomputable section

/-- A386348: Primes without {4, 8} as digits.

Offset 1, canonical program `A386348.P14876660133788585214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6635 terms. -/
def A386348 (n : ℕ) : ℤ :=
  (A386348.P14876660133788585214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6635 terms. -/
def A386348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391184.P7621874213617609093

`∑{d}[n+1, A391183(#)]`
-/

namespace A391184.P7621874213617609093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A391183 d

end

end A391184.P7621874213617609093

noncomputable section

/-- A391184: The number of divisors of n that are of the form x^2 + 2*y^2 (A002479).

Offset 1, canonical program `A391184.P7621874213617609093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391184 (n : ℕ) : ℤ :=
  A391184.P7621874213617609093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391185.P10323156669665891004

`∑{d}[n+1, #*A391183(#)]`
-/

namespace A391185.P10323156669665891004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A391183 d

end

end A391185.P10323156669665891004

noncomputable section

/-- A391185: The sum of the divisors of n that are of the form x^2 + 2*y^2 (A002479).

Offset 1, canonical program `A391185.P10323156669665891004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391185 (n : ℕ) : ℤ :=
  A391185.P10323156669665891004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373991.P1418235622808596592

`char[A373992(n+1)]`
-/

namespace A373991.P1418235622808596592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373991.P1418235622808596592

noncomputable section

/-- A373991: a(n) = 1 if A328768(n) is a multiple of 3, otherwise 0, where A328768 is the first primorial based variant of arithmetic derivative.

Offset 0, canonical program `A373991.P1418235622808596592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373991 (n : ℕ) : ℤ :=
  (A373991.P1418235622808596592.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374532.P9847573754567788260

`4*A237526(n²+1)`
-/

namespace A374532.P9847573754567788260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A237526 (n ^ 2 + 1)

end

end A374532.P9847573754567788260

noncomputable section

/-- A374532: Number of complete unit squares that fit inside a circle of radius sqrt(n^2+1) centered at the origin of a square lattice.

Offset 0, canonical program `A374532.P9847573754567788260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A237526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374532 (n : ℕ) : ℤ :=
  A374532.P9847573754567788260.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A237526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374532.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375032.P9183128720752084141

`A051903(A350389(n+1))`
-/

namespace A375032.P9183128720752084141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350389 (n + 1)).toNat

end

end A375032.P9183128720752084141

noncomputable section

/-- A375032: The maximum odd exponent in the prime factorization of n, or 0 if no such exponent exists.

Offset 1, canonical program `A375032.P9183128720752084141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375032 (n : ℕ) : ℤ :=
  A375032.P9183128720752084141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377990.P1914433196353605573

`A000203(A000203(A350388(n+1)))*A000203(A000203(A350389(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377990.P1914433196353605573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A350388 (n + 1)).toNat).toNat * A000203 (A000203 (A350389 (n + 1)).toNat).toNat

end

end A377990.P1914433196353605573

noncomputable section

/-- A377990: a(n) = sigma(sigma(A350388(n))) * sigma(sigma(A350389(n))), where A350388 and A350389 are the largest unitary divisor of n that is a square, and the largest unitary divisor of n that is an exponentially odd number, respectively.

Offset 1, canonical program `A377990.P1914433196353605573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A377990 (n : ℕ) : ℤ :=
  A377990.P1914433196353605573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A377990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380165.P2435245022523968233

`A000010(A350389(n+1))`
-/

namespace A380165.P2435245022523968233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A350389 (n + 1)).toNat

end

end A380165.P2435245022523968233

noncomputable section

/-- A380165: a(n) is the value of the Euler totient function when applied to the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A380165.P2435245022523968233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380165 (n : ℕ) : ℤ :=
  A380165.P2435245022523968233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384040.P5722598086975707309

`∑{d}[n+1, A130107(#)*A365550((n+1)/#)]`
-/

namespace A384040.P5722598086975707309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A365550 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384040.P5722598086975707309

noncomputable section

/-- A384040: The number of integers k from 1 to n such that gcd(n,k) is a cubefull number.

Offset 1, canonical program `A384040.P5722598086975707309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384040 (n : ℕ) : ℤ :=
  A384040.P5722598086975707309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384049.P5600847465475785129

`A047994(A360540(n+1))*A360539(n+1)`
-/

namespace A384049.P5600847465475785129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A360540 (n + 1)).toNat * A360539 (n + 1)

end

end A384049.P5600847465475785129

noncomputable section

/-- A384049: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is cubefree.

Offset 1, canonical program `A384049.P5600847465475785129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384049 (n : ℕ) : ℤ :=
  A384049.P5600847465475785129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384051.P18231078601636617959

`A047994(A360539(n+1))*A360540(n+1)`
-/

namespace A384051.P18231078601636617959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A360539 (n + 1)).toNat * A360540 (n + 1)

end

end A384051.P18231078601636617959

noncomputable section

/-- A384051: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a cubefull number.

Offset 1, canonical program `A384051.P18231078601636617959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384051 (n : ℕ) : ℤ :=
  A384051.P18231078601636617959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384052.P2784021690662808847

`A047994(A350389(n+1))*A350388(n+1)`
-/

namespace A384052.P2784021690662808847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A350389 (n + 1)).toNat * A350388 (n + 1)

end

end A384052.P2784021690662808847

noncomputable section

/-- A384052: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a square.

Offset 1, canonical program `A384052.P2784021690662808847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384052 (n : ℕ) : ℤ :=
  A384052.P2784021690662808847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384054.P17702262864445494828

`A047994(A350388(n+1))*A350389(n+1)`
-/

namespace A384054.P17702262864445494828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A350388 (n + 1)).toNat * A350389 (n + 1)

end

end A384054.P17702262864445494828

noncomputable section

/-- A384054: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is an exponentially odd number.

Offset 1, canonical program `A384054.P17702262864445494828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384054 (n : ℕ) : ℤ :=
  A384054.P17702262864445494828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385046.P393041273059483800

`A034448(n+1)/A385045(n+1)`
-/

namespace A385046.P393041273059483800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A385045 (n + 1) : ℚ)

end

end A385046.P393041273059483800

noncomputable section

/-- A385046: The sum of the unitary divisors of n that are 3-smooth numbers (A003586).

Offset 1, canonical program `A385046.P393041273059483800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A385045, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385046 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385046.P393041273059483800.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A385045, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385048.P15337767966192426689

`A034448(n+1)/A371242(n+1)`
-/

namespace A385048.P15337767966192426689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A371242 (n + 1) : ℚ)

end

end A385048.P15337767966192426689

noncomputable section

/-- A385048: The sum of the unitary divisors of n that are cubefull numbers (A036966).

Offset 1, canonical program `A385048.P15337767966192426689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A371242, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385048 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385048.P15337767966192426689.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A371242, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387220.P18196060376439450765

`A256465((n+1)²)`
-/

namespace A387220.P18196060376439450765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256465 ((n + 1) ^ 2)

end

end A387220.P18196060376439450765

noncomputable section

/-- A387220: Arithmetic mean of number of lattice points strictly inside circle of radius n centered on origin, and number of points not outside that circle.

Offset 1, canonical program `A387220.P18196060376439450765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387220 (n : ℕ) : ℤ :=
  A387220.P18196060376439450765.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387220.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387710.P1843881796241010643

`lt[A003959(n+1), 2*(n+1)]+1`
-/

namespace A387710.P1843881796241010643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387710.P1843881796241010643

noncomputable section

/-- A387710: Numbers k for which A003959(k) < 2*k, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A387710.P1843881796241010643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387710 (n : ℕ) : ℤ :=
  (A387710.P1843881796241010643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387711.P8670169942287001865

`lt[2*(n+1), A003959(n+1)]+1`
-/

namespace A387711.P8670169942287001865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387711.P8670169942287001865

noncomputable section

/-- A387711: Numbers k for which A003959(k) > 2*k, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A387711.P8670169942287001865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387711 (n : ℕ) : ℤ :=
  (A387711.P8670169942287001865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390801.P2099821867161505700

`(A010051(n+1)+1)*(n+1)*A117494(n+1)/2`
-/

namespace A390801.P2099821867161505700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A010051 (n + 1) + 1) * (n + 1 : ℤ) * A117494 (n + 1) : ℚ) / 2

end

end A390801.P2099821867161505700

noncomputable section

/-- A390801: The sum of the integers k from 1 to n such that gcd(n, k) is prime.

Offset 1, canonical program `A390801.P2099821867161505700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A117494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390801 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390801.P2099821867161505700.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A117494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390801.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392055.P15206338133621600335

`A014963(A354031(n+1)+n+1)`
-/

namespace A392055.P15206338133621600335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A354031 (n + 1) + (n + 1 : ℤ)).toNat

end

end A392055.P15206338133621600335

noncomputable section

/-- A392055: a(n) = p if n = p^k is a perfect power of either a ramified or inert prime in the Gaussian integers and 1 otherwise.

Offset 1, canonical program `A392055.P15206338133621600335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392055 (n : ℕ) : ℤ :=
  A392055.P15206338133621600335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396515.P9540040117226872358

`A000005(n+1)+A396514(n+1)`
-/

namespace A396515.P9540040117226872358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A396514 (n + 1)

end

end A396515.P9540040117226872358

noncomputable section

/-- A396515: a(n) = Sum_{k=1..n} gcd(k,n)^(ceiling(n/k) - floor(n/k)).

Offset 1, canonical program `A396515.P9540040117226872358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396515 (n : ℕ) : ℤ :=
  A396515.P9540040117226872358.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374466.P2704209594539488434

`A066829(n+1)*(1-A359464(n+1))`
-/

namespace A374466.P2704209594539488434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) * (1 - A359464 (n + 1))

end

end A374466.P2704209594539488434

noncomputable section

/-- A374466: a(n) = 1 if n is the product of an odd number of primes and the total number of 1-bits in the exponents of its prime factorization is odd, otherwise 0.

Offset 1, canonical program `A374466.P2704209594539488434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374466 (n : ℕ) : ℤ :=
  A374466.P2704209594539488434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374466.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A374471.P2134863705312420223

`A065043(n+1)*A359464(n+1)`
-/

namespace A374471.P2134863705312420223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A359464 (n + 1)

end

end A374471.P2134863705312420223

noncomputable section

/-- A374471: a(n) = 1 if bigomega(n) and A064547(n) are both even, otherwise 0, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

Offset 1, canonical program `A374471.P2134863705312420223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374471 (n : ℕ) : ℤ :=
  A374471.P2134863705312420223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374471.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A375031.P13943005656695956466

`eq[2, A375033(n+1)]+1`
-/

namespace A375031.P13943005656695956466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375031.P13943005656695956466

noncomputable section

/-- A375031: Numbers whose prime factorization has at least one exponent that equals 2 and no higher even exponent.

Offset 1, canonical program `A375031.P13943005656695956466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2424 terms. -/
def A375031 (n : ℕ) : ℤ :=
  (A375031.P13943005656695956466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2424 terms. -/
def A375031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375930.P7525023561221465794

`∑[A120992(n+1)]`
-/

namespace A375930.P7525023561221465794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375930.P7525023561221465794

noncomputable section

/-- A375930: Numbers k such that A005117(k+1) - A005117(k) > 1. In other words, the k-th squarefree number is more than 1 less than the next.

Offset 1, canonical program `A375930.P7525023561221465794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375930 (n : ℕ) : ℤ :=
  A375930.P7525023561221465794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378458.P204532322274590323

`∪[A073248(n+1), A228649(n+1)]`
-/

namespace A378458.P204532322274590323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378458.P204532322274590323

noncomputable section

/-- A378458: Squarefree numbers k such that k + 1 is squarefree but k + 2 is not.

Offset 1, canonical program `A378458.P204532322274590323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378458 (n : ℕ) : ℤ :=
  (A378458.P204532322274590323.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378489.P17623488810974009379

`filter[A066427(n+1), A065043(#)]`
-/

namespace A378489.P17623488810974009379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A378489.P17623488810974009379

noncomputable section

/-- A378489: Intersection of A000028 and A028260.

Offset 1, canonical program `A378489.P17623488810974009379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8378 terms. -/
def A378489 (n : ℕ) : ℤ :=
  A378489.P17623488810974009379.a (n - 1)

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

/-! ## A379342.P3691008895860038562

`A378684(A378684(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379342.P3691008895860038562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A378684 (n + 1)).toNat

end

end A379342.P3691008895860038562

noncomputable section

/-- A379342: a(n) = A378684(A378684(n)).

Offset 1, canonical program `A379342.P3691008895860038562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379342 (n : ℕ) : ℤ :=
  A379342.P3691008895860038562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379343.P2690974883127903731

`A056023(A378684(A056023(n+1)))`
-/

namespace A379343.P2690974883127903731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A378684 (A056023 (n + 1)).toNat).toNat

end

end A379343.P2690974883127903731

noncomputable section

/-- A379343: Square array read by upward antidiagonals: T(n,k) = (2*(k+n-1)^2 + 2*k - 2*n + 3 + (-2*k - 2*n + 3)*(-1)^n - (-1)^k + (-2*k - 2*n + 1)*(-1)^(k+n))/4.

Offset 1, canonical program `A379343.P2690974883127903731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A379343 (n : ℕ) : ℤ :=
  A379343.P2690974883127903731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A379343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381017.P10834525739329830361

`p?[A000328(n)]`
-/

namespace A381017.P10834525739329830361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381017.P10834525739329830361

noncomputable section

/-- A381017: Prime terms of A000328.

Offset 1, canonical program `A381017.P10834525739329830361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A381017 (n : ℕ) : ℤ :=
  A381017.P10834525739329830361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A381017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381018.P990383455539555304

`∑[A010051(A000328(n+1))]`
-/

namespace A381018.P990383455539555304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381018.P990383455539555304

noncomputable section

/-- A381018: a(n) is the number of primes in A000328 for r <= n.

Offset 1, canonical program `A381018.P990383455539555304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A381018 (n : ℕ) : ℤ :=
  A381018.P990383455539555304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A381018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383763.P993383120488087921

`A034448(A383764(n+1))`
-/

namespace A383763.P993383120488087921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A383764 (n + 1)).toNat

end

end A383763.P993383120488087921

noncomputable section

/-- A383763: The sum of unitary divisors of n that are exponentially squarefree numbers.

Offset 1, canonical program `A383763.P993383120488087921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383763 (n : ℕ) : ℤ :=
  A383763.P993383120488087921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387325.P12366465277394037670

`A117303(n+1)-1`
-/

namespace A387325.P12366465277394037670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117303 (n + 1) - 1

end

end A387325.P12366465277394037670

noncomputable section

/-- A387325: Self-inverse permutation of the nonnegative integers, by swapping and converting the head and tail parts of n in binary and using the rightmost 0-bit as their separator.

Offset 0, canonical program `A387325.P12366465277394037670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A387325 (n : ℕ) : ℤ :=
  A387325.P12366465277394037670.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A387325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390663.P5509345383207779074

`A000203(A053149(n+1))`
-/

namespace A390663.P5509345383207779074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053149 (n + 1)).toNat

end

end A390663.P5509345383207779074

noncomputable section

/-- A390663: The sum of the divisors of the smallest cube divisible by n.

Offset 1, canonical program `A390663.P5509345383207779074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390663 (n : ℕ) : ℤ :=
  A390663.P5509345383207779074.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390665.P2218711322630550871

`A034448(A053149(n+1))`
-/

namespace A390665.P2218711322630550871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A053149 (n + 1)).toNat

end

end A390665.P2218711322630550871

noncomputable section

/-- A390665: The sum of the unitary divisors of the smallest cube divisible by n.

Offset 1, canonical program `A390665.P2218711322630550871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390665 (n : ℕ) : ℤ :=
  A390665.P2218711322630550871.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390754.P7808372230478735667

`A000010(A053149(n+1))`
-/

namespace A390754.P7808372230478735667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A053149 (n + 1)).toNat

end

end A390754.P7808372230478735667

noncomputable section

/-- A390754: The Euler totient of the smallest cube divisible by n.

Offset 1, canonical program `A390754.P7808372230478735667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390754 (n : ℕ) : ℤ :=
  A390754.P7808372230478735667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392088.P2713772725741587424

`A047994(A053149(n+1))`
-/

namespace A392088.P2713772725741587424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A053149 (n + 1)).toNat

end

end A392088.P2713772725741587424

noncomputable section

/-- A392088: The unitary totient of the smallest cube divisible by n.

Offset 1, canonical program `A392088.P2713772725741587424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392088 (n : ℕ) : ℤ :=
  A392088.P2713772725741587424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392169.P12898871919302007808

`A001615(A053149(n+1))`
-/

namespace A392169.P12898871919302007808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A053149 (n + 1)).toNat

end

end A392169.P12898871919302007808

noncomputable section

/-- A392169: The Dedekind psi function value of the smallest cube divisible by n.

Offset 1, canonical program `A392169.P12898871919302007808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392169 (n : ℕ) : ℤ :=
  A392169.P12898871919302007808.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392218.P16910627991504591076

`∏{d}[A349137(2*n+1), #]`
-/

namespace A392218.P16910627991504591076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A392218.P16910627991504591076

noncomputable section

/-- A392218: Product of the divisors of phi(n).

Offset 1, canonical program `A392218.P16910627991504591076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5182 terms. -/
def A392218 (n : ℕ) : ℤ :=
  (A392218.P16910627991504591076.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5182 terms. -/
def A392218.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A375272.P13151626788742865521

`log2(A331109(n+1))`
-/

namespace A375272.P13151626788742865521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A331109 (n + 1) : ℝ)

end

end A375272.P13151626788742865521

noncomputable section

/-- A375272: The number of factors of n of the form p^Fibonacci(k), where p is a prime and k >= 2, when the factorization is uniquely done using the dual Zeckendorf representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A375272.P13151626788742865521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375272 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375272.P13151626788742865521.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375766.P13293560451162268866

`A051903(A115063(n+1))`
-/

namespace A375766.P13293560451162268866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A115063 (n + 1)).toNat

end

end A375766.P13293560451162268866

noncomputable section

/-- A375766: The maximum exponent in the prime factorization of the numbers whose exponents in their prime factorization are all Fibonacci numbers.

Offset 1, canonical program `A375766.P13293560451162268866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A115063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375766 (n : ℕ) : ℤ :=
  A375766.P13293560451162268866.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A115063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379213.P13710358421444218836

`∏{e}[A277331(n), A000045(#)]`
-/

namespace A379213.P13710358421444218836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A379213.P13710358421444218836

noncomputable section

/-- A379213: a(n) is the number of nonnegative integers m such that A184615(m) = A003714(n).

Offset 0, canonical program `A379213.P13710358421444218836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A379213 (n : ℕ) : ℤ :=
  A379213.P13710358421444218836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A379213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391584.P15171015652483584175

`∩[2*n+1, A391585(n+1)]`
-/

namespace A391584.P15171015652483584175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391584.P15171015652483584175

noncomputable section

/-- A391584: Odd numbers k such that 3*k = A048720(m,k) for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391584.P15171015652483584175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. -/
def A391584 (n : ℕ) : ℤ :=
  (A391584.P15171015652483584175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. -/
def A391584.provenance : SequenceMachineLib.Provenance := .conjectured

