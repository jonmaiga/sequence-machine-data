import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C005
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C021
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
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

/-! ## A369455.P11186501427320355121

`∑{d}[n+1, A055615((n+1)/#)*A083345(#)]`
-/

namespace A369455.P11186501427320355121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A083345 d

end

end A369455.P11186501427320355121

noncomputable section

/-- A369455: Dirichlet convolution of A083345 with A055615 (Dirichlet inverse of n), where A083345(n) = (n'/gcd(n,n')) and n' is the arithmetic derivative of n.

Offset 1, canonical program `A369455.P11186501427320355121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369455 (n : ℕ) : ℤ :=
  A369455.P11186501427320355121.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369643.P13743877449333020422

`A079978(A083345(n+1))`
-/

namespace A369643.P13743877449333020422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A083345 (n + 1)).toNat

end

end A369643.P13743877449333020422

noncomputable section

/-- A369643: a(n) = 1 if n' / gcd(n,n') is a multiple of 3, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415.

Offset 1, canonical program `A369643.P13743877449333020422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369643 (n : ℕ) : ℤ :=
  A369643.P13743877449333020422.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373363.P15575351710331824762

`gcd(A001414(n+1), A083345(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373363.P15575351710331824762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A083345 (n + 1))

end

end A373363.P15575351710331824762

noncomputable section

/-- A373363: a(n) = gcd(A001414(n), A083345(n)), where A001414 is the sum of prime factors with repetition, and A083345 is the numerator of the sum of the inverses of prime factors with repetition.

Offset 1, canonical program `A373363.P15575351710331824762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373363 (n : ℕ) : ℤ :=
  (A373363.P15575351710331824762.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373377.P8579628552957542061

`gcd(A059975(n+1), A083345(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373377.P8579628552957542061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059975 (n + 1)) (A083345 (n + 1))

end

end A373377.P8579628552957542061

noncomputable section

/-- A373377: a(n) = gcd(A059975(n), A083345(n)), where A059975 is fully additive with a(p) = p-1, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

Offset 1, canonical program `A373377.P8579628552957542061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373377 (n : ℕ) : ℤ :=
  (A373377.P8579628552957542061.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373377.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A369258.P16975426313700226545

`A001227(n+1)-A369257(n+1)`
-/

namespace A369258.P16975426313700226545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A369257 (n + 1)

end

end A369258.P16975426313700226545

noncomputable section

/-- A369258: a(n) = number of odd divisors of n that have an odd number of prime factors with multiplicity.

Offset 1, canonical program `A369258.P16975426313700226545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369258 (n : ℕ) : ℤ :=
  A369258.P16975426313700226545.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370119.P13163184009623574713

`lt[0, A370118(n)]`
-/

namespace A370119.P13163184009623574713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370119.P13163184009623574713

noncomputable section

/-- A370119: Numbers whose arithmetic derivative is a multiple of 9.

Offset 1, canonical program `A370119.P13163184009623574713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A370119 (n : ℕ) : ℤ :=
  (A370119.P13163184009623574713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A370119.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A373372.P1234123365246061466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373372 (n : ℕ) : ℤ :=
  A373372.P1234123365246061466.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373597.P6733738680697274413

`∩[A369659(n+1), A373494(n+1)]`
-/

namespace A373597.P6733738680697274413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373597.P6733738680697274413

noncomputable section

/-- A373597: Non-multiples of 3 whose multiplicities of prime factors of types 3m-1 and 3m+1 are both multiples of 3.

Offset 1, canonical program `A373597.P6733738680697274413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. -/
def A373597 (n : ℕ) : ℤ :=
  (A373597.P6733738680697274413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. -/
def A373597.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A384452.P11109828349487245478

`A034676((n+1)!)`
-/

namespace A384452.P11109828349487245478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (Nat.factorial (n + 1))

end

end A384452.P11109828349487245478

noncomputable section

/-- A384452: a(n) is the sum of squares of the unitary divisors of n!.

Offset 1, canonical program `A384452.P11109828349487245478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384452 (n : ℕ) : ℤ :=
  A384452.P11109828349487245478.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385136.P7441573335229270188

`∑{d}[n+1, A384040(#)]`
-/

namespace A385136.P7441573335229270188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384040 d

end

end A385136.P7441573335229270188

noncomputable section

/-- A385136: The sum of divisors d of n such that n/d is a cubefull number (A036966).

Offset 1, canonical program `A385136.P7441573335229270188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385136 (n : ℕ) : ℤ :=
  A385136.P7441573335229270188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385136.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A389075.P12257504307077228747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389075 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389075.P12257504307077228747.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A390954.P15680149066390058450

`∑{d}[n+1, A390554(#)*A328254((n+1)/#)]`
-/

namespace A390954.P15680149066390058450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A390554 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390954.P15680149066390058450

noncomputable section

/-- A390954: Dirichlet convolution of A390554 and A328254.

Offset 1, canonical program `A390954.P15680149066390058450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328254, A390554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390954 (n : ℕ) : ℤ :=
  A390954.P15680149066390058450.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328254, A390554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390954.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391909.P11414189018115501503

`record[(n+1)*A391747(n+1)]`
-/

namespace A391909.P11414189018115501503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A391747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391909.P11414189018115501503

noncomputable section

/-- A391909: Numbers k such that -1 <= A195017(k) <= 1.

Offset 1, canonical program `A391909.P11414189018115501503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391909 (n : ℕ) : ℤ :=
  A391909.P11414189018115501503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369458.P12459843309324393945

`A369465(A163511(n))`
-/

namespace A369458.P12459843309324393945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369465 (A163511 n).toNat

end

end A369458.P12459843309324393945

noncomputable section

/-- A369458: Arithmetic derivative of the odd part of n, permuted by A163511 ("Doudna-sequence mirrored").

Offset 0, canonical program `A369458.P12459843309324393945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369458 (n : ℕ) : ℤ :=
  A369458.P12459843309324393945.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369655.P9734755882445867410

`A165560(n)*A165560(A003415(n))`
-/

namespace A369655.P9734755882445867410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n * A165560 (A003415 n).toNat

end

end A369655.P9734755882445867410

noncomputable section

/-- A369655: a(n) = 1 if n' is odd and also n'' is odd, otherwise 0, where n' stands for the arithmetic derivative, A003415.

Offset 0, canonical program `A369655.P9734755882445867410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165560, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369655 (n : ℕ) : ℤ :=
  A369655.P9734755882445867410.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165560, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369660.P11962281434868844871

`A369965(A003415(n))`
-/

namespace A369660.P11962281434868844871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (A003415 n).toNat

end

end A369660.P11962281434868844871

noncomputable section

/-- A369660: a(n) = 1 if n' is of the form 4k+2, and n' has an even number of prime factors, otherwise a(n) = 0, where n' stands for the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369660.P11962281434868844871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369660 (n : ℕ) : ℤ :=
  A369660.P11962281434868844871.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369660.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A373058.P8412675158221474829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373058 (n : ℕ) : ℤ :=
  A373058.P8412675158221474829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373058.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A374061.P16980433022031769018

`floor(A035185(n+1)/2)`
-/

namespace A374061.P16980433022031769018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035185 (n + 1) : ℚ) / 2⌋

end

end A374061.P16980433022031769018

noncomputable section

/-- A374061: Number of solutions to a^2 + n = 2 * b^2 with 0 < a < b.

Offset 1, canonical program `A374061.P16980433022031769018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061 (n : ℕ) : ℤ :=
  A374061.P16980433022031769018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391746.P1830056031143127677

`a(n-1)+A391747(n+1)` with `a(0)=1`
-/

namespace A391746.P1830056031143127677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A391747 (n + 1)

end

end A391746.P1830056031143127677

noncomputable section

/-- A391746: Number of terms of A391909 <= n.

Offset 1, canonical program `A391746.P1830056031143127677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391746 (n : ℕ) : ℤ :=
  A391746.P1830056031143127677.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391747, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392370.P3678449110929773305

`A005811(A006068(A341916(A362160(A341916(n)))))`
-/

namespace A392370.P3678449110929773305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006068 (A341916 (A362160 (A341916 n).toNat).toNat).toNat).toNat

end

end A392370.P3678449110929773305

noncomputable section

/-- A392370: Sum of even-indexed parts of the reversed n-th composition in standard order.

Offset 0, canonical program `A392370.P3678449110929773305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392370 (n : ℕ) : ℤ :=
  A392370.P3678449110929773305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395433.P113622241227022344

`A063934(A099801(n+1))`
-/

namespace A395433.P113622241227022344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (A099801 (n + 1)).toNat

end

end A395433.P113622241227022344

noncomputable section

/-- A395433: a(n) is the median of the odd primes less than 2n.

Offset 2, canonical program `A395433.P113622241227022344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395433 (n : ℕ) : ℤ :=
  A395433.P113622241227022344.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399779.P14676773210088462195

`∑[A341994((n+1)²)]+1`
-/

namespace A399779.P14676773210088462195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A399779.P14676773210088462195

noncomputable section

/-- A399779: Maximum size of a subset S of {1,...,n} such that x does not divide y*z for any x,y,z in S with x != y and x != z.

Offset 1, canonical program `A399779.P14676773210088462195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A399779 (n : ℕ) : ℤ :=
  A399779.P14676773210088462195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A399779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399831.P9352319243903294152

`A365171(A365683(n+1)²)`
-/

namespace A399831.P9352319243903294152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (A365683 (n + 1) ^ 2).toNat

end

end A399831.P9352319243903294152

noncomputable section

/-- A399831: The number of divisors d of n such that gcud(d, n/d) is an exponentially odd number (A268335), where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399831.P9352319243903294152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A399831 (n : ℕ) : ℤ :=
  A399831.P9352319243903294152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A399831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399832.P16012869787314435450

`A365171(A129194(n+1))`
-/

namespace A399832.P16012869787314435450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (A129194 (n + 1)).toNat

end

end A399832.P16012869787314435450

noncomputable section

/-- A399832: The number of divisors d of n such that gcud(d, n/d) is odd, where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399832.P16012869787314435450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A399832 (n : ℕ) : ℤ :=
  A399832.P16012869787314435450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A399832.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A370395.P6591152245152172924

`A061368(n+2)+1`
-/

namespace A370395.P6591152245152172924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 2) + 1

end

end A370395.P6591152245152172924

noncomputable section

/-- A370395: Numbers k that are neither squarefree nor prime powers sandwiched between twin primes.

Offset 1, canonical program `A370395.P6591152245152172924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A370395 (n : ℕ) : ℤ :=
  A370395.P6591152245152172924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A370395.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379372.P8846924178214362787

`filter[A234099(n+1), A354926(#)]`
-/

namespace A379372.P8846924178214362787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A379372.P8846924178214362787

noncomputable section

/-- A379372: Sphenic numbers k such that 2*k+1 is also a sphenic number.

Offset 1, canonical program `A379372.P8846924178214362787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1906 terms. -/
def A379372 (n : ℕ) : ℤ :=
  A379372.P8846924178214362787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1906 terms. -/
def A379372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381204.P350150440246821859

`A348494(A100994(n+2))`
-/

namespace A381204.P350150440246821859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348494 (A100994 (n + 2)).toNat

end

end A381204.P350150440246821859

noncomputable section

/-- A381204: a(n) is the gcd of the elements of the set of bases and exponents in the prime factorization of n.

Offset 2, canonical program `A381204.P350150440246821859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A381204 (n : ℕ) : ℤ :=
  A381204.P350150440246821859.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A381204.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A398921.P360374842109008967

`A006218(n+1)+A143127(n+1)-2*A024916(n+1)`
-/

namespace A398921.P360374842109008967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + A143127 (n + 1) - 2 * A024916 (n + 1)

end

end A398921.P360374842109008967

noncomputable section

/-- A398921: Number of solutions of the Diophantine inequality (a+c)*(b+d) <= n with a,b,c,d >= 1.

Offset 1, canonical program `A398921.P360374842109008967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143127, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398921 (n : ℕ) : ℤ :=
  A398921.P360374842109008967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143127, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398921.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401240.P17744017007182086157

`∑{e}[A342007(n+1), #]`
-/

namespace A401240.P17744017007182086157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A401240.P17744017007182086157

noncomputable section

/-- A401240: The number of divisors of n that are prime powers of the form p^(k*p), with p prime and k >= 1.

Offset 1, canonical program `A401240.P17744017007182086157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401240 (n : ℕ) : ℤ :=
  (A401240.P17744017007182086157.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401240.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379915.P7134808796685260794

`A033879(A046388(n+1))/2`
-/

namespace A379915.P7134808796685260794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (A046388 (n + 1)).toNat : ℚ) / 2

end

end A379915.P7134808796685260794

noncomputable section

/-- A379915: a(n) is the deficiency of the odd squarefree semiprime A046388(n), divided by 2.

Offset 1, canonical program `A379915.P7134808796685260794`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379915 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379915.P7134808796685260794.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379915.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A391184.P7621874213617609093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391184 (n : ℕ) : ℤ :=
  A391184.P7621874213617609093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391185.P11876342438448710948

`∑{d}[n+1, A391183(#)*#]`
-/

namespace A391185.P11876342438448710948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A391183 d * (d : ℤ)

end

end A391185.P11876342438448710948

noncomputable section

/-- A391185: The sum of the divisors of n that are of the form x^2 + 2*y^2 (A002479).

Offset 1, canonical program `A391185.P11876342438448710948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391185 (n : ℕ) : ℤ :=
  A391185.P11876342438448710948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391185.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370079.P12845110108102492018

`A005361(A350389(n+1))`
-/

namespace A370079.P12845110108102492018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A350389 (n + 1)).toNat

end

end A370079.P12845110108102492018

noncomputable section

/-- A370079: The product of the odd exponents of the prime factorization of n.

Offset 1, canonical program `A370079.P12845110108102492018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370079 (n : ℕ) : ℤ :=
  A370079.P12845110108102492018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374538.P5898032326319891676

`A034676(A350389(n+1))`
-/

namespace A374538.P5898032326319891676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A350389 (n + 1)).toNat

end

end A374538.P5898032326319891676

noncomputable section

/-- A374538: a(n) is the sum of the squares of the unitary divisors of n that are exponentially odd numbers (A268335).

Offset 1, canonical program `A374538.P5898032326319891676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374538 (n : ℕ) : ℤ :=
  A374538.P5898032326319891676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374538.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A380165.P2435245022523968233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380165 (n : ℕ) : ℤ :=
  A380165.P2435245022523968233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380165.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A384049.P5600847465475785129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384049 (n : ℕ) : ℤ :=
  A384049.P5600847465475785129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A384051.P18231078601636617959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384051 (n : ℕ) : ℤ :=
  A384051.P18231078601636617959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A384052.P2784021690662808847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384052 (n : ℕ) : ℤ :=
  A384052.P2784021690662808847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A384054.P17702262864445494828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384054 (n : ℕ) : ℤ :=
  A384054.P17702262864445494828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A392059.P3818747102028578455

`∏[A392055(n+1)]`
-/

namespace A392059.P3818747102028578455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A392059.P3818747102028578455

noncomputable section

/-- A392059: a(n) is the product of all p^k such that p is a ramified or inert prime in the Gaussian integers and k is the largest such k satisfying p^k <= n.

Offset 1, canonical program `A392059.P3818747102028578455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A392059 (n : ℕ) : ℤ :=
  A392059.P3818747102028578455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A392059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399732.P10852493408418534580

`A360540(n+1)*A371242(n+1)`
-/

namespace A399732.P10852493408418534580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (n + 1) * A371242 (n + 1)

end

end A399732.P10852493408418534580

noncomputable section

/-- A399732: The sum of the unitary divisors d of n such that n/d is cubefree.

Offset 1, canonical program `A399732.P10852493408418534580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399732 (n : ℕ) : ℤ :=
  A399732.P10852493408418534580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399828.P9872746706796566562

`A366147(n+1)*A368172(n+1)`
-/

namespace A399828.P9872746706796566562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366147 (n + 1) * A368172 (n + 1)

end

end A399828.P9872746706796566562

noncomputable section

/-- A399828: The number of divisors d of n such that gcud(d, n/d) is squarefree, where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399828.P9872746706796566562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399828 (n : ℕ) : ℤ :=
  A399828.P9872746706796566562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369310.P4588423880105354459

`A190867(n+1)*A365498(n+1)`
-/

namespace A369310.P4588423880105354459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 (n + 1) * A365498 (n + 1)

end

end A369310.P4588423880105354459

noncomputable section

/-- A369310: The number of divisors d of n such that gcd(d, n/d) is a powerful number.

Offset 1, canonical program `A369310.P4588423880105354459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369310 (n : ℕ) : ℤ :=
  A369310.P4588423880105354459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369310.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389481.P15172081649911050968

`p?[A080541(p?[2*n+1])]`
-/

namespace A389481.P15172081649911050968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A389481.P15172081649911050968

noncomputable section

/-- A389481: Primes that remain prime when their binary digits are rotated once to the right.

Offset 1, canonical program `A389481.P15172081649911050968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A389481 (n : ℕ) : ℤ :=
  A389481.P15172081649911050968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A389481.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A390754.P7808372230478735667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390754 (n : ℕ) : ℤ :=
  A390754.P7808372230478735667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

Offset 1, canonical program `A392088.P2713772725741587424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392088 (n : ℕ) : ℤ :=
  A392088.P2713772725741587424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

