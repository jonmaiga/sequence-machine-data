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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
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
import Seq.B001.C010
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A023830.P15633288561888369434

`A023829(n+4)-A001222(3*(n+4)+4)+A001222(n+1)`
-/

namespace A023830.P15633288561888369434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023829 (n + 4) - A001222 (3 * (n + 4) + 4) + A001222 (n + 1)

end

end A023830.P15633288561888369434

noncomputable section

/-- A023830: Sum of exponents in prime-power factorization of C(4n,n-4).

Offset 4, canonical program `A023830.P15633288561888369434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023830 (n : ℕ) : ℤ :=
  A023830.P15633288561888369434.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023830.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038816.P17540231470630764763

`A038815(10*(n+1))`
-/

namespace A038816.P17540231470630764763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038815 (10 * (n + 1))

end

end A038816.P17540231470630764763

noncomputable section

/-- A038816: Number of primes less than n*10^7.

Offset 1, canonical program `A038816.P17540231470630764763`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038816 (n : ℕ) : ℤ :=
  A038816.P17540231470630764763.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038816.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176500.P10455789036156632366

`2*A176499(n+1)-3`
-/

namespace A176500.P10455789036156632366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176499 (n + 1) - 3

end

end A176500.P10455789036156632366

noncomputable section

/-- A176500: a(n) = 2*Farey(Fibonacci(n + 1)) - 3.

Offset 1, canonical program `A176500.P10455789036156632366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176500 (n : ℕ) : ℤ :=
  A176500.P10455789036156632366.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020479.P12170762038309436866

`(n+2)^4-A000252(n+2)`
-/

namespace A020479.P12170762038309436866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 4 : ℤ) - A000252 (n + 2)

end

end A020479.P12170762038309436866

noncomputable section

/-- A020479: Number of noninvertible 2 X 2 matrices over Z/nZ (determinant is a divisor of 0).

Offset 2, canonical program `A020479.P12170762038309436866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020479 (n : ℕ) : ℤ :=
  A020479.P12170762038309436866.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029883.P16402799982168113119

`2-A007413(n+1)`
-/

namespace A029883.P16402799982168113119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007413 (n + 1)

end

end A029883.P16402799982168113119

noncomputable section

/-- A029883: First differences of Thue-Morse sequence A001285.

Offset 1, canonical program `A029883.P16402799982168113119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029883 (n : ℕ) : ℤ :=
  A029883.P16402799982168113119.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060856.P9769881644998200801

`A039622(n+2)/(n+2)`
-/

namespace A060856.P9769881644998200801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039622 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A060856.P9769881644998200801

noncomputable section

/-- A060856: Multi-dimensional Catalan numbers: diagonal T(n,n+2) of A060854.

Offset 1, canonical program `A060856.P9769881644998200801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060856 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060856.P9769881644998200801.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060856.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066254.P14705389908508388282

`A066250(A066250(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066254.P14705389908508388282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066250 (A066250 (n + 1)).toNat

end

end A066254.P14705389908508388282

noncomputable section

/-- A066254: a(n) = A066250(A066250(n)).

Offset 1, canonical program `A066254.P14705389908508388282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066254 (n : ℕ) : ℤ :=
  A066254.P14705389908508388282.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066254.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067700.P5517301389494608979

`2*A039622(n)`
-/

namespace A067700.P5517301389494608979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039622 n

end

end A067700.P5517301389494608979

noncomputable section

/-- A067700: a(n) = 2*(n^2)!*Product_{k=0..n-1} k!/(n+k)!.

Offset 0, canonical program `A067700.P5517301389494608979`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067700 (n : ℕ) : ℤ :=
  A067700.P5517301389494608979.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070943.P14364430333234565674

`A000252(n+1)*A062354(n+1)`
-/

namespace A070943.P14364430333234565674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000252 (n + 1) * A062354 (n + 1)

end

end A070943.P14364430333234565674

noncomputable section

/-- A070943: Commuting elements: number of ordered pairs g, h in the group GL(2,Z_n) such that gh = hg.

Offset 1, canonical program `A070943.P14364430333234565674`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070943 (n : ℕ) : ℤ :=
  A070943.P14364430333234565674.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070943.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079402.P8247950100287683807

`A039622(n)²`
-/

namespace A079402.P8247950100287683807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039622 n ^ 2

end

end A079402.P8247950100287683807

noncomputable section

/-- A079402: Number of permutations of n^2 distinct integers free of any monotonic increasing or decreasing (n+1)-subsequence.

Offset 0, canonical program `A079402.P8247950100287683807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079402 (n : ℕ) : ℤ :=
  A079402.P8247950100287683807.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079402.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082953.P9111907207712937456

`A000252(n+1)/A070732(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082953.P9111907207712937456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A070732 (n + 1) : ℚ)

end

end A082953.P9111907207712937456

noncomputable section

/-- A082953: a(n) = A000252(n) / A070732(n).

Offset 1, canonical program `A082953.P9111907207712937456`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082953 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082953.P9111907207712937456.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082953.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089215.P9624417689871271006

`A209281(n+1)+1`
-/

namespace A089215.P9624417689871271006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (n + 1) + 1

end

end A089215.P9624417689871271006

noncomputable section

/-- A089215: Thue-Morse sequence on the integers.

Offset 1, canonical program `A089215.P9624417689871271006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089215 (n : ℕ) : ℤ :=
  A089215.P9624417689871271006.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089215.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166698.P12793159027236630514

`A353557(n+1)-A353558(n+1)`
-/

namespace A166698.P12793159027236630514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) - A353558 (n + 1)

end

end A166698.P12793159027236630514

noncomputable section

/-- A166698: Totally multiplicative sequence with a(p) = a(p-1) - 1 for prime p.

Offset 1, canonical program `A166698.P12793159027236630514`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166698 (n : ℕ) : ℤ :=
  A166698.P12793159027236630514.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166698.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037809.P4595952055594369348

`A056973(n+1)+A000120(n+1)-1`
-/

namespace A037809.P4595952055594369348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (n + 1) + A000120 (n + 1) - 1

end

end A037809.P4595952055594369348

noncomputable section

/-- A037809: Number of i such that d(i) <= d(i-1), where Sum_{i=0..m} d(i)*2^i is the base-2 representation of n.

Offset 1, canonical program `A037809.P4595952055594369348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037809 (n : ℕ) : ℤ :=
  A037809.P4595952055594369348.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037809.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048741.P2194570441843201245

`A007956(A002808(n+1))`
-/

namespace A048741.P2194570441843201245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (A002808 (n + 1)).toNat

end

end A048741.P2194570441843201245

noncomputable section

/-- A048741: Product of aliquot divisors of composite n (1 and primes omitted).

Offset 1, canonical program `A048741.P2194570441843201245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048741 (n : ℕ) : ℤ :=
  A048741.P2194570441843201245.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059137.P16002026558254797629

`18*A037227(n+1)`
-/

namespace A059137.P16002026558254797629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A037227 (n + 1)

end

end A059137.P16002026558254797629

noncomputable section

/-- A059137: A hierarchical sequence (W3{2,2}cc - see A059126).

Offset 0, canonical program `A059137.P16002026558254797629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059137 (n : ℕ) : ℤ :=
  A059137.P16002026558254797629.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061202.P15389069381190773999

`∑{#}[n, A061201(floor((n+1)/(#+1)))]`
-/

namespace A061202.P15389069381190773999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A061201 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A061202.P15389069381190773999

noncomputable section

/-- A061202: (tau<=)_4(n).

Offset 1, canonical program `A061202.P15389069381190773999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061202 (n : ℕ) : ℤ :=
  A061202.P15389069381190773999.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064031.P6654393610759162702

`A061538((n+1)!)`
-/

namespace A064031.P6654393610759162702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061538 (Nat.factorial (n + 1))

end

end A064031.P6654393610759162702

noncomputable section

/-- A064031: Product of non-unitary divisors of n!.

Offset 1, canonical program `A064031.P6654393610759162702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064031 (n : ℕ) : ℤ :=
  A064031.P6654393610759162702.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064033.P4449831178947753500

`A061538(A001405(n+1))`
-/

namespace A064033.P4449831178947753500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061538 (A001405 (n + 1)).toNat

end

end A064033.P4449831178947753500

noncomputable section

/-- A064033: Product of non-unitary divisors of binomial(n, floor(n/2)) or a(n) = 1 if all divisors are unitary. See A046098.

Offset 1, canonical program `A064033.P4449831178947753500`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064033 (n : ℕ) : ℤ :=
  A064033.P4449831178947753500.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064033.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066883.P6672544760734734469

`A054272(n+1)-A000040(n+1)`
-/

namespace A066883.P6672544760734734469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1) - A000040 (n + 1)

end

end A066883.P6672544760734734469

noncomputable section

/-- A066883: Number of primes in the interval [p(n), p(n)^2] minus p(n), where p(n) is the n-th prime.

Offset 1, canonical program `A066883.P6672544760734734469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066883 (n : ℕ) : ℤ :=
  A066883.P6672544760734734469.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068504.P594807329965681907

`2^A023512(n+1)`
-/

namespace A068504.P594807329965681907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A023512 (n + 1) : ℤ)

end

end A068504.P594807329965681907

noncomputable section

/-- A068504: Highest power of 2 dividing prime(n)+1.

Offset 1, canonical program `A068504.P594807329965681907`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068504.P594807329965681907.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068504.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069177.P13745944220105453533

`2^A053574(n+1)`
-/

namespace A069177.P13745944220105453533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A053574 (n + 1) : ℤ)

end

end A069177.P13745944220105453533

noncomputable section

/-- A069177: Maximal power of 2 that divides Phi(n), or the size of the Sylow 2-subgroup of the group of units mod n.

Offset 1, canonical program `A069177.P13745944220105453533`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069177 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069177.P13745944220105453533.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069177.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069733.P5802744394708498839

`A000005(A259445(n+1))`
-/

namespace A069733.P5802744394708498839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A259445 (n + 1)).toNat

end

end A069733.P5802744394708498839

noncomputable section

/-- A069733: Number of divisors d of n such that d or n/d is odd. Number of non-orientable coverings of the Klein bottle with n lists.

Offset 1, canonical program `A069733.P5802744394708498839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069733 (n : ℕ) : ℤ :=
  A069733.P5802744394708498839.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071224.P12951188151330650985

`(n+1)*A002808(n+1)/A064814(n+1)`
-/

namespace A071224.P12951188151330650985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A002808 (n + 1) : ℚ) / (A064814 (n + 1) : ℚ)

end

end A071224.P12951188151330650985

noncomputable section

/-- A071224: LCM of n and n-th composite number.

Offset 1, canonical program `A071224.P12951188151330650985`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071224 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071224.P12951188151330650985.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072046.P1909165167796001889

`gcd(A007955(n+1), A055067(n+1))`
-/

namespace A072046.P1909165167796001889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007955 (n + 1)) (A055067 (n + 1))

end

end A072046.P1909165167796001889

noncomputable section

/-- A072046: Greatest common divisor of product of divisors of n and product of non-divisors < n.

Offset 1, canonical program `A072046.P1909165167796001889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072046 (n : ℕ) : ℤ :=
  (A072046.P1909165167796001889.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073719.P6846242541982887763

`floor(A033844(n)/A065856(n))`
-/

namespace A073719.P6846242541982887763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033844 n : ℚ) / (A065856 n : ℚ)⌋

end

end A073719.P6846242541982887763

noncomputable section

/-- A073719: a(n) = floor(prime(2^n)/composite(2^n)).

Offset 0, canonical program `A073719.P6846242541982887763`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073719 (n : ℕ) : ℤ :=
  A073719.P6846242541982887763.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076236.P15465252075086350596

`A050435(n+1)%A002808(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076236.P15465252075086350596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050435 (n + 1)) (A002808 (n + 1))

end

end A076236.P15465252075086350596

noncomputable section

/-- A076236: a(n) = A050435(n) mod A002808(n).

Offset 1, canonical program `A076236.P15465252075086350596`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050435(n+1)%A002808(n+1)` (program `A076236.P15465252075086350596`, by `A076236.P15465252075086350596.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A076236 (n : ℕ) : ℤ :=
  A076236.P15465252075086350596.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050435(n+1)%A002808(n+1)` (program `A076236.P15465252075086350596`, by `A076236.P15465252075086350596.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A076236.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A076237.P11217215264667886405

`A050435(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076237.P11217215264667886405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050435 (n + 1)) (n + 1 : ℤ)

end

end A076237.P11217215264667886405

noncomputable section

/-- A076237: a(n) = A050435(n) mod n.

Offset 1, canonical program `A076237.P11217215264667886405`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050435(n+1)%(n+1)` (program `A076237.P11217215264667886405`, by `A076237.P11217215264667886405.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A076237 (n : ℕ) : ℤ :=
  A076237.P11217215264667886405.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050435(n+1)%(n+1)` (program `A076237.P11217215264667886405`, by `A076237.P11217215264667886405.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A076237.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A078153.P11915035993394285373

`A051201(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078153.P11915035993394285373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 1) - A000203 (n + 1)

end

end A078153.P11915035993394285373

noncomputable section

/-- A078153: a(n) = A051201(n) - A000203(n).

Offset 1, canonical program `A078153.P11915035993394285373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078153 (n : ℕ) : ℤ :=
  A078153.P11915035993394285373.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078153.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078161.P15379382876916595624

`A051201(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078161.P15379382876916595624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (2 ^ n)

end

end A078161.P15379382876916595624

noncomputable section

/-- A078161: a(n) = A051201(2^n).

Offset 0, canonical program `A078161.P15379382876916595624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078161 (n : ℕ) : ℤ :=
  A078161.P15379382876916595624.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078162.P2737128330194667250

`A051201(n!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078162.P2737128330194667250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (Nat.factorial n)

end

end A078162.P2737128330194667250

noncomputable section

/-- A078162: a(n) = A051201(n!).

Offset 0, canonical program `A078162.P2737128330194667250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078162 (n : ℕ) : ℤ :=
  A078162.P2737128330194667250.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078163.P10734314273824272191

`A051201((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078163.P10734314273824272191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 ((n + 1) ^ 2)

end

end A078163.P10734314273824272191

noncomputable section

/-- A078163: a(n) = A051201(n^2).

Offset 1, canonical program `A078163.P10734314273824272191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078163 (n : ℕ) : ℤ :=
  A078163.P10734314273824272191.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078163.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078172.P693633647040685283

`A051201(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078172.P693633647040685283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (A000040 (n + 1)).toNat

end

end A078172.P693633647040685283

noncomputable section

/-- A078172: a(n) = A051201(A000040(n)).

Offset 1, canonical program `A078172.P693633647040685283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078172 (n : ℕ) : ℤ :=
  A078172.P693633647040685283.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083345.P17056663291398447745

`A342001(n+1)/A369008(n+1)`
-/

namespace A083345.P17056663291398447745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (A369008 (n + 1) : ℚ)

end

end A083345.P17056663291398447745

noncomputable section

/-- A083345: Numerator of r(n) = Sum(e/p: n=Product(p^e)); a(n) = n' / gcd(n,n'), where n' is the arithmetic derivative of n.

Offset 1, canonical program `A083345.P17056663291398447745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083345 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083345.P17056663291398447745.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083345.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083399.P16148020281325742632

`A000005(n+1)-A055212(n+1)`
-/

namespace A083399.P16148020281325742632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A055212 (n + 1)

end

end A083399.P16148020281325742632

noncomputable section

/-- A083399: Number of divisors of n that are not divisors of other divisors of n.

Offset 1, canonical program `A083399.P16148020281325742632`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083399 (n : ℕ) : ℤ :=
  A083399.P16148020281325742632.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083399.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085062.P13663809512350545089

`A085060(n)/9-1/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085062.P13663809512350545089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085060 n : ℚ) / 9 - (1 : ℚ) / 3

end

end A085062.P13663809512350545089

noncomputable section

/-- A085062: a(n) = A085060(n)/9 - 1/3.

Offset 0, canonical program `A085062.P13663809512350545089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085062 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085062.P13663809512350545089.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086222.P1188365077820885668

`A086165(n+1)+A048691(n+1)`
-/

namespace A086222.P1188365077820885668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086165 (n + 1) + A048691 (n + 1)

end

end A086222.P1188365077820885668

noncomputable section

/-- A086222: a(n) = card{ (x,y,z) | x <= y <= z and lcm(x,y,z) = n }.

Offset 1, canonical program `A086222.P1188365077820885668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086222 (n : ℕ) : ℤ :=
  A086222.P1188365077820885668.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091282.P45468277352217509

`A023506(n+1)+A023512(n+1)`
-/

namespace A091282.P45468277352217509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1) + A023512 (n + 1)

end

end A091282.P45468277352217509

noncomputable section

/-- A091282: Exponent of 2 in the prime factorization of prime(n)^2 - 1.

Offset 1, canonical program `A091282.P45468277352217509`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091282 (n : ℕ) : ℤ :=
  A091282.P45468277352217509.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091282.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092339.P11324540201180238684

`A080791(A003188(n))`
-/

namespace A092339.P11324540201180238684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A003188 n).toNat

end

end A092339.P11324540201180238684

noncomputable section

/-- A092339: Number of adjacent identical digits in the binary representation of n.

Offset 0, canonical program `A092339.P11324540201180238684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092339 (n : ℕ) : ℤ :=
  A092339.P11324540201180238684.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092339.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094267.P5737536651550567383

`(-1)^n*A050603(n)`
-/

namespace A094267.P5737536651550567383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A050603 n

end

end A094267.P5737536651550567383

noncomputable section

/-- A094267: First differences of A001511.

Offset 0, canonical program `A094267.P5737536651550567383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094267 (n : ℕ) : ℤ :=
  A094267.P5737536651550567383.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095256.P4900978918232643053

`A057494(n+1)-(n+2)²`
-/

namespace A095256.P4900978918232643053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057494 (n + 1) - ((n + 2) ^ 2 : ℤ)

end

end A095256.P4900978918232643053

noncomputable section

/-- A095256: Number of numbers not divisible by 10 that stay multiples of themselves when freed of their last n digits.

Offset 1, canonical program `A095256.P4900978918232643053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095256 (n : ℕ) : ℤ :=
  A095256.P4900978918232643053.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095256.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106799.P9008647857558368840

`A087436(n+1)-A007949(n+1)`
-/

namespace A106799.P9008647857558368840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) - A007949 (n + 1)

end

end A106799.P9008647857558368840

noncomputable section

/-- A106799: Number of prime factors of n apart from 2 or 3, counted with multiplicity.

Offset 1, canonical program `A106799.P9008647857558368840`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106799 (n : ℕ) : ℤ :=
  A106799.P9008647857558368840.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120633.P6768074309854591197

`A062234(n+1)-A070046(n+1)+1`
-/

namespace A120633.P6768074309854591197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) - A070046 (n + 1) + 1

end

end A120633.P6768074309854591197

noncomputable section

/-- A120633: Number of composite numbers bounded inclusively between p(n+1) and 2*p(n) where p(x) is prime(x).

Offset 1, canonical program `A120633.P6768074309854591197`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120633 (n : ℕ) : ℤ :=
  A120633.P6768074309854591197.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121444.P10718778416213000801

`A052343(3*n+1)`
-/

namespace A121444.P10718778416213000801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (3 * n + 1)

end

end A121444.P10718778416213000801

noncomputable section

/-- A121444: Expansion of f(x^3, x^9) * f(x, x^2) in powers of x where f(, ) is Ramanujan's general theta functions.

Offset 0, canonical program `A121444.P10718778416213000801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121444 (n : ℕ) : ℤ :=
  A121444.P10718778416213000801.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121444.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129188.P9160643260024677217

`n+1+A064799(n+1)`
-/

namespace A129188.P9160643260024677217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A064799 (n + 1)

end

end A129188.P9160643260024677217

noncomputable section

/-- A129188: n + n-th prime + n-th composite.

Offset 1, canonical program `A129188.P9160643260024677217`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129188 (n : ℕ) : ℤ :=
  A129188.P9160643260024677217.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129188.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129189.P3252235154664414244

`A064799(n+1)-(n+1)`
-/

namespace A129189.P3252235154664414244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1) - (n + 1 : ℤ)

end

end A129189.P3252235154664414244

noncomputable section

/-- A129189: n-th prime + n-th composite - n.

Offset 1, canonical program `A129189.P3252235154664414244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129189 (n : ℕ) : ℤ :=
  A129189.P3252235154664414244.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129189.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135561.P11630210511762814417

`2^A135560(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135561.P11630210511762814417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A135560 (n + 1) : ℤ) - 1

end

end A135561.P11630210511762814417

noncomputable section

/-- A135561: a(n) = 2^A135560(n) - 1.

Offset 1, canonical program `A135561.P11630210511762814417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135561 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135561.P11630210511762814417.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136364.P1042819273145216496

`A057494(n+1)-2*10^(n+1)+1`
-/

namespace A136364.P1042819273145216496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057494 (n + 1) - (2 * 10 ^ (n + 1) : ℤ) + 1

end

end A136364.P1042819273145216496

noncomputable section

/-- A136364: a(n) = Sum_{ composite k, 1 <= k <= 10^n} (Number of divisors d of k with 1 < d < k).

Offset 1, canonical program `A136364.P1042819273145216496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136364 (n : ℕ) : ℤ :=
  A136364.P1042819273145216496.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136364.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144574.P9397896926800657027

`A151799(A078782(n+1))`
-/

namespace A144574.P9397896926800657027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A078782 (n + 1)).toNat

end

end A144574.P9397896926800657027

noncomputable section

/-- A144574: Largest prime < nonprime(prime(n)).

Offset 1, canonical program `A144574.P9397896926800657027`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144574 (n : ℕ) : ℤ :=
  A144574.P9397896926800657027.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144574.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152985.P2219434118744264934

`A152770(A000290(n+1))`
-/

namespace A152985.P2219434118744264934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A000290 (n + 1)).toNat

end

end A152985.P2219434118744264934

noncomputable section

/-- A152985: Sum of proper divisors minus the number of proper divisors of the square A000290(n).

Offset 1, canonical program `A152985.P2219434118744264934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152985 (n : ℕ) : ℤ :=
  A152985.P2219434118744264934.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152986.P4892744179053441096

`A152770(A000326(n+1))`
-/

namespace A152986.P4892744179053441096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A000326 (n + 1)).toNat

end

end A152986.P4892744179053441096

noncomputable section

/-- A152986: Sum of proper divisors minus the number of proper divisors of pentagonal number A000326(n).

Offset 1, canonical program `A152986.P4892744179053441096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152986 (n : ℕ) : ℤ :=
  A152986.P4892744179053441096.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152988.P2080984935002552249

`A152770(A000108(n))`
-/

namespace A152988.P2080984935002552249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A000108 n).toNat

end

end A152988.P2080984935002552249

noncomputable section

/-- A152988: Sum of proper divisors minus the number of proper divisors of Catalan number A000108(n).

Offset 0, canonical program `A152988.P2080984935002552249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152988 (n : ℕ) : ℤ :=
  A152988.P2080984935002552249.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152989.P9271480761926204214

`A152770(A000217(n+1))`
-/

namespace A152989.P9271480761926204214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A000217 (n + 1)).toNat

end

end A152989.P9271480761926204214

noncomputable section

/-- A152989: Sum of proper divisors minus the number of proper divisors of triangular number A000217(n).

Offset 1, canonical program `A152989.P9271480761926204214`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152989 (n : ℕ) : ℤ :=
  A152989.P9271480761926204214.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152990.P2911207475530451392

`A152770(A000045(n+1))`
-/

namespace A152990.P2911207475530451392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A000045 (n + 1)).toNat

end

end A152990.P2911207475530451392

noncomputable section

/-- A152990: Sum of proper divisors minus the number of proper divisors of Fibonacci number A000045(n).

Offset 1, canonical program `A152990.P2911207475530451392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152990 (n : ℕ) : ℤ :=
  A152990.P2911207475530451392.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153011.P18266022580685187752

`A152770(n+1)-A051953(n+1)+1`
-/

namespace A153011.P18266022580685187752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) - A051953 (n + 1) + 1

end

end A153011.P18266022580685187752

noncomputable section

/-- A153011: Sum of proper divisors, minus the number of proper divisors, minus cototient of n, plus 1.

Offset 1, canonical program `A153011.P18266022580685187752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153011 (n : ℕ) : ℤ :=
  A153011.P18266022580685187752.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153825.P2086424196053372448

`A152770(A000142(n))`
-/

namespace A153825.P2086424196053372448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A000142 n).toNat

end

end A153825.P2086424196053372448

noncomputable section

/-- A153825: Sum of proper divisors minus the number of proper divisors of n!.

Offset 0, canonical program `A153825.P2086424196053372448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153825 (n : ℕ) : ℤ :=
  A153825.P2086424196053372448.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153825.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154349.P14725127565816757340

`A152770(A001006(n))`
-/

namespace A154349.P14725127565816757340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A001006 n).toNat

end

end A154349.P14725127565816757340

noncomputable section

/-- A154349: Sum of proper divisors minus the number of proper divisors of Motzkin number A001006(n).

Offset 0, canonical program `A154349.P14725127565816757340`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154349 (n : ℕ) : ℤ :=
  A154349.P14725127565816757340.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161975.P15136247777327515862

`A000217(A002808(n+1))-A000217(A046343(n+1)-1)`
-/

namespace A161975.P15136247777327515862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002808 (n + 1)).toNat - A000217 (A046343 (n + 1) - 1).toNat

end

end A161975.P15136247777327515862

noncomputable section

/-- A161975: Sum_{x=sum of prime factors of n-th composite..n-th composite} x.

Offset 1, canonical program `A161975.P15136247777327515862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161975 (n : ℕ) : ℤ :=
  A161975.P15136247777327515862.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161975.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162197.P797128533422981654

`A161912(n)-A061358(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162197.P797128533422981654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 n - A061358 n

end

end A162197.P797128533422981654

noncomputable section

/-- A162197: a(n) = A161912(n) - A061358(n).

Offset 0, canonical program `A162197.P797128533422981654`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162197 (n : ℕ) : ℤ :=
  A162197.P797128533422981654.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162728.P11930583018672427365

`A000010(n+1)*A090740(n+1)`
-/

namespace A162728.P11930583018672427365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A090740 (n + 1)

end

end A162728.P11930583018672427365

noncomputable section

/-- A162728: G.f.: x/(1-x) = Sum_{n>=1} a(n)*log(1+x^n)/n.

Offset 1, canonical program `A162728.P11930583018672427365`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162728 (n : ℕ) : ℤ :=
  A162728.P11930583018672427365.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174425.P9911007775438505135

`A057494(n+1)-A057494(n)-2*(n+1)-1`
-/

namespace A174425.P9911007775438505135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057494 (n + 1) - A057494 n - (2 * (n + 1) : ℤ) - 1

end

end A174425.P9911007775438505135

noncomputable section

/-- A174425: Total number of divisors of all n-digit numbers.

Offset 1, canonical program `A174425.P9911007775438505135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174425 (n : ℕ) : ℤ :=
  A174425.P9911007775438505135.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174425.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180365.P9491354516201512416

`A061201(10^n)`
-/

namespace A180365.P9491354516201512416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 (10 ^ n)

end

end A180365.P9491354516201512416

noncomputable section

/-- A180365: Partial sums up to 10^n of A007425.

Offset 0, canonical program `A180365.P9491354516201512416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180365 (n : ℕ) : ℤ :=
  A180365.P9491354516201512416.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180365.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182582.P13784820974145358773

`(A096268(n)+A182581(n+1))%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182582.P13784820974145358773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096268 n + A182581 (n + 1)) 2

end

end A182582.P13784820974145358773

noncomputable section

/-- A182582: a(n) = (A096268(n-1) + A182581(n)) mod 2.

Offset 1, canonical program `A182582.P13784820974145358773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182582 (n : ℕ) : ℤ :=
  A182582.P13784820974145358773.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183095.P16118821317782953757

`A183093(n+1)+1`
-/

namespace A183095.P16118821317782953757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (n + 1) + 1

end

end A183095.P16118821317782953757

noncomputable section

/-- A183095: a(n) = number of divisors d of n that are either 1 or of the form Product_(i) (p_i^e_i) where e_i = 1 for at least one i.

Offset 1, canonical program `A183095.P16118821317782953757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183095 (n : ℕ) : ℤ :=
  A183095.P16118821317782953757.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183095.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188215.P11536711810283268516

`A080791(n)+A006257(n)`
-/

namespace A188215.P11536711810283268516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + A006257 n

end

end A188215.P11536711810283268516

noncomputable section

/-- A188215: Starting with an empty list, n is inserted after the a(n)th element such that the binary representations of the list's elements are always sorted lexicographically.

Offset 0, canonical program `A188215.P11536711810283268516`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188215 (n : ℕ) : ℤ :=
  A188215.P11536711810283268516.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188215.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191906.P12727792690230933810

`A007956(n+2)%A001065(n+2)`
-/

namespace A191906.P12727792690230933810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007956 (n + 2)) (A001065 (n + 2))

end

end A191906.P12727792690230933810

noncomputable section

/-- A191906: The remainder of (product of proper divisors of n) mod (sum of proper divisors of n).

Offset 2, canonical program `A191906.P12727792690230933810`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191906 (n : ℕ) : ℤ :=
  A191906.P12727792690230933810.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191906.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193291.P12186419772948378566

`A183063(A000045(n+1))`
-/

namespace A193291.P12186419772948378566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A000045 (n + 1)).toNat

end

end A193291.P12186419772948378566

noncomputable section

/-- A193291: Number of even divisors of Fibonacci(n).

Offset 1, canonical program `A193291.P12186419772948378566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193291 (n : ℕ) : ℤ :=
  A193291.P12186419772948378566.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193334.P16944727795109553516

`A183063(A000203(n+1))`
-/

namespace A193334.P16944727795109553516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A000203 (n + 1)).toNat

end

end A193334.P16944727795109553516

noncomputable section

/-- A193334: Number of even divisors of sigma(n).

Offset 1, canonical program `A193334.P16944727795109553516`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193334 (n : ℕ) : ℤ :=
  A193334.P16944727795109553516.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033634.P7485427623378639722

`∑{d}[n+1, A295316(#)*#]`
-/

namespace A033634.P7485427623378639722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295316 d * (d : ℤ)

end

end A033634.P7485427623378639722

noncomputable section

/-- A033634: OddPowerSigma(n) = sum of odd power divisors of n.

Offset 1, canonical program `A033634.P7485427623378639722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033634 (n : ℕ) : ℤ :=
  A033634.P7485427623378639722.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033634.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048272.P6639145440777643207

`A001227(n+1)-A183063(n+1)`
-/

namespace A048272.P6639145440777643207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A183063 (n + 1)

end

end A048272.P6639145440777643207

noncomputable section

/-- A048272: Number of odd divisors of n minus number of even divisors of n.

Offset 1, canonical program `A048272.P6639145440777643207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048272 (n : ℕ) : ℤ :=
  A048272.P6639145440777643207.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048272.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060872.P4140804828554997717

`(n+1)*A038548(n+1)`
-/

namespace A060872.P4140804828554997717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038548 (n + 1)

end

end A060872.P4140804828554997717

noncomputable section

/-- A060872: Sum of d*d' over all unordered pairs (d,d') with d*d' = n.

Offset 1, canonical program `A060872.P4140804828554997717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060872 (n : ℕ) : ℤ :=
  A060872.P4140804828554997717.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061313.P9812291804371352980

`A080791(n)+A029837(n+1)`
-/

namespace A061313.P9812291804371352980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + A029837 (n + 1)

end

end A061313.P9812291804371352980

noncomputable section

/-- A061313: Minimal number of steps to get from 1 to n by (a) subtracting 1 or (b) multiplying by 2.

Offset 1, canonical program `A061313.P9812291804371352980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061313 (n : ℕ) : ℤ :=
  A061313.P9812291804371352980.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069735.P7037159933635836489

`A000005(n+1)+A183063(n+1)`
-/

namespace A069735.P7037159933635836489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A183063 (n + 1)

end

end A069735.P7037159933635836489

noncomputable section

/-- A069735: Number of regular orientable coverings of the Klein bottle with 2n lists.

Offset 1, canonical program `A069735.P7037159933635836489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069735 (n : ℕ) : ℤ :=
  A069735.P7037159933635836489.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069735.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072670.P17694124448625562099

`A038548(n+1)-1`
-/

namespace A072670.P17694124448625562099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - 1

end

end A072670.P17694124448625562099

noncomputable section

/-- A072670: Number of ways to write n as i*j + i + j, 0 < i <= j.

Offset 0, canonical program `A072670.P17694124448625562099`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072670 (n : ℕ) : ℤ :=
  A072670.P17694124448625562099.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073445.P10904794807909655656

`A073783(n+2)-A073783(n+1)`
-/

namespace A073445.P10904794807909655656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 2) - A073783 (n + 1)

end

end A073445.P10904794807909655656

noncomputable section

/-- A073445: Second differences of A002808, the sequence of composites.

Offset 1, canonical program `A073445.P10904794807909655656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073445 (n : ℕ) : ℤ :=
  A073445.P10904794807909655656.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075101.P17453559021154753691

`2*A084623(n+1)`
-/

namespace A075101.P17453559021154753691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084623 (n + 1)

end

end A075101.P17453559021154753691

noncomputable section

/-- A075101: Numerator of 2^n/n.

Offset 1, canonical program `A075101.P17453559021154753691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075101 (n : ℕ) : ℤ :=
  A075101.P17453559021154753691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078644.P6430730718511426787

`A361689(n+1)/2`
-/

namespace A078644.P6430730718511426787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361689 (n + 1) : ℚ) / 2

end

end A078644.P6430730718511426787

noncomputable section

/-- A078644: a(n) = tau(2*n^2)/2.

Offset 1, canonical program `A078644.P6430730718511426787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078644 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078644.P6430730718511426787.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078644.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080100.P10210311042903193849

`2^A080791(n)`
-/

namespace A080100.P10210311042903193849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A080791 n : ℤ)

end

end A080100.P10210311042903193849

noncomputable section

/-- A080100: a(n) = 2^(number of 0's in binary representation of n).

Offset 0, canonical program `A080100.P10210311042903193849`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080100 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080100.P10210311042903193849.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082903.P1980760926334013284

`2^A336937(n+1)`
-/

namespace A082903.P1980760926334013284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A336937 (n + 1) : ℤ)

end

end A082903.P1980760926334013284

noncomputable section

/-- A082903: Highest power of two that divides the sum of divisors of n.

Offset 1, canonical program `A082903.P1980760926334013284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082903 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082903.P1980760926334013284.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082903.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088839.P2853129833780886676

`(8*A006519(n+1)-1)/(1+2*A096268(n))`
-/

namespace A088839.P2853129833780886676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * A006519 (n + 1) - 1 : ℚ) / (1 + 2 * A096268 n : ℚ)

end

end A088839.P2853129833780886676

noncomputable section

/-- A088839: Numerator of sigma(4n)/sigma(n).

Offset 1, canonical program `A088839.P2853129833780886676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088839 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088839.P2853129833780886676.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101119.P8853717879846159972

`A006519(16*(n+1))-A003484(16*(n+1))`
-/

namespace A101119.P8853717879846159972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (16 * (n + 1)) - A003484 (16 * (n + 1))

end

end A101119.P8853717879846159972

noncomputable section

/-- A101119: Nonzero differences of A006519 (highest power of 2 dividing n) and A003484 (Radon function).

Offset 1, canonical program `A101119.P8853717879846159972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101119 (n : ℕ) : ℤ :=
  A101119.P8853717879846159972.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122179.P10778673272952612676

`A034836(n+1)-A038548(n+1)`
-/

namespace A122179.P10778673272952612676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A038548 (n + 1)

end

end A122179.P10778673272952612676

noncomputable section

/-- A122179: Number of ways to write n as n = x*y*z with 1<x<=y<=z<n.

Offset 1, canonical program `A122179.P10778673272952612676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122179 (n : ℕ) : ℤ :=
  A122179.P10778673272952612676.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132740.P2204999059884889025

`(n+1)/A132741(n+1)`
-/

namespace A132740.P2204999059884889025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132741 (n + 1) : ℚ)

end

end A132740.P2204999059884889025

noncomputable section

/-- A132740: Largest divisor of n coprime to 10.

Offset 1, canonical program `A132740.P2204999059884889025`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132740 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132740.P2204999059884889025.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132740.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135523.P14903418965496847472

`A135560(n+1)-1`
-/

namespace A135523.P14903418965496847472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (n + 1) - 1

end

end A135523.P14903418965496847472

noncomputable section

/-- A135523: a(n) = A007814(n) + A209229(n).

Offset 1, canonical program `A135523.P14903418965496847472`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135523 (n : ℕ) : ℤ :=
  A135523.P14903418965496847472.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143259.P1082884645466635288

`A008836(n+1)*A053866(n+1)`
-/

namespace A143259.P1082884645466635288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A053866 (n + 1)

end

end A143259.P1082884645466635288

noncomputable section

/-- A143259: a(n) = 1 if n is a nonzero square, -1 if n is twice a nonzero square, 0 otherwise.

Offset 1, canonical program `A143259.P1082884645466635288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143259 (n : ℕ) : ℤ :=
  A143259.P1082884645466635288.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143259.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145390.P15585800402733348238

`A112329(n+1)+A183063(n+1)`
-/

namespace A145390.P15585800402733348238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1) + A183063 (n + 1)

end

end A145390.P15585800402733348238

noncomputable section

/-- A145390: Number of sublattices of index n of a centered rectangular lattice fixed by a reflection.

Offset 1, canonical program `A145390.P15585800402733348238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145390 (n : ℕ) : ℤ :=
  A145390.P15585800402733348238.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161841.P10874343468678800026

`A038548(n+1)*2`
-/

namespace A161841.P10874343468678800026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) * 2

end

end A161841.P10874343468678800026

noncomputable section

/-- A161841: Number of factors, with repetition, in all distinct pairs (a <= b) such that a*b = n.

Offset 1, canonical program `A161841.P10874343468678800026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161841 (n : ℕ) : ℤ :=
  A161841.P10874343468678800026.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A209675.P11812002563473211177

`A003484(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209675.P11812002563473211177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (2 * (n + 1))

end

end A209675.P11812002563473211177

noncomputable section

/-- A209675: Radon function at even positions: a(n) = A003484(2*n).

Offset 1, canonical program `A209675.P11812002563473211177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209675 (n : ℕ) : ℤ :=
  A209675.P11812002563473211177.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209675.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002035.P10680891556500623091

`eq[1, A295316(n+2)]+2`
-/

namespace A002035.P10680891556500623091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A002035.P10680891556500623091

noncomputable section

/-- A002035: Numbers that contain primes to odd powers only.

Offset 1, canonical program `A002035.P10680891556500623091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002035 (n : ℕ) : ℤ :=
  (A002035.P10680891556500623091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003601.P1376783723534109363

`eq[1, A245656(n+1)]+1`
-/

namespace A003601.P1376783723534109363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003601.P1376783723534109363

noncomputable section

/-- A003601: Numbers j such that the average of the divisors of j is an integer: sigma_0(j) divides sigma_1(j). Alternatively, numbers j such that tau(j) (A000005(j)) divides sigma(j) (A000203(j)).

Offset 1, canonical program `A003601.P1376783723534109363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003601 (n : ℕ) : ℤ :=
  (A003601.P1376783723534109363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006591.P9768436482632367221

`(n+1)²-A351362(n+1)`
-/

namespace A006591.P9768436482632367221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A351362 (n + 1)

end

end A006591.P9768436482632367221

noncomputable section

/-- A006591: a(n) = Sum_{k=1..n} nearest integer to n/k (if n/k is midway between two numbers take the smaller).

Offset 1, canonical program `A006591.P9768436482632367221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006591 (n : ℕ) : ℤ :=
  A006591.P9768436482632367221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014083.P14491156369592575533

`A014082(and(n, 2*n))`
-/

namespace A014083.P14491156369592575533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (Nat.land n (2 * n))

end

end A014083.P14491156369592575533

noncomputable section

/-- A014083: Occurrences of '1111' in binary expansion of n.

Offset 0, canonical program `A014083.P14491156369592575533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014083 (n : ℕ) : ℤ :=
  A014083.P14491156369592575533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014475.P5620230107622203063

`A007318(eq[A065040(n), A089627(n)])`
-/

namespace A014475.P5620230107622203063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014475.P5620230107622203063

noncomputable section

/-- A014475: Triangular array formed from odd elements to right of middle of rows of Pascal's triangle.

Offset 1, canonical program `A014475.P5620230107622203063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. -/
def A014475 (n : ℕ) : ℤ :=
  A014475.P5620230107622203063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. -/
def A014475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015049.P304313966047543276

`A019554(A013929(n+1))`
-/

namespace A015049.P304313966047543276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A013929 (n + 1)).toNat

end

end A015049.P304313966047543276

noncomputable section

/-- A015049: Let m = A013929(n); then a(n) = smallest k such that m divides k^2.

Offset 1, canonical program `A015049.P304313966047543276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015049 (n : ℕ) : ℤ :=
  A015049.P304313966047543276.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015051.P1678568298610178780

`A053166(A013929(n+1))`
-/

namespace A015051.P1678568298610178780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A013929 (n + 1)).toNat

end

end A015051.P1678568298610178780

noncomputable section

/-- A015051: Let m = A013929(n); then a(n) = smallest k such that m divides k^4.

Offset 1, canonical program `A015051.P1678568298610178780`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015051 (n : ℕ) : ℤ :=
  A015051.P1678568298610178780.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020986.P18384666563088217064

`∑[A020985(n)]`
-/

namespace A020986.P18384666563088217064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P18384666563088217064

noncomputable section

/-- A020986: a(n) = n-th partial sum of Golay-Rudin-Shapiro sequence A020985.

Offset 0, canonical program `A020986.P18384666563088217064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020986 (n : ℕ) : ℤ :=
  A020986.P18384666563088217064.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020990.P14114785613548129031

`∑[(-1)^n*A020985(n)]`
-/

namespace A020990.P14114785613548129031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A020985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P14114785613548129031

noncomputable section

/-- A020990: a(n) = Sum_{k=0..n} (-1)^k*A020985(k).

Offset 0, canonical program `A020990.P14114785613548129031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020990 (n : ℕ) : ℤ :=
  A020990.P14114785613548129031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023649.P8276616955042322382

`A023609(n+1)-A002808(n+2)`
-/

namespace A023649.P8276616955042322382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023609 (n + 1) - A002808 (n + 2)

end

end A023649.P8276616955042322382

noncomputable section

/-- A023649: Convolution of composite numbers and (F(2), F(3), F(4), ...).

Offset 1, canonical program `A023649.P8276616955042322382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023649 (n : ℕ) : ℤ :=
  A023649.P8276616955042322382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023840.P14102438472677214006

`A023839(n+3)-A001222(4*(n+3)+3)+A001222(n+1)`
-/

namespace A023840.P14102438472677214006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023839 (n + 3) - A001222 (4 * (n + 3) + 3) + A001222 (n + 1)

end

end A023840.P14102438472677214006

noncomputable section

/-- A023840: Sum of exponents in prime-power factorization of C(5n,n-3).

Offset 3, canonical program `A023840.P14102438472677214006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023839, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023840 (n : ℕ) : ℤ :=
  A023840.P14102438472677214006.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023839, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023845.P1372337927519575379

`A023844(n+1)+A001222(4*(n+1)-2)-A001222(n+4)`
-/

namespace A023845.P1372337927519575379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023844 (n + 1) + A001222 (4 * (n + 1) - 2) - A001222 (n + 4)

end

end A023845.P1372337927519575379

noncomputable section

/-- A023845: Sum of exponents in prime-power factorization of binomial(5n, n+3).

Offset 1, canonical program `A023845.P1372337927519575379`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023845 (n : ℕ) : ℤ :=
  A023845.P1372337927519575379.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023845.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023883.P886848519556204530

`filter[A018252(n+1), A245656(#)]`
-/

namespace A023883.P886848519556204530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A023883.P886848519556204530

noncomputable section

/-- A023883: Nonprimes whose average of divisors is an integer.

Offset 1, canonical program `A023883.P886848519556204530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023883 (n : ℕ) : ℤ :=
  A023883.P886848519556204530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024454.P5542157248181529919

`floor(A024449(n+1)/A007504(n+4))`
-/

namespace A024454.P5542157248181529919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024449 (n + 1) : ℚ) / (A007504 (n + 4) : ℚ)⌋

end

end A024454.P5542157248181529919

noncomputable section

/-- A024454: [ (4th elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {first n+3 primes}.

Offset 1, canonical program `A024454.P5542157248181529919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 546 terms. -/
def A024454 (n : ℕ) : ℤ :=
  A024454.P5542157248181529919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 546 terms. -/
def A024454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024456.P4117989325305379135

`floor(A024449(n+1)/A024447(n+4))`
-/

namespace A024456.P4117989325305379135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024449 (n + 1) : ℚ) / (A024447 (n + 4) : ℚ)⌋

end

end A024456.P4117989325305379135

noncomputable section

/-- A024456: [ (4th elementary symmetric function of P(n))/(2nd elementary symmetric function of P(n)) ], where P(n) = {first n+3 primes}.

Offset 1, canonical program `A024456.P4117989325305379135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A024456 (n : ℕ) : ℤ :=
  A024456.P4117989325305379135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A024456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024457.P3627810274368005093

`floor(A024449(n+1)/A024448(n+2))`
-/

namespace A024457.P3627810274368005093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024449 (n + 1) : ℚ) / (A024448 (n + 2) : ℚ)⌋

end

end A024457.P3627810274368005093

noncomputable section

/-- A024457: [ (4th elementary symmetric function of P(n))/(3rd elementary symmetric function of P(n)) ], where P(n) = {first n+3 primes}.

Offset 1, canonical program `A024457.P3627810274368005093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A024457 (n : ℕ) : ℤ :=
  A024457.P3627810274368005093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A024457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025544.P11648437338997869476

`∑[A032741(ratio[A025543(n)])]`
-/

namespace A025544.P11648437338997869476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025544.P11648437338997869476

noncomputable section

/-- A025544: a(n) = sum of the exponents in the prime factorization of the least common multiple of the first n composite numbers.

Offset 1, canonical program `A025544.P11648437338997869476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A025544 (n : ℕ) : ℤ :=
  A025544.P11648437338997869476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A025544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026236.P6357686734265225565

`A000720(p?[A067747(A026234(n+1))])`
-/

namespace A026236.P6357686734265225565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A026234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026236.P6357686734265225565

noncomputable section

/-- A026236: a(n) = (s(n) + 1)/2, where s(n) is the n-th odd number in A026234.

Offset 1, canonical program `A026236.P6357686734265225565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A026236 (n : ℕ) : ℤ :=
  A026236.P6357686734265225565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A026236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026743.P7713919475354622590

`Δ[A026734(n)]-A026677(n)`
-/

namespace A026743.P7713919475354622590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026677 n

end

end A026743.P7713919475354622590

noncomputable section

/-- A026743: a(n) = Sum_{j=0..n} T(n,j), T given by A026736.

Offset 0, canonical program `A026743.P7713919475354622590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A026743 (n : ℕ) : ℤ :=
  A026743.P7713919475354622590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A026743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033859.P9143334773756198897

`eq[2^A001221(n+1), A033831(n+1)]+1`
-/

namespace A033859.P9143334773756198897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A033859.P9143334773756198897

noncomputable section

/-- A033859: Numbers k such that A033831(k) = A034444(k) where A034444(k) = number of unitary divisors of k.

Offset 1, canonical program `A033859.P9143334773756198897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 770 terms. -/
def A033859 (n : ℕ) : ℤ :=
  (A033859.P9143334773756198897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 770 terms. -/
def A033859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034178.P3748445109450908079

`round(A143520(n+1)/(2*n+1))`
-/

namespace A034178.P3748445109450908079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143520 (n + 1) : ℚ) / (2 * n + 1 : ℚ))

end

end A034178.P3748445109450908079

noncomputable section

/-- A034178: Number of solutions to n = a^2 - b^2, a > b >= 0.

Offset 1, canonical program `A034178.P3748445109450908079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034178 (n : ℕ) : ℤ :=
  A034178.P3748445109450908079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034460.P1958235575820581513

`A034448(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034460.P1958235575820581513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (n + 1 : ℤ)

end

end A034460.P1958235575820581513

noncomputable section

/-- A034460: a(n) = usigma(n) - n, where usigma(n) = sum of unitary divisors of n (A034448).

Offset 1, canonical program `A034460.P1958235575820581513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034460 (n : ℕ) : ℤ :=
  A034460.P1958235575820581513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034676.P6152504972780352585

`∑{d}[n+1, A254520(#)]`
-/

namespace A034676.P6152504972780352585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254520 d

end

end A034676.P6152504972780352585

noncomputable section

/-- A034676: Sum of squares of unitary divisors of n.

Offset 1, canonical program `A034676.P6152504972780352585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034676 (n : ℕ) : ℤ :=
  A034676.P6152504972780352585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035171.P5722442926785609002

`∑{d}[n+1, A011585(#)]`
-/

namespace A035171.P5722442926785609002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011585 d

end

end A035171.P5722442926785609002

noncomputable section

/-- A035171: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = -19.

Offset 1, canonical program `A035171.P5722442926785609002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A035171 (n : ℕ) : ℤ :=
  A035171.P5722442926785609002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A035171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035709.P749298596689994425

`∑[2*A035708(n)]-A035708(n)`
-/

namespace A035709.P749298596689994425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035708 n

end

end A035709.P749298596689994425

noncomputable section

/-- A035709: Coordination sequence for 14-dimensional cubic lattice.

Offset 0, canonical program `A035709.P749298596689994425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035709 (n : ℕ) : ℤ :=
  A035709.P749298596689994425.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035719.P16477810047509166070

`∑{#}[n, A035707(#)*A035707(n-#)]`
-/

namespace A035719.P16477810047509166070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A035707 k * A035707 (n - k)

end

end A035719.P16477810047509166070

noncomputable section

/-- A035719: Coordination sequence for 24-dimensional cubic lattice.

Offset 0, canonical program `A035719.P16477810047509166070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035719 (n : ℕ) : ℤ :=
  A035719.P16477810047509166070.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035721.P10481167398034482081

`∑{#}[n, A035708(#)*A035708(n-#)]`
-/

namespace A035721.P10481167398034482081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A035708 k * A035708 (n - k)

end

end A035721.P10481167398034482081

noncomputable section

/-- A035721: Coordination sequence for 26-dimensional cubic lattice.

Offset 0, canonical program `A035721.P10481167398034482081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035721 (n : ℕ) : ℤ :=
  A035721.P10481167398034482081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035734.P7869225986865680874

`∑[2*A035733(n)]-A035733(n)`
-/

namespace A035734.P7869225986865680874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035733 n

end

end A035734.P7869225986865680874

noncomputable section

/-- A035734: Coordination sequence for 39-dimensional cubic lattice.

Offset 0, canonical program `A035734.P7869225986865680874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3158 terms. -/
def A035734 (n : ℕ) : ℤ :=
  A035734.P7869225986865680874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3158 terms. -/
def A035734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035735.P14310658324968370098

`∑{#}[n, A035715(#)*A035715(n-#)]`
-/

namespace A035735.P14310658324968370098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A035715 k * A035715 (n - k)

end

end A035735.P14310658324968370098

noncomputable section

/-- A035735: Coordination sequence for 40-dimensional cubic lattice.

Offset 0, canonical program `A035735.P14310658324968370098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035735 (n : ℕ) : ℤ :=
  A035735.P14310658324968370098.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035749.P1987702224880848281

`A035707(2*n)`
-/

namespace A035749.P1987702224880848281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035707 (2 * n)

end

end A035749.P1987702224880848281

noncomputable section

/-- A035749: Coordination sequence for C_12 lattice.

Offset 0, canonical program `A035749.P1987702224880848281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035749 (n : ℕ) : ℤ :=
  A035749.P1987702224880848281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035750.P17272532631500132304

`A035708(2*n)`
-/

namespace A035750.P17272532631500132304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035708 (2 * n)

end

end A035750.P17272532631500132304

noncomputable section

/-- A035750: Coordination sequence for C_13 lattice.

Offset 0, canonical program `A035750.P17272532631500132304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035750 (n : ℕ) : ℤ :=
  A035750.P17272532631500132304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035757.P14456028133830112634

`A035715(2*n)`
-/

namespace A035757.P14456028133830112634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035715 (2 * n)

end

end A035757.P14456028133830112634

noncomputable section

/-- A035757: Coordination sequence for C_20 lattice.

Offset 0, canonical program `A035757.P14456028133830112634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035757 (n : ℕ) : ℤ :=
  A035757.P14456028133830112634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035775.P7555166677845862874

`A035733(2*n)`
-/

namespace A035775.P7555166677845862874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035733 (2 * n)

end

end A035775.P7555166677845862874

noncomputable section

/-- A035775: Coordination sequence for C_38 lattice.

Offset 0, canonical program `A035775.P7555166677845862874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1814 terms. -/
def A035775 (n : ℕ) : ℤ :=
  A035775.P7555166677845862874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1814 terms. -/
def A035775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036267.P15431299486698039371

`Δ[A036266(n+1)]`
-/

namespace A036267.P15431299486698039371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036267.P15431299486698039371

noncomputable section

/-- A036267: 6th differences of primes.

Offset 1, canonical program `A036267.P15431299486698039371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036267 (n : ℕ) : ℤ :=
  A036267.P15431299486698039371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036296.P2772493522486156713

`ceil(A084623(n+2)/2)`
-/

namespace A036296.P2772493522486156713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084623 (n + 2) : ℚ) / 2⌉

end

end A036296.P2772493522486156713

noncomputable section

/-- A036296: Denominator of Sum_{i=1..n} i/2^i.

Offset 0, canonical program `A036296.P2772493522486156713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A036296 (n : ℕ) : ℤ :=
  A036296.P2772493522486156713.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A036296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036579.P9011421768844623426

`2-A036578(n)`
-/

namespace A036579.P9011421768844623426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036578 n

end

end A036579.P9011421768844623426

noncomputable section

/-- A036579: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 0, canonical program `A036579.P9011421768844623426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036579 (n : ℕ) : ℤ :=
  A036579.P9011421768844623426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038238.P4988139983515114020

`A038234(n)*A059268(n)`
-/

namespace A038238.P4988139983515114020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038234 n * A059268 n

end

end A038238.P4988139983515114020

noncomputable section

/-- A038238: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*8^j.

Offset 0, canonical program `A038238.P4988139983515114020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4522 terms. -/
def A038238 (n : ℕ) : ℤ :=
  A038238.P4988139983515114020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4522 terms. -/
def A038238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038262.P11562986506712065470

`A038258(n)*A059268(n)`
-/

namespace A038262.P11562986506712065470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038258 n * A059268 n

end

end A038262.P11562986506712065470

noncomputable section

/-- A038262: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*8^j.

Offset 0, canonical program `A038262.P11562986506712065470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4047 terms. -/
def A038262 (n : ℕ) : ℤ :=
  A038262.P11562986506712065470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4047 terms. -/
def A038262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038274.P8051667154738012092

`A038270(n)*A059268(n)`
-/

namespace A038274.P8051667154738012092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038270 n * A059268 n

end

end A038274.P8051667154738012092

noncomputable section

/-- A038274: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*8^j.

Offset 0, canonical program `A038274.P8051667154738012092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3785 terms. -/
def A038274 (n : ℕ) : ℤ :=
  A038274.P8051667154738012092.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3785 terms. -/
def A038274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038286.P17651315899015836458

`A038282(n)*A059268(n)`
-/

namespace A038286.P17651315899015836458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038282 n * A059268 n

end

end A038286.P17651315899015836458

noncomputable section

/-- A038286: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*8^j.

Offset 0, canonical program `A038286.P17651315899015836458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3610 terms. -/
def A038286 (n : ℕ) : ℤ :=
  A038286.P17651315899015836458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3610 terms. -/
def A038286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038290.P9369119644896590896

`A036561(n)*A038234(n)`
-/

namespace A038290.P9369119644896590896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038234 n

end

end A038290.P9369119644896590896

noncomputable section

/-- A038290: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*12^j.

Offset 0, canonical program `A038290.P9369119644896590896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3122 terms. -/
def A038290 (n : ℕ) : ℤ :=
  A038290.P9369119644896590896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3122 terms. -/
def A038290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038298.P2564888401092406072

`A038294(n)*A059268(n)`
-/

namespace A038298.P2564888401092406072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038294 n * A059268 n

end

end A038298.P2564888401092406072

noncomputable section

/-- A038298: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*8^j.

Offset 0, canonical program `A038298.P2564888401092406072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3515 terms. -/
def A038298 (n : ℕ) : ℤ :=
  A038298.P2564888401092406072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3515 terms. -/
def A038298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038322.P14117856518855591407

`A038318(n)*A059268(n)`
-/

namespace A038322.P14117856518855591407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038318 n * A059268 n

end

end A038322.P14117856518855591407

noncomputable section

/-- A038322: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*8^j.

Offset 0, canonical program `A038322.P14117856518855591407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. -/
def A038322 (n : ℕ) : ℤ :=
  A038322.P14117856518855591407.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. -/
def A038322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038334.P12500587317932867183

`A038330(n)*A059268(n)`
-/

namespace A038334.P12500587317932867183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038330 n * A059268 n

end

end A038334.P12500587317932867183

noncomputable section

/-- A038334: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*8^j.

Offset 0, canonical program `A038334.P12500587317932867183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3106 terms. -/
def A038334 (n : ℕ) : ℤ :=
  A038334.P12500587317932867183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3106 terms. -/
def A038334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038338.P9478678368109461526

`A036561(n)*A038258(n)`
-/

namespace A038338.P9478678368109461526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038258 n

end

end A038338.P9478678368109461526

noncomputable section

/-- A038338: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*12^j.

Offset 0, canonical program `A038338.P9478678368109461526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A038338 (n : ℕ) : ℤ :=
  A038338.P9478678368109461526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A038338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038550.P14184337718678303801

`eq[1, A087436(n+1)]+1`
-/

namespace A038550.P14184337718678303801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038550.P14184337718678303801

noncomputable section

/-- A038550: Products of an odd prime and a power of two (sorted).

Offset 1, canonical program `A038550.P14184337718678303801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038550 (n : ℕ) : ℤ :=
  (A038550.P14184337718678303801.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038936.P8125062723505700244

`p?[n*A011585(n)*A257075(n)]`
-/

namespace A038936.P8125062723505700244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011585 n * A257075 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038936.P8125062723505700244

noncomputable section

/-- A038936: Primes p such that 57 is not a square mod p.

Offset 1, canonical program `A038936.P8125062723505700244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 618 terms. -/
def A038936 (n : ℕ) : ℤ :=
  A038936.P8125062723505700244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 618 terms. -/
def A038936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038995.P4021492533092847162

`∑{d}[n+1, #*A038994(#)]`
-/

namespace A038995.P4021492533092847162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038994 d

end

end A038995.P4021492533092847162

noncomputable section

/-- A038995: Number of sublattices of index n in generic 8-dimensional lattice.

Offset 1, canonical program `A038995.P4021492533092847162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038995 (n : ℕ) : ℤ :=
  A038995.P4021492533092847162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039275.P15863930487508184541

`filter[A039000(n+1), A316829(#)]`
-/

namespace A039275.P15863930487508184541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316829 (f1 j).toNat = 1) n)

end

end A039275.P15863930487508184541

noncomputable section

/-- A039275: Numbers whose base-3 representation has the same nonzero number of 0's and 1's.

Offset 1, canonical program `A039275.P15863930487508184541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. -/
def A039275 (n : ℕ) : ℤ :=
  A039275.P15863930487508184541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. -/
def A039275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039593.P642452871237294568

`2^A034973(n+1)`
-/

namespace A039593.P642452871237294568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A034973 (n + 1) : ℤ)

end

end A039593.P642452871237294568

noncomputable section

/-- A039593: Number of unitary divisors of central binomial coefficients.

Offset 1, canonical program `A039593.P642452871237294568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039593 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A039593.P642452871237294568.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039593.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A044977.P15031783185481520798

`∩[A023693(n+1), A039000(n+1)]`
-/

namespace A044977.P15031783185481520798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044977.P15031783185481520798

noncomputable section

/-- A044977: Numbers whose base-3 representation contains exactly two 0's and two 1's.

Offset 1, canonical program `A044977.P15031783185481520798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. -/
def A044977 (n : ℕ) : ℤ :=
  (A044977.P15031783185481520798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1737 terms. -/
def A044977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044983.P8907591940877525692

`∩[A023694(n+1), A039000(n+1)]`
-/

namespace A044983.P8907591940877525692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044983.P8907591940877525692

noncomputable section

/-- A044983: Numbers whose base-3 representation contains exactly three 0's and three 1's.

Offset 1, canonical program `A044983.P8907591940877525692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2820 terms. -/
def A044983 (n : ℕ) : ℤ :=
  (A044983.P8907591940877525692.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2820 terms. -/
def A044983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045922.P15359746195086724923

`∑[A002375(1+n)]`
-/

namespace A045922.P15359746195086724923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045922.P15359746195086724923

noncomputable section

/-- A045922: Partial sums of Goldbach numbers A002375.

Offset 1, canonical program `A045922.P15359746195086724923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045922 (n : ℕ) : ℤ :=
  A045922.P15359746195086724923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045935.P15068729089152290012

`A045934(eq[1, A045934(n+2)-A045934(n+1)]+1)`
-/

namespace A045935.P15068729089152290012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (n + 2) - A045934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045935.P15068729089152290012

noncomputable section

/-- A045935: Numbers n such that n through n+6 are divisible by the same number of distinct primes.

Offset 1, canonical program `A045935.P15068729089152290012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3579 terms. -/
def A045935 (n : ℕ) : ℤ :=
  A045935.P15068729089152290012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3579 terms. -/
def A045935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046326.P8551065587354507488

`A000040(n+1)*A046325(n+2)`
-/

namespace A046326.P8551065587354507488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046325 (n + 2)

end

end A046326.P8551065587354507488

noncomputable section

/-- A046326: Product of 8 successive primes.

Offset 1, canonical program `A046326.P8551065587354507488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046326 (n : ℕ) : ℤ :=
  A046326.P8551065587354507488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048146.P9985884013456677192

`A000203(n+1)-A034448(n+1)`
-/

namespace A048146.P9985884013456677192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A034448 (n + 1)

end

end A048146.P9985884013456677192

noncomputable section

/-- A048146: Sum of non-unitary divisors of n.

Offset 1, canonical program `A048146.P9985884013456677192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048146 (n : ℕ) : ℤ :=
  A048146.P9985884013456677192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048146.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048168.P17831030899034331783

`record[gcd(A048167(n+1)², A048166(n+1))]`
-/

namespace A048168.P17831030899034331783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048167 (n + 1) ^ 2) (A048166 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048168.P17831030899034331783

noncomputable section

/-- A048168: n is divisible by the square of the number of unitary divisors of n (A034444).

Offset 1, canonical program `A048168.P17831030899034331783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A048168 (n : ℕ) : ℤ :=
  (A048168.P17831030899034331783.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A048168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048754.P5290523552306248918

`A007956(A048753(n+1))/A032741(A048753(n+1))`
-/

namespace A048754.P5290523552306248918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007956 (A048753 (n + 1)).toNat : ℚ) / (A032741 (A048753 (n + 1)).toNat : ℚ)

end

end A048754.P5290523552306248918

noncomputable section

/-- A048754: Mean integral quotients associated with A048753.

Offset 1, canonical program `A048754.P5290523552306248918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048754 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048754.P5290523552306248918.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048867.P9294340375594916807

`lt[A048865(n+1), A048864(n+1)]+1`
-/

namespace A048867.P9294340375594916807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048867.P9294340375594916807

noncomputable section

/-- A048867: Numbers for which reduced residue system contains fewer primes than nonprimes.

Offset 1, canonical program `A048867.P9294340375594916807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9477 terms. -/
def A048867 (n : ℕ) : ℤ :=
  (A048867.P9294340375594916807.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9477 terms. -/
def A048867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048868.P2029712073439447473

`lt[A048864(n+1), A048865(n+1)]+1`
-/

namespace A048868.P2029712073439447473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048868.P2029712073439447473

noncomputable section

/-- A048868: Numbers whose reduced residue system contains more primes than nonprimes.

Offset 1, canonical program `A048868.P2029712073439447473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A048868 (n : ℕ) : ℤ :=
  (A048868.P2029712073439447473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A048868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049098.P8844519897010937386

`p?[A013929(n+1)-1]`
-/

namespace A049098.P8844519897010937386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049098.P8844519897010937386

noncomputable section

/-- A049098: Primes p such that p+1 is divisible by a square.

Offset 1, canonical program `A049098.P8844519897010937386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049098 (n : ℕ) : ℤ :=
  A049098.P8844519897010937386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049229.P12251038394700142042

`p?[A013929(n+1)+2]`
-/

namespace A049229.P12251038394700142042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049229.P12251038394700142042

noncomputable section

/-- A049229: Primes p such that p-2 is not squarefree.

Offset 1, canonical program `A049229.P12251038394700142042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5668 terms. -/
def A049229 (n : ℕ) : ℤ :=
  A049229.P12251038394700142042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5668 terms. -/
def A049229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049232.P8046376036610074650

`p?[A013929(n+1)-2]`
-/

namespace A049232.P8046376036610074650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049232.P8046376036610074650

noncomputable section

/-- A049232: Primes p such that p+2 is divisible by a square.

Offset 1, canonical program `A049232.P8046376036610074650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5630 terms. -/
def A049232 (n : ℕ) : ℤ :=
  A049232.P8046376036610074650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5630 terms. -/
def A049232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049354.P9772535967235902552

`∩[A031452(n+1), A039000(n+1)]`
-/

namespace A049354.P9772535967235902552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049354.P9772535967235902552

noncomputable section

/-- A049354: Digitally balanced numbers in base 3: equal numbers of 0's, 1's, 2's.

Offset 1, canonical program `A049354.P9772535967235902552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A049354 (n : ℕ) : ℤ :=
  (A049354.P9772535967235902552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A049354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049642.P13855088796741878616

`eq[0, A245656(n+1)]+1`
-/

namespace A049642.P13855088796741878616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049642.P13855088796741878616

noncomputable section

/-- A049642: Numbers k such that the number of divisors of k does not divide the sum of divisors of k.

Offset 1, canonical program `A049642.P13855088796741878616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3690 terms. -/
def A049642 (n : ℕ) : ℤ :=
  (A049642.P13855088796741878616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3690 terms. -/
def A049642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050436.P11144881493701304708

`A002808(A050435(1+n))`
-/

namespace A050436.P11144881493701304708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A050435 (1 + n)).toNat

end

end A050436.P11144881493701304708

noncomputable section

/-- A050436: Third-order composites.

Offset 1, canonical program `A050436.P11144881493701304708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050436 (n : ℕ) : ℤ :=
  A050436.P11144881493701304708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051178.P2441463361311588415

`eq[0, A027857(n+1)]+1`
-/

namespace A051178.P2441463361311588415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027857 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051178.P2441463361311588415

noncomputable section

/-- A051178: Numbers k such that k divides the number of divisors of k!.

Offset 1, canonical program `A051178.P2441463361311588415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2960 terms. -/
def A051178 (n : ℕ) : ℤ :=
  (A051178.P2441463361311588415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2960 terms. -/
def A051178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053023.P541668529944221178

`∏{e}[A053021(n+1), #+1]`
-/

namespace A053023.P541668529944221178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A053023.P541668529944221178

noncomputable section

/-- A053023: Divisor function applied thrice to n!.

Offset 1, canonical program `A053023.P541668529944221178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A053023 (n : ℕ) : ℤ :=
  (A053023.P541668529944221178.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A053023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053096.P15007582045720351273

`∑[A060607(n+1)]-n`
-/

namespace A053096.P15007582045720351273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A053096.P15007582045720351273

noncomputable section

/-- A053096: When the Euler phi function is iterated with initial value A002110(n) = primorial, a(n) = number of iterations required to reach the fixed number = 1.

Offset 1, canonical program `A053096.P15007582045720351273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053096 (n : ℕ) : ℤ :=
  A053096.P15007582045720351273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053471.P2656201411474916772

`A053470(A016035(n+1)+1)`
-/

namespace A053471.P2656201411474916772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (A016035 (n + 1) + 1).toNat

end

end A053471.P2656201411474916772

noncomputable section

/-- A053471: a(n) is the cototient of n (A051953) iterated 3 times.

Offset 1, canonical program `A053471.P2656201411474916772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053471 (n : ℕ) : ℤ :=
  A053471.P2656201411474916772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053542.P1380259865153201069

`A065890(A073169(n+1))-n`
-/

namespace A053542.P1380259865153201069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (A073169 (n + 1)).toNat - (n : ℤ)

end

end A053542.P1380259865153201069

noncomputable section

/-- A053542: Distance from n-th composite number (A002808) to next prime.

Offset 1, canonical program `A053542.P1380259865153201069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053542 (n : ℕ) : ℤ :=
  A053542.P1380259865153201069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053692.P15159050845030527958

`A052343(Δ[n²])`
-/

namespace A053692.P15159050845030527958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053692.P15159050845030527958

noncomputable section

/-- A053692: Number of self-conjugate 4-core partitions of n.

Offset 0, canonical program `A053692.P15159050845030527958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A053692 (n : ℕ) : ℤ :=
  A053692.P15159050845030527958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A053692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053805.P2188720576023365537

`∑[A035707(n)]`
-/

namespace A053805.P2188720576023365537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053805.P2188720576023365537

noncomputable section

/-- A053805: Expansion of (1 + x)^12 / (1 - x)^13.

Offset 0, canonical program `A053805.P2188720576023365537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053805 (n : ℕ) : ℤ :=
  A053805.P2188720576023365537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053850.P12600137398159799687

`A013929(eq[1, A013929(n+1)%2]+1)`
-/

namespace A053850.P12600137398159799687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013929 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A053850.P12600137398159799687

noncomputable section

/-- A053850: Odd numbers divisible by a square > 1.

Offset 1, canonical program `A053850.P12600137398159799687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053850 (n : ℕ) : ℤ :=
  A053850.P12600137398159799687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053864.P17726123655565789623

`∏{d}[n+1, A189021(#)]`
-/

namespace A053864.P17726123655565789623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A189021 d

end

end A053864.P17726123655565789623

noncomputable section

/-- A053864: A second-order generalization of the Mobius function of n.

Offset 1, canonical program `A053864.P17726123655565789623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053864 (n : ℕ) : ℤ :=
  A053864.P17726123655565789623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053868.P14125084353672620264

`eq[n%2, A053866(n+1)]+1`
-/

namespace A053868.P14125084353672620264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053868.P14125084353672620264

noncomputable section

/-- A053868: Numbers whose sum of proper divisors is odd.

Offset 1, canonical program `A053868.P14125084353672620264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053868 (n : ℕ) : ℤ :=
  (A053868.P14125084353672620264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053981.P11504119553309885411

`A189021(A062378(n+1))^A007426(n+1)`
-/

namespace A053981.P11504119553309885411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189021 (A062378 (n + 1)).toNat : ℚ) ^ (A007426 (n + 1) : ℤ)

end

end A053981.P11504119553309885411

noncomputable section

/-- A053981: A fourth order generalization of the Mobius function of n.

Offset 1, canonical program `A053981.P11504119553309885411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053981 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053981.P11504119553309885411.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054012.P12555440370121058311

`A054009(A054011(n+1))`
-/

namespace A054012.P12555440370121058311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054009 (A054011 (n + 1)).toNat

end

end A054012.P12555440370121058311

noncomputable section

/-- A054012: Nonzero values of n read modulo (number of proper divisors of n).

Offset 1, canonical program `A054012.P12555440370121058311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. -/
def A054012 (n : ℕ) : ℤ :=
  A054012.P12555440370121058311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. -/
def A054012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054023.P16419217150835548806

`comp[A054022(n+1)-1]+1`
-/

namespace A054023.P16419217150835548806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054022 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A054023.P16419217150835548806

noncomputable section

/-- A054023: Chowla function of n is not divisible by the number of divisors of n.

Offset 1, canonical program `A054023.P16419217150835548806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054023 (n : ℕ) : ℤ :=
  (A054023.P16419217150835548806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055033.P5372904485544142447

`A034448(A034448(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055033.P5372904485544142447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A034448 (n + 1)).toNat

end

end A055033.P5372904485544142447

noncomputable section

/-- A055033: a(n) = usigma(usigma(n)), where usigma(n) is the sum of unitary divisors of n (A034448).

Offset 1, canonical program `A055033.P5372904485544142447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055033 (n : ℕ) : ℤ :=
  A055033.P5372904485544142447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056629.P11889635236478649752

`A055993(n+1)-A056630(n+1)`
-/

namespace A056629.P11889635236478649752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055993 (n + 1) - A056630 (n + 1)

end

end A056629.P11889635236478649752

noncomputable section

/-- A056629: a(n) = A034444(A056627(n)).

Offset 1, canonical program `A056629.P11889635236478649752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1851 terms. -/
def A056629 (n : ℕ) : ℤ :=
  A056629.P11889635236478649752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1851 terms. -/
def A056629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056974.P14269005406388105579

`A014082(A035327(n+1))`
-/

namespace A056974.P14269005406388105579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A035327 (n + 1)).toNat

end

end A056974.P14269005406388105579

noncomputable section

/-- A056974: Number of blocks of {0, 0, 0} in the binary expansion of n.

Offset 1, canonical program `A056974.P14269005406388105579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056974 (n : ℕ) : ℤ :=
  A056974.P14269005406388105579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057128.P11179917693389423228

`eq[1, A081320(A002472(n+1))]+1`
-/

namespace A057128.P11179917693389423228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081320 (A002472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057128.P11179917693389423228

noncomputable section

/-- A057128: Numbers n such that -3 is a square mod n.

Offset 1, canonical program `A057128.P11179917693389423228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A057128 (n : ℕ) : ℤ :=
  (A057128.P11179917693389423228.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2386 terms. -/
def A057128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057773.P3425110863733540674

`∑[A023506(n+1)]`
-/

namespace A057773.P3425110863733540674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057773.P3425110863733540674

noncomputable section

/-- A057773: a(n) = Sum_{i=1..n} nu_2(prime(i) - 1) where nu_2(m) = exponent of highest power of 2 dividing m.

Offset 1, canonical program `A057773.P3425110863733540674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057773 (n : ℕ) : ℤ :=
  A057773.P3425110863733540674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059136.P16739539969006037217

`6*A059126(n)-2`
-/

namespace A059136.P16739539969006037217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A059126 n - 2

end

end A059136.P16739539969006037217

noncomputable section

/-- A059136: A hierarchical sequence (W3{2,2}c - see A059126).

Offset 0, canonical program `A059136.P16739539969006037217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059136 (n : ℕ) : ℤ :=
  A059136.P16739539969006037217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059146.P9090514571194067663

`A011782(A059126(n))`
-/

namespace A059146.P9090514571194067663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A059126 n).toNat

end

end A059146.P9090514571194067663

noncomputable section

/-- A059146: A hierarchical sequence (W'2{2} - see A059126).

Offset 0, canonical program `A059146.P9090514571194067663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059146 (n : ℕ) : ℤ :=
  A059146.P9090514571194067663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059149.P6273711001114290364

`A016116(A059126(n))`
-/

namespace A059149.P6273711001114290364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A059126 n).toNat

end

end A059149.P6273711001114290364

noncomputable section

/-- A059149: A hierarchical sequence (W'2{2}* - see A059126).

Offset 0, canonical program `A059149.P6273711001114290364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059149 (n : ℕ) : ℤ :=
  A059149.P6273711001114290364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059460.P3948424867528968538

`A034448(a(n-1))` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059460.P3948424867528968538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A034448 (a (n - 1)).toNat

end

end A059460.P3948424867528968538

noncomputable section

/-- A059460: Iteration of unitary-sigma function: a(1) = 2, a(n) = usigma(a(n-1)).

Offset 1, canonical program `A059460.P3948424867528968538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059460 (n : ℕ) : ℤ :=
  A059460.P3948424867528968538.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060462.P1796479077200654701

`lt[2, A349213(n+1)]`
-/

namespace A060462.P1796479077200654701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060462.P1796479077200654701

noncomputable section

/-- A060462: Integers k such that k! is divisible by k*(k+1)/2.

Offset 1, canonical program `A060462.P1796479077200654701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060462 (n : ℕ) : ℤ :=
  (A060462.P1796479077200654701.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060679.P4127723815483162910

`lt[0, A331176(n+1)]+1`
-/

namespace A060679.P4127723815483162910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060679.P4127723815483162910

noncomputable section

/-- A060679: Orders of non-cyclic groups.

Offset 1, canonical program `A060679.P4127723815483162910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060679 (n : ℕ) : ℤ :=
  (A060679.P4127723815483162910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061765.P1670125670375018520

`A034448(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061765.P1670125670375018520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A000203 (n + 1)).toNat

end

end A061765.P1670125670375018520

noncomputable section

/-- A061765: a(n) = usigma(sigma(n)), where usigma(n) is the sum of unitary divisors of n (A034448) and sigma(n) is the sum of the divisors (A000203).

Offset 1, canonical program `A061765.P1670125670375018520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061765 (n : ℕ) : ℤ :=
  A061765.P1670125670375018520.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061765.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061817.P6788841023954008319

`filter[A061810(n+1), A359430(#)]`
-/

namespace A061817.P6788841023954008319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A061817.P6788841023954008319

noncomputable section

/-- A061817: Multiples of 9 containing only odd digits.

Offset 1, canonical program `A061817.P6788841023954008319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A061817 (n : ℕ) : ℤ :=
  A061817.P6788841023954008319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A061817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062320.P2059323313079579979

`A013929(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062320.P2059323313079579979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) ^ 2

end

end A062320.P2059323313079579979

noncomputable section

/-- A062320: Nonsquarefree numbers squared. A013929(n)^2.

Offset 1, canonical program `A062320.P2059323313079579979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062320 (n : ℕ) : ℤ :=
  A062320.P2059323313079579979.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062320.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063085.P4754823976141225556

`A034448(n+1)-A061468(n+1)`
-/

namespace A063085.P4754823976141225556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A061468 (n + 1)

end

end A063085.P4754823976141225556

noncomputable section

/-- A063085: a(n) = usigma(n) - (phi(n) + d(n)), where usigma(n) is the sum of the unitary divisors of n and d(n) is the number of divisors of n.

Offset 1, canonical program `A063085.P4754823976141225556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063085 (n : ℕ) : ℤ :=
  A063085.P4754823976141225556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063845.P8176048473973946208

`A000203(A034448(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063845.P8176048473973946208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A034448 (n + 1)).toNat

end

end A063845.P8176048473973946208

noncomputable section

/-- A063845: a(n) = sigma(usigma(n)), where usigma(n) is the sum of unitary divisors of n (A034448) and sigma(n) is the sum of the divisors (A000203).

Offset 1, canonical program `A063845.P8176048473973946208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063845 (n : ℕ) : ℤ :=
  A063845.P8176048473973946208.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063845.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063937.P5103970872536131558

`eq[A010052(A034448(n+1)), A057427(n)]+1`
-/

namespace A063937.P5103970872536131558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A034448 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063937.P5103970872536131558

noncomputable section

/-- A063937: Sum of unitary divisors of n is a square > 1.

Offset 1, canonical program `A063937.P5103970872536131558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A063937 (n : ℕ) : ℤ :=
  (A063937.P5103970872536131558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A063937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063977.P8570722050053466654

`lt[0, char[A034448(n+1)]]`
-/

namespace A063977.P8570722050053466654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063977.P8570722050053466654

noncomputable section

/-- A063977: Numbers which are sums of unitary divisors, the usigma values: their inverse usigma set is not empty; usigma() = A034448().

Offset 1, canonical program `A063977.P8570722050053466654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1394 terms. -/
def A063977 (n : ℕ) : ℤ :=
  (A063977.P8570722050053466654.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1394 terms. -/
def A063977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064028.P1061499819609687592

`A034448(A000142(n+1))`
-/

namespace A064028.P1061499819609687592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A000142 (n + 1)).toNat

end

end A064028.P1061499819609687592

noncomputable section

/-- A064028: Sum of the unitary divisors of n!.

Offset 1, canonical program `A064028.P1061499819609687592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064028 (n : ℕ) : ℤ :=
  A064028.P1061499819609687592.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064138.P12736720339364131366

`A062569(n+1)-A034448((n+1)!)`
-/

namespace A064138.P12736720339364131366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 (n + 1) - A034448 (Nat.factorial (n + 1))

end

end A064138.P12736720339364131366

noncomputable section

/-- A064138: Sum of non-unitary divisors of n!.

Offset 1, canonical program `A064138.P12736720339364131366`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064138 (n : ℕ) : ℤ :=
  A064138.P12736720339364131366.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064140.P1423845177142153834

`A034448(A001405(n+1))`
-/

namespace A064140.P1423845177142153834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A001405 (n + 1)).toNat

end

end A064140.P1423845177142153834

noncomputable section

/-- A064140: Sum of unitary divisors of central binomial coefficient C(n, floor(n/2)).

Offset 1, canonical program `A064140.P1423845177142153834`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064140 (n : ℕ) : ℤ :=
  A064140.P1423845177142153834.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064140.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064212.P10229143328642602721

`A000203(n+1)+A034448(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064212.P10229143328642602721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A034448 (n + 1)

end

end A064212.P10229143328642602721

noncomputable section

/-- A064212: a(n) = sigma(n) + usigma(n) = A000203(n) + A034448(n).

Offset 1, canonical program `A064212.P10229143328642602721`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064212 (n : ℕ) : ℤ :=
  A064212.P10229143328642602721.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064609.P1823082114239838603

`a(n-1)+A034448(n+1)` with `a(0)=1`
-/

namespace A064609.P1823082114239838603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A034448 (n + 1)

end

end A064609.P1823082114239838603

noncomputable section

/-- A064609: Partial sums of A034448: sum of unitary divisors from 1 to n.

Offset 1, canonical program `A064609.P1823082114239838603`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064609 (n : ℕ) : ℤ :=
  A064609.P1823082114239838603.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064816.P8948604951401718138

`eq[2, ceil(A053603(n)/2)]`
-/

namespace A064816.P8948604951401718138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053603 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064816.P8948604951401718138

noncomputable section

/-- A064816: Numbers which are the sums of two positive triangular numbers (A000217) in exactly two different ways.

Offset 1, canonical program `A064816.P8948604951401718138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1648 terms. -/
def A064816 (n : ℕ) : ℤ :=
  (A064816.P8948604951401718138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1648 terms. -/
def A064816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064828.P10612756008420980911

`eq[3, ceil(A053603(n)/2)]`
-/

namespace A064828.P10612756008420980911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053603 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064828.P10612756008420980911

noncomputable section

/-- A064828: Numbers which are the sum of two positive triangular numbers in exactly three different ways.

Offset 1, canonical program `A064828.P10612756008420980911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A064828 (n : ℕ) : ℤ :=
  (A064828.P10612756008420980911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A064828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064971.P17900775204614924634

`(n+1)*A034448(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064971.P17900775204614924634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034448 (n + 1)

end

end A064971.P17900775204614924634

noncomputable section

/-- A064971: a(n) = n*usigma(n), where usigma(n) is the sum of unitary divisors of n (A034448).

Offset 1, canonical program `A064971.P17900775204614924634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064971 (n : ℕ) : ℤ :=
  A064971.P17900775204614924634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064992.P11019565311280809988

`A034448(n+2)-A034448(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064992.P11019565311280809988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 2) - A034448 (n + 1)

end

end A064992.P11019565311280809988

noncomputable section

/-- A064992: a(n) = usigma(n+1) - usigma(n), where usigma(n) is the sum of unitary divisors of n (A034448).

Offset 1, canonical program `A064992.P11019565311280809988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064992 (n : ℕ) : ℤ :=
  A064992.P11019565311280809988.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065704.P16680503474839831592

`∑{d}[n+1, A053866(#)]`
-/

namespace A065704.P16680503474839831592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d

end

end A065704.P16680503474839831592

noncomputable section

/-- A065704: Number of squares or twice squares dividing n.

Offset 1, canonical program `A065704.P16680503474839831592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065704 (n : ℕ) : ℤ :=
  A065704.P16680503474839831592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065871.P16667973696206120642

`lt[0, A010051(A034448(n+1)+1)]+1`
-/

namespace A065871.P16667973696206120642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A034448 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065871.P16667973696206120642

noncomputable section

/-- A065871: Numbers k such that usigma(k) + 1 is a prime.

Offset 1, canonical program `A065871.P16667973696206120642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3153 terms. -/
def A065871 (n : ℕ) : ℤ :=
  (A065871.P16667973696206120642.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3153 terms. -/
def A065871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066072.P4556049328202150443

`1+A000010(A066071(n+1))`
-/

namespace A066072.P4556049328202150443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000010 (A066071 (n + 1)).toNat

end

end A066072.P4556049328202150443

noncomputable section

/-- A066072: Prime numbers arising in A066071.

Offset 1, canonical program `A066072.P4556049328202150443`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066072 (n : ℕ) : ℤ :=
  A066072.P4556049328202150443.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066072.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066249.P1311895009433369201

`A067747(xor(1, n)+1)-1`
-/

namespace A066249.P1311895009433369201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (Nat.xor 1 n + 1) - 1

end

end A066249.P1311895009433369201

noncomputable section

/-- A066249: Inverse permutation to A066248.

Offset 1, canonical program `A066249.P1311895009433369201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066249 (n : ℕ) : ℤ :=
  A066249.P1311895009433369201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066251.P7552776329069287313

`A067747(n+1)-1`
-/

namespace A066251.P7552776329069287313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (n + 1) - 1

end

end A066251.P7552776329069287313

noncomputable section

/-- A066251: Inverse permutation to A066250.

Offset 1, canonical program `A066251.P7552776329069287313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066251 (n : ℕ) : ℤ :=
  A066251.P7552776329069287313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066252.P8882327947693045390

`A066248(A066248(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066252.P8882327947693045390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066248 (A066248 (n + 1)).toNat

end

end A066252.P8882327947693045390

noncomputable section

/-- A066252: a(n) = A066248(A066248(n)).

Offset 1, canonical program `A066252.P8882327947693045390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066252 (n : ℕ) : ℤ :=
  A066252.P8882327947693045390.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067889.P13334168951864869108

`A045319(lt[A145337(n)², 1])`
-/

namespace A067889.P13334168951864869108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145337 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A067889.P13334168951864869108

noncomputable section

/-- A067889: Primes sandwiched between two numbers having same number of divisors.

Offset 1, canonical program `A067889.P13334168951864869108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 650 terms. -/
def A067889 (n : ℕ) : ℤ :=
  A067889.P13334168951864869108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 650 terms. -/
def A067889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067894.P1623004336795340653

`∑[∑[A138342(n+1)]-A138342(n+1)]`
-/

namespace A067894.P1623004336795340653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A138342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P1623004336795340653

noncomputable section

/-- A067894: Write 0, 1, ..., n in binary and add as if they were decimal numbers.

Offset 0, canonical program `A067894.P1623004336795340653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067894 (n : ℕ) : ℤ :=
  A067894.P1623004336795340653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068306.P5310264729729129435

`lt[A240471(n+1), A001222(n+1)]+1`
-/

namespace A068306.P5310264729729129435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068306.P5310264729729129435

noncomputable section

/-- A068306: Numbers n such that n*tau(n) < sigma(n)*bigomega(n) where tau(n)=A000005(n), sigma(n)=A000203(n), and bigomega(n)=A001222(n).

Offset 1, canonical program `A068306.P5310264729729129435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A068306 (n : ℕ) : ℤ :=
  (A068306.P5310264729729129435.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A068306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068582.P1025897322335427898

`eq[A000005(n+1), A049107(n+1)]+1`
-/

namespace A068582.P1025897322335427898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049107 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068582.P1025897322335427898

noncomputable section

/-- A068582: Let phi_m(x) = phi(phi(...(phi(x))...)) m times; sequence gives values of k such that phi_5(k) = tau(k).

Offset 1, canonical program `A068582.P1025897322335427898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A068582 (n : ℕ) : ℤ :=
  (A068582.P1025897322335427898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A068582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068781.P14060761799375853709

`A013929(eq[1, A013929(n+2)-A013929(n+1)]+1)`
-/

namespace A068781.P14060761799375853709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 2) - A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A068781.P14060761799375853709

noncomputable section

/-- A068781: Lesser of two consecutive numbers each divisible by a square.

Offset 1, canonical program `A068781.P14060761799375853709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068781 (n : ℕ) : ℤ :=
  A068781.P14060761799375853709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069081.P13948387109957077000

`eq[2, A057021(n+1)]+1`
-/

namespace A069081.P13948387109957077000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069081.P13948387109957077000

noncomputable section

/-- A069081: Numbers n such that sigma(n)/tau(n) has denominator 2.

Offset 1, canonical program `A069081.P13948387109957077000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. -/
def A069081 (n : ℕ) : ℤ :=
  (A069081.P13948387109957077000.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. -/
def A069081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069084.P9884750403589385875

`eq[5, A057021(n+1)]+1`
-/

namespace A069084.P9884750403589385875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069084.P9884750403589385875

noncomputable section

/-- A069084: Numbers n such that sigma(n)/tau(n) has denominator 5.

Offset 1, canonical program `A069084.P9884750403589385875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A069084 (n : ℕ) : ℤ :=
  (A069084.P9884750403589385875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A069084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069256.P11047273582001152722

`A000079(val(A000252(n+1), 2))`
-/

namespace A069256.P11047273582001152722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A000252 (n + 1)).toNat 2)

end

end A069256.P11047273582001152722

noncomputable section

/-- A069256: Size of the Sylow 2-subgroup of the group GL_2(Z_n): maximal power of 2 that divides A000252(n).

Offset 1, canonical program `A069256.P11047273582001152722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069256 (n : ℕ) : ℤ :=
  A069256.P11047273582001152722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070771.P2600916641898740480

`A055941(eq[4, A000120(n)])`
-/

namespace A070771.P2600916641898740480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070771.P2600916641898740480

noncomputable section

/-- A070771: b+c+d+e where b>=c>=d>=e>=0 ordered by b then c then d then e.

Offset 0, canonical program `A070771.P2600916641898740480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A070771 (n : ℕ) : ℤ :=
  A070771.P2600916641898740480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A070771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070772.P12759164093813601690

`A055941(eq[5, A000120(n)])`
-/

namespace A070772.P12759164093813601690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070772.P12759164093813601690

noncomputable section

/-- A070772: b+c+d+e+f where b>=c>=d>=e>=f>=0 ordered by b then c then d then e then f.

Offset 0, canonical program `A070772.P12759164093813601690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1614 terms. -/
def A070772 (n : ℕ) : ℤ :=
  A070772.P12759164093813601690.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1614 terms. -/
def A070772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071227.P17938757858889274973

`A000010(A033950(n+1)/A039819(n+1))`
-/

namespace A071227.P17938757858889274973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A033950 (n + 1) : ℚ) / (A039819 (n + 1) : ℚ))).toNat

end

end A071227.P17938757858889274973

noncomputable section

/-- A071227: Number of solutions 1<=x<=m to gcd(m,x) = tau(m) where m = A033950(n).

Offset 1, canonical program `A071227.P17938757858889274973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071227 (n : ℕ) : ℤ :=
  A071227.P17938757858889274973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071260.P4436838018633827743

`floor(sqrt(A067563(n+1)))`
-/

namespace A071260.P4436838018633827743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A067563 (n + 1))

end

end A071260.P4436838018633827743

noncomputable section

/-- A071260: Integer part of the geometric mean of the n-th prime prime(n) and the n-th composite number C(n).

Offset 0, canonical program `A071260.P4436838018633827743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071260 (n : ℕ) : ℤ :=
  A071260.P4436838018633827743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071854.P11151984717235714317

`A067434(n+1)-A000720(n+1)`
-/

namespace A071854.P11151984717235714317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - A000720 (n + 1)

end

end A071854.P11151984717235714317

noncomputable section

/-- A071854: a(n) = (number of distinct prime factors in C(2n,n)) - pi(n).

Offset 1, canonical program `A071854.P11151984717235714317`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071854 (n : ℕ) : ℤ :=
  A071854.P11151984717235714317.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072357.P5178513811147103073

`filter[A060687(n+1), A049240(#)]`
-/

namespace A072357.P5178513811147103073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A072357.P5178513811147103073

noncomputable section

/-- A072357: Cubefree nonsquares whose factorization into a product of primes contains exactly one square.

Offset 1, canonical program `A072357.P5178513811147103073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. -/
def A072357 (n : ℕ) : ℤ :=
  A072357.P5178513811147103073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. -/
def A072357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072476.P13674208267984674051

`∑[A038529(1+n)]`
-/

namespace A072476.P13674208267984674051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038529 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P13674208267984674051

noncomputable section

/-- A072476: Difference between the sum of first n prime numbers and the sum of first n composite numbers.

Offset 1, canonical program `A072476.P13674208267984674051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072476 (n : ℕ) : ℤ :=
  A072476.P13674208267984674051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072553.P13020264210276257073

`A066246(A073255(1+n))`
-/

namespace A072553.P13020264210276257073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (A073255 (1 + n)).toNat

end

end A072553.P13020264210276257073

noncomputable section

/-- A072553: Sigma of n-th composite number equals a(n)-th composite number if it is also a composite or equals zero if sigma[c] is prime.

Offset 1, canonical program `A072553.P13020264210276257073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2674 terms. -/
def A072553 (n : ℕ) : ℤ :=
  A072553.P13020264210276257073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2674 terms. -/
def A072553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072578.P13678441316220565133

`eq[A014499(A028310(n)), A080791(n)]`
-/

namespace A072578.P13678441316220565133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072578.P13678441316220565133

noncomputable section

/-- A072578: In binary representation: k has the same number of 0's as the k-th prime has 1's.

Offset 1, canonical program `A072578.P13678441316220565133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A072578 (n : ℕ) : ℤ :=
  (A072578.P13678441316220565133.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A072578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072588.P14826125497487737405

`filter[A072587(n+1), A049240(#)]`
-/

namespace A072588.P14826125497487737405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A072588.P14826125497487737405

noncomputable section

/-- A072588: Numbers having at least one prime factor with an odd and one with an even exponent.

Offset 1, canonical program `A072588.P14826125497487737405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9817 terms. -/
def A072588 (n : ℕ) : ℤ :=
  A072588.P14826125497487737405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9817 terms. -/
def A072588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073426.P5918157491881724604

`A004737(A072668(n+1)+n²)`
-/

namespace A073426.P5918157491881724604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A072668 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A073426.P5918157491881724604

noncomputable section

/-- A073426: Number of primes between n-th prime and n-th composite or number of primes that are >=Min[prime(n),c(n)] and are < Max[prime(n),c(n)].

Offset 1, canonical program `A073426.P5918157491881724604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A073426 (n : ℕ) : ℤ :=
  A073426.P5918157491881724604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A073426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073433.P3593679991118794542

`A071259(A073432(n+1))`
-/

namespace A073433.P3593679991118794542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071259 (A073432 (n + 1)).toNat

end

end A073433.P3593679991118794542

noncomputable section

/-- A073433: Value of [p(n)+c(n)]/2 when it is an integer; p(n) is n-th prime, c(n) is n-th composite.

Offset 1, canonical program `A073433.P3593679991118794542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4315 terms. -/
def A073433 (n : ℕ) : ℤ :=
  A073433.P3593679991118794542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4315 terms. -/
def A073433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073675.P5905341681042066843

`A065883(2*(n+1))*A234957(n+1)`
-/

namespace A073675.P5905341681042066843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (2 * (n + 1)) * A234957 (n + 1)

end

end A073675.P5905341681042066843

noncomputable section

/-- A073675: Rearrangement of natural numbers such that a(n) is the smallest proper divisor of n not included earlier but if no such divisor exists then a(n) is the smallest proper multiple of n not included earlier, subject always to the condition that a(n) is not equal to n.

Offset 1, canonical program `A073675.P5905341681042066843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073675 (n : ℕ) : ℤ :=
  A073675.P5905341681042066843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073803.P4157823894038143292

`A020725(lt[A334954(n+1), A062068(n+1)+1])`
-/

namespace A073803.P4157823894038143292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073803.P4157823894038143292

noncomputable section

/-- A073803: Numbers k such that the number of divisors of k is smaller than that of sigma(k).

Offset 1, canonical program `A073803.P4157823894038143292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9631 terms. -/
def A073803 (n : ℕ) : ℤ :=
  A073803.P4157823894038143292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9631 terms. -/
def A073803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073841.P7314902352590072057

`A025543(A065896(n+1))`
-/

namespace A073841.P7314902352590072057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 (A065896 (n + 1)).toNat

end

end A073841.P7314902352590072057

noncomputable section

/-- A073841: LCM of the composite numbers between n and 2n (both inclusive).

Offset 1, canonical program `A073841.P7314902352590072057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A073841 (n : ℕ) : ℤ :=
  A073841.P7314902352590072057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A073841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074313.P3730083430334687260

`A292936(p?[xor(1, n)])`
-/

namespace A074313.P3730083430334687260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A074313.P3730083430334687260

noncomputable section

/-- A074313: a(n) = the maximal length of a sequence of primes {s_1 = prime(n), s_2 = f(s1), s_3 = f(s_2), ....} formed by repeated application of f(m) = Floor(m/2) on prime(n).

Offset 1, canonical program `A074313.P3730083430334687260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. -/
def A074313 (n : ℕ) : ℤ :=
  A074313.P3730083430334687260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. -/
def A074313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074757.P1339424889027573742

`eq[0, A051951(n+1)]+2`
-/

namespace A074757.P1339424889027573742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A074757.P1339424889027573742

noncomputable section

/-- A074757: Numbers n such that tau(n) = (tau(n+1)+tau(n-1))/2.

Offset 1, canonical program `A074757.P1339424889027573742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 428 terms. -/
def A074757 (n : ℕ) : ℤ :=
  (A074757.P1339424889027573742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 428 terms. -/
def A074757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074789.P6952421410353009760

`∑[A034448(n+1)²]`
-/

namespace A074789.P6952421410353009760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P6952421410353009760

noncomputable section

/-- A074789: Partial sums of usigma(n)^2: square of the sum of unitary divisors of n.

Offset 1, canonical program `A074789.P6952421410353009760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074789 (n : ℕ) : ℤ :=
  A074789.P6952421410353009760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075325.P8762803133825797995

`A056832(n+1)+A047215(n)`
-/

namespace A075325.P8762803133825797995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) + A047215 n

end

end A075325.P8762803133825797995

noncomputable section

/-- A075325: Pair the natural numbers such that the m-th pair is (r, s) where r, s and s-r are the smallest numbers which have not occurred earlier and also are not equal to the difference of any earlier pair: (1, 3), (4, 9), (6, 13), (8, 18), (11, 23), (14, 29), (16, 33), (19, 39), (21, 43), (24, 49), (26, 53), (28, 58), ... Sequence gives first term of each pair.

Offset 1, canonical program `A075325.P8762803133825797995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075325 (n : ℕ) : ℤ :=
  A075325.P8762803133825797995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076078.P3842631660775757890

`2*A069626(n+1)-A000007(n)`
-/

namespace A076078.P3842631660775757890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069626 (n + 1) - A000007 n

end

end A076078.P3842631660775757890

noncomputable section

/-- A076078: a(n) is the number of nonempty sets of distinct positive integers that have a least common multiple of n.

Offset 1, canonical program `A076078.P3842631660775757890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076078 (n : ℕ) : ℤ :=
  A076078.P3842631660775757890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076179.P2951851553065995208

`A067747(A074147(n+1))`
-/

namespace A076179.P2951851553065995208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A074147 (n + 1)).toNat

end

end A076179.P2951851553065995208

noncomputable section

/-- A076179: 2n-1 primes followed by 2n composite numbers.

Offset 1, canonical program `A076179.P2951851553065995208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9970 terms. -/
def A076179 (n : ℕ) : ℤ :=
  A076179.P2951851553065995208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9970 terms. -/
def A076179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076333.P3429154276433821462

`A007947(A013929(n+1))`
-/

namespace A076333.P3429154276433821462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A013929 (n + 1)).toNat

end

end A076333.P3429154276433821462

noncomputable section

/-- A076333: Squarefree kernels of nonsquarefree numbers.

Offset 1, canonical program `A076333.P3429154276433821462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076333 (n : ℕ) : ℤ :=
  A076333.P3429154276433821462.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076333.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076361.P78704012862514364

`eq[0, A076360(n+1)]+1`
-/

namespace A076361.P78704012862514364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076361.P78704012862514364

noncomputable section

/-- A076361: Numbers k such that d(sigma(k)) = sigma(d(k)).

Offset 1, canonical program `A076361.P78704012862514364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A076361 (n : ℕ) : ℤ :=
  (A076361.P78704012862514364.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A076361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077598.P2942604265624404829

`∑[A143356(n+1)-A131089(n+1)]`
-/

namespace A077598.P2942604265624404829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143356 (n + 1) - A131089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077598.P2942604265624404829

noncomputable section

/-- A077598: Coefficient of x^2 in the n-th Moebius polynomial (A074586), M(n,x), which satisfies M(n,-1)=mu(n) the Moebius function of n.

Offset 1, canonical program `A077598.P2942604265624404829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077598 (n : ℕ) : ℤ :=
  A077598.P2942604265624404829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078147.P6737435720449306481

`A013929(n+2)-A013929(n+1)`
-/

namespace A078147.P6737435720449306481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 2) - A013929 (n + 1)

end

end A078147.P6737435720449306481

noncomputable section

/-- A078147: First differences of sequence of nonsquarefree numbers, A013929.

Offset 1, canonical program `A078147.P6737435720449306481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078147 (n : ℕ) : ℤ :=
  A078147.P6737435720449306481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080756.P4672071773290915658

`A013929(2+n)`
-/

namespace A080756.P4672071773290915658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (2 + n)

end

end A080756.P4672071773290915658

noncomputable section

/-- A080756: Numbers k such that there are infinitely many multiples of k that have exactly k divisors.

Offset 1, canonical program `A080756.P4672071773290915658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080756 (n : ℕ) : ℤ :=
  A080756.P4672071773290915658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081387.P309949724392534057

`A067434(n+1)-A081386(n+1)`
-/

namespace A081387.P309949724392534057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - A081386 (n + 1)

end

end A081387.P309949724392534057

noncomputable section

/-- A081387: Number of non-unitary prime divisors of central binomial coefficient, C(2n,n) = A000984(n), i.e., number of prime factors in C(2n,n) whose exponent is greater than one.

Offset 1, canonical program `A081387.P309949724392534057`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067434, A081386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081387 (n : ℕ) : ℤ :=
  A081387.P309949724392534057.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067434, A081386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081672.P4891467764290445925

`A027306(n)*A036453(n+1)`
-/

namespace A081672.P4891467764290445925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n * A036453 (n + 1)

end

end A081672.P4891467764290445925

noncomputable section

/-- A081672: Expansion of exp(2x) - exp(0) + BesselI_0(2x).

Offset 0, canonical program `A081672.P4891467764290445925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A081672 (n : ℕ) : ℤ :=
  A081672.P4891467764290445925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A081672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082294.P3187455701052448076

`eq[2, A071325(n+1)]+1`
-/

namespace A082294.P3187455701052448076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082294.P3187455701052448076

noncomputable section

/-- A082294: Numbers having exactly two square divisors > 1.

Offset 1, canonical program `A082294.P3187455701052448076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A082294 (n : ℕ) : ℤ :=
  (A082294.P3187455701052448076.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A082294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083251.P14965405990869838222

`eq[2, abs(A083245(n+1))]+1`
-/

namespace A083251.P14965405990869838222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083245 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083251.P14965405990869838222

noncomputable section

/-- A083251: Numbers m such that abs(A045763(m) - A073757(m)) = 2, i.e., signed difference of size of related and unrelated sets to n equals either 2 or -2.

Offset 1, canonical program `A083251.P14965405990869838222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A083251 (n : ℕ) : ℤ :=
  (A083251.P14965405990869838222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A083251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084936.P14305718559506900468

`A003557(A013929(n+1))`
-/

namespace A084936.P14305718559506900468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A013929 (n + 1)).toNat

end

end A084936.P14305718559506900468

noncomputable section

/-- A084936: Nonsquarefree numbers divided by their squarefree kernels.

Offset 1, canonical program `A084936.P14305718559506900468`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084936 (n : ℕ) : ℤ :=
  A084936.P14305718559506900468.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086015.P8185681382737640833

`∑{digits}[n², A014082(#)]`
-/

namespace A086015.P8185681382737640833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014082 x).sum

end

end A086015.P8185681382737640833

noncomputable section

/-- A086015: Number of 7's in decimal expansion of n^2.

Offset 0, canonical program `A086015.P8185681382737640833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086015 (n : ℕ) : ℤ :=
  A086015.P8185681382737640833.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086784.P15348777293391552746

`A080791(n)-∑{e}[and(n, -n), #]`
-/

namespace A086784.P15348777293391552746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A086784.P15348777293391552746

noncomputable section

/-- A086784: Number of non-trailing zeros in binary representation of n.

Offset 0, canonical program `A086784.P15348777293391552746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086784 (n : ℕ) : ℤ :=
  A086784.P15348777293391552746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087050.P17786858087998487882

`A000188(A013929(n+1))`
-/

namespace A087050.P17786858087998487882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A013929 (n + 1)).toNat

end

end A087050.P17786858087998487882

noncomputable section

/-- A087050: Square root of the largest square >1 dividing the n-th nonsquarefree number.

Offset 1, canonical program `A087050.P17786858087998487882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087050 (n : ℕ) : ℤ :=
  A087050.P17786858087998487882.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088737.P1992063766082002598

`A086971(A002808(n+1))`
-/

namespace A088737.P1992063766082002598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A002808 (n + 1)).toNat

end

end A088737.P1992063766082002598

noncomputable section

/-- A088737: Number of semiprime divisors of n-th composite number.

Offset 1, canonical program `A088737.P1992063766082002598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A088737 (n : ℕ) : ℤ :=
  A088737.P1992063766082002598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A088737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089805.P10188225100685804719

`Δ[xor(n, floor(n/2))]*A053866(3*n+2)`
-/

namespace A089805.P10188225100685804719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053866 (3 * n + 2)

end

end A089805.P10188225100685804719

noncomputable section

/-- A089805: Expansion of Jacobi theta function (theta_4(q^6) - theta_4(q^(2/3)))/2/q^(2/3).

Offset 0, canonical program `A089805.P10188225100685804719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089805 (n : ℕ) : ℤ :=
  A089805.P10188225100685804719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090706.P11114919675259605533

`C(floor(log2(n+1)), A080791(n))`
-/

namespace A090706.P11114919675259605533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.log 2 (n + 1)) (A080791 n).toNat

end

end A090706.P11114919675259605533

noncomputable section

/-- A090706: Number of numbers having in binary representation the same number of zeros and ones as n has.

Offset 0, canonical program `A090706.P11114919675259605533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090706 (n : ℕ) : ℤ :=
  (A090706.P11114919675259605533.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091395.P4279214809057582604

`A035182(∏{p}[1+n, #])`
-/

namespace A091395.P4279214809057582604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091395.P4279214809057582604

noncomputable section

/-- A091395: a(n) = Product_{ p | n } (1 + Legendre(-7,p) ).

Offset 1, canonical program `A091395.P4279214809057582604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091395 (n : ℕ) : ℤ :=
  A091395.P4279214809057582604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093518.P1184938026992592708

`ceil(A002175(n)/2)`
-/

namespace A093518.P1184938026992592708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002175 n : ℚ) / 2⌉

end

end A093518.P1184938026992592708

noncomputable section

/-- A093518: Number of ways of representing n as the sum of two (not necessarily distinct) generalized pentagonal numbers.

Offset 0, canonical program `A093518.P1184938026992592708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093518 (n : ℕ) : ℤ :=
  A093518.P1184938026992592708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093519.P639672327746029394

`eq[0, A002175(n)]`
-/

namespace A093519.P639672327746029394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002175 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093519.P639672327746029394

noncomputable section

/-- A093519: Numbers with no representation as the sum of two (not necessarily distinct) generalized pentagonal numbers.

Offset 1, canonical program `A093519.P639672327746029394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3971 terms. -/
def A093519 (n : ℕ) : ℤ :=
  (A093519.P639672327746029394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3971 terms. -/
def A093519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095750.P4067186980475810573

`A292936(p?[floor(A000040(n+1)/2)])-1`
-/

namespace A095750.P4067186980475810573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A095750.P4067186980475810573

noncomputable section

/-- A095750: "Degree" of the Sophie Germain primes (A005384).

Offset 0, canonical program `A095750.P4067186980475810573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095750 (n : ℕ) : ℤ :=
  A095750.P4067186980475810573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096199.P9180462710428091109

`eq[1, A000120(n)/gcd(A037861(n), A080791(n))]`
-/

namespace A096199.P9180462710428091109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℚ) / (Int.gcd (A037861 n) (A080791 n) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A096199.P9180462710428091109

noncomputable section

/-- A096199: Numbers such that in binary representation the length is a multiple of the number of ones.

Offset 1, canonical program `A096199.P9180462710428091109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1363 terms. -/
def A096199 (n : ℕ) : ℤ :=
  (A096199.P9180462710428091109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1363 terms. -/
def A096199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097480.P14818857482033285039

`A097363(1+n)+1`
-/

namespace A097480.P14818857482033285039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (1 + n) + 1

end

end A097480.P14818857482033285039

noncomputable section

/-- A097480: Positive integers n such that 2n-15 is prime.

Offset 1, canonical program `A097480.P14818857482033285039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097480 (n : ℕ) : ℤ :=
  A097480.P14818857482033285039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098003.P10348797530336827391

`A004396(A064614(2*n+3)-1)`
-/

namespace A098003.P10348797530336827391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A064614 (2 * n + 3) - 1).toNat

end

end A098003.P10348797530336827391

noncomputable section

/-- A098003: Start with positive integers. On the m-th step, shift terms a(m+1) to a(2m-1) one position to the left, then move a(m) to position (2m-1). Sequence is limit of reordering.

Offset 1, canonical program `A098003.P10348797530336827391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A098003 (n : ℕ) : ℤ :=
  A098003.P10348797530336827391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A098003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098189.P4675613756573831951

`A034448(n+1)-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098189.P4675613756573831951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A000010 (n + 1)

end

end A098189.P4675613756573831951

noncomputable section

/-- A098189: Sum of unitary divisors minus Euler phi: a(n) = A034448(n) - A000010(n).

Offset 1, canonical program `A098189.P4675613756573831951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098189 (n : ℕ) : ℤ :=
  A098189.P4675613756573831951.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098189.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098486.P15096063000832676447

`A064614(Δ[n²])`
-/

namespace A098486.P15096063000832676447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A098486.P15096063000832676447

noncomputable section

/-- A098486: Odd numbers with replacement of all prime factors 3 by 2.

Offset 1, canonical program `A098486.P15096063000832676447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A098486 (n : ℕ) : ℤ :=
  A098486.P15096063000832676447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A098486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099377.P13407792628475185126

`A038040(n+1)/A324121(n+1)`
-/

namespace A099377.P13407792628475185126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099377.P13407792628475185126

noncomputable section

/-- A099377: Numerators of the harmonic means of the divisors of the positive integers.

Offset 1, canonical program `A099377.P13407792628475185126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099377 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099377.P13407792628475185126.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099378.P9213895567346836025

`A057020(n+1)/gcd(A057020(n+1), A131738(n))`
-/

namespace A099378.P9213895567346836025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057020 (n + 1) : ℚ) / (Int.gcd (A057020 (n + 1)) (A131738 n) : ℚ)

end

end A099378.P9213895567346836025

noncomputable section

/-- A099378: Denominators of the harmonic means of the divisors of the positive integers.

Offset 1, canonical program `A099378.P9213895567346836025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099378 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099378.P9213895567346836025.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100260.P16219694720589245908

`xor(A020987(n)+1, and(1, n+1))`
-/

namespace A100260.P16219694720589245908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020987 n + 1) (Nat.land 1 (n + 1) : ℤ)

end

end A100260.P16219694720589245908

noncomputable section

/-- A100260: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 31, 3 -> 32.

Offset 1, canonical program `A100260.P16219694720589245908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100260 (n : ℕ) : ℤ :=
  A100260.P16219694720589245908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101324.P581730034148578791

`p?[A078782(n+2)+1]`
-/

namespace A101324.P581730034148578791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101324.P581730034148578791

noncomputable section

/-- A101324: Primes p such that p+1=C(q)=q-th composite and q is prime.

Offset 1, canonical program `A101324.P581730034148578791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101324 (n : ℕ) : ℤ :=
  A101324.P581730034148578791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103339.P4822592513541350289

`lcm(A034448(n+1), A298473(n+1))/A034448(n+1)`
-/

namespace A103339.P4822592513541350289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A034448 (n + 1)) (A298473 (n + 1)) : ℚ) / (A034448 (n + 1) : ℚ)

end

end A103339.P4822592513541350289

noncomputable section

/-- A103339: Numerator of the unitary harmonic mean (i.e., the harmonic mean of the unitary divisors) of the positive integer n.

Offset 1, canonical program `A103339.P4822592513541350289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103339 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A103339.P4822592513541350289.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103340.P10740590519268141763

`A034448(n+1)/gcd(A034448(n+1), A298473(n+1))`
-/

namespace A103340.P10740590519268141763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (Int.gcd (A034448 (n + 1)) (A298473 (n + 1)) : ℚ)

end

end A103340.P10740590519268141763

noncomputable section

/-- A103340: Denominator of the unitary harmonic mean (i.e., the harmonic mean of the unitary divisors) of the positive integer n.

Offset 1, canonical program `A103340.P10740590519268141763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A103340.P10740590519268141763.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103589.P9320291138281548847

`1-A103583(n)`
-/

namespace A103589.P9320291138281548847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A103583 n

end

end A103589.P9320291138281548847

noncomputable section

/-- A103589: 1's complement of A103583.

Offset 0, canonical program `A103589.P9320291138281548847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103589 (n : ℕ) : ℤ :=
  A103589.P9320291138281548847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103827.P12053517966830183647

`A034448(A103826(n+1))/A034444(A103826(n+1))`
-/

namespace A103827.P12053517966830183647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (A103826 (n + 1)).toNat : ℚ) / (A034444 (A103826 (n + 1)).toNat : ℚ)

end

end A103827.P12053517966830183647

noncomputable section

/-- A103827: Arithmetic means of the divisors of unitary arithmetic numbers (i.e., of those for which the arithmetic mean of the unitary divisors is an integer, A103826).

Offset 1, canonical program `A103827.P12053517966830183647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A103826, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A103827 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A103827.P12053517966830183647.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A103826, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A103827.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104201.P12103817333759853652

`A011974(A073169(n+1))`
-/

namespace A104201.P12103817333759853652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (A073169 (n + 1)).toNat

end

end A104201.P12103817333759853652

noncomputable section

/-- A104201: Sums of straddle primes.

Offset 4, canonical program `A104201.P12103817333759853652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A104201 (n : ℕ) : ℤ :=
  A104201.P12103817333759853652.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A104201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105584.P10417039556170221734

`2+n%2-A020985(n)`
-/

namespace A105584.P10417039556170221734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 + n % 2 : ℕ) : ℤ) - A020985 n

end

end A105584.P10417039556170221734

noncomputable section

/-- A105584: Fixed point of the morphism 1 -> 34, 2 -> 32, 3 -> 12, 4 -> 14, starting from a(0) = 1.

Offset 0, canonical program `A105584.P10417039556170221734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105584 (n : ℕ) : ℤ :=
  A105584.P10417039556170221734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105634.P14447733541575245411

`∑{d}[n+1, A007434(#)*A035182((n+1)/#)]`
-/

namespace A105634.P14447733541575245411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A035182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A105634.P14447733541575245411

noncomputable section

/-- A105634: Expansion of Sum_{k>0} Kronecker(k,7)*x^k*(1 + x^k)/(1 - x^k)^3.

Offset 1, canonical program `A105634.P14447733541575245411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105634 (n : ℕ) : ℤ :=
  A105634.P14447733541575245411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106481.P12208794138596707601

`A092249(n+1)-A106477(n)`
-/

namespace A106481.P12208794138596707601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) - A106477 n

end

end A106481.P12208794138596707601

noncomputable section

/-- A106481: An Euler phi transform of 1/(1 - x^2).

Offset 0, canonical program `A106481.P12208794138596707601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106481 (n : ℕ) : ℤ :=
  A106481.P12208794138596707601.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107749.P144943964937098899

`A000203(n+1)*A034448(n+1)/A069184(n+1)`
-/

namespace A107749.P144943964937098899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A034448 (n + 1) : ℚ) / (A069184 (n + 1) : ℚ)

end

end A107749.P144943964937098899

noncomputable section

/-- A107749: OrdinaryUnitarySigma(n): If n = Product p_i^r_i then OUSigma(n) = Sigma(2^r_1)*UnitarySigma(n/2^r_1).

Offset 1, canonical program `A107749.P144943964937098899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107749 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107749.P144943964937098899.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109251.P8283490023005339823

`A072114(10^n)`
-/

namespace A109251.P8283490023005339823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072114 (10 ^ n)

end

end A109251.P8283490023005339823

noncomputable section

/-- A109251: Number of numbers up to 10^n which are products of three primes.

Offset 0, canonical program `A109251.P8283490023005339823`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109251 (n : ℕ) : ℤ :=
  A109251.P8283490023005339823.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109712.P3623470777701250285

`A034448(A006519(n+1))*A047994((n+1)/A006519(n+1))`
-/

namespace A109712.P3623470777701250285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A006519 (n + 1)).toNat * A047994 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A109712.P3623470777701250285

noncomputable section

/-- A109712: UnitarySigmaUnitaryPhi(n) or USUP(n).

Offset 1, canonical program `A109712.P3623470777701250285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109712 (n : ℕ) : ℤ :=
  A109712.P3623470777701250285.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109712.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110085.P1056097740182562448

`lt[0, A353276(n+1)]+1`
-/

namespace A110085.P1056097740182562448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A110085.P1056097740182562448

noncomputable section

/-- A110085: Numbers k such that sigma(k) - phi(k) < tau(k)^omega(k), where sigma = A000203, phi = A000010, tau = A000005 and omega = A001221.

Offset 1, canonical program `A110085.P1056097740182562448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A110085 (n : ℕ) : ℤ :=
  (A110085.P1056097740182562448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A110085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110086.P3945987733214712058

`lt[-1, A353276(n+1)]+1`
-/

namespace A110086.P3945987733214712058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A110086.P3945987733214712058

noncomputable section

/-- A110086: Numbers k such that sigma(k) - phi(k) <= tau(k)^omega(k), where sigma = A000203, phi = A000010, tau = A000005 and omega = A001221.

Offset 1, canonical program `A110086.P3945987733214712058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A110086 (n : ℕ) : ℤ :=
  (A110086.P3945987733214712058.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A110086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110087.P11443064098674198962

`lt[A353276(n+2), 0]+2`
-/

namespace A110087.P11443064098674198962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A110087.P11443064098674198962

noncomputable section

/-- A110087: Numbers k such that sigma(k) - phi(k) > tau(k)^omega(k), where sigma = A000203, phi = A000010, tau = A000005 and omega = A001221.

Offset 1, canonical program `A110087.P11443064098674198962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7269 terms. -/
def A110087 (n : ℕ) : ℤ :=
  (A110087.P11443064098674198962.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7269 terms. -/
def A110087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110316.P13138358233452439156

`A000079(A296062(n))`
-/

namespace A110316.P13138358233452439156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A296062 n).toNat

end

end A110316.P13138358233452439156

noncomputable section

/-- A110316: a(n) is the number of different shapes of balanced binary trees with n nodes. The tree is balanced if the total number of nodes in the left and right branch of every node differ by at most one.

Offset 0, canonical program `A110316.P13138358233452439156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A110316 (n : ℕ) : ℤ :=
  A110316.P13138358233452439156.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A110316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110496.P5483106087847076975

`A117762(n+1)+A111333(n+1)`
-/

namespace A110496.P5483106087847076975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117762 (n + 1) + A111333 (n + 1)

end

end A110496.P5483106087847076975

noncomputable section

/-- A110496: Least k such that prime(n)^3 divides binomial(2k,k).

Offset 1, canonical program `A110496.P5483106087847076975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110496 (n : ℕ) : ℤ :=
  A110496.P5483106087847076975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114521.P13125088130632841430

`A008475(A114520(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114521.P13125088130632841430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A114520 (n + 1)).toNat

end

end A114521.P13125088130632841430

noncomputable section

/-- A114521: a(n) = A008475(A114520(n)).

Offset 1, canonical program `A114521.P13125088130632841430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A114520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114521 (n : ℕ) : ℤ :=
  A114521.P13125088130632841430.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A114520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116637.P550715832201764144

`A036453(n+1)*A047749(n)`
-/

namespace A116637.P550715832201764144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A047749 n

end

end A116637.P550715832201764144

noncomputable section

/-- A116637: G.f. satisfies: A(x) = x/series_reversion(x/G(x)) where A(x) + A(-x) = 2*G(x^2) and G(x) is the g.f. of A046646.

Offset 0, canonical program `A116637.P550715832201764144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A116637 (n : ℕ) : ℤ :=
  A116637.P550715832201764144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A116637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117658.P10121944413526807387

`A034448(A003557(n+1))*A056671(n+1)`
-/

namespace A117658.P10121944413526807387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A003557 (n + 1)).toNat * A056671 (n + 1)

end

end A117658.P10121944413526807387

noncomputable section

/-- A117658: Number of solutions to x^(k+1) = x^k mod n for some k >= 1.

Offset 1, canonical program `A117658.P10121944413526807387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117658 (n : ℕ) : ℤ :=
  A117658.P10121944413526807387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118139.P15269754510804949913

`lt[1, A052343(n)]`
-/

namespace A118139.P15269754510804949913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118139.P15269754510804949913

noncomputable section

/-- A118139: Numbers expressible as the sum of two triangular numbers in at least two different ways.

Offset 1, canonical program `A118139.P15269754510804949913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2196 terms. -/
def A118139 (n : ℕ) : ℤ :=
  (A118139.P15269754510804949913.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2196 terms. -/
def A118139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119345.P15651874011805489413

`eq[1, A052343(n)]`
-/

namespace A119345.P15651874011805489413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119345.P15651874011805489413

noncomputable section

/-- A119345: Numbers having exactly one representation as sum of two triangular numbers.

Offset 1, canonical program `A119345.P15651874011805489413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119345 (n : ℕ) : ℤ :=
  (A119345.P15651874011805489413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120327.P4710944750687290271

`A013929(A294234(2*n)+1)`
-/

namespace A120327.P4710944750687290271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (A294234 (2 * n) + 1).toNat

end

end A120327.P4710944750687290271

noncomputable section

/-- A120327: Smallest nonsquarefree number >= n.

Offset 1, canonical program `A120327.P4710944750687290271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120327 (n : ℕ) : ℤ :=
  A120327.P4710944750687290271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121450.P945339450011256380

`Δ[xor(n, 2*n)]%2*A132004(n+1)`
-/

namespace A121450.P945339450011256380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 * A132004 (n + 1)

end

end A121450.P945339450011256380

noncomputable section

/-- A121450: Expansion of (theta_4(q^3)^2 - theta_4(q)^2)/4 in powers of q.

Offset 1, canonical program `A121450.P945339450011256380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121450 (n : ℕ) : ℤ :=
  A121450.P945339450011256380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124850.P12264711281521083526

`∩[A023222(n+1), A090614(n+1)]`
-/

namespace A124850.P12264711281521083526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124850.P12264711281521083526

noncomputable section

/-- A124850: Primes p=n/2 such that 7n+3 and 3n+7 are primes.

Offset 1, canonical program `A124850.P12264711281521083526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 517 terms. -/
def A124850 (n : ℕ) : ℤ :=
  (A124850.P12264711281521083526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 517 terms. -/
def A124850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125217.P11062227851648241748

`eq[1, A125203(1+n)]+1`
-/

namespace A125217.P11062227851648241748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125217.P11062227851648241748

noncomputable section

/-- A125217: Numbers that can be written uniquely as 4*x*y-x-y with 1<=x<=y.

Offset 1, canonical program `A125217.P11062227851648241748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. -/
def A125217 (n : ℕ) : ℤ :=
  (A125217.P11062227851648241748.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. -/
def A125217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125218.P3417562193377331111

`lt[1, A125203(n+1)]+1`
-/

namespace A125218.P3417562193377331111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A125218.P3417562193377331111

noncomputable section

/-- A125218: Numbers having at least two representations as 4*x*y-x-y with 1<=x<=y.

Offset 1, canonical program `A125218.P3417562193377331111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3223 terms. -/
def A125218 (n : ℕ) : ℤ :=
  (A125218.P3417562193377331111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3223 terms. -/
def A125218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126209.P10127809837303638255

`∑{digits}[A000420(n), A014082(#)]`
-/

namespace A126209.P10127809837303638255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014082 x).sum

end

end A126209.P10127809837303638255

noncomputable section

/-- A126209: Number of 7's in decimal expansion of 7^n.

Offset 0, canonical program `A126209.P10127809837303638255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A126209 (n : ℕ) : ℤ :=
  A126209.P10127809837303638255.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A126209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127169.P17750561973413488397

`A034718(A054531(n+1))*A051731(n+1)`
-/

namespace A127169.P17750561973413488397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034718 (A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A127169.P17750561973413488397

noncomputable section

/-- A127169: Triangle read by rows: cube of A126988.

Offset 1, canonical program `A127169.P17750561973413488397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127169 (n : ℕ) : ℤ :=
  A127169.P17750561973413488397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127336.P17802364800562295121

`A127335(n+1)+A000040(n+9)`
-/

namespace A127336.P17802364800562295121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 1) + A000040 (n + 9)

end

end A127336.P17802364800562295121

noncomputable section

/-- A127336: Numbers that are the sum of 9 consecutive primes.

Offset 1, canonical program `A127336.P17802364800562295121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127336 (n : ℕ) : ℤ :=
  A127336.P17802364800562295121.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127396.P17057220394794836426

`A072114(2^(n+1))`
-/

namespace A127396.P17057220394794836426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072114 (2 ^ (n + 1))

end

end A127396.P17057220394794836426

noncomputable section

/-- A127396: Number of 3-almost-primes <= 2^n.

Offset 1, canonical program `A127396.P17057220394794836426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127396 (n : ℕ) : ℤ :=
  A127396.P17057220394794836426.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127396.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129447.P14635424549236213191

`A033999(n)*A125079(n)`
-/

namespace A129447.P14635424549236213191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A125079 n

end

end A129447.P14635424549236213191

noncomputable section

/-- A129447: Expansion of psi(q) * psi(q^3) * phi(q^3) / phi(q) in powers of q where psi(), phi() are Ramanujan theta functions.

Offset 0, canonical program `A129447.P14635424549236213191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129447 (n : ℕ) : ℤ :=
  A129447.P14635424549236213191.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130331.P15759110468226618183

`A000005(A123240(n+1))`
-/

namespace A130331.P15759110468226618183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123240 (n + 1)).toNat

end

end A130331.P15759110468226618183

noncomputable section

/-- A130331: Number of divisors of A123240(n).

Offset 1, canonical program `A130331.P15759110468226618183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130331 (n : ℕ) : ℤ :=
  A130331.P15759110468226618183.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131232.P4039545971167659637

`A131233(n+1)-A010055(n+1)`
-/

namespace A131232.P4039545971167659637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131233 (n + 1) - A010055 (n + 1)

end

end A131232.P4039545971167659637

noncomputable section

/-- A131232: a(n) is the number of positive integers < n that do not have 2 or more distinct prime divisors in common with n.

Offset 1, canonical program `A131232.P4039545971167659637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131232 (n : ℕ) : ℤ :=
  A131232.P4039545971167659637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131232.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131830.P11981854450058335817

`A131821(n+1)+A014473(n)`
-/

namespace A131830.P11981854450058335817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) + A014473 n

end

end A131830.P11981854450058335817

noncomputable section

/-- A131830: Triangle read by rows: T(n,0) = T(n,n) = n + 1 for n >= 0, and T(n,k) = binomial(n,k) for 1 <= k <= n - 1, n >= 2.

Offset 0, canonical program `A131830.P11981854450058335817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131830 (n : ℕ) : ℤ :=
  A131830.P11981854450058335817.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131843.P9084898771744653632

`2*A131821(n+1)-1`
-/

namespace A131843.P9084898771744653632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131821 (n + 1) - 1

end

end A131843.P9084898771744653632

noncomputable section

/-- A131843: Triangle read by rows: 2*A131821 - A000012.

Offset 0, canonical program `A131843.P9084898771744653632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131843 (n : ℕ) : ℤ :=
  A131843.P9084898771744653632.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131899.P5613504993565283858

`A131821(n+1)+A002262(n)`
-/

namespace A131899.P5613504993565283858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) + A002262 n

end

end A131899.P5613504993565283858

noncomputable section

/-- A131899: A002260 + A131821 - A000012.

Offset 0, canonical program `A131899.P5613504993565283858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131899 (n : ℕ) : ℤ :=
  A131899.P5613504993565283858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131900.P2968770492461010124

`A131821(n+1)-A025581(n)%2`
-/

namespace A131900.P2968770492461010124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) - Int.tmod (A025581 n) 2

end

end A131900.P2968770492461010124

noncomputable section

/-- A131900: A131821 + A128174 - A000012.

Offset 0, canonical program `A131900.P2968770492461010124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131900 (n : ℕ) : ℤ :=
  A131900.P2968770492461010124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131901.P10361417805036822121

`A111650(n+1)-A131821(n+1)`
-/

namespace A131901.P10361417805036822121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A131821 (n + 1)

end

end A131901.P10361417805036822121

noncomputable section

/-- A131901: 2*A002024 - A131821.

Offset 1, canonical program `A131901.P10361417805036822121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131901 (n : ℕ) : ℤ :=
  A131901.P10361417805036822121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133727.P10884205234152568613

`∑{d}[A127093(n+1), A326828(#)]`
-/

namespace A133727.P10884205234152568613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A326828 d

end

end A133727.P10884205234152568613

noncomputable section

/-- A133727: A051731 * A007438 as a diagonalized matrix.

Offset 1, canonical program `A133727.P10884205234152568613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133727 (n : ℕ) : ℤ :=
  A133727.P10884205234152568613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134309.P6504127793321082185

`ceil(A130123(n)/2)`
-/

namespace A134309.P6504127793321082185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130123 n : ℚ) / 2⌉

end

end A134309.P6504127793321082185

noncomputable section

/-- A134309: Triangle read by rows, where row n consists of n zeros followed by 2^(n-1).

Offset 0, canonical program `A134309.P6504127793321082185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134309 (n : ℕ) : ℤ :=
  A134309.P6504127793321082185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134348.P202855012637188097

`2*A130123(n)-A130595(n)`
-/

namespace A134348.P202855012637188097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130123 n - A130595 n

end

end A134348.P202855012637188097

noncomputable section

/-- A134348: A007318^(-1) * A134347.

Offset 0, canonical program `A134348.P202855012637188097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134348 (n : ℕ) : ℤ :=
  A134348.P202855012637188097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134548.P12181077314065941392

`Δ[A095815(a(n-1))+A036453(n+1)]` with `a(0)=0, a(1)=1`
-/

namespace A134548.P12181077314065941392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A095815 (f1 (n - 1)).toNat + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134548.P12181077314065941392

noncomputable section

/-- A134548: a(1)=1, a(n) = 2 + maximal digit of Sum_{j=1..n-1} a(j).

Offset 1, canonical program `A134548.P12181077314065941392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1051 terms. -/
def A134548 (n : ℕ) : ℤ :=
  A134548.P12181077314065941392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1051 terms. -/
def A134548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134852.P13918386080311944106

`A080345(lt[C(2, A080345(n+1)), 2]+1)`
-/

namespace A134852.P13918386080311944106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A080345 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080345 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A134852.P13918386080311944106

noncomputable section

/-- A134852: Number of distinct prime factors of the Fibonacci numbers in A050937.

Offset 1, canonical program `A134852.P13918386080311944106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A134852 (n : ℕ) : ℤ :=
  A134852.P13918386080311944106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A134852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135682.P1249324066219577572

`A083245(lcm(A135679(n+1), A135680(n+1)))`
-/

namespace A135682.P1249324066219577572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (Int.lcm (A135679 (n + 1)) (A135680 (n + 1)))

end

end A135682.P1249324066219577572

noncomputable section

/-- A135682: a(n)=n if n=1 or if n=prime. Otherwise, n=4 if n is even and n=7 if n is odd.

Offset 1, canonical program `A135682.P1249324066219577572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135682 (n : ℕ) : ℤ :=
  A135682.P1249324066219577572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135832.P7134565724259816016

`p?[A005239(n+1)]`
-/

namespace A135832.P7134565724259816016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135832.P7134565724259816016

noncomputable section

/-- A135832: Irregular triangle of Section I primes. Row n contains primes p with 2^n < p < 2^(n+1) and phi^n(p) = 2, where phi^n means n iterations of Euler's totient function.

Offset 1, canonical program `A135832.P7134565724259816016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 857 terms. -/
def A135832 (n : ℕ) : ℤ :=
  A135832.P7134565724259816016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 857 terms. -/
def A135832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137254.P7030541857692813391

`eq[abs(A037861(n)), A080791(n)]`
-/

namespace A137254.P7030541857692813391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037861 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137254.P7030541857692813391

noncomputable section

/-- A137254: Numbers k for which r(k) = 3 * S(k)/2, where r(k) = number of digits of k and S(k) = sum of digits of k; k in binary notation.

Offset 1, canonical program `A137254.P7030541857692813391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A137254 (n : ℕ) : ℤ :=
  (A137254.P7030541857692813391.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A137254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137490.P3679708091584043787

`(eq[7, A056595(n+1)]+1)²`
-/

namespace A137490.P3679708091584043787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A137490.P3679708091584043787

noncomputable section

/-- A137490: Numbers with 27 divisors.

Offset 1, canonical program `A137490.P3679708091584043787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137490 (n : ℕ) : ℤ :=
  (A137490.P3679708091584043787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138458.P4441180293552606245

`A138456(n+1)-A138457(n+1)`
-/

namespace A138458.P4441180293552606245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138456 (n + 1) - A138457 (n + 1)

end

end A138458.P4441180293552606245

noncomputable section

/-- A138458: a(n) = ((n-th prime)^6-(n-th prime)^4)/24.

Offset 1, canonical program `A138458.P4441180293552606245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138458 (n : ℕ) : ℤ :=
  A138458.P4441180293552606245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139140.P15434870677707820248

`Δ[A253769(A028310(n))%A001844(n)]`
-/

namespace A139140.P15434870677707820248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253769 (A028310 n).toNat) (A001844 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139140.P15434870677707820248

noncomputable section

/-- A139140: For n>=1, a(n) = d(prime(n)+1) + d(prime(n)+2) + d(prime(n)+3) + ... + d(prime(n+1)), where d(m) is the number of positive divisors of m and prime(n) is the n-th prime. a(0) = d(1) + d(2).

Offset 0, canonical program `A139140.P15434870677707820248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A139140 (n : ℕ) : ℤ :=
  A139140.P15434870677707820248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A139140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139524.P6795429159031582513

`A130123(A061579(n))+A028326(n)`
-/

namespace A139524.P6795429159031582513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 (A061579 n).toNat + A028326 n

end

end A139524.P6795429159031582513

noncomputable section

/-- A139524: Triangle T(n,k) read by rows: the coefficient of [x^k] of the polynomial 2*(x+1)^n + 2^n in row n, column k.

Offset 0, canonical program `A139524.P6795429159031582513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A139524 (n : ℕ) : ℤ :=
  A139524.P6795429159031582513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A139524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139587.P10239951385813778366

`∩[A123240(n+1), comp[A000045(n)]]`
-/

namespace A139587.P10239951385813778366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A139587.P10239951385813778366

noncomputable section

/-- A139587: Non-Fibonacci numbers with non-Fibonacci number of divisors.

Offset 1, canonical program `A139587.P10239951385813778366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A139587 (n : ℕ) : ℤ :=
  (A139587.P10239951385813778366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A139587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140703.P2993075249473134701

`A061201(ceil(ratio[A074909(n)]))`
-/

namespace A140703.P2993075249473134701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A140703.P2993075249473134701

noncomputable section

/-- A140703: A000012 * A051731^3.

Offset 1, canonical program `A140703.P2993075249473134701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140703 (n : ℕ) : ℤ :=
  A140703.P2993075249473134701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141791.P18036711199778843654

`p?[A073169(n+1)]`
-/

namespace A141791.P18036711199778843654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141791.P18036711199778843654

noncomputable section

/-- A141791: Primes of the form c(n)-n, where c(n)=n-th composite.

Offset 1, canonical program `A141791.P18036711199778843654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141791 (n : ℕ) : ℤ :=
  A141791.P18036711199778843654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143070.P1854669171373980450

`eq[1, A000120(A080791(n))]`
-/

namespace A143070.P1854669171373980450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A080791 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143070.P1854669171373980450

noncomputable section

/-- A143070: A positive integer n is included if the number of 0's in the binary representation of n is a power of 2 (including being possibly 1).

Offset 1, canonical program `A143070.P1854669171373980450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. -/
def A143070 (n : ℕ) : ℤ :=
  (A143070.P1854669171373980450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. -/
def A143070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143772.P6477686622307368865

`gcd(24, A079696(n+1))`
-/

namespace A143772.P6477686622307368865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 24 (A079696 (n + 1))

end

end A143772.P6477686622307368865

noncomputable section

/-- A143772: If m is the n-th composite, then a(n) = gcd(k + m/k), where k is over all divisors of m.

Offset 1, canonical program `A143772.P6477686622307368865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143772 (n : ℕ) : ℤ :=
  (A143772.P6477686622307368865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143909.P14085744542881538141

`eq[A080791(n), A099244(A028310(n))]`
-/

namespace A143909.P14085744542881538141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143909.P14085744542881538141

noncomputable section

/-- A143909: A positive integer k is included if the number of digits in the binary representation of k is a multiple of the number of zeros in the binary representation of k.

Offset 1, canonical program `A143909.P14085744542881538141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1797 terms. -/
def A143909 (n : ℕ) : ℤ :=
  (A143909.P14085744542881538141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1797 terms. -/
def A143909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144147.P16570497614994514554

`∩[A074946(n+1), A144146(n+1)]`
-/

namespace A144147.P16570497614994514554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144147.P16570497614994514554

noncomputable section

/-- A144147: A positive integer k is included if every exponent in the prime factorization of k is coprime to k and if the sum of these prime-factorization exponents divides k.

Offset 1, canonical program `A144147.P16570497614994514554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4170 terms. -/
def A144147 (n : ℕ) : ℤ :=
  (A144147.P16570497614994514554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4170 terms. -/
def A144147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144255.P6279309011135346714

`(A085722(n+1)%A081619(2*(n+1)))²+1`
-/

namespace A144255.P6279309011135346714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085722 (n + 1)) (A081619 (2 * (n + 1))) ^ 2 + 1

end

end A144255.P6279309011135346714

noncomputable section

/-- A144255: Semiprimes of the form k^2+1.

Offset 1, canonical program `A144255.P6279309011135346714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A144255 (n : ℕ) : ℤ :=
  A144255.P6279309011135346714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A144255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144754.P1139666669672371896

`eq[1, ∑{e}[A080791(n), #]]`
-/

namespace A144754.P1139666669672371896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144754.P1139666669672371896

noncomputable section

/-- A144754: Integers that have a prime number of 0's in their binary expansion.

Offset 1, canonical program `A144754.P1139666669672371896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A144754 (n : ℕ) : ℤ :=
  (A144754.P1139666669672371896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A144754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147517.P5188286717803758743

`A002375(A002110(n+1))`
-/

namespace A147517.P5188286717803758743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A002110 (n + 1)).toNat

end

end A147517.P5188286717803758743

noncomputable section

/-- A147517: Number of pairs of primes p < q such that (p+q)/2 = A002110(n), the n-th primorial.

Offset 1, canonical program `A147517.P5188286717803758743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147517 (n : ℕ) : ℤ :=
  A147517.P5188286717803758743.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152088.P16024274241794701574

`eq[A032741(n)+1, A080791(n)]`
-/

namespace A152088.P16024274241794701574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152088.P16024274241794701574

noncomputable section

/-- A152088: Positive integers k that when written in binary have exactly the same number of (non-leading) 0's as the number of divisors of k.

Offset 1, canonical program `A152088.P16024274241794701574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 869 terms. -/
def A152088 (n : ℕ) : ℤ :=
  (A152088.P16024274241794701574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 869 terms. -/
def A152088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152455.P5904217643679634782

`xor(A063524(n), A080737(n+1))`
-/

namespace A152455.P5904217643679634782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A080737 (n + 1))

end

end A152455.P5904217643679634782

noncomputable section

/-- A152455: a(n) = minimal integer m such that there exists an m X m integer matrix of order n.

Offset 1, canonical program `A152455.P5904217643679634782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152455 (n : ℕ) : ℤ :=
  A152455.P5904217643679634782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156229.P14210188501640213565

`∑[A052343(n)]`
-/

namespace A156229.P14210188501640213565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156229.P14210188501640213565

noncomputable section

/-- A156229: Partial sums of A052343.

Offset 0, canonical program `A156229.P14210188501640213565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156229 (n : ℕ) : ℤ :=
  A156229.P14210188501640213565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157130.P15334453636058034094

`or(∑[A128201(n+1)], A000007(n))`
-/

namespace A157130.P15334453636058034094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A157130.P15334453636058034094

noncomputable section

/-- A157130: Partial sums of A128201.

Offset 1, canonical program `A157130.P15334453636058034094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157130 (n : ℕ) : ℤ :=
  A157130.P15334453636058034094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157724.P18355006247608017594

`∪[A048974(n+1), A282671(n+1)]`
-/

namespace A157724.P18355006247608017594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157724.P18355006247608017594

noncomputable section

/-- A157724: Numbers that are the sum of two distinct primes but are not twice a prime.

Offset 1, canonical program `A157724.P18355006247608017594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A157724 (n : ℕ) : ℤ :=
  (A157724.P18355006247608017594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A157724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160651.P14045430326735677047

`A147810(Δ[n²])`
-/

namespace A160651.P14045430326735677047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A160651.P14045430326735677047

noncomputable section

/-- A160651: a(n) is the number of triangular nonnegative integers that are each equal to n(n+1)/2 - m(m+1)/2, for some m's where 0 <= m <= n.

Offset 0, canonical program `A160651.P14045430326735677047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A160651 (n : ℕ) : ℤ :=
  A160651.P14045430326735677047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A160651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161152.P4512711989289517509

`eq[1, gcd(n, A080791(n))]`
-/

namespace A161152.P4512711989289517509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A080791 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161152.P4512711989289517509

noncomputable section

/-- A161152: Positive integers n such that {the number of (non-leading) 0's in the binary representation of n} is coprime to n.

Offset 1, canonical program `A161152.P4512711989289517509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161152 (n : ℕ) : ℤ :=
  (A161152.P4512711989289517509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161156.P1156421313180752501

`∩[A161154(n+1), comp[A161155(n+1)]]`
-/

namespace A161156.P1156421313180752501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161154 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161155 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A161156.P1156421313180752501

noncomputable section

/-- A161156: Positive integers n such that {the number of (non-leading) 0's in the binary representation of n} is coprime to n, and {the number of 1's in the binary representation of n} is coprime to n, but {the number of digits in the binary representation of n} is not coprime to n.

Offset 1, canonical program `A161156.P1156421313180752501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A161156 (n : ℕ) : ℤ :=
  (A161156.P1156421313180752501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A161156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161540.P11595900627706559669

`p?[A161537(n+1)]`
-/

namespace A161540.P11595900627706559669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161540.P11595900627706559669

noncomputable section

/-- A161540: Primes which are the sum of a smaller n and its composite(n) subscript. A002808 + a(n) (= prime).

Offset 1, canonical program `A161540.P11595900627706559669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161540 (n : ℕ) : ℤ :=
  A161540.P11595900627706559669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161641.P16868169590258597238

`eq[0, A096268(floor(n/4))]`
-/

namespace A161641.P16868169590258597238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161641.P16868169590258597238

noncomputable section

/-- A161641: Positions n such that A010060(n) + A010060(n+4) = 1.

Offset 1, canonical program `A161641.P16868169590258597238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161641 (n : ℕ) : ℤ :=
  (A161641.P16868169590258597238.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161817.P11412616101657124378

`eq[A035263(n+1), A039963(ceil(n/2))]`
-/

namespace A161817.P11412616101657124378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161817.P11412616101657124378

noncomputable section

/-- A161817: Positions n such that A010060(n) = A010060(n+5).

Offset 1, canonical program `A161817.P11412616101657124378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161817 (n : ℕ) : ℤ :=
  (A161817.P11412616101657124378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161918.P17534431257680054511

`filter[A030513(n+1), A353627(#)]`
-/

namespace A161918.P17534431257680054511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A161918.P17534431257680054511

noncomputable section

/-- A161918: Numbers n such that the sum of the divisors minus the sum of the prime factors (counted with multiplicity) is equal to n+1.

Offset 1, canonical program `A161918.P17534431257680054511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. -/
def A161918 (n : ℕ) : ℤ :=
  A161918.P17534431257680054511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. -/
def A161918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161946.P965283892318521115

`A000265(A034448(n+1))`
-/

namespace A161946.P965283892318521115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A034448 (n + 1)).toNat

end

end A161946.P965283892318521115

noncomputable section

/-- A161946: Odd part of sum of unitary divisors of n.

Offset 1, canonical program `A161946.P965283892318521115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161946 (n : ℕ) : ℤ :=
  A161946.P965283892318521115.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161946.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162188.P9451871027428952620

`lt[∏{e}[n, #+1], A076368(n+1)-1]`
-/

namespace A162188.P9451871027428952620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A162188.P9451871027428952620

noncomputable section

/-- A162188: Numbers k such that A001223(k) > A000005(k).

Offset 1, canonical program `A162188.P9451871027428952620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5054 terms. -/
def A162188 (n : ℕ) : ℤ :=
  (A162188.P9451871027428952620.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5054 terms. -/
def A162188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162196.P4903355078575306255

`A152770(A018252(n+1))`
-/

namespace A162196.P4903355078575306255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A018252 (n + 1)).toNat

end

end A162196.P4903355078575306255

noncomputable section

/-- A162196: Sum of proper divisors minus the number of proper divisors of nonprime number A018252(n).

Offset 1, canonical program `A162196.P4903355078575306255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162196 (n : ℕ) : ℤ :=
  A162196.P4903355078575306255.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163409.P2175835081042334788

`A008475(A163408(n+1))`
-/

namespace A163409.P2175835081042334788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A163408 (n + 1)).toNat

end

end A163409.P2175835081042334788

noncomputable section

/-- A163409: Subsequence of composite terms of A008475.

Offset 1, canonical program `A163409.P2175835081042334788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163408, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163409 (n : ℕ) : ℤ :=
  A163409.P2175835081042334788.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163408, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163838.P7117750658777831456

`A002808(n+1)*A144925(n+1)`
-/

namespace A163838.P7117750658777831456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * A144925 (n + 1)

end

end A163838.P7117750658777831456

noncomputable section

/-- A163838: a(n) = (n-th composite) * (number of nontrivial divisors of n-th composite).

Offset 1, canonical program `A163838.P7117750658777831456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144925, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163838 (n : ℕ) : ℤ :=
  A163838.P7117750658777831456.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144925, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164279.P1036385505928145271

`3^A000523(n+1)*(2/3)^(A088696(n+1)-1)`
-/

namespace A164279.P1036385505928145271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000523 (n + 1) : ℤ) * ((2 : ℚ) / 3) ^ (A088696 (n + 1) - 1 : ℤ)

end

end A164279.P1036385505928145271

noncomputable section

/-- A164279: Triangle of 2^n terms per row, a Petoukhov sequence generated from (3,2).

Offset 0, canonical program `A164279.P1036385505928145271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088696, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164279 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164279.P1036385505928145271.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088696, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164281.P1689118351507972365

`A011782(A088696(n+1))`
-/

namespace A164281.P1689118351507972365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A088696 (n + 1)).toNat

end

end A164281.P1689118351507972365

noncomputable section

/-- A164281: Triangle read by rows, a Petoukhov sequence (cf. A164279) generated from (1,2).

Offset 0, canonical program `A164281.P1689118351507972365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A164281 (n : ℕ) : ℤ :=
  A164281.P1689118351507972365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A164281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164336.P8542371766919917307

`A096165(n-a(val(n, n+1))+1)` with `a(0)=1`
-/

namespace A164336.P8542371766919917307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096165 ((n : ℤ) - a (SequenceMachineLib.valuation n (n + 1)) + 1).toNat

end

end A164336.P8542371766919917307

noncomputable section

/-- A164336: a(1)=1. Thereafter, all terms are primes raised to the values of earlier terms of the sequence.

Offset 1, canonical program `A164336.P8542371766919917307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164336 (n : ℕ) : ℤ :=
  A164336.P8542371766919917307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168011.P15232685062326223933

`∑[A168010(n+1)]`
-/

namespace A168011.P15232685062326223933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168011.P15232685062326223933

noncomputable section

/-- A168011: a(n) = Sum of all numbers of divisors of all numbers < (n+1)^2.

Offset 1, canonical program `A168011.P15232685062326223933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168011 (n : ℕ) : ℤ :=
  A168011.P15232685062326223933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168055.P15791623395348376297

`A036453(n+1)*A168049(n)`
-/

namespace A168055.P15791623395348376297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A168049 n

end

end A168055.P15791623395348376297

noncomputable section

/-- A168055: Expansion of 2 - x - sqrt(1-2x-3x^2).

Offset 0, canonical program `A168055.P15791623395348376297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A168055 (n : ℕ) : ℤ :=
  A168055.P15791623395348376297.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A168055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168622.P8181968410197994122

`gcd(A013614(n), A131115(n))`
-/

namespace A168622.P8181968410197994122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013614 n) (A131115 n)

end

end A168622.P8181968410197994122

noncomputable section

/-- A168622: Triangle read by rows: T(n, k) = [x^k]( 7*(1+x)^n - 6*(1+x^n) ) with T(0, 0) = 1.

Offset 0, canonical program `A168622.P8181968410197994122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A168622 (n : ℕ) : ℤ :=
  (A168622.P8181968410197994122.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A168622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171127.P17353130976212097611

`eq[2, A169611(n+1)]+1`
-/

namespace A171127.P17353130976212097611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171127.P17353130976212097611

noncomputable section

/-- A171127: Numbers k such that A169611(k) = 2.

Offset 1, canonical program `A171127.P17353130976212097611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1759 terms. -/
def A171127 (n : ℕ) : ℤ :=
  (A171127.P17353130976212097611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1759 terms. -/
def A171127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171241.P9264165893758049052

`eq[3, A169611(n+1)]+1`
-/

namespace A171241.P9264165893758049052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171241.P9264165893758049052

noncomputable section

/-- A171241: Numbers k such that A169611(k) = 3.

Offset 1, canonical program `A171241.P9264165893758049052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1003 terms. -/
def A171241 (n : ℕ) : ℤ :=
  (A171241.P9264165893758049052.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1003 terms. -/
def A171241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171611.P17409659021448852249

`A002375(n+1)-A061358(2*n+1)`
-/

namespace A171611.P17409659021448852249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A061358 (2 * n + 1)

end

end A171611.P17409659021448852249

noncomputable section

/-- A171611: From Goldbach problem: number of decompositions of 2n into unordered sums of two primes > 3.

Offset 1, canonical program `A171611.P17409659021448852249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A171611 (n : ℕ) : ℤ :=
  A171611.P17409659021448852249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A171611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172054.P10035823565765016099

`A121765(n+1)-A121763(n+1)`
-/

namespace A172054.P10035823565765016099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121765 (n + 1) - A121763 (n + 1)

end

end A172054.P10035823565765016099

noncomputable section

/-- A172054: n-th number k such that 6*k-1 is composite while 6*k+1 is prime minus n-th number m such that 6*m-1 is prime while 6*m+1 is composite.

Offset 1, canonical program `A172054.P10035823565765016099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172054 (n : ℕ) : ℤ :=
  A172054.P10035823565765016099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172055.P1149678872916383177

`A121765(n+1)+A121763(n+1)`
-/

namespace A172055.P1149678872916383177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121765 (n + 1) + A121763 (n + 1)

end

end A172055.P1149678872916383177

noncomputable section

/-- A172055: n-th number k such that 6*k-1 is composite while 6*k+1 is prime plus n-th number m such that 6*m-1 is prime while 6*m+1 is composite.

Offset 1, canonical program `A172055.P1149678872916383177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172055 (n : ℕ) : ℤ :=
  A172055.P1149678872916383177.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121763, A121765, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172055.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174961.P1799675732854535246

`A048105(A013929(n+1))`
-/

namespace A174961.P1799675732854535246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A013929 (n + 1)).toNat

end

end A174961.P1799675732854535246

noncomputable section

/-- A174961: Number of non-unitary divisors of the n-th nonsquarefree number.

Offset 1, canonical program `A174961.P1799675732854535246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174961 (n : ℕ) : ℤ :=
  A174961.P1799675732854535246.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174961.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175746.P1226812714063518705

`filter[A081619(n+2), A181183(#)]`
-/

namespace A175746.P1226812714063518705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A175746.P1226812714063518705

noncomputable section

/-- A175746: Numbers with 36 divisors.

Offset 1, canonical program `A175746.P1226812714063518705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 743 terms. -/
def A175746 (n : ℕ) : ℤ :=
  A175746.P1226812714063518705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 743 terms. -/
def A175746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176227.P861613329376267430

`A176224(eq[0, A053398(n+1)])`
-/

namespace A176227.P861613329376267430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176227.P861613329376267430

noncomputable section

/-- A176227: A symmetrical triangle sequence: T(n, k) = q^k + q^(n-k) - q^n, with q=4.

Offset 0, canonical program `A176227.P861613329376267430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A176227 (n : ℕ) : ℤ :=
  A176227.P861613329376267430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A176227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180097.P10343464858030569198

`record[A000027(n+1)*A112526(A000203(n+1))]`
-/

namespace A180097.P10343464858030569198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A112526 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180097.P10343464858030569198

noncomputable section

/-- A180097: Numbers k such that sigma(k) is powerful.

Offset 1, canonical program `A180097.P10343464858030569198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A180097 (n : ℕ) : ℤ :=
  A180097.P10343464858030569198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A180097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181549.P13656909591673600582

`∑{d}[n, n/#*A189021(#)]`
-/

namespace A181549.P13656909591673600582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℚ) / (d : ℚ) * (A189021 d : ℚ)

end

end A181549.P13656909591673600582

noncomputable section

/-- A181549: a(n) = Sum_{k|n} k*mu_2(n/k).

Offset 0, canonical program `A181549.P13656909591673600582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181549 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181549.P13656909591673600582.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182318.P12456302042161532717

`filter[A047501(n+1), A295316(#)]`
-/

namespace A182318.P12456302042161532717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A182318.P12456302042161532717

noncomputable section

/-- A182318: List of positive integers whose prime tower factorization, as defined in comments, does not contain the prime 2.

Offset 1, canonical program `A182318.P12456302042161532717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6763 terms. -/
def A182318 (n : ℕ) : ℤ :=
  A182318.P12456302042161532717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6763 terms. -/
def A182318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182340.P464581348279077059

`eq[5, gcd(5, A000026(n+1))]+1`
-/

namespace A182340.P464581348279077059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A000026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A182340.P464581348279077059

noncomputable section

/-- A182340: List of positive integers whose prime tower factorization, as defined in comments, contains the prime 5.

Offset 1, canonical program `A182340.P464581348279077059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2150 terms. -/
def A182340 (n : ℕ) : ℤ :=
  (A182340.P464581348279077059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2150 terms. -/
def A182340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182341.P1387839447626138029

`eq[7, gcd(7, A000026(n+1))]+1`
-/

namespace A182341.P1387839447626138029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A000026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A182341.P1387839447626138029

noncomputable section

/-- A182341: List of positive integers whose prime tower factorization, as defined in comments, contains the prime 7.

Offset 1, canonical program `A182341.P1387839447626138029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. -/
def A182341 (n : ℕ) : ℤ :=
  (A182341.P1387839447626138029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. -/
def A182341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182358.P2961937439020807832

`eq[1, A295664(n+1)]+1`
-/

namespace A182358.P2961937439020807832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182358.P2961937439020807832

noncomputable section

/-- A182358: Numbers n for which the number of divisors of n is congruent to 2 mod 4.

Offset 1, canonical program `A182358.P2961937439020807832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9941 terms. -/
def A182358 (n : ℕ) : ℤ :=
  (A182358.P2961937439020807832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9941 terms. -/
def A182358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182471.P3637716054381294582

`floor(A008474(n+1)/A000026(A034444(n+1)))`
-/

namespace A182471.P3637716054381294582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008474 (n + 1) : ℚ) / (A000026 (A034444 (n + 1)).toNat : ℚ)⌋

end

end A182471.P3637716054381294582

noncomputable section

/-- A182471: If n = Product (p_j^k_j), j=1 to m, then a(n) = Floor( Sum (p_j + k_j) / 2m ) (a(1) = 0 by convention).

Offset 1, canonical program `A182471.P3637716054381294582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182471 (n : ℕ) : ℤ :=
  A182471.P3637716054381294582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182660.P6706947886669951299

`A107782(n*floor(-(xor(n, -n)/(n+1))))`
-/

namespace A182660.P6706947886669951299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 ((n : ℤ) * ⌊-((Int.xor (n : ℤ) (-(n : ℤ)) : ℚ) / (n + 1 : ℚ))⌋).toNat

end

end A182660.P6706947886669951299

noncomputable section

/-- A182660: a(2^(k+1)) = k; 0 everywhere else.

Offset 0, canonical program `A182660.P6706947886669951299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182660 (n : ℕ) : ℤ :=
  A182660.P6706947886669951299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183002.P1082009122046195699

`2*(A091627(n+1)-n)`
-/

namespace A183002.P1082009122046195699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A091627 (n + 1) - (n : ℤ))

end

end A183002.P1082009122046195699

noncomputable section

/-- A183002: a(n) is the total number of noncentral divisors in all positive integers <= n.

Offset 1, canonical program `A183002.P1082009122046195699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183002 (n : ℕ) : ℤ :=
  A183002.P1082009122046195699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184248.P3384310769192450285

`p?[n+1-A166597(n+1)%A166597(n)]`
-/

namespace A184248.P3384310769192450285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A166597 (n + 1)) (A166597 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184248.P3384310769192450285

noncomputable section

/-- A184248: Primes, q, such that for three consecutive primes, p, q & r, with p<q<r, (r - q)/(q - p) is an integer.

Offset 1, canonical program `A184248.P3384310769192450285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A184248 (n : ℕ) : ℤ :=
  A184248.P3384310769192450285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A184248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184997.P5003667817694060681

`A002472((∑[n]-1)%(n+1)+1)`
-/

namespace A184997.P5003667817694060681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A184997.P5003667817694060681

noncomputable section

/-- A184997: Number of distinct remainders that are possible when a safe prime p is divided by n (for p > 2*n+1).

Offset 1, canonical program `A184997.P5003667817694060681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184997 (n : ℕ) : ℤ :=
  A184997.P5003667817694060681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185376.P12395458477438105240

`A185333(2*(n+1))`
-/

namespace A185376.P12395458477438105240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185333 (2 * (n + 1))

end

end A185376.P12395458477438105240

noncomputable section

/-- A185376: Number of binary necklaces of 2n beads for which a cut exists producing a palindrome.

Offset 1, canonical program `A185376.P12395458477438105240`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185376 (n : ℕ) : ℤ :=
  A185376.P12395458477438105240.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185376.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185740.P16449816303873469913

`A130123(n)+A073424(n)`
-/

namespace A185740.P16449816303873469913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n + A073424 n

end

end A185740.P16449816303873469913

noncomputable section

/-- A185740: Weight array of A185738, by antidiagonals.

Offset 1, canonical program `A185740.P16449816303873469913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185740 (n : ℕ) : ℤ :=
  A185740.P16449816303873469913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185941.P2413251162240431915

`∩[A185938(n+1), A151799(A185938(n+1))]`
-/

namespace A185941.P2413251162240431915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A185938 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185941.P2413251162240431915

noncomputable section

/-- A185941: First of a run of 4 or more consecutive primes which all equal 2 (mod 3).

Offset 1, canonical program `A185941.P2413251162240431915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A185941 (n : ℕ) : ℤ :=
  (A185941.P2413251162240431915.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A185941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185979.P4021787341801991134

`lt[2, A053603(n)]`
-/

namespace A185979.P4021787341801991134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A185979.P4021787341801991134

noncomputable section

/-- A185979: Numbers which are the sum of two positive triangular numbers in more than one way.

Offset 1, canonical program `A185979.P4021787341801991134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185979 (n : ℕ) : ℤ :=
  (A185979.P4021787341801991134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187039.P14886503455944151269

`eq[A055076(n+1), A056624(n+1)]+1`
-/

namespace A187039.P14886503455944151269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A187039.P14886503455944151269

noncomputable section

/-- A187039: Numbers that have equal counts of even and odd exponents of primes in their factorization.

Offset 1, canonical program `A187039.P14886503455944151269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1068 terms. -/
def A187039 (n : ℕ) : ℤ :=
  (A187039.P14886503455944151269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1068 terms. -/
def A187039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188094.P8623262597786737526

`A188080(n+6)-6`
-/

namespace A188094.P8623262597786737526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 6) - 6

end

end A188094.P8623262597786737526

noncomputable section

/-- A188094: Positions of 0 in A188093; complement of A188095.

Offset 1, canonical program `A188094.P8623262597786737526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A188094 (n : ℕ) : ℤ :=
  A188094.P8623262597786737526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A188094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188095.P11723710385775795557

`∩[A188092(n+1)-1, A188092(n+1)]`
-/

namespace A188095.P11723710385775795557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188092 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188095.P11723710385775795557

noncomputable section

/-- A188095: Positions of 1 in A188093; complement of A188094.

Offset 1, canonical program `A188095.P11723710385775795557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. -/
def A188095 (n : ℕ) : ℤ :=
  (A188095.P11723710385775795557.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. -/
def A188095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189023.P3066450030052913835

`A189021(A062378(n+1))`
-/

namespace A189023.P3066450030052913835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (A062378 (n + 1)).toNat

end

end A189023.P3066450030052913835

noncomputable section

/-- A189023: Apostol's fourth-order Mobius (Moebius) function mu_4(n).

Offset 1, canonical program `A189023.P3066450030052913835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189023 (n : ℕ) : ℤ :=
  A189023.P3066450030052913835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190118.P8393779213979660982

`∑[A083346(n+1)]`
-/

namespace A190118.P8393779213979660982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190118.P8393779213979660982

noncomputable section

/-- A190118: a(n) = Sum_{k=1..n} k/gcd(k,k'), where n' is arithmetic derivative of n.

Offset 1, canonical program `A190118.P8393779213979660982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190118 (n : ℕ) : ℤ :=
  A190118.P8393779213979660982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190120.P8298531165670555809

`∑[A189036(1+n)]`
-/

namespace A190120.P8298531165670555809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189036 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190120.P8298531165670555809

noncomputable section

/-- A190120: a(n) = Sum_{k=1..n} lcm(k,k')/gcd(k,k'), where n' is arithmetic derivative of n.

Offset 1, canonical program `A190120.P8298531165670555809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190120 (n : ℕ) : ℤ :=
  A190120.P8298531165670555809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190122.P18286284179449447991

`∑[(n+1)*A189036(n+1)]`
-/

namespace A190122.P18286284179449447991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190122.P18286284179449447991

noncomputable section

/-- A190122: a(n) = Sum_{k=1..n} k*lcm(k,k')/gcd(k,k'), where k' is arithmetic derivative of k.

Offset 1, canonical program `A190122.P18286284179449447991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190122 (n : ℕ) : ℤ :=
  A190122.P18286284179449447991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191019.P4122170196560416808

`p?[n*A011585(n)]`
-/

namespace A191019.P4122170196560416808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191019.P4122170196560416808

noncomputable section

/-- A191019: Rational primes that decompose in the quadratic field Q(sqrt(-19)).

Offset 1, canonical program `A191019.P4122170196560416808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A191019 (n : ℕ) : ℤ :=
  A191019.P4122170196560416808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A191019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191063.P9795136441190372636

`p?[n*(A000038(n)-A011585(n))]`
-/

namespace A191063.P9795136441190372636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000038 n - A011585 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191063.P9795136441190372636

noncomputable section

/-- A191063: Primes that are not squares mod 19.

Offset 1, canonical program `A191063.P9795136441190372636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. -/
def A191063 (n : ℕ) : ℤ :=
  A191063.P9795136441190372636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. -/
def A191063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191217.P5086974476563652864

`eq[1, A336937(n+1)]+1`
-/

namespace A191217.P5086974476563652864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191217.P5086974476563652864

noncomputable section

/-- A191217: Numbers k such that sigma(k) is congruent to 2 modulo 4.

Offset 1, canonical program `A191217.P5086974476563652864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7385 terms. -/
def A191217 (n : ℕ) : ℤ :=
  (A191217.P5086974476563652864.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7385 terms. -/
def A191217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191414.P14543827223812260222

`A034448(n+1)*A047994(n+1)`
-/

namespace A191414.P14543827223812260222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) * A047994 (n + 1)

end

end A191414.P14543827223812260222

noncomputable section

/-- A191414: Unitary Jordan function J_2^*(n).

Offset 1, canonical program `A191414.P14543827223812260222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191414 (n : ℕ) : ℤ :=
  A191414.P14543827223812260222.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191414.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191483.P18427046693413308703

`4*A089269(n+1)`
-/

namespace A191483.P18427046693413308703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A089269 (n + 1)

end

end A191483.P18427046693413308703

noncomputable section

/-- A191483: Even discriminants of imaginary quadratic fields, negated.

Offset 1, canonical program `A191483.P18427046693413308703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089269, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191483 (n : ℕ) : ℤ :=
  A191483.P18427046693413308703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089269, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192854.P480192498423683373

`eq[A183063(n+1)+A051951(n), A000007(n)]`
-/

namespace A192854.P480192498423683373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A051951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192854.P480192498423683373

noncomputable section

/-- A192854: Places n where tau(n) + tau(n+2) = tau(2*n+2).

Offset 1, canonical program `A192854.P480192498423683373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 545 terms. -/
def A192854 (n : ℕ) : ℤ :=
  (A192854.P480192498423683373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 545 terms. -/
def A192854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193990.P7884612137994625744

`A067434(n+1)-A108954(n+1)`
-/

namespace A193990.P7884612137994625744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - A108954 (n + 1)

end

end A193990.P7884612137994625744

noncomputable section

/-- A193990: Number of distinct prime factors <= n of binomial(2*n,n).

Offset 1, canonical program `A193990.P7884612137994625744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193990 (n : ℕ) : ℤ :=
  A193990.P7884612137994625744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195609.P9577754204178047134

`eq[1, A134451(A268726(n)+n)]`
-/

namespace A195609.P9577754204178047134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A268726 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195609.P9577754204178047134

noncomputable section

/-- A195609: Numbers n such that Sum_{i=1..n} A(i) = A(n)*A(n+1)/4, where A(n) = A000069(n).

Offset 1, canonical program `A195609.P9577754204178047134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5461 terms. -/
def A195609 (n : ℕ) : ℤ :=
  (A195609.P9577754204178047134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5461 terms. -/
def A195609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204004.P16766842814256869288

`A203998(n+1)-A004247(n)`
-/

namespace A204004.P16766842814256869288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203998 (n + 1) - A004247 n

end

end A204004.P16766842814256869288

noncomputable section

/-- A204004: Symmetric matrix based on f(i,j) = max{2i+j-2,i+2j-2}, by antidiagonals.

Offset 1, canonical program `A204004.P16766842814256869288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204004 (n : ℕ) : ℤ :=
  A204004.P16766842814256869288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204006.P4882152759025976317

`A204002(n+1)-2`
-/

namespace A204006.P4882152759025976317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204002 (n + 1) - 2

end

end A204006.P4882152759025976317

noncomputable section

/-- A204006: Symmetric matrix based on f(i,j) = min{2i+j-2,i+2j-2}, by antidiagonals.

Offset 1, canonical program `A204006.P4882152759025976317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204006 (n : ℕ) : ℤ :=
  A204006.P4882152759025976317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204246.P3171406654780179534

`A204244(n+1)/A128227(n)`
-/

namespace A204246.P3171406654780179534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204244 (n + 1) : ℚ) / (A128227 n : ℚ)

end

end A204246.P3171406654780179534

noncomputable section

/-- A204246: Array given by f(i,1)=1, f(1,j)=1, f(i,i)=(i-1)!, and f(i,j)=0 otherwise, read by antidiagonals.

Offset 1, canonical program `A204246.P3171406654780179534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. -/
def A204246 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204246.P3171406654780179534.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. -/
def A204246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205694.P16272218153168622312

`A000040(A205692(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205694.P16272218153168622312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205692 (n + 1)).toNat

end

end A205694.P16272218153168622312

noncomputable section

/-- A205694: Prime(A205692(n)), the n-th number s(j) such that 6 divides s(k)-s(j), where the pairs (k,j) are given by A205691 and A205692.

Offset 1, canonical program `A205694.P16272218153168622312`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A205694 (n : ℕ) : ℤ :=
  A205694.P16272218153168622312.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A205694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A205987.P4258495938364008722

`A281451(n+1)%2`
-/

namespace A205987.P4258495938364008722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281451 (n + 1)) 2

end

end A205987.P4258495938364008722

noncomputable section

/-- A205987: G.f.: Sum_{n=-oo..oo} q^(9n^2+8n).

Offset 0, canonical program `A205987.P4258495938364008722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205987 (n : ℕ) : ℤ :=
  A205987.P4258495938364008722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206286.P5854580810556654288

`record[A018252(n+2)/A077649(n+1)]`
-/

namespace A206286.P5854580810556654288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) / (A077649 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206286.P5854580810556654288

noncomputable section

/-- A206286: Nonprime numbers starting with a digit 1.

Offset 1, canonical program `A206286.P5854580810556654288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2182 terms. -/
def A206286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A206286.P5854580810556654288.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2182 terms. -/
def A206286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208955.P8307013105643369365

`(-1)^n*A121363(n)`
-/

namespace A208955.P8307013105643369365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121363 n

end

end A208955.P8307013105643369365

noncomputable section

/-- A208955: Expansion of phi(x) * phi(x^9) / chi(x^3)^2 in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A208955.P8307013105643369365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208955 (n : ℕ) : ℤ :=
  A208955.P8307013105643369365.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A208955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209355.P10385269046573957715

`char[A056560(n)+2*n+1]`
-/

namespace A209355.P10385269046573957715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 n + (2 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A209355.P10385269046573957715

noncomputable section

/-- A209355: Sequence with each term appearing in runs of every length infinitely often.

Offset 1, canonical program `A209355.P10385269046573957715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209355 (n : ℕ) : ℤ :=
  (A209355.P10385269046573957715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209619.P9978242392383801944

`p?[A175078(A076368(n+1))+A040976(n+1)]`
-/

namespace A209619.P9978242392383801944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A076368 (n + 1)).toNat + A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209619.P9978242392383801944

noncomputable section

/-- A209619: Primes separated from their previous adjacent primes by a composite number of successive composites.

Offset 1, canonical program `A209619.P9978242392383801944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A209619 (n : ℕ) : ℤ :=
  A209619.P9978242392383801944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A209619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210256.P198618298556542039

`Δ[A051201(n+1)]`
-/

namespace A210256.P198618298556542039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210256.P198618298556542039

noncomputable section

/-- A210256: Differences of the sum of distinct values of {floor(n/k), k=1,...,n}.

Offset 1, canonical program `A210256.P198618298556542039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210256 (n : ℕ) : ℤ :=
  A210256.P198618298556542039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000050.P5830236791147847898

`A102548(2^n)`
-/

namespace A000050.P5830236791147847898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (2 ^ n)

end

end A000050.P5830236791147847898

noncomputable section

/-- A000050: Number of positive integers <= 2^n of form x^2 + y^2.

Offset 0, canonical program `A000050.P5830236791147847898`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000050 (n : ℕ) : ℤ :=
  A000050.P5830236791147847898.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004797.P13718195632924904627

`∑[A199015(n)]`
-/

namespace A004797.P13718195632924904627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P13718195632924904627

noncomputable section

/-- A004797: Convolution of A002024 with itself.

Offset 0, canonical program `A004797.P13718195632924904627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004797 (n : ℕ) : ℤ :=
  A004797.P13718195632924904627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005680.P13585271873868182678

`A135764(a(A316826(n)))` with `a(0)=1, a(1)=2`
-/

namespace A005680.P13585271873868182678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A135764 (a (A316826 n).toNat).toNat

end

end A005680.P13585271873868182678

noncomputable section

/-- A005680: A squarefree ternary sequence.

Offset 1, canonical program `A005680.P13585271873868182678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005680 (n : ℕ) : ℤ :=
  A005680.P13585271873868182678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006319.P5493840374935131367

`A238112(n)+A001003(n)`
-/

namespace A006319.P5493840374935131367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238112 n + A001003 n

end

end A006319.P5493840374935131367

noncomputable section

/-- A006319: Royal paths in a lattice (convolution of A006318).

Offset 0, canonical program `A006319.P5493840374935131367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A006319 (n : ℕ) : ℤ :=
  A006319.P5493840374935131367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A006319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008379.P2564125293776314890

`∑[A008378(n)]`
-/

namespace A008379.P2564125293776314890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008379.P2564125293776314890

noncomputable section

/-- A008379: Crystal ball sequence for D_10 lattice.

Offset 0, canonical program `A008379.P2564125293776314890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008379 (n : ℕ) : ℤ :=
  A008379.P2564125293776314890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013920.P16885706931666390019

`A002808(A013919(n+1))`
-/

namespace A013920.P16885706931666390019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A013919 (n + 1)).toNat

end

end A013920.P16885706931666390019

noncomputable section

/-- A013920: Composite numbers k such that the sum of all composites <= k is composite.

Offset 1, canonical program `A013920.P16885706931666390019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013920 (n : ℕ) : ℤ :=
  A013920.P16885706931666390019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013921.P17312843061294283561

`A053767(A013919(n+1))`
-/

namespace A013921.P17312843061294283561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A013919 (n + 1)).toNat

end

end A013921.P17312843061294283561

noncomputable section

/-- A013921: Composite numbers that are equal to the sum of the first k composites for some k.

Offset 1, canonical program `A013921.P17312843061294283561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013919, A053767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A013921 (n : ℕ) : ℤ :=
  A013921.P17312843061294283561.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013919, A053767, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A013921.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014312.P6536201147470879106

`2^A194882(n)+2^A194883(n)+2^A194884(n)+2^A127324(n)`
-/

namespace A014312.P6536201147470879106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A194882 n : ℤ) + (2 : ℚ) ^ (A194883 n : ℤ) + (2 : ℚ) ^ (A194884 n : ℤ) + (2 : ℚ) ^ (A127324 n : ℤ)

end

end A014312.P6536201147470879106

noncomputable section

/-- A014312: Numbers with exactly 4 ones in binary expansion.

Offset 1, canonical program `A014312.P6536201147470879106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127324, A194882, A194883, A194884, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014312 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014312.P6536201147470879106.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127324, A194882, A194883, A194884, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014567.P6675992213739059239

`eq[1, A325964(n+1)]+1`
-/

namespace A014567.P6675992213739059239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014567.P6675992213739059239

noncomputable section

/-- A014567: Numbers k such that k and sigma(k) are relatively prime, where sigma(k) = sum of divisors of k (A000203).

Offset 1, canonical program `A014567.P6675992213739059239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014567 (n : ℕ) : ℤ :=
  (A014567.P6675992213739059239.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015582.P1684706054651665928

`A000007(A145479(n+1)*A145568(n))`
-/

namespace A015582.P1684706054651665928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A145479 (n + 1) * A145568 n).toNat

end

end A015582.P1684706054651665928

noncomputable section

/-- A015582: Inverse of 1573rd cyclotomic polynomial.

Offset 0, canonical program `A015582.P1684706054651665928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A015582 (n : ℕ) : ℤ :=
  A015582.P1684706054651665928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A015582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015732.P9248841914472335492

`∩[2*n, A069237(n+1)]`
-/

namespace A015732.P9248841914472335492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P9248841914472335492

noncomputable section

/-- A015732: Even numbers k such that d(k) | phi(k).

Offset 1, canonical program `A015732.P9248841914472335492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4688 terms. -/
def A015732 (n : ℕ) : ℤ :=
  (A015732.P9248841914472335492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4688 terms. -/
def A015732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015816.P14071878900550483665

`round(5/log2(A157037(∑[n+2]+5)))`
-/

namespace A015816.P14071878900550483665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 / Real.logb 2 (A157037 (∑ j ∈ Finset.range (n + 1), f1 j + 5) : ℝ))

end

end A015816.P14071878900550483665

noncomputable section

/-- A015816: Inverse of 1807th cyclotomic polynomial.

Offset 0, canonical program `A015816.P14071878900550483665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A015816 (n : ℕ) : ℤ :=
  A015816.P14071878900550483665.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A015816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019466.P9925153794483103404

`A019465(n)+A065033(n)!`
-/

namespace A019466.P9925153794483103404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019465 n + (Nat.factorial (A065033 n).toNat : ℤ)

end

end A019466.P9925153794483103404

noncomputable section

/-- A019466: Multiply by 1, add 1, multiply by 2, add 2, etc.; start with 3.

Offset 0, canonical program `A019466.P9925153794483103404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019466 (n : ℕ) : ℤ :=
  A019466.P9925153794483103404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020652.P12873781580618070316

`A002260(A166527(n+1))`
-/

namespace A020652.P12873781580618070316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A166527 (n + 1)).toNat

end

end A020652.P12873781580618070316

noncomputable section

/-- A020652: Numerators in canonical bijection from positive integers to positive rationals.

Offset 1, canonical program `A020652.P12873781580618070316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A020652 (n : ℕ) : ℤ :=
  A020652.P12873781580618070316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A020652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022760.P12074805106371372305

`A153218(n+1)+A153134(n+1)`
-/

namespace A022760.P12074805106371372305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + A153134 (n + 1)

end

end A022760.P12074805106371372305

noncomputable section

/-- A022760: (n-th 6k+1 prime plus n-th 6k+5 prime)/6.

Offset 1, canonical program `A022760.P12074805106371372305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022760 (n : ℕ) : ℤ :=
  A022760.P12074805106371372305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022886.P11950636231150900985

`eq[A076368(n+1), A076368(n+4)]`
-/

namespace A022886.P11950636231150900985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022886.P11950636231150900985

noncomputable section

/-- A022886: n-th index k such that p(k) + p(k+4) = p(k+1) + p(k+3).

Offset 1, canonical program `A022886.P11950636231150900985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A022886 (n : ℕ) : ℤ :=
  (A022886.P11950636231150900985.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A022886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022889.P12192786364687872859

`A000040(A022888(n+1))`
-/

namespace A022889.P12192786364687872859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022888 (n + 1)).toNat

end

end A022889.P12192786364687872859

noncomputable section

/-- A022889: n-th prime p(k) such that p(k) + p(k+5) = p(k+1) + p(k+4).

Offset 1, canonical program `A022889.P12192786364687872859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A022889 (n : ℕ) : ℤ :=
  A022889.P12192786364687872859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A022889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023650.P1233721125443470116

`A023539(n+1)+∑[A053767(n)]`
-/

namespace A023650.P1233721125443470116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023539 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023650.P1233721125443470116

noncomputable section

/-- A023650: Convolution of composite numbers and odd numbers.

Offset 1, canonical program `A023650.P1233721125443470116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023650 (n : ℕ) : ℤ :=
  A023650.P1233721125443470116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024510.P9053752916774843520

`eq[0, A004431(n+2)%2]+2`
-/

namespace A024510.P9053752916774843520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004431 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A024510.P9053752916774843520

noncomputable section

/-- A024510: Positions of even numbers in A004431 (sums of 2 distinct nonzero squares).

Offset 1, canonical program `A024510.P9053752916774843520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5167 terms. -/
def A024510 (n : ℕ) : ℤ :=
  (A024510.P9053752916774843520.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5167 terms. -/
def A024510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024514.P16553037796526444321

`eq[2, A000005(A004431(n+1))]+1`
-/

namespace A024514.P16553037796526444321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004431 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024514.P16553037796526444321

noncomputable section

/-- A024514: Positions of primes in A004431 (sums of 2 distinct nonzero squares).

Offset 1, canonical program `A024514.P16553037796526444321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2102 terms. -/
def A024514 (n : ℕ) : ℤ :=
  (A024514.P16553037796526444321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2102 terms. -/
def A024514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024524.P1283342088011010465

`∑[A008578(n+4)*A024523(n+3)]`
-/

namespace A024524.P1283342088011010465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 4) * A024523 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024524.P1283342088011010465

noncomputable section

/-- A024524: 4th elementary symmetric function of {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

Offset 4, canonical program `A024524.P1283342088011010465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 534 terms. -/
def A024524 (n : ℕ) : ℤ :=
  A024524.P1283342088011010465.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 534 terms. -/
def A024524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026087.P2933839439661880285

`Δ[A026086(n+4)]-A026085(n+4)`
-/

namespace A026087.P2933839439661880285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026086 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026085 (n + 4)

end

end A026087.P2933839439661880285

noncomputable section

/-- A026087: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 4. Also a(n) = T(n,n-4), where T is the array defined in A026082.

Offset 4, canonical program `A026087.P2933839439661880285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A026087 (n : ℕ) : ℤ :=
  A026087.P2933839439661880285.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A026087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026125.P8928138202584515454

`Δ[A026124(n+3)]-A026123(n+3)`
-/

namespace A026125.P8928138202584515454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026124 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026123 (n + 3)

end

end A026125.P8928138202584515454

noncomputable section

/-- A026125: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 4, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-3), where T is the array in A026120.

Offset 3, canonical program `A026125.P8928138202584515454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026125 (n : ℕ) : ℤ :=
  A026125.P8928138202584515454.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026152.P13028405890907652534

`A026124(n+3)-A026109(n+3)`
-/

namespace A026152.P13028405890907652534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026124 (n + 3) - A026109 (n + 3)

end

end A026152.P13028405890907652534

noncomputable section

/-- A026152: a(n) = T(n,n-1), where T is the array in A026148.

Offset 2, canonical program `A026152.P13028405890907652534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026152 (n : ℕ) : ℤ :=
  A026152.P13028405890907652534.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026857.P3483546861252801561

`A026018(n+3)+A026842(n+3)-A026673(n+2)`
-/

namespace A026857.P3483546861252801561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026018 (n + 3) + (A026842 (n + 3) - A026673 (n + 2))

end

end A026857.P3483546861252801561

noncomputable section

/-- A026857: a(n) = T(2n+1,n+4), T given by A026736.

Offset 3, canonical program `A026857.P3483546861252801561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026857 (n : ℕ) : ℤ :=
  A026857.P3483546861252801561.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A026857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027745.P14601779731189882620

`A027385(A004277(n))*A036453(n+1)`
-/

namespace A027745.P14601779731189882620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027385 (A004277 n).toNat * A036453 (n + 1)

end

end A027745.P14601779731189882620

noncomputable section

/-- A027745: Number of primitive polynomials of degree n over GF(9).

Offset 0, canonical program `A027745.P14601779731189882620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A027745 (n : ℕ) : ℤ :=
  A027745.P14601779731189882620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A027745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028265.P5597927285948567232

`A028264(lt[1, A028264(n)])`
-/

namespace A028265.P5597927285948567232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028265.P5597927285948567232

noncomputable section

/-- A028265: Odd elements in 3-Pascal triangle A028262 (by row) that are not 1.

Offset 1, canonical program `A028265.P5597927285948567232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9378 terms. -/
def A028265 (n : ℕ) : ℤ :=
  A028265.P5597927285948567232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9378 terms. -/
def A028265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028316.P13773793493205695949

`A028315(lt[1, A028315(n)])`
-/

namespace A028316.P13773793493205695949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028316.P13773793493205695949

noncomputable section

/-- A028316: Odd elements in the 5-Pascal triangle A028313 that are not 1.

Offset 0, canonical program `A028316.P13773793493205695949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9378 terms. -/
def A028316 (n : ℕ) : ℤ :=
  A028316.P13773793493205695949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9378 terms. -/
def A028316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029368.P396495999053672389

`A029235(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029368.P396495999053672389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029235 n - a (n - 2)

end

end A029368.P396495999053672389

noncomputable section

/-- A029368: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029368.P396495999053672389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029368 (n : ℕ) : ℤ :=
  A029368.P396495999053672389.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029633.P3103712161572054441

`A029632(A183569(n+1))`
-/

namespace A029633.P3103712161572054441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029632 (A183569 (n + 1)).toNat

end

end A029633.P3103712161572054441

noncomputable section

/-- A029633: Numbers to right of central elements of the (3,2)-Pascal triangle A029618 that are different from 2.

Offset 0, canonical program `A029633.P3103712161572054441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A029633 (n : ℕ) : ℤ :=
  A029633.P3103712161572054441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A029633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029668.P4792847328152490897

`A029657(lt[A029624(n+1), A029624(n)])`
-/

namespace A029668.P4792847328152490897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029657 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029668.P4792847328152490897

noncomputable section

/-- A029668: Odd numbers to the right of the central elements of the (2,1)-Pascal triangle A029653 that are different from 1.

Offset 0, canonical program `A029668.P4792847328152490897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4535 terms. -/
def A029668 (n : ℕ) : ℤ :=
  A029668.P4792847328152490897.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4535 terms. -/
def A029668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030636.P8220618962207978145

`filter[A036457(n+1), A123927(#)]`
-/

namespace A030636.P8220618962207978145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P8220618962207978145

noncomputable section

/-- A030636: Numbers with 18 divisors.

Offset 1, canonical program `A030636.P8220618962207978145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A030636 (n : ℕ) : ℤ :=
  A030636.P8220618962207978145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A030636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034019.P502598824467370145

`filter[A013929(n+1), A353816(#)]`
-/

namespace A034019.P502598824467370145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A034019.P502598824467370145

noncomputable section

/-- A034019: Numbers that are imprimitively (and possibly also primitively) represented by x^2+xy+y^2.

Offset 1, canonical program `A034019.P502598824467370145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8724 terms. -/
def A034019 (n : ℕ) : ℤ :=
  A034019.P502598824467370145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8724 terms. -/
def A034019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034936.P1115765045630556781

`2*A153218(n+1)+1`
-/

namespace A034936.P1115765045630556781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153218 (n + 1) + 1

end

end A034936.P1115765045630556781

noncomputable section

/-- A034936: Numbers k such that 3*k + 4 is prime.

Offset 1, canonical program `A034936.P1115765045630556781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034936 (n : ℕ) : ℤ :=
  A034936.P1115765045630556781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035185.P8037574016802671635

`A363037(n+1)-A364032(n+1)`
-/

namespace A035185.P8037574016802671635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363037 (n + 1) - A364032 (n + 1)

end

end A035185.P8037574016802671635

noncomputable section

/-- A035185: Number of divisors of n == 1 or 7 (mod 8) minus number of divisors of n == 3 or 5 (mod 8).

Offset 1, canonical program `A035185.P8037574016802671635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035185 (n : ℕ) : ℤ :=
  A035185.P8037574016802671635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035247.P10025815083580016986

`record[A028954(n+2)]`
-/

namespace A035247.P10025815083580016986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028954 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035247.P10025815083580016986

noncomputable section

/-- A035247: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -11.

Offset 1, canonical program `A035247.P10025815083580016986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. -/
def A035247 (n : ℕ) : ℤ :=
  A035247.P10025815083580016986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. -/
def A035247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037048.P13815014057146630704

`(∑[A168010(n+1)]-((n+2)²-1))/2-∑[n+1]`
-/

namespace A037048.P13815014057146630704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (((n + 2) ^ 2 : ℤ) - 1) : ℤ) : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A037048.P13815014057146630704

noncomputable section

/-- A037048: Number of pairs {i,j}, i>1, j>1, such that ij < n^2.

Offset 2, canonical program `A037048.P13815014057146630704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037048 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A037048.P13815014057146630704.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037197.P6784349758619348236

`lt[A295306(n+1)², 1]+1`
-/

namespace A037197.P6784349758619348236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037197.P6784349758619348236

noncomputable section

/-- A037197: Numbers k such that tau(sigma(k)) = tau(k) where tau(k) is the number of divisors of k and sigma(k) their sum.

Offset 1, canonical program `A037197.P6784349758619348236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A037197 (n : ℕ) : ℤ :=
  (A037197.P6784349758619348236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A037197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038465.P6759191741813746022

`A005836(A014311(n+1)+1)`
-/

namespace A038465.P6759191741813746022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A014311 (n + 1) + 1).toNat

end

end A038465.P6759191741813746022

noncomputable section

/-- A038465: Sums of 3 distinct powers of 3.

Offset 1, canonical program `A038465.P6759191741813746022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038465 (n : ℕ) : ℤ :=
  A038465.P6759191741813746022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038492.P9910547711259692788

`A194887(∑[char[∑[n]]]+n+1)`
-/

namespace A038492.P9910547711259692788
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194887 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))

end

end A038492.P9910547711259692788

noncomputable section

/-- A038492: Sums of 2 distinct powers of 12.

Offset 1, canonical program `A038492.P9910547711259692788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4278 terms. -/
def A038492 (n : ℕ) : ℤ :=
  A038492.P9910547711259692788.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4278 terms. -/
def A038492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043577.P7864183051118579385

`∩[A043737(n+1), A043742(n+1)]`
-/

namespace A043577.P7864183051118579385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043577.P7864183051118579385

noncomputable section

/-- A043577: Numbers whose base-2 representation has exactly 10 runs.

Offset 1, canonical program `A043577.P7864183051118579385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8133 terms. -/
def A043577 (n : ℕ) : ℤ :=
  (A043577.P7864183051118579385.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8133 terms. -/
def A043577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043580.P10929565331147656012

`∩[A043758(n+1), A043766(n+1)]`
-/

namespace A043580.P10929565331147656012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043580.P10929565331147656012

noncomputable section

/-- A043580: Numbers whose base-2 representation has exactly 13 runs.

Offset 1, canonical program `A043580.P10929565331147656012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7408 terms. -/
def A043580 (n : ℕ) : ℤ :=
  (A043580.P10929565331147656012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7408 terms. -/
def A043580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043684.P15500375666667642164

`A043575(n+1)/2`
-/

namespace A043684.P15500375666667642164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043575 (n + 1) : ℚ) / 2

end

end A043684.P15500375666667642164

noncomputable section

/-- A043684: a(n) = (1/2)*(n-th number whose base-2 representation has exactly 8 runs).

Offset 1, canonical program `A043684.P15500375666667642164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043684 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A043684.P15500375666667642164.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045173.P11398546931757965663

`∩[A023721(n+1), A023730(n+1)]`
-/

namespace A045173.P11398546931757965663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045173.P11398546931757965663

noncomputable section

/-- A045173: Numbers whose base-5 representation contains no 0's and exactly one 2.

Offset 1, canonical program `A045173.P11398546931757965663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A045173 (n : ℕ) : ℤ :=
  (A045173.P11398546931757965663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A045173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045181.P3716698425638522431

`∩[A023723(n+1), A023730(n+1)]`
-/

namespace A045181.P3716698425638522431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045181.P3716698425638522431

noncomputable section

/-- A045181: Numbers whose base-5 representation contains exactly two 0's and one 2.

Offset 1, canonical program `A045181.P3716698425638522431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. -/
def A045181 (n : ℕ) : ℤ :=
  (A045181.P3716698425638522431.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. -/
def A045181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045222.P4405246567291443244

`∩[A023726(n+1), A023730(n+1)]`
-/

namespace A045222.P4405246567291443244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045222.P4405246567291443244

noncomputable section

/-- A045222: Numbers whose base-5 representation contains exactly one 1 and one 2.

Offset 1, canonical program `A045222.P4405246567291443244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3186 terms. -/
def A045222 (n : ℕ) : ℤ :=
  (A045222.P4405246567291443244.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3186 terms. -/
def A045222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045267.P5788742977189700651

`∩[A023730(n+1), A023734(n+1)]`
-/

namespace A045267.P5788742977189700651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045267.P5788742977189700651

noncomputable section

/-- A045267: Numbers whose base-5 representation contains exactly one 2 and one 3.

Offset 1, canonical program `A045267.P5788742977189700651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3921 terms. -/
def A045267 (n : ℕ) : ℤ :=
  (A045267.P5788742977189700651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3921 terms. -/
def A045267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045268.P10162999156684542775

`∩[A023730(n+1), A023735(n+1)]`
-/

namespace A045268.P10162999156684542775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045268.P10162999156684542775

noncomputable section

/-- A045268: Numbers whose base-5 representation contains exactly one 2 and two 3's.

Offset 1, canonical program `A045268.P10162999156684542775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A045268 (n : ℕ) : ℤ :=
  (A045268.P10162999156684542775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A045268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045282.P4860414556103832674

`∩[A023730(n+1), A023738(n+1)]`
-/

namespace A045282.P4860414556103832674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045282.P4860414556103832674

noncomputable section

/-- A045282: Numbers whose base-5 representation contains exactly one 2 and one 4.

Offset 1, canonical program `A045282.P4860414556103832674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3919 terms. -/
def A045282 (n : ℕ) : ℤ :=
  (A045282.P4860414556103832674.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3919 terms. -/
def A045282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045283.P3668256314299914758

`∩[A023730(n+1), A023739(n+1)]`
-/

namespace A045283.P3668256314299914758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045283.P3668256314299914758

noncomputable section

/-- A045283: Numbers whose base-5 representation contains exactly one 2 and two 4's.

Offset 1, canonical program `A045283.P3668256314299914758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. -/
def A045283 (n : ℕ) : ℤ :=
  (A045283.P3668256314299914758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. -/
def A045283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045413.P11718784102126598698

`∪[A023247(n+1), A045435(n+1)]`
-/

namespace A045413.P11718784102126598698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P11718784102126598698

noncomputable section

/-- A045413: Primes congruent to {0, 3, 4} mod 5.

Offset 1, canonical program `A045413.P11718784102126598698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045413 (n : ℕ) : ℤ :=
  (A045413.P11718784102126598698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046388.P4734794985767422155

`filter[A385350(n+1), A353669(#)]`
-/

namespace A046388.P4734794985767422155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A046388.P4734794985767422155

noncomputable section

/-- A046388: Odd numbers of the form p*q where p and q are distinct primes.

Offset 1, canonical program `A046388.P4734794985767422155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9988 terms. -/
def A046388 (n : ℕ) : ℤ :=
  A046388.P4734794985767422155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9988 terms. -/
def A046388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047727.P4578526210664008932

`∩[A033950(n+1), A301975(n+1)]`
-/

namespace A047727.P4578526210664008932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047727.P4578526210664008932

noncomputable section

/-- A047727: Average divisor is an integer (A003601) and the number is refactorable (A033950).

Offset 1, canonical program `A047727.P4578526210664008932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. -/
def A047727 (n : ℕ) : ℤ :=
  (A047727.P4578526210664008932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. -/
def A047727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049081.P2857280178035717438

`A000040(A049080(n+1))`
-/

namespace A049081.P2857280178035717438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049080 (n + 1)).toNat

end

end A049081.P2857280178035717438

noncomputable section

/-- A049081: Primes prime(k) for which A049076(k) = 5.

Offset 1, canonical program `A049081.P2857280178035717438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049081 (n : ℕ) : ℤ :=
  A049081.P2857280178035717438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049643.P15143516310095013308

`A049641(2*n)`
-/

namespace A049643.P15143516310095013308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049641 (2 * n)

end

end A049643.P15143516310095013308

noncomputable section

/-- A049643: Number of fractions in Farey series of order n.

Offset 0, canonical program `A049643.P15143516310095013308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049643 (n : ℕ) : ℤ :=
  A049643.P15143516310095013308.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049692.P17847140543767200427

`lt[A286628(n+2), 2]+2`
-/

namespace A049692.P17847140543767200427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286628 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A049692.P17847140543767200427

noncomputable section

/-- A049692: Numbers k such that the square of the number of divisors of k does not divide the sum of the divisors of k.

Offset 1, canonical program `A049692.P17847140543767200427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7345 terms. -/
def A049692 (n : ℕ) : ℤ :=
  (A049692.P17847140543767200427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7345 terms. -/
def A049692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049706.P17426073301630217516

`A101279(A049648(n))`
-/

namespace A049706.P17426073301630217516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A049648 n).toNat

end

end A049706.P17426073301630217516

noncomputable section

/-- A049706: a(n) = T(n,n+2), array T as in A049704.

Offset 0, canonical program `A049706.P17426073301630217516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A049706 (n : ℕ) : ℤ :=
  A049706.P17426073301630217516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A049706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050147.P8341301809192982572

`A050146(n)+A002003(n)`
-/

namespace A050147.P8341301809192982572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 n + A002003 n

end

end A050147.P8341301809192982572

noncomputable section

/-- A050147: a(n) = T(n,n-1), array T as in A050143. Also T(2n+1,n), array T as in A055807.

Offset 1, canonical program `A050147.P8341301809192982572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A050147 (n : ℕ) : ℤ :=
  A050147.P8341301809192982572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A050147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050150.P9836629661305837996

`filter[A009087(n+1), A361023(#)]`
-/

namespace A050150.P9836629661305837996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A050150.P9836629661305837996

noncomputable section

/-- A050150: Odd numbers with prime number of divisors.

Offset 1, canonical program `A050150.P9836629661305837996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9664 terms. -/
def A050150 (n : ℕ) : ℤ :=
  A050150.P9836629661305837996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9664 terms. -/
def A050150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050796.P11538834227986178576

`eq[A000038(n), A156297(A333167(n))]`
-/

namespace A050796.P11538834227986178576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (A333167 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050796.P11538834227986178576

noncomputable section

/-- A050796: Numbers n such that n^2 + 1 is expressible as the sum of two nonzero squares in at least one way (the trivial solution n^2 + 1 = n^2 + 1^2 is not counted).

Offset 1, canonical program `A050796.P11538834227986178576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. -/
def A050796 (n : ℕ) : ℤ :=
  (A050796.P11538834227986178576.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. -/
def A050796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050874.P14166334163977989316

`eq[3, A037888(n+1)]+1`
-/

namespace A050874.P14166334163977989316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050874.P14166334163977989316

noncomputable section

/-- A050874: Binary numbers d(1)...d(j) such that d(i) = d(j+1-i) for all but 6 values of i.

Offset 1, canonical program `A050874.P14166334163977989316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A050874 (n : ℕ) : ℤ :=
  (A050874.P14166334163977989316.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A050874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051293.P18428815694891853297

`∑[A082550(n+1)]`
-/

namespace A051293.P18428815694891853297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051293.P18428815694891853297

noncomputable section

/-- A051293: Number of nonempty subsets of {1,2,3,...,n} whose elements have an integer average.

Offset 1, canonical program `A051293.P18428815694891853297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A051293 (n : ℕ) : ℤ :=
  A051293.P18428815694891853297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A051293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051434.P18205378062709367027

`A051429(n)+A014428(n+1)`
-/

namespace A051434.P18205378062709367027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 n + A014428 (n + 1)

end

end A051434.P18205378062709367027

noncomputable section

/-- A051434: (Terms in A029607)/2.

Offset 0, canonical program `A051434.P18205378062709367027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051434 (n : ℕ) : ℤ :=
  A051434.P18205378062709367027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051457.P7823125324757561641

`A029632(eq[2, gcd(2, A029632(n))])/2`
-/

namespace A051457.P7823125324757561641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A029632 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029632 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A051457.P7823125324757561641

noncomputable section

/-- A051457: (Terms in A029627)/2.

Offset 0, canonical program `A051457.P7823125324757561641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8147 terms. -/
def A051457 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051457.P7823125324757561641.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8147 terms. -/
def A051457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051475.P10337259349040715997

`A051474(lt[A051429(n), A051468(n)])`
-/

namespace A051475.P10337259349040715997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051474 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051475.P10337259349040715997

noncomputable section

/-- A051475: (Terms in A014472)/2.

Offset 0, canonical program `A051475.P10337259349040715997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 846 terms. -/
def A051475 (n : ℕ) : ℤ :=
  A051475.P10337259349040715997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 846 terms. -/
def A051475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051533.P6966278410585714434

`lt[0, A053603(n)]`
-/

namespace A051533.P6966278410585714434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051533.P6966278410585714434

noncomputable section

/-- A051533: Numbers that are the sum of two positive triangular numbers.

Offset 1, canonical program `A051533.P6966278410585714434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4788 terms. -/
def A051533 (n : ℕ) : ℤ :=
  (A051533.P6966278410585714434.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4788 terms. -/
def A051533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051628.P11491712228383865435

`A051903(A132741(n+1))`
-/

namespace A051628.P11491712228383865435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A132741 (n + 1)).toNat

end

end A051628.P11491712228383865435

noncomputable section

/-- A051628: Number of digits in decimal expansion of 1/n before the periodic part begins.

Offset 1, canonical program `A051628.P11491712228383865435`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051628 (n : ℕ) : ℤ :=
  A051628.P11491712228383865435.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052344.P15195332241825076864

`ceil(A053603(n)/2)`
-/

namespace A052344.P15195332241825076864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053603 n : ℚ) / 2⌉

end

end A052344.P15195332241825076864

noncomputable section

/-- A052344: Number of ways to write n as the unordered sum of two nonzero triangular numbers.

Offset 0, canonical program `A052344.P15195332241825076864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052344 (n : ℕ) : ℤ :=
  A052344.P15195332241825076864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053782.P10640351916810255333

`eq[C(2, n+2), char[A013919(n+1)]]`
-/

namespace A053782.P10640351916810255333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013919 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053782.P10640351916810255333

noncomputable section

/-- A053782: Numbers k such that the sum of the first k composite numbers is prime.

Offset 1, canonical program `A053782.P10640351916810255333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A053782 (n : ℕ) : ℤ :=
  (A053782.P10640351916810255333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A053782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054522.P13001746357644342535

`A127093(n+1)-A141846(n+1)`
-/

namespace A054522.P13001746357644342535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) - A141846 (n + 1)

end

end A054522.P13001746357644342535

noncomputable section

/-- A054522: Triangle T(n,k): T(n,k) = phi(k) if k divides n, T(n,k)=0 otherwise (n >= 1, 1<=k<=n). T(n,k) = number of elements of order k in cyclic group of order n.

Offset 1, canonical program `A054522.P13001746357644342535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054522 (n : ℕ) : ℤ :=
  A054522.P13001746357644342535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055197.P16609682820262287136

`A038567(A061560(n+2))-1`
-/

namespace A055197.P16609682820262287136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A061560 (n + 2)).toNat - 1

end

end A055197.P16609682820262287136

noncomputable section

/-- A055197: Numbers k such that A005728(k) is not prime.

Offset 1, canonical program `A055197.P16609682820262287136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A055197 (n : ℕ) : ℤ :=
  A055197.P16609682820262287136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A055197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055824.P786412163102531384

`A050146(n)+A002002(n)`
-/

namespace A055824.P786412163102531384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 n + A002002 n

end

end A055824.P786412163102531384

noncomputable section

/-- A055824: a(n) = T(2*n,n), array T as in A055818.

Offset 0, canonical program `A055824.P786412163102531384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A055824 (n : ℕ) : ℤ :=
  A055824.P786412163102531384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A055824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056348.P5265838265426207479

`∑{d}[n+1, A008683(#)*A056342((n+1)/#)]`
-/

namespace A056348.P5265838265426207479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056342 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056348.P5265838265426207479

noncomputable section

/-- A056348: Number of primitive (period n) bracelets using exactly two different colored beads.

Offset 1, canonical program `A056348.P5265838265426207479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A056348 (n : ℕ) : ℤ :=
  A056348.P5265838265426207479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A056348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056479.P11521385948730476778

`A056484(A028310(n))+A056478(n)`
-/

namespace A056479.P11521385948730476778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056484 (A028310 n).toNat + A056478 n

end

end A056479.P11521385948730476778

noncomputable section

/-- A056479: Number of primitive (aperiodic) palindromic structures using a maximum of five different symbols.

Offset 0, canonical program `A056479.P11521385948730476778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A056479 (n : ℕ) : ℤ :=
  A056479.P11521385948730476778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A056479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056501.P14421561252309052722

`∑{d}[n+1, A008683(#)*A056491((n+1)/#)]`
-/

namespace A056501.P14421561252309052722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056491 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056501.P14421561252309052722

noncomputable section

/-- A056501: Number of primitive (period n) periodic palindromes using exactly five different symbols.

Offset 1, canonical program `A056501.P14421561252309052722`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056501 (n : ℕ) : ℤ :=
  A056501.P14421561252309052722.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056501.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060267.P17094486573284264601

`A166597(2*(n+2))`
-/

namespace A060267.P17094486573284264601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (2 * (n + 2))

end

end A060267.P17094486573284264601

noncomputable section

/-- A060267: Difference between 2 closest primes surrounding 2n.

Offset 2, canonical program `A060267.P17094486573284264601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060267 (n : ℕ) : ℤ :=
  A060267.P17094486573284264601.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062047.P9752423036722782838

`A054265(n+1)-A062046(n+1)`
-/

namespace A062047.P9752423036722782838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 1) - A062046 (n + 1)

end

end A062047.P9752423036722782838

noncomputable section

/-- A062047: Sum of odd numbers between consecutive primes.

Offset 1, canonical program `A062047.P9752423036722782838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062047 (n : ℕ) : ℤ :=
  A062047.P9752423036722782838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063913.P6791684763187366622

`p?[A097363(n+1)]`
-/

namespace A063913.P6791684763187366622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063913.P6791684763187366622

noncomputable section

/-- A063913: Primes p such that 2*p - 13 is also prime.

Offset 1, canonical program `A063913.P6791684763187366622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. -/
def A063913 (n : ℕ) : ℤ :=
  A063913.P6791684763187366622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. -/
def A063913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063934.P17638281874553653123

`a(n-1)+ceil(A166597(a(n-1))/2)` with `a(0)=2`
-/

namespace A063934.P17638281874553653123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ⌈(A166597 (a (n - 1)).toNat : ℚ) / 2⌉

end

end A063934.P17638281874553653123

noncomputable section

/-- A063934: Numbers which are either prime or the average of consecutive odd primes.

Offset 1, canonical program `A063934.P17638281874553653123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063934 (n : ℕ) : ℤ :=
  A063934.P17638281874553653123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066313.P13030330147732847872

`∑{d}[n+1, A008683(#)*A053656((n+1)/#)]`
-/

namespace A066313.P13030330147732847872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A053656 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A066313.P13030330147732847872

noncomputable section

/-- A066313: Number of aperiodic necklaces with n red or blue beads such that two necklaces are equivalent under the operation of simultaneously turning the necklace over and switching the two colors.

Offset 1, canonical program `A066313.P13030330147732847872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A066313 (n : ℕ) : ℤ :=
  A066313.P13030330147732847872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A066313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066694.P3538638872772707241

`filter[A305800(n+1), A295308(#)]`
-/

namespace A066694.P3538638872772707241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295308 (f1 j).toNat = 1) n)

end

end A066694.P3538638872772707241

noncomputable section

/-- A066694: Numbers k such that phi(sigma(k)) > k.

Offset 1, canonical program `A066694.P3538638872772707241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 994 terms. -/
def A066694 (n : ℕ) : ℤ :=
  A066694.P3538638872772707241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 994 terms. -/
def A066694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068207.P7943942854021389993

`eq[A129296(n+1), A292286(n+1)]+1`
-/

namespace A068207.P7943942854021389993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068207.P7943942854021389993

noncomputable section

/-- A068207: Numbers k such that the number of divisors of k^2-1 equals the number of divisors of k.

Offset 1, canonical program `A068207.P7943942854021389993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A068207 (n : ℕ) : ℤ :=
  (A068207.P7943942854021389993.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A068207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068875.P941133582365312759

`A329688(3*n)`
-/

namespace A068875.P941133582365312759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329688 (3 * n)

end

end A068875.P941133582365312759

noncomputable section

/-- A068875: Expansion of (1 + x*C)*C, where C = (1 - (1 - 4*x)^(1/2))/(2*x) is the g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A068875.P941133582365312759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A068875 (n : ℕ) : ℤ :=
  A068875.P941133582365312759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A068875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069059.P15537564215172939838

`eq[0, A325964(n+1)]+1`
-/

namespace A069059.P15537564215172939838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069059.P15537564215172939838

noncomputable section

/-- A069059: Numbers k such that k and sigma(k) are not relatively prime.

Offset 1, canonical program `A069059.P15537564215172939838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069059 (n : ℕ) : ℤ :=
  (A069059.P15537564215172939838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071755.P6343348831511308488

`A071752(n)-A099376(n)`
-/

namespace A071755.P6343348831511308488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071752 n - A099376 n

end

end A071755.P6343348831511308488

noncomputable section

/-- A071755: Expansion of (1+x^4*C^4)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071755.P6343348831511308488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071755 (n : ℕ) : ℤ :=
  A071755.P6343348831511308488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072613.P13158909735510187267

`∑[C(A230595(n+1), 2)]`
-/

namespace A072613.P13158909735510187267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A230595 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072613.P13158909735510187267

noncomputable section

/-- A072613: Number of numbers of the form p*q (p, q distinct primes) less than or equal to n.

Offset 1, canonical program `A072613.P13158909735510187267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072613 (n : ℕ) : ℤ :=
  (A072613.P13158909735510187267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072680.P15529188896689568245

`A005171(n+2)*A166597(n+1)`
-/

namespace A072680.P15529188896689568245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 2) * A166597 (n + 1)

end

end A072680.P15529188896689568245

noncomputable section

/-- A072680: Difference between (least prime >= n) and (largest prime <= n).

Offset 2, canonical program `A072680.P15529188896689568245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072680 (n : ℕ) : ℤ :=
  A072680.P15529188896689568245.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072904.P2738740859369155927

`filter[A072903(n+1), A049240(#)]`
-/

namespace A072904.P2738740859369155927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A072904.P2738740859369155927

noncomputable section

/-- A072904: Nonsquares m such that the discriminant of the quadratic field Q(sqrt(m)) < m.

Offset 1, canonical program `A072904.P2738740859369155927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9816 terms. -/
def A072904 (n : ℕ) : ℤ :=
  A072904.P2738740859369155927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9816 terms. -/
def A072904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073168.P7500810570419237010

`A007821(n+2)-A022449(n+2)`
-/

namespace A073168.P7500810570419237010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 2) - A022449 (n + 2)

end

end A073168.P7500810570419237010

noncomputable section

/-- A073168: a(n) = A007821(n) - A022449(n).

Offset 1, canonical program `A073168.P7500810570419237010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073168 (n : ℕ) : ℤ :=
  A073168.P7500810570419237010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073804.P4353422266090088354

`eq[1-4/2, A295306(n+2)]+2`
-/

namespace A073804.P4353422266090088354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 2

end

end A073804.P4353422266090088354

noncomputable section

/-- A073804: Numbers k such that the number of divisors of k is greater than that of sigma(k).

Offset 1, canonical program `A073804.P4353422266090088354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 885 terms. -/
def A073804 (n : ℕ) : ℤ :=
  (A073804.P4353422266090088354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 885 terms. -/
def A073804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074775.P4617323649837205606

`lt[0, A182394(n+2)]+1`
-/

namespace A074775.P4617323649837205606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074775.P4617323649837205606

noncomputable section

/-- A074775: Numbers n such that tau(n) < tau(n+1) where tau(x)=A000005(x).

Offset 1, canonical program `A074775.P4617323649837205606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8895 terms. -/
def A074775 (n : ℕ) : ℤ :=
  (A074775.P4617323649837205606.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8895 terms. -/
def A074775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074791.P16479575259879118996

`lt[1, A120263(n+1)]+1`
-/

namespace A074791.P16479575259879118996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074791.P16479575259879118996

noncomputable section

/-- A074791: Numbers k such that k does not divide the denominator of the k-th harmonic number.

Offset 1, canonical program `A074791.P16479575259879118996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A074791 (n : ℕ) : ℤ :=
  (A074791.P16479575259879118996.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A074791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074842.P6483684940166264007

`n+1+lcm(A020338(n+1), A172503(n+1))`
-/

namespace A074842.P6483684940166264007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + Int.lcm (A020338 (n + 1)) (A172503 (n + 1))

end

end A074842.P6483684940166264007

noncomputable section

/-- A074842: Triplets: base 10 representation is the juxtaposition of three identical strings.

Offset 1, canonical program `A074842.P6483684940166264007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074842 (n : ℕ) : ℤ :=
  (A074842.P6483684940166264007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074997.P11484418625540137745

`∩[A067888(n+1), A280382(n+1)]`
-/

namespace A074997.P11484418625540137745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074997.P11484418625540137745

noncomputable section

/-- A074997: Numbers which are sandwiched between two numbers having the same unordered canonical form.

Offset 1, canonical program `A074997.P11484418625540137745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5993 terms. -/
def A074997 (n : ℕ) : ℤ :=
  (A074997.P11484418625540137745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5993 terms. -/
def A074997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075113.P11777112523547195368

`A000217(n)-A048702(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075113.P11777112523547195368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A048702 n

end

end A075113.P11777112523547195368

noncomputable section

/-- A075113: a(n) = A000217(n) - A048702(n).

Offset 0, canonical program `A075113.P11777112523547195368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075113 (n : ℕ) : ℤ :=
  A075113.P11777112523547195368.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075576.P10983007023077827622

`A027861(1+n)²`
-/

namespace A075576.P10983007023077827622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (1 + n) ^ 2

end

end A075576.P10983007023077827622

noncomputable section

/-- A075576: Smaller of two consecutive squares with a prime sum.

Offset 1, canonical program `A075576.P10983007023077827622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075576 (n : ℕ) : ℤ :=
  A075576.P10983007023077827622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075643.P5171669184174618456

`gcd(A033322(n+1), A182986(n+1))`
-/

namespace A075643.P5171669184174618456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033322 (n + 1)) (A182986 (n + 1))

end

end A075643.P5171669184174618456

noncomputable section

/-- A075643: Group the natural numbers so that the n-th group contains n numbers one each of a multiple of numbers from 1 to n so that the group sum is a multiple of (n+1): (2), (1, 8), (3, 4, 9), (5, 6, 12, 32), (7, 10, 15, 16, 30), (11, 14, 18, 20, 25, 24), ... Sequence gives initial terms of groups.

Offset 1, canonical program `A075643.P5171669184174618456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4055 terms. -/
def A075643 (n : ℕ) : ℤ :=
  (A075643.P5171669184174618456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4055 terms. -/
def A075643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076245.P14473671880369075709

`eq[1, gcd(n, A001221(A265575(a(n-1)+1)))]` with `a(0)=0`
-/

namespace A076245.P14473671880369075709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.gcd (n : ℤ) (A001221 (A265575 (f2 (n - 1) + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076245.P14473671880369075709

noncomputable section

/-- A076245: Positions of records in A051547.

Offset 1, canonical program `A076245.P14473671880369075709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 651 terms. -/
def A076245 (n : ℕ) : ℤ :=
  (A076245.P14473671880369075709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 651 terms. -/
def A076245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077064.P16565391587089475239

`A039787(n+1)-1`
-/

namespace A077064.P16565391587089475239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1) - 1

end

end A077064.P16565391587089475239

noncomputable section

/-- A077064: Squarefree numbers of form prime - 1.

Offset 1, canonical program `A077064.P16565391587089475239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077064 (n : ℕ) : ℤ :=
  A077064.P16565391587089475239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078174.P17368214536566437184

`eq[1, A323172(n+2)]+2`
-/

namespace A078174.P17368214536566437184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323172 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A078174.P17368214536566437184

noncomputable section

/-- A078174: Numbers with an integer arithmetic mean of distinct prime factors.

Offset 1, canonical program `A078174.P17368214536566437184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078174 (n : ℕ) : ℤ :=
  (A078174.P17368214536566437184.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078330.P2471805559415879060

`∩[A039787(n+1), A062304(n+1)]`
-/

namespace A078330.P2471805559415879060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P2471805559415879060

noncomputable section

/-- A078330: Primes p such that mu(p-1) = -1, where mu is the Moebius function; that is, p-1 is squarefree and has an odd number of prime factors.

Offset 1, canonical program `A078330.P2471805559415879060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A078330 (n : ℕ) : ℤ :=
  (A078330.P2471805559415879060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A078330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078773.P15975746237100641970

`A182986(A070804(n+1)+1)`
-/

namespace A078773.P15975746237100641970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A070804 (n + 1) + 1).toNat

end

end A078773.P15975746237100641970

noncomputable section

/-- A078773: a(n) is the largest prime less than or equal to phi(n), a(1) = a(2) = 0.

Offset 1, canonical program `A078773.P15975746237100641970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078773 (n : ℕ) : ℤ :=
  A078773.P15975746237100641970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078893.P7358594044589059209

`filter[A078892(n+1), A005171(#)]`
-/

namespace A078893.P7358594044589059209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A078893.P7358594044589059209

noncomputable section

/-- A078893: Composite numbers k such that phi(k) - 1 is prime, where phi is Euler's totient function (A000010).

Offset 1, canonical program `A078893.P7358594044589059209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9458 terms. -/
def A078893 (n : ℕ) : ℤ :=
  A078893.P7358594044589059209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9458 terms. -/
def A078893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079047.P13319003001615767345

`A062773(n+1)-(n+2)`
-/

namespace A079047.P13319003001615767345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) - (n + 2 : ℤ)

end

end A079047.P13319003001615767345

noncomputable section

/-- A079047: Number of primes between prime(n) and prime(n)^2.

Offset 1, canonical program `A079047.P13319003001615767345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A079047 (n : ℕ) : ℤ :=
  A079047.P13319003001615767345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A079047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079309.P2928815747845907027

`A066796(n+1)/2`
-/

namespace A079309.P2928815747845907027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066796 (n + 1) : ℚ) / 2

end

end A079309.P2928815747845907027

noncomputable section

/-- A079309: a(n) = C(1,1) + C(3,2) + C(5,3) + ... + C(2*n-1,n).

Offset 1, canonical program `A079309.P2928815747845907027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066796, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079309 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079309.P2928815747845907027.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066796, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079740.P6037499891495547414

`p?[A004431(n+1)+2]`
-/

namespace A079740.P6037499891495547414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079740.P6037499891495547414

noncomputable section

/-- A079740: Primes of the form x^2 + y^2 + 2 (x,y positive).

Offset 1, canonical program `A079740.P6037499891495547414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 838 terms. -/
def A079740 (n : ℕ) : ℤ :=
  A079740.P6037499891495547414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 838 terms. -/
def A079740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080218.P8051704122228594511

`comp[A182859(n+1)-1]+1`
-/

namespace A080218.P8051704122228594511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182859 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080218.P8051704122228594511

noncomputable section

/-- A080218: Monotonically increasing sequence such that every positive integer n appears if and only if d(n) doesn't (d(n)=number of divisors of n, A000005).

Offset 1, canonical program `A080218.P8051704122228594511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080218 (n : ℕ) : ℤ :=
  (A080218.P8051704122228594511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080309.P15158434456608786977

`record[gcd(n, A080307(A028310(n)))]`
-/

namespace A080309.P15158434456608786977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A080307 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080309.P15158434456608786977

noncomputable section

/-- A080309: Numbers k such that the k-th positive even number equals the k-th multiple of a Fermat number.

Offset 1, canonical program `A080309.P15158434456608786977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2343 terms. -/
def A080309 (n : ℕ) : ℤ :=
  (A080309.P15158434456608786977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2343 terms. -/
def A080309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080587.P4353599123797453831

`3*2^(A000523(A002264(n+6))-1)*(4-3*A080586(n))+A080586(n)*(n+7)-9`
-/

namespace A080587.P4353599123797453831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ (A000523 (A002264 (n + 6)).toNat - 1 : ℤ) * (4 - 3 * A080586 n : ℚ) + (A080586 n * (n + 7 : ℤ) : ℚ) - 9

end

end A080587.P4353599123797453831

noncomputable section

/-- A080587: Partial sums of A080586.

Offset 0, canonical program `A080587.P4353599123797453831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080587 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080587.P4353599123797453831.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080774.P6216594566217040255

`filter[A359163(n+1), A340369(#)]`
-/

namespace A080774.P6216594566217040255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A080774.P6216594566217040255

noncomputable section

/-- A080774: Numbers with two prime factors: (4*i+1)*(4*j+3).

Offset 1, canonical program `A080774.P6216594566217040255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6052 terms. -/
def A080774 (n : ℕ) : ℤ :=
  A080774.P6216594566217040255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6052 terms. -/
def A080774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082391.P4712612013818769208

`Δ[comp[A193739(n)+a(n-1)]]` with `a(0)=2, a(1)=2`
-/

namespace A082391.P4712612013818769208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A193739 n + f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A082391.P4712612013818769208

noncomputable section

/-- A082391: Start with the sequence a(1) to a(4) = 1, 3, 2, 3. Then in step s, append "1", "1,2", or "1,2,3", whichever ends with a(s+2).

Offset 1, canonical program `A082391.P4712612013818769208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082391 (n : ℕ) : ℤ :=
  A082391.P4712612013818769208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082500.P772488791767380489

`A230850(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A082500.P772488791767380489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A230850 n + a (n - 2)

end

end A082500.P772488791767380489

noncomputable section

/-- A082500: a(n) = ceiling(n/2) if n is odd, or prime(n/2) otherwise.

Offset 1, canonical program `A082500.P772488791767380489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082500 (n : ℕ) : ℤ :=
  A082500.P772488791767380489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082854.P12286261217204783518

`A082853(n)+1`
-/

namespace A082854.P12286261217204783518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 n + 1

end

end A082854.P12286261217204783518

noncomputable section

/-- A082854: Integers 1 to Catalan(n) followed by integers 1 to Catalan(n+1) etc.

Offset 0, canonical program `A082854.P12286261217204783518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082853, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082854 (n : ℕ) : ℤ :=
  A082854.P12286261217204783518.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082853, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083348.P17228542096828798652

`eq[1, A369048(n)]`
-/

namespace A083348.P17228542096828798652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083348.P17228542096828798652

noncomputable section

/-- A083348: Numbers k such that r(k) = Sum(e/p: k = Product(p^e)) > 1.

Offset 1, canonical program `A083348.P17228542096828798652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083348 (n : ℕ) : ℤ :=
  (A083348.P17228542096828798652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083794.P16651843307609193916

`comp[eq[0, A182394(n+2)]+1]+1`
-/

namespace A083794.P16651843307609193916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A083794.P16651843307609193916

noncomputable section

/-- A083794: Numbers k such that tau(k) is different from tau(k-1), where tau(m) = number of divisors of m.

Offset 1, canonical program `A083794.P16651843307609193916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083794 (n : ℕ) : ℤ :=
  (A083794.P16651843307609193916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084054.P2245921812110544947

`A056142(∑[log2(gcd(2, n))])%5`
-/

namespace A084054.P2245921812110544947
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056142 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) 5

end

end A084054.P2245921812110544947

noncomputable section

/-- A084054: 5*n digit-reversed mod 5.

Offset 2, canonical program `A084054.P2245921812110544947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084054 (n : ℕ) : ℤ :=
  A084054.P2245921812110544947.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084416.P7694931903322058044

`lcm(A020985(n), A084417(A038722(n+1)))`
-/

namespace A084416.P7694931903322058044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A084417 (A038722 (n + 1)).toNat)

end

end A084416.P7694931903322058044

noncomputable section

/-- A084416: Triangle read by rows: T(n,k) = Sum_{i=k..n} i!*Stirling2(n,i), n >= 1, 1 <= k <= n.

Offset 1, canonical program `A084416.P7694931903322058044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2080 terms. -/
def A084416 (n : ℕ) : ℤ :=
  (A084416.P7694931903322058044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2080 terms. -/
def A084416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086747.P8680949649443057627

`char[eq[1, A316831(n)]]`
-/

namespace A086747.P8680949649443057627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A086747.P8680949649443057627

noncomputable section

/-- A086747: Baum-Sweet sequence: a(n) = 1 if binary representation of n contains no block of consecutive zeros of odd length; otherwise a(n) = 0.

Offset 0, canonical program `A086747.P8680949649443057627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086747 (n : ℕ) : ℤ :=
  (A086747.P8680949649443057627.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086843.P7628084561521555500

`2*A387349(n+1)-1`
-/

namespace A086843.P7628084561521555500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A387349 (n + 1) - 1

end

end A086843.P7628084561521555500

noncomputable section

/-- A086843: Odd numbers m such that the sequence defined by b(1) = m; for k>1, b(k) = floor(phi*b(k-1)), where phi = (1 + sqrt(5))/2, contains only odd numbers.

Offset 1, canonical program `A086843.P7628084561521555500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086843 (n : ℕ) : ℤ :=
  A086843.P7628084561521555500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087012.P10846444027220297516

`eq[A087010(n+1), A087011(n+1)]+1`
-/

namespace A087012.P10846444027220297516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087012.P10846444027220297516

noncomputable section

/-- A087012: Numbers m such that the number of primes of form 4*k+1 between m and 2*m equals the number of primes of form 4*k+3 between m and 2*m (inclusive).

Offset 1, canonical program `A087012.P10846444027220297516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A087012 (n : ℕ) : ℤ :=
  (A087012.P10846444027220297516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A087012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087248.P12195210729776297847

`record[A007947(A308127(n+1))]`
-/

namespace A087248.P12195210729776297847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A308127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087248.P12195210729776297847

noncomputable section

/-- A087248: Squarefree abundant numbers.

Offset 1, canonical program `A087248.P12195210729776297847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5505 terms. -/
def A087248 (n : ℕ) : ℤ :=
  A087248.P12195210729776297847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5505 terms. -/
def A087248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087872.P6196615648730476235

`∩[A102083(2*n+1), A027862(n+2)]`
-/

namespace A087872.P6196615648730476235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087872.P6196615648730476235

noncomputable section

/-- A087872: Primes of the form (4*k + 3)^2 + (4*k + 2)^2 where k=0,1,2,3,...

Offset 1, canonical program `A087872.P6196615648730476235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. -/
def A087872 (n : ℕ) : ℤ :=
  (A087872.P6196615648730476235.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. -/
def A087872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088405.P5207061650554154256

`A052217(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088405.P5207061650554154256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052217 (n + 1) : ℚ) / 3

end

end A088405.P5207061650554154256

noncomputable section

/-- A088405: a(n) = A052217(n)/3.

Offset 1, canonical program `A088405.P5207061650554154256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088405 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088405.P5207061650554154256.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089188.P17705299783274846901

`p?[A039787(n+1)+2]-2`
-/

namespace A089188.P17705299783274846901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A089188.P17705299783274846901

noncomputable section

/-- A089188: Lesser member p of a pair of twin primes such that p-1 is squarefree.

Offset 1, canonical program `A089188.P17705299783274846901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A089188 (n : ℕ) : ℤ :=
  A089188.P17705299783274846901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A089188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089439.P9144807234089263602

`p?[A153218(n+1)-1]`
-/

namespace A089439.P9144807234089263602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089439.P9144807234089263602

noncomputable section

/-- A089439: 6p+13 and p are primes.

Offset 1, canonical program `A089439.P9144807234089263602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. -/
def A089439 (n : ℕ) : ℤ :=
  A089439.P9144807234089263602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. -/
def A089439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091267.P93764247883844518

`A091237(2*(n+1))`
-/

namespace A091267.P93764247883844518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (2 * (n + 1))

end

end A091267.P93764247883844518

noncomputable section

/-- A091267: Lengths of runs of 3's in A039702.

Offset 1, canonical program `A091267.P93764247883844518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A091267 (n : ℕ) : ℤ :=
  A091267.P93764247883844518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A091267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091318.P7056967124292507603

`A091237(2*n+3)`
-/

namespace A091318.P7056967124292507603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (2 * n + 3)

end

end A091318.P7056967124292507603

noncomputable section

/-- A091318: Lengths of runs of 1's in A039702.

Offset 1, canonical program `A091318.P7056967124292507603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A091318 (n : ℕ) : ℤ :=
  A091318.P7056967124292507603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A091318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091696.P12943437932525177728

`A056342(n+1)+1`
-/

namespace A091696.P12943437932525177728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056342 (n + 1) + 1

end

end A091696.P12943437932525177728

noncomputable section

/-- A091696: Number of classes of compositions of n equivalent under reflection or cycling.

Offset 1, canonical program `A091696.P12943437932525177728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091696 (n : ℕ) : ℤ :=
  A091696.P12943437932525177728.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091696.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094218.P957445581000040458

`(n+1)*A037958(2*(n+1))/2`
-/

namespace A094218.P957445581000040458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A037958 (2 * (n + 1)) : ℚ) / 2)

end

end A094218.P957445581000040458

noncomputable section

/-- A094218: Number of permutations of length n with exactly 2 occurrences of the pattern 2-13.

Offset 1, canonical program `A094218.P957445581000040458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A094218 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094218.P957445581000040458.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A094218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094247.P8277394697734993563

`(-1)^n*A053694(n)`
-/

namespace A094247.P8277394697734993563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A053694 n

end

end A094247.P8277394697734993563

noncomputable section

/-- A094247: Expansion of (phi(-q^5)^2 - phi(-q)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A094247.P8277394697734993563`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094247 (n : ℕ) : ℤ :=
  A094247.P8277394697734993563.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094933.P17668659556635133304

`∩[A051634(n+1), A126096(n+1)]`
-/

namespace A094933.P17668659556635133304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094933.P17668659556635133304

noncomputable section

/-- A094933: Primes prime(k) such that (prime(k-1) + prime(k+1) + prime(k+2))/prime(k) = 3.

Offset 1, canonical program `A094933.P17668659556635133304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A094933 (n : ℕ) : ℤ :=
  (A094933.P17668659556635133304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A094933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098031.P16525975557051663860

`p?[A153081(n+1)+A097363(n+1)]`
-/

namespace A098031.P16525975557051663860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 1) + A097363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098031.P16525975557051663860

noncomputable section

/-- A098031: Primes p such that p = (prime(n)+ prime(n+4))/2.

Offset 1, canonical program `A098031.P16525975557051663860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 531 terms. -/
def A098031 (n : ℕ) : ℤ :=
  A098031.P16525975557051663860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 531 terms. -/
def A098031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098058.P16596621847938489443

`A000040(∑[A091237(n+1)])`
-/

namespace A098058.P16596621847938489443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098058.P16596621847938489443

noncomputable section

/-- A098058: Prime(n) such that 4 does not divide the difference between prime(n) and prime(n+1).

Offset 1, canonical program `A098058.P16596621847938489443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5863 terms. -/
def A098058 (n : ℕ) : ℤ :=
  A098058.P16596621847938489443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5863 terms. -/
def A098058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099049.P5479479623844878701

`∪[A024675(n+1), A099047(n+1)]`
-/

namespace A099049.P5479479623844878701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099049.P5479479623844878701

noncomputable section

/-- A099049: Numbers n such that n-1 and n+1 are both prime or both composite.

Offset 1, canonical program `A099049.P5479479623844878701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099049 (n : ℕ) : ℤ :=
  (A099049.P5479479623844878701.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100240.P1376351240416722442

`A036453(n+1)*A100223(n)-A159075(n)`
-/

namespace A100240.P1376351240416722442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A100223 n - A159075 n

end

end A100240.P1376351240416722442

noncomputable section

/-- A100240: G.f. A(x) satisfies: 4^n/2 = Sum_{k=0..n} [x^k]A(x)^n and also satisfies: ((4+z)^n + z^n)/2 = Sum_{k=0..n} [x^k](A(x)+z*x)^n for all z, where [x^k]A(x)^n denotes the coefficient of x^k in A(x)^n.

Offset 0, canonical program `A100240.P1376351240416722442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A100240 (n : ℕ) : ℤ :=
  A100240.P1376351240416722442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A100240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100300.P11647304078459393174

`A100299(n+3)-(-1)^(n+3)`
-/

namespace A100300.P11647304078459393174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100299 (n + 3) - (-1) ^ (n + 3)

end

end A100300.P11647304078459393174

noncomputable section

/-- A100300: Number of dissections of a convex n-gon by nonintersecting diagonals into an odd number of regions.

Offset 3, canonical program `A100300.P11647304078459393174`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100299, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100300 (n : ℕ) : ℤ :=
  A100300.P11647304078459393174.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100299, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100656.P17843525383450205217

`1-char[A257772(n+1)]`
-/

namespace A100656.P17843525383450205217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257772 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A100656.P17843525383450205217

noncomputable section

/-- A100656: a(n)=1 if the n-th hexagonal number is a prime, otherwise 0.

Offset 0, canonical program `A100656.P17843525383450205217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100656 (n : ℕ) : ℤ :=
  A100656.P17843525383450205217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101404.P6201192539946373633

`n*A101403(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101404.P6201192539946373633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101403 n

end

end A101404.P6201192539946373633

noncomputable section

/-- A101404: a(n) = n*A101403(n).

Offset 0, canonical program `A101404.P6201192539946373633`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101403, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101404 (n : ℕ) : ℤ :=
  A101404.P6201192539946373633.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101403, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103612.P10543445186733692250

`A001876(A104768(n))`
-/

namespace A103612.P10543445186733692250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A104768 n).toNat

end

end A103612.P10543445186733692250

noncomputable section

/-- A103612: Number of solutions to 5+B^2=p^2+q^2 with B=2n, p,q>0 and 2p^2<5+B^2.

Offset 0, canonical program `A103612.P10543445186733692250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A103612 (n : ℕ) : ℤ :=
  A103612.P10543445186733692250.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A103612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104213.P5615323875581109589

`p?[A104211(n+1)]`
-/

namespace A104213.P5615323875581109589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104213.P5615323875581109589

noncomputable section

/-- A104213: Primes with nonprime sums of digits.

Offset 1, canonical program `A104213.P5615323875581109589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 878 terms. -/
def A104213 (n : ℕ) : ℤ :=
  A104213.P5615323875581109589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 878 terms. -/
def A104213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106088.P8246779572440490493

`∩[A023222(n+1), A023225(n+1)]`
-/

namespace A106088.P8246779572440490493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106088.P8246779572440490493

noncomputable section

/-- A106088: Primes p such that 7*p + 6 and 6*p + 7 are primes.

Offset 1, canonical program `A106088.P8246779572440490493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. -/
def A106088 (n : ℕ) : ℤ :=
  (A106088.P8246779572440490493.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. -/
def A106088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106492.P4920564383791581968

`A008475(∏{p}[n+1, #])+∑{e}[n+1, A338038(#)]`
-/

namespace A106492.P4920564383791581968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f1 n), p) + ∑ p ∈ Nat.primeFactors (f2 n), A338038 (Nat.factorization (f2 n) p)

end

end A106492.P4920564383791581968

noncomputable section

/-- A106492: Total sum of bases and exponents in Quetian Superfactorization of n, excluding the unity-exponents at the tips of branches.

Offset 1, canonical program `A106492.P4920564383791581968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106492 (n : ℕ) : ℤ :=
  A106492.P4920564383791581968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107841.P745110736130295329

`A036453(n+1)*A269730(A028310(n))`
-/

namespace A107841.P745110736130295329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A269730 (A028310 n).toNat

end

end A107841.P745110736130295329

noncomputable section

/-- A107841: Series reversion of x*(1-3*x)/(1-x).

Offset 0, canonical program `A107841.P745110736130295329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A107841 (n : ℕ) : ℤ :=
  A107841.P745110736130295329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A107841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108181.P8503528665042007450

`filter[A359161(n+2), A340369(#)]`
-/

namespace A108181.P8503528665042007450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359161 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A108181.P8503528665042007450

noncomputable section

/-- A108181: Semiprimes of the form 4n + 1.

Offset 1, canonical program `A108181.P8503528665042007450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6094 terms. -/
def A108181 (n : ℕ) : ℤ :=
  A108181.P8503528665042007450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6094 terms. -/
def A108181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109983.P3206352724979772563

`A109187(A091995(n+1)-1)`
-/

namespace A109983.P3206352724979772563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109187 (A091995 (n + 1) - 1).toNat

end

end A109983.P3206352724979772563

noncomputable section

/-- A109983: Triangle read by rows: T(n, k) (0<=k<=2n) is the number of Delannoy paths of length n, having k steps.

Offset 0, canonical program `A109983.P3206352724979772563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. -/
def A109983 (n : ℕ) : ℤ :=
  A109983.P3206352724979772563.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. -/
def A109983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113709.P7356311501742520616

`eq[1, ((n+1)%A166597(n))%(n+1)]`
-/

namespace A113709.P7356311501742520616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (n + 1 : ℤ) (A166597 n)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113709.P7356311501742520616

noncomputable section

/-- A113709: a(n) is the composite between p(n) and p(n+1), where p(n) is the n-th prime, which is divisible by (p(n+1)-p(n)).

Offset 2, canonical program `A113709.P7356311501742520616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A113709 (n : ℕ) : ℤ :=
  (A113709.P7356311501742520616.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A113709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114284.P2344535506956303237

`A118824(A158747(n))`
-/

namespace A114284.P2344535506956303237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A158747 n).toNat

end

end A114284.P2344535506956303237

noncomputable section

/-- A114284: Riordan array ((1-3*x)/(1-x), x).

Offset 0, canonical program `A114284.P2344535506956303237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114284 (n : ℕ) : ℤ :=
  A114284.P2344535506956303237.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114305.P16547444787834545960

`A114306(n+1)-A169585(n)`
-/

namespace A114305.P16547444787834545960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114306 (n + 1) - A169585 n

end

end A114305.P16547444787834545960

noncomputable section

/-- A114305: Numbers k such that Fibonacci(k) has more distinct prime factors than k does.

Offset 1, canonical program `A114305.P16547444787834545960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A114305 (n : ℕ) : ℤ :=
  A114305.P16547444787834545960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A114305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115952.P13887102095914468109

`Δ[-A266502(A133280(n))]`
-/

namespace A115952.P13887102095914468109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A266502 (A133280 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115952.P13887102095914468109

noncomputable section

/-- A115952: Expansion of (1-x+x*y)/(1-x^2*y^2) - x^2/(1-x^2*y).

Offset 0, canonical program `A115952.P13887102095914468109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A115952 (n : ℕ) : ℤ :=
  A115952.P13887102095914468109.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A115952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116569.P3485505582268508162

`(A116563(n+1)^3-A116563(n+1))/6`
-/

namespace A116569.P3485505582268508162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116563 (n + 1) ^ 3 - A116563 (n + 1) : ℚ) / 6

end

end A116569.P3485505582268508162

noncomputable section

/-- A116569: a(n) = (x^3 - x) / 6, where x is the genus of the modular curve X_0(p) for p = prime(n).

Offset 1, canonical program `A116569.P3485505582268508162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A116569.P3485505582268508162.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117945.P3427762021949423667

`(A109187(n)+1)%3-1`
-/

namespace A117945.P3427762021949423667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109187 n + 1) 3 - 1

end

end A117945.P3427762021949423667

noncomputable section

/-- A117945: Triangle related to powers of 3 partitions of n.

Offset 0, canonical program `A117945.P3427762021949423667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117945 (n : ℕ) : ℤ :=
  A117945.P3427762021949423667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118359.P12469807509055540995

`p?[A031925(n+1)-A031924(n+1)%7]`
-/

namespace A118359.P12469807509055540995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1) - Int.tmod (A031924 (n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118359.P12469807509055540995

noncomputable section

/-- A118359: Primes for which the weight as defined in A117078 is 7 and the gap as defined in A001223 is 6.

Offset 1, canonical program `A118359.P12469807509055540995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1889 terms. -/
def A118359 (n : ℕ) : ℤ :=
  A118359.P12469807509055540995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1889 terms. -/
def A118359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118483.P12141014104972374228

`A115606(n)+1`
-/

namespace A118483.P12141014104972374228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115606 n + 1

end

end A118483.P12141014104972374228

noncomputable section

/-- A118483: Partial sums of primes that are not Chen primes (starting with 1).

Offset 0, canonical program `A118483.P12141014104972374228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118483 (n : ℕ) : ℤ :=
  A118483.P12141014104972374228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118886.P18321281413549148776

`filter[A387216(n+1), A353816(#)]`
-/

namespace A118886.P18321281413549148776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A118886.P18321281413549148776

noncomputable section

/-- A118886: Numbers expressible as x^2 + x*y + y^2, 0 <= x <= y, in 2 or more ways.

Offset 1, canonical program `A118886.P18321281413549148776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3546 terms. -/
def A118886 (n : ℕ) : ℤ :=
  A118886.P18321281413549148776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3546 terms. -/
def A118886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120360.P8400398089451663641

`∩[A057265(n+1), A181794(n+1)]`
-/

namespace A120360.P8400398089451663641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120360.P8400398089451663641

noncomputable section

/-- A120360: Even refactorable numbers k such that the number of odd divisors of k and the number of even divisors of k are both even divisors of k.

Offset 1, canonical program `A120360.P8400398089451663641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. -/
def A120360 (n : ℕ) : ℤ :=
  (A120360.P8400398089451663641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. -/
def A120360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120736.P12991699903577371064

`eq[A000005(n+1), A306671(n+1)]+1`
-/

namespace A120736.P12991699903577371064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120736.P12991699903577371064

noncomputable section

/-- A120736: Numbers k such that every prime p that divides d(k) (A000005) also divides k.

Offset 1, canonical program `A120736.P12991699903577371064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5770 terms. -/
def A120736 (n : ℕ) : ℤ :=
  (A120736.P12991699903577371064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5770 terms. -/
def A120736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121614.P7539545876056911518

`∩[A104211(n+1), A108662(n+1)]`
-/

namespace A121614.P7539545876056911518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121614.P7539545876056911518

noncomputable section

/-- A121614: Numbers that have composite sum of digits and prime sum of squares of digits.

Offset 1, canonical program `A121614.P7539545876056911518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121614 (n : ℕ) : ℤ :=
  (A121614.P7539545876056911518.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122190.P11139761942879363601

`A053694(4*n)`
-/

namespace A122190.P11139761942879363601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053694 (4 * n)

end

end A122190.P11139761942879363601

noncomputable section

/-- A122190: Expansion of q^(-1/4) * eta(q^2) * eta(q^5)^3 / (eta(q) * eta(q^10)) in powers of q.

Offset 0, canonical program `A122190.P11139761942879363601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122190 (n : ℕ) : ℤ :=
  A122190.P11139761942879363601.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122190.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123711.P3106313337683565752

`filter[A013929(n+1), A215480(#)]`
-/

namespace A123711.P3106313337683565752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P3106313337683565752

noncomputable section

/-- A123711: Indices n such that A123709(n) = 8 = number of nonzero terms in row n of triangle A123706.

Offset 1, canonical program `A123711.P3106313337683565752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A123711 (n : ℕ) : ℤ :=
  A123711.P3106313337683565752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A123711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124233.P15256239777678709145

`abs(A111949(A004277(n)-n))`
-/

namespace A124233.P15256239777678709145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111949 (A004277 n - (n : ℤ)).toNat|

end

end A124233.P15256239777678709145

noncomputable section

/-- A124233: Expansion of psi(q) * phi(-q^10) * chi(-q^5) / chi(-q^2) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A124233.P15256239777678709145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124233 (n : ℕ) : ℤ :=
  A124233.P15256239777678709145.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126800.P2125643861586013567

`A195153(∑[A195150(n+2)]+3)+1`
-/

namespace A126800.P2125643861586013567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195153 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat + 1

end

end A126800.P2125643861586013567

noncomputable section

/-- A126800: Smallest divisor of n which is greater than largest divisor d of n such that each integer from 1 to d is also a divisor of n.

Offset 3, canonical program `A126800.P2125643861586013567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A126800 (n : ℕ) : ℤ :=
  A126800.P2125643861586013567.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A126800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126994.P4632557571172505909

`C(A045344(n+4), A182986(n+1))`
-/

namespace A126994.P4632557571172505909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A045344 (n + 4)).toNat (A182986 (n + 1)).toNat

end

end A126994.P4632557571172505909

noncomputable section

/-- A126994: a(n) = binomial(prime(n+5), prime(n)).

Offset 0, canonical program `A126994.P4632557571172505909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A126994 (n : ℕ) : ℤ :=
  (A126994.P4632557571172505909.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A126994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127323.P11295704530914292071

`A194884(n)-1`
-/

namespace A127323.P11295704530914292071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194884 n - 1

end

end A127323.P11295704530914292071

noncomputable section

/-- A127323: Third 4-dimensional hyper-tetrahedral coordinate; 4-D analog of A056557.

Offset 0, canonical program `A127323.P11295704530914292071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A127323 (n : ℕ) : ℤ :=
  A127323.P11295704530914292071.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A127323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127331.P7890648957461590311

`∩[A023222(n+1), A153135(n+1)]`
-/

namespace A127331.P7890648957461590311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127331.P7890648957461590311

noncomputable section

/-- A127331: Primes p such that 6p-7 and 6p+7 are also primes.

Offset 1, canonical program `A127331.P7890648957461590311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1949 terms. -/
def A127331 (n : ℕ) : ℤ :=
  (A127331.P7890648957461590311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1949 terms. -/
def A127331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127465.P14584942028873520679

`(col(n)+1)*A054523(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A127465.P14584942028873520679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * A054523 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1))

end

end A127465.P14584942028873520679

noncomputable section

/-- A127465: Triangle read by rows: T(n,k) = k*phi(n/k) if k|n, T(n,k)=0 otherwise.

Offset 1, canonical program `A127465.P14584942028873520679`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127465 (n : ℕ) : ℤ :=
  A127465.P14584942028873520679.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127527.P15161782034350291340

`A000005(col(n)+1)*A054523(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A127527.P15161782034350291340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.triCol n + 1) * A054523 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1))

end

end A127527.P15161782034350291340

noncomputable section

/-- A127527: Triangle T(n,k)= tau(k)*phi(n/k) if k|n, else T(n,k)=0.

Offset 1, canonical program `A127527.P15161782034350291340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127527 (n : ℕ) : ℤ :=
  A127527.P15161782034350291340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127527.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127528.P7975887621646932099

`A000005(row(n)+1)*A054523(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A127528.P7975887621646932099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.triRow n + 1) * A054523 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A127528.P7975887621646932099

noncomputable section

/-- A127528: Triangle T(n,k) read by rows: tau(n)*phi(n/k) if k|n, else 0.

Offset 1, canonical program `A127528.P7975887621646932099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127528 (n : ℕ) : ℤ :=
  A127528.P7975887621646932099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127571.P3484283855856059856

`A054523(n+1)*A127570(n+1)`
-/

namespace A127571.P3484283855856059856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A127570 (n + 1)

end

end A127571.P3484283855856059856

noncomputable section

/-- A127571: Triangle T(n,k) = phi(n/k)*sigma(k) if k divides n, else 0.

Offset 1, canonical program `A127571.P3484283855856059856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127571 (n : ℕ) : ℤ :=
  A127571.P3484283855856059856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127639.P17637051659487995059

`A182986(A127093(n+1)+1)`
-/

namespace A127639.P17637051659487995059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A127093 (n + 1) + 1).toNat

end

end A127639.P17637051659487995059

noncomputable section

/-- A127639: A051731 * A127640, where A127640 = infinite lower triangular matrix with the sequence of primes in the main diagonal and the rest zeros.

Offset 1, canonical program `A127639.P17637051659487995059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127639 (n : ℕ) : ℤ :=
  A127639.P17637051659487995059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127649.P7262969577181588906

`(row(n)+1)*A054523(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A127649.P7262969577181588906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) * A054523 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A127649.P7262969577181588906

noncomputable section

/-- A127649: A127648 * A054523 as infinite lower triangular matrices.

Offset 1, canonical program `A127649.P7262969577181588906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127649 (n : ℕ) : ℤ :=
  A127649.P7262969577181588906.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128413.P14607196122930691021

`A011782(A193739(n))*A094527(n)`
-/

namespace A128413.P14607196122930691021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A193739 n).toNat * A094527 n

end

end A128413.P14607196122930691021

noncomputable section

/-- A128413: Inverse of number triangle A128412.

Offset 0, canonical program `A128413.P14607196122930691021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6441 terms. -/
def A128413 (n : ℕ) : ℤ :=
  A128413.P14607196122930691021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6441 terms. -/
def A128413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128693.P540367086758786083

`∩[A106843(n+1), A231877(n+1)]`
-/

namespace A128693.P540367086758786083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128693.P540367086758786083

noncomputable section

/-- A128693: Numbers of the form 3^k*p, where 1 <= k <= 6 and p is a prime different from 3.

Offset 1, canonical program `A128693.P540367086758786083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A128693 (n : ℕ) : ℤ :=
  (A128693.P540367086758786083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A128693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129236.P14477264871821346647

`A051340(n)*A054523(n+1)`
-/

namespace A129236.P14477264871821346647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n * A054523 (n + 1)

end

end A129236.P14477264871821346647

noncomputable section

/-- A129236: A054525 * A129234.

Offset 1, canonical program `A129236.P14477264871821346647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129236 (n : ℕ) : ℤ :=
  A129236.P14477264871821346647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129307.P5188627455129156108

`A000217(A027861(n+1))`
-/

namespace A129307.P5188627455129156108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A027861 (n + 1)).toNat

end

end A129307.P5188627455129156108

noncomputable section

/-- A129307: Intersection of A000217 and A005098.

Offset 1, canonical program `A129307.P5188627455129156108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129307 (n : ℕ) : ℤ :=
  A129307.P5188627455129156108.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129307.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129391.P2458449094293201536

`A111949(2*n+1)`
-/

namespace A129391.P2458449094293201536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (2 * n + 1)

end

end A129391.P2458449094293201536

noncomputable section

/-- A129391: Expansion of phi(-x) * phi(x^5) / (chi(-x^2) * chi(-x^10)) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A129391.P2458449094293201536`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129391 (n : ℕ) : ℤ :=
  A129391.P2458449094293201536.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129391.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129479.P1918562767807399019

`A054523(n+1)+A054523(n+2)*A349317(n+2)`
-/

namespace A129479.P1918562767807399019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) + A054523 (n + 2) * A349317 (n + 2)

end

end A129479.P1918562767807399019

noncomputable section

/-- A129479: Triangle read by rows: A054523 * A097806 as infinite lower triangular matrices.

Offset 1, canonical program `A129479.P1918562767807399019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A129479 (n : ℕ) : ℤ :=
  A129479.P1918562767807399019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A129479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129546.P12413915237248930736

`eq[10, A075402(A028310(n))]`
-/

namespace A129546.P12413915237248930736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075402 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129546.P12413915237248930736

noncomputable section

/-- A129546: Numbers k such that T(k)+10 is the next prime after T(k), where T(k) = A000217(k).

Offset 1, canonical program `A129546.P12413915237248930736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A129546 (n : ℕ) : ℤ :=
  (A129546.P12413915237248930736.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A129546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129559.P13162806888516698489

`(2-A129372(n+1))*A054523(n+1)`
-/

namespace A129559.P13162806888516698489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A129372 (n + 1)) * A054523 (n + 1)

end

end A129559.P13162806888516698489

noncomputable section

/-- A129559: Triangle read by rows: A054523 * A115361 as infinite lower triangular matrices.

Offset 1, canonical program `A129559.P13162806888516698489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129559 (n : ℕ) : ℤ :=
  A129559.P13162806888516698489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130632.P9883400220475376543

`(A051950(n+2)-A182394(n+2))*A182394(n+2)`
-/

namespace A130632.P9883400220475376543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051950 (n + 2) - A182394 (n + 2)) * A182394 (n + 2)

end

end A130632.P9883400220475376543

noncomputable section

/-- A130632: Number of natural numbers between d(n) and d(n+1), where d(n) denotes the number of divisors of n.

Offset 1, canonical program `A130632.P9883400220475376543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130632 (n : ℕ) : ℤ :=
  A130632.P9883400220475376543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131950.P17361915348174357254

`A144217(n+1)+A131923(n)`
-/

namespace A131950.P17361915348174357254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A131923 n

end

end A131950.P17361915348174357254

noncomputable section

/-- A131950: A002024 + A131821 + A007318 - 2*A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A131950.P17361915348174357254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131950 (n : ℕ) : ℤ :=
  A131950.P17361915348174357254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133008.P6727961677655990974

`A328311(A100587(n+1)+6)`
-/

namespace A133008.P6727961677655990974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (A100587 (n + 1) + 6).toNat

end

end A133008.P6727961677655990974

noncomputable section

/-- A133008: The defining property of the sequences {A, B} = {A000028, A000379} is that they are the unique pair of sets complementary with respect to the positive integers such that p(n) = |{x : x, y in A, x < y, xy = n}| = |{x : x, y in B, x < y, xy = n}| for all n >= 1. The present sequence gives the values of p(n).

Offset 1, canonical program `A133008.P6727961677655990974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A133008 (n : ℕ) : ℤ :=
  A133008.P6727961677655990974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A133008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134312.P1287057998980359310

`A166444(A144217(n+2))`
-/

namespace A134312.P1287057998980359310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A144217 (n + 2)).toNat

end

end A134312.P1287057998980359310

noncomputable section

/-- A134312: A097806 * A134309.

Offset 0, canonical program `A134312.P1287057998980359310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134312 (n : ℕ) : ℤ :=
  A134312.P1287057998980359310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135368.P3412412809127182481

`A166597(12*(n+1))/2`
-/

namespace A135368.P3412412809127182481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166597 (12 * (n + 1)) : ℚ) / 2

end

end A135368.P3412412809127182481

noncomputable section

/-- A135368: a(n) = (nextprime(12*n) - previousprime(12*n))/2.

Offset 1, canonical program `A135368.P3412412809127182481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. -/
def A135368 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135368.P3412412809127182481.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. -/
def A135368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137487.P5545813627763981507

`∩[A036457(n+1), A336418(n+1)]`
-/

namespace A137487.P5545813627763981507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137487.P5545813627763981507

noncomputable section

/-- A137487: Numbers with 24 divisors.

Offset 1, canonical program `A137487.P5545813627763981507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A137487 (n : ℕ) : ℤ :=
  (A137487.P5545813627763981507.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. -/
def A137487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139262.P8524009422663711179

`A097070(n+1)-A081294(n)`
-/

namespace A139262.P8524009422663711179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097070 (n + 1) - A081294 n

end

end A139262.P8524009422663711179

noncomputable section

/-- A139262: Total number of two-element anti-chains over all ordered trees on n edges.

Offset 0, canonical program `A139262.P8524009422663711179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A139262 (n : ℕ) : ℤ :=
  A139262.P8524009422663711179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A139262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139985.P10011619881933024256

`∩[A139503(n+1), A139902(n+1)]`
-/

namespace A139985.P10011619881933024256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P10011619881933024256

noncomputable section

/-- A139985: Primes of the form 4x^2+4xy+211y^2.

Offset 1, canonical program `A139985.P10011619881933024256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A139985 (n : ℕ) : ℤ :=
  (A139985.P10011619881933024256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A139985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140026.P1796538295663725552

`∩[A139850(n+1), A139912(n+1)]`
-/

namespace A140026.P1796538295663725552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P1796538295663725552

noncomputable section

/-- A140026: Primes of the form 35x^2+39y^2.

Offset 1, canonical program `A140026.P1796538295663725552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. -/
def A140026 (n : ℕ) : ℤ :=
  (A140026.P1796538295663725552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. -/
def A140026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140077.P5536516406055941759

`∩[A006049(n+1), A033992(n+1)]`
-/

namespace A140077.P5536516406055941759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140077.P5536516406055941759

noncomputable section

/-- A140077: Numbers n such that n and n+1 have 3 distinct prime factors.

Offset 1, canonical program `A140077.P5536516406055941759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3489 terms. -/
def A140077 (n : ℕ) : ℤ :=
  (A140077.P5536516406055941759.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3489 terms. -/
def A140077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140761.P1386468688477579553

`A000040(A051838(n+1))`
-/

namespace A140761.P1386468688477579553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A051838 (n + 1)).toNat

end

end A140761.P1386468688477579553

noncomputable section

/-- A140761: Primes p(j) = A000040(j), j>=1, such that p(1)*p(2)*...*p(j) is an integral multiple of p(1)+p(2)+...+p(j).

Offset 1, canonical program `A140761.P1386468688477579553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140761 (n : ℕ) : ℤ :=
  A140761.P1386468688477579553.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140763.P12497329234687933226

`A007504(A051838(n+1))`
-/

namespace A140763.P12497329234687933226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A051838 (n + 1)).toNat

end

end A140763.P12497329234687933226

noncomputable section

/-- A140763: A051838 gives numbers m such that the sum of first m primes divides the product of the first m primes. This sequence gives corresponding values of the sum of first m primes.

Offset 1, canonical program `A140763.P12497329234687933226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140763 (n : ℕ) : ℤ :=
  A140763.P12497329234687933226.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140826.P13460497171487579116

`lt[A231167(n+3), 1]+3`
-/

namespace A140826.P13460497171487579116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231167 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A140826.P13460497171487579116

noncomputable section

/-- A140826: Arithmetic nondivisor means.

Offset 1, canonical program `A140826.P13460497171487579116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A140826 (n : ℕ) : ℤ :=
  (A140826.P13460497171487579116.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A140826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140977.P14132471099768097264

`A171942(A001316(2*n+1)+2+n)+1+n`
-/

namespace A140977.P14132471099768097264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171942 (A001316 (2 * n + 1) + 2 + (n : ℤ)).toNat + 1 + (n : ℤ)

end

end A140977.P14132471099768097264

noncomputable section

/-- A140977: a(n) is the smallest integer > n that has the same number of (nonleading) zeros in its binary representation as n has.

Offset 1, canonical program `A140977.P14132471099768097264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140977 (n : ℕ) : ℤ :=
  A140977.P14132471099768097264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141095.P5876124804023850422

`A062610(2*(n+1))-A345039(2*(n+1))`
-/

namespace A141095.P5876124804023850422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (2 * (n + 1)) - A345039 (2 * (n + 1))

end

end A141095.P5876124804023850422

noncomputable section

/-- A141095: Number of unordered pairs of coprime nonprime numbers that sum to 2n.

Offset 1, canonical program `A141095.P5876124804023850422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A141095 (n : ℕ) : ℤ :=
  A141095.P5876124804023850422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A141095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141242.P5265677567583654278

`A000005(A009087(n+1))`
-/

namespace A141242.P5265677567583654278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009087 (n + 1)).toNat

end

end A141242.P5265677567583654278

noncomputable section

/-- A141242: a(n) is the number of divisors of the n-th positive integer with a prime number of divisors. In other words, a(n) is the number of divisors of A009087(n).

Offset 1, canonical program `A141242.P5265677567583654278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141242 (n : ℕ) : ℤ :=
  A141242.P5265677567583654278.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141276.P6145773955166739299

`A338038(A002808(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141276.P6145773955166739299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (A002808 (n + 1)).toNat

end

end A141276.P6145773955166739299

noncomputable section

/-- A141276: a(n) = A338038(A002808(n)).

Offset 1, canonical program `A141276.P6145773955166739299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141276 (n : ℕ) : ℤ :=
  A141276.P6145773955166739299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141276.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141294.P5074448274352952984

`A004736(∑[A054523(abs(1-n)+1)])`
-/

namespace A141294.P5074448274352952984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A141294.P5074448274352952984

noncomputable section

/-- A141294: Triangle read by rows, A054523 * A000012, 1<=k<=n.

Offset 1, canonical program `A141294.P5074448274352952984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9873 terms. -/
def A141294 (n : ℕ) : ℤ :=
  A141294.P5074448274352952984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9873 terms. -/
def A141294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141641.P6703526250908210247

`∩[A054683(n+1), A104211(n+1)]`
-/

namespace A141641.P6703526250908210247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141641.P6703526250908210247

noncomputable section

/-- A141641: Digital sum of n is an even composite.

Offset 1, canonical program `A141641.P6703526250908210247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7196 terms. -/
def A141641 (n : ℕ) : ℤ :=
  (A141641.P6703526250908210247.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7196 terms. -/
def A141641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143316.P17944091046691016971

`A054523(n+1)*A114002(n)`
-/

namespace A143316.P17944091046691016971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A114002 n

end

end A143316.P17944091046691016971

noncomputable section

/-- A143316: Triangle read by rows, A054525 * A143315, 1<=k<=n.

Offset 1, canonical program `A143316.P17944091046691016971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143316 (n : ℕ) : ℤ :=
  A143316.P17944091046691016971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143323.P3371947964759797463

`(-1)^n*A111949(n+1)`
-/

namespace A143323.P3371947964759797463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A111949 (n + 1)

end

end A143323.P3371947964759797463

noncomputable section

/-- A143323: Expansion of eta(q^2)^4 * eta(q^5) * eta(q^20)^2 / ( eta(q) * eta(q^4)^2 * eta(q^10)^2 ) in powers of q.

Offset 1, canonical program `A143323.P3371947964759797463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143323 (n : ℕ) : ℤ :=
  A143323.P3371947964759797463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143595.P4643358724247871193

`ceil(A143593(n+1)/2)`
-/

namespace A143595.P4643358724247871193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A143593 (n + 1) : ℚ) / 2⌉

end

end A143595.P4643358724247871193

noncomputable section

/-- A143595: Triangle read by rows, A000012 * (an infinite lower triangular matrix with 1's in the first column and the rest 2's); 1<=k<=n.

Offset 1, canonical program `A143595.P4643358724247871193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143595 (n : ℕ) : ℤ :=
  A143595.P4643358724247871193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144078.P3429487061898362831

`2*A037888(n+1)`
-/

namespace A144078.P3429487061898362831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037888 (n + 1)

end

end A144078.P3429487061898362831

noncomputable section

/-- A144078: a(n) = the number of digits in the binary representation of n that differ from the corresponding digit in the binary reversal of n. (I.e., a(n) = number of 1's in n XOR A030101(n).)

Offset 1, canonical program `A144078.P3429487061898362831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144078 (n : ℕ) : ℤ :=
  A144078.P3429487061898362831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144477.P14831174345250397113

`A037888(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A144477.P14831174345250397113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A144477.P14831174345250397113

noncomputable section

/-- A144477: a(n) = minimal number of 0's that must be changed to 1's in the binary expansion of the n-th prime in order to make it into a palindrome.

Offset 1, canonical program `A144477.P14831174345250397113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A144477 (n : ℕ) : ℤ :=
  A144477.P14831174345250397113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A144477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147718.P16689878087894079709

`record[A010051(A027861(n+1)+1)*A027862(n+1)]`
-/

namespace A147718.P16689878087894079709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A027861 (n + 1) + 1).toNat * A027862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P16689878087894079709

noncomputable section

/-- A147718: Primes of the form prime(x)^2 + (prime(x) - 1)^2.

Offset 1, canonical program `A147718.P16689878087894079709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 812 terms. -/
def A147718 (n : ℕ) : ℤ :=
  A147718.P16689878087894079709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 812 terms. -/
def A147718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151757.P16989372218347473348

`(A014311(n+1)+A000079(A056558(n)))/2`
-/

namespace A151757.P16989372218347473348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014311 (n + 1) + A000079 (A056558 n).toNat : ℚ) / 2

end

end A151757.P16989372218347473348

noncomputable section

/-- A151757: Positive integers n, excluding 1 and 2^i+1 for all i, having wt <= 3.

Offset 1, canonical program `A151757.P16989372218347473348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151757 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151757.P16989372218347473348.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152854.P5074765278471973526

`∪[A153086(n+1), A153238(n+1)]`
-/

namespace A152854.P5074765278471973526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152854.P5074765278471973526

noncomputable section

/-- A152854: Numbers n such that either 2n+3 is not prime or 4n+7 is not prime.

Offset 1, canonical program `A152854.P5074765278471973526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152854 (n : ℕ) : ℤ :=
  (A152854.P5074765278471973526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153041.P433349409674986607

`A153051(1+n)+1`
-/

namespace A153041.P433349409674986607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153051 (1 + n) + 1

end

end A153041.P433349409674986607

noncomputable section

/-- A153041: Numbers n >=10 such that 2*n-19 is not a prime.

Offset 1, canonical program `A153041.P433349409674986607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153041 (n : ℕ) : ℤ :=
  A153041.P433349409674986607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153193.P2844732109781554609

`A063647(n+1)+A048691(n+1)*A146564(n+2)`
-/

namespace A153193.P2844732109781554609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) + A048691 (n + 1) * A146564 (n + 2)

end

end A153193.P2844732109781554609

noncomputable section

/-- A153193: a(n) is the number of integers of the form n*(n+1)*k / (k - n*(n+1)) where k is an integer >= 1.

Offset 1, canonical program `A153193.P2844732109781554609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153193 (n : ℕ) : ℤ :=
  A153193.P2844732109781554609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153196.P3857920893069032471

`∩[A059325(n+1), A153218(n+1)]`
-/

namespace A153196.P3857920893069032471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153196.P3857920893069032471

noncomputable section

/-- A153196: Numbers k such that 6*k+5 and 6*k+7 are twin primes.

Offset 1, canonical program `A153196.P3857920893069032471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A153196 (n : ℕ) : ℤ :=
  (A153196.P3857920893069032471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A153196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153207.P8862744067160107778

`p?[2*A039787(n+1)-1]`
-/

namespace A153207.P8862744067160107778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039787 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153207.P8862744067160107778

noncomputable section

/-- A153207: Primes of the form 2*p-1 where p is prime and p-1 is squarefree.

Offset 1, canonical program `A153207.P8862744067160107778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. -/
def A153207 (n : ℕ) : ℤ :=
  A153207.P8862744067160107778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. -/
def A153207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154314.P5025358904430600657

`∪[A023745(n+1), A031948(n+1)]`
-/

namespace A154314.P5025358904430600657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154314.P5025358904430600657

noncomputable section

/-- A154314: Numbers with not more than two distinct digits in ternary representation.

Offset 1, canonical program `A154314.P5025358904430600657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154314 (n : ℕ) : ℤ :=
  (A154314.P5025358904430600657.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154405.P12804035702119283874

`A079273(A155133(n+1)+1)`
-/

namespace A154405.P12804035702119283874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079273 (A155133 (n + 1) + 1).toNat

end

end A154405.P12804035702119283874

noncomputable section

/-- A154405: Primes of the form 20n^2+8n+1.

Offset 1, canonical program `A154405.P12804035702119283874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A154405 (n : ℕ) : ℤ :=
  A154405.P12804035702119283874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A154405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154778.P14853017560092768042

`lt[1, A111949(n+1)]+1`
-/

namespace A154778.P14853017560092768042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A154778.P14853017560092768042

noncomputable section

/-- A154778: Numbers of the form a^2 + 5b^2 with positive integers a,b.

Offset 1, canonical program `A154778.P14853017560092768042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1905 terms. -/
def A154778 (n : ℕ) : ℤ :=
  (A154778.P14853017560092768042.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1905 terms. -/
def A154778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157346.P9858211536238811526

`∩[A007304(n+1), A156541(n+1)]`
-/

namespace A157346.P9858211536238811526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157346.P9858211536238811526

noncomputable section

/-- A157346: Products of 3 distinct Sophie Germain primes.

Offset 1, canonical program `A157346.P9858211536238811526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 807 terms. -/
def A157346 (n : ℕ) : ℤ :=
  (A157346.P9858211536238811526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 807 terms. -/
def A157346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157807.P1767010887328603501

`A092543(A166527(n+1))`
-/

namespace A157807.P1767010887328603501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (A166527 (n + 1)).toNat

end

end A157807.P1767010887328603501

noncomputable section

/-- A157807: Numerators of fractions arranged in "antidiagonal boustrophedon" ordering with equivalent fractions removed: (1/1, 2/1, 1/2, 1/3, 3/1, 4/1, 3/2, 2/3, 1/4, 1/5, 5/1, 6/1, 5/2, ...).

Offset 1, canonical program `A157807.P1767010887328603501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6155 terms. -/
def A157807 (n : ℕ) : ℤ :=
  A157807.P1767010887328603501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6155 terms. -/
def A157807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158294.P15557251001047675323

`A158299(A020486(n+1))`
-/

namespace A158294.P15557251001047675323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158299 (A020486 (n + 1)).toNat

end

end A158294.P15557251001047675323

noncomputable section

/-- A158294: Averages of squares of divisors of numbers in A020486 (i.e., numbers m with property that average of squares of divisors is an integer: sigma_0(m) divides sigma_2(m)).

Offset 1, canonical program `A158294.P15557251001047675323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5955 terms. -/
def A158294 (n : ℕ) : ℤ :=
  A158294.P15557251001047675323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5955 terms. -/
def A158294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158526.P13730426443095740123

`p?[A027861(n+1)]`
-/

namespace A158526.P13730426443095740123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158526.P13730426443095740123

noncomputable section

/-- A158526: n and (1 + 2*n + 2*n^2) are primes.

Offset 1, canonical program `A158526.P13730426443095740123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 817 terms. -/
def A158526 (n : ℕ) : ℤ :=
  A158526.P13730426443095740123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 817 terms. -/
def A158526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158902.P4390019292788329709

`A158906(n+1)+A152770(A130296(n+1))`
-/

namespace A158902.P4390019292788329709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158906 (n + 1) + A152770 (A130296 (n + 1)).toNat

end

end A158902.P4390019292788329709

noncomputable section

/-- A158902: Triangle read by rows: the matrix product A051731 * A158821.

Offset 1, canonical program `A158902.P4390019292788329709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158902 (n : ℕ) : ℤ :=
  A158902.P4390019292788329709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161601.P12806282394382421226

`2*lt[n+1, A145342(n+1)]+1`
-/

namespace A161601.P12806282394382421226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A161601.P12806282394382421226

noncomputable section

/-- A161601: Positive integers k that are less than the value of the reversal of k's representation in binary.

Offset 1, canonical program `A161601.P12806282394382421226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5563 terms. -/
def A161601 (n : ℕ) : ℤ :=
  (A161601.P12806282394382421226.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5563 terms. -/
def A161601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161603.P6263326332748998363

`2*lt[A145342(n+1), n+1]+1`
-/

namespace A161603.P6263326332748998363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A161603.P6263326332748998363

noncomputable section

/-- A161603: Odd terms of sequence A161602.

Offset 1, canonical program `A161603.P6263326332748998363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4155 terms. -/
def A161603 (n : ℕ) : ℤ :=
  (A161603.P6263326332748998363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4155 terms. -/
def A161603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161689.P3754310940555733171

`∩[A151740(n+1), A166039(n+1)]`
-/

namespace A161689.P3754310940555733171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161689.P3754310940555733171

noncomputable section

/-- A161689: Intersection of A151740 and A151741.

Offset 1, canonical program `A161689.P3754310940555733171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161689 (n : ℕ) : ℤ :=
  (A161689.P3754310940555733171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162143.P2076456533087592741

`A007304(n+1)²`
-/

namespace A162143.P2076456533087592741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1) ^ 2

end

end A162143.P2076456533087592741

noncomputable section

/-- A162143: Numbers that are the squares of the product of three distinct primes.

Offset 1, canonical program `A162143.P2076456533087592741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162143 (n : ℕ) : ℤ :=
  A162143.P2076456533087592741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162144.P1786924221262426532

`A007304(n+1)^3`
-/

namespace A162144.P1786924221262426532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1) ^ 3

end

end A162144.P1786924221262426532

noncomputable section

/-- A162144: Products of cubes of 3 distinct primes.

Offset 1, canonical program `A162144.P1786924221262426532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162144 (n : ℕ) : ℤ :=
  A162144.P1786924221262426532.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162144.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162801.P8102485252760729664

`A058296(n+1)%Δ[n²]²`
-/

namespace A162801.P8102485252760729664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058296 (n + 1)) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A162801.P8102485252760729664

noncomputable section

/-- A162801: Bisection of A162800.

Offset 1, canonical program `A162801.P8102485252760729664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162801 (n : ℕ) : ℤ :=
  A162801.P8102485252760729664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163248.P10432575960891673536

`A008578(n+1)+A073169(n+1)`
-/

namespace A163248.P10432575960891673536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A073169 (n + 1)

end

end A163248.P10432575960891673536

noncomputable section

/-- A163248: Sum of the n-th composite number plus the number of composite numbers less than the n-th noncomposite number.

Offset 1, canonical program `A163248.P10432575960891673536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163248 (n : ℕ) : ℤ :=
  A163248.P10432575960891673536.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163511.P5635496813650871695

`A253563(A145342(n+1)-1)`
-/

namespace A163511.P5635496813650871695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A145342 (n + 1) - 1).toNat

end

end A163511.P5635496813650871695

noncomputable section

/-- A163511: a(0)=1. a(n) = p(A000120(n)) * Product_{m=1..A000120(n)} p(m)^A163510(n,m), where p(m) is the m-th prime.

Offset 0, canonical program `A163511.P5635496813650871695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A163511 (n : ℕ) : ℤ :=
  A163511.P5635496813650871695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A163511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165681.P2568694064747415589

`p?[A257772(n+1)+1]`
-/

namespace A165681.P2568694064747415589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257772 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165681.P2568694064747415589

noncomputable section

/-- A165681: Primes p such that 3*p*(p-1)+1 is not prime.

Offset 1, canonical program `A165681.P2568694064747415589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A165681 (n : ℕ) : ℤ :=
  A165681.P2568694064747415589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A165681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166061.P17363544562752125072

`∩[A008366(n+1), A160543(n+1)]`
-/

namespace A166061.P17363544562752125072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166061.P17363544562752125072

noncomputable section

/-- A166061: 19-rough numbers: positive integers that have no prime factors less than 19.

Offset 1, canonical program `A166061.P17363544562752125072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166061 (n : ℕ) : ℤ :=
  (A166061.P17363544562752125072.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166080.P16349895722489351659

`A001844(comp[A027861(n+1)])`
-/

namespace A166080.P16349895722489351659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A166080.P16349895722489351659

noncomputable section

/-- A166080: Nonprimes of the form (k^2+1)/2.

Offset 1, canonical program `A166080.P16349895722489351659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8355 terms. -/
def A166080 (n : ℕ) : ℤ :=
  A166080.P16349895722489351659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8355 terms. -/
def A166080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166535.P307768964407928215

`eq[A000007(n), A014082(A279645(n))]`
-/

namespace A166535.P307768964407928215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A279645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166535.P307768964407928215

noncomputable section

/-- A166535: Positive integers whose binary representation does not contain a run of more than three consecutive 0's or 1's.

Offset 1, canonical program `A166535.P307768964407928215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4432 terms. -/
def A166535 (n : ℕ) : ℤ :=
  (A166535.P307768964407928215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4432 terms. -/
def A166535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169700.P8168186238467961938

`Δ[A169699(n)]`
-/

namespace A169700.P8168186238467961938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169700.P8168186238467961938

noncomputable section

/-- A169700: First differences of A169699.

Offset 0, canonical program `A169700.P8168186238467961938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4663 terms. -/
def A169700 (n : ℕ) : ℤ :=
  A169700.P8168186238467961938.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4663 terms. -/
def A169700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175150.P4900912508559324144

`∑[A182394(abs(1-n)+2)]`
-/

namespace A175150.P4900912508559324144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175150.P4900912508559324144

noncomputable section

/-- A175150: a(1)=0. If d(n)>d(n-1), then a(n)=a(n-1)+1. If d(n)<d(n-1), then a(n)=a(n-1)-1. If d(n)=d(n-1), then a(n)=a(n-1). (d(n) is the number of divisors of n.)

Offset 1, canonical program `A175150.P4900912508559324144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175150 (n : ℕ) : ℤ :=
  A175150.P4900912508559324144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175297.P4708182559347836426

`and(n+1, A165789(n+1))`
-/

namespace A175297.P4708182559347836426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A165789 (n + 1))

end

end A175297.P4708182559347836426

noncomputable section

/-- A175297: Convert n to binary. AND each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

Offset 1, canonical program `A175297.P4708182559347836426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175297 (n : ℕ) : ℤ :=
  A175297.P4708182559347836426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175742.P6201411625689082385

`filter[A036457(n+1), A359473(#)]`
-/

namespace A175742.P6201411625689082385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175742.P6201411625689082385

noncomputable section

/-- A175742: Numbers with 32 divisors.

Offset 1, canonical program `A175742.P6201411625689082385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 914 terms. -/
def A175742 (n : ℕ) : ℤ :=
  A175742.P6201411625689082385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 914 terms. -/
def A175742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177895.P16336607388393552249

`A059995(n)+A010879(A056142(n))`
-/

namespace A177895.P16336607388393552249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + A010879 (A056142 n).toNat

end

end A177895.P16336607388393552249

noncomputable section

/-- A177895: Trace of the square matrix whose rows are the cyclic permutations of the digits of n.

Offset 0, canonical program `A177895.P16336607388393552249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A177895 (n : ℕ) : ℤ :=
  A177895.P16336607388393552249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A177895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177978.P5012801373125610272

`2*A051731(n+1)-A128185(n+1)`
-/

namespace A177978.P5012801373125610272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051731 (n + 1) - A128185 (n + 1)

end

end A177978.P5012801373125610272

noncomputable section

/-- A177978: Triangle T(n,k) read by rows: A051731(n,k) - A051731(n-1,k).

Offset 1, canonical program `A177978.P5012801373125610272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177978 (n : ℕ) : ℤ :=
  A177978.P5012801373125610272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178212.P12019520779398495313

`filter[A033992(n+1), A087049(#)]`
-/

namespace A178212.P12019520779398495313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A178212.P12019520779398495313

noncomputable section

/-- A178212: Nonsquarefree numbers divisible by exactly three distinct primes.

Offset 1, canonical program `A178212.P12019520779398495313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5054 terms. -/
def A178212 (n : ℕ) : ℤ :=
  A178212.P12019520779398495313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5054 terms. -/
def A178212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178226.P2137882765149959903

`1-A178225(n)`
-/

namespace A178226.P2137882765149959903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178225 n

end

end A178226.P2137882765149959903

noncomputable section

/-- A178226: Characteristic function of A154809 (numbers that are not binary palindromes).

Offset 0, canonical program `A178226.P2137882765149959903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178226 (n : ℕ) : ℤ :=
  A178226.P2137882765149959903.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178535.P7806652587592333356

`∑[A054525(n+1)]+A128189(n+1)-1`
-/

namespace A178535.P7806652587592333356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A128189 (n + 1) - 1)

end

end A178535.P7806652587592333356

noncomputable section

/-- A178535: Matrix inverse of A178534.

Offset 1, canonical program `A178535.P7806652587592333356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178535 (n : ℕ) : ℤ :=
  A178535.P7806652587592333356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179642.P1733193320111504691

`∩[A014614(n+1), A033992(n+1)]`
-/

namespace A179642.P1733193320111504691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179642.P1733193320111504691

noncomputable section

/-- A179642: Product of exactly 5 primes, 3 of which are distinct.

Offset 1, canonical program `A179642.P1733193320111504691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179642 (n : ℕ) : ℤ :=
  (A179642.P1733193320111504691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179652.P13750183402564225664

`A112559(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179652.P13750183402564225664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112559 (n + 1) : ℚ) / 3

end

end A179652.P13750183402564225664

noncomputable section

/-- A179652: (A175600(n)-5)/48 or A112559(n)/3.

Offset 1, canonical program `A179652.P13750183402564225664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179652 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A179652.P13750183402564225664.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181105.P15226075389363433991

`A054521(∑[A054523(n+1)])*A126988(n+1)`
-/

namespace A181105.P15226075389363433991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A126988 (n + 1)

end

end A181105.P15226075389363433991

noncomputable section

/-- A181105: Triangle T(n,k) read by rows. T(n,k)=abs(A181101)*n/k.

Offset 1, canonical program `A181105.P15226075389363433991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181105 (n : ℕ) : ℤ :=
  A181105.P15226075389363433991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182339.P2554287700400521995

`∪[A036554(n+1), A072587(n+1)]`
-/

namespace A182339.P2554287700400521995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182339.P2554287700400521995

noncomputable section

/-- A182339: List of positive integers whose prime tower factorization, as defined in comments, contains the prime 2.

Offset 1, canonical program `A182339.P2554287700400521995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182339 (n : ℕ) : ℤ :=
  (A182339.P2554287700400521995.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188077.P8196535750238244012

`∩[A188080(n+1)-1, A188080(n+1)]`
-/

namespace A188077.P8196535750238244012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188077.P8196535750238244012

noncomputable section

/-- A188077: Positions of 0 in A188076; complement of A188078.

Offset 1, canonical program `A188077.P8196535750238244012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5591 terms. -/
def A188077 (n : ℕ) : ℤ :=
  (A188077.P8196535750238244012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5591 terms. -/
def A188077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188322.P2194308858124452839

`record[n+1-A188321(n+1)-A188321(n+1)]`
-/

namespace A188322.P2194308858124452839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A188321 (n + 1) - A188321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188322.P2194308858124452839

noncomputable section

/-- A188322: Positions of 0 in A188321; complement of A188323.

Offset 1, canonical program `A188322.P2194308858124452839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4645 terms. -/
def A188322 (n : ℕ) : ℤ :=
  A188322.P2194308858124452839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4645 terms. -/
def A188322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188371.P14841229343104294779

`A188321(A188374(n+1)+n)`
-/

namespace A188371.P14841229343104294779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 (A188374 (n + 1) + (n : ℤ)).toNat

end

end A188371.P14841229343104294779

noncomputable section

/-- A188371: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=6, [ ]=floor.

Offset 1, canonical program `A188371.P14841229343104294779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188371 (n : ℕ) : ℤ :=
  A188371.P14841229343104294779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189759.P4122270853334670100

`filter[A007304(1+n), A341995(#)]`
-/

namespace A189759.P4122270853334670100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P4122270853334670100

noncomputable section

/-- A189759: Numbers pqr such that pq + pr + qr is prime, where p, q, and r are primes.

Offset 1, canonical program `A189759.P4122270853334670100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189759 (n : ℕ) : ℤ :=
  A189759.P4122270853334670100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189986.P2460908165640344182

`filter[A385350(n+2), A373978(#)]`
-/

namespace A189986.P2460908165640344182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A189986.P2460908165640344182

noncomputable section

/-- A189986: Numbers of the form 4k+1 having exactly 4 divisors.

Offset 1, canonical program `A189986.P2460908165640344182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A189986 (n : ℕ) : ℤ :=
  A189986.P2460908165640344182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A189986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193800.P17352765723987985871

`(A379705(n+1)-(n+1))/2`
-/

namespace A193800.P17352765723987985871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379705 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A193800.P17352765723987985871

noncomputable section

/-- A193800: Least m > 0 such that (n+m)^2 - m^2 (= n^2 + 2*m*n) is a square.

Offset 1, canonical program `A193800.P17352765723987985871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A193800 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A193800.P17352765723987985871.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A193800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195063.P6179075839367825980

`2*lt[A175918(2*n), A175298(2*n)]`
-/

namespace A195063.P6179075839367825980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175918 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195063.P6179075839367825980

noncomputable section

/-- A195063: Numbers n such that BCR(n) is less than n, where BCR = binary-complement-and-reverse = A036044.

Offset 1, canonical program `A195063.P6179075839367825980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A195063 (n : ℕ) : ℤ :=
  (A195063.P6179075839367825980.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A195063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204906.P7021400860210866951

`A204898(A080036(n+1))`
-/

namespace A204906.P7021400860210866951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (A080036 (n + 1)).toNat

end

end A204906.P7021400860210866951

noncomputable section

/-- A204906: Ordered differences of primes >=5.

Offset 1, canonical program `A204906.P7021400860210866951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A204906 (n : ℕ) : ℤ :=
  A204906.P7021400860210866951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A204906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206915.P6576328931929585577

`∑[A178225(n)]`
-/

namespace A206915.P6576328931929585577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206915.P6576328931929585577

noncomputable section

/-- A206915: The index (in A006995) of the greatest binary palindrome <= n; also the 'lower inverse' of A006995.

Offset 0, canonical program `A206915.P6576328931929585577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206915 (n : ℕ) : ℤ :=
  A206915.P6576328931929585577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208905.P7530017606286972436

`(A060510(n)+1)*A208520(n+1)`
-/

namespace A208905.P7530017606286972436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060510 n + 1) * A208520 (n + 1)

end

end A208905.P7530017606286972436

noncomputable section

/-- A208905: Triangle of coefficients of polynomials u(n,x) jointly generated with A208906; see the Formula section.

Offset 1, canonical program `A208905.P7530017606286972436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208905 (n : ℕ) : ℤ :=
  A208905.P7530017606286972436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209613.P17854172900491838855

`A209615(n+1)*A260109(A025480(n))`
-/

namespace A209613.P17854172900491838855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1) * A260109 (A025480 n).toNat

end

end A209613.P17854172900491838855

noncomputable section

/-- A209613: Expansion of q * phi(-q^2)^2 * psi(q^3) * psi(-q^3)^2 / psi(q) in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A209613.P17854172900491838855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209613 (n : ℕ) : ℤ :=
  A209613.P17854172900491838855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001983.P13824621778224513815

`∪[(n+1)², A004431(n+1)]`
-/

namespace A001983.P13824621778224513815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001983.P13824621778224513815

noncomputable section

/-- A001983: Numbers that are the sum of 2 distinct squares: of form x^2 + y^2 with 0 <= x < y.

Offset 1, canonical program `A001983.P13824621778224513815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001983 (n : ℕ) : ℤ :=
  (A001983.P13824621778224513815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008367.P17016500990834177546

`∩[A008366(n+1), A038511(n+1)]`
-/

namespace A008367.P17016500990834177546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P17016500990834177546

noncomputable section

/-- A008367: Composite but smallest prime factor >= 17.

Offset 1, canonical program `A008367.P17016500990834177546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4675 terms. -/
def A008367 (n : ℕ) : ℤ :=
  (A008367.P17016500990834177546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4675 terms. -/
def A008367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011713.P6388134661411468102

`A011710(A008589(n)+19)`
-/

namespace A011713.P6388134661411468102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011710 (A008589 n + 19).toNat

end

end A011713.P6388134661411468102

noncomputable section

/-- A011713: A binary m-sequence: expansion of reciprocal of x^8+x^6+x^5+x+1.

Offset 0, canonical program `A011713.P6388134661411468102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1426 terms. -/
def A011713 (n : ℕ) : ℤ :=
  A011713.P6388134661411468102.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1426 terms. -/
def A011713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012132.P13113475380317075671

`comp[A027861(n+1)-1]+1`
-/

namespace A012132.P13113475380317075671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A012132.P13113475380317075671

noncomputable section

/-- A012132: Numbers z such that x*(x+1) + y*(y+1) = z*(z+1) is solvable in positive integers x,y.

Offset 1, canonical program `A012132.P13113475380317075671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A012132 (n : ℕ) : ℤ :=
  (A012132.P13113475380317075671.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A012132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023624.P12763826658579661083

`2*A023656(n+1)-A023614(n)`
-/

namespace A023624.P12763826658579661083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023656 (n + 1) - A023614 n

end

end A023624.P12763826658579661083

noncomputable section

/-- A023624: Convolution of Lucas numbers and A014306.

Offset 1, canonical program `A023624.P12763826658579661083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023624 (n : ℕ) : ℤ :=
  A023624.P12763826658579661083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024376.P4795293864940716262

`A024693(n+1)+A024695(n+1)-A024327(n+1)`
-/

namespace A024376.P4795293864940716262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024693 (n + 1) + (A024695 (n + 1) - A024327 (n + 1))

end

end A024376.P4795293864940716262

noncomputable section

/-- A024376: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A023532, t = A014306.

Offset 1, canonical program `A024376.P4795293864940716262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024376 (n : ℕ) : ℤ :=
  A024376.P4795293864940716262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025537.P9038839557550078877

`A048671(n+1)+a(n-1)*A014963(n)` with `a(0)=1`
-/

namespace A025537.P9038839557550078877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048671 (n + 1) + a (n - 1) * A014963 n

end

end A025537.P9038839557550078877

noncomputable section

/-- A025537: a(n) = (1/s(1) + 1/s(2) + ... + 1/s(n+1)) * LCM{1, 2, ..., n}, where s(k) = LCM{1,2,...,k}/k = A002944(k).

Offset 0, canonical program `A025537.P9038839557550078877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A025537 (n : ℕ) : ℤ :=
  A025537.P9038839557550078877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A025537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026034.P10503130599749257734

`A001405(n)-A037958(n)`
-/

namespace A026034.P10503130599749257734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A037958 n

end

end A026034.P10503130599749257734

noncomputable section

/-- A026034: a(n) = A026022(n,floor(n/2)).

Offset 0, canonical program `A026034.P10503130599749257734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A026034 (n : ℕ) : ℤ :=
  A026034.P10503130599749257734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A026034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027449.P7596124845904246112

`A002944(n+2)+A002944(n+1)*A014963(n+2)`
-/

namespace A027449.P7596124845904246112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 2) + A002944 (n + 1) * A014963 (n + 2)

end

end A027449.P7596124845904246112

noncomputable section

/-- A027449: Second diagonal of A027446.

Offset 2, canonical program `A027449.P7596124845904246112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A027449 (n : ℕ) : ℤ :=
  A027449.P7596124845904246112.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A027449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028284.P7098314447050730030

`2*A028271(n)-A014413(n+1)`
-/

namespace A028284.P7098314447050730030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028271 n - A014413 (n + 1)

end

end A028284.P7098314447050730030

noncomputable section

/-- A028284: Elements to right of central elements in 4-Pascal triangle A028275.

Offset 0, canonical program `A028284.P7098314447050730030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028284 (n : ℕ) : ℤ :=
  A028284.P7098314447050730030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029126.P854497210763489086

`A029235(abs(1-n))+A029235(n)`
-/

namespace A029126.P854497210763489086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029235 |1 - (n : ℤ)|.toNat + A029235 n

end

end A029126.P854497210763489086

noncomputable section

/-- A029126: Expansion of 1/((1-x)(1-x^7)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029126.P854497210763489086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029126 (n : ℕ) : ℤ :=
  A029126.P854497210763489086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029134.P1779727754259986526

`∑[A025925(n)]`
-/

namespace A029134.P1779727754259986526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029134.P1779727754259986526

noncomputable section

/-- A029134: Expansion of 1/((1-x)(1-x^9)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029134.P1779727754259986526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029134 (n : ℕ) : ℤ :=
  A029134.P1779727754259986526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029324.P10071969728101027486

`A025925(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029324.P10071969728101027486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025925 n + a (n - 3)

end

end A029324.P10071969728101027486

noncomputable section

/-- A029324: Expansion of 1/((1-x^3)*(1-x^9)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029324.P10071969728101027486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029324 (n : ℕ) : ℤ :=
  A029324.P10071969728101027486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029366.P2484932440147699760

`A029233(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029366.P2484932440147699760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029233 n - a (n - 2)

end

end A029366.P2484932440147699760

noncomputable section

/-- A029366: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029366.P2484932440147699760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029366 (n : ℕ) : ℤ :=
  A029366.P2484932440147699760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029377.P9082731251158770194

`A029244(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029377.P9082731251158770194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029244 n - a (n - 2)

end

end A029377.P9082731251158770194

noncomputable section

/-- A029377: Expansion of 1/((1-x^4)*(1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029377.P9082731251158770194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029377 (n : ℕ) : ℤ :=
  A029377.P9082731251158770194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029444.P3494668632536997832

`A025925(n)+A029057(n)-A029059(n)`
-/

namespace A029444.P3494668632536997832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n + (A029057 n - A029059 n)

end

end A029444.P3494668632536997832

noncomputable section

/-- A029444: Expansion of 1/((1-x^8)(1-x^9)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029444.P3494668632536997832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029444 (n : ℕ) : ℤ :=
  A029444.P3494668632536997832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029666.P12567084913895410295

`A029632(n)-A014413(n+1)`
-/

namespace A029666.P12567084913895410295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029632 n - A014413 (n + 1)

end

end A029666.P12567084913895410295

noncomputable section

/-- A029666: Numbers to the right of the central elements of the (2,1)-Pascal triangle A029653.

Offset 0, canonical program `A029666.P12567084913895410295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029666 (n : ℕ) : ℤ :=
  A029666.P12567084913895410295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031931.P16517579187730330433

`p?[A072573(n+1)+6]`
-/

namespace A031931.P16517579187730330433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072573 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031931.P16517579187730330433

noncomputable section

/-- A031931: Upper prime of a difference of 12 between consecutive primes.

Offset 1, canonical program `A031931.P16517579187730330433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6846 terms. -/
def A031931 (n : ℕ) : ℤ :=
  A031931.P16517579187730330433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6846 terms. -/
def A031931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033548.P3085097535061214025

`A000040(A033549(n+1))`
-/

namespace A033548.P3085097535061214025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A033549 (n + 1)).toNat

end

end A033548.P3085097535061214025

noncomputable section

/-- A033548: Honaker primes: primes P(k) such that sum of digits of P(k) equals sum of digits of k.

Offset 1, canonical program `A033548.P3085097535061214025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033548 (n : ℕ) : ℤ :=
  A033548.P3085097535061214025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034054.P15306153571953073182

`A199985(n+1)+A199985(n+1)-A034050(n+1)`
-/

namespace A034054.P15306153571953073182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199985 (n + 1) + (A199985 (n + 1) - A034050 (n + 1))

end

end A034054.P15306153571953073182

noncomputable section

/-- A034054: Numbers with multiplicative digital root value 7.

Offset 1, canonical program `A034054.P15306153571953073182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A034054 (n : ℕ) : ℤ :=
  A034054.P15306153571953073182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A034054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034957.P9145438828403421056

`A034956(n+1)-A000040(n+1)`
-/

namespace A034957.P9145438828403421056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - A000040 (n + 1)

end

end A034957.P9145438828403421056

noncomputable section

/-- A034957: Divide natural numbers in groups with prime(n) elements and add together.

Offset 1, canonical program `A034957.P9145438828403421056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034957 (n : ℕ) : ℤ :=
  A034957.P9145438828403421056.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035165.P18414371456217248996

`Δ[A005187(n)]*A053694(n)`
-/

namespace A035165.P18414371456217248996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053694 n

end

end A035165.P18414371456217248996

noncomputable section

/-- A035165: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -25.

Offset 1, canonical program `A035165.P18414371456217248996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035165 (n : ℕ) : ℤ :=
  A035165.P18414371456217248996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037129.P8703308658167490187

`A037128(n)/2`
-/

namespace A037129.P8703308658167490187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037128 n : ℚ) / 2

end

end A037129.P8703308658167490187

noncomputable section

/-- A037129: (nextprime(3^n)-nextprime(2^n))/2.

Offset 0, canonical program `A037129.P8703308658167490187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037128, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037129 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A037129.P8703308658167490187.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037128, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A039219.P17376334954191600038

`A329624(n+1)+A076314(A056142(n))`
-/

namespace A039219.P17376334954191600038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329624 (n + 1) + A076314 (A056142 n).toNat

end

end A039219.P17376334954191600038

noncomputable section

/-- A039219: Numbers whose base-12 representation has the same number of 0's and 10's.

Offset 1, canonical program `A039219.P17376334954191600038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A039219 (n : ℕ) : ℤ :=
  A039219.P17376334954191600038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A039219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039396.P9347899248425865174

`∩[A011534(n+1), A039115(n+1)]`
-/

namespace A039396.P9347899248425865174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039396.P9347899248425865174

noncomputable section

/-- A039396: Numbers whose base-10 representation has the same nonzero number of 0's and 4's.

Offset 1, canonical program `A039396.P9347899248425865174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. -/
def A039396 (n : ℕ) : ℤ :=
  (A039396.P9347899248425865174.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. -/
def A039396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039404.P11291830641019790842

`∩[A011534(n+1), A039122(n+1)]`
-/

namespace A039404.P11291830641019790842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039404.P11291830641019790842

noncomputable section

/-- A039404: Numbers whose base-10 representation has the same nonzero number of 1's and 4's.

Offset 1, canonical program `A039404.P11291830641019790842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3542 terms. -/
def A039404 (n : ℕ) : ℤ :=
  (A039404.P11291830641019790842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3542 terms. -/
def A039404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039411.P1190184811517337393

`∩[A011534(n+1), A039129(n+1)]`
-/

namespace A039411.P1190184811517337393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039411.P1190184811517337393

noncomputable section

/-- A039411: Numbers whose base-10 representation has the same nonzero number of 2's and 4's.

Offset 1, canonical program `A039411.P1190184811517337393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039411 (n : ℕ) : ℤ :=
  (A039411.P1190184811517337393.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039417.P5176249558024436737

`∩[A011534(n+1), A039135(n+1)]`
-/

namespace A039417.P5176249558024436737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039417.P5176249558024436737

noncomputable section

/-- A039417: Numbers whose base-10 representation has the same nonzero number of 3's and 4's.

Offset 1, canonical program `A039417.P5176249558024436737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1588 terms. -/
def A039417 (n : ℕ) : ℤ :=
  (A039417.P5176249558024436737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1588 terms. -/
def A039417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039424.P9537314864739578220

`∩[A011534(n+1), A039142(n+1)]`
-/

namespace A039424.P9537314864739578220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039424.P9537314864739578220

noncomputable section

/-- A039424: Numbers whose base-10 representation has the same nonzero number of 4's and 6's.

Offset 1, canonical program `A039424.P9537314864739578220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039424 (n : ℕ) : ℤ :=
  (A039424.P9537314864739578220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039426.P12047223122600376495

`∩[A011534(n+1), A039144(n+1)]`
-/

namespace A039426.P12047223122600376495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039426.P12047223122600376495

noncomputable section

/-- A039426: Numbers whose base-10 representation has the same nonzero number of 4's and 8's.

Offset 1, canonical program `A039426.P12047223122600376495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039426 (n : ℕ) : ℤ :=
  (A039426.P12047223122600376495.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039427.P17652112715132831845

`∩[A011534(n+1), A039145(n+1)]`
-/

namespace A039427.P17652112715132831845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039427.P17652112715132831845

noncomputable section

/-- A039427: Numbers whose base-10 representation has the same nonzero number of 4's and 9's.

Offset 1, canonical program `A039427.P17652112715132831845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A039427 (n : ℕ) : ℤ :=
  (A039427.P17652112715132831845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A039427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039732.P11246992434539566219

`A039731(n+3)/2`
-/

namespace A039732.P11246992434539566219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039731 (n + 3) : ℚ) / 2

end

end A039732.P11246992434539566219

noncomputable section

/-- A039732: a(n) = s(n+1)/2, s=A039731.

Offset 1, canonical program `A039732.P11246992434539566219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A039732 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A039732.P11246992434539566219.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A039732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043583.P1368657139384558028

`eq[3, A043555(n)]`
-/

namespace A043583.P1368657139384558028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043583.P1368657139384558028

noncomputable section

/-- A043583: Numbers whose base-3 representation has exactly 3 runs.

Offset 1, canonical program `A043583.P1368657139384558028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A043583 (n : ℕ) : ℤ :=
  (A043583.P1368657139384558028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A043583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043585.P4061843327585154574

`eq[5, A043555(n)]`
-/

namespace A043585.P4061843327585154574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043585.P4061843327585154574

noncomputable section

/-- A043585: Numbers whose base-3 representation has exactly 5 runs.

Offset 1, canonical program `A043585.P4061843327585154574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A043585 (n : ℕ) : ℤ :=
  (A043585.P4061843327585154574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A043585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043586.P5537003362996281712

`eq[6, A043555(n)]`
-/

namespace A043586.P5537003362996281712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043586.P5537003362996281712

noncomputable section

/-- A043586: Numbers whose base-3 representation has exactly 6 runs.

Offset 1, canonical program `A043586.P5537003362996281712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A043586 (n : ℕ) : ℤ :=
  (A043586.P5537003362996281712.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A043586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043596.P12586235919778848023

`∩[A043707(n+1), A043827(n+1)]`
-/

namespace A043596.P12586235919778848023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043596.P12586235919778848023

noncomputable section

/-- A043596: Numbers whose base-4 representation has exactly 5 runs.

Offset 1, canonical program `A043596.P12586235919778848023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5576 terms. -/
def A043596 (n : ℕ) : ℤ :=
  (A043596.P12586235919778848023.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5576 terms. -/
def A043596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043692.P17592614218210467069

`eq[0, A043555(n)%2]`
-/

namespace A043692.P17592614218210467069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043692.P17592614218210467069

noncomputable section

/-- A043692: Numbers whose base-3 representation has an even number of runs.

Offset 1, canonical program `A043692.P17592614218210467069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. -/
def A043692 (n : ℕ) : ℤ :=
  (A043692.P17592614218210467069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. -/
def A043692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043693.P7379076002012635532

`∪[A043828(n+1), A043830(n+1)]`
-/

namespace A043693.P7379076002012635532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043693.P7379076002012635532

noncomputable section

/-- A043693: Numbers whose base-4 representation has an even number of runs.

Offset 1, canonical program `A043693.P7379076002012635532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043693 (n : ℕ) : ℤ :=
  (A043693.P7379076002012635532.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043706.P18140700825686672469

`lt[n*val(A043555(n), 2), n]`
-/

namespace A043706.P18140700825686672469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A043555 n).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043706.P18140700825686672469

noncomputable section

/-- A043706: Numbers whose base-3 representation has an odd number of runs.

Offset 1, canonical program `A043706.P18140700825686672469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A043706 (n : ℕ) : ℤ :=
  (A043706.P18140700825686672469.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A043706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043773.P18176166651553098273

`eq[0, A043555(n)%3]`
-/

namespace A043773.P18176166651553098273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043773.P18176166651553098273

noncomputable section

/-- A043773: Numbers k such that number of runs in the base 3 representation of k is congruent to 0 mod 3.

Offset 1, canonical program `A043773.P18176166651553098273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A043773 (n : ℕ) : ℤ :=
  (A043773.P18176166651553098273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A043773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043774.P4061681262663181299

`eq[1, A043555(n+1)%3]+1`
-/

namespace A043774.P4061681262663181299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043774.P4061681262663181299

noncomputable section

/-- A043774: Numbers n such that number of runs in the base 3 representation of n is congruent to 1 mod 3.

Offset 1, canonical program `A043774.P4061681262663181299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6642 terms. -/
def A043774 (n : ℕ) : ℤ :=
  (A043774.P4061681262663181299.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6642 terms. -/
def A043774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043775.P3431966158011080836

`eq[2, A043555(n)%3]`
-/

namespace A043775.P3431966158011080836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043775.P3431966158011080836

noncomputable section

/-- A043775: Numbers n such that number of runs in base 3 representation of n is congruent to 2 mod 3.

Offset 1, canonical program `A043775.P3431966158011080836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6480 terms. -/
def A043775 (n : ℕ) : ℤ :=
  (A043775.P3431966158011080836.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6480 terms. -/
def A043775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043776.P144968170380702350

`lt[1, val(A043555(n), 2)]`
-/

namespace A043776.P144968170380702350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043555 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043776.P144968170380702350

noncomputable section

/-- A043776: Numbers k such that number of runs in the base 3 representation of k is congruent to 0 mod 4.

Offset 1, canonical program `A043776.P144968170380702350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4320 terms. -/
def A043776 (n : ℕ) : ℤ :=
  (A043776.P144968170380702350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4320 terms. -/
def A043776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043778.P6531332179290542824

`eq[1, val(A043555(n), 2)]`
-/

namespace A043778.P6531332179290542824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043555 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043778.P6531332179290542824

noncomputable section

/-- A043778: Numbers n such that number of runs in base 3 representation of n is congruent to 2 mod 4.

Offset 1, canonical program `A043778.P6531332179290542824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5520 terms. -/
def A043778 (n : ℕ) : ℤ :=
  (A043778.P6531332179290542824.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5520 terms. -/
def A043778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043779.P16040712307582937087

`eq[3, A043555(n)%4]`
-/

namespace A043779.P16040712307582937087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043555 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043779.P16040712307582937087

noncomputable section

/-- A043779: Numbers k such that number of runs in the base 3 representation of k is congruent to 3 mod 4.

Offset 1, canonical program `A043779.P16040712307582937087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5280 terms. -/
def A043779 (n : ℕ) : ℤ :=
  (A043779.P16040712307582937087.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5280 terms. -/
def A043779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045081.P14565639828916206553

`(A045057(n+1)+A045033(n+1))/3`
-/

namespace A045081.P14565639828916206553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045057 (n + 1) + A045033 (n + 1) : ℚ) / 3

end

end A045081.P14565639828916206553

noncomputable section

/-- A045081: Numbers whose base-4 representation contains exactly four 0's and no 3's.

Offset 1, canonical program `A045081.P14565639828916206553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045081 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045081.P14565639828916206553.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045197.P10372690677097138885

`∩[A023735(n+1), A039285(n+1)]`
-/

namespace A045197.P10372690677097138885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045197.P10372690677097138885

noncomputable section

/-- A045197: Numbers whose base-5 representation contains exactly two 0's and two 3's.

Offset 1, canonical program `A045197.P10372690677097138885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1989 terms. -/
def A045197 (n : ℕ) : ℤ :=
  (A045197.P10372690677097138885.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1989 terms. -/
def A045197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049094.P18112774684826038960

`comp[A049093(n+1)-1]+1`
-/

namespace A049094.P18112774684826038960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A049094.P18112774684826038960

noncomputable section

/-- A049094: Numbers m such that 2^m - 1 is divisible by a square > 1.

Offset 1, canonical program `A049094.P18112774684826038960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A049094 (n : ℕ) : ℤ :=
  (A049094.P18112774684826038960.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A049094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049501.P2511382539437314283

`A049502(A145341(n+1))`
-/

namespace A049501.P2511382539437314283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A145341 (n + 1)).toNat

end

end A049501.P2511382539437314283

noncomputable section

/-- A049501: Major index of n, first definition.

Offset 0, canonical program `A049501.P2511382539437314283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A049501 (n : ℕ) : ℤ :=
  A049501.P2511382539437314283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A049501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049646.P16318745313949960329

`∪[A049648(n), A049691(n)]`
-/

namespace A049646.P16318745313949960329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049646.P16318745313949960329

noncomputable section

/-- A049646: a(n) = T(n,n+1), array T given by A049639.

Offset 0, canonical program `A049646.P16318745313949960329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A049646 (n : ℕ) : ℤ :=
  (A049646.P16318745313949960329.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A049646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049647.P9788054326573138071

`A049648(floor(n/2))`
-/

namespace A049647.P9788054326573138071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049648 ⌊(n : ℚ) / 2⌋.toNat

end

end A049647.P9788054326573138071

noncomputable section

/-- A049647: a(n) = T(n,n+2), array T given by A049639.

Offset 0, canonical program `A049647.P9788054326573138071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 535 terms. -/
def A049647 (n : ℕ) : ℤ :=
  A049647.P9788054326573138071.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 535 terms. -/
def A049647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050703.P11636492065280123511

`eq[1, A319713(A001414(n+1)+n+1)]+1`
-/

namespace A050703.P11636492065280123511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319713 (A001414 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050703.P11636492065280123511

noncomputable section

/-- A050703: Numbers that when added to the sum of their prime factors (with multiplicity) become prime.

Offset 1, canonical program `A050703.P11636492065280123511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. -/
def A050703 (n : ℕ) : ℤ :=
  (A050703.P11636492065280123511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. -/
def A050703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050875.P12568345992198848513

`eq[1, A001316(A175920(n))/A040002(n)^3]`
-/

namespace A050875.P12568345992198848513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A175920 n).toNat : ℚ) / (A040002 n ^ 3 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A050875.P12568345992198848513

noncomputable section

/-- A050875: Binary numbers d(1)...d(j) such that d(i) != d(j+1-i) for all but 6 values of i.

Offset 1, canonical program `A050875.P12568345992198848513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3076 terms. -/
def A050875 (n : ℕ) : ℤ :=
  (A050875.P12568345992198848513.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3076 terms. -/
def A050875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051245.P6180974543807549376

`eq[A001316(A175920(n)), A040002(n)]`
-/

namespace A051245.P6180974543807549376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A175920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051245.P6180974543807549376

noncomputable section

/-- A051245: Binary numbers d(1)...d(j) such that d(i) != d(j+1-i) for all but two values of i.

Offset 1, canonical program `A051245.P6180974543807549376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A051245 (n : ℕ) : ℤ :=
  (A051245.P6180974543807549376.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A051245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051246.P4317919909643210972

`eq[A001316(A175920(n)), A040056(n)]`
-/

namespace A051246.P4317919909643210972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A175920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051246.P4317919909643210972

noncomputable section

/-- A051246: Binary numbers d(1)...d(j) such that d(i) != d(j+1-i) for all but 4 values of i.

Offset 1, canonical program `A051246.P4317919909643210972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2046 terms. -/
def A051246 (n : ℕ) : ℤ :=
  (A051246.P4317919909643210972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2046 terms. -/
def A051246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051417.P3671986154783513248

`A014963(2*(n+1)+1)`
-/

namespace A051417.P3671986154783513248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1) + 1)

end

end A051417.P3671986154783513248

noncomputable section

/-- A051417: Quotients of consecutive values of lcm {1, 3, 5 ..., 2n-1} or A025547(n+1)/A025547(n).

Offset 1, canonical program `A051417.P3671986154783513248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051417 (n : ℕ) : ℤ :=
  A051417.P3671986154783513248.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051426.P6036965153388310887

`a(n-1)*A014963(n+1)` with `a(0)=2`
-/

namespace A051426.P6036965153388310887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A014963 (n + 1)

end

end A051426.P6036965153388310887

noncomputable section

/-- A051426: Least common multiple of {2, 4, 6, ..., 2n}.

Offset 1, canonical program `A051426.P6036965153388310887`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051426 (n : ℕ) : ℤ :=
  A051426.P6036965153388310887.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051426.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051430.P2184556223164140927

`A051429(lt[A051429(n), A051468(n)+1])`
-/

namespace A051430.P2184556223164140927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051430.P2184556223164140927

noncomputable section

/-- A051430: (Terms in A029661)/2.

Offset 0, canonical program `A051430.P2184556223164140927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5031 terms. -/
def A051430 (n : ℕ) : ℤ :=
  A051430.P2184556223164140927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5031 terms. -/
def A051430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053234.P7667700755088220482

`A053232(eq[1, A053231(n+1)]+1)`
-/

namespace A053234.P7667700755088220482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A053234.P7667700755088220482

noncomputable section

/-- A053234: Numbers k such that A053230(k) = 1.

Offset 1, canonical program `A053234.P7667700755088220482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6369 terms. -/
def A053234 (n : ℕ) : ℤ :=
  A053234.P7667700755088220482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6369 terms. -/
def A053234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053245.P5646553106277292429

`∩[A053242(n+1)-1, A053242(n+1)]`
-/

namespace A053245.P5646553106277292429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053242 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053245.P5646553106277292429

noncomputable section

/-- A053245: Numbers k such that both A053238(k) and A053238(k+1) = 1.

Offset 1, canonical program `A053245.P5646553106277292429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4276 terms. -/
def A053245 (n : ℕ) : ℤ :=
  (A053245.P5646553106277292429.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4276 terms. -/
def A053245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053339.P2634023277679372817

`∩[A046389(n+1), A050530(n+1)]`
-/

namespace A053339.P2634023277679372817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053339.P2634023277679372817

noncomputable section

/-- A053339: Squarefree terms of A050530 with 3 prime divisors.

Offset 1, canonical program `A053339.P2634023277679372817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. -/
def A053339 (n : ℕ) : ℤ :=
  (A053339.P2634023277679372817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. -/
def A053339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053589.P5239157909337366049

`(n+1)/A111701(n+1)`
-/

namespace A053589.P5239157909337366049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A111701 (n + 1) : ℚ)

end

end A053589.P5239157909337366049

noncomputable section

/-- A053589: Greatest primorial number (A002110) which divides n.

Offset 1, canonical program `A053589.P5239157909337366049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053589 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053589.P5239157909337366049.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053589.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053790.P15585571080039862448

`record[A007504(n+3)*A102863(n+3)]`
-/

namespace A053790.P15585571080039862448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 3) * A102863 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053790.P15585571080039862448

noncomputable section

/-- A053790: Composite numbers arising as sum of first k primes.

Offset 1, canonical program `A053790.P15585571080039862448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9407 terms. -/
def A053790 (n : ℕ) : ℤ :=
  A053790.P15585571080039862448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9407 terms. -/
def A053790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055407.P12747787059939045885

`A341403(n²)`
-/

namespace A055407.P12747787059939045885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341403 (n ^ 2)

end

end A055407.P12747787059939045885

noncomputable section

/-- A055407: Number of points in N^8 of norm <= n.

Offset 0, canonical program `A055407.P12747787059939045885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A055407 (n : ℕ) : ℤ :=
  A055407.P12747787059939045885.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A055407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056141.P7848227700936811261

`A056140(n+3)-A056139(n+3)`
-/

namespace A056141.P7848227700936811261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056140 (n + 3) - A056139 (n + 3)

end

end A056141.P7848227700936811261

noncomputable section

/-- A056141: a(n) = primefloor(n)*primeceiling(n) - previousprime(n)*nextprime(n).

Offset 3, canonical program `A056141.P7848227700936811261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056139, A056140, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056141 (n : ℕ) : ℤ :=
  A056141.P7848227700936811261.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056139, A056140, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056141.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056345.P4176786105810594381

`(A056491(n+1)+A056285(n+1))/2`
-/

namespace A056345.P4176786105810594381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056491 (n + 1) + A056285 (n + 1) : ℚ) / 2

end

end A056345.P4176786105810594381

noncomputable section

/-- A056345: Number of bracelets of length n using exactly five different colored beads.

Offset 1, canonical program `A056345.P4176786105810594381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A056345 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056345.P4176786105810594381.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A056345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057027.P16662688705013223200

`A038722(A059399(n+1))`
-/

namespace A057027.P16662688705013223200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A059399 (n + 1)).toNat

end

end A057027.P16662688705013223200

noncomputable section

/-- A057027: Triangle T read by rows: row n consists of the numbers C(n,2)+1 to C(n+1,2); numbers in odd-numbered places form an increasing sequence and the others a decreasing sequence.

Offset 1, canonical program `A057027.P16662688705013223200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057027 (n : ℕ) : ℤ :=
  A057027.P16662688705013223200.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058363.P18291542316030810547

`filter[A093641(n+2), A354923(#)]`
-/

namespace A058363.P18291542316030810547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A058363.P18291542316030810547

noncomputable section

/-- A058363: Numbers whose reduced system of residues forms an arithmetic progression. It consists of primes, twice primes, and powers of 2.

Offset 1, canonical program `A058363.P18291542316030810547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7050 terms. -/
def A058363 (n : ℕ) : ℤ :=
  A058363.P18291542316030810547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7050 terms. -/
def A058363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060594.P2818484457649056228

`∑{d}[n+1, A114643(#)]`
-/

namespace A060594.P2818484457649056228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114643 d

end

end A060594.P2818484457649056228

noncomputable section

/-- A060594: Number of solutions to x^2 == 1 (mod n), that is, square roots of unity modulo n.

Offset 1, canonical program `A060594.P2818484457649056228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060594 (n : ℕ) : ℤ :=
  A060594.P2818484457649056228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061368.P10250961159884053711

`p?[A112928(n+1)-2]`
-/

namespace A061368.P10250961159884053711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112928 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061368.P10250961159884053711

noncomputable section

/-- A061368: Lesser of twin primes (p, p+2) whose average p+1 is not squarefree.

Offset 1, canonical program `A061368.P10250961159884053711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5817 terms. -/
def A061368 (n : ℕ) : ℤ :=
  A061368.P10250961159884053711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5817 terms. -/
def A061368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061900.P16677403483452273551

`A000217(A067197(n+1))`
-/

namespace A061900.P16677403483452273551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A067197 (n + 1)).toNat

end

end A061900.P16677403483452273551

noncomputable section

/-- A061900: Triangular numbers that are not squarefree.

Offset 1, canonical program `A061900.P16677403483452273551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061900 (n : ℕ) : ℤ :=
  A061900.P16677403483452273551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062044.P7313043541615639252

`A107817(n)+A062042(n+1)`
-/

namespace A062044.P7313043541615639252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107817 n + A062042 (n + 1)

end

end A062044.P7313043541615639252

noncomputable section

/-- A062044: Primes arising in A062042.

Offset 1, canonical program `A062044.P7313043541615639252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062044 (n : ℕ) : ℤ :=
  A062044.P7313043541615639252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064505.P8463286174945145263

`(n+1)*A014963(n+1)^A189021(n+1)`
-/

namespace A064505.P8463286174945145263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A014963 (n + 1) : ℚ) ^ (A189021 (n + 1) : ℤ)

end

end A064505.P8463286174945145263

noncomputable section

/-- A064505: Interchange primes and their squares.

Offset 1, canonical program `A064505.P8463286174945145263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064505.P8463286174945145263.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065371.P2462499187440685859

`∏{d}[n+1, A062298(A014963(#))]`
-/

namespace A065371.P2462499187440685859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A062298 (A014963 d).toNat

end

end A065371.P2462499187440685859

noncomputable section

/-- A065371: a(1) = 1, a(prime(i)) = prime(i) - i for i > 0 and a(u * v) = a(u) * a(v) for u, v > 0.

Offset 1, canonical program `A065371.P2462499187440685859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065371 (n : ℕ) : ℤ :=
  A065371.P2462499187440685859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066074.P14598573141439101236

`p?[A163871(n+1)]`
-/

namespace A066074.P14598573141439101236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P14598573141439101236

noncomputable section

/-- A066074: Primes arising in A066073.

Offset 1, canonical program `A066074.P14598573141439101236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A066074 (n : ℕ) : ℤ :=
  A066074.P14598573141439101236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A066074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066260.P9887136193330216052

`∏{d}[n+1, A026239(A014963(#))]`
-/

namespace A066260.P9887136193330216052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A026239 (A014963 d).toNat

end

end A066260.P9887136193330216052

noncomputable section

/-- A066260: In the prime factorization of n replace the k-th prime with the k-th composite number, k > 0.

Offset 1, canonical program `A066260.P9887136193330216052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066260 (n : ℕ) : ℤ :=
  A066260.P9887136193330216052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067887.P1613746597860396887

`lt[A057000(n+1), A057000(A014963(n+1))]+1`
-/

namespace A067887.P1613746597860396887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (A014963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067887.P1613746597860396887

noncomputable section

/-- A067887: Composite numbers k such that phi(k+1) < phi(k).

Offset 1, canonical program `A067887.P1613746597860396887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3754 terms. -/
def A067887 (n : ℕ) : ℤ :=
  (A067887.P1613746597860396887.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3754 terms. -/
def A067887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069588.P17422886810562815670

`A272006(n+1)+A062397(A028310(n))`
-/

namespace A069588.P17422886810562815670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272006 (n + 1) + A062397 (A028310 n).toNat

end

end A069588.P17422886810562815670

noncomputable section

/-- A069588: Smallest prime in which the n-th significant digit is a 1.

Offset 1, canonical program `A069588.P17422886810562815670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069588 (n : ℕ) : ℤ :=
  A069588.P17422886810562815670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069939.P13457970128169865762

`∑{digits}[n, #]*A111707(A056142(n))`
-/

namespace A069939.P13457970128169865762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A111707 (A056142 n).toNat

end

end A069939.P13457970128169865762

noncomputable section

/-- A069939: a(n) = (1/3!)*((Sum of digits of n)^3 + 3*(Sum of digits of n)*(Sum of digits^2 of n) + 2*(Sum of digits^3 of n)).

Offset 0, canonical program `A069939.P13457970128169865762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069939 (n : ℕ) : ℤ :=
  A069939.P13457970128169865762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072084.P10567843185268876748

`∏{d}[n+1, A000120(A014963(#))]`
-/

namespace A072084.P10567843185268876748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000120 (A014963 d).toNat

end

end A072084.P10567843185268876748

noncomputable section

/-- A072084: In prime factorization of n replace all primes with their numbers of 1's in binary representation.

Offset 1, canonical program `A072084.P10567843185268876748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072084 (n : ℕ) : ℤ :=
  A072084.P10567843185268876748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072569.P569994932586895298

`∪[A072572(n+1), A072573(n+1)]`
-/

namespace A072569.P569994932586895298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P569994932586895298

noncomputable section

/-- A072569: Odd interprimes.

Offset 1, canonical program `A072569.P569994932586895298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072569 (n : ℕ) : ℤ :=
  (A072569.P569994932586895298.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072728.P6270051122874775703

`A071585(eq[0, A334076(n)])`
-/

namespace A072728.P6270051122874775703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072728.P6270051122874775703

noncomputable section

/-- A072728: Numerator of rationals >= 1 whose continued fractions consist only of 1's and 2's, in ascending order by the sum of the continued fraction terms and descending by lowest order continued fraction terms to highest.

Offset 0, canonical program `A072728.P6270051122874775703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A072728 (n : ℕ) : ℤ :=
  A072728.P6270051122874775703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A072728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072961.P17428859093345202739

`A032917(n+1)+A007931(n+1)`
-/

namespace A072961.P17428859093345202739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + A007931 (n + 1)

end

end A072961.P17428859093345202739

noncomputable section

/-- A072961: Numbers using only the digits 2 and 5, that are both curved and straight.

Offset 1, canonical program `A072961.P17428859093345202739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072961 (n : ℕ) : ℤ :=
  A072961.P17428859093345202739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075779.P14865858802332853059

`A075798(lt[2, A002260(1+n)])`
-/

namespace A075779.P14865858802332853059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075779.P14865858802332853059

noncomputable section

/-- A075779: Triangle T(n,k) = f(n,k,n-1), n >= 2, 1 <= k <= n-1, where f is given below.

Offset 2, canonical program `A075779.P14865858802332853059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A075779 (n : ℕ) : ℤ :=
  A075779.P14865858802332853059.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A075779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076649.P8873919623367228431

`∑{d}[n+1, A004218(A014963(#))]`
-/

namespace A076649.P8873919623367228431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004218 (A014963 d).toNat

end

end A076649.P8873919623367228431

noncomputable section

/-- A076649: Number of digits required to write the prime factors of n.

Offset 1, canonical program `A076649.P8873919623367228431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076649 (n : ℕ) : ℤ :=
  A076649.P8873919623367228431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078268.P12910837297517375735

`(n+1)/A068822(n+1)`
-/

namespace A078268.P12910837297517375735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A068822 (n + 1) : ℚ)

end

end A078268.P12910837297517375735

noncomputable section

/-- A078268: Smallest integer which is an integer multiple of the number N obtained by placing the string "n" after a decimal point.

Offset 1, canonical program `A078268.P12910837297517375735`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078268 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078268.P12910837297517375735.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078268.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078599.P6674880348428160

`A007947(n+1)^A007875(n+1)`
-/

namespace A078599.P6674880348428160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A007875 (n + 1) : ℤ)

end

end A078599.P6674880348428160

noncomputable section

/-- A078599: Product of squarefree divisors of n.

Offset 1, canonical program `A078599.P6674880348428160`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078599 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078599.P6674880348428160.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078599.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079065.P5255729659051602087

`∏{d}[n+1, A086369(A014963(#))]`
-/

namespace A079065.P5255729659051602087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A086369 (A014963 d).toNat

end

end A079065.P5255729659051602087

noncomputable section

/-- A079065: In prime factorization of n replace odd primes with 3.

Offset 1, canonical program `A079065.P5255729659051602087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079065 (n : ℕ) : ℤ :=
  A079065.P5255729659051602087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079142.P3719242836369458363

`record[A014963(A008624(n)+1)*A008624(n+9)]`
-/

namespace A079142.P3719242836369458363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008624 n + 1).toNat * A008624 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079142.P3719242836369458363

noncomputable section

/-- A079142: Numbers divisible by prime integer parts of their square roots.

Offset 0, canonical program `A079142.P3719242836369458363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A079142 (n : ℕ) : ℤ :=
  A079142.P3719242836369458363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A079142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079781.P461482998826215960

`lcm(A037126(n+1)+1, ∏[A014963(n+1)])-1-n`
-/

namespace A079781.P461482998826215960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A037126 (n + 1) + 1) (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1 - (n : ℤ)

end

end A079781.P461482998826215960

noncomputable section

/-- A079781: Initial term of n-th row of triangle in A079784.

Offset 1, canonical program `A079781.P461482998826215960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A079781 (n : ℕ) : ℤ :=
  A079781.P461482998826215960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A079781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081242.P10971866192076995122

`A007931(A081241(n+1))`
-/

namespace A081242.P10971866192076995122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A081241 (n + 1)).toNat

end

end A081242.P10971866192076995122

noncomputable section

/-- A081242: Left-to-right binary enumeration.

Offset 2, canonical program `A081242.P10971866192076995122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A081242 (n : ℕ) : ℤ :=
  A081242.P10971866192076995122.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A081242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081324.P12063373289040437378

`2*eq[1, A063014(n)]²`
-/

namespace A081324.P12063373289040437378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A081324.P12063373289040437378

noncomputable section

/-- A081324: Twice a square but not the sum of 2 distinct squares.

Offset 1, canonical program `A081324.P12063373289040437378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A081324 (n : ℕ) : ℤ :=
  (A081324.P12063373289040437378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A081324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082741.P5603460643145783783

`∩[A001729(n+1), A307913(n+1)]`
-/

namespace A082741.P5603460643145783783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082741.P5603460643145783783

noncomputable section

/-- A082741: Numbers that have digits consisting only of line segments or both line segments and curves (base 10 digits are 1, 2, 4, 5, 7).

Offset 1, canonical program `A082741.P5603460643145783783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2655 terms. -/
def A082741 (n : ℕ) : ℤ :=
  (A082741.P5603460643145783783.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2655 terms. -/
def A082741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083799.P12133560913529063526

`(n*n%2/A014963(A028310(n))+n)/2*(n+1)`
-/

namespace A083799.P12133560913529063526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n * (n % 2) : ℕ) : ℚ) / (A014963 (A028310 n).toNat : ℚ) + (n : ℚ)) / 2 * (n + 1 : ℚ)

end

end A083799.P12133560913529063526

noncomputable section

/-- A083799: Main diagonal of A083798.

Offset 1, canonical program `A083799.P12133560913529063526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1912 terms. -/
def A083799 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083799.P12133560913529063526.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1912 terms. -/
def A083799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084545.P4936692900307291097

`A001729(A248910(n+1))`
-/

namespace A084545.P4936692900307291097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (A248910 (n + 1)).toNat

end

end A084545.P4936692900307291097

noncomputable section

/-- A084545: Alternate number system in base 5.

Offset 1, canonical program `A084545.P4936692900307291097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A084545 (n : ℕ) : ℤ :=
  A084545.P4936692900307291097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A084545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084679.P8576193257250149366

`eq[A014963(n+1), A066922(n+1)]+1`
-/

namespace A084679.P8576193257250149366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066922 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A084679.P8576193257250149366

noncomputable section

/-- A084679: Composite numbers with coprime numbers of prime factors with and without repetition.

Offset 1, canonical program `A084679.P8576193257250149366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2967 terms. -/
def A084679 (n : ℕ) : ℤ :=
  (A084679.P8576193257250149366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2967 terms. -/
def A084679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084988.P10462834294168288044

`∩[A084984(n+1), A104211(n+1)]`
-/

namespace A084988.P10462834294168288044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084988.P10462834294168288044

noncomputable section

/-- A084988: Numbers made with nonprime digits such that the sum of the digits is also not prime.

Offset 1, canonical program `A084988.P10462834294168288044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1263 terms. -/
def A084988 (n : ℕ) : ℤ :=
  (A084988.P10462834294168288044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1263 terms. -/
def A084988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087033.P7130639841514551585

`Δ[A087031(1+n)]-1`
-/

namespace A087033.P7130639841514551585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A087033.P7130639841514551585

noncomputable section

/-- A087033: Number of terms in each group of consecutive zeros in A087032.

Offset 1, canonical program `A087033.P7130639841514551585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A087033 (n : ℕ) : ℤ :=
  A087033.P7130639841514551585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A087033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088499.P11000041782602806712

`record[A145064(A141545(n+1))+1]`
-/

namespace A088499.P11000041782602806712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A141545 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088499.P11000041782602806712

noncomputable section

/-- A088499: Doubly (3)-perfect numbers.

Offset 1, canonical program `A088499.P11000041782602806712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A088499 (n : ℕ) : ℤ :=
  A088499.P11000041782602806712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A088499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088896.P16202868214038022154

`lt[1, A063014(n)]^3`
-/

namespace A088896.P16202868214038022154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A088896.P16202868214038022154

noncomputable section

/-- A088896: Length of longest integral ladder that can be moved horizontally around the right angled corner where two hallway corridors of integral widths meet.

Offset 1, canonical program `A088896.P16202868214038022154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6449 terms. -/
def A088896 (n : ℕ) : ℤ :=
  (A088896.P16202868214038022154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6449 terms. -/
def A088896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089026.P9133057752167928232

`A014963(n+1)^-A008683(n+1)`
-/

namespace A089026.P9133057752167928232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) ^ (-A008683 (n + 1) : ℤ)

end

end A089026.P9133057752167928232

noncomputable section

/-- A089026: a(n) = n if n is a prime, otherwise a(n) = 1.

Offset 1, canonical program `A089026.P9133057752167928232`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089026 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089026.P9133057752167928232.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091923.P11679883454260770238

`eq[A007920(n), A055671(A171397(n))]`
-/

namespace A091923.P11679883454260770238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091923.P11679883454260770238

noncomputable section

/-- A091923: Primes whose decimal representations interpreted in base 11 are not prime.

Offset 1, canonical program `A091923.P11679883454260770238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 810 terms. -/
def A091923 (n : ℕ) : ℤ :=
  (A091923.P11679883454260770238.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 810 terms. -/
def A091923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091953.P10332148221094495781

`A014963(A061393(A007814(n+1))+A061393(a(n-1)))` with `a(0)=1`
-/

namespace A091953.P10332148221094495781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (A061393 (A007814 (n + 1)).toNat + A061393 (a (n - 1)).toNat).toNat

end

end A091953.P10332148221094495781

noncomputable section

/-- A091953: a(1)=1, a(2n)=1+a(n)(mod 2); a(2n+1)=2*a(2n)+1.

Offset 1, canonical program `A091953.P10332148221094495781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091953 (n : ℕ) : ℤ :=
  A091953.P10332148221094495781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092453.P9438286494143066281

`∪[A011534(n+1), A008586(n)]`
-/

namespace A092453.P9438286494143066281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092453.P9438286494143066281

noncomputable section

/-- A092453: Numbers that either contain the digit 4 or are divisible by 4.

Offset 0, canonical program `A092453.P9438286494143066281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092453 (n : ℕ) : ℤ :=
  (A092453.P9438286494143066281.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092632.P7603526325188784515

`eq[2, A276729(n)+A055671(n)]`
-/

namespace A092632.P7603526325188784515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092632.P7603526325188784515

noncomputable section

/-- A092632: Nonprime numbers with exactly two nonprime digits.

Offset 1, canonical program `A092632.P7603526325188784515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3137 terms. -/
def A092632 (n : ℕ) : ℤ :=
  (A092632.P7603526325188784515.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3137 terms. -/
def A092632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098141.P9593547582671812815

`∏{d}[n+1, -A014963(#)]+a(n-1)` with `a(0)=1`
-/

namespace A098141.P9593547582671812815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ d ∈ Nat.divisors (f1 n), (-A014963 d) + a (n - 1)

end

end A098141.P9593547582671812815

noncomputable section

/-- A098141: a(1)=1, then if n not a square a(n)=a(n-1) + n, if n a square then a(n)= a(n-1) - n.

Offset 1, canonical program `A098141.P9593547582671812815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098141 (n : ℕ) : ℤ :=
  A098141.P9593547582671812815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100994.P12734037206336579450

`A014963(n+1)^A100995(n+1)`
-/

namespace A100994.P12734037206336579450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) ^ (A100995 (n + 1) : ℤ)

end

end A100994.P12734037206336579450

noncomputable section

/-- A100994: If n is a prime power p^m, m >= 1, then n, otherwise 1.

Offset 1, canonical program `A100994.P12734037206336579450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A100995, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100994 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100994.P12734037206336579450.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A100995, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105321.P8001804258587492463

`Δ[n²]-A249304(n)`
-/

namespace A105321.P8001804258587492463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A249304 n

end

end A105321.P8001804258587492463

noncomputable section

/-- A105321: Convolution of binomial(1,n) and Gould's sequence A001316.

Offset 0, canonical program `A105321.P8001804258587492463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105321 (n : ℕ) : ℤ :=
  A105321.P8001804258587492463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106546.P8703496101521057786

`((n+1)*(A355450(n+1)-1))²`
-/

namespace A106546.P8703496101521057786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A355450 (n + 1) - 1)) ^ 2

end

end A106546.P8703496101521057786

noncomputable section

/-- A106546: a(n) = n^2 if n^2 is the difference of two primes, otherwise a(n) = 0.

Offset 1, canonical program `A106546.P8703496101521057786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106546 (n : ℕ) : ℤ :=
  A106546.P8703496101521057786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106564.P8487788228564906810

`(eq[1, A355450(n+1)]+1)²`
-/

namespace A106564.P8487788228564906810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A106564.P8487788228564906810

noncomputable section

/-- A106564: Perfect squares which are not the difference of two primes.

Offset 1, canonical program `A106564.P8487788228564906810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106564 (n : ℕ) : ℤ :=
  (A106564.P8487788228564906810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106701.P17869885549293977825

`1-A086694(lt[A014963(n+1), n])`
-/

namespace A106701.P17869885549293977825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A086694 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A106701.P17869885549293977825

noncomputable section

/-- A106701: a(n) = next-to-most-significant binary digit of n-th composite positive integer.

Offset 1, canonical program `A106701.P17869885549293977825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A106701 (n : ℕ) : ℤ :=
  A106701.P17869885549293977825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A106701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108040.P9717987136740058663

`A008280(C(row(n)+1, 2)+row(n)-col(n))`
-/

namespace A108040.P9717987136740058663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 ((Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A108040.P9717987136740058663

noncomputable section

/-- A108040: Reflection of triangle in A008280 in vertical axis.

Offset 0, canonical program `A108040.P9717987136740058663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108040 (n : ℕ) : ℤ :=
  A108040.P9717987136740058663.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111580.P12502470077332756054

`∑{d}[n+1, A109091(#)*A154955((n+1)/#)]`
-/

namespace A111580.P12502470077332756054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109091 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111580.P12502470077332756054

noncomputable section

/-- A111580: Expansion of eta(q)^2 * eta(q^2) * eta(q^10)^3 / eta(q^5)^2 in powers of q.

Offset 1, canonical program `A111580.P12502470077332756054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111580 (n : ℕ) : ℤ :=
  A111580.P12502470077332756054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112479.P11671366610514428700

`A000079(∑[A010051(n+1)])-A087207(n+1)`
-/

namespace A112479.P11671366610514428700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A087207 (n + 1)

end

end A112479.P11671366610514428700

noncomputable section

/-- A112479: a(n) = 1 + sum{p=primes<n, p does not divide n} a(p).

Offset 1, canonical program `A112479.P11671366610514428700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A112479 (n : ℕ) : ℤ :=
  A112479.P11671366610514428700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A112479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113175.P16870130656088268305

`∏{d}[n+1, A000045(A014963(#))]`
-/

namespace A113175.P16870130656088268305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000045 (A014963 d).toNat

end

end A113175.P16870130656088268305

noncomputable section

/-- A113175: Replace each prime p in prime-factorization of n with p-th Fibonacci number.

Offset 1, canonical program `A113175.P16870130656088268305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113175 (n : ℕ) : ℤ :=
  A113175.P16870130656088268305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113186.P10213787310287371192

`A109091(A259445(n+1))`
-/

namespace A113186.P10213787310287371192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (A259445 (n + 1)).toNat

end

end A113186.P10213787310287371192

noncomputable section

/-- A113186: Expansion of (25phi(q)phi^3(q^5)-phi^5(q)/phi(q^5)-24)/40 in powers of q where phi(q) is a Ramanujan theta function.

Offset 1, canonical program `A113186.P10213787310287371192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113186 (n : ℕ) : ℤ :=
  A113186.P10213787310287371192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113260.P8698562919777995260

`2*A109091(n+1)-A109091(A000265(n+1))`
-/

namespace A113260.P8698562919777995260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109091 (n + 1) - A109091 (A000265 (n + 1)).toNat

end

end A113260.P8698562919777995260

noncomputable section

/-- A113260: Expansion of (-1 + psi(q)^5/psi(q^5) - 25q^2 psi(q)*psi(q^5)^3)/5 in powers of q where psi(q) is a Ramanujan theta function.

Offset 1, canonical program `A113260.P8698562919777995260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113260 (n : ℕ) : ℤ :=
  A113260.P8698562919777995260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113520.P10089445824807879536

`A285788(∑[A048864(n+1)])%(n+1)`
-/

namespace A113520.P10089445824807879536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (n + 1 : ℤ)

end

end A113520.P10089445824807879536

noncomputable section

/-- A113520: a(n) = largest nonprime nonnegative integer < n which is coprime to n.

Offset 1, canonical program `A113520.P10089445824807879536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A113520 (n : ℕ) : ℤ :=
  A113520.P10089445824807879536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A113520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115267.P1462664793311631896

`p?[A046389(n+1)-2]`
-/

namespace A115267.P1462664793311631896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115267.P1462664793311631896

noncomputable section

/-- A115267: Primes of the form p*q*r-2, where p, q and r are distinct primes.

Offset 1, canonical program `A115267.P1462664793311631896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A115267 (n : ℕ) : ℤ :=
  A115267.P1462664793311631896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A115267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116623.P4799794857559479492

`A116640(A145342(n+1)-1)`
-/

namespace A116623.P4799794857559479492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116640 (A145342 (n + 1) - 1).toNat

end

end A116623.P4799794857559479492

noncomputable section

/-- A116623: a(0)=1, a(2n) = a(n)+A000079(A000523(2n)), a(2n+1) = 3*a(n) + A000079(A000523(2n+1)+1).

Offset 0, canonical program `A116623.P4799794857559479492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A116623 (n : ℕ) : ℤ :=
  A116623.P4799794857559479492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A116623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118492.P3080246394200543970

`A077766(n+1)+A079261(n+1)+A000007(n)`
-/

namespace A118492.P3080246394200543970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (n + 1) + (A079261 (n + 1) + A000007 n)

end

end A118492.P3080246394200543970

noncomputable section

/-- A118492: Number of Gaussian primes with floor(abs(p)) = n.

Offset 1, canonical program `A118492.P3080246394200543970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118492 (n : ℕ) : ℤ :=
  A118492.P3080246394200543970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118541.P11040726399635280767

`∏{d}[n, A007954(A014963(#))]`
-/

namespace A118541.P11040726399635280767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007954 (A014963 d).toNat

end

end A118541.P11040726399635280767

noncomputable section

/-- A118541: Product of digits of prime factors of n, with multiplicity.

Offset 0, canonical program `A118541.P11040726399635280767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118541 (n : ℕ) : ℤ :=
  A118541.P11040726399635280767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119381.P9500418666100049897

`∩[A071680(n+1), A098029(n+1)]`
-/

namespace A119381.P9500418666100049897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119381.P9500418666100049897

noncomputable section

/-- A119381: Primes p(n) for which (p(n-1) + p(n+2)) / p(n) = 2.

Offset 1, canonical program `A119381.P9500418666100049897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119381 (n : ℕ) : ℤ :=
  (A119381.P9500418666100049897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121024.P16747478931446409711

`record[A088440(A011534(n+1))]`
-/

namespace A121024.P16747478931446409711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A011534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121024.P16747478931446409711

noncomputable section

/-- A121024: Multiples of 4 containing a 4 in their decimal representation.

Offset 1, canonical program `A121024.P16747478931446409711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3021 terms. -/
def A121024 (n : ℕ) : ℤ :=
  A121024.P16747478931446409711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3021 terms. -/
def A121024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122692.P4977079091436261815

`∩[A068140(n+1)+1, A068140(n+1)]`
-/

namespace A122692.P4977079091436261815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122692.P4977079091436261815

noncomputable section

/-- A122692: Cubeful numbers whose neighbors are also cubeful.

Offset 1, canonical program `A122692.P4977079091436261815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A122692 (n : ℕ) : ℤ :=
  (A122692.P4977079091436261815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A122692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126961.P11434301675719672040

`p?[eq[A355449(3*n), A355450(n+1)]]`
-/

namespace A126961.P11434301675719672040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 (3 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355450 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A126961.P11434301675719672040

noncomputable section

/-- A126961: Primes p such that (3p)^2 + 2 is not prime.

Offset 1, canonical program `A126961.P11434301675719672040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126961 (n : ℕ) : ℤ :=
  (A126961.P11434301675719672040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127796.P12118606658700443075

`A013598(2*n)`
-/

namespace A127796.P12118606658700443075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 (2 * n)

end

end A127796.P12118606658700443075

noncomputable section

/-- A127796: a(n) = nextprime(9^n) - 9^n.

Offset 0, canonical program `A127796.P12118606658700443075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A127796 (n : ℕ) : ℤ :=
  A127796.P12118606658700443075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A127796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131943.P13377506827659149028

`A109506(n+1)/A000593(n+1)*A118271(n)`
-/

namespace A131943.P13377506827659149028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109506 (n + 1) : ℚ) / (A000593 (n + 1) : ℚ) * (A118271 n : ℚ)

end

end A131943.P13377506827659149028

noncomputable section

/-- A131943: Expansion of b(q) * b(q^2) in powers of q where b() is a cubic AGM theta function.

Offset 0, canonical program `A131943.P13377506827659149028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131943 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131943.P13377506827659149028.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133790.P1304857856387139894

`∏{p}[A014963(n+1), #*(n+1)]`
-/

namespace A133790.P1304857856387139894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p * (n + 1)

end

end A133790.P1304857856387139894

noncomputable section

/-- A133790: A014963*A100994.

Offset 1, canonical program `A133790.P1304857856387139894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133790 (n : ℕ) : ℤ :=
  (A133790.P1304857856387139894.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138507.P4063493995487370764

`(-1)^n*A109091(n+1)`
-/

namespace A138507.P4063493995487370764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A109091 (n + 1)

end

end A138507.P4063493995487370764

noncomputable section

/-- A138507: Expansion of (f(q)^5 / f(q^5) - 1) / 5 in powers of q where f() is a Ramanujan theta function.

Offset 1, canonical program `A138507.P4063493995487370764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138507 (n : ℕ) : ℤ :=
  A138507.P4063493995487370764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139819.P302865287815351926

`lt[0, A040115(n)]`
-/

namespace A139819.P302865287815351926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040115 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139819.P302865287815351926

noncomputable section

/-- A139819: Complement of repdigit numbers A010785.

Offset 1, canonical program `A139819.P302865287815351926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9964 terms. -/
def A139819 (n : ℕ) : ℤ :=
  (A139819.P302865287815351926.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9964 terms. -/
def A139819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139893.P10485135326994439594

`∪[A139991(n+1), A139997(n+1)]`
-/

namespace A139893.P10485135326994439594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P10485135326994439594

noncomputable section

/-- A139893: Primes of the form 14x^2+15y^2.

Offset 1, canonical program `A139893.P10485135326994439594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139893 (n : ℕ) : ℤ :=
  (A139893.P10485135326994439594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140579.P2503757338754458893

`floor(A014963(A002260(n+1))/A038207(n))`
-/

namespace A140579.P2503757338754458893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (A002260 (n + 1)).toNat : ℚ) / (A038207 n : ℚ)⌋

end

end A140579.P2503757338754458893

noncomputable section

/-- A140579: Triangle read by rows, A014963(n) * 0^(n-k); 1<=k<=n.

Offset 1, canonical program `A140579.P2503757338754458893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140579 (n : ℕ) : ℤ :=
  A140579.P2503757338754458893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140664.P2641678759811754943

`A014963(n+1)*A008683(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140664.P2641678759811754943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A008683 (n + 1)

end

end A140664.P2641678759811754943

noncomputable section

/-- A140664: a(n) = A014963(n)*mobius(n).

Offset 1, canonical program `A140664.P2641678759811754943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140664 (n : ℕ) : ℤ :=
  A140664.P2641678759811754943.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140664.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140694.P13182129983530524897

`A014963(n+1)*A063659(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140694.P13182129983530524897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A063659 (n + 1)

end

end A140694.P13182129983530524897

noncomputable section

/-- A140694: a(n) = A014963(n) * A063659(n).

Offset 1, canonical program `A140694.P13182129983530524897`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140694 (n : ℕ) : ℤ :=
  A140694.P13182129983530524897.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140699.P12327101926967723336

`A014963(A010766(n+1))*A054524(n+1)`
-/

namespace A140699.P12327101926967723336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A010766 (n + 1)).toNat * A054524 (n + 1)

end

end A140699.P12327101926967723336

noncomputable section

/-- A140699: Triangle read by rows: T(n,k) = moebius(k)*A014963(n/k) if k divides n, T(n,k) = 0 otherwise.

Offset 1, canonical program `A140699.P12327101926967723336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A140699 (n : ℕ) : ℤ :=
  A140699.P12327101926967723336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A140699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140769.P16438192305256289288

`∩[A049093(n+1)+1, A049093(n+1)]`
-/

namespace A140769.P16438192305256289288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140769.P16438192305256289288

noncomputable section

/-- A140769: Numbers n such that consecutive Mersenne numbers A000225(n-1) = M(n-1) = 2^(n-1) - 1 and A000225(n) = M(n) = 2^n - 1 are both squarefree.

Offset 1, canonical program `A140769.P16438192305256289288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A140769 (n : ℕ) : ℤ :=
  (A140769.P16438192305256289288.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A140769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140900.P9807194820524683252

`eq[0, A159780(n)]`
-/

namespace A140900.P9807194820524683252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140900.P9807194820524683252

noncomputable section

/-- A140900: A nonnegative integer n is included if the binary representation of n and the digit-reversal (with leading 0's) of the binary representation of n do not have any 1's in the same position.

Offset 1, canonical program `A140900.P9807194820524683252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140900 (n : ℕ) : ℤ :=
  (A140900.P9807194820524683252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147297.P13953450478721727119

`record[A108154(4*(n+1)+2)]`
-/

namespace A147297.P13953450478721727119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (4 * (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147297.P13953450478721727119

noncomputable section

/-- A147297: Primes of the form (2k)^2 + 3(2k + 1)^2.

Offset 1, canonical program `A147297.P13953450478721727119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A147297 (n : ℕ) : ℤ :=
  A147297.P13953450478721727119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A147297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152769.P11940454190034013172

`eq[A000007(n), A055671(A230980(n))]`
-/

namespace A152769.P11940454190034013172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152769.P11940454190034013172

noncomputable section

/-- A152769: Numbers n such that pi(n) is nonprime.

Offset 1, canonical program `A152769.P11940454190034013172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8286 terms. -/
def A152769 (n : ℕ) : ℤ :=
  (A152769.P11940454190034013172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8286 terms. -/
def A152769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154893.P9812701386378152860

`record[n+1-A055671(A000005(n+1)-1)]`
-/

namespace A154893.P9812701386378152860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A055671 (A000005 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154893.P9812701386378152860

noncomputable section

/-- A154893: Numbers whose number of proper divisors is not a prime number.

Offset 1, canonical program `A154893.P9812701386378152860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154893 (n : ℕ) : ℤ :=
  A154893.P9812701386378152860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155563.P9922242301162862577

`∪[A353198(n+1), n²]`
-/

namespace A155563.P9922242301162862577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A155563.P9922242301162862577

noncomputable section

/-- A155563: Intersection of A001481 and A003136: N = a^2 + b^2 = c^2 + 3d^2 for some integers a,b,c,d.

Offset 1, canonical program `A155563.P9922242301162862577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155563 (n : ℕ) : ℤ :=
  (A155563.P9922242301162862577.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157347.P14782022362732044519

`∩[A046389(n+1), A350704(n+1)]`
-/

namespace A157347.P14782022362732044519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157347.P14782022362732044519

noncomputable section

/-- A157347: Products of 3 distinct non-Sophie Germain primes.

Offset 1, canonical program `A157347.P14782022362732044519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. -/
def A157347 (n : ℕ) : ℤ :=
  (A157347.P14782022362732044519.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. -/
def A157347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160370.P9712212650284585240

`∩[A244778(n+1), A288022(n+1)]`
-/

namespace A160370.P9712212650284585240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160370.P9712212650284585240

noncomputable section

/-- A160370: Smaller member p of a pair (p,p+6) of consecutive primes in different centuries.

Offset 1, canonical program `A160370.P9712212650284585240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. -/
def A160370 (n : ℕ) : ℤ :=
  (A160370.P9712212650284585240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. -/
def A160370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162431.P9371492357285459952

`A002265(Δ[A053415(Δ[n²])])`
-/

namespace A162431.P9371492357285459952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053415 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A162431.P9371492357285459952

noncomputable section

/-- A162431: Row 2 of table A162430.

Offset 0, canonical program `A162431.P9371492357285459952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A162431 (n : ℕ) : ℤ :=
  A162431.P9371492357285459952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A162431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164282.P11359782556062153401

`lt[3, A063014(n)]`
-/

namespace A164282.P11359782556062153401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164282.P11359782556062153401

noncomputable section

/-- A164282: Hypotenuses of more than two Pythagorean triangles.

Offset 1, canonical program `A164282.P11359782556062153401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164282 (n : ℕ) : ℤ :=
  (A164282.P11359782556062153401.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165318.P3843113614457274030

`p?[A014963(2*A000005(n+1))+n]`
-/

namespace A165318.P3843113614457274030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A000005 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165318.P3843113614457274030

noncomputable section

/-- A165318: Primes p where the number of divisors of p-1 is a power of 2.

Offset 1, canonical program `A165318.P3843113614457274030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4833 terms. -/
def A165318 (n : ℕ) : ℤ :=
  A165318.P3843113614457274030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4833 terms. -/
def A165318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166586.P14911084209555858703

`sqrt(∏{d}[n+1, (2-A014963(#))²])`
-/

namespace A166586.P14911084209555858703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ d ∈ Nat.divisors (f1 n), (2 - A014963 d) ^ 2 : ℤ) : ℝ)

end

end A166586.P14911084209555858703

noncomputable section

/-- A166586: Totally multiplicative sequence with a(p) = p - 2 for prime p.

Offset 1, canonical program `A166586.P14911084209555858703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166586 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166586.P14911084209555858703.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166589.P16013335982350753029

`∏{d}[1+n, A007432(A014963(#))]`
-/

namespace A166589.P16013335982350753029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007432 (A014963 d).toNat

end

end A166589.P16013335982350753029

noncomputable section

/-- A166589: Totally multiplicative sequence with a(p) = p-3 for prime p.

Offset 1, canonical program `A166589.P16013335982350753029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166589 (n : ℕ) : ℤ :=
  A166589.P16013335982350753029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166651.P5914257921824398036

`∏{d}[n+1, 2*A014963(#)-1]`
-/

namespace A166651.P5914257921824398036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (2 * A014963 d - 1)

end

end A166651.P5914257921824398036

noncomputable section

/-- A166651: Totally multiplicative sequence with a(p) = 2p-1 for prime p.

Offset 1, canonical program `A166651.P5914257921824398036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166651 (n : ℕ) : ℤ :=
  A166651.P5914257921824398036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166660.P8526980264530520736

`∏{d}[n+1, A060640(A014963(#))]`
-/

namespace A166660.P8526980264530520736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A060640 (A014963 d).toNat

end

end A166660.P8526980264530520736

noncomputable section

/-- A166660: Totally multiplicative sequence with a(p) = 2p+1 for prime p.

Offset 1, canonical program `A166660.P8526980264530520736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166660 (n : ℕ) : ℤ :=
  A166660.P8526980264530520736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166669.P4669415747542630696

`∏{d}[n+1, 3*A014963(#)-2]`
-/

namespace A166669.P4669415747542630696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (3 * A014963 d - 2)

end

end A166669.P4669415747542630696

noncomputable section

/-- A166669: Totally multiplicative sequence with a(p) = 3p-2 for prime p.

Offset 1, canonical program `A166669.P4669415747542630696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166669 (n : ℕ) : ℤ :=
  A166669.P4669415747542630696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167278.P3371775236650755278

`A151800(p?[A062729(n+1)])`
-/

namespace A167278.P3371775236650755278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A167278.P3371775236650755278

noncomputable section

/-- A167278: Smallest prime>n-th single (or isolated or non-twin) prime.

Offset 1, canonical program `A167278.P3371775236650755278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167278 (n : ℕ) : ℤ :=
  A167278.P3371775236650755278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167346.P10741638315407292075

`∏{d}[n+1, A341772(A014963(#))]`
-/

namespace A167346.P10741638315407292075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A341772 (A014963 d).toNat

end

end A167346.P10741638315407292075

noncomputable section

/-- A167346: Totally multiplicative sequence with a(p) = (p-1)*(p+2) = p^2+p-2 for prime p.

Offset 1, canonical program `A167346.P10741638315407292075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167346 (n : ℕ) : ℤ :=
  A167346.P10741638315407292075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171853.P5972575080585847612

`A187258(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A171853.P5972575080585847612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A187258 n + a (n - 2)

end

end A171853.P5972575080585847612

noncomputable section

/-- A171853: Sum of the trapezoid weights of all peakless Motzkin paths of length n (n>=0).

Offset 0, canonical program `A171853.P5972575080585847612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A171853 (n : ℕ) : ℤ :=
  A171853.P5972575080585847612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A171853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172151.P8399012930650727047

`A004526(n)+A025435(n)-A000196(n)`
-/

namespace A172151.P8399012930650727047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A025435 n - A000196 n)

end

end A172151.P8399012930650727047

noncomputable section

/-- A172151: Number of partitions of n into two nonsquares.

Offset 0, canonical program `A172151.P8399012930650727047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172151 (n : ℕ) : ℤ :=
  A172151.P8399012930650727047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174275.P7115137012869006625

`A000079(n)%A014963(n+1)`
-/

namespace A174275.P7115137012869006625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A014963 (n + 1))

end

end A174275.P7115137012869006625

noncomputable section

/-- A174275: a(n) = 2^(n-1) mod M(n) where M(n) = A014963(n) is the exponential of the Mangoldt function.

Offset 1, canonical program `A174275.P7115137012869006625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174275 (n : ℕ) : ℤ :=
  A174275.P7115137012869006625.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174282.P8316846200560944201

`A000244(n)%A014963(n+1)`
-/

namespace A174282.P8316846200560944201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A014963 (n + 1))

end

end A174282.P8316846200560944201

noncomputable section

/-- A174282: a(n) = 3^n mod M(n) where M(n) = A014963(n) is the exponential of the Mangoldt function.

Offset 1, canonical program `A174282.P8316846200560944201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174282 (n : ℕ) : ℤ :=
  A174282.P8316846200560944201.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175242.P1893256833223553790

`∑{d}[n+1, A178225(#)]`
-/

namespace A175242.P1893256833223553790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178225 d

end

end A175242.P1893256833223553790

noncomputable section

/-- A175242: a(n) = the number of divisors of n that are palindromes when written in binary.

Offset 1, canonical program `A175242.P1893256833223553790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175242 (n : ℕ) : ℤ :=
  A175242.P1893256833223553790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179877.P9000556435574099518

`(3*A179882(n+1)-1)/2`
-/

namespace A179877.P9000556435574099518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A179882 (n + 1) - 1 : ℚ) / 2

end

end A179877.P9000556435574099518

noncomputable section

/-- A179877: Numbers h such that h and h+1 have same contraharmonic mean of the numbers k < h such that gcd(k, h) = 1 and simultaneously this mean is an integer (see A179882).

Offset 1, canonical program `A179877.P9000556435574099518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179882, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179877 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A179877.P9000556435574099518.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179882, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181100.P15153595878229059817

`record[(n+1)%A014963(A028260(n+1)+1)]`
-/

namespace A181100.P15153595878229059817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (A028260 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181100.P15153595878229059817

noncomputable section

/-- A181100: Numbers k such that A028260(k) + 1 is prime.

Offset 1, canonical program `A181100.P15153595878229059817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. -/
def A181100 (n : ℕ) : ℤ :=
  A181100.P15153595878229059817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. -/
def A181100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182082.P7398680763190920704

`∑{#}[n, A007875(#+1)*floor((n+1)/(#+1))]`
-/

namespace A182082.P7398680763190920704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A007875 (k + 1) * ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋

end

end A182082.P7398680763190920704

noncomputable section

/-- A182082: Number of pairs, (x,y), with x >= y, whose LCM does not exceed n.

Offset 1, canonical program `A182082.P7398680763190920704`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182082 (n : ℕ) : ℤ :=
  A182082.P7398680763190920704.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183060.P15810136757882234641

`floor(A147562(n)/2+n)`
-/

namespace A183060.P15810136757882234641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147562 n : ℚ) / 2 + (n : ℚ)⌋

end

end A183060.P15810136757882234641

noncomputable section

/-- A183060: Number of "ON" cells at n-th stage in a simple 2-dimensional cellular automaton (see Comments for precise definition).

Offset 0, canonical program `A183060.P15810136757882234641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A183060 (n : ℕ) : ℤ :=
  A183060.P15810136757882234641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A183060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184039.P4320161098641191564

`3*(A184048(n+1)-A183986(n+1))+1`
-/

namespace A184039.P4320161098641191564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A184048 (n + 1) - A183986 (n + 1)) + 1

end

end A184039.P4320161098641191564

noncomputable section

/-- A184039: T(n,k) = 1/16 the number of (n+1) X (k+1) 0..3 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184039.P4320161098641191564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A184039 (n : ℕ) : ℤ :=
  A184039.P4320161098641191564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A184039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184806.P15414560286594020557

`record[(n+2)%A014963(A108598(n+2))]`
-/

namespace A184806.P15414560286594020557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A014963 (A108598 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184806.P15414560286594020557

noncomputable section

/-- A184806: Numbers k such that floor(k*s) is prime, where s = (5 + sqrt(5))/4.

Offset 1, canonical program `A184806.P15414560286594020557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 678 terms. -/
def A184806 (n : ℕ) : ℤ :=
  A184806.P15414560286594020557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 678 terms. -/
def A184806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185632.P15082878415161927803

`record[A108154(A018252(n+1)+1)]`
-/

namespace A185632.P15082878415161927803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (A018252 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185632.P15082878415161927803

noncomputable section

/-- A185632: Primes of the form n^2 + n + 1 where n is nonprime.

Offset 1, canonical program `A185632.P15082878415161927803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185632 (n : ℕ) : ℤ :=
  A185632.P15082878415161927803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186193.P2513860863626863232

`2*(A153083(n+1)+5)`
-/

namespace A186193.P2513860863626863232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153083 (n + 1) + 5)

end

end A186193.P2513860863626863232

noncomputable section

/-- A186193: Numbers k such that k!! is divisible by (k+1).

Offset 1, canonical program `A186193.P2513860863626863232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186193 (n : ℕ) : ℤ :=
  A186193.P2513860863626863232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187535.P14494353156330916523

`A125558(n)*(n+1)!`
-/

namespace A187535.P14494353156330916523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125558 n * (Nat.factorial (n + 1) : ℤ)

end

end A187535.P14494353156330916523

noncomputable section

/-- A187535: Central Lah numbers: a(n) = A105278(2*n,n) = A008297(2*n,n).

Offset 0, canonical program `A187535.P14494353156330916523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125558, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187535 (n : ℕ) : ℤ :=
  A187535.P14494353156330916523.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125558, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A188318.P11824684918398518309

`A188321(A083035(n+1)+n+1)`
-/

namespace A188318.P11824684918398518309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 (A083035 (n + 1) + (n + 1 : ℤ)).toNat

end

end A188318.P11824684918398518309

noncomputable section

/-- A188318: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=4, [ ]=floor.

Offset 1, canonical program `A188318.P11824684918398518309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188318 (n : ℕ) : ℤ :=
  A188318.P11824684918398518309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192144.P13402227133429832230

`A192146(n+1)+A192146(n+1)-A192255(n+1)`
-/

namespace A192144.P13402227133429832230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192146 (n + 1) + (A192146 (n + 1) - A192255 (n + 1))

end

end A192144.P13402227133429832230

noncomputable section

/-- A192144: 1-sequence of reduction of hexagonal numbers sequence by x^2 -> x+1.

Offset 1, canonical program `A192144.P13402227133429832230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A192144 (n : ℕ) : ℤ :=
  A192144.P13402227133429832230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A192144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201156.P12740422447403239301

`a(n-1)*A014963(A057723(n+1))+1` with `a(0)=1`
-/

namespace A201156.P12740422447403239301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014963 (A057723 (n + 1)).toNat + 1

end

end A201156.P12740422447403239301

noncomputable section

/-- A201156: Row sums of triangle A201146.

Offset 1, canonical program `A201156.P12740422447403239301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A201156 (n : ℕ) : ℤ :=
  A201156.P12740422447403239301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A201156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207606.P2309420890397332701

`A207620(n+1)-A085478(n)%A207607(n+1)`
-/

namespace A207606.P2309420890397332701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207620 (n + 1) - Int.tmod (A085478 n) (A207607 (n + 1))

end

end A207606.P2309420890397332701

noncomputable section

/-- A207606: Triangle of coefficients of polynomials u(n,x) jointly generated with A207607; see the Formula section.

Offset 1, canonical program `A207606.P2309420890397332701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207606 (n : ℕ) : ℤ :=
  A207606.P2309420890397332701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209556.P1743370844855814615

`A029656(A038722(n+1))-A209555(n+1)`
-/

namespace A209556.P1743370844855814615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (A038722 (n + 1)).toNat - A209555 (n + 1)

end

end A209556.P1743370844855814615

noncomputable section

/-- A209556: Triangle of coefficients of polynomials v(n,x) jointly generated with A209555; see the Formula section.

Offset 1, canonical program `A209556.P1743370844855814615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209556 (n : ℕ) : ℤ :=
  A209556.P1743370844855814615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000404.P2881668745635022014

`∪[A000415(n+1), A004431(n+1)]`
-/

namespace A000404.P2881668745635022014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P2881668745635022014

noncomputable section

/-- A000404: Numbers that are the sum of 2 nonzero squares.

Offset 1, canonical program `A000404.P2881668745635022014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000404 (n : ℕ) : ℤ :=
  (A000404.P2881668745635022014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001313.P16589070753365997219

`∑[A001319(n)]`
-/

namespace A001313.P16589070753365997219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001313.P16589070753365997219

noncomputable section

/-- A001313: Number of ways of making change for n cents using coins of 1, 2, 5, 10, 20, 50 cents.

Offset 0, canonical program `A001313.P16589070753365997219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4012 terms. -/
def A001313 (n : ℕ) : ℤ :=
  A001313.P16589070753365997219.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4012 terms. -/
def A001313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003960.P16011215527621288421

`∏{d}[n+1, ceil(A014963(#)/2)]`
-/

namespace A003960.P16011215527621288421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ⌈(A014963 d : ℚ) / 2⌉

end

end A003960.P16011215527621288421

noncomputable section

/-- A003960: Fully multiplicative with a(p) = [ (p+1)/2 ] for prime p.

Offset 1, canonical program `A003960.P16011215527621288421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003960 (n : ℕ) : ℤ :=
  A003960.P16011215527621288421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006875.P14857395006895934659

`A000740(n+1)-A006876(n+1)`
-/

namespace A006875.P14857395006895934659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) - A006876 (n + 1)

end

end A006875.P14857395006895934659

noncomputable section

/-- A006875: Non-seed mu-atoms of period n in Mandelbrot set.

Offset 1, canonical program `A006875.P14857395006895934659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006875 (n : ℕ) : ℤ :=
  A006875.P14857395006895934659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006876, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006875.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007851.P15050771373022439753

`A189176(n+1)-1`
-/

namespace A007851.P15050771373022439753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 (n + 1) - 1

end

end A007851.P15050771373022439753

noncomputable section

/-- A007851: Number of elements w of the Weyl group D(n) such that the roots sent negative by w span an Abelian subalgebra of the Lie algebra.

Offset 1, canonical program `A007851.P15050771373022439753`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007851 (n : ℕ) : ℤ :=
  A007851.P15050771373022439753.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007851.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008541.P9566157956627903149

`comp[∪[A011534(n+1), A011535(n+1)]]`
-/

namespace A008541.P9566157956627903149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A008541.P9566157956627903149

noncomputable section

/-- A008541: Numbers that do not contain the letter `f'.

Offset 1, canonical program `A008541.P9566157956627903149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008541 (n : ℕ) : ℤ :=
  (A008541.P9566157956627903149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011688.P14714035388955064508

`A011677(14*n)`
-/

namespace A011688.P14714035388955064508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011677 (14 * n)

end

end A011688.P14714035388955064508

noncomputable section

/-- A011688: A binary m-sequence: expansion of reciprocal of x^7+x^5+x^4+x^3+1.

Offset 0, canonical program `A011688.P14714035388955064508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 715 terms. -/
def A011688 (n : ℕ) : ℤ :=
  A011688.P14714035388955064508.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 715 terms. -/
def A011688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011690.P9181398380516722787

`A011677(3*n+14)`
-/

namespace A011690.P9181398380516722787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011677 (3 * n + 14)

end

end A011690.P9181398380516722787

noncomputable section

/-- A011690: A binary m-sequence: expansion of reciprocal of x^7+x^3+1.

Offset 0, canonical program `A011690.P9181398380516722787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3329 terms. -/
def A011690 (n : ℕ) : ℤ :=
  A011690.P9181398380516722787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3329 terms. -/
def A011690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011695.P6072610346679542110

`A011710(A017509(n+1))`
-/

namespace A011695.P6072610346679542110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011710 (A017509 (n + 1)).toNat

end

end A011695.P6072610346679542110

noncomputable section

/-- A011695: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^6+x^5+x^4+x^2+1.

Offset 0, canonical program `A011695.P6072610346679542110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 908 terms. -/
def A011695 (n : ℕ) : ℤ :=
  A011695.P6072610346679542110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 908 terms. -/
def A011695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011698.P14179093862103140510

`A011710(A008458(n)+33)`
-/

namespace A011698.P14179093862103140510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011710 (A008458 n + 33).toNat

end

end A011698.P14179093862103140510

noncomputable section

/-- A011698: A binary m-sequence: expansion of reciprocal of x^8+x^6+x^5+x^4+x^2+x+1.

Offset 0, canonical program `A011698.P14179093862103140510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1662 terms. -/
def A011698 (n : ℕ) : ℤ :=
  A011698.P14179093862103140510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1662 terms. -/
def A011698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020671.P12817982784558500883

`∩[A002479(n+1), A047462(n+1)]`
-/

namespace A020671.P12817982784558500883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020671.P12817982784558500883

noncomputable section

/-- A020671: Numbers of form x^2 + 8 y^2.

Offset 1, canonical program `A020671.P12817982784558500883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4047 terms. -/
def A020671 (n : ℕ) : ℤ :=
  (A020671.P12817982784558500883.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4047 terms. -/
def A020671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020676.P2617492211057863195

`∩[A002479(n+1), A174438(n+1)]`
-/

namespace A020676.P2617492211057863195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020676.P2617492211057863195

noncomputable section

/-- A020676: Numbers of form 2 x^2 + 9 y^2.

Offset 1, canonical program `A020676.P2617492211057863195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A020676 (n : ℕ) : ℤ :=
  (A020676.P2617492211057863195.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A020676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025242.P3179185918171342771

`A086581(abs(floor((n+2)/(n+1))-n))`
-/

namespace A025242.P3179185918171342771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 |⌊(n + 2 : ℚ) / (n + 1 : ℚ)⌋ - (n : ℤ)|.toNat

end

end A025242.P3179185918171342771

noncomputable section

/-- A025242: Generalized Catalan numbers A(x)^2 -(1+x)^2*A(x) +x*(2+x+x^2) =0.

Offset 1, canonical program `A025242.P3179185918171342771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A025242 (n : ℕ) : ℤ :=
  A025242.P3179185918171342771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A025242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027386.P13022936192587829036

`∑{digits}[n, A332813(A033484(#))]`
-/

namespace A027386.P13022936192587829036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A332813 (A033484 x).toNat).sum

end

end A027386.P13022936192587829036

noncomputable section

/-- A027386: Write digits for n, count endpoints (version 1).

Offset 0, canonical program `A027386.P13022936192587829036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027386 (n : ℕ) : ℤ :=
  A027386.P13022936192587829036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027697.P8971640768606976312

`∪[A027705(n+1), A027707(n)]`
-/

namespace A027697.P8971640768606976312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027707 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027697.P8971640768606976312

noncomputable section

/-- A027697: Odious primes: primes with odd number of 1's in binary expansion.

Offset 1, canonical program `A027697.P8971640768606976312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027697 (n : ℕ) : ℤ :=
  (A027697.P8971640768606976312.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028274.P11794825833933731270

`A028272(eq[1, A028272(n)%2])`
-/

namespace A028274.P11794825833933731270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028272 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028274.P11794825833933731270

noncomputable section

/-- A028274: Odd elements (greater than 1) to right of central elements in 3-Pascal triangle A028262.

Offset 1, canonical program `A028274.P11794825833933731270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2305 terms. -/
def A028274 (n : ℕ) : ℤ :=
  A028274.P11794825833933731270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2305 terms. -/
def A028274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028285.P5292532840332202507

`A028272(n)+A014413(n+1)`
-/

namespace A028285.P5292532840332202507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028272 n + A014413 (n + 1)

end

end A028285.P5292532840332202507

noncomputable section

/-- A028285: Elements to right of central elements in 4-Pascal triangle A028275 that are not 1.

Offset 0, canonical program `A028285.P5292532840332202507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028285 (n : ℕ) : ℤ :=
  A028285.P5292532840332202507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029125.P2235379853175947616

`A029235(abs(1-n))+A029233(n)`
-/

namespace A029125.P2235379853175947616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029235 |1 - (n : ℤ)|.toNat + A029233 n

end

end A029125.P2235379853175947616

noncomputable section

/-- A029125: Expansion of 1/((1-x)(1-x^7)(1-x^10)(1-x^12)).

Offset 0, canonical program `A029125.P2235379853175947616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029125 (n : ℕ) : ℤ :=
  A029125.P2235379853175947616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029325.P16077546944501799160

`A029431(abs(3-n))+A029431(n)`
-/

namespace A029325.P16077546944501799160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 |3 - (n : ℤ)|.toNat + A029431 n

end

end A029325.P16077546944501799160

noncomputable section

/-- A029325: Expansion of 1/((1-x^3)*(1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029325.P16077546944501799160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029325 (n : ℕ) : ℤ :=
  A029325.P16077546944501799160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029614.P3750468161563103685

`A029632(n)+A008313(n)`
-/

namespace A029614.P3750468161563103685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029632 n + A008313 n

end

end A029614.P3750468161563103685

noncomputable section

/-- A029614: Numbers to the right of the central elements of the (2,3)-Pascal triangle A029600.

Offset 0, canonical program `A029614.P3750468161563103685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029614 (n : ℕ) : ℤ :=
  A029614.P3750468161563103685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034031.P5489871832689968742

`record[∏{p}[A002479(n+1), #]]`
-/

namespace A034031.P5489871832689968742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034031.P5489871832689968742

noncomputable section

/-- A034031: Numbers that are primitively but not imprimitively represented by x^2+2y^2.

Offset 1, canonical program `A034031.P5489871832689968742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5585 terms. -/
def A034031 (n : ℕ) : ℤ :=
  (A034031.P5489871832689968742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5585 terms. -/
def A034031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038588.P5041427114804262842

`A038587(A267137(n+1))`
-/

namespace A038588.P5041427114804262842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038587 (A267137 (n + 1)).toNat

end

end A038588.P5041427114804262842

noncomputable section

/-- A038588: Sizes of clusters in hexagonal lattice A_2 centered at deep hole.

Offset 0, canonical program `A038588.P5041427114804262842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4134 terms. -/
def A038588 (n : ℕ) : ℤ :=
  A038588.P5041427114804262842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4134 terms. -/
def A038588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038612.P8782522908365657208

`p?[A052406(n+1)]`
-/

namespace A038612.P8782522908365657208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038612.P8782522908365657208

noncomputable section

/-- A038612: Primes not containing the digit '4'.

Offset 1, canonical program `A038612.P8782522908365657208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A038612 (n : ℕ) : ℤ :=
  A038612.P8782522908365657208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A038612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043457.P3491725996769993334

`eq[1, A268643(A052406(n+1))]`
-/

namespace A043457.P3491725996769993334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043457.P3491725996769993334

noncomputable section

/-- A043457: Numbers having one 1 in base 9.

Offset 1, canonical program `A043457.P3491725996769993334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A043457 (n : ℕ) : ℤ :=
  (A043457.P3491725996769993334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A043457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043465.P15128784765198913118

`eq[1, A316864(A052406(n+1))]`
-/

namespace A043465.P15128784765198913118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043465.P15128784765198913118

noncomputable section

/-- A043465: Numbers having one 3 in base 9.

Offset 1, canonical program `A043465.P15128784765198913118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043465 (n : ℕ) : ℤ :=
  (A043465.P15128784765198913118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043704.P16846622284782655276

`A043669(n+1)%A022040(n)`
-/

namespace A043704.P16846622284782655276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043669 (n + 1)) (A022040 n)

end

end A043704.P16846622284782655276

noncomputable section

/-- A043704: Numbers whose base-15 representation has an even number of runs.

Offset 1, canonical program `A043704.P16846622284782655276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A043704 (n : ℕ) : ℤ :=
  A043704.P16846622284782655276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A043704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046080.P16111352627053334427

`A063014(n+1)-1`
-/

namespace A046080.P16111352627053334427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 (n + 1) - 1

end

end A046080.P16111352627053334427

noncomputable section

/-- A046080: a(n) is the number of integer-sided right triangles with hypotenuse n.

Offset 1, canonical program `A046080.P16111352627053334427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063014, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046080 (n : ℕ) : ℤ :=
  A046080.P16111352627053334427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063014, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046799.P14243968354502214682

`A322812(2*A000040(n+1))`
-/

namespace A046799.P14243968354502214682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (2 * A000040 (n + 1)).toNat

end

end A046799.P14243968354502214682

noncomputable section

/-- A046799: Number of distinct prime factors of 2^n+1.

Offset 0, canonical program `A046799.P14243968354502214682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A046799 (n : ℕ) : ℤ :=
  A046799.P14243968354502214682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A046799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046869.P14863698952860657542

`∪[A051634(n+1), A071680(n+1)]`
-/

namespace A046869.P14863698952860657542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046869.P14863698952860657542

noncomputable section

/-- A046869: Good primes (version 1): prime(n)^2 > prime(n-1)*prime(n+1).

Offset 1, canonical program `A046869.P14863698952860657542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046869 (n : ℕ) : ℤ :=
  (A046869.P14863698952860657542.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048672.P15831279191570922518

`A087207(A005117(n+1))`
-/

namespace A048672.P15831279191570922518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A005117 (n + 1)).toNat

end

end A048672.P15831279191570922518

noncomputable section

/-- A048672: Binary encoding of squarefree numbers (A005117): A048640(n)/2.

Offset 1, canonical program `A048672.P15831279191570922518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048672 (n : ℕ) : ℤ :=
  A048672.P15831279191570922518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048672.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051435.P15656665725533254418

`A029613(n)/2`
-/

namespace A051435.P15656665725533254418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029613 n : ℚ) / 2

end

end A051435.P15656665725533254418

noncomputable section

/-- A051435: (Terms in A029613)/2.

Offset 0, canonical program `A051435.P15656665725533254418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051435 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051435.P15656665725533254418.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059500.P3268541981243603628

`∩[A053176(n+1), A099184(n+2)]`
-/

namespace A059500.P3268541981243603628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P3268541981243603628

noncomputable section

/-- A059500: Primes p such that both q=(p-1)/2 and 2p + 1 = 4q + 3 are composite numbers. Intersection of A059456 and A053176.

Offset 1, canonical program `A059500.P3268541981243603628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8844 terms. -/
def A059500 (n : ℕ) : ℤ :=
  (A059500.P3268541981243603628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8844 terms. -/
def A059500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061395.P8431317036300486107

`A029837(A087207(n+1)+1)`
-/

namespace A061395.P8431317036300486107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A087207 (n + 1) + 1).toNat

end

end A061395.P8431317036300486107

noncomputable section

/-- A061395: Let p be the largest prime factor of n; if p is the k-th prime then set a(n) = k; a(1) = 0 by convention.

Offset 1, canonical program `A061395.P8431317036300486107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061395 (n : ℕ) : ℤ :=
  A061395.P8431317036300486107.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062506.P17612456515081535617

`comp[A062729(n+1)-1]+1`
-/

namespace A062506.P17612456515081535617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A062506.P17612456515081535617

noncomputable section

/-- A062506: Numbers divisible by at least one twin prime (A001097).

Offset 1, canonical program `A062506.P17612456515081535617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062506 (n : ℕ) : ℤ :=
  (A062506.P17612456515081535617.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062711.P2771895812179949619

`A228232(n+1)+A066490(n+1)`
-/

namespace A062711.P2771895812179949619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228232 (n + 1) + A066490 (n + 1)

end

end A062711.P2771895812179949619

noncomputable section

/-- A062711: Number of prime Gaussian integers z=a+bi with |z|<=n.

Offset 1, canonical program `A062711.P2771895812179949619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A062711 (n : ℕ) : ℤ :=
  A062711.P2771895812179949619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A062711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065503.P1374180502062588867

`filter[A020936(n+1), A100821(#)]`
-/

namespace A065503.P1374180502062588867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100821 (f1 j).toNat = 1) n)

end

end A065503.P1374180502062588867

noncomputable section

/-- A065503: Indices k of primes p(k) such that p(k) is in A060213.

Offset 1, canonical program `A065503.P1374180502062588867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A065503 (n : ℕ) : ℤ :=
  A065503.P1374180502062588867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A065503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067390.P7852969546694532174

`A322812(A138636(n+2))`
-/

namespace A067390.P7852969546694532174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (A138636 (n + 2)).toNat

end

end A067390.P7852969546694532174

noncomputable section

/-- A067390: Number of distinct prime factors in 2^n + 3.

Offset 1, canonical program `A067390.P7852969546694532174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A067390 (n : ℕ) : ℤ :=
  A067390.P7852969546694532174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A067390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067611.P11907712872118763159

`eq[1, A283265(6*n+5)]+1`
-/

namespace A067611.P11907712872118763159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067611.P11907712872118763159

noncomputable section

/-- A067611: Numbers of the form 6xy +- x +- y, where x, y are positive integers.

Offset 1, canonical program `A067611.P11907712872118763159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067611 (n : ℕ) : ℤ :=
  (A067611.P11907712872118763159.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067812.P12747793671398424527

`A176888(n+2)/2`
-/

namespace A067812.P12747793671398424527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176888 (n + 2) : ℚ) / 2

end

end A067812.P12747793671398424527

noncomputable section

/-- A067812: Nonprime n such that 2n+1 is prime.

Offset 1, canonical program `A067812.P12747793671398424527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A067812 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067812.P12747793671398424527.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A067812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071928.P9769688946254104002

`A001316(A284775(A008619(n))+A001316(n))`
-/

namespace A071928.P9769688946254104002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A284775 (A008619 n).toNat + A001316 n).toNat

end

end A071928.P9769688946254104002

noncomputable section

/-- A071928: Kolakoski-(2,4) sequence: a(n) is length of n-th run.

Offset 1, canonical program `A071928.P9769688946254104002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071928 (n : ℕ) : ℤ :=
  A071928.P9769688946254104002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075282.P5321928366413685694

`7*p?[A165298(n+1)]`
-/

namespace A075282.P5321928366413685694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075282.P5321928366413685694

noncomputable section

/-- A075282: Interprimes which are of the form s*prime, s=7.

Offset 1, canonical program `A075282.P5321928366413685694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A075282 (n : ℕ) : ℤ :=
  A075282.P5321928366413685694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A075282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079067.P15788458216202685682

`A080791(A087207(n+1))`
-/

namespace A079067.P15788458216202685682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A087207 (n + 1)).toNat

end

end A079067.P15788458216202685682

noncomputable section

/-- A079067: Number of primes less than greatest prime factor of n but not dividing n.

Offset 1, canonical program `A079067.P15788458216202685682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079067 (n : ℕ) : ℤ :=
  A079067.P15788458216202685682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079315.P17008954990513052788

`∑[A151921(n)]-A147562(A004526(n))`
-/

namespace A079315.P17008954990513052788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A147562 (A004526 n).toNat

end

end A079315.P17008954990513052788

noncomputable section

/-- A079315: Number of cells that change from OFF to ON at stage n of the cellular automaton described in A079317.

Offset 0, canonical program `A079315.P17008954990513052788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1468 terms. -/
def A079315 (n : ℕ) : ℤ :=
  A079315.P17008954990513052788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1468 terms. -/
def A079315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082078.P11842051904754166604

`p?[gcd(A127334(n+3), A157996(n+1))]`
-/

namespace A082078.P11842051904754166604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127334 (n + 3)) (A157996 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A082078.P11842051904754166604

noncomputable section

/-- A082078: Balanced primes of order three.

Offset 1, canonical program `A082078.P11842051904754166604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A082078 (n : ℕ) : ℤ :=
  (A082078.P11842051904754166604.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A082078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082582.P18330745961890820482

`A086581(abs(1-n))`
-/

namespace A082582.P18330745961890820482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 |1 - (n : ℤ)|.toNat

end

end A082582.P18330745961890820482

noncomputable section

/-- A082582: Expansion of (1 + x^2 - sqrt( 1 - 4*x + 2*x^2 + x^4)) / (2*x) in powers of x.

Offset 0, canonical program `A082582.P18330745961890820482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A082582 (n : ℕ) : ℤ :=
  A082582.P18330745961890820482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A082582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091593.P11314750629962600658

`-(A152681(n+1)/2)`
-/

namespace A091593.P11314750629962600658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A152681 (n + 1) : ℚ) / 2)

end

end A091593.P11314750629962600658

noncomputable section

/-- A091593: Reversion of Jacobsthal numbers A001045.

Offset 0, canonical program `A091593.P11314750629962600658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A091593 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091593.P11314750629962600658.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A091593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092059.P15242721470773266682

`p?[A092058(n+1)]`
-/

namespace A092059.P15242721470773266682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092059.P15242721470773266682

noncomputable section

/-- A092059: Primes in A092058.

Offset 0, canonical program `A092059.P15242721470773266682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A092059 (n : ℕ) : ℤ :=
  A092059.P15242721470773266682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A092059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104710.P7866798058621033882

`A349740((n-comp[∑[n]])²-comp[∑[n]])`
-/

namespace A104710.P7866798058621033882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349740 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)).toNat

end

end A104710.P7866798058621033882

noncomputable section

/-- A104710: Triangle read by rows: reversed partial sums of Narayana triangle rows.

Offset 1, canonical program `A104710.P7866798058621033882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104710 (n : ℕ) : ℤ :=
  A104710.P7866798058621033882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106483.P4961577248229509326

`A000040(A092058(n+1))`
-/

namespace A106483.P4961577248229509326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A092058 (n + 1)).toNat

end

end A106483.P4961577248229509326

noncomputable section

/-- A106483: Primes p such that 2*p^2 - 1 is also prime.

Offset 1, canonical program `A106483.P4961577248229509326`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092058, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106483 (n : ℕ) : ℤ :=
  A106483.P4961577248229509326.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092058, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107917.P17887768737804748010

`∑[A107965(n)]`
-/

namespace A107917.P17887768737804748010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107917.P17887768737804748010

noncomputable section

/-- A107917: a(n) = (n+1)(n+2)^2*(n+3)^3*(n+4)^2*(n+5)(n^2 + 6n + 10)/86400.

Offset 0, canonical program `A107917.P17887768737804748010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107917 (n : ℕ) : ℤ :=
  A107917.P17887768737804748010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126229.P16729156060540235766

`record[A000265(7*A165298(n+1))]`
-/

namespace A126229.P16729156060540235766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (7 * A165298 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126229.P16729156060540235766

noncomputable section

/-- A126229: Odd interprimes divisible by 7.

Offset 1, canonical program `A126229.P16729156060540235766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. -/
def A126229 (n : ℕ) : ℤ :=
  A126229.P16729156060540235766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. -/
def A126229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128583.P7488601789905684802

`A259895(3*n)`
-/

namespace A128583.P7488601789905684802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259895 (3 * n)

end

end A128583.P7488601789905684802

noncomputable section

/-- A128583: Expansion of chi(x) * psi(x^2) * phi(-x^6) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A128583.P7488601789905684802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128583 (n : ℕ) : ℤ :=
  A128583.P7488601789905684802.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128583.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132255.P14005809028749772227

`filter[A132239(n+1), A283265(#)]`
-/

namespace A132255.P14005809028749772227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A132255.P14005809028749772227

noncomputable section

/-- A132255: Isolated primes congruent to {17, 19} mod 30.

Offset 1, canonical program `A132255.P14005809028749772227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132255 (n : ℕ) : ℤ :=
  A132255.P14005809028749772227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153146.P7490805428586605407

`(A271347(n+1)+19)/2`
-/

namespace A153146.P7490805428586605407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271347 (n + 1) + 19 : ℚ) / 2

end

end A153146.P7490805428586605407

noncomputable section

/-- A153146: Numbers n such that 2*n + 19 and 2*n - 19 are prime.

Offset 1, canonical program `A153146.P7490805428586605407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153146 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A153146.P7490805428586605407.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155562.P8802644400243401487

`filter[A002479(n+1), A229062(#)]`
-/

namespace A155562.P8802644400243401487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A155562.P8802644400243401487

noncomputable section

/-- A155562: Intersection of A001481 and A002479: N = a^2 + b^2 = c^2 + 2d^2 for some integers a,b,c,d.

Offset 1, canonical program `A155562.P8802644400243401487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3067 terms. -/
def A155562 (n : ℕ) : ℤ :=
  A155562.P8802644400243401487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3067 terms. -/
def A155562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155564.P17453781957059509256

`filter[A002479(n+1), A353816(#)]`
-/

namespace A155564.P17453781957059509256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A155564.P17453781957059509256

noncomputable section

/-- A155564: Intersection of A002479 and A003136: N = a^2 + 2b^2 = c^2 + 3d^2 for some integers a,b,c,d.

Offset 1, canonical program `A155564.P17453781957059509256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A155564 (n : ℕ) : ℤ :=
  A155564.P17453781957059509256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. -/
def A155564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167707.P14412773003900474856

`eq[A283265(A093178(n)), A292438(n)]`
-/

namespace A167707.P14412773003900474856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (A093178 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167707.P14412773003900474856

noncomputable section

/-- A167707: The non-single or nonisolated numbers. The union of non-single (or nonisolated or twin) primes and non-single (or nonisolated) nonprimes.

Offset 1, canonical program `A167707.P14412773003900474856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167707 (n : ℕ) : ℤ :=
  (A167707.P14412773003900474856.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179443.P2342233495432170048

`filter[A153275(n+2), A005171(#)]`
-/

namespace A179443.P2342233495432170048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A179443.P2342233495432170048

noncomputable section

/-- A179443: Numbers m such that m and 10*m + 1 are both composites.

Offset 1, canonical program `A179443.P2342233495432170048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8693 terms. -/
def A179443 (n : ℕ) : ℤ :=
  A179443.P2342233495432170048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8693 terms. -/
def A179443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190432.P422911984236821990

`A190435(n+1)+A140398(n+1)`
-/

namespace A190432.P422911984236821990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190435 (n + 1) + A140398 (n + 1)

end

end A190432.P422911984236821990

noncomputable section

/-- A190432: Positions of 0 in A190431.

Offset 1, canonical program `A190432.P422911984236821990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190432 (n : ℕ) : ℤ :=
  A190432.P422911984236821990.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196499.P3306308880413504659

`comp[2*comp[A004613(n+1)]]`
-/

namespace A196499.P3306308880413504659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A196499.P3306308880413504659

noncomputable section

/-- A196499: Numbers k such that the greatest residue of the congruence x^k (mod k) equals k-1 for x in [0..k-1].

Offset 1, canonical program `A196499.P3306308880413504659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196499 (n : ℕ) : ℤ :=
  (A196499.P3306308880413504659.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199854.P12173923621709400113

`p?[2*A004613(n+1)+1]`
-/

namespace A199854.P12173923621709400113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004613 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199854.P12173923621709400113

noncomputable section

/-- A199854: Primes of the form 1 + m^2 + n^2 with gcd(m,n)=1.

Offset 1, canonical program `A199854.P12173923621709400113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1303 terms. -/
def A199854 (n : ℕ) : ℤ :=
  A199854.P12173923621709400113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1303 terms. -/
def A199854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203398.P16155668990834997632

`A216953(n+1)/(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A203398.P16155668990834997632
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216953 (n + 1) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ)

end

end A203398.P16155668990834997632

noncomputable section

/-- A203398: T(n,k), a triangular array read by rows, is the number of classes of equivalent 2-color n-bead necklaces (turning over is not allowed) that have k necklaces.

Offset 1, canonical program `A203398.P16155668990834997632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203398 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A203398.P16155668990834997632.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008440.P2695110526216161090

`A122854(2*n+1)/8`
-/

namespace A008440.P2695110526216161090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122854 (2 * n + 1) : ℚ) / 8

end

end A008440.P2695110526216161090

noncomputable section

/-- A008440: Expansion of Jacobi theta constant theta_2^6 /(64q^(3/2)).

Offset 0, canonical program `A008440.P2695110526216161090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A008440 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A008440.P2695110526216161090.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A008440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037901.P168157209653283931

`A037903(A037475(n))`
-/

namespace A037901.P168157209653283931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037903 (A037475 n).toNat

end

end A037901.P168157209653283931

noncomputable section

/-- A037901: a(n) = (greatest base 7 digit of n) - (least base 7 digit of n).

Offset 0, canonical program `A037901.P168157209653283931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A037901 (n : ℕ) : ℤ :=
  A037901.P168157209653283931.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A037901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037902.P1383739155493034329

`A037903(A037477(n))`
-/

namespace A037902.P1383739155493034329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037903 (A037477 n).toNat

end

end A037902.P1383739155493034329

noncomputable section

/-- A037902: a(n) = (greatest base 8 digit of n) - (least base 8 digit of n).

Offset 0, canonical program `A037902.P1383739155493034329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A037902 (n : ℕ) : ℤ :=
  A037902.P1383739155493034329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A037902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043288.P15133215866963869579

`Δ[A043669(n+2)]!!`
-/

namespace A043288.P15133215866963869579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043669 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A043288.P15133215866963869579

noncomputable section

/-- A043288: Maximal run length in base-14 representation of n.

Offset 1, canonical program `A043288.P15133215866963869579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A043288 (n : ℕ) : ℤ :=
  (A043288.P15133215866963869579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A043288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052227.P10261646260399004321

`A182584(2*n+1)`
-/

namespace A052227.P10261646260399004321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182584 (2 * n + 1)

end

end A052227.P10261646260399004321

noncomputable section

/-- A052227: a(n) = (4*n+1)*binomial(3*n,n)/(2*n+1).

Offset 0, canonical program `A052227.P10261646260399004321`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182584, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052227 (n : ℕ) : ℤ :=
  A052227.P10261646260399004321.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182584, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003959.P4118819690015594160

`∏{d}[n+1, A000203(A014963(#))]`
-/

namespace A003959.P4118819690015594160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000203 (A014963 d).toNat

end

end A003959.P4118819690015594160

noncomputable section

/-- A003959: If n = Product p(k)^e(k) then a(n) = Product (p(k)+1)^e(k), a(1) = 1.

Offset 1, canonical program `A003959.P4118819690015594160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003959 (n : ℕ) : ℤ :=
  A003959.P4118819690015594160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014200.P16970295702573526038

`A014198(n)/4`
-/

namespace A014200.P16970295702573526038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014198 n : ℚ) / 4

end

end A014200.P16970295702573526038

noncomputable section

/-- A014200: Number of solutions to x^2 + y^2 <= n, excluding (0,0), divided by 4.

Offset 0, canonical program `A014200.P16970295702573526038`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014200 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014200.P16970295702573526038.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014200.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048984.P11079844054509268560

`A048983(n+1)+1`
-/

namespace A048984.P11079844054509268560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048983 (n + 1) + 1

end

end A048984.P11079844054509268560

noncomputable section

/-- A048984: As n runs through composite numbers, a(n) = number of nonprime d < n such that gcd(d,n) = 1.

Offset 1, canonical program `A048984.P11079844054509268560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048984 (n : ℕ) : ℤ :=
  A048984.P11079844054509268560.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049092.P669335479257422354

`p?[A013929(n+1)+1]`
-/

namespace A049092.P669335479257422354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049092.P669335479257422354

noncomputable section

/-- A049092: Primes p such that p-1 is not squarefree.

Offset 1, canonical program `A049092.P669335479257422354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049092 (n : ℕ) : ℤ :=
  A049092.P669335479257422354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049735.P11014116182128311046

`A014198(A048147(n))+1`
-/

namespace A049735.P11014116182128311046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (A048147 n).toNat + 1

end

end A049735.P11014116182128311046

noncomputable section

/-- A049735: Array T(i,j) is the number of lattice points (x,y) in circle with radius (0,0)-to-(i,j), read by antidiagonals.

Offset 0, canonical program `A049735.P11014116182128311046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A049735 (n : ℕ) : ℤ :=
  A049735.P11014116182128311046.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A049735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054806.P7730590133723137314

`∩[A051634(n+1), A358530(n+1)]`
-/

namespace A054806.P7730590133723137314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054806.P7730590133723137314

noncomputable section

/-- A054806: Third term of strong prime quartets: prime(m+1)-prime(m) > prime(m+2)-prime(m+1) > prime(m+3)-prime(m+2).

Offset 1, canonical program `A054806.P7730590133723137314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A054806 (n : ℕ) : ℤ :=
  (A054806.P7730590133723137314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A054806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057655.P8142405424443184292

`A014198(n)+1`
-/

namespace A057655.P8142405424443184292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 n + 1

end

end A057655.P8142405424443184292

noncomputable section

/-- A057655: The circle problem: number of points (x,y) in square lattice with x^2 + y^2 <= n.

Offset 0, canonical program `A057655.P8142405424443184292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057655 (n : ℕ) : ℤ :=
  A057655.P8142405424443184292.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058980.P1253605902020111693

`∩[4*n, A005277(n+1)]`
-/

namespace A058980.P1253605902020111693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058980.P1253605902020111693

noncomputable section

/-- A058980: Positive numbers of form 4*k such that card(invphi(4*k)) = 0 (the nontotients congruent to 0 modulo 4).

Offset 1, canonical program `A058980.P1253605902020111693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9593 terms. -/
def A058980 (n : ℕ) : ℤ :=
  (A058980.P1253605902020111693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9593 terms. -/
def A058980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063933.P964808002848698662

`n+2-A063932(n+2)`
-/

namespace A063933.P964808002848698662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A063932 (n + 2)

end

end A063933.P964808002848698662

noncomputable section

/-- A063933: Difference between n and the average of largest prime less than or equal to n and smallest prime greater than or equal to n.

Offset 2, canonical program `A063933.P964808002848698662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063933 (n : ℕ) : ℤ :=
  A063933.P964808002848698662.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067911.P2708463265915343040

`∏{d}[n+1, A014963((n+1)/#)^#]`
-/

namespace A067911.P2708463265915343040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ d

end

end A067911.P2708463265915343040

noncomputable section

/-- A067911: Product of gcd(k,n) for 1 <= k <= n.

Offset 1, canonical program `A067911.P2708463265915343040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A067911 (n : ℕ) : ℤ :=
  A067911.P2708463265915343040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A067911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079667.P14511190976572101937

`A357259(n+1)-A038548(n+1)`
-/

namespace A079667.P14511190976572101937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357259 (n + 1) - A038548 (n + 1)

end

end A079667.P14511190976572101937

noncomputable section

/-- A079667: a(n) = (1/2) * Sum_{d divides n} abs(n/d-d).

Offset 1, canonical program `A079667.P14511190976572101937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079667 (n : ℕ) : ℤ :=
  A079667.P14511190976572101937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079695.P1401663240331411904

`A005277(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079695.P1401663240331411904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005277 (n + 1) : ℚ) / 2

end

end A079695.P1401663240331411904

noncomputable section

/-- A079695: Values never taken by phi(j)/2 for any j: a(n) = A005277(n)/2.

Offset 1, canonical program `A079695.P1401663240331411904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079695 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079695.P1401663240331411904.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079697.P17241016761379675189

`A000265(A005277(n+1))`
-/

namespace A079697.P17241016761379675189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005277 (n + 1)).toNat

end

end A079697.P17241016761379675189

noncomputable section

/-- A079697: Odd part of A005277(n).

Offset 1, canonical program `A079697.P17241016761379675189`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079697 (n : ℕ) : ℤ :=
  A079697.P17241016761379675189.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079697.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079700.P9994903105198230930

`A007814(A005277(n+1))`
-/

namespace A079700.P9994903105198230930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005277 (n + 1)).toNat

end

end A079700.P9994903105198230930

noncomputable section

/-- A079700: a(n) is the 2-adic valuation of the n-th even nontotient.

Offset 1, canonical program `A079700.P9994903105198230930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079700 (n : ℕ) : ℤ :=
  A079700.P9994903105198230930.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079700.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088763.P5308986329971701716

`A087695(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088763.P5308986329971701716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087695 (n + 1) : ℚ) / 2

end

end A088763.P5308986329971701716

noncomputable section

/-- A088763: a(n) = A087695(n)/2.

Offset 1, canonical program `A088763.P5308986329971701716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088763.P5308986329971701716.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104010.P5743034670165287868

`2*A087695(n+1)`
-/

namespace A104010.P5743034670165287868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087695 (n + 1)

end

end A104010.P5743034670165287868

noncomputable section

/-- A104010: Sum of two successive sexy primes.

Offset 1, canonical program `A104010.P5743034670165287868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104010 (n : ℕ) : ℤ :=
  A104010.P5743034670165287868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104037.P1539951715812000058

`A168141(A087695(n+1))`
-/

namespace A104037.P1539951715812000058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (A087695 (n + 1)).toNat

end

end A104037.P1539951715812000058

noncomputable section

/-- A104037: Numbers of primes between two sexy primes.

Offset 1, canonical program `A104037.P1539951715812000058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 693 terms. -/
def A104037 (n : ℕ) : ℤ :=
  A104037.P1539951715812000058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 693 terms. -/
def A104037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106405.P14402904271098237239

`A086971(n+1)-A106404(n+1)`
-/

namespace A106405.P14402904271098237239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) - A106404 (n + 1)

end

end A106405.P14402904271098237239

noncomputable section

/-- A106405: Number of odd semiprimes dividing n.

Offset 1, canonical program `A106405.P14402904271098237239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106405 (n : ℕ) : ℤ :=
  A106405.P14402904271098237239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113534.P9830766477136848255

`∑{#}[n, A092782(#+1)^A092782(n+1-#)]`
-/

namespace A113534.P9830766477136848255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A092782 (k + 1) : ℚ) ^ (A092782 (n + 1 - k) : ℤ)

end

end A113534.P9830766477136848255

noncomputable section

/-- A113534: Ascending descending base exponent transform of the flipped tribonacci substitution (A092782).

Offset 1, canonical program `A113534.P9830766477136848255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092782, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113534 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113534.P9830766477136848255.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092782, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113534.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113544.P4237946756288578196

`∩[A113543(n+1), A113545(n+1)]`
-/

namespace A113544.P4237946756288578196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113544.P4237946756288578196

noncomputable section

/-- A113544: Numbers simultaneously pentagon-free, squarefree and triangle-free.

Offset 1, canonical program `A113544.P4237946756288578196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 750 terms. -/
def A113544 (n : ℕ) : ℤ :=
  (A113544.P4237946756288578196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 750 terms. -/
def A113544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127436.P14963163916458495622

`(A127435(n+1)-1)²+1`
-/

namespace A127436.P14963163916458495622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127435 (n + 1) - 1) ^ 2 + 1

end

end A127436.P14963163916458495622

noncomputable section

/-- A127436: Primes associated with A127435.

Offset 1, canonical program `A127436.P14963163916458495622`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127435, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127436 (n : ℕ) : ℤ :=
  A127436.P14963163916458495622.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127435, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127436.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130800.P624148309857847893

`floor(A104163(n+1)/3)`
-/

namespace A130800.P624148309857847893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104163 (n + 1) : ℚ) / 3⌋

end

end A130800.P624148309857847893

noncomputable section

/-- A130800: Numbers k such that both 2k+1 and 3k+1 are primes.

Offset 1, canonical program `A130800.P624148309857847893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130800 (n : ℕ) : ℤ :=
  A130800.P624148309857847893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134013.P3057946440017959852

`(-1)^n*A112301(n+1)`
-/

namespace A134013.P3057946440017959852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112301 (n + 1)

end

end A134013.P3057946440017959852

noncomputable section

/-- A134013: Expansion of q * phi(q) * psi(q^8) in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A134013.P3057946440017959852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134013 (n : ℕ) : ℤ :=
  A134013.P3057946440017959852.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147807.P3053565621181724089

`n+1+A147806(n+1)`
-/

namespace A147807.P3053565621181724089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A147806 (n + 1)

end

end A147807.P3053565621181724089

noncomputable section

/-- A147807: Partial sums of A147810(n) = tau(n^2 + 1)/2.

Offset 1, canonical program `A147807.P3053565621181724089`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147807 (n : ℕ) : ℤ :=
  A147807.P3053565621181724089.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162909.P4760727200634389971

`A002487(A059893(A258746(n+1)))`
-/

namespace A162909.P4760727200634389971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A059893 (A258746 (n + 1)).toNat).toNat

end

end A162909.P4760727200634389971

noncomputable section

/-- A162909: Numerators of Bird tree fractions.

Offset 1, canonical program `A162909.P4760727200634389971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162909 (n : ℕ) : ℤ :=
  A162909.P4760727200634389971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162910.P10176663424386777526

`A002487(1+A059893(A258746(n+1)))`
-/

namespace A162910.P10176663424386777526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A059893 (A258746 (n + 1)).toNat).toNat

end

end A162910.P10176663424386777526

noncomputable section

/-- A162910: Denominators of Bird tree fractions.

Offset 1, canonical program `A162910.P10176663424386777526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162910 (n : ℕ) : ℤ :=
  A162910.P10176663424386777526.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176819.P9087001782378007283

`Δ[A085986(n+1)]`
-/

namespace A176819.P9087001782378007283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176819.P9087001782378007283

noncomputable section

/-- A176819: Distances between terms in A085986.

Offset 1, canonical program `A176819.P9087001782378007283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A176819 (n : ℕ) : ℤ :=
  A176819.P9087001782378007283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A176819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179485.P14706537653666994913

`∩[A087695(n+1), A323139(n+1)]`
-/

namespace A179485.P14706537653666994913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179485.P14706537653666994913

noncomputable section

/-- A179485: Sums of two successive primes s such that s+-3 are primes.

Offset 1, canonical program `A179485.P14706537653666994913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A179485 (n : ℕ) : ℤ :=
  (A179485.P14706537653666994913.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A179485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183097.P3908447792888475748

`∑{d}[n+1, #*A112526(#)]`
-/

namespace A183097.P3908447792888475748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A112526 d

end

end A183097.P3908447792888475748

noncomputable section

/-- A183097: a(n) = sum of powerful divisors d (including 1) of n.

Offset 1, canonical program `A183097.P3908447792888475748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183097 (n : ℕ) : ℤ :=
  A183097.P3908447792888475748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185670.P7671735460308608982

`A100613(n+1)-A063985(n+1)`
-/

namespace A185670.P7671735460308608982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100613 (n + 1) - A063985 (n + 1)

end

end A185670.P7671735460308608982

noncomputable section

/-- A185670: Number of pairs (x,y) with 1 <= x < y <= n with at least one common factor.

Offset 1, canonical program `A185670.P7671735460308608982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185670 (n : ℕ) : ℤ :=
  A185670.P7671735460308608982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189991.P280947877882391651

`A085986(n+1)²`
-/

namespace A189991.P280947877882391651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1) ^ 2

end

end A189991.P280947877882391651

noncomputable section

/-- A189991: Numbers with prime factorization p^4*q^4.

Offset 1, canonical program `A189991.P280947877882391651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189991 (n : ℕ) : ℤ :=
  A189991.P280947877882391651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190276.P1290073502243581009

`(A066692(n+1)+1)/2`
-/

namespace A190276.P1290073502243581009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066692 (n + 1) + 1 : ℚ) / 2

end

end A190276.P1290073502243581009

noncomputable section

/-- A190276: Numbers k such that tau(2k-1) = tau(2k+1) where tau(k) = A000005(k).

Offset 1, canonical program `A190276.P1290073502243581009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190276 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A190276.P1290073502243581009.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190276.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193583.P1735472173273638827

`Δ[2*A147806(n+1)]+1`
-/

namespace A193583.P1735472173273638827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A193583.P1735472173273638827

noncomputable section

/-- A193583: Number of fixed points under iteration of sum of squares of digits in base b.

Offset 2, canonical program `A193583.P1735472173273638827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A193583 (n : ℕ) : ℤ :=
  A193583.P1735472173273638827.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A193583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199918.P12463137671005930238

`A178902(n)%2`
-/

namespace A199918.P12463137671005930238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178902 n) 2

end

end A199918.P12463137671005930238

noncomputable section

/-- A199918: Expansion of false theta series variation of Euler's pentagonal number series in powers of x.

Offset 0, canonical program `A199918.P12463137671005930238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199918 (n : ℕ) : ℤ :=
  A199918.P12463137671005930238.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200214.P8720410556555359477

`6*A122180(n+1)`
-/

namespace A200214.P8720410556555359477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A122180 (n + 1)

end

end A200214.P8720410556555359477

noncomputable section

/-- A200214: Ordered factorizations of n with 3 distinct parts, all > 1.

Offset 1, canonical program `A200214.P8720410556555359477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122180, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A200214 (n : ℕ) : ℤ :=
  A200214.P8720410556555359477.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122180, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A200214.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006872.P9526046772509008616

`record[(n+1)*A353637(n+1)]`
-/

namespace A006872.P9526046772509008616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006872.P9526046772509008616

noncomputable section

/-- A006872: Numbers k such that phi(k) = phi(sigma(k)).

Offset 1, canonical program `A006872.P9526046772509008616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A006872 (n : ℕ) : ℤ :=
  A006872.P9526046772509008616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A006872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007306.P17183682227013142410

`a(A003602(n-1))+a(A003602(n))` with `a(0)=1, a(1)=1`
-/

namespace A007306.P17183682227013142410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A003602 (n - 1)).toNat + a (A003602 n).toNat

end

end A007306.P17183682227013142410

noncomputable section

/-- A007306: Denominators of Farey tree fractions (i.e., the Stern-Brocot subtree in the range [0,1]).

Offset 0, canonical program `A007306.P17183682227013142410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007306 (n : ℕ) : ℤ :=
  (A007306.P17183682227013142410.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007306.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007706.P7962893497832790206

`A000007(n)+1-A257628(n)`
-/

namespace A007706.P7962893497832790206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A257628 n)

end

end A007706.P7962893497832790206

noncomputable section

/-- A007706: a(n) = 1 + coefficient of x^n in Product_{k>=1} (1-x^k) (essentially the expansion of the Dedekind function eta(x)).

Offset 0, canonical program `A007706.P7962893497832790206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. -/
def A007706 (n : ℕ) : ℤ :=
  A007706.P7962893497832790206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. -/
def A007706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036552.P7268647553509840710

`A003602(A081706(n+1))`
-/

namespace A036552.P7268647553509840710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A081706 (n + 1)).toNat

end

end A036552.P7268647553509840710

noncomputable section

/-- A036552: List of pairs (m,2m) where m is the least unused positive number.

Offset 1, canonical program `A036552.P7268647553509840710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A036552 (n : ℕ) : ℤ :=
  A036552.P7268647553509840710.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A036552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047679.P9593727126234668791

`A002487(1+A059893(n+1))`
-/

namespace A047679.P9593727126234668791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A059893 (n + 1)).toNat

end

end A047679.P9593727126234668791

noncomputable section

/-- A047679: Denominators in full Stern-Brocot tree.

Offset 0, canonical program `A047679.P9593727126234668791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A047679 (n : ℕ) : ℤ :=
  A047679.P9593727126234668791.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A047679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048111.P6696636643899640312

`filter[A013929(n+1), A380454(#)]`
-/

namespace A048111.P6696636643899640312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P6696636643899640312

noncomputable section

/-- A048111: Number of unitary divisors of n (A034444) < number of non-unitary divisors of n (A048105).

Offset 1, canonical program `A048111.P6696636643899640312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048111 (n : ℕ) : ℤ :=
  A048111.P6696636643899640312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049776.P14768317238781565942

`A030109(eq[n+1, A059893(n+1)]+1)+1`
-/

namespace A049776.P14768317238781565942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A049776.P14768317238781565942

noncomputable section

/-- A049776: Triangular array T read by rows: n-th row consists of fixed points, k, of n-th row of array t given by A049773; i.e., t(n, t(n,k)) = t(n,k).

Offset 1, canonical program `A049776.P14768317238781565942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A049776 (n : ℕ) : ℤ :=
  A049776.P14768317238781565942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A049776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051002.P11635871298119985317

`A081864(A003602(n+1))`
-/

namespace A051002.P11635871298119985317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081864 (A003602 (n + 1)).toNat

end

end A051002.P11635871298119985317

noncomputable section

/-- A051002: Sum of 5th powers of odd divisors of n.

Offset 1, canonical program `A051002.P11635871298119985317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051002 (n : ℕ) : ℤ :=
  A051002.P11635871298119985317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053149.P4125189005957149122

`(n+1)*A048798(n+1)`
-/

namespace A053149.P4125189005957149122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048798 (n + 1)

end

end A053149.P4125189005957149122

noncomputable section

/-- A053149: Smallest cube divisible by n.

Offset 1, canonical program `A053149.P4125189005957149122`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053149 (n : ℕ) : ℤ :=
  A053149.P4125189005957149122.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048798, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053149.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056551.P2444650009454942186

`A048798(n+1)*A050985(n+1)`
-/

namespace A056551.P2444650009454942186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (n + 1) * A050985 (n + 1)

end

end A056551.P2444650009454942186

noncomputable section

/-- A056551: Smallest cube divisible by n divided by largest cube which divides n.

Offset 1, canonical program `A056551.P2444650009454942186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048798, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056551 (n : ℕ) : ℤ :=
  A056551.P2444650009454942186.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048798, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057114.P12230823795797694149

`A059893(A065259(A059893(n+1)))`
-/

namespace A057114.P12230823795797694149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065259 (A059893 (n + 1)).toNat).toNat

end

end A057114.P12230823795797694149

noncomputable section

/-- A057114: Permutation of N induced by the order-preserving permutation of the rational numbers (x -> x+1); positions in Stern-Brocot tree.

Offset 1, canonical program `A057114.P12230823795797694149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6144 terms. -/
def A057114 (n : ℕ) : ℤ :=
  A057114.P12230823795797694149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6144 terms. -/
def A057114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057115.P14789950930496132244

`A059893(A065260(A059893(n+1)))`
-/

namespace A057115.P14789950930496132244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065260 (A059893 (n + 1)).toNat).toNat

end

end A057115.P14789950930496132244

noncomputable section

/-- A057115: Order-preserving permutation of the rational numbers (x -> x-1); positions in Stern-Brocot tree.

Offset 1, canonical program `A057115.P14789950930496132244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A057115 (n : ℕ) : ℤ :=
  A057115.P14789950930496132244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A057115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066691.P12764247508307257723

`A000005(A066692(n+1))`
-/

namespace A066691.P12764247508307257723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A066692 (n + 1)).toNat

end

end A066691.P12764247508307257723

noncomputable section

/-- A066691: Value of tau(2n-1) when tau(2n-1) = tau(2n+1).

Offset 1, canonical program `A066691.P12764247508307257723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066691 (n : ℕ) : ℤ :=
  A066691.P12764247508307257723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067831.P7446926115698763501

`A172988(n+1)+A000038(n)`
-/

namespace A067831.P7446926115698763501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 1) + A000038 n

end

end A067831.P7446926115698763501

noncomputable section

/-- A067831: Primes p such that sigma(p-6) < p.

Offset 1, canonical program `A067831.P7446926115698763501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067831 (n : ℕ) : ℤ :=
  A067831.P7446926115698763501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071785.P13852867602320339478

`∏{d}[n+1, A007953(A014963(#))]`
-/

namespace A071785.P13852867602320339478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007953 (A014963 d).toNat

end

end A071785.P13852867602320339478

noncomputable section

/-- A071785: In prime factorization of n replace each prime with the sum of its decimal digits.

Offset 1, canonical program `A071785.P13852867602320339478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071785 (n : ℕ) : ℤ :=
  A071785.P13852867602320339478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074173.P5413134121168354343

`∩[A054753(n+1)-2, A054753(n+1)]`
-/

namespace A074173.P5413134121168354343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074173.P5413134121168354343

noncomputable section

/-- A074173: Numbers n such that n and n+2 are of the form p^2*q where p and q are distinct primes.

Offset 1, canonical program `A074173.P5413134121168354343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A074173 (n : ℕ) : ℤ :=
  (A074173.P5413134121168354343.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A074173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080258.P17237642647837230985

`∪[A030514(n+1), A054753(n+1)]`
-/

namespace A080258.P17237642647837230985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080258.P17237642647837230985

noncomputable section

/-- A080258: Either 4th power of a prime, or product of a prime and the square of a different prime.

Offset 1, canonical program `A080258.P17237642647837230985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080258 (n : ℕ) : ℤ :=
  (A080258.P17237642647837230985.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080541.P6940438194727065998

`A059893(A080542(A059893(n+1)))`
-/

namespace A080541.P6940438194727065998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A080542 (A059893 (n + 1)).toNat).toNat

end

end A080541.P6940438194727065998

noncomputable section

/-- A080541: In binary representation: keep the first digit and left-rotate the others.

Offset 1, canonical program `A080541.P6940438194727065998`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A080542, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080541 (n : ℕ) : ℤ :=
  A080541.P6940438194727065998.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A080542, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080541.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080843.P14729485223719297457

`A092782(n+1)-1`
-/

namespace A080843.P14729485223719297457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1) - 1

end

end A080843.P14729485223719297457

noncomputable section

/-- A080843: Tribonacci word: limit S(infinity), where S(0) = 0, S(1) = 0,1, S(2) = 0,1,0,2 and for n >= 0, S(n+3) = S(n+2) S(n+1) S(n).

Offset 0, canonical program `A080843.P14729485223719297457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092782, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080843 (n : ℕ) : ℤ :=
  A080843.P14729485223719297457.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092782, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086818.P1086937972700070229

`∩[A052217(n+1), A077813(n+1)]`
-/

namespace A086818.P1086937972700070229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086818.P1086937972700070229

noncomputable section

/-- A086818: a(1) = 111, a(n) = the smallest squarefree number > a(n-1) which contains all the digits of a(n-1).

Offset 1, canonical program `A086818.P1086937972700070229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A086818 (n : ℕ) : ℤ :=
  (A086818.P1086937972700070229.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A086818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087244.P11901955224837126207

`filter[A013929(n+1), A294934(#)]`
-/

namespace A087244.P11901955224837126207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A087244.P11901955224837126207

noncomputable section

/-- A087244: Nonsquarefree deficient numbers.

Offset 1, canonical program `A087244.P11901955224837126207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087244 (n : ℕ) : ℤ :=
  A087244.P11901955224837126207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087321.P1047644682119853361

`lcm(A048798(n+1), A066638(n+1))`
-/

namespace A087321.P1047644682119853361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048798 (n + 1)) (A066638 (n + 1))

end

end A087321.P1047644682119853361

noncomputable section

/-- A087321: Smallest multiple of n which is a perfect power (at least a square) of a squarefree number.

Offset 1, canonical program `A087321.P1047644682119853361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087321 (n : ℕ) : ℤ :=
  (A087321.P1047644682119853361.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108918.P4680511258930153550

`A339451(A055938(n+1)-1)`
-/

namespace A108918.P4680511258930153550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 (A055938 (n + 1) - 1).toNat

end

end A108918.P4680511258930153550

noncomputable section

/-- A108918: Reversed binary words in reversed lexicographic order.

Offset 1, canonical program `A108918.P4680511258930153550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A108918 (n : ℕ) : ℤ :=
  A108918.P4680511258930153550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A108918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112603.P10073116027546116725

`A002325(8*n+1)`
-/

namespace A112603.P10073116027546116725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (8 * n + 1)

end

end A112603.P10073116027546116725

noncomputable section

/-- A112603: Number of representations of n as the sum of a square and a triangular number.

Offset 0, canonical program `A112603.P10073116027546116725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112603 (n : ℕ) : ℤ :=
  A112603.P10073116027546116725.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115945.P7684042128696424024

`eq[0, A115944(n)]`
-/

namespace A115945.P7684042128696424024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115944 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115945.P7684042128696424024

noncomputable section

/-- A115945: Numbers that cannot be written as a sum of distinct factorials.

Offset 1, canonical program `A115945.P7684042128696424024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9873 terms. -/
def A115945 (n : ℕ) : ℤ :=
  (A115945.P7684042128696424024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9873 terms. -/
def A115945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117303.P10725081724367424361

`(2*A001511(n+1)-1)*2^(A003602(n+1)-1)`
-/

namespace A117303.P10725081724367424361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001511 (n + 1) - 1 : ℚ) * (2 : ℚ) ^ (A003602 (n + 1) - 1 : ℤ)

end

end A117303.P10725081724367424361

noncomputable section

/-- A117303: Self-inverse permutation of the natural numbers based on the bijection (2*x-1)*2^(y-1) <--> (2*y-1)*2^(x-1).

Offset 1, canonical program `A117303.P10725081724367424361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117303 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117303.P10725081724367424361.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117303.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125096.P3255662404427325146

`Δ[A098180(n)]*A002325(n+1)`
-/

namespace A125096.P3255662404427325146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002325 (n + 1)

end

end A125096.P3255662404427325146

noncomputable section

/-- A125096: Expansion of -1 + (phi(q) * phi(q^2) + phi(-q^2) * phi(q^4)) / 2 in powers of q.

Offset 1, canonical program `A125096.P3255662404427325146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125096 (n : ℕ) : ℤ :=
  A125096.P3255662404427325146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129134.P13727256071399545709

`A002325(n+1)*(-1)^floor(n/2)`
-/

namespace A129134.P13727256071399545709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002325 (n + 1) : ℚ) * (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A129134.P13727256071399545709

noncomputable section

/-- A129134: Expansion of (1 - phi(-q) * phi(-q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A129134.P13727256071399545709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129134 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A129134.P13727256071399545709.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131962.P10633637517023814369

`A121361(2*n)`
-/

namespace A131962.P10633637517023814369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 (2 * n)

end

end A131962.P10633637517023814369

noncomputable section

/-- A131962: Expansion of psi(x) * phi(-x^12) / chi(-x^4) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A131962.P10633637517023814369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A131962 (n : ℕ) : ℤ :=
  A131962.P10633637517023814369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A131962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131964.P13799590537725457977

`A121361(Δ[n²])`
-/

namespace A131964.P13799590537725457977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A131964.P13799590537725457977

noncomputable section

/-- A131964: Expansion of f(x^2, x^10) / f(x, x^3) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A131964.P13799590537725457977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A131964 (n : ℕ) : ℤ :=
  A131964.P13799590537725457977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A131964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132223.P12674158164123128083

`A003602(A054429(n+1))`
-/

namespace A132223.P12674158164123128083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A054429 (n + 1)).toNat

end

end A132223.P12674158164123128083

noncomputable section

/-- A132223: A dense infinitive sequence.

Offset 1, canonical program `A132223.P12674158164123128083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8190 terms. -/
def A132223 (n : ℕ) : ℤ :=
  A132223.P12674158164123128083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8190 terms. -/
def A132223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133693.P6160581750214965149

`(-1)^n*A002325(n+1)`
-/

namespace A133693.P6160581750214965149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002325 (n + 1)

end

end A133693.P6160581750214965149

noncomputable section

/-- A133693: Expansion of (1 - phi(-q) * phi(q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A133693.P6160581750214965149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133693 (n : ℕ) : ℤ :=
  A133693.P6160581750214965149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139706.P7146315137343878535

`A003602(n+1)+A092323(n+1)`
-/

namespace A139706.P7146315137343878535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + A092323 (n + 1)

end

end A139706.P7146315137343878535

noncomputable section

/-- A139706: Take n in binary. Rotate the binary digits to the right until a 1 once again appears as the leftmost digit. Convert back into decimal for a(n).

Offset 1, canonical program `A139706.P7146315137343878535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139706 (n : ℕ) : ℤ :=
  A139706.P7146315137343878535.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139706.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140265.P1410062122565116902

`A140263(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140265.P1410062122565116902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140263 n + 1

end

end A140265.P1410062122565116902

noncomputable section

/-- A140265: Permutation of natural numbers: a(n) = A140263(n-1)+1.

Offset 1, canonical program `A140265.P1410062122565116902`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140265 (n : ℕ) : ℤ :=
  A140265.P1410062122565116902.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140728.P15054832237717628178

`(2-A001511(n+1))*A121362(n+1)`
-/

namespace A140728.P15054832237717628178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A001511 (n + 1)) * A121362 (n + 1)

end

end A140728.P15054832237717628178

noncomputable section

/-- A140728: Expansion of (phi(-q^3) * phi(-q^5) - phi(-q) * phi(-q^15)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A140728.P15054832237717628178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140728 (n : ℕ) : ℤ :=
  A140728.P15054832237717628178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152010.P5083475496821367649

`A007953(A127335(n+1))`
-/

namespace A152010.P5083475496821367649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A127335 (n + 1)).toNat

end

end A152010.P5083475496821367649

noncomputable section

/-- A152010: Sum of digits of A127335(n).

Offset 1, canonical program `A152010.P5083475496821367649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A127335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A152010 (n : ℕ) : ℤ :=
  A152010.P5083475496821367649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A127335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A152010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153209.P6773077896277111664

`∩[A065966(n+1), A269844(n+1)]`
-/

namespace A153209.P6773077896277111664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P6773077896277111664

noncomputable section

/-- A153209: Primes of the form 2*p+1 where p is prime and p+1 is squarefree.

Offset 1, canonical program `A153209.P6773077896277111664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A153209 (n : ℕ) : ℤ :=
  (A153209.P6773077896277111664.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A153209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179694.P2135230186693000708

`A054753(n+1)^3`
-/

namespace A179694.P2135230186693000708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1) ^ 3

end

end A179694.P2135230186693000708

noncomputable section

/-- A179694: Numbers of the form p^6*q^3 where p and q are distinct primes.

Offset 1, canonical program `A179694.P2135230186693000708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179694 (n : ℕ) : ℤ :=
  A179694.P2135230186693000708.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181988.P6768559129986484408

`A001511(n+1)*A003602(n+1)`
-/

namespace A181988.P6768559129986484408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A003602 (n + 1)

end

end A181988.P6768559129986484408

noncomputable section

/-- A181988: If n is odd, a(n) = (n+1)/2; if n is even, a(n) = a(n/2) + A003602(n).

Offset 1, canonical program `A181988.P6768559129986484408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181988 (n : ℕ) : ℤ :=
  A181988.P6768559129986484408.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186742.P13904402004995400067

`ceil(A257628(n+1)/2)`
-/

namespace A186742.P13904402004995400067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A257628 (n + 1) : ℚ) / 2⌉

end

end A186742.P13904402004995400067

noncomputable section

/-- A186742: Expansion of f(x, x^11) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A186742.P13904402004995400067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186742 (n : ℕ) : ℤ :=
  A186742.P13904402004995400067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189988.P7148530891049410471

`A054753(n+1)²`
-/

namespace A189988.P7148530891049410471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1) ^ 2

end

end A189988.P7148530891049410471

noncomputable section

/-- A189988: Numbers with prime factorization p^2*q^4.

Offset 1, canonical program `A189988.P7148530891049410471`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189988 (n : ℕ) : ℤ :=
  A189988.P7148530891049410471.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194370.P18385211741053095968

`lt[A190763(A003602(n+1)), A001952(n+1)]`
-/

namespace A194370.P18385211741053095968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190763 (A003602 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194370.P18385211741053095968

noncomputable section

/-- A194370: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) > 0, where r=sqrt(2) and < > denotes fractional part.

Offset 1, canonical program `A194370.P18385211741053095968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3169 terms. -/
def A194370 (n : ℕ) : ℤ :=
  (A194370.P18385211741053095968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3169 terms. -/
def A194370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209268.P13650169059364209089

`A000217(A007814(n+1)+A003602(n+1))-A007814(n+1)`
-/

namespace A209268.P13650169059364209089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007814 (n + 1) + A003602 (n + 1)).toNat - A007814 (n + 1)

end

end A209268.P13650169059364209089

noncomputable section

/-- A209268: Inverse permutation A054582.

Offset 1, canonical program `A209268.P13650169059364209089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209268 (n : ℕ) : ℤ :=
  A209268.P13650169059364209089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014612.P5035219895023979827

`eq[4, A318473(n+1)+1]+1`
-/

namespace A014612.P5035219895023979827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014612.P5035219895023979827

noncomputable section

/-- A014612: Numbers that are the product of exactly three (not necessarily distinct) primes.

Offset 1, canonical program `A014612.P5035219895023979827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014612 (n : ℕ) : ℤ :=
  (A014612.P5035219895023979827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022340.P3334581410869230776

`A003714(A022342(n+1))`
-/

namespace A022340.P3334581410869230776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A022342 (n + 1)).toNat

end

end A022340.P3334581410869230776

noncomputable section

/-- A022340: Even Fibbinary numbers (A003714); also a(n) = 2*Fibbinary(n).

Offset 0, canonical program `A022340.P3334581410869230776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022340 (n : ℕ) : ℤ :=
  A022340.P3334581410869230776.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022341.P2847779761458071812

`4*A003714(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022341.P2847779761458071812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003714 n + 1

end

end A022341.P2847779761458071812

noncomputable section

/-- A022341: a(n) = 4*A003714(n) + 1; the odd Fibbinary numbers.

Offset 0, canonical program `A022341.P2847779761458071812`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022341 (n : ℕ) : ℤ :=
  A022341.P2847779761458071812.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030515.P12955825658277504300

`∪[A050997(n+1), A054753(n+1)]`
-/

namespace A030515.P12955825658277504300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030515.P12955825658277504300

noncomputable section

/-- A030515: Numbers with exactly 6 divisors.

Offset 1, canonical program `A030515.P12955825658277504300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030515 (n : ℕ) : ℤ :=
  (A030515.P12955825658277504300.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033987.P14627502685973143685

`lt[3, A318473(n+1)]+1`
-/

namespace A033987.P14627502685973143685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033987.P14627502685973143685

noncomputable section

/-- A033987: Numbers that are divisible by at least 4 primes (counted with multiplicity).

Offset 1, canonical program `A033987.P14627502685973143685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033987 (n : ℕ) : ℤ :=
  (A033987.P14627502685973143685.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037143.P1526375851961906888

`lt[A318473(n+1), 3]+1`
-/

namespace A037143.P1526375851961906888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037143.P1526375851961906888

noncomputable section

/-- A037143: Numbers with at most 2 prime factors (counted with multiplicity).

Offset 1, canonical program `A037143.P1526375851961906888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037143 (n : ℕ) : ℤ :=
  (A037143.P1526375851961906888.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043690.P9881906805821544190

`floor(A043576(n+1)/2)`
-/

namespace A043690.P9881906805821544190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043576 (n + 1) : ℚ) / 2⌋

end

end A043690.P9881906805821544190

noncomputable section

/-- A043690: a(n) = (s(n)-1)/2, where s(n) is the n-th number whose base-2 representation has exactly 9 runs.

Offset 1, canonical program `A043690.P9881906805821544190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043690 (n : ℕ) : ℤ :=
  A043690.P9881906805821544190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043747.P17577112197279114772

`∪[A043576(n+1), A126646(n)]`
-/

namespace A043747.P17577112197279114772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A043747.P17577112197279114772

noncomputable section

/-- A043747: Numbers n such that number of runs in the base 2 representation of n is congruent to 1 mod 8.

Offset 1, canonical program `A043747.P17577112197279114772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043747 (n : ℕ) : ℤ :=
  (A043747.P17577112197279114772.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048297.P13500270705688942977

`3*A003714(n)+1`
-/

namespace A048297.P13500270705688942977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003714 n + 1

end

end A048297.P13500270705688942977

noncomputable section

/-- A048297: Coefficients in power series expansion over GF(2)[ X^(-1) ] of continued fraction [ 0, X, X^2, X^4, X^8, X^16, ... ].

Offset 0, canonical program `A048297.P13500270705688942977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048297 (n : ℕ) : ℤ :=
  A048297.P13500270705688942977.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048297.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050223.P13683550059284488781

`A007953(A019506(n+1))`
-/

namespace A050223.P13683550059284488781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A019506 (n + 1)).toNat

end

end A050223.P13683550059284488781

noncomputable section

/-- A050223: Digit sums of hoax numbers A019506.

Offset 1, canonical program `A050223.P13683550059284488781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A019506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050223 (n : ℕ) : ℤ :=
  A050223.P13683550059284488781.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A019506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050223.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050411.P10996565108960123335

`((n+4)*A072062(n+1))%(2*n+7)`
-/

namespace A050411.P10996565108960123335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 4 : ℤ) * A072062 (n + 1)) (2 * n + 7 : ℤ)

end

end A050411.P10996565108960123335

noncomputable section

/-- A050411: Analog of 3x+1 function.

Offset 1, canonical program `A050411.P10996565108960123335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050411 (n : ℕ) : ℤ :=
  A050411.P10996565108960123335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060138.P11251087805116196023

`A006257(A003714(n))+A003714(n)`
-/

namespace A060138.P11251087805116196023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A003714 n).toNat + A003714 n

end

end A060138.P11251087805116196023

noncomputable section

/-- A060138: Ordered set S defined by these rules: 0 and 2 are in S and if x is a nonzero number in S, then 2x-1 and 4x are in S.

Offset 0, canonical program `A060138.P11251087805116196023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A060138 (n : ℕ) : ℤ :=
  A060138.P11251087805116196023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A060138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060140.P10089229504658294474

`A005836(A003714(n)+1)`
-/

namespace A060140.P10089229504658294474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A003714 n + 1).toNat

end

end A060140.P10089229504658294474

noncomputable section

/-- A060140: Ordered set S defined by these rules: 0 and 1 are in S and if x is a nonzero number in S, then 3x and 9x+1 are in S.

Offset 0, canonical program `A060140.P10089229504658294474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060140 (n : ℕ) : ℤ :=
  A060140.P10089229504658294474.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060140.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060373.P1941735290763042490

`A060372(n)-n`
-/

namespace A060373.P1941735290763042490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n - (n : ℤ)

end

end A060373.P1941735290763042490

noncomputable section

/-- A060373: q(n), negative part of n when n=p(n)-q(n) with p(n), q(n), p(n)+q(n) in A005836, integers written without 2 in base 3.

Offset 0, canonical program `A060373.P1941735290763042490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060373 (n : ℕ) : ℤ :=
  A060373.P1941735290763042490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088955.P7262574511799154947

`A000040(A090605(n+1))`
-/

namespace A088955.P7262574511799154947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A090605 (n + 1)).toNat

end

end A088955.P7262574511799154947

noncomputable section

/-- A088955: Primes of the form 60*k + 1.

Offset 1, canonical program `A088955.P7262574511799154947`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088955 (n : ℕ) : ℤ :=
  A088955.P7262574511799154947.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095076.P3589875723574390605

`A010060(A003714(n))`
-/

namespace A095076.P3589875723574390605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A003714 n).toNat

end

end A095076.P3589875723574390605

noncomputable section

/-- A095076: Parity of 1-fibits in Zeckendorf expansion A014417(n).

Offset 0, canonical program `A095076.P3589875723574390605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095076 (n : ℕ) : ℤ :=
  A095076.P3589875723574390605.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095734.P14823570990900498020

`A037888(A003714(n)+A000007(n))`
-/

namespace A095734.P14823570990900498020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A003714 n + A000007 n).toNat

end

end A095734.P14823570990900498020

noncomputable section

/-- A095734: Asymmetricity-index for Zeckendorf-expansion A014417(n) of n.

Offset 0, canonical program `A095734.P14823570990900498020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095734 (n : ℕ) : ℤ :=
  A095734.P14823570990900498020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106406.P4697066817598156544

`A001511(n+1)*A121362(n+1)`
-/

namespace A106406.P4697066817598156544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A121362 (n + 1)

end

end A106406.P4697066817598156544

noncomputable section

/-- A106406: Expansion of (eta(q) * eta(q^15))^2 / (eta(q^3) * eta(q^5)) in powers of q.

Offset 1, canonical program `A106406.P4697066817598156544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106406 (n : ℕ) : ℤ :=
  A106406.P4697066817598156544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106714.P18155757903344412293

`A151800(∩[A106711(n+1), A106712(n+1)])`
-/

namespace A106714.P18155757903344412293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106712 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106714.P18155757903344412293

noncomputable section

/-- A106714: Largest of three consecutive primes whose sum of digits is prime.

Offset 1, canonical program `A106714.P18155757903344412293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A106714 (n : ℕ) : ℤ :=
  A106714.P18155757903344412293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A106714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115063.P16993984617944221155

`eq[A034444(n+1), A318465(n+1)]+1`
-/

namespace A115063.P16993984617944221155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A115063.P16993984617944221155

noncomputable section

/-- A115063: Natural numbers of the form p^F(n_p)*q^F(n_q)*r^F(n_r)*...*z^F(n_z), where p,q,r,... are distinct primes and F(n) is a Fibonacci number.

Offset 1, canonical program `A115063.P16993984617944221155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9446 terms. -/
def A115063 (n : ℕ) : ℤ :=
  (A115063.P16993984617944221155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9446 terms. -/
def A115063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117245.P16711629765108109646

`∑[A115975(n+1)]`
-/

namespace A117245.P16711629765108109646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117245.P16711629765108109646

noncomputable section

/-- A117245: Partial sums of A115975.

Offset 1, canonical program `A117245.P16711629765108109646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117245 (n : ℕ) : ℤ :=
  A117245.P16711629765108109646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131343.P13744313383179845761

`A112310(A188015(1+n))-1`
-/

namespace A131343.P13744313383179845761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (A188015 (1 + n)).toNat - 1

end

end A131343.P13744313383179845761

noncomputable section

/-- A131343: Number of 1's in maximal Lucas representation (A130311) of n.

Offset 0, canonical program `A131343.P13744313383179845761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A131343 (n : ℕ) : ℤ :=
  A131343.P13744313383179845761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A131343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143906.P2069080798206098839

`A342036(eq[2, A099246(n)])`
-/

namespace A143906.P2069080798206098839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143906.P2069080798206098839

noncomputable section

/-- A143906: a(n) is A143905(n) written in binary.

Offset 1, canonical program `A143906.P2069080798206098839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1047 terms. -/
def A143906 (n : ℕ) : ℤ :=
  A143906.P2069080798206098839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1047 terms. -/
def A143906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153034.P227806529242985448

`A003714(A001690(n+1)-1)`
-/

namespace A153034.P227806529242985448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A001690 (n + 1) - 1).toNat

end

end A153034.P227806529242985448

noncomputable section

/-- A153034: Numbers with adjacent 0's and no adjacent 1's in binary expansion.

Offset 1, canonical program `A153034.P227806529242985448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9981 terms. -/
def A153034 (n : ℕ) : ℤ :=
  A153034.P227806529242985448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9981 terms. -/
def A153034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158328.P9213306656047142761

`p?[A106712(n+1)-2]`
-/

namespace A158328.P9213306656047142761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106712 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158328.P9213306656047142761

noncomputable section

/-- A158328: Lessers p1 of twin primes with prime sums of digits of p1 and p2.

Offset 1, canonical program `A158328.P9213306656047142761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1494 terms. -/
def A158328 (n : ℕ) : ℤ :=
  A158328.P9213306656047142761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1494 terms. -/
def A158328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159917.P11472049628818432676

`A003714(n)%4`
-/

namespace A159917.P11472049628818432676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003714 n) 4

end

end A159917.P11472049628818432676

noncomputable section

/-- A159917: Fixed point of the morphism 0 -> 01, 1 -> 2, 2 -> 01, starting from a(0) = 0.

Offset 0, canonical program `A159917.P11472049628818432676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159917 (n : ℕ) : ℤ :=
  A159917.P11472049628818432676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173589.P18260503600219272099

`A003714(eq[3, A007895(n)])`
-/

namespace A173589.P18260503600219272099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173589.P18260503600219272099

noncomputable section

/-- A173589: Integers whose binary representation contains exactly three 1's, no two 1's being adjacent.

Offset 1, canonical program `A173589.P18260503600219272099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 679 terms. -/
def A173589 (n : ℕ) : ℤ :=
  A173589.P18260503600219272099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 679 terms. -/
def A173589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179243.P2943662787813260629

`eq[4, A219641(A104324(n))]`
-/

namespace A179243.P2943662787813260629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (A104324 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179243.P2943662787813260629

noncomputable section

/-- A179243: Numbers that have three terms in their Zeckendorf representation.

Offset 1, canonical program `A179243.P2943662787813260629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 969 terms. -/
def A179243 (n : ℕ) : ℤ :=
  (A179243.P2943662787813260629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 969 terms. -/
def A179243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179244.P8742142216849556960

`eq[3, A007318(A104324(n))]`
-/

namespace A179244.P8742142216849556960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A104324 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179244.P8742142216849556960

noncomputable section

/-- A179244: Numbers that have 4 terms in their Zeckendorf representation.

Offset 1, canonical program `A179244.P8742142216849556960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3060 terms. -/
def A179244 (n : ℕ) : ℤ :=
  (A179244.P8742142216849556960.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3060 terms. -/
def A179244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182576.P13232943474279536911

`ceil(A104324(n²)/2)`
-/

namespace A182576.P13232943474279536911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104324 (n ^ 2) : ℚ) / 2⌉

end

end A182576.P13232943474279536911

noncomputable section

/-- A182576: Number of 1's in the Zeckendorf representation of n^2.

Offset 0, canonical program `A182576.P13232943474279536911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A182576 (n : ℕ) : ℤ :=
  A182576.P13232943474279536911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A182576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202393.P11597859668486268077

`A010888(A019506(n+1))`
-/

namespace A202393.P11597859668486268077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A019506 (n + 1)).toNat

end

end A202393.P11597859668486268077

noncomputable section

/-- A202393: Digital root of Hoax Numbers A019506.

Offset 1, canonical program `A202393.P11597859668486268077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202393 (n : ℕ) : ℤ :=
  A202393.P11597859668486268077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036346.P7620792175461304631

`∩[A036350(n+1), A036844(n+1)]`
-/

namespace A036346.P7620792175461304631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036346.P7620792175461304631

noncomputable section

/-- A036346: Composites n such that A001414(n) is odd and divides n.

Offset 1, canonical program `A036346.P7620792175461304631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A036346 (n : ℕ) : ℤ :=
  (A036346.P7620792175461304631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A036346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086170.P6204776482874446032

`comp[1-A104324(n)+n]+1`
-/

namespace A086170.P6204776482874446032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A104324 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A086170.P6204776482874446032

noncomputable section

/-- A086170: a(1)=1; a(n)=a(n-1)+1 if n is in the sequence; a(n)=a(n-1)+2 if n and (n-1) are not in the sequence; a(n)=a(n-1)+3 if n is not in the sequence but (n-1) is in the sequence.

Offset 1, canonical program `A086170.P6204776482874446032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086170 (n : ℕ) : ℤ :=
  (A086170.P6204776482874446032.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089798.P15808584881803484969

`and(A176742(n), A185916(n+1))`
-/

namespace A089798.P15808584881803484969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176742 n) (A185916 (n + 1))

end

end A089798.P15808584881803484969

noncomputable section

/-- A089798: Expansion of Jacobi theta function theta_4(q^2).

Offset 0, canonical program `A089798.P15808584881803484969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089798 (n : ℕ) : ℤ :=
  A089798.P15808584881803484969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095096.P2257537572395009446

`eq[1, A001511(ceil(A104324(n)/2)+1)]`
-/

namespace A095096.P2257537572395009446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (⌈(A104324 n : ℚ) / 2⌉ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095096.P2257537572395009446

noncomputable section

/-- A095096: Fibevil numbers: those numbers k for which the parity of 1-fibits in Zeckendorf expansion A014417(k) is even, i.e., for which A095076(k) = 0.

Offset 1, canonical program `A095096.P2257537572395009446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095096 (n : ℕ) : ℤ :=
  (A095096.P2257537572395009446.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095880.P1900210885246212965

`eq[1, A000034(A112310(n))]`
-/

namespace A095880.P1900210885246212965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A112310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095880.P1900210885246212965

noncomputable section

/-- A095880: Numbers whose lazy Fibonacci representation has an even number of summands.

Offset 1, canonical program `A095880.P1900210885246212965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A095880 (n : ℕ) : ℤ :=
  (A095880.P1900210885246212965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A095880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115236.P4359800970134517995

`Δ[-A111967(n)]`
-/

namespace A115236.P4359800970134517995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A111967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115236.P4359800970134517995

noncomputable section

/-- A115236: Matrix inverse of triangle A003983.

Offset 0, canonical program `A115236.P4359800970134517995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115236 (n : ℕ) : ℤ :=
  A115236.P4359800970134517995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127749.P5281041837307640657

`(2*col(n)+1)*A111967(C(row(n)+1, 2)+col(n))`
-/

namespace A127749.P5281041837307640657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.triCol n + 1 : ℤ) * A111967 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A127749.P5281041837307640657

noncomputable section

/-- A127749: Inverse of number triangle A(n,k) = 1/(2n+1) if k <= n <= 2k, 0 otherwise.

Offset 0, canonical program `A127749.P5281041837307640657`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127749 (n : ℕ) : ℤ :=
  A127749.P5281041837307640657.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127793.P12461716665671031307

`ceil(A002260(n+1)/2)*A111967(n)`
-/

namespace A127793.P12461716665671031307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002260 (n + 1) : ℚ) / 2⌉ * A111967 n

end

end A127793.P12461716665671031307

noncomputable section

/-- A127793: Inverse of number triangle t(n,k) = 1/floor((n+2)/2) if k <= n <= 2*k, 0 otherwise.

Offset 0, canonical program `A127793.P12461716665671031307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127793 (n : ℕ) : ℤ :=
  A127793.P12461716665671031307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127822.P4246490665184018165

`abs(A111967(n))`
-/

namespace A127822.P4246490665184018165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111967 n|

end

end A127822.P4246490665184018165

noncomputable section

/-- A127822: Triangle whose row sums modulo 2 give the Fredholm-Rueppel sequence A036987.

Offset 0, canonical program `A127822.P4246490665184018165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127822 (n : ℕ) : ℤ :=
  A127822.P4246490665184018165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127822.provenance : SequenceMachineLib.Provenance := .conjectured

