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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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

/-! ## A227192.P8287732312763243379

`A227183(n+1)+A000217(A005811(n+1)-1)`
-/

namespace A227192.P8287732312763243379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (n + 1) + A000217 (A005811 (n + 1) - 1).toNat

end

end A227192.P8287732312763243379

noncomputable section

/-- A227192: Sum of the partial sums of the run lengths of binary expansion of n, when starting scanning from the least significant end; Row sums of A227188 and A227738.

Offset 1, canonical program `A227192.P8287732312763243379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227192 (n : ℕ) : ℤ :=
  A227192.P8287732312763243379.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227192.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A246016.P18249855041277099865

`(-1)^A055941(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246016.P18249855041277099865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A055941 n : ℤ)

end

end A246016.P18249855041277099865

noncomputable section

/-- A246016: a(n) = (-1)^A055941(n).

Offset 0, canonical program `A246016.P18249855041277099865`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246016 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246016.P18249855041277099865.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246016.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A214682.P13810190927759854394

`(n+1)/A056832(n+1)`
-/

namespace A214682.P13810190927759854394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A056832 (n + 1) : ℚ)

end

end A214682.P13810190927759854394

noncomputable section

/-- A214682: Remove 2's that do not contribute to a factor of 4 from the prime factorization of n.

Offset 1, canonical program `A214682.P13810190927759854394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214682 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A214682.P13810190927759854394.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227471.P1173354223507232729

`1+A023512(n+1)`
-/

namespace A227471.P1173354223507232729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A023512 (n + 1)

end

end A227471.P1173354223507232729

noncomputable section

/-- A227471: Position of first 0 in the binary representation of prime(n), starting the count of positions at 1 for the least significant bit.

Offset 1, canonical program `A227471.P1173354223507232729`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227471 (n : ℕ) : ℤ :=
  A227471.P1173354223507232729.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227471.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246425.P2871816530660975141

`((6*n+4)/2^A087230(n)-(2*n+1))/2`
-/

namespace A246425.P2871816530660975141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n + 4 : ℚ) / (2 : ℚ) ^ (A087230 n : ℤ) - (2 * n + 1 : ℚ)) / 2

end

end A246425.P2871816530660975141

noncomputable section

/-- A246425: In the Collatz 3x+1 problem: start at an odd number 2n+1 and find the next odd number 2m+1 in the trajectory; then a(n) = m-n.

Offset 0, canonical program `A246425.P2871816530660975141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246425 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246425.P2871816530660975141.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246425.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A008421.P5778810388798117151

`∑[A008420(n)]`
-/

namespace A008421.P5778810388798117151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008421.P5778810388798117151

noncomputable section

/-- A008421: Crystal ball sequence for 10-dimensional cubic lattice.

Offset 0, canonical program `A008421.P5778810388798117151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008421 (n : ℕ) : ℤ :=
  A008421.P5778810388798117151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008863.P10720815592373183918

`A008862(n)+C(n, 10)`
-/

namespace A008863.P10720815592373183918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n + (Nat.choose n 10 : ℤ)

end

end A008863.P10720815592373183918

noncomputable section

/-- A008863: a(n) = Sum_{k=0..10} binomial(n,k).

Offset 0, canonical program `A008863.P10720815592373183918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008863 (n : ℕ) : ℤ :=
  A008863.P10720815592373183918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008863.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035042.P1670210666577549716

`2^n-A008862(n)`
-/

namespace A035042.P1670210666577549716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A008862 n

end

end A035042.P1670210666577549716

noncomputable section

/-- A035042: a(n) = 2^n - C(n,0)- ... - C(n,9).

Offset 0, canonical program `A035042.P1670210666577549716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A035042 (n : ℕ) : ℤ :=
  A035042.P1670210666577549716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A035042.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035706.P322796382435352986

`∑[2*A008420(n)]-A008420(n)`
-/

namespace A035706.P322796382435352986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008420 n

end

end A035706.P322796382435352986

noncomputable section

/-- A035706: Coordination sequence for 11-dimensional cubic lattice.

Offset 0, canonical program `A035706.P322796382435352986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035706 (n : ℕ) : ℤ :=
  A035706.P322796382435352986.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035747.P14738988222165584094

`A008420(2*n)`
-/

namespace A035747.P14738988222165584094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008420 (2 * n)

end

end A035747.P14738988222165584094

noncomputable section

/-- A035747: Coordination sequence for C_10 lattice.

Offset 0, canonical program `A035747.P14738988222165584094`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035747 (n : ℕ) : ℤ :=
  A035747.P14738988222165584094.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035747.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A038214.P14601018666803231600

`A038210(n)*A059268(n)`
-/

namespace A038214.P14601018666803231600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038210 n * A059268 n

end

end A038214.P14601018666803231600

noncomputable section

/-- A038214: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*8^j.

Offset 0, canonical program `A038214.P14601018666803231600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5326 terms. -/
def A038214 (n : ℕ) : ℤ :=
  A038214.P14601018666803231600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5326 terms. -/
def A038214.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038242.P689435181887055728

`A036561(n)*A038210(n)`
-/

namespace A038242.P689435181887055728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038210 n

end

end A038242.P689435181887055728

noncomputable section

/-- A038242: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*12^j.

Offset 0, canonical program `A038242.P689435181887055728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3630 terms. -/
def A038242 (n : ℕ) : ℤ :=
  A038242.P689435181887055728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3630 terms. -/
def A038242.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A055374.P14899419224268872403

`round(A055372(n)/2*A137688(n))`
-/

namespace A055374.P14899419224268872403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055372 n : ℚ) / 2 * (A137688 n : ℚ))

end

end A055374.P14899419224268872403

noncomputable section

/-- A055374: Invert transform applied three times to Pascal's triangle A007318.

Offset 0, canonical program `A055374.P14899419224268872403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6492 terms. -/
def A055374 (n : ℕ) : ℤ :=
  A055374.P14899419224268872403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6492 terms. -/
def A055374.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062950.P11962313584920516019

`A001065(A055684(n+3)+1)-1`
-/

namespace A062950.P11962313584920516019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A055684 (n + 3) + 1).toNat - 1

end

end A062950.P11962313584920516019

noncomputable section

/-- A062950: C(H(n)), where C(n) is Chowla's function (A048050) and H(n) is the half-totient function (A023022).

Offset 3, canonical program `A062950.P11962313584920516019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062950 (n : ℕ) : ℤ :=
  A062950.P11962313584920516019.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063475.P17155963557761105303

`A001157(A055684(n+3)+1)`
-/

namespace A063475.P17155963557761105303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A055684 (n + 3) + 1).toNat

end

end A063475.P17155963557761105303

noncomputable section

/-- A063475: a(n) = Sum_{d | H(n)} d^2, where H(n) is the half-totient function (A023022).

Offset 3, canonical program `A063475.P17155963557761105303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063475 (n : ℕ) : ℤ :=
  A063475.P17155963557761105303.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063475.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071756.P14006536037210745974

`A071739(n)+Δ[A071738(n)]`
-/

namespace A071756.P14006536037210745974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071739 n + (f1 (n + 1) - f1 n)

end

end A071756.P14006536037210745974

noncomputable section

/-- A071756: Expansion of (1+x^4*C^4)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071756.P14006536037210745974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071756 (n : ℕ) : ℤ :=
  A071756.P14006536037210745974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071756.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072604.P7451887866366379934

`∩[10*n, A072589(n+1)]`
-/

namespace A072604.P7451887866366379934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072604.P7451887866366379934

noncomputable section

/-- A072604: Last digit of n, phi(n) and sigma(n) is 0 in base 10.

Offset 1, canonical program `A072604.P7451887866366379934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6389 terms. -/
def A072604 (n : ℕ) : ℤ :=
  (A072604.P7451887866366379934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6389 terms. -/
def A072604.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A092249.P8919152455619656948

`A091369(n+1)-∑[n]`
-/

namespace A092249.P8919152455619656948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091369 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A092249.P8919152455619656948

noncomputable section

/-- A092249: Positions of the integers in the standard diagonal enumeration of the rationals (with the integers in the first column and diagonals moving up to the right).

Offset 1, canonical program `A092249.P8919152455619656948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092249 (n : ℕ) : ℤ :=
  A092249.P8919152455619656948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092249.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A097480.P24898552055680441

`A097363(n+1)+1`
-/

namespace A097480.P24898552055680441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) + 1

end

end A097480.P24898552055680441

noncomputable section

/-- A097480: Positive integers n such that 2n-15 is prime.

Offset 1, canonical program `A097480.P24898552055680441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097480 (n : ℕ) : ℤ :=
  A097480.P24898552055680441.a (n - 1)

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

/-! ## A099197.P5182563127150070825

`∑[A008419(n)]-A008419(n)`
-/

namespace A099197.P5182563127150070825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008419 n

end

end A099197.P5182563127150070825

noncomputable section

/-- A099197: a(n) = n^2*(2*n^8 + 120*n^6 + 1806*n^4 + 7180*n^2 + 5067)/14175.

Offset 0, canonical program `A099197.P5182563127150070825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099197 (n : ℕ) : ℤ :=
  A099197.P5182563127150070825.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099197.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A105584.P4057579374736803583

`n%2+2-A020985(n)`
-/

namespace A105584.P4057579374736803583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + (2 - A020985 n)

end

end A105584.P4057579374736803583

noncomputable section

/-- A105584: Fixed point of the morphism 1 -> 34, 2 -> 32, 3 -> 12, 4 -> 14, starting from a(0) = 1.

Offset 0, canonical program `A105584.P4057579374736803583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105584 (n : ℕ) : ℤ :=
  A105584.P4057579374736803583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106476.P5315817967873188888

`A089929(A212012(n+1))`
-/

namespace A106476.P5315817967873188888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089929 (A212012 (n + 1)).toNat

end

end A106476.P5315817967873188888

noncomputable section

/-- A106476: Sequence array of Euler phi function.

Offset 0, canonical program `A106476.P5315817967873188888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106476 (n : ℕ) : ℤ :=
  A106476.P5315817967873188888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106476.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131035.P6781276959955165699

`A131033(n+1)-char[∑[n+2]-1]`
-/

namespace A131035.P6781276959955165699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131033 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A131035.P6781276959955165699

noncomputable section

/-- A131035: Triangle read by rows: A051340 * A129686 as infinite lower triangular matrices.

Offset 0, canonical program `A131035.P6781276959955165699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131035 (n : ℕ) : ℤ :=
  A131035.P6781276959955165699.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131231.P11716200327351419876

`A032766(A131230(n+1))`
-/

namespace A131231.P11716200327351419876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A131230 (n + 1)).toNat

end

end A131231.P11716200327351419876

noncomputable section

/-- A131231: 3*A130296 - 2*A128174.

Offset 1, canonical program `A131231.P11716200327351419876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131231 (n : ℕ) : ℤ :=
  A131231.P11716200327351419876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131231.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143104.P8981237344369215233

`A077051(A132119(n+1))`
-/

namespace A143104.P8981237344369215233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077051 (A132119 (n + 1)).toNat

end

end A143104.P8981237344369215233

noncomputable section

/-- A143104: Infinite Redheffer matrix read by upwards antidiagonals.

Offset 1, canonical program `A143104.P8981237344369215233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A143104 (n : ℕ) : ℤ :=
  A143104.P8981237344369215233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A143104.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A154271.P2223287504034096637

`Δ[A056832(a(A002264(n))+1)]` with `a(0)=1`
-/

namespace A154271.P2223287504034096637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A056832 (f1 (A002264 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154271.P2223287504034096637

noncomputable section

/-- A154271: Dirichlet inverse of A154272; Fully multiplicative with a(3^e) = (-1)^e, a(p^e) = 0 for primes p <> 3.

Offset 1, canonical program `A154271.P2223287504034096637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154271 (n : ℕ) : ℤ :=
  A154271.P2223287504034096637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154312.P18401052688145520114

`A130123(n)+Δ[A006949(A130123(n))]`
-/

namespace A154312.P18401052688145520114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (A130123 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n + (f1 (n + 1) - f1 n)

end

end A154312.P18401052688145520114

noncomputable section

/-- A154312: Triangle T(n,k), 0<=k<=n, read by rows, given by [0,1/2,-1/2,0,0,0,0,0,0,0,...] DELTA [2,-1/2,-1/2,2,0,0,0,0,0,0,0 ...] where DELTA is the operator defined in A084938 .

Offset 0, canonical program `A154312.P18401052688145520114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A154312 (n : ℕ) : ℤ :=
  A154312.P18401052688145520114.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A154312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158821.P7475338757825604441

`abs(2-A131033(n+1))`
-/

namespace A158821.P7475338757825604441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A131033 (n + 1)|

end

end A158821.P7475338757825604441

noncomputable section

/-- A158821: Triangle read by rows: row n (n>=0) ends with 1, and for n>=1 begins with n; other entries are zero.

Offset 0, canonical program `A158821.P7475338757825604441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158821 (n : ℕ) : ℤ :=
  A158821.P7475338757825604441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158821.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A169591.P10839436935339926891

`A169590(n)%2`
-/

namespace A169591.P10839436935339926891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169590 n) 2

end

end A169591.P10839436935339926891

noncomputable section

/-- A169591: Triangle T(n,k) with column n = A059841 if n even and column n = A000007 if n odd.

Offset 0, canonical program `A169591.P10839436935339926891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A169591 (n : ℕ) : ℤ :=
  A169591.P10839436935339926891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A169591.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A172066.P636120753324226920

`Δ[A172065(n)-∑[A172063(n)]]`
-/

namespace A172066.P636120753324226920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172063 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172065 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172066.P636120753324226920

noncomputable section

/-- A172066: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=9.

Offset 0, canonical program `A172066.P636120753324226920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A172066 (n : ℕ) : ℤ :=
  A172066.P636120753324226920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A172066.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184049.P6454318504092061159

`A074909(A132119(n+1))`
-/

namespace A184049.P6454318504092061159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A132119 (n + 1)).toNat

end

end A184049.P6454318504092061159

noncomputable section

/-- A184049: T(n,k) is the number of order-preserving and order-decreasing partial isometries (of an n-chain) of height k (height of alpha = |Im(alpha)|).

Offset 0, canonical program `A184049.P6454318504092061159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184049 (n : ℕ) : ℤ :=
  A184049.P6454318504092061159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184049.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188080.P17840173988894253734

`record[(n+1)*A000007(n*A188079(n+1))]`
-/

namespace A188080.P17840173988894253734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000007 ((n : ℤ) * A188079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188080.P17840173988894253734

noncomputable section

/-- A188080: Positions of 0 in A188079; complement of A188081.

Offset 1, canonical program `A188080.P17840173988894253734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A188080 (n : ℕ) : ℤ :=
  A188080.P17840173988894253734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A188080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188081.P10757998736830450152

`∩[A188078(n+1)+1, A188078(n+1)]`
-/

namespace A188081.P10757998736830450152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188078 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188081.P10757998736830450152

noncomputable section

/-- A188081: Positions of 1 in A188079; complement of A188080.

Offset 1, canonical program `A188081.P10757998736830450152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. -/
def A188081 (n : ℕ) : ℤ :=
  (A188081.P10757998736830450152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. -/
def A188081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188092.P5511721666516196798

`A188078(n+3)-5`
-/

namespace A188092.P5511721666516196798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188078 (n + 3) - 5

end

end A188092.P5511721666516196798

noncomputable section

/-- A188092: Positions of 1 in A188090; complement of A188091.

Offset 1, canonical program `A188092.P5511721666516196798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A188092 (n : ℕ) : ℤ :=
  A188092.P5511721666516196798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A188092.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A188215.P11536711810283268516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A188215 (n : ℕ) : ℤ :=
  A188215.P11536711810283268516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A188215.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A210381.P17433135722675622372

`A074909(n)-A198321(n+1)`
-/

namespace A210381.P17433135722675622372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A198321 (n + 1)

end

end A210381.P17433135722675622372

noncomputable section

/-- A210381: Triangle by rows, derived from the beheaded Pascal's triangle, A074909.

Offset 0, canonical program `A210381.P17433135722675622372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210381 (n : ℕ) : ℤ :=
  A210381.P17433135722675622372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213831.P8395432424309219939

`A213825(n+1)-A213761(n+1)`
-/

namespace A213831.P8395432424309219939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213825 (n + 1) - A213761 (n + 1)

end

end A213831.P8395432424309219939

noncomputable section

/-- A213831: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = 3*n-5+3*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213831.P8395432424309219939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213831 (n : ℕ) : ℤ :=
  A213831.P8395432424309219939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213833.P1513649883133815613

`A213828(n+1)-A213771(n+1)`
-/

namespace A213833.P1513649883133815613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213828 (n + 1) - A213771 (n + 1)

end

end A213833.P1513649883133815613

noncomputable section

/-- A213833: Rectangular array: (row n) = b**c, where b(h) = 3*h-2, c(h) = 2*n-3+2*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213833.P1513649883133815613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213833 (n : ℕ) : ℤ :=
  A213833.P1513649883133815613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214412.P17651394908834805650

`comp[A141169(n)+A193739(n)²]`
-/

namespace A214412.P17651394908834805650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A193739 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A214412.P17651394908834805650

noncomputable section

/-- A214412: Numbers that can't be expressed as the sum of a Fibonacci number and a square of a positive integer.

Offset 1, canonical program `A214412.P17651394908834805650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A214412 (n : ℕ) : ℤ :=
  (A214412.P17651394908834805650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A214412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216157.P14329396617965940493

`A215947(A055684(n+3)+1)`
-/

namespace A216157.P14329396617965940493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (A055684 (n + 3) + 1).toNat

end

end A216157.P14329396617965940493

noncomputable section

/-- A216157: Difference between the sum of the even divisors and the sum of the odd divisors of phi(n).

Offset 3, canonical program `A216157.P14329396617965940493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A216157 (n : ℕ) : ℤ :=
  A216157.P14329396617965940493.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A216157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220348.P6667135359390539441

`A193739(n)+a(A002262(n))` with `a(0)=1`
-/

namespace A220348.P6667135359390539441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193739 n + a (A002262 n).toNat

end

end A220348.P6667135359390539441

noncomputable section

/-- A220348: Index of row where n occurs in A183079.

Offset 1, canonical program `A220348.P6667135359390539441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220348 (n : ℕ) : ℤ :=
  A220348.P6667135359390539441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221282.P15751226315535615797

`A221281(eq[1, A221281(n+2)-A221281(n+1)]+1)`
-/

namespace A221282.P15751226315535615797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221281 (n + 2) - A221281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A221282.P15751226315535615797

noncomputable section

/-- A221282: Numbers n such that lambda(n) = lambda(n+1) = lambda(n+2) = lambda(n+3), where lambda(n) = A008836(n) is the Liouville function.

Offset 1, canonical program `A221282.P15751226315535615797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5083 terms. -/
def A221282 (n : ℕ) : ℤ :=
  A221282.P15751226315535615797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5083 terms. -/
def A221282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227071.P9639457389400369433

`A132741(A028310(n))+A057427(n)`
-/

namespace A227071.P9639457389400369433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (A028310 n).toNat + A057427 n

end

end A227071.P9639457389400369433

noncomputable section

/-- A227071: Let s(m) = the set of k > 0 such that k^m ends with k. Then a(n) = least m such that s(m) = s(n).

Offset 1, canonical program `A227071.P9639457389400369433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227071 (n : ℕ) : ℤ :=
  A227071.P9639457389400369433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231600.P14215800754998338730

`A096268(A087734(n))`
-/

namespace A231600.P14215800754998338730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A087734 n).toNat

end

end A231600.P14215800754998338730

noncomputable section

/-- A231600: Output of a finite state automaton generating the period doubling sequence, when fed with binary representation of n, read from right to left.

Offset 0, canonical program `A231600.P14215800754998338730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231600 (n : ℕ) : ℤ :=
  A231600.P14215800754998338730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237811.P5036255404154694542

`p?[A088764(n+1)-2]`
-/

namespace A237811.P5036255404154694542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088764 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237811.P5036255404154694542

noncomputable section

/-- A237811: Primes p such that 2*p+1 and 2*p+9 are also prime.

Offset 1, canonical program `A237811.P5036255404154694542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 897 terms. -/
def A237811 (n : ℕ) : ℤ :=
  A237811.P5036255404154694542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 897 terms. -/
def A237811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238367.P4066745215504090495

`A103517(lt[A337923(3*(n+1)), A001221(n+1)])`
-/

namespace A238367.P4066745215504090495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337923 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A238367.P4066745215504090495

noncomputable section

/-- A238367: Even numbers n such that n is not divisible by 2^d where d is the number of distinct odd prime factors of n.

Offset 1, canonical program `A238367.P4066745215504090495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. -/
def A238367 (n : ℕ) : ℤ :=
  A238367.P4066745215504090495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. -/
def A238367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239320.P15770930766220237267

`eq[1, A006287(A006287(A006287(n)))]`
-/

namespace A239320.P15770930766220237267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006287 (A006287 (A006287 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A239320.P15770930766220237267

noncomputable section

/-- A239320: Ternary happy numbers.

Offset 1, canonical program `A239320.P15770930766220237267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A239320 (n : ℕ) : ℤ :=
  (A239320.P15770930766220237267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A239320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239464.P9977699933994257397

`A239461(n+1)/(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239464.P9977699933994257397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239461 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A239464.P9977699933994257397

noncomputable section

/-- A239464: A239461(n) / n^2.

Offset 1, canonical program `A239464.P9977699933994257397`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239464 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239464.P9977699933994257397.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239906.P4184436720645207913

`A239904(n)-A014082(n)`
-/

namespace A239906.P4184436720645207913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239904 n - A014082 n

end

end A239906.P4184436720645207913

noncomputable section

/-- A239906: Let cn(n,k) denote the number of times 11..1 (k 1's) appears in the binary representation of n; a(n) = n - cn(n,1) + cn(n,2) - cn(n,3).

Offset 0, canonical program `A239906.P4184436720645207913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239906 (n : ℕ) : ℤ :=
  A239906.P4184436720645207913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243109.P8775223338170402151

`n-A171942(A062383(n)-n)`
-/

namespace A243109.P8775223338170402151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A171942 (A062383 n - (n : ℤ)).toNat

end

end A243109.P8775223338170402151

noncomputable section

/-- A243109: a(n) is the largest number smaller than n and having the same Hamming weight as n, or n if no such number exist.

Offset 0, canonical program `A243109.P8775223338170402151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243109 (n : ℕ) : ℤ :=
  A243109.P8775223338170402151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243614.P16613195315274380214

`A174980(eq[A000120(n), A037227(n+1)])`
-/

namespace A243614.P16613195315274380214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243614.P16613195315274380214

noncomputable section

/-- A243614: Irregular triangular array of numerators of the positive rational numbers ordered as in Comments.

Offset 1, canonical program `A243614.P16613195315274380214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A243614 (n : ℕ) : ℤ :=
  A243614.P16613195315274380214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A243614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244880.P11603938914214109691

`∑[∑[A160838(n)]]`
-/

namespace A244880.P11603938914214109691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244880.P11603938914214109691

noncomputable section

/-- A244880: Number of magic labelings of the cycle-of-loops graph LOOP X C_8 having magic sum n, where LOOP is the 1-vertex, 1-loop-edge graph.

Offset 0, canonical program `A244880.P11603938914214109691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244880 (n : ℕ) : ℤ :=
  A244880.P11603938914214109691.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245188.P10749449264260825276

`A005681(n+1)-1`
-/

namespace A245188.P10749449264260825276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005681 (n + 1) - 1

end

end A245188.P10749449264260825276

noncomputable section

/-- A245188: Trajectory of 1 under repeated applications of the morphism 0->12, 1->13, 2->20, 3->21.

Offset 0, canonical program `A245188.P10749449264260825276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245188 (n : ℕ) : ℤ :=
  A245188.P10749449264260825276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247875.P746312147594678811

`lt[A135416(or(n+1, 2*n)+1), A059126(n)]`
-/

namespace A247875.P746312147594678811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (Nat.lor (n + 1) (2 * n) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247875.P746312147594678811

noncomputable section

/-- A247875: Numbers that are even or whose binary expansions contain one or more pairs of adjacent zeros when odd.

Offset 1, canonical program `A247875.P746312147594678811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247875 (n : ℕ) : ℤ :=
  (A247875.P746312147594678811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247875.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A008376.P8710974549002367927

`A035746(n)-9*A035602(n)`
-/

namespace A008376.P8710974549002367927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035746 n - 9 * A035602 n

end

end A008376.P8710974549002367927

noncomputable section

/-- A008376: Coordination sequence for D_9 lattice.

Offset 0, canonical program `A008376.P8710974549002367927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008376 (n : ℕ) : ℤ :=
  A008376.P8710974549002367927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010368.P5465867737350595894

`ceil(A019564(n)/8)`
-/

namespace A010368.P5465867737350595894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A019564 n : ℚ) / 8⌉

end

end A010368.P5465867737350595894

noncomputable section

/-- A010368: Number of points of L1 norm 2n in Hamming code version of E_8 lattice.

Offset 0, canonical program `A010368.P5465867737350595894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010368 (n : ℕ) : ℤ :=
  A010368.P5465867737350595894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010368.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A015627.P6012177256396085323

`A015622(n+2)-∑[A161680(n)]`
-/

namespace A015627.P6012177256396085323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015622 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015627.P6012177256396085323

noncomputable section

/-- A015627: Quadruples of different integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015627.P6012177256396085323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A015627 (n : ℕ) : ℤ :=
  A015627.P6012177256396085323.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A015627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015640.P16174645672135619219

`∑[A346761(n+1)]-A015622(n+1)`
-/

namespace A015640.P16174645672135619219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015622 (n + 1)

end

end A015640.P16174645672135619219

noncomputable section

/-- A015640: Number of 5-tuples of different integers from [ 1,n ] with no global factor.

Offset 1, canonical program `A015640.P16174645672135619219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A015640 (n : ℕ) : ℤ :=
  A015640.P16174645672135619219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A015640.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026737.P4467536604630833933

`A000108(n)+A026671(n)-A026726(n)`
-/

namespace A026737.P4467536604630833933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A026671 n - A026726 n)

end

end A026737.P4467536604630833933

noncomputable section

/-- A026737: a(n) = T(2*n,n), T given by A026736.

Offset 0, canonical program `A026737.P4467536604630833933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A026737 (n : ℕ) : ℤ :=
  A026737.P4467536604630833933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A026737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026854.P460794287196501894

`A026726(n)+A000245(n)`
-/

namespace A026854.P460794287196501894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 n + A000245 n

end

end A026854.P460794287196501894

noncomputable section

/-- A026854: a(n) = T(2n+1,n+1), T given by A026736.

Offset 0, canonical program `A026854.P460794287196501894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A026854 (n : ℕ) : ℤ :=
  A026854.P460794287196501894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A026854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027314.P4582682916324983632

`A026325(2*n)`
-/

namespace A027314.P4582682916324983632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026325 (2 * n)

end

end A027314.P4582682916324983632

noncomputable section

/-- A027314: a(n) is the sum of squares of numbers in row n of array T given by A026323.

Offset 0, canonical program `A027314.P4582682916324983632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A027314 (n : ℕ) : ℤ :=
  A027314.P4582682916324983632.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A027314.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029922.P12532819948336392736

`A000038(A267368(n))+round(n/log(5))`
-/

namespace A029922.P12532819948336392736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A267368 n).toNat + SequenceMachineLib.roundAway ((n : ℝ) / Real.log (5 : ℝ))

end

end A029922.P12532819948336392736

noncomputable section

/-- A029922: Convert n from kilometers (km) to miles.

Offset 0, canonical program `A029922.P12532819948336392736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A029922 (n : ℕ) : ℤ :=
  A029922.P12532819948336392736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A029922.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035733.P5573600906970786573

`A266213(eq[39, A193739(n)])`
-/

namespace A035733.P5573600906970786573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035733.P5573600906970786573

noncomputable section

/-- A035733: Coordination sequence for 38-dimensional cubic lattice.

Offset 0, canonical program `A035733.P5573600906970786573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A035733 (n : ℕ) : ℤ :=
  A035733.P5573600906970786573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A035733.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038492.P13945926273108994570

`A194887(A014132(n+1))`
-/

namespace A038492.P13945926273108994570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194887 (A014132 (n + 1)).toNat

end

end A038492.P13945926273108994570

noncomputable section

/-- A038492: Sums of 2 distinct powers of 12.

Offset 1, canonical program `A038492.P13945926273108994570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4278 terms. -/
def A038492 (n : ℕ) : ℤ :=
  A038492.P13945926273108994570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4278 terms. -/
def A038492.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A044918.P15631491038652286374

`floor(A281379(n+3)/2)`
-/

namespace A044918.P15631491038652286374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A281379 (n + 3) : ℚ) / 2⌋

end

end A044918.P15631491038652286374

noncomputable section

/-- A044918: Positive integers whose base-2 run lengths form a palindrome.

Offset 1, canonical program `A044918.P15631491038652286374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A044918 (n : ℕ) : ℤ :=
  A044918.P15631491038652286374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A044918.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049319.P9182740163463165320

`6*A395768(2*n+1)`
-/

namespace A049319.P9182740163463165320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A395768 (2 * n + 1)

end

end A049319.P9182740163463165320

noncomputable section

/-- A049319: Number of 3-dimensional integer direction vectors (a,b,c) towards grid points at squared integer distance 2n-1.

Offset 1, canonical program `A049319.P9182740163463165320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3224 terms. -/
def A049319 (n : ℕ) : ℤ :=
  A049319.P9182740163463165320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3224 terms. -/
def A049319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049648.P396275532436959907

`(n+1)²+n-A049621(n)`
-/

namespace A049648.P396275532436959907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((n : ℤ) - A049621 n)

end

end A049648.P396275532436959907

noncomputable section

/-- A049648: T(n,n+1), array T as in A049687 and T(2n,2n+2), array T given by A049639.

Offset 0, canonical program `A049648.P396275532436959907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A049648 (n : ℕ) : ℤ :=
  A049648.P396275532436959907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A049648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050439.P1472562452654814499

`A002808(A050438(n+1))`
-/

namespace A050439.P1472562452654814499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A050438 (n + 1)).toNat

end

end A050439.P1472562452654814499

noncomputable section

/-- A050439: Fifth-order composites.

Offset 1, canonical program `A050439.P1472562452654814499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050439 (n : ℕ) : ℤ :=
  A050439.P1472562452654814499.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050466.P15533784543900477254

`(A007331(n+1)-A050471(n+1))/2`
-/

namespace A050466.P15533784543900477254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007331 (n + 1) - A050471 (n + 1) : ℚ) / 2

end

end A050466.P15533784543900477254

noncomputable section

/-- A050466: a(n) = Sum_{d|n, n/d=3 mod 4} d^3.

Offset 1, canonical program `A050466.P15533784543900477254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007331, A050471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050466 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A050466.P15533784543900477254.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007331, A050471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050466.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A053119.P3722732888324487798

`A053118(n)/A130321(n)`
-/

namespace A053119.P3722732888324487798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053118 n : ℚ) / (A130321 n : ℚ)

end

end A053119.P3722732888324487798

noncomputable section

/-- A053119: Triangle of coefficients of Chebyshev's S(n,x) polynomials (exponents in decreasing order).

Offset 0, canonical program `A053119.P3722732888324487798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053119 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053119.P3722732888324487798.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053119.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056288.P10959423349450089845

`6*A056279(n+1)/(n+1)`
-/

namespace A056288.P10959423349450089845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A056279 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A056288.P10959423349450089845

noncomputable section

/-- A056288: Number of primitive (period n) n-bead necklaces with exactly three different colored beads.

Offset 1, canonical program `A056288.P10959423349450089845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A056288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056288.P10959423349450089845.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A056288.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060724.P13091416846170327268

`∑{d}[n+1, A060648(#)]`
-/

namespace A060724.P13091416846170327268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d

end

end A060724.P13091416846170327268

noncomputable section

/-- A060724: Number of subgroups of the group C_n X C_n (where C_n is the cyclic group of order n).

Offset 1, canonical program `A060724.P13091416846170327268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060724 (n : ℕ) : ℤ :=
  A060724.P13091416846170327268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060968.P17331185296749833849

`A177704(n)*A395768(n+1)`
-/

namespace A060968.P17331185296749833849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 n * A395768 (n + 1)

end

end A060968.P17331185296749833849

noncomputable section

/-- A060968: Number of solutions to x^2 + y^2 == 1 (mod n).

Offset 1, canonical program `A060968.P17331185296749833849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060968 (n : ℕ) : ℤ :=
  A060968.P17331185296749833849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060968.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A064363.P10112196850495095681

`∑[∑[3*n²+2]-1]-A064276(n)`
-/

namespace A064363.P10112196850495095681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A064276 n

end

end A064363.P10112196850495095681

noncomputable section

/-- A064363: Number of 2 X 2 regular integer matrices with elements from {0,...,n} up to row and column permutation.

Offset 0, canonical program `A064363.P10112196850495095681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A064363 (n : ℕ) : ℤ :=
  A064363.P10112196850495095681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A064363.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A066694.P293942461781957692

`eq[1, A295308(n+1)]+1`
-/

namespace A066694.P293942461781957692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066694.P293942461781957692

noncomputable section

/-- A066694: Numbers k such that phi(sigma(k)) > k.

Offset 1, canonical program `A066694.P293942461781957692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 804 terms. -/
def A066694 (n : ℕ) : ℤ :=
  (A066694.P293942461781957692.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 804 terms. -/
def A066694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067051.P9041529878251612629

`∪[A074216(n+1), ∑[A016825(n)]]`
-/

namespace A067051.P9041529878251612629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074216 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067051.P9041529878251612629

noncomputable section

/-- A067051: The smallest k > 1 such that k divides sigma(k*n) is equal to 3.

Offset 1, canonical program `A067051.P9041529878251612629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067051 (n : ℕ) : ℤ :=
  (A067051.P9041529878251612629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067051.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078334.P18056598420346971869

`A002088(A055201(n+1))+1`
-/

namespace A078334.P18056598420346971869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A055201 (n + 1)).toNat + 1

end

end A078334.P18056598420346971869

noncomputable section

/-- A078334: Primes in A005728, which counts the terms in the Farey sequence of order n.

Offset 1, canonical program `A078334.P18056598420346971869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5509 terms. -/
def A078334 (n : ℕ) : ℤ :=
  A078334.P18056598420346971869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5509 terms. -/
def A078334.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A082391.P4712612013818769208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A082391 (n : ℕ) : ℤ :=
  A082391.P4712612013818769208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
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

/-! ## A095743.P808282831159510369

`p?[A051244(n+1)]`
-/

namespace A095743.P808282831159510369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095743.P808282831159510369

noncomputable section

/-- A095743: Primes p for which A037888(p) = 1, i.e., primes whose binary expansion is almost symmetric, needing just a one-bit flip to become palindrome.

Offset 1, canonical program `A095743.P808282831159510369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1950 terms. -/
def A095743 (n : ℕ) : ℤ :=
  A095743.P808282831159510369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1950 terms. -/
def A095743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095744.P12869582977298875679

`p?[A051247(n+1)]`
-/

namespace A095744.P12869582977298875679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095744.P12869582977298875679

noncomputable section

/-- A095744: Primes p for which A037888(p) = 2, i.e., primes whose binary expansion needs flips of just two bits to become palindrome.

Offset 1, canonical program `A095744.P12869582977298875679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1236 terms. -/
def A095744 (n : ℕ) : ℤ :=
  A095744.P12869582977298875679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1236 terms. -/
def A095744.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104795.P13015670119841549225

`A198321(n+1)+1`
-/

namespace A104795.P13015670119841549225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 1) + 1

end

end A104795.P13015670119841549225

noncomputable section

/-- A104795: Triangle T(n,k) = C(n,k)+1 for k<n; T(n,k) = 1 for k=n, read by rows.

Offset 0, canonical program `A104795.P13015670119841549225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104795 (n : ℕ) : ℤ :=
  A104795.P13015670119841549225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104795.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A108080.P6003054440888230054

`A054441(n)+A026726(n)`
-/

namespace A108080.P6003054440888230054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054441 n + A026726 n

end

end A108080.P6003054440888230054

noncomputable section

/-- A108080: a(n) = Sum_{i=0..n} binomial(2*n+i,n-i).

Offset 0, canonical program `A108080.P6003054440888230054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A108080 (n : ℕ) : ℤ :=
  A108080.P6003054440888230054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A108080.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115077.P12763444210255588654

`(n+1)^3-A115075(n+1)`
-/

namespace A115077.P12763444210255588654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A115075 (n + 1)

end

end A115077.P12763444210255588654

noncomputable section

/-- A115077: Number of 2 X 2 symmetric matrices over Z(n) having nonzero determinant.

Offset 1, canonical program `A115077.P12763444210255588654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115077 (n : ℕ) : ℤ :=
  A115077.P12763444210255588654.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115077.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A118759.P5411898151704407720

`A056279(A138902(n))+n`
-/

namespace A118759.P5411898151704407720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056279 (A138902 n).toNat + (n : ℤ)

end

end A118759.P5411898151704407720

noncomputable section

/-- A118759: A118757(A118757(n)).

Offset 0, canonical program `A118759.P5411898151704407720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A118759 (n : ℕ) : ℤ :=
  A118759.P5411898151704407720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A118759.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119921.P12501731158706764017

`2^(n+1)*A119917(n+1)`
-/

namespace A119921.P12501731158706764017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A119917 (n + 1)

end

end A119921.P12501731158706764017

noncomputable section

/-- A119921: Number of rationals in [0, 1) having at most n preperiodic bits, then at most n periodic bits.

Offset 1, canonical program `A119921.P12501731158706764017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A119921 (n : ℕ) : ℤ :=
  A119921.P12501731158706764017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A119921.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127465.P17057416281639461031

`A002260(n+1)*A054523(n+1)`
-/

namespace A127465.P17057416281639461031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A054523 (n + 1)

end

end A127465.P17057416281639461031

noncomputable section

/-- A127465: Triangle read by rows: T(n,k) = k*phi(n/k) if k|n, T(n,k)=0 otherwise.

Offset 1, canonical program `A127465.P17057416281639461031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127465 (n : ℕ) : ℤ :=
  A127465.P17057416281639461031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127527.P8087482116524196701

`A051194(n+1)*A054523(n+1)`
-/

namespace A127527.P8087482116524196701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (n + 1) * A054523 (n + 1)

end

end A127527.P8087482116524196701

noncomputable section

/-- A127527: Triangle T(n,k)= tau(k)*phi(n/k) if k|n, else T(n,k)=0.

Offset 1, canonical program `A127527.P8087482116524196701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127527 (n : ℕ) : ℤ :=
  A127527.P8087482116524196701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127528.P11170222815529072783

`A051194(A127739(n+1))*A054523(n+1)`
-/

namespace A127528.P11170222815529072783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (A127739 (n + 1)).toNat * A054523 (n + 1)

end

end A127528.P11170222815529072783

noncomputable section

/-- A127528: Triangle T(n,k) read by rows: tau(n)*phi(n/k) if k|n, else 0.

Offset 1, canonical program `A127528.P11170222815529072783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A127528 (n : ℕ) : ℤ :=
  A127528.P11170222815529072783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A127528.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127641.P15862743544218899426

`A182986(A127446(n+1)+1)`
-/

namespace A127641.P15862743544218899426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A127446 (n + 1) + 1).toNat

end

end A127641.P15862743544218899426

noncomputable section

/-- A127641: A127640 * A051731 as infinite lower triangular matrices.

Offset 1, canonical program `A127641.P15862743544218899426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127641 (n : ℕ) : ℤ :=
  A127641.P15862743544218899426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127649.P11524533547254049656

`A054523(n+1)*A074712(n+1)`
-/

namespace A127649.P11524533547254049656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A074712 (n + 1)

end

end A127649.P11524533547254049656

noncomputable section

/-- A127649: A127648 * A054523 as infinite lower triangular matrices.

Offset 1, canonical program `A127649.P11524533547254049656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127649 (n : ℕ) : ℤ :=
  A127649.P11524533547254049656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127649.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129360.P6323221230572987550

`A127139(n+1)%2`
-/

namespace A129360.P6323221230572987550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127139 (n + 1)) 2

end

end A129360.P6323221230572987550

noncomputable section

/-- A129360: Triangle read by rows: A054525 * A115361 as infinite lower triangular matrices.

Offset 1, canonical program `A129360.P6323221230572987550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129360 (n : ℕ) : ℤ :=
  A129360.P6323221230572987550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129360.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130300.P17282070162645378256

`round(A131033(n+1)/2*A055248(n))`
-/

namespace A130300.P17282070162645378256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131033 (n + 1) : ℚ) / 2 * (A055248 n : ℚ))

end

end A130300.P17282070162645378256

noncomputable section

/-- A130300: A007318 * A130296.

Offset 1, canonical program `A130300.P17282070162645378256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130300 (n : ℕ) : ℤ :=
  A130300.P17282070162645378256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130300.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A133805.P12564843643079496267

`A198321(n+1)+A133567(n+2)`
-/

namespace A133805.P12564843643079496267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 1) + A133567 (n + 2)

end

end A133805.P12564843643079496267

noncomputable section

/-- A133805: Triangle read by rows: A007318 * A133566 * A133080 as infinite lower triangular matrices.

Offset 0, canonical program `A133805.P12564843643079496267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133805 (n : ℕ) : ℤ :=
  A133805.P12564843643079496267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133805.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A136535.P11251443088563950437

`A132812(n+1)-A007318(n+1)*A198321(n+1)`
-/

namespace A136535.P11251443088563950437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132812 (n + 1) - A007318 (n + 1) * A198321 (n + 1)

end

end A136535.P11251443088563950437

noncomputable section

/-- A136535: A128064 * A001263.

Offset 1, canonical program `A136535.P11251443088563950437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136535 (n : ℕ) : ℤ :=
  A136535.P11251443088563950437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136535.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143087.P14732479182286257482

`A007318(n)*A143086(n)`
-/

namespace A143087.P14732479182286257482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A143086 n

end

end A143087.P14732479182286257482

noncomputable section

/-- A143087: Triangle read by rows: T(n,k) = (2*2^min(k,n-k) - 1)*binomial(n,k).

Offset 0, canonical program `A143087.P14732479182286257482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143087 (n : ℕ) : ℤ :=
  A143087.P14732479182286257482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143188.P1532405844694989274

`A007318(n)*A143187(n)`
-/

namespace A143188.P1532405844694989274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A143187 n

end

end A143188.P1532405844694989274

noncomputable section

/-- A143188: Triangle read by rows: T(n, k) = f(k) for 1 <= k <= floor(n/2), T(n, k) = f(n-k) for floor(n/2) < k <= n-1, with T(n, 0) = 1, T(n, n) = 1, and f(k) = (1/2)*(3-(-1)^k)*k*binomial(n, k).

Offset 0, canonical program `A143188.P1532405844694989274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143188 (n : ℕ) : ℤ :=
  A143188.P1532405844694989274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143188.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144079.P16455601221658546994

`abs(A113473(n+1)-A144078(n+1))`
-/

namespace A144079.P16455601221658546994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113473 (n + 1) - A144078 (n + 1)|

end

end A144079.P16455601221658546994

noncomputable section

/-- A144079: a(n) = the number of digits in the binary representation of n that equal the corresponding digit in the binary reversal of n. (I.e., a(n) = number of 0's in n XOR A030101(n).)

Offset 1, canonical program `A144079.P16455601221658546994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A144079 (n : ℕ) : ℤ :=
  A144079.P16455601221658546994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A144079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145388.P5432194978496946212

`∑{d}[A003557(n+1), A078439((n+1)/#)]`
-/

namespace A145388.P5432194978496946212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A078439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A145388.P5432194978496946212

noncomputable section

/-- A145388: Sum of (k,n)_* for k=1,2,...,n, where (k,n)_* is the greatest divisor of k which is a unitary divisor of n.

Offset 1, canonical program `A145388.P5432194978496946212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145388 (n : ℕ) : ℤ :=
  A145388.P5432194978496946212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145388.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A153041.P5870166533893309816

`A153051(n+1)+1`
-/

namespace A153041.P5870166533893309816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153051 (n + 1) + 1

end

end A153041.P5870166533893309816

noncomputable section

/-- A153041: Numbers n >=10 such that 2*n-19 is not a prime.

Offset 1, canonical program `A153041.P5870166533893309816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153041 (n : ℕ) : ℤ :=
  A153041.P5870166533893309816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153041.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A165201.P17103045525566951744

`A000007(n)+Δ[A164651(n)]`
-/

namespace A165201.P17103045525566951744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A165201.P17103045525566951744

noncomputable section

/-- A165201: Expansion of 1/(1-x*c(x)^3), c(x) the g.f. of A000108.

Offset 0, canonical program `A165201.P17103045525566951744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A165201 (n : ℕ) : ℤ :=
  A165201.P17103045525566951744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A165201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165203.P6511348831486964080

`Δ[A026726(n)]`
-/

namespace A165203.P6511348831486964080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165203.P6511348831486964080

noncomputable section

/-- A165203: Expansion of (1+x)*c(x)^3/(1-x*c(x)^3), c(x) the g.f. of A000108.

Offset 0, canonical program `A165203.P6511348831486964080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A165203 (n : ℕ) : ℤ :=
  A165203.P6511348831486964080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A165203.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171700.P7889605556974686210

`A156663(n+1)*A198321(n+1)`
-/

namespace A171700.P7889605556974686210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 (n + 1) * A198321 (n + 1)

end

end A171700.P7889605556974686210

noncomputable section

/-- A171700: Triangle T : T(n,k)= A007318(n,k)*a(n-k) with a(0)=0 and a(n)= A077957(n-1) for n>0.

Offset 0, canonical program `A171700.P7889605556974686210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A171700 (n : ℕ) : ℤ :=
  A171700.P7889605556974686210.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A171700.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A172319.P930179998604293317

`∑[A258800(n)]+1`
-/

namespace A172319.P930179998604293317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A172319.P930179998604293317

noncomputable section

/-- A172319: 10th column of A172119.

Offset 0, canonical program `A172319.P930179998604293317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A172319 (n : ℕ) : ℤ :=
  A172319.P930179998604293317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A172319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173742.P18054629541867481187

`2*A173740(n)-A132823(n)`
-/

namespace A173742.P18054629541867481187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173740 n - A132823 n

end

end A173742.P18054629541867481187

noncomputable section

/-- A173742: Triangle T(n,k) = binomial(n,k) + 6 with T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

Offset 0, canonical program `A173742.P18054629541867481187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173742 (n : ℕ) : ℤ :=
  A173742.P18054629541867481187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174301.P7482083887196883669

`A007318(n)*A152716(n)`
-/

namespace A174301.P7482083887196883669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A152716 n

end

end A174301.P7482083887196883669

noncomputable section

/-- A174301: A symmetrical triangle: T(n,k) = binomial(n, k)*if(floor(n/2) greater than or equal to k then 4^k, otherwise 4^(n-k)).

Offset 0, canonical program `A174301.P7482083887196883669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A174301 (n : ℕ) : ℤ :=
  A174301.P7482083887196883669.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A174301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174345.P17813268543818812090

`A001263(n+1)*A144464(n)`
-/

namespace A174345.P17813268543818812090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A144464 n

end

end A174345.P17813268543818812090

noncomputable section

/-- A174345: Triangle T(n, k) = (1/k)*binomial(n-1, k-1)*binomial(n, k-1)*2^(k-1) if floor(n/2) >= k, otherwise (1/k)*binomial(n-1, k-1)*binomial(n, k-1)*2^(n-k), read by rows.

Offset 1, canonical program `A174345.P17813268543818812090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174345 (n : ℕ) : ℤ :=
  A174345.P17813268543818812090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174346.P7160207387217513728

`A001263(n+1)*A152714(n)`
-/

namespace A174346.P7160207387217513728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A152714 n

end

end A174346.P7160207387217513728

noncomputable section

/-- A174346: Triangle T(n, k) = (binomial(n-1, k-1)*binomial(n, k-1)/k) * ( 3^(k-1) if floor(n/2) >= k, otherwise 3^(n-k) ), read by rows.

Offset 1, canonical program `A174346.P7160207387217513728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174346 (n : ℕ) : ℤ :=
  A174346.P7160207387217513728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174450.P5809996352905406914

`A144464(n)*A174449(n)`
-/

namespace A174450.P5809996352905406914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n * A174449 n

end

end A174450.P5809996352905406914

noncomputable section

/-- A174450: Triangle T(n, k, q) = n!*(n+1)!*q^k/((n-k)!(n-k+1)!) if floor(n/2) > k-1, otherwise n!*(n+1)!*q^(n-k)/(k!*(k+1)!) for q = 2, read by rows.

Offset 0, canonical program `A174450.P5809996352905406914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1681 terms. -/
def A174450 (n : ℕ) : ℤ :=
  A174450.P5809996352905406914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1681 terms. -/
def A174450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174451.P14204100503436890623

`A152714(n)*A174449(n)`
-/

namespace A174451.P14204100503436890623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152714 n * A174449 n

end

end A174451.P14204100503436890623

noncomputable section

/-- A174451: Triangle T(n, k, q) = n!*(n+1)!*q^k/((n-k)!(n-k+1)!) if floor(n/2) > k-1, otherwise n!*(n+1)!*q^(n-k)/(k!*(k+1)!) for q = 3, read by rows.

Offset 0, canonical program `A174451.P14204100503436890623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A174451 (n : ℕ) : ℤ :=
  A174451.P14204100503436890623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A174451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176835.P11267763139736940378

`A115878(n+1)+1`
-/

namespace A176835.P11267763139736940378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (n + 1) + 1

end

end A176835.P11267763139736940378

noncomputable section

/-- A176835: Number of positive integers k for which k^2 - n*k is a square.

Offset 1, canonical program `A176835.P11267763139736940378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176835 (n : ℕ) : ℤ :=
  A176835.P11267763139736940378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177229.P9517387556201153442

`A177228(n)+A103451(n)`
-/

namespace A177229.P9517387556201153442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177228 n + A103451 n

end

end A177229.P9517387556201153442

noncomputable section

/-- A177229: Triangle, read by rows, T(n, k) = -binomial(n,k) for 1 <= k <= n-1, otherwise T(n, k) = 4.

Offset 0, canonical program `A177229.P9517387556201153442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A177229 (n : ℕ) : ℤ :=
  A177229.P9517387556201153442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A177229.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A183761.P5340774791652619797

`A062801(n+1)/2`
-/

namespace A183761.P5340774791652619797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062801 (n + 1) : ℚ) / 2

end

end A183761.P5340774791652619797

noncomputable section

/-- A183761: Number of 2 X 2 nonsingular 0..n matrices with rows in increasing order.

Offset 1, canonical program `A183761.P5340774791652619797`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183761 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183761.P5340774791652619797.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183761.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A191750.P1006708974149694787

`∑{d}[n+1, A130054(#)*A176345((n+1)/#)]`
-/

namespace A191750.P1006708974149694787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A176345 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191750.P1006708974149694787

noncomputable section

/-- A191750: Dirichlet convolution of A000012 with A007947.

Offset 1, canonical program `A191750.P1006708974149694787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191750 (n : ℕ) : ℤ :=
  A191750.P1006708974149694787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191750.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A203951.P17010749481064235207

`round(A203905(n+1)/A133265(n))`
-/

namespace A203951.P17010749481064235207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A203905 (n + 1) : ℚ) / (A133265 n : ℚ))

end

end A203951.P17010749481064235207

noncomputable section

/-- A203951: Symmetric matrix based on (1,0,0,0,1,0,0,0,...), by antidiagonals.

Offset 1, canonical program `A203951.P17010749481064235207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203951 (n : ℕ) : ℤ :=
  A203951.P17010749481064235207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203951.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A210869.P5531968170261111367

`A209599(A057028(n+1)-1)`
-/

namespace A210869.P5531968170261111367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A057028 (n + 1) - 1).toNat

end

end A210869.P5531968170261111367

noncomputable section

/-- A210869: Triangle of coefficients of polynomials v(n,x) jointly generated with A210868; see the Formula section.

Offset 1, canonical program `A210869.P5531968170261111367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A210869 (n : ℕ) : ℤ :=
  A210869.P5531968170261111367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A210869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211059.P885985816871605879

`(n+1)^4-A211058(n+1)`
-/

namespace A211059.P885985816871605879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A211058 (n + 1)

end

end A211059.P885985816871605879

noncomputable section

/-- A211059: Number of 2 X 2 matrices having all terms in {1,...,n} and positive determinant.

Offset 1, canonical program `A211059.P885985816871605879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A211059 (n : ℕ) : ℤ :=
  A211059.P885985816871605879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A211059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211067.P18215761913343296145

`A211064(n+1)-A211066(n+1)`
-/

namespace A211067.P18215761913343296145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211064 (n + 1) - A211066 (n + 1)

end

end A211067.P18215761913343296145

noncomputable section

/-- A211067: Number of 2 X 2 matrices having all terms in {1,...,n} and positive even determinant.

Offset 1, canonical program `A211067.P18215761913343296145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211067 (n : ℕ) : ℤ :=
  A211067.P18215761913343296145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213773.P8651754157967858797

`A213825(n+1)-A095871(n+1)`
-/

namespace A213773.P8651754157967858797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213825 (n + 1) - A095871 (n + 1)

end

end A213773.P8651754157967858797

noncomputable section

/-- A213773: Rectangular array: (row n) = b**c, where b(h) = 3*h-2, c(h) = 3*n-5+3*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213773.P8651754157967858797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213773 (n : ℕ) : ℤ :=
  A213773.P8651754157967858797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213815.P11762082547027423412

`Δ[A000034(n)+2*A107817(n)]`
-/

namespace A213815.P11762082547027423412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + 2 * A107817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213815.P11762082547027423412

noncomputable section

/-- A213815: Arithmetic mean of next a(n) successive nonnegative integers is prime.

Offset 1, canonical program `A213815.P11762082547027423412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A213815 (n : ℕ) : ℤ :=
  A213815.P11762082547027423412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A213815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214308.P10181968617676243158

`C(n+2, 2)*A056342(n+2)`
-/

namespace A214308.P10181968617676243158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A056342 (n + 2)

end

end A214308.P10181968617676243158

noncomputable section

/-- A214308: a(n) is the number of all two colored bracelets (necklaces with turning over allowed) with n beads with the two colors from a repertoire of n distinct colors, for n>=2.

Offset 2, canonical program `A214308.P10181968617676243158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214308 (n : ℕ) : ℤ :=
  A214308.P10181968617676243158.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216292.P8549922877224519400

`floor(A078494(n+1)/10)`
-/

namespace A216292.P8549922877224519400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078494 (n + 1) : ℚ) / 10⌋

end

end A216292.P8549922877224519400

noncomputable section

/-- A216292: Values of k such that there is exactly one prime between 10k and 10k + 9.

Offset 1, canonical program `A216292.P8549922877224519400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216292 (n : ℕ) : ℤ :=
  A216292.P8549922877224519400.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216292.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216303.P11345559073059710455

`eq[A063143(n+1), A179816(n)]`
-/

namespace A216303.P11345559073059710455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216303.P11345559073059710455

noncomputable section

/-- A216303: Numbers k such that 10k+1 and 10k+3 are prime but 10k+7 and 10k+9 are composite.

Offset 1, canonical program `A216303.P11345559073059710455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A216303 (n : ℕ) : ℤ :=
  (A216303.P11345559073059710455.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A216303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216304.P5647230312299655537

`eq[A063155(n+1), A179816(n)]`
-/

namespace A216304.P5647230312299655537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216304.P5647230312299655537

noncomputable section

/-- A216304: Values of k such that 10*k+1 and 10*k+7 alone are prime between 10*k and 10*k+9.

Offset 1, canonical program `A216304.P5647230312299655537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. -/
def A216304 (n : ℕ) : ℤ :=
  (A216304.P5647230312299655537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. -/
def A216304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216305.P1116429648597264212

`floor(A141026(n+1)/10)`
-/

namespace A216305.P1116429648597264212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141026 (n + 1) : ℚ) / 10⌋

end

end A216305.P1116429648597264212

noncomputable section

/-- A216305: Values of k such that 10*k+1 and 10*k+9 alone are prime between 10*k and 10*k+9.

Offset 1, canonical program `A216305.P1116429648597264212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216305 (n : ℕ) : ℤ :=
  A216305.P1116429648597264212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216307.P12968432811877988105

`eq[A179816(n), A305074(n+1)]`
-/

namespace A216307.P12968432811877988105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216307.P12968432811877988105

noncomputable section

/-- A216307: Values of k such that 10*k+3 and 10*k+9 alone are prime between 10*k and 10*k+9.

Offset 1, canonical program `A216307.P12968432811877988105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A216307 (n : ℕ) : ℤ :=
  (A216307.P12968432811877988105.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A216307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216309.P13475268406436914155

`A078494(eq[1, A078494(n+1)%5]+1)`
-/

namespace A216309.P13475268406436914155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078494 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216309.P13475268406436914155

noncomputable section

/-- A216309: The prime ending in 1 is the only prime in a decade.

Offset 1, canonical program `A216309.P13475268406436914155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A216309 (n : ℕ) : ℤ :=
  A216309.P13475268406436914155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A216309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216310.P16292608153891418272

`A078494(eq[3, A078494(n+1)%5]+1)`
-/

namespace A216310.P16292608153891418272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078494 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216310.P16292608153891418272

noncomputable section

/-- A216310: The prime ending in 3 is the only prime in a decade.

Offset 1, canonical program `A216310.P16292608153891418272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2530 terms. -/
def A216310 (n : ℕ) : ℤ :=
  A216310.P16292608153891418272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2530 terms. -/
def A216310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216311.P1626925230596813176

`A078494(eq[2, A078494(n+1)%5]+1)`
-/

namespace A216311.P1626925230596813176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078494 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216311.P1626925230596813176

noncomputable section

/-- A216311: The prime ending in 7 is the only prime in a decade.

Offset 1, canonical program `A216311.P1626925230596813176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A216311 (n : ℕ) : ℤ :=
  A216311.P1626925230596813176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A216311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216965.P13115869739118727536

`p?[A305801(2*(n+1))%A305800(2*(n+2))]`
-/

namespace A216965.P13115869739118727536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305801 (2 * (n + 1))) (A305800 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216965.P13115869739118727536

noncomputable section

/-- A216965: Primes p such that nonprime(p) is odd, where nonprime(1) = 0.

Offset 1, canonical program `A216965.P13115869739118727536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3873 terms. -/
def A216965 (n : ℕ) : ℤ :=
  A216965.P13115869739118727536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3873 terms. -/
def A216965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218281.P6360784936974079113

`∑[record[2*A251750(n)]]+1`
-/

namespace A218281.P6360784936974079113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218281.P6360784936974079113

noncomputable section

/-- A218281: Hilltop maps: number of n X 1 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..4 n X 1 array.

Offset 1, canonical program `A218281.P6360784936974079113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A218281 (n : ℕ) : ℤ :=
  A218281.P6360784936974079113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A218281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221838.P16241372166790464696

`A221837(n+1)+A046079(n+1)`
-/

namespace A221838.P16241372166790464696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221837 (n + 1) + A046079 (n + 1)

end

end A221838.P16241372166790464696

noncomputable section

/-- A221838: Number of integer Heron triangles of height n.

Offset 1, canonical program `A221838.P16241372166790464696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, A221837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A221838 (n : ℕ) : ℤ :=
  A221838.P16241372166790464696.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, A221837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A221838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226194.P16380617872470380368

`(-1)^n*A053692(n)`
-/

namespace A226194.P16380617872470380368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A053692 n

end

end A226194.P16380617872470380368

noncomputable section

/-- A226194: Expansion of f(-x^1, -x^7) * f(-x^3, -x^5) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A226194.P16380617872470380368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226194 (n : ℕ) : ℤ :=
  A226194.P16380617872470380368.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227910.P2779203603949293786

`A262232(n+3)-A059076(n+3)`
-/

namespace A227910.P2779203603949293786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262232 (n + 3) - A059076 (n + 3)

end

end A227910.P2779203603949293786

noncomputable section

/-- A227910: The number of necklaces with n beads of white and red colors, including at least three white ones.

Offset 3, canonical program `A227910.P2779203603949293786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A227910 (n : ℕ) : ℤ :=
  A227910.P2779203603949293786.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A227910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228132.P8737515044422985900

`Δ[A014311(n+1)]`
-/

namespace A228132.P8737515044422985900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228132.P8737515044422985900

noncomputable section

/-- A228132: First differences of A014311.

Offset 1, canonical program `A228132.P8737515044422985900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A228132 (n : ℕ) : ℤ :=
  A228132.P8737515044422985900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A228132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229035.P11532377418008714060

`∑[A082233(n)]`
-/

namespace A229035.P11532377418008714060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229035.P11532377418008714060

noncomputable section

/-- A229035: Partial sums of A082233 (read sequentially meandering).

Offset 1, canonical program `A229035.P11532377418008714060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229035 (n : ℕ) : ℤ :=
  A229035.P11532377418008714060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236188.P8240144379786060525

`Δ[A008366(n+2)]`
-/

namespace A236188.P8240144379786060525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236188.P8240144379786060525

noncomputable section

/-- A236188: Differences between terms of compacting Eratosthenes sieve for prime(7) = 17.

Offset 1, canonical program `A236188.P8240144379786060525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5759 terms. -/
def A236188 (n : ℕ) : ℤ :=
  A236188.P8240144379786060525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5759 terms. -/
def A236188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236192.P3828994098142585195

`A163000(∑[A284938(2*n+5)])%2`
-/

namespace A236192.P3828994098142585195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163000 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 2

end

end A236192.P3828994098142585195

noncomputable section

/-- A236192: a(n) = |{0 < k < n: p = phi(k) + phi(n-k)/4 + 1, prime(p)^2 + (2*p)^2 and p^2 + (2*prime(p))^2 are all prime}|, where phi(.) is Euler's totient function.

Offset 1, canonical program `A236192.P3828994098142585195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A236192 (n : ℕ) : ℤ :=
  A236192.P3828994098142585195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A236192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238605.P18202506420963735544

`∩[A080774(n+1), A114436(n+1)]`
-/

namespace A238605.P18202506420963735544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P18202506420963735544

noncomputable section

/-- A238605: Semiprimes n such that (n+1)/4 also is a semiprime.

Offset 1, canonical program `A238605.P18202506420963735544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A238605 (n : ℕ) : ℤ :=
  (A238605.P18202506420963735544.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A238605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239304.P17607192891470452994

`A209278(A057028(n+1))`
-/

namespace A239304.P17607192891470452994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A057028 (n + 1)).toNat

end

end A239304.P17607192891470452994

noncomputable section

/-- A239304: Triangle of permutations corresponding to the compressed square roots of Gray code * bit-reversal permutation (A239303).

Offset 1, canonical program `A239304.P17607192891470452994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A239304 (n : ℕ) : ℤ :=
  A239304.P17607192891470452994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A239304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239613.P14059425188494653900

`A000005(n+1)*A227499(n+1)`
-/

namespace A239613.P14059425188494653900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A227499 (n + 1)

end

end A239613.P14059425188494653900

noncomputable section

/-- A239613: a(n) = Sum_{0 < x,y,z,t <= n and gcd(x^2 + y^2 + z^2 + t^2, n)=1} gcd(x^2 + y^2 + z^2 + t^2 - 1, n).

Offset 1, canonical program `A239613.P14059425188494653900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239613 (n : ℕ) : ℤ :=
  A239613.P14059425188494653900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242253.P7785784206183266084

`A175078(A076368(n+2))+1`
-/

namespace A242253.P7785784206183266084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A076368 (n + 2)).toNat + 1

end

end A242253.P7785784206183266084

noncomputable section

/-- A242253: Number of primes in the primes-greedy sum (defined at A242252) for the n-th odd prime.

Offset 1, canonical program `A242253.P7785784206183266084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A242253 (n : ℕ) : ℤ :=
  A242253.P7785784206183266084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A242253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244227.P9593669895290812264

`A244228(n)-A179051(a(n-1))` with `a(0)=1`
-/

namespace A244227.P9593669895290812264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A244228 n - A179051 (a (n - 1)).toNat

end

end A244227.P9593669895290812264

noncomputable section

/-- A244227: Even bisection of A244226.

Offset 0, canonical program `A244227.P9593669895290812264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244227 (n : ℕ) : ℤ :=
  A244227.P9593669895290812264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245212.P13496061215896948389

`A038040(n+1)-A245211(n+1)`
-/

namespace A245212.P13496061215896948389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A245211 (n + 1)

end

end A245212.P13496061215896948389

noncomputable section

/-- A245212: a(n) = n * tau(n) - Sum_{(d<n) | n} (d * tau(d)).

Offset 1, canonical program `A245212.P13496061215896948389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245211, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245212 (n : ℕ) : ℤ :=
  A245212.P13496061215896948389.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245211, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245536.P3272298368546471376

`∏{e}[A163511(A054429(n+1)), #-1]`
-/

namespace A245536.P3272298368546471376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A245536.P3272298368546471376

noncomputable section

/-- A245536: Write n>=1 as either n=2^k-2^r with 0 <= r <= k-1, in which case a(2^k-2^r)=k-r-1, or as n=2^k-2^r+j with 2 <= r <= k-1, 1 <= j < 2^r-1, in which case a(2^k-2^r+j)=(k-r-1)*a(j).

Offset 1, canonical program `A245536.P3272298368546471376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A245536 (n : ℕ) : ℤ :=
  A245536.P3272298368546471376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A245536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246160.P12838974675095138970

`A246159(n)+A065620(n)`
-/

namespace A246160.P12838974675095138970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 n + A065620 n

end

end A246160.P12838974675095138970

noncomputable section

/-- A246160: Inverse function to the injection A065621.

Offset 0, canonical program `A246160.P12838974675095138970`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246160 (n : ℕ) : ℤ :=
  A246160.P12838974675095138970.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246920.P9162283999492987608

`A115878(A038502(n+1))+A115878(n+1)`
-/

namespace A246920.P9162283999492987608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (A038502 (n + 1)).toNat + A115878 (n + 1)

end

end A246920.P9162283999492987608

noncomputable section

/-- A246920: The number of distinct lengths of nontrivial integral cevians of an equilateral triangle of side n that divide an edge into two integral parts.

Offset 1, canonical program `A246920.P9162283999492987608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246920 (n : ℕ) : ℤ :=
  A246920.P9162283999492987608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247462.P12776908162959564945

`A000005(A323172(n+2)^A019425(n))`
-/

namespace A247462.P12776908162959564945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A019425 n : ℤ))).toNat

end

end A247462.P12776908162959564945

noncomputable section

/-- A247462: Number of iterations needed in A058977 to reach a result.

Offset 1, canonical program `A247462.P12776908162959564945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A247462 (n : ℕ) : ℤ :=
  A247462.P12776908162959564945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A247462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247897.P17986607596554966549

`Δ[A247676(n+1)]`
-/

namespace A247897.P17986607596554966549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247897.P17986607596554966549

noncomputable section

/-- A247897: First differences of A247676.

Offset 1, canonical program `A247897.P17986607596554966549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247897 (n : ℕ) : ℤ :=
  A247897.P17986607596554966549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001036.P12089511997625600617

`A062692(n+1)-1`
-/

namespace A001036.P12089511997625600617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062692 (n + 1) - 1

end

end A001036.P12089511997625600617

noncomputable section

/-- A001036: Partial sums of A001037, omitting A001037(1).

Offset 1, canonical program `A001036.P12089511997625600617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001036 (n : ℕ) : ℤ :=
  A001036.P12089511997625600617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005356.P1340583783643983062

`∑[∑[char[A062692(n+1)]]]`
-/

namespace A005356.P1340583783643983062
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062692 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005356.P1340583783643983062

noncomputable section

/-- A005356: Number of low discrepancy sequences in base 2.

Offset 1, canonical program `A005356.P1340583783643983062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005356 (n : ℕ) : ℤ :=
  (A005356.P1340583783643983062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005745.P2343868508805754794

`A002727(n+1)-A002623(n+1)`
-/

namespace A005745.P2343868508805754794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002727 (n + 1) - A002623 (n + 1)

end

end A005745.P2343868508805754794

noncomputable section

/-- A005745: Number of n-covers of an unlabeled 3-set.

Offset 1, canonical program `A005745.P2343868508805754794`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002727, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005745 (n : ℕ) : ℤ :=
  A005745.P2343868508805754794.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002727, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005745.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A024363.P18199515356215548539

`A024361(n+1)+A024362(n+1)`
-/

namespace A024363.P18199515356215548539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) + A024362 (n + 1)

end

end A024363.P18199515356215548539

noncomputable section

/-- A024363: Number of primitive Pythagorean triangles with side n.

Offset 1, canonical program `A024363.P18199515356215548539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A024362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024363 (n : ℕ) : ℤ :=
  A024363.P18199515356215548539.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A024362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024473.P1897966337060809418

`A024592(n+1)+A024592(n+1)-A024463(n+1)`
-/

namespace A024473.P1897966337060809418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024592 (n + 1) + (A024592 (n + 1) - A024463 (n + 1))

end

end A024473.P1897966337060809418

noncomputable section

/-- A024473: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Lucas numbers), t = (odd natural numbers).

Offset 1, canonical program `A024473.P1897966337060809418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A024473 (n : ℕ) : ℤ :=
  A024473.P1897966337060809418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A024473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024511.P1058289518058299462

`eq[char[A024510(n+1)], A000007(n)]`
-/

namespace A024511.P1058289518058299462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024510 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024511.P1058289518058299462

noncomputable section

/-- A024511: Positions of odd numbers in A004431 (sums of 2 distinct nonzero squares).

Offset 1, canonical program `A024511.P1058289518058299462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4832 terms. -/
def A024511 (n : ℕ) : ℤ :=
  (A024511.P1058289518058299462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4832 terms. -/
def A024511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024879.P8859403091492470975

`A307597(n+5)-char[A046691(n)]`
-/

namespace A024879.P8859403091492470975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (n + 5) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024879.P8859403091492470975

noncomputable section

/-- A024879: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ], s = A023531.

Offset 2, canonical program `A024879.P8859403091492470975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024879 (n : ℕ) : ℤ :=
  A024879.P8859403091492470975.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024879.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026679.P8036760827075094088

`∑[A026677(n)]`
-/

namespace A026679.P8036760827075094088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026679.P8036760827075094088

noncomputable section

/-- A026679: Sum{T(i,j)}, 0<=i<=n, 0<=j<=n, T given by A026670.

Offset 0, canonical program `A026679.P8036760827075094088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A026679 (n : ℕ) : ℤ :=
  A026679.P8036760827075094088.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A026679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026733.P9218894337222086257

`abs(Δ[A026677(abs(1-n))])`
-/

namespace A026733.P9218894337222086257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026677 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A026733.P9218894337222086257

noncomputable section

/-- A026733: a(n) = Sum_{k=0..floor(n/2)} T(n,k), T given by A026725.

Offset 0, canonical program `A026733.P9218894337222086257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026733 (n : ℕ) : ℤ :=
  A026733.P9218894337222086257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026733.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A033015.P17530871968754790428

`filter[A048717(n+1), A152822(#)]`
-/

namespace A033015.P17530871968754790428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A033015.P17530871968754790428

noncomputable section

/-- A033015: Numbers whose base-2 expansion has no run of digits with length < 2.

Offset 1, canonical program `A033015.P17530871968754790428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A033015 (n : ℕ) : ℤ :=
  A033015.P17530871968754790428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A033015.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A033559.P14099356790434154547

`A151800(n+4)-A033597(n+4)`
-/

namespace A033559.P14099356790434154547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 4) - A033597 (n + 4)

end

end A033559.P14099356790434154547

noncomputable section

/-- A033559: a(n) = (q - p)/2, where p is the largest prime < n and q is the smallest prime > n.

Offset 4, canonical program `A033559.P14099356790434154547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033559 (n : ℕ) : ℤ :=
  A033559.P14099356790434154547.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033941.P7624727038485756511

`Δ[A183003(A018252(n+1))]`
-/

namespace A033941.P7624727038485756511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033941.P7624727038485756511

noncomputable section

/-- A033941: Number of ways A002808(n) can be properly factored into 2 integers.

Offset 1, canonical program `A033941.P7624727038485756511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A033941 (n : ℕ) : ℤ :=
  A033941.P7624727038485756511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A033941.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035200.P11648274898513142306

`A035185((n+1)/A038500(n+1))`
-/

namespace A035200.P11648274898513142306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A035200.P11648274898513142306

noncomputable section

/-- A035200: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 18.

Offset 1, canonical program `A035200.P11648274898513142306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035200 (n : ℕ) : ℤ :=
  A035200.P11648274898513142306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035251.P7268071419077795163

`record[(n+1)%(A139608(n)^A035185(n+1))]`
-/

namespace A035251.P7268071419077795163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A139608 n : ℚ) ^ (A035185 (n + 1) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035251.P7268071419077795163

noncomputable section

/-- A035251: Positive numbers of the form x^2 - 2y^2 with integers x, y.

Offset 1, canonical program `A035251.P7268071419077795163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A035251 (n : ℕ) : ℤ :=
  A035251.P7268071419077795163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A035251.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038068.P14683916657712010267

`∑{d}[A055975(n+1), A038064((n+1)/#)]`
-/

namespace A038068.P14683916657712010267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A038064 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038068.P14683916657712010267

noncomputable section

/-- A038068: Product_{k>=1}(1 + x^k)^a(k) = 1 + 3x.

Offset 1, canonical program `A038068.P14683916657712010267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A038068 (n : ℕ) : ℤ :=
  A038068.P14683916657712010267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A038068.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039739.P9876725710224219756

`2*A039734(n+2)-A000040(n+2)`
-/

namespace A039739.P9876725710224219756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039734 (n + 2) - A000040 (n + 2)

end

end A039739.P9876725710224219756

noncomputable section

/-- A039739: a(n) = 2*q-prime(n), where q is the prime < prime(n) for which (prime(n) mod q) is maximal.

Offset 2, canonical program `A039739.P9876725710224219756`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039734, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039739 (n : ℕ) : ℤ :=
  A039739.P9876725710224219756.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039734, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039739.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A039832.P5669691020800147113

`filter[A005237(n+1), A354927(#)]`
-/

namespace A039832.P5669691020800147113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A039832.P5669691020800147113

noncomputable section

/-- A039832: Numbers k such that k and k+1 both have 4 divisors.

Offset 1, canonical program `A039832.P5669691020800147113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2992 terms. -/
def A039832 (n : ℕ) : ℤ :=
  A039832.P5669691020800147113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2992 terms. -/
def A039832.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A049094.P18112774684826038960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A049094 (n : ℕ) : ℤ :=
  (A049094.P18112774684826038960.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A049094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049111.P637317561935572005

`A000005(A005237(n+1))`
-/

namespace A049111.P637317561935572005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005237 (n + 1)).toNat

end

end A049111.P637317561935572005

noncomputable section

/-- A049111: Number of divisors of A005237(n).

Offset 1, canonical program `A049111.P637317561935572005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049111 (n : ℕ) : ℤ :=
  A049111.P637317561935572005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049111.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049640.P11900036197294698839

`∑[ceil(A049644(n)/2)]`
-/

namespace A049640.P11900036197294698839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049644 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P11900036197294698839

noncomputable section

/-- A049640: a(n) = Sum_{i=0..n} T(i,n-i), array T as in A049639.

Offset 0, canonical program `A049640.P11900036197294698839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A049640 (n : ℕ) : ℤ :=
  A049640.P11900036197294698839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A049640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050146.P3244852620839180404

`A028310(n)*A155069(n)`
-/

namespace A050146.P3244852620839180404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A155069 n

end

end A050146.P3244852620839180404

noncomputable section

/-- A050146: a(n) = T(n,n), array T as in A050143.

Offset 0, canonical program `A050146.P3244852620839180404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A050146 (n : ℕ) : ℤ :=
  A050146.P3244852620839180404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A050146.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051611.P8956593537962413529

`comp[A051533(n+1)-1]+1`
-/

namespace A051611.P8956593537962413529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A051611.P8956593537962413529

noncomputable section

/-- A051611: Numbers that are not the sum of 2 nonzero triangular numbers.

Offset 1, canonical program `A051611.P8956593537962413529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051611 (n : ℕ) : ℤ :=
  (A051611.P8956593537962413529.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051611.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A053822.P1516278078536147993

`∑{d}[n+1, #*A328254((n+1)/#)]`
-/

namespace A053822.P1516278078536147993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053822.P1516278078536147993

noncomputable section

/-- A053822: Dirichlet inverse of sigma_2 function (A001157).

Offset 1, canonical program `A053822.P1516278078536147993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053822 (n : ℕ) : ℤ :=
  A053822.P1516278078536147993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054804.P3151094855790563465

`A000040(A000720(A054805(n+1)-1))`
-/

namespace A054804.P3151094855790563465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054805 (n + 1) - 1).toNat).toNat

end

end A054804.P3151094855790563465

noncomputable section

/-- A054804: First term of strong prime quartets: prime(m+1)-prime(m) > prime(m+2)-prime(m+1) > prime(m+3)-prime(m+2).

Offset 1, canonical program `A054804.P3151094855790563465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A054804 (n : ℕ) : ℤ :=
  A054804.P3151094855790563465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A054804.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A055825.P5370810076605827676

`Δ[A002002(n)]+n*A155069(n)`
-/

namespace A055825.P5370810076605827676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A155069 n

end

end A055825.P5370810076605827676

noncomputable section

/-- A055825: a(n) = T(2n+1,n), array T as in A055818.

Offset 0, canonical program `A055825.P5370810076605827676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A055825 (n : ℕ) : ℤ :=
  A055825.P5370810076605827676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A055825.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056268.P10353224445978175421

`6*A056279(n+1)`
-/

namespace A056268.P10353224445978175421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A056279 (n + 1)

end

end A056268.P10353224445978175421

noncomputable section

/-- A056268: Number of primitive (aperiodic) words of length n which contain exactly three different symbols.

Offset 1, canonical program `A056268.P10353224445978175421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A056268 (n : ℕ) : ℤ :=
  A056268.P10353224445978175421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A056268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056539.P17406113578210965747

`A341916(A003188(n))`
-/

namespace A056539.P17406113578210965747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A003188 n).toNat

end

end A056539.P17406113578210965747

noncomputable section

/-- A056539: Self-inverse permutation: reverse the bits in binary expansion of n and also complement them (0->1, 1->0) if the run count (A005811) is even.

Offset 0, canonical program `A056539.P17406113578210965747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A056539 (n : ℕ) : ℤ :=
  A056539.P17406113578210965747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A056539.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A059412.P1207478742608330448

`A000038(n)+Δ[A059413(A028310(n))]`
-/

namespace A059412.P1207478742608330448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059413 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A059412.P1207478742608330448

noncomputable section

/-- A059412: Number of distinct minimal unary DFA's with exactly n states.

Offset 1, canonical program `A059412.P1207478742608330448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A059412 (n : ℕ) : ℤ :=
  A059412.P1207478742608330448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A059412.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062790.P5415624989759604668

`A000010(n+1)-A007431(n+1)`
-/

namespace A062790.P5415624989759604668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A007431 (n + 1)

end

end A062790.P5415624989759604668

noncomputable section

/-- A062790: Moebius transform of the cototient function A051953.

Offset 1, canonical program `A062790.P5415624989759604668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007431, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062790 (n : ℕ) : ℤ :=
  A062790.P5415624989759604668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007431, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062790.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063647.P10388026275025770888

`A018892(n+1)-1`
-/

namespace A063647.P10388026275025770888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) - 1

end

end A063647.P10388026275025770888

noncomputable section

/-- A063647: Number of ways to write 1/n as a difference of exactly 2 unit fractions.

Offset 1, canonical program `A063647.P10388026275025770888`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063647 (n : ℕ) : ℤ :=
  A063647.P10388026275025770888.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063647.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A065047.P8604201146811212039

`p?[A300725(A080166(n+1))]`
-/

namespace A065047.P8604201146811212039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300725 (A080166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065047.P8604201146811212039

noncomputable section

/-- A065047: Primes which when written in base 2 and prepended with a 1 produce a prime.

Offset 1, canonical program `A065047.P8604201146811212039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. -/
def A065047 (n : ℕ) : ℤ :=
  A065047.P8604201146811212039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. -/
def A065047.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A067293.P1416337670145948277

`∩[A005237(n+1), A068526(n+1)]`
-/

namespace A067293.P1416337670145948277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067293.P1416337670145948277

noncomputable section

/-- A067293: Numbers k such that prime(k+1)-(k+1)*tau(k+1) = prime(k)-k*tau(k) where tau(k) = A000005(k) is the number of divisors of k.

Offset 1, canonical program `A067293.P1416337670145948277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 884 terms. -/
def A067293 (n : ℕ) : ℤ :=
  (A067293.P1416337670145948277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 884 terms. -/
def A067293.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071585.P327096867554570626

`A093875(2*n+1)`
-/

namespace A071585.P327096867554570626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (2 * n + 1)

end

end A071585.P327096867554570626

noncomputable section

/-- A071585: Numerator of the continued fraction expansion whose terms are the first-order differences of exponents in the binary representation of 4*n, with the exponents of 2 being listed in descending order.

Offset 0, canonical program `A071585.P327096867554570626`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071585 (n : ℕ) : ℤ :=
  A071585.P327096867554570626.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071585.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A075779.P14890746693869865827

`A075798(lt[2, A002260(n+1)])`
-/

namespace A075779.P14890746693869865827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075779.P14890746693869865827

noncomputable section

/-- A075779: Triangle T(n,k) = f(n,k,n-1), n >= 2, 1 <= k <= n-1, where f is given below.

Offset 2, canonical program `A075779.P14890746693869865827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A075779 (n : ℕ) : ℤ :=
  A075779.P14890746693869865827.a (n - 2)

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

/-! ## A077088.P11718412499203878740

`∑{d}[2*A001065(n+1)-A051709(n+1), A007431(#)]`
-/

namespace A077088.P11718412499203878740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) - A051709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A077088.P11718412499203878740

noncomputable section

/-- A077088: a(n) = phi(sigma(n) - phi(n)), where phi is Euler's totient function and sigma is the sum of divisors function, with a(1) = 0.

Offset 1, canonical program `A077088.P11718412499203878740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A077088 (n : ℕ) : ℤ :=
  A077088.P11718412499203878740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A077088.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078462.P9783510630940783236

`∑[A035185(n+1)]`
-/

namespace A078462.P9783510630940783236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078462.P9783510630940783236

noncomputable section

/-- A078462: Partial sums of A035185.

Offset 1, canonical program `A078462.P9783510630940783236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078462 (n : ℕ) : ℤ :=
  A078462.P9783510630940783236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078462.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A079953.P12791131789649481837

`A039734((2*n)%(n+1)+2)`
-/

namespace A079953.P12791131789649481837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039734 (2 * n % (n + 1) + 2)

end

end A079953.P12791131789649481837

noncomputable section

/-- A079953: Smallest prime p such that prime(n) mod 2*p = prime(n).

Offset 1, canonical program `A079953.P12791131789649481837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079953 (n : ℕ) : ℤ :=
  A079953.P12791131789649481837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080585.P5466522810854479551

`A080587(n)-(n+1)`
-/

namespace A080585.P5466522810854479551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n - (n + 1 : ℤ)

end

end A080585.P5466522810854479551

noncomputable section

/-- A080585: Partial sums of A080584.

Offset 0, canonical program `A080585.P5466522810854479551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080585 (n : ℕ) : ℤ :=
  A080585.P5466522810854479551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080790.P12928423801354137828

`p?[A377421(n+1)]`
-/

namespace A080790.P12928423801354137828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080790.P12928423801354137828

noncomputable section

/-- A080790: Binary emirps, primes whose binary reversal is a different prime.

Offset 1, canonical program `A080790.P12928423801354137828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. -/
def A080790 (n : ℕ) : ℤ :=
  A080790.P12928423801354137828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. -/
def A080790.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083795.P8166944767162497193

`A005237(n+1)+1`
-/

namespace A083795.P8166944767162497193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1) + 1

end

end A083795.P8166944767162497193

noncomputable section

/-- A083795: Numbers k such that k and k-1 have the same number of divisors. Numbers not included in A083794.

Offset 1, canonical program `A083795.P8166944767162497193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083795 (n : ℕ) : ℤ :=
  A083795.P8166944767162497193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083795.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086552.P11972272164469090646

`A057922(n)+1`
-/

namespace A086552.P11972272164469090646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n + 1

end

end A086552.P11972272164469090646

noncomputable section

/-- A086552: Numbers x such that tau(x)/tau(x-1) is an integer, where tau() is the number of divisors function.

Offset 1, canonical program `A086552.P11972272164469090646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086552 (n : ℕ) : ℤ :=
  A086552.P11972272164469090646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087780.P10506925651447133355

`∑{d}[n+1, A035185(#)*A271102((n+1)/#)]`
-/

namespace A087780.P10506925651447133355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035185 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087780.P10506925651447133355

noncomputable section

/-- A087780: Number of non-congruent solutions to x^2 == 2 mod n.

Offset 1, canonical program `A087780.P10506925651447133355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087780 (n : ℕ) : ℤ :=
  A087780.P10506925651447133355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088759.P11604207977400772174

`eq[0, A309332(4*n+2)]`
-/

namespace A088759.P11604207977400772174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309332 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088759.P11604207977400772174

noncomputable section

/-- A088759: Numbers k such that (4*k+3)^2 + (4*k+2)^2 is prime.

Offset 1, canonical program `A088759.P11604207977400772174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. -/
def A088759 (n : ℕ) : ℤ :=
  (A088759.P11604207977400772174.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. -/
def A088759.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A089233.P13957741673571392928

`A018892(n+1)-A000005(n+1)`
-/

namespace A089233.P13957741673571392928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) - A000005 (n + 1)

end

end A089233.P13957741673571392928

noncomputable section

/-- A089233: Number of coprime pairs of divisors > 1 of n.

Offset 1, canonical program `A089233.P13957741673571392928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089233 (n : ℕ) : ℤ :=
  A089233.P13957741673571392928.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089233.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089803.P18032128666622257258

`A089798(A117451(n+1))`
-/

namespace A089803.P18032128666622257258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 (A117451 (n + 1)).toNat

end

end A089803.P18032128666622257258

noncomputable section

/-- A089803: Expansion of Jacobi theta function theta_4(q^5).

Offset 0, canonical program `A089803.P18032128666622257258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A089803 (n : ℕ) : ℤ :=
  A089803.P18032128666622257258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A089803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089811.P3805665720252983519

`A089798(n)/A132419(n)`
-/

namespace A089811.P3805665720252983519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089798 n : ℚ) / (A132419 n : ℚ)

end

end A089811.P3805665720252983519

noncomputable section

/-- A089811: Expansion of Jacobi theta function (3*theta_4(q^18) - theta_4(q^2))/2.

Offset 0, canonical program `A089811.P3805665720252983519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1717 terms. -/
def A089811 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089811.P3805665720252983519.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1717 terms. -/
def A089811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091396.P2690525811667358135

`A035185(∏{p}[n+1, #])`
-/

namespace A091396.P2690525811667358135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091396.P2690525811667358135

noncomputable section

/-- A091396: a(n) = Product_{ p | n } (1 + Legendre(2,p) ).

Offset 1, canonical program `A091396.P2690525811667358135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091396 (n : ℕ) : ℤ :=
  A091396.P2690525811667358135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091396.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A094193.P6959740835423411185

`A020652(eq[1, A020653(n+1)%2]+1)`
-/

namespace A094193.P6959740835423411185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020653 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A094193.P6959740835423411185

noncomputable section

/-- A094193: Values y of the generator pairs (x, y), x>y of primitive Pythagorean triples, sorted on x.

Offset 1, canonical program `A094193.P6959740835423411185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094193 (n : ℕ) : ℤ :=
  A094193.P6959740835423411185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094193.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A103970.P11872415913840163127

`2^n*A007971(n+1)`
-/

namespace A103970.P11872415913840163127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007971 (n + 1)

end

end A103970.P11872415913840163127

noncomputable section

/-- A103970: Expansion of (1 - sqrt(1 - 4*x - 12*x^2))/(2*x).

Offset 0, canonical program `A103970.P11872415913840163127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A103970 (n : ℕ) : ℤ :=
  A103970.P11872415913840163127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A103970.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107978.P3263671017790150072

`filter[A057948(n+1), A005171(#)]`
-/

namespace A107978.P3263671017790150072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A107978.P3263671017790150072

noncomputable section

/-- A107978: Products of two primes of the form 4n+3 (A002145).

Offset 1, canonical program `A107978.P3263671017790150072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A107978 (n : ℕ) : ℤ :=
  A107978.P3263671017790150072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A107978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108769.P16543093648704500764

`eq[1, A309332(n+1)]+1`
-/

namespace A108769.P16543093648704500764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309332 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A108769.P16543093648704500764

noncomputable section

/-- A108769: Numbers m such that m^2 + (m+1)^2 is a semiprime.

Offset 1, canonical program `A108769.P16543093648704500764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A108769 (n : ℕ) : ℤ :=
  (A108769.P16543093648704500764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A108769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109771.P3414303503878766770

`A112478(A028310(n))-A103137(n)`
-/

namespace A109771.P3414303503878766770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112478 (A028310 n).toNat - A103137 n

end

end A109771.P3414303503878766770

noncomputable section

/-- A109771: Expansion of g.f.: sqrt(1+6*x+x^2).

Offset 0, canonical program `A109771.P3414303503878766770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A109771 (n : ℕ) : ℤ :=
  A109771.P3414303503878766770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A109771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111248.P8740398258723781091

`A001617(n+1)+A001616(n+1)-1`
-/

namespace A111248.P8740398258723781091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (n + 1) + A001616 (n + 1) - 1

end

end A111248.P8740398258723781091

noncomputable section

/-- A111248: Dimension of the space of weight 2 modular forms for Gamma_0(n).

Offset 1, canonical program `A111248.P8740398258723781091`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001616, A001617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111248 (n : ℕ) : ℤ :=
  A111248.P8740398258723781091.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001616, A001617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111248.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A114191.P10721137948637682050

`(-1)^n*A064062(n)`
-/

namespace A114191.P10721137948637682050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A064062 n

end

end A114191.P10721137948637682050

noncomputable section

/-- A114191: Expansion of 1/(1+x*c(-2*x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A114191.P10721137948637682050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A114191 (n : ℕ) : ℤ :=
  A114191.P10721137948637682050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A114191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115137.P16976045627159990475

`abs(A064062(n)-Δ[A064062(n)])`
-/

namespace A115137.P16976045627159990475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064062 n - (f1 (n + 1) - f1 n)|

end

end A115137.P16976045627159990475

noncomputable section

/-- A115137: Second diagonal of triangle A113647 (called Y(2,1)).

Offset 0, canonical program `A115137.P16976045627159990475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A115137 (n : ℕ) : ℤ :=
  A115137.P16976045627159990475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A115137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115203.P5519273001455559311

`A064062(n+3)-A000257(n+3)`
-/

namespace A115203.P5519273001455559311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (n + 3) - A000257 (n + 3)

end

end A115203.P5519273001455559311

noncomputable section

/-- A115203: Sixth column of triangle A115193 (called C(1,2)).

Offset 0, canonical program `A115203.P5519273001455559311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115203 (n : ℕ) : ℤ :=
  A115203.P5519273001455559311.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116563.P2597294203523295225

`A001617(A000040(n+1))`
-/

namespace A116563.P2597294203523295225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A000040 (n + 1)).toNat

end

end A116563.P2597294203523295225

noncomputable section

/-- A116563: a(n) is the genus of the modular curve X_0(p) for p = prime(n).

Offset 1, canonical program `A116563.P2597294203523295225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116563 (n : ℕ) : ℤ :=
  A116563.P2597294203523295225.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116604.P1630362851422197254

`A010684(n)*A129447(n)`
-/

namespace A116604.P1630362851422197254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A129447 n

end

end A116604.P1630362851422197254

noncomputable section

/-- A116604: Expansion of q^(-1/2) * eta(q)^3 * eta(q^4) * eta(q^12) / (eta(q^2)^2 * eta(q^3)) in powers of q.

Offset 0, canonical program `A116604.P1630362851422197254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116604 (n : ℕ) : ℤ :=
  A116604.P1630362851422197254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118093.P12063885949380815492

`A115194(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A118093.P12063885949380815492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115194 n + 8 * a (n - 1)

end

end A118093.P12063885949380815492

noncomputable section

/-- A118093: Numbers of rooted hypermaps on the torus with n darts (darts are semi-edges in the particular case of ordinary maps).

Offset 3, canonical program `A118093.P12063885949380815492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A118093 (n : ℕ) : ℤ :=
  A118093.P12063885949380815492.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A118093.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119705.P18254515124902290660

`p?[A005237(n+1)-1]`
-/

namespace A119705.P18254515124902290660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119705.P18254515124902290660

noncomputable section

/-- A119705: Primes p such that the number of divisors of p+1 equals number of divisors of p+2.

Offset 1, canonical program `A119705.P18254515124902290660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A119705 (n : ℕ) : ℤ :=
  A119705.P18254515124902290660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A119705.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A121176.P2548896837835999624

`∪[A003657(n+1), A121684(n+1)]`
-/

namespace A121176.P2548896837835999624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121176.P2548896837835999624

noncomputable section

/-- A121176: Union of {8, 9, 18}, S, 2S and 4S, where S = squarefree numbers (A005117).

Offset 1, canonical program `A121176.P2548896837835999624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121176 (n : ℕ) : ℤ :=
  (A121176.P2548896837835999624.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121387.P5734124028624995740

`filter[A108181(n+1), A353814(#)]`
-/

namespace A121387.P5734124028624995740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A121387.P5734124028624995740

noncomputable section

/-- A121387: Semiprimes p*q with p and q primes of the form 4k+1 (A002144).

Offset 1, canonical program `A121387.P5734124028624995740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3607 terms. -/
def A121387 (n : ℕ) : ℤ :=
  A121387.P5734124028624995740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3607 terms. -/
def A121387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121944.P13014670239025665609

`∩[A050800(n+1), A053755(n)]`
-/

namespace A121944.P13014670239025665609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121944.P13014670239025665609

noncomputable section

/-- A121944: Composite number of the form 4n^2+1.

Offset 1, canonical program `A121944.P13014670239025665609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5036 terms. -/
def A121944 (n : ℕ) : ℤ :=
  (A121944.P13014670239025665609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5036 terms. -/
def A121944.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126068.P1244538512425352377

`and(-2, A007971(n))`
-/

namespace A126068.P1244538512425352377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A007971 n)

end

end A126068.P1244538512425352377

noncomputable section

/-- A126068: Expansion of 1 - x - sqrt(1 - 2*x - 3*x^2) in powers of x.

Offset 0, canonical program `A126068.P1244538512425352377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A126068 (n : ℕ) : ℤ :=
  A126068.P1244538512425352377.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A126068.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127504.P11541494672643269183

`∑{d}[A127446(n+1), A007431(#)]`
-/

namespace A127504.P11541494672643269183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A127504.P11541494672643269183

noncomputable section

/-- A127504: Triangle T(n,k) = phi(n) if k|n, =0 otherwise.

Offset 1, canonical program `A127504.P11541494672643269183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127504 (n : ℕ) : ℤ :=
  A127504.P11541494672643269183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127506.P11176136321246717551

`∑{d}[A127368(n+1), A007431(#)]`
-/

namespace A127506.P11176136321246717551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A127506.P11176136321246717551

noncomputable section

/-- A127506: Triangle read by rows: T(n,k) = A054521(n,k)*A000010(k), 1<=k<=n .

Offset 1, canonical program `A127506.P11176136321246717551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127506 (n : ℕ) : ℤ :=
  A127506.P11176136321246717551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127788.P5184033610480325738

`∑{d}[n+1, A001617(#)*A007427((n+1)/#)]`
-/

namespace A127788.P5184033610480325738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001617 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127788.P5184033610480325738

noncomputable section

/-- A127788: Dimension of the space of newforms of weight 2 and level n.

Offset 1, canonical program `A127788.P5184033610480325738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127788 (n : ℕ) : ℤ :=
  A127788.P5184033610480325738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127788.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128980.P8498659622662109189

`A007431(abs(A127139(n+1)))`
-/

namespace A128980.P8498659622662109189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 |A127139 (n + 1)|.toNat

end

end A128980.P8498659622662109189

noncomputable section

/-- A128980: A054525 * A129691(unsigned).

Offset 1, canonical program `A128980.P8498659622662109189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128980 (n : ℕ) : ℤ :=
  A128980.P8498659622662109189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129558.P8312074485780016787

`A007431(2*lcm(2, A126988(n+1)))`
-/

namespace A129558.P8312074485780016787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (2 * Int.lcm 2 (A126988 (n + 1)))

end

end A129558.P8312074485780016787

noncomputable section

/-- A129558: A054523 * A129360.

Offset 1, canonical program `A129558.P8312074485780016787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129558 (n : ℕ) : ℤ :=
  A129558.P8312074485780016787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133639.P11234321483746663322

`∑{d}[n+1, A326415(#)*A365210((n+1)/#)]`
-/

namespace A133639.P11234321483746663322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326415 d * A365210 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133639.P11234321483746663322

noncomputable section

/-- A133639: Mobius transform of b(n) where b(8n + 1) = A080995(n).

Offset 1, canonical program `A133639.P11234321483746663322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133639 (n : ℕ) : ℤ :=
  A133639.P11234321483746663322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133639.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140706.P6727605883007889005

`A143519(n+1)+Δ[A002088(n)]`
-/

namespace A140706.P6727605883007889005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143519 (n + 1) + (f1 (n + 1) - f1 n)

end

end A140706.P6727605883007889005

noncomputable section

/-- A140706: A054525 * A014683; a(n) = Sum_{d|n} mu(d)*A014683(n/d).

Offset 1, canonical program `A140706.P6727605883007889005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140706 (n : ℕ) : ℤ :=
  A140706.P6727605883007889005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140706.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140807.P3846438794985278792

`floor(A175297(n+2)/(A175298(n+1)-2))`
-/

namespace A140807.P3846438794985278792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175297 (n + 2) : ℚ) / (A175298 (n + 1) - 2 : ℚ)⌋

end

end A140807.P3846438794985278792

noncomputable section

/-- A140807: a(n) is the largest integer such that n^k is palindromic in binary for all nonnegative integers k that are <= a(n).

Offset 2, canonical program `A140807.P3846438794985278792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A140807 (n : ℕ) : ℤ :=
  A140807.P3846438794985278792.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A140807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143127.P4022789189732155568

`2*A083356(n+1)-A000330(floor(sqrt(n+1)))`
-/

namespace A143127.P4022789189732155568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083356 (n + 1) - A000330 (Nat.sqrt (n + 1))

end

end A143127.P4022789189732155568

noncomputable section

/-- A143127: a(n) = Sum_{k=1..n} k*d(k) where d(k) is the number of divisors of k.

Offset 1, canonical program `A143127.P4022789189732155568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083356, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143127 (n : ℕ) : ℤ :=
  A143127.P4022789189732155568.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083356, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143127.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A153154.P7572810253408837238

`A003188(A341916(A341916(n)))`
-/

namespace A153154.P7572810253408837238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A341916 (A341916 n).toNat).toNat

end

end A153154.P7572810253408837238

noncomputable section

/-- A153154: Permutation of natural numbers: A059893-conjugate of A006068.

Offset 0, canonical program `A153154.P7572810253408837238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153154 (n : ℕ) : ℤ :=
  A153154.P7572810253408837238.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157226.P2232521618856525876

`floor(A304182(n+1)/2)`
-/

namespace A157226.P2232521618856525876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A304182 (n + 1) : ℚ) / 2⌋

end

end A157226.P2232521618856525876

noncomputable section

/-- A157226: Number of primitive inequivalent sublattices of square lattice having mirrors parallel to the sides of the unit cell of the parent lattice of index n.

Offset 1, canonical program `A157226.P2232521618856525876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A157226 (n : ℕ) : ℤ :=
  A157226.P2232521618856525876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A157226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157328.P4452604043700386186

`2^n*A064062(n)`
-/

namespace A157328.P4452604043700386186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A064062 n

end

end A157328.P4452604043700386186

noncomputable section

/-- A157328: Expansion of 1/(1-2x*c(4x)) with c(x) g.f. of Catalan numbers (A000108).

Offset 0, canonical program `A157328.P4452604043700386186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157328 (n : ℕ) : ℤ :=
  A157328.P4452604043700386186.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157806.P18218923952273049955

`abs(A020652(n+1)-A020653(n+1))`
-/

namespace A157806.P18218923952273049955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020652 (n + 1) - A020653 (n + 1)|

end

end A157806.P18218923952273049955

noncomputable section

/-- A157806: Absolute value of the difference between numerator and denominator of fractions arranged by Cantor's ordering (1/1, 2/1, 1/2, 1/3, 3/1, 4/1, 3/2, 2/3, 1/4, 1/5, 5/1, 6/1, ...) with equivalent fractions removed.

Offset 0, canonical program `A157806.P18218923952273049955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157806 (n : ℕ) : ℤ :=
  A157806.P18218923952273049955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157806.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161515.P1171096934450615199

`A033999(n)*A035185(A017077(n))`
-/

namespace A161515.P1171096934450615199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A035185 (A017077 n).toNat

end

end A161515.P1171096934450615199

noncomputable section

/-- A161515: Expansion of q-series Sum_{n >= 0} (-1)^n*q^(n*(n + 1)/2)*(1 - q)*(1 - q^2)*...*(1 - q^n) / ((1 + q)*(1 + q^2)*(1 + q^3)*...*(1 + q^n)).

Offset 0, canonical program `A161515.P1171096934450615199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A161515 (n : ℕ) : ℤ :=
  A161515.P1171096934450615199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A161515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161516.P1475536178005719579

`(-1)^n*A035185(abs(1-8*n))`
-/

namespace A161516.P1475536178005719579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A035185 |1 - (8 * n : ℤ)|.toNat

end

end A161516.P1475536178005719579

noncomputable section

/-- A161516: Expansion of 1 + 2*Sum_{n >= 1} (-q)^n*(1 + q^2)*(1 + q^4)*...*(1 + q^(2*k - 2))/ ((1 - q)*(1 - q^3)*...*(1 - q^(2*n - 1))).

Offset 0, canonical program `A161516.P1475536178005719579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A161516 (n : ℕ) : ℤ :=
  A161516.P1475536178005719579.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A161516.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A165562.P417528794060687203

`record[(n+1)*(3-A000005(A129283(n+1)))]`
-/

namespace A165562.P417528794060687203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - A000005 (A129283 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165562.P417528794060687203

noncomputable section

/-- A165562: Numbers k for which k+k' is prime, k' being the arithmetic derivative of k.

Offset 1, canonical program `A165562.P417528794060687203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1236 terms. -/
def A165562 (n : ℕ) : ℤ :=
  A165562.P417528794060687203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1236 terms. -/
def A165562.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A166589.P1055176826063543385

`∏{d}[n+1, A007432(A014963(#))]`
-/

namespace A166589.P1055176826063543385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007432 (A014963 d).toNat

end

end A166589.P1055176826063543385

noncomputable section

/-- A166589: Totally multiplicative sequence with a(p) = p-3 for prime p.

Offset 1, canonical program `A166589.P1055176826063543385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166589 (n : ℕ) : ℤ :=
  A166589.P1055176826063543385.a (n - 1)

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

/-! ## A167022.P9505370295991698775

`A000007(n)-A007971(n)`
-/

namespace A167022.P9505370295991698775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A007971 n

end

end A167022.P9505370295991698775

noncomputable section

/-- A167022: Expansion of sqrt(1 - 2*x - 3*x^2) in powers of x.

Offset 0, canonical program `A167022.P9505370295991698775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A167022 (n : ℕ) : ℤ :=
  A167022.P9505370295991698775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A167022.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174117.P64867894725138051

`A173882(n)/A007318(n)`
-/

namespace A174117.P64867894725138051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173882 n : ℚ) / (A007318 n : ℚ)

end

end A174117.P64867894725138051

noncomputable section

/-- A174117: Triangle T(n, k) = (2*k/(k+1))*binomial(n-1, k)*binomial(n+1, k) with T(n, 0) = T(n, n) = 1, read by rows.

Offset 0, canonical program `A174117.P64867894725138051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174117 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174117.P64867894725138051.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174117.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174940.P16857254554969626556

`∑{d}[n+1, A046692(#)*A174932((n+1)/#)]`
-/

namespace A174940.P16857254554969626556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A174932 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174940.P16857254554969626556

noncomputable section

/-- A174940: a(n) = Sum_{d|n} A007955(d) * A008683(n/d) = Sum_{d|n} A007955(d) * mu(n/d), where A007955(m) = number of divisors of m.

Offset 1, canonical program `A174940.P16857254554969626556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174940 (n : ℕ) : ℤ :=
  A174940.P16857254554969626556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175632.P6445020047984440906

`Δ[record[A062302(n+1)]]`
-/

namespace A175632.P6445020047984440906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175632.P6445020047984440906

noncomputable section

/-- A175632: Maximal run length of primes of the form A025584(n), A025584(n)+2, A025584(n)+4, ...

Offset 1, canonical program `A175632.P6445020047984440906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A175632 (n : ℕ) : ℤ :=
  A175632.P6445020047984440906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A175632.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A178649.P7773768711783204358

`A007955(n+1)/A078599(n+1)`
-/

namespace A178649.P7773768711783204358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A078599 (n + 1) : ℚ)

end

end A178649.P7773768711783204358

noncomputable section

/-- A178649: a(n) = product of nonsquarefree divisors of n.

Offset 1, canonical program `A178649.P7773768711783204358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078599, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178649 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178649.P7773768711783204358.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078599, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178792.P3240755536533390895

`1/3*(4*2^n*A000984(n)-A064062(n))`
-/

namespace A178792.P3240755536533390895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * ((4 * 2 ^ n : ℤ) * A000984 n - A064062 n : ℚ)

end

end A178792.P3240755536533390895

noncomputable section

/-- A178792: Dot product of the rows of triangle A046899 with vector (1,2,4,8,...) (= A000079).

Offset 0, canonical program `A178792.P3240755536533390895`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178792 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178792.P3240755536533390895.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178792.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A182972.P12481118658854817198

`A020652(lt[A020652(n+1), A020653(n+1)]+1)`
-/

namespace A182972.P12481118658854817198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A182972.P12481118658854817198

noncomputable section

/-- A182972: Numerators of positive rationals < 1 arranged by increasing sum of numerator and denominator then by increasing numerator.

Offset 1, canonical program `A182972.P12481118658854817198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182972 (n : ℕ) : ℤ :=
  A182972.P12481118658854817198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182972.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A185717.P5465608127689346911

`A121443(2*n+1)`
-/

namespace A185717.P5465608127689346911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (2 * n + 1)

end

end A185717.P5465608127689346911

noncomputable section

/-- A185717: Expansion of q^(-1) * c(q^2) * (c(q) - c(q^4)) / 9 in powers of q^2 where c() is a cubic AGM theta function.

Offset 0, canonical program `A185717.P5465608127689346911`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185717 (n : ℕ) : ℤ :=
  A185717.P5465608127689346911.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185978.P8182532355553636214

`filter[A051533(n+1), A123110(#)]`
-/

namespace A185978.P8182532355553636214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A185978.P8182532355553636214

noncomputable section

/-- A185978: Nontriangular numbers which are the sum of two (positive) triangular numbers.

Offset 1, canonical program `A185978.P8182532355553636214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A185978 (n : ℕ) : ℤ :=
  A185978.P8182532355553636214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A185978.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188061.P15782663309077621445

`filter[A346956(n+1), A325964(#)]`
-/

namespace A188061.P15782663309077621445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A188061.P15782663309077621445

noncomputable section

/-- A188061: Numbers k such that (product of divisors of k) == 1 (mod sum of divisors of k).

Offset 1, canonical program `A188061.P15782663309077621445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A188061 (n : ℕ) : ℤ :=
  A188061.P15782663309077621445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A188061.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189036.P5079595649764338634

`A086130(n+1)/A085731(n+1)`
-/

namespace A189036.P5079595649764338634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086130 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ)

end

end A189036.P5079595649764338634

noncomputable section

/-- A189036: a(n)= lcm(n,n')/gcd(n,n'), where n' is the arithmetic derivative of n.

Offset 1, canonical program `A189036.P5079595649764338634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189036 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A189036.P5079595649764338634.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189100.P18316698109442666474

`A086130((n+1)!)/A085731((n+1)!)`
-/

namespace A189100.P18316698109442666474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086130 (Nat.factorial (n + 1)) : ℚ) / (A085731 (Nat.factorial (n + 1)) : ℚ)

end

end A189100.P18316698109442666474

noncomputable section

/-- A189100: a(n) = lcm(n!,n!')/gcd(n!,n!'), where n!' is the arithmetic derivative of n! (A068311).

Offset 1, canonical program `A189100.P18316698109442666474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189100 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A189100.P18316698109442666474.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189102.P17267493171597331933

`gcd(A000142(n+1), A068311(n+1))`
-/

namespace A189102.P17267493171597331933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 (n + 1)) (A068311 (n + 1))

end

end A189102.P17267493171597331933

noncomputable section

/-- A189102: Greatest common divisor of n! and its arithmetic derivative.

Offset 1, canonical program `A189102.P17267493171597331933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068311, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189102 (n : ℕ) : ℤ :=
  (A189102.P17267493171597331933.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068311, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189102.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189103.P6469239265020943842

`lcm(A000142(n+1), A068311(n+1))`
-/

namespace A189103.P6469239265020943842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000142 (n + 1)) (A068311 (n + 1))

end

end A189103.P6469239265020943842

noncomputable section

/-- A189103: Least common multiple of n! and its arithmetic derivative.

Offset 1, canonical program `A189103.P6469239265020943842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068311, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189103 (n : ℕ) : ℤ :=
  (A189103.P6469239265020943842.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068311, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190116.P18352050044583738239

`A085731(n+1)*A086130(n+1)`
-/

namespace A190116.P18352050044583738239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1) * A086130 (n + 1)

end

end A190116.P18352050044583738239

noncomputable section

/-- A190116: a(n) = n*n', where n' is the arithmetic derivative (A003415) of n.

Offset 1, canonical program `A190116.P18352050044583738239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190116 (n : ℕ) : ℤ :=
  A190116.P18352050044583738239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190116.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190117.P179062767668595055

`∑[A068720(n+1)/2]`
-/

namespace A190117.P179062767668595055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068720 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P179062767668595055

noncomputable section

/-- A190117: a(n) = Sum_{k=1..n} k*k', where n' is the arithmetic derivative of n.

Offset 1, canonical program `A190117.P179062767668595055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190117 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A190117.P179062767668595055.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190119.P9883724251289863595

`∑[A086130(n+1)/(n+1)]`
-/

namespace A190119.P9883724251289863595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086130 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190119.P9883724251289863595

noncomputable section

/-- A190119: a(n) = Sum_{k=1..n} lcm(k,k')/k, where k' is arithmetic derivative of k.

Offset 1, canonical program `A190119.P9883724251289863595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190119 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A190119.P9883724251289863595.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190471.P1363995098306444959

`A179643(n+1)²`
-/

namespace A190471.P1363995098306444959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179643 (n + 1) ^ 2

end

end A190471.P1363995098306444959

noncomputable section

/-- A190471: Numbers with prime factorization p^2*q^4*r^4 where p, q, and r are distinct primes.

Offset 1, canonical program `A190471.P1363995098306444959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190471 (n : ℕ) : ℤ :=
  A190471.P1363995098306444959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190471.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A195064.P1281476350292998118

`∪[A035928(n+1), A195063(n+1)]`
-/

namespace A195064.P1281476350292998118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195064.P1281476350292998118

noncomputable section

/-- A195064: Numbers n such that BCR(n) is not greater than n, where BCR = binary-complement-and-reverse = A036044.

Offset 1, canonical program `A195064.P1281476350292998118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195064 (n : ℕ) : ℤ :=
  (A195064.P1281476350292998118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195064.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A209555.P2028586303279155343

`A131053(n+1)+A119467(n)-A131047(n+1)`
-/

namespace A209555.P2028586303279155343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131053 (n + 1) + (A119467 n - A131047 (n + 1))

end

end A209555.P2028586303279155343

noncomputable section

/-- A209555: Triangle of coefficients of polynomials u(n,x) jointly generated with A209556; see the Formula section.

Offset 1, canonical program `A209555.P2028586303279155343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209555 (n : ℕ) : ℤ :=
  A209555.P2028586303279155343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209802.P15698415580135976079

`∑[A166234(n+1)]`
-/

namespace A209802.P15698415580135976079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209802.P15698415580135976079

noncomputable section

/-- A209802: Partial sums of exponential Möbius function, A166234.

Offset 1, canonical program `A209802.P15698415580135976079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209802 (n : ℕ) : ℤ :=
  A209802.P15698415580135976079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212127.P1787608542594397849

`eq[0, A211991(n+1)]+1`
-/

namespace A212127.P1787608542594397849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A212127.P1787608542594397849

noncomputable section

/-- A212127: Numbers n whose arithmetic derivative equals the sum of its proper divisors.

Offset 1, canonical program `A212127.P1787608542594397849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A212127 (n : ℕ) : ℤ :=
  (A212127.P1787608542594397849.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A212127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216312.P9687480174034920457

`∩[A030433(n+1), A078494(n+1)]`
-/

namespace A216312.P9687480174034920457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P9687480174034920457

noncomputable section

/-- A216312: The prime ending in 9 is the only prime in a decade.

Offset 1, canonical program `A216312.P9687480174034920457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A216312 (n : ℕ) : ℤ :=
  (A216312.P9687480174034920457.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A216312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216654.P16517647315989909134

`Δ[A130084(n+1)-A014963(A263827(n+1))]`
-/

namespace A216654.P16517647315989909134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (n + 1) - A014963 (A263827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216654.P16517647315989909134

noncomputable section

/-- A216654: Number of n-digit 10th powers.

Offset 1, canonical program `A216654.P16517647315989909134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216654 (n : ℕ) : ℤ :=
  A216654.P16517647315989909134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216784.P9078993099628633723

`∑{p}[(n+1)²+1, A266974(#)]`
-/

namespace A216784.P9078993099628633723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A266974 p

end

end A216784.P9078993099628633723

noncomputable section

/-- A216784: a(n) is the number of distinct prime divisors of n^2 + 1 of the form m^2 + 1.

Offset 1, canonical program `A216784.P9078993099628633723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A216784 (n : ℕ) : ℤ :=
  A216784.P9078993099628633723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A216784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224715.P6193958608171359175

`A062302(A171526(n+1))`
-/

namespace A224715.P6193958608171359175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (A171526 (n + 1)).toNat

end

end A224715.P6193958608171359175

noncomputable section

/-- A224715: The number of unordered partitions {a,b} of prime(n) such that a or b is a nonnegative composite and the other is prime.

Offset 1, canonical program `A224715.P6193958608171359175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224715 (n : ℕ) : ℤ :=
  A224715.P6193958608171359175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225781.P10701421741266103451

`p?[2*A027699(n+1)-1]`
-/

namespace A225781.P10701421741266103451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027699 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225781.P10701421741266103451

noncomputable section

/-- A225781: Numbers k such that both k and (k+1)/2 are primes and evil.

Offset 1, canonical program `A225781.P10701421741266103451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. -/
def A225781 (n : ℕ) : ℤ :=
  A225781.P10701421741266103451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. -/
def A225781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226132.P3984057379380350820

`(-1)^n*A121443(n+1)`
-/

namespace A226132.P3984057379380350820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121443 (n + 1)

end

end A226132.P3984057379380350820

noncomputable section

/-- A226132: Expansion of - c(-q) * c(q^2) / 9 in powers of q where c() is a cubic AGM theta function.

Offset 1, canonical program `A226132.P3984057379380350820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226132 (n : ℕ) : ℤ :=
  A226132.P3984057379380350820.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227930.P13147228824602789360

`∩[A095282(n+1), A176620(n+1)]`
-/

namespace A227930.P13147228824602789360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P13147228824602789360

noncomputable section

/-- A227930: Primes p such that p-1 and p+1 have an even Hamming weight.

Offset 1, canonical program `A227930.P13147228824602789360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3485 terms. -/
def A227930 (n : ℕ) : ℤ :=
  (A227930.P13147228824602789360.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3485 terms. -/
def A227930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228233.P17833368769692923615

`A228232(n+1)+2*A066490(n+1)`
-/

namespace A228233.P17833368769692923615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228232 (n + 1) + 2 * A066490 (n + 1)

end

end A228233.P17833368769692923615

noncomputable section

/-- A228233: Number of Gaussian primes of norm less than or equal to n in the first quadrant.

Offset 1, canonical program `A228233.P17833368769692923615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228233 (n : ℕ) : ℤ :=
  A228233.P17833368769692923615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228234.P17208772115777883169

`A077766(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A228234.P17208772115777883169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A077766 n + a (n - 1)

end

end A228234.P17208772115777883169

noncomputable section

/-- A228234: Number of strict Gaussian primes of norm less than or equal to n in the first quadrant on or below the first diagonal.

Offset 1, canonical program `A228234.P17208772115777883169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228234 (n : ℕ) : ℤ :=
  A228234.P17208772115777883169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229296.P15325507195948055695

`2*A086933(n+1)`
-/

namespace A229296.P15325507195948055695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086933 (n + 1)

end

end A229296.P15325507195948055695

noncomputable section

/-- A229296: Number of solutions to x^2 + y^2 == n (mod 2*n) for x,y in [0, 2*n).

Offset 1, canonical program `A229296.P15325507195948055695`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229296 (n : ℕ) : ℤ :=
  A229296.P15325507195948055695.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229615.P13961732512820352190

`A111932(n+2)-A121443(n+2)`
-/

namespace A229615.P13961732512820352190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111932 (n + 2) - A121443 (n + 2)

end

end A229615.P13961732512820352190

noncomputable section

/-- A229615: Expansion of q^2 * psi(q^3)^6 / psi(q)^2 in powers of q where psi() is a Ramanujan theta function.

Offset 2, canonical program `A229615.P13961732512820352190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A229615 (n : ℕ) : ℤ :=
  A229615.P13961732512820352190.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A229615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230851.P4807682974501842405

`eq[0, A357761(A028310(n))]`
-/

namespace A230851.P4807682974501842405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357761 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230851.P4807682974501842405

noncomputable section

/-- A230851: Numbers with divisors which are half odious (A000069) and half evil (A001969).

Offset 1, canonical program `A230851.P4807682974501842405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3466 terms. -/
def A230851 (n : ℕ) : ℤ :=
  (A230851.P4807682974501842405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3466 terms. -/
def A230851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232172.P5206875052303947786

`∑[A068346(n+1)]`
-/

namespace A232172.P5206875052303947786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232172.P5206875052303947786

noncomputable section

/-- A232172: Partial sums of second arithmetic derivative of natural numbers.

Offset 1, canonical program `A232172.P5206875052303947786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232172 (n : ℕ) : ℤ :=
  A232172.P5206875052303947786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232356.P2356897415690345151

`2*A121443(n+1)-A111932(n+1)`
-/

namespace A232356.P2356897415690345151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121443 (n + 1) - A111932 (n + 1)

end

end A232356.P2356897415690345151

noncomputable section

/-- A232356: Expansion of 2/9 * c(q) * c(q^2) - q * (psi(q) * psi(q^3))^2 in powers of q where psi() is a Ramanujan theta function and c(q) is a cubic AGM theta function.

Offset 1, canonical program `A232356.P2356897415690345151`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, A121443, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A232356 (n : ℕ) : ℤ :=
  A232356.P2356897415690345151.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, A121443, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A232356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232626.P4533820239225470968

`A055035(A060819(n+1))`
-/

namespace A232626.P4533820239225470968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (A060819 (n + 1)).toNat

end

end A232626.P4533820239225470968

noncomputable section

/-- A232626: Degree of the algebraic number 2*sin(4*Pi/n).

Offset 1, canonical program `A232626.P4533820239225470968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232626 (n : ℕ) : ℤ :=
  A232626.P4533820239225470968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234102.P1827764588803365079

`A234099(n+1)+1`
-/

namespace A234102.P1827764588803365079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1) + 1

end

end A234102.P1827764588803365079

noncomputable section

/-- A234102: Integers of the form (p*q*r + 1)/2, where p, q, r are distinct primes.

Offset 1, canonical program `A234102.P1827764588803365079`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234102 (n : ℕ) : ℤ :=
  A234102.P1827764588803365079.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234102.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A234999.P3604876205550161988

`p?[ceil(A027699(n+1)/2)]`
-/

namespace A234999.P3604876205550161988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027699 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234999.P3604876205550161988

noncomputable section

/-- A234999: Primes p such that the p-th evil number is prime; 2 together with evil primes p such that 2p - 1 is prime.

Offset 1, canonical program `A234999.P3604876205550161988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 532 terms. -/
def A234999 (n : ℕ) : ℤ :=
  A234999.P3604876205550161988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 532 terms. -/
def A234999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237500.P16062265895415662057

`∑[2*A011946(n+1)]`
-/

namespace A237500.P16062265895415662057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237500.P16062265895415662057

noncomputable section

/-- A237500: Number of binary strings of length 2n which contain the ones' complement of each of their two halves.

Offset 1, canonical program `A237500.P16062265895415662057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A237500 (n : ℕ) : ℤ :=
  A237500.P16062265895415662057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A237500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238112.P3075264075609945640

`A001003(n)-A155069(n)`
-/

namespace A238112.P3075264075609945640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n - A155069 n

end

end A238112.P3075264075609945640

noncomputable section

/-- A238112: Expansion of g.f.: (1-5*x+2*x^2+(2*x-1)*sqrt(x^2-6*x+1))/(4*x).

Offset 0, canonical program `A238112.P3075264075609945640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A238112 (n : ℕ) : ℤ :=
  A238112.P3075264075609945640.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A238112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238950.P10491739874639615946

`A062799(n+1)-A238951(n+1)`
-/

namespace A238950.P10491739874639615946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (n + 1) - A238951 (n + 1)

end

end A238950.P10491739874639615946

noncomputable section

/-- A238950: Number of arcs from even to odd level vertices in divisor lattice D(n).

Offset 1, canonical program `A238950.P10491739874639615946`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, A238951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238950 (n : ℕ) : ℤ :=
  A238950.P10491739874639615946.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, A238951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238950.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240052.P5517115470621218941

`A068346(A006094(n+1))`
-/

namespace A240052.P5517115470621218941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A006094 (n + 1)).toNat

end

end A240052.P5517115470621218941

noncomputable section

/-- A240052: 2nd arithmetic derivative of products of 2 successive prime numbers (A006094).

Offset 1, canonical program `A240052.P5517115470621218941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240052 (n : ℕ) : ℤ :=
  A240052.P5517115470621218941.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240054.P9237913273188116088

`A099306(Δ[A061802(n)])`
-/

namespace A240054.P9237913273188116088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (f1 (n + 1) - f1 n).toNat

end

end A240054.P9237913273188116088

noncomputable section

/-- A240054: 4th arithmetic derivative of products of 2 successive prime numbers (A006094).

Offset 1, canonical program `A240054.P9237913273188116088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A240054 (n : ℕ) : ℤ :=
  A240054.P9237913273188116088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A240054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240086.P8018606740492469687

`A056169(n+1)+A055631(A085731(n+1))`
-/

namespace A240086.P8018606740492469687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + A055631 (A085731 (n + 1)).toNat

end

end A240086.P8018606740492469687

noncomputable section

/-- A240086: a(n) = Sum_{prime p|n} phi(gcd(p, n/p)) where phi is Euler's totient function.

Offset 1, canonical program `A240086.P8018606740492469687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240086 (n : ℕ) : ℤ :=
  A240086.P8018606740492469687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241571.P15390613395399299711

`A153083(n+1)-2`
-/

namespace A241571.P15390613395399299711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153083 (n + 1) - 2

end

end A241571.P15390613395399299711

noncomputable section

/-- A241571: Numbers n such that 2*n+15 is not a prime.

Offset 1, canonical program `A241571.P15390613395399299711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241571 (n : ℕ) : ℤ :=
  A241571.P15390613395399299711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243997.P13681003671720194849

`∑{d}[A046520(n+1), A007431(#)]`
-/

namespace A243997.P13681003671720194849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A243997.P13681003671720194849

noncomputable section

/-- A243997: a(n) = phi(sigma(n) - phi(n) - d(n)), where phi(n) is the Euler totient function, sigma(n) the sum of divisors of n and d(n) the number of divisors of n.

Offset 1, canonical program `A243997.P13681003671720194849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A243997 (n : ℕ) : ℤ :=
  A243997.P13681003671720194849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. -/
def A243997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244670.P12427737104699753046

`A244668(A145551(n+1))`
-/

namespace A244670.P12427737104699753046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244668 (A145551 (n + 1)).toNat

end

end A244670.P12427737104699753046

noncomputable section

/-- A244670: Product of divisors of n / sum of divisors of n for n such that product of divisors of n is divisible by sum of divisors of n.

Offset 1, canonical program `A244670.P12427737104699753046`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145551, A244668, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244670 (n : ℕ) : ℤ :=
  A244670.P12427737104699753046.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145551, A244668, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002496.P13667531374760205001

`A121326(n%a(n-1))` with `a(0)=2`
-/

namespace A002496.P13667531374760205001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A121326 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A002496.P13667531374760205001

noncomputable section

/-- A002496: Primes of the form k^2 + 1.

Offset 1, canonical program `A002496.P13667531374760205001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002496 (n : ℕ) : ℤ :=
  A002496.P13667531374760205001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003640.P6012161163235855329

`2^(A001221(A003657(n+1))-1)`
-/

namespace A003640.P6012161163235855329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (A003657 (n + 1)).toNat - 1 : ℤ)

end

end A003640.P6012161163235855329

noncomputable section

/-- A003640: Number of genera of imaginary quadratic field with discriminant -k, k = A003657(n).

Offset 1, canonical program `A003640.P6012161163235855329`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003657, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003640 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003640.P6012161163235855329.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003657, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003640.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A005353.P13530675845642685918

`(n+1)^4-A020478(n+1)`
-/

namespace A005353.P13530675845642685918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A020478 (n + 1)

end

end A005353.P13530675845642685918

noncomputable section

/-- A005353: Number of 2 X 2 matrices with entries mod n and nonzero determinant.

Offset 1, canonical program `A005353.P13530675845642685918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005353 (n : ℕ) : ℤ :=
  A005353.P13530675845642685918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005353.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005792.P17441170092424256089

`∪[A001983(n+1), A249096(n+1)]`
-/

namespace A005792.P17441170092424256089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005792.P17441170092424256089

noncomputable section

/-- A005792: Positive numbers that are the sum of 2 squares or 3 times a square.

Offset 1, canonical program `A005792.P17441170092424256089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005792 (n : ℕ) : ℤ :=
  (A005792.P17441170092424256089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006586.P15091628275662653035

`A095374(n+1)+A077025(n+1)`
-/

namespace A006586.P15091628275662653035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095374 (n + 1) + A077025 (n + 1)

end

end A006586.P15091628275662653035

noncomputable section

/-- A006586: a(n) = Sum_{k=1..n} floor((2*n-1)/(2*k+1)).

Offset 2, canonical program `A006586.P15091628275662653035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006586 (n : ℕ) : ℤ :=
  A006586.P15091628275662653035.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006586.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A011690.P7037554297728841104

`A011677(A008486(n)+14)`
-/

namespace A011690.P7037554297728841104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011677 (A008486 n + 14).toNat

end

end A011690.P7037554297728841104

noncomputable section

/-- A011690: A binary m-sequence: expansion of reciprocal of x^7+x^3+1.

Offset 0, canonical program `A011690.P7037554297728841104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3329 terms. -/
def A011690 (n : ℕ) : ℤ :=
  A011690.P7037554297728841104.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3329 terms. -/
def A011690.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A020756.P16947837090098696349

`∪[A051533(n+1), ∑[n]]`
-/

namespace A020756.P16947837090098696349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A020756.P16947837090098696349

noncomputable section

/-- A020756: Numbers that are the sum of two triangular numbers.

Offset 1, canonical program `A020756.P16947837090098696349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020756 (n : ℕ) : ℤ :=
  (A020756.P16947837090098696349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022820.P10907069291744158179

`∑[A325937(n+3)]+1`
-/

namespace A022820.P10907069291744158179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022820.P10907069291744158179

noncomputable section

/-- A022820: [ n/1 ] - [ (n-1)/2 ] + [ (n-2)/3 ] - ... + ((-1)^n)[ 2/(n-1) ].

Offset 2, canonical program `A022820.P10907069291744158179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022820 (n : ℕ) : ℤ :=
  A022820.P10907069291744158179.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023211.P15510924814259681776

`p?[n-A245838(n+2)²]`
-/

namespace A023211.P15510924814259681776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A245838 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P15510924814259681776

noncomputable section

/-- A023211: Primes p such that 3*p + 10 is also prime.

Offset 1, canonical program `A023211.P15510924814259681776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2941 terms. -/
def A023211 (n : ℕ) : ℤ :=
  A023211.P15510924814259681776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2941 terms. -/
def A023211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023222.P6978621992250826147

`p?[eq[1, A245838(2*(n+1))]]`
-/

namespace A023222.P6978621992250826147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023222.P6978621992250826147

noncomputable section

/-- A023222: Primes p such that 6*p + 7 is also prime.

Offset 1, canonical program `A023222.P6978621992250826147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A023222 (n : ℕ) : ℤ :=
  (A023222.P6978621992250826147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A023222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023247.P8495313482969675933

`p?[eq[A075743(n+1), A245838(3*n+5)]]`
-/

namespace A023247.P8495313482969675933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (3 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023247.P8495313482969675933

noncomputable section

/-- A023247: Primes p such that 3*p + 4 and 9*p + 16 are also prime.

Offset 1, canonical program `A023247.P8495313482969675933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A023247 (n : ℕ) : ℤ :=
  (A023247.P8495313482969675933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A023247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024316.P4230804038874915829

`A052344(n+4)-A010054(n+3)`
-/

namespace A024316.P4230804038874915829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (n + 4) - A010054 (n + 3)

end

end A024316.P4230804038874915829

noncomputable section

/-- A024316: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n+1-k), where k = floor((n+1)/2), s = A023531.

Offset 1, canonical program `A024316.P4230804038874915829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024316 (n : ℕ) : ℤ :=
  A024316.P4230804038874915829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024516.P5773989287278470041

`eq[0, val(A000404(n+1), 2)]+1`
-/

namespace A024516.P5773989287278470041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000404 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024516.P5773989287278470041

noncomputable section

/-- A024516: Positions of odd numbers in A000404 (sums of 2 nonzero squares).

Offset 1, canonical program `A024516.P5773989287278470041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4794 terms. -/
def A024516 (n : ℕ) : ℤ :=
  (A024516.P5773989287278470041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4794 terms. -/
def A024516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027387.P17347744252739824845

`A027386(n)+2*A316865(n)`
-/

namespace A027387.P17347744252739824845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027386 n + 2 * A316865 n

end

end A027387.P17347744252739824845

noncomputable section

/-- A027387: Write digits for n, count endpoints (version 2).

Offset 0, canonical program `A027387.P17347744252739824845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027387 (n : ℕ) : ℤ :=
  A027387.P17347744252739824845.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027388.P5030534524750753246

`A027386(n)+2*A316868(n)`
-/

namespace A027388.P5030534524750753246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027386 n + 2 * A316868 n

end

end A027388.P5030534524750753246

noncomputable section

/-- A027388: Write digits for n, count endpoints (version 3).

Offset 0, canonical program `A027388.P5030534524750753246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027388 (n : ℕ) : ℤ :=
  A027388.P5030534524750753246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027388.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029622.P170867044904776595

`A029618(eq[1, A290452(n)])`
-/

namespace A029622.P170867044904776595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029622.P170867044904776595

noncomputable section

/-- A029622: Odd numbers in (3,2)-Pascal triangle A029618.

Offset 0, canonical program `A029622.P170867044904776595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2272 terms. -/
def A029622 (n : ℕ) : ℤ :=
  A029622.P170867044904776595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2272 terms. -/
def A029622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029623.P11351172865891342749

`A029618(eq[0, A290452(n)])`
-/

namespace A029623.P11351172865891342749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029623.P11351172865891342749

noncomputable section

/-- A029623: Even numbers in (3,2)-Pascal triangle A029618.

Offset 0, canonical program `A029623.P11351172865891342749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7728 terms. -/
def A029623 (n : ℕ) : ℤ :=
  A029623.P11351172865891342749.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7728 terms. -/
def A029623.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035170.P11485514388961379659

`A124233(n+1)`
-/

namespace A035170.P11485514388961379659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124233 (n + 1)

end

end A035170.P11485514388961379659

noncomputable section

/-- A035170: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -20.

Offset 1, canonical program `A035170.P11485514388961379659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035170 (n : ℕ) : ℤ :=
  A035170.P11485514388961379659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035170.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A039731.P13748971199648184030

`A065091(n+1)-A039734(n+2)`
-/

namespace A039731.P13748971199648184030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A039734 (n + 2)

end

end A039731.P13748971199648184030

noncomputable section

/-- A039731: a(n) = max{prime(n) mod q, where prime q < prime(n) = n-th prime}.

Offset 2, canonical program `A039731.P13748971199648184030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039731 (n : ℕ) : ℤ :=
  A039731.P13748971199648184030.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039731.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A050148.P3708266931219046583

`Δ[A002003(n)]-A086456(n)`
-/

namespace A050148.P3708266931219046583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A086456 n

end

end A050148.P3708266931219046583

noncomputable section

/-- A050148: a(n) = T(n,n-2), array T as in A050143.

Offset 2, canonical program `A050148.P3708266931219046583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A050148 (n : ℕ) : ℤ :=
  A050148.P3708266931219046583.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A050148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050803.P3163027175791198346

`A000404(n+1)^3`
-/

namespace A050803.P3163027175791198346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 3

end

end A050803.P3163027175791198346

noncomputable section

/-- A050803: Cubes expressible as the sum of two nonzero squares in at least one way.

Offset 1, canonical program `A050803.P3163027175791198346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A050803 (n : ℕ) : ℤ :=
  A050803.P3163027175791198346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A050803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058957.P5083467042790607208

`lt[1, A325937(n+1)²]+1`
-/

namespace A058957.P5083467042790607208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058957.P5083467042790607208

noncomputable section

/-- A058957: Numbers having at least two representations as b^2 - c^2 with b > c >= 0.

Offset 1, canonical program `A058957.P5083467042790607208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058957 (n : ℕ) : ℤ :=
  (A058957.P5083467042790607208.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059259.P5730931430350859430

`2*A035317(n)-A074909(n)`
-/

namespace A059259.P5730931430350859430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035317 n - A074909 n

end

end A059259.P5730931430350859430

noncomputable section

/-- A059259: Triangle read by rows giving coefficient T(i,j) of x^i y^j in 1/(1-x-x*y-y^2) = 1/((1+y)(1-x-y)) for (i,j) = (0,0), (1,0), (0,1), (2,0), (1,1), (0,2), ...

Offset 0, canonical program `A059259.P5730931430350859430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059259 (n : ℕ) : ℤ :=
  A059259.P5730931430350859430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059259.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062288.P13832936887169585839

`A061395(p?[A008578(n+1)-50])`
-/

namespace A062288.P13832936887169585839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062288.P13832936887169585839

noncomputable section

/-- A062288: Numbers k such that prime(k)+50 is also prime.

Offset 1, canonical program `A062288.P13832936887169585839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1645 terms. -/
def A062288 (n : ℕ) : ℤ :=
  A062288.P13832936887169585839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1645 terms. -/
def A062288.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A068191.P1341936650613296810

`lt[4, A061395(n+1)]+1`
-/

namespace A068191.P1341936650613296810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A068191.P1341936650613296810

noncomputable section

/-- A068191: Numbers n such that A067734(n)=0; complement of A002473; at least one prime-factor of n is larger than 7, it has 2 decimal digits.

Offset 1, canonical program `A068191.P1341936650613296810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068191 (n : ℕ) : ℤ :=
  (A068191.P1341936650613296810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068238.P5212387660254963000

`(n+1)²/gcd((n+1)², ∑[A258057(n)])`
-/

namespace A068238.P5212387660254963000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A068238.P5212387660254963000

noncomputable section

/-- A068238: Denominators of arithmetic derivative of 1/n: -A003415(n)/n^2.

Offset 1, canonical program `A068238.P5212387660254963000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068238 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068238.P5212387660254963000.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068512.P3368672071714361374

`ceil(A168036(A103517(n))/A000034(n)²)`
-/

namespace A068512.P3368672071714361374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168036 (A103517 n).toNat : ℚ) / (A000034 n ^ 2 : ℚ)⌉

end

end A068512.P3368672071714361374

noncomputable section

/-- A068512: Numerators of arithmetic derivative of n/2: A003415(n)/2 - n/4; denominators: A010685.

Offset 1, canonical program `A068512.P3368672071714361374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A068512 (n : ℕ) : ℤ :=
  A068512.P3368672071714361374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A068512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070089.P8160623282101571297

`lt[A061395(n+1), A061395(n+2)]+1`
-/

namespace A070089.P8160623282101571297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070089.P8160623282101571297

noncomputable section

/-- A070089: P(n) < P(n+1) where P(n) (A006530) is the largest prime factor of n.

Offset 1, canonical program `A070089.P8160623282101571297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070089 (n : ℕ) : ℤ :=
  (A070089.P8160623282101571297.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070229.P5792893597916963980

`A028815(A061395(n+1))+n`
-/

namespace A070229.P5792893597916963980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A061395 (n + 1)).toNat + (n : ℤ)

end

end A070229.P5792893597916963980

noncomputable section

/-- A070229: Next m>n such that m is divisible by gpf(n), gpf=A006530 (greatest prime factor).

Offset 1, canonical program `A070229.P5792893597916963980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070229 (n : ℕ) : ℤ :=
  A070229.P5792893597916963980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070229.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A073490.P7070931676186738346

`A287170(abs(2-n)+3)-1`
-/

namespace A073490.P7070931676186738346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (|2 - (n : ℤ)| + 3).toNat - 1

end

end A073490.P7070931676186738346

noncomputable section

/-- A073490: Number of prime gaps in factorization of n.

Offset 1, canonical program `A073490.P7070931676186738346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073490 (n : ℕ) : ℤ :=
  A073490.P7070931676186738346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073490.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A076556.P5329428728146528548

`A000040(A061395(A000040(n+1)+n+1))`
-/

namespace A076556.P5329428728146528548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (A000040 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A076556.P5329428728146528548

noncomputable section

/-- A076556: Greatest prime divisor of n-th prime + n.

Offset 1, canonical program `A076556.P5329428728146528548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A076556 (n : ℕ) : ℤ :=
  A076556.P5329428728146528548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A076556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076566.P10108082377382600414

`A000040(A061395(3*(n+2)))`
-/

namespace A076566.P10108082377382600414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (3 * (n + 2))).toNat

end

end A076566.P10108082377382600414

noncomputable section

/-- A076566: Greatest prime divisor of 3n+3 (sum of three successive integers).

Offset 1, canonical program `A076566.P10108082377382600414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076566 (n : ℕ) : ℤ :=
  A076566.P10108082377382600414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076568.P8878829068693360086

`A000040(A061395(5*(n+3)))`
-/

namespace A076568.P8878829068693360086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (5 * (n + 3))).toNat

end

end A076568.P8878829068693360086

noncomputable section

/-- A076568: Greatest prime divisor of 5n+10 (sum of five successive integers).

Offset 1, canonical program `A076568.P8878829068693360086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076568 (n : ℕ) : ℤ :=
  A076568.P8878829068693360086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076763.P7586696728486630368

`∩[A294277(n+1)+1, A294278(n+1)]`
-/

namespace A076763.P7586696728486630368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294277 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076763.P7586696728486630368

noncomputable section

/-- A076763: 1-apexes of omega: numbers n such that omega(n-1) < omega(n) > omega(n+1), where omega(m) = the number of distinct prime factors of m.

Offset 1, canonical program `A076763.P7586696728486630368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6813 terms. -/
def A076763 (n : ℕ) : ℤ :=
  (A076763.P7586696728486630368.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6813 terms. -/
def A076763.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A079544.P5332634671618239026

`p?[2*A001983(n+1)+1]`
-/

namespace A079544.P5332634671618239026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001983 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079544.P5332634671618239026

noncomputable section

/-- A079544: Primes of the form x^2 + y^2 + 1, x>0, y>0.

Offset 1, canonical program `A079544.P5332634671618239026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1617 terms. -/
def A079544 (n : ℕ) : ℤ :=
  A079544.P5332634671618239026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1617 terms. -/
def A079544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079732.P14358494824311656752

`p?[A062545(A001983(n+1))]`
-/

namespace A079732.P14358494824311656752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A001983 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079732.P14358494824311656752

noncomputable section

/-- A079732: Primes of the form x^2 + y^2 + 3 (x,y positive).

Offset 1, canonical program `A079732.P14358494824311656752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 789 terms. -/
def A079732 (n : ℕ) : ℤ :=
  A079732.P14358494824311656752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 789 terms. -/
def A079732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080242.P6426782860955634572

`A035317(∑[A068344(n)²])`
-/

namespace A080242.P6426782860955634572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080242.P6426782860955634572

noncomputable section

/-- A080242: Table of coefficients of polynomials P(n,x) defined by the relation P(n,x) = (1+x)*P(n-1,x) + (-x)^(n+1).

Offset 0, canonical program `A080242.P6426782860955634572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080242 (n : ℕ) : ℤ :=
  A080242.P6426782860955634572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080681.P3534374354548157970

`lt[A061395(n+1), 8]+1`
-/

namespace A080681.P3534374354548157970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080681.P3534374354548157970

noncomputable section

/-- A080681: 17-smooth numbers: numbers whose prime divisors are all <= 17.

Offset 1, canonical program `A080681.P3534374354548157970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1937 terms. -/
def A080681 (n : ℕ) : ℤ :=
  (A080681.P3534374354548157970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1937 terms. -/
def A080681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080683.P4164783436571968620

`lt[A061395(n+1), 10]+1`
-/

namespace A080683.P4164783436571968620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080683.P4164783436571968620

noncomputable section

/-- A080683: 23-smooth numbers: numbers whose prime divisors are all <= 23.

Offset 1, canonical program `A080683.P4164783436571968620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3104 terms. -/
def A080683 (n : ℕ) : ℤ :=
  (A080683.P4164783436571968620.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3104 terms. -/
def A080683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080733.P10784600896855129706

`A124333(A002618(n+1))%A003557(n+1)`
-/

namespace A080733.P10784600896855129706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124333 (A002618 (n + 1)).toNat) (A003557 (n + 1))

end

end A080733.P10784600896855129706

noncomputable section

/-- A080733: Smallest distance from n to a squarefree number.

Offset 1, canonical program `A080733.P10784600896855129706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A080733 (n : ℕ) : ℤ :=
  A080733.P10784600896855129706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A080733.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083346.P12627612333518549643

`(n+1)/A085731(n+1)`
-/

namespace A083346.P12627612333518549643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A085731 (n + 1) : ℚ)

end

end A083346.P12627612333518549643

noncomputable section

/-- A083346: Denominator of r(n) = Sum(e/p: n=Product(p^e)).

Offset 1, canonical program `A083346.P12627612333518549643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083346 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083346.P12627612333518549643.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083647.P13520631719973171400

`a(A061395(4*record[A000010(n+1)])-1)+1` with `a(0)=0`
-/

namespace A083647.P13520631719973171400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A061395 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1).toNat + 1

end

end A083647.P13520631719973171400

noncomputable section

/-- A083647: For primes p: Number of steps to reach 2 when iterating f(p) = greatest prime divisor of p-1.

Offset 1, canonical program `A083647.P13520631719973171400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A083647 (n : ℕ) : ℤ :=
  (A083647.P13520631719973171400.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A083647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083721.P10075139577301052661

`∑[∑{p}[n+1, val(#, n+1)]]-A061395(n+1)`
-/

namespace A083721.P10075139577301052661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A061395 (n + 1)

end

end A083721.P10075139577301052661

noncomputable section

/-- A083721: Number of primes greater than the greatest prime factor of n but not greater than n.

Offset 1, canonical program `A083721.P10075139577301052661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083721 (n : ℕ) : ℤ :=
  A083721.P10075139577301052661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086708.P13578315174771339965

`∩[A089199(n+1), A089200(n+1)]`
-/

namespace A086708.P13578315174771339965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086708.P13578315174771339965

noncomputable section

/-- A086708: Primes p such that p-1 and p+1 are both divisible by cubes (other than 1).

Offset 1, canonical program `A086708.P13578315174771339965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1160 terms. -/
def A086708 (n : ℕ) : ℤ :=
  (A086708.P13578315174771339965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1160 terms. -/
def A086708.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A096157.P16966813079005757665

`lt[A325937(n+1)², 2]+1`
-/

namespace A096157.P16966813079005757665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096157.P16966813079005757665

noncomputable section

/-- A096157: Numbers whose numbers of odd and even proper divisors differ at most by 1.

Offset 1, canonical program `A096157.P16966813079005757665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096157 (n : ℕ) : ℤ :=
  (A096157.P16966813079005757665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097268.P6222232716503931075

`filter[A000404(n+1), A152822(#)]`
-/

namespace A097268.P6222232716503931075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A097268.P6222232716503931075

noncomputable section

/-- A097268: Numbers that are both the sum of two nonzero squares and the difference of two nonzero squares.

Offset 1, canonical program `A097268.P6222232716503931075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. -/
def A097268 (n : ℕ) : ℤ :=
  A097268.P6222232716503931075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. -/
def A097268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099861.P6004856047514362636

`filter[A377897(n+1), A066247(#)]`
-/

namespace A099861.P6004856047514362636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A099861.P6004856047514362636

noncomputable section

/-- A099861: a(n) = (2*n-1)-st composite number: a bisection of A002808.

Offset 1, canonical program `A099861.P6004856047514362636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8870 terms. -/
def A099861 (n : ℕ) : ℤ :=
  A099861.P6004856047514362636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8870 terms. -/
def A099861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100829.P18026693143017884367

`A000404(eq[1, gcd(17, A000404(n+1))]+1)`
-/

namespace A100829.P18026693143017884367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 17 (A000404 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A100829.P18026693143017884367

noncomputable section

/-- A100829: Numbers that are a sum of two nonzero squares and not divisible by 17.

Offset 1, canonical program `A100829.P18026693143017884367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9279 terms. -/
def A100829 (n : ℕ) : ℤ :=
  A100829.P18026693143017884367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9279 terms. -/
def A100829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101934.P8442723091966144168

`∩[A294277(n+1), A294278(n+1)+1]`
-/

namespace A101934.P8442723091966144168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294278 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101934.P8442723091966144168

noncomputable section

/-- A101934: Numbers n with omega(n) smaller than omega(n-1) and omega(n+1).

Offset 1, canonical program `A101934.P8442723091966144168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101934 (n : ℕ) : ℤ :=
  (A101934.P8442723091966144168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104858.P16916997968901490082

`∑[abs(A080243(n))]`
-/

namespace A104858.P16916997968901490082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080243 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P16916997968901490082

noncomputable section

/-- A104858: Partial sums of the little Schroeder numbers (A001003).

Offset 0, canonical program `A104858.P16916997968901490082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A104858 (n : ℕ) : ℤ :=
  A104858.P16916997968901490082.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A104858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106092.P1085686516415469086

`lt[A325937(n+2), 2]+2`
-/

namespace A106092.P1085686516415469086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A106092.P1085686516415469086

noncomputable section

/-- A106092: Even numbers and primes.

Offset 1, canonical program `A106092.P1085686516415469086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106092 (n : ℕ) : ℤ :=
  (A106092.P1085686516415469086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106092.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A106529.P13827986667333050014

`eq[A001222(n+2), A061395(n+2)]+2`
-/

namespace A106529.P13827986667333050014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A106529.P13827986667333050014

noncomputable section

/-- A106529: Numbers having k prime factors (counted with multiplicity), the largest of which is the k-th prime.

Offset 1, canonical program `A106529.P13827986667333050014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A106529 (n : ℕ) : ℤ :=
  (A106529.P13827986667333050014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A106529.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A117364.P3531757736997744377

`A008578(A061395(2*(n+1)))`
-/

namespace A117364.P3531757736997744377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A061395 (2 * (n + 1))).toNat

end

end A117364.P3531757736997744377

noncomputable section

/-- A117364: a(n) = largest prime less than the largest prime dividing n (or 1 if there is no such prime).

Offset 1, canonical program `A117364.P3531757736997744377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117364 (n : ℕ) : ℤ :=
  A117364.P3531757736997744377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118486.P5144178606512269279

`A094290(gcd(A007283(n), A336510(n+2)))`
-/

namespace A118486.P5144178606512269279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094290 (Int.gcd (A007283 n) (A336510 (n + 2)))

end

end A118486.P5144178606512269279

noncomputable section

/-- A118486: a(n) is the smallest prime occurring in the prime factorization of n! to an odd power.

Offset 2, canonical program `A118486.P5144178606512269279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A118486 (n : ℕ) : ℤ :=
  A118486.P5144178606512269279.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A118486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122564.P13385177037397452995

`A108245(A061395(p?[A108245(n+2)]))`
-/

namespace A122564.P13385177037397452995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A122564.P13385177037397452995

noncomputable section

/-- A122564: Twin primes of form 4k-1, 4k+1.

Offset 1, canonical program `A122564.P13385177037397452995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A122564 (n : ℕ) : ℤ :=
  A122564.P13385177037397452995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A122564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124849.P5182331567433130283

`record[A089033(n+1)/A245838(A033868(n+1))]`
-/

namespace A124849.P5182331567433130283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089033 (n + 1) : ℚ) / (A245838 (A033868 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124849.P5182331567433130283

noncomputable section

/-- A124849: Numbers k such that 7k + 3 and 3k + 7 are primes.

Offset 1, canonical program `A124849.P5182331567433130283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2985 terms. -/
def A124849 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124849.P5182331567433130283.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2985 terms. -/
def A124849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124934.P10210965125734739564

`∪[A125217(n+1), A125218(n+1)]`
-/

namespace A124934.P10210965125734739564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124934.P10210965125734739564

noncomputable section

/-- A124934: Numbers of the form 4mn - m - n, where m, n are positive integers.

Offset 1, canonical program `A124934.P10210965125734739564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124934 (n : ℕ) : ℤ :=
  (A124934.P10210965125734739564.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124934.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129390.P539859092666591305

`(-1)^n*A129391(n)`
-/

namespace A129390.P539859092666591305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A129391 n

end

end A129390.P539859092666591305

noncomputable section

/-- A129390: Expansion of phi(x) * phi(-x^5) / (chi(-x^2) * chi(-x^10)) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A129390.P539859092666591305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129390 (n : ℕ) : ℤ :=
  A129390.P539859092666591305.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129390.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A133674.P17491123718751258836

`abs(Δ[A061395(n+1)])`
-/

namespace A133674.P17491123718751258836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A133674.P17491123718751258836

noncomputable section

/-- A133674: a(n) = |A061395(n+1) - A061395(n)|.

Offset 1, canonical program `A133674.P17491123718751258836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133674 (n : ℕ) : ℤ :=
  A133674.P17491123718751258836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134193.P13179869624210931457

`A001511(A297404(n+1)+1)`
-/

namespace A134193.P13179869624210931457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A297404 (n + 1) + 1).toNat

end

end A134193.P13179869624210931457

noncomputable section

/-- A134193: a(1) = 1; for n>1, a(n) = the smallest positive integer not occurring among the exponents in the prime-factorization of n.

Offset 1, canonical program `A134193.P13179869624210931457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134193 (n : ℕ) : ℤ :=
  A134193.P13179869624210931457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135784.P13080440240153393537

`A000404(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135784.P13080440240153393537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 2

end

end A135784.P13080440240153393537

noncomputable section

/-- A135784: a(n) = A000404(n)^2.

Offset 1, canonical program `A135784.P13080440240153393537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135784 (n : ℕ) : ℤ :=
  A135784.P13080440240153393537.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135784.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135786.P18159718606420573415

`A000404(n+1)^4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135786.P18159718606420573415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 4

end

end A135786.P18159718606420573415

noncomputable section

/-- A135786: a(n) = A000404(n)^4.

Offset 1, canonical program `A135786.P18159718606420573415`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135786 (n : ℕ) : ℤ :=
  A135786.P18159718606420573415.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135787.P5356217202802632134

`A000404(n+1)^5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135787.P5356217202802632134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 5

end

end A135787.P5356217202802632134

noncomputable section

/-- A135787: a(n) = A000404(n)^5.

Offset 1, canonical program `A135787.P5356217202802632134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135787 (n : ℕ) : ℤ :=
  A135787.P5356217202802632134.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135787.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135788.P18286084477707124522

`A000404(n+1)^6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135788.P18286084477707124522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) ^ 6

end

end A135788.P18286084477707124522

noncomputable section

/-- A135788: a(n) = A000404(n)^6.

Offset 1, canonical program `A135788.P18286084477707124522`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135788 (n : ℕ) : ℤ :=
  A135788.P18286084477707124522.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135788.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137222.P5944416911786828449

`∑[ceil(Δ[A061395(n+1)]/(n+1)^4)]`
-/

namespace A137222.P5944416911786828449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) - f2 n : ℚ) / ((n + 1) ^ 4 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137222.P5944416911786828449

noncomputable section

/-- A137222: Partial sums of A087429.

Offset 1, canonical program `A137222.P5944416911786828449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137222 (n : ℕ) : ℤ :=
  A137222.P5944416911786828449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137794.P4088568533380436255

`A287170(n+1)!%2`
-/

namespace A137794.P4088568533380436255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A287170 (n + 1)).toNat % 2

end

end A137794.P4088568533380436255

noncomputable section

/-- A137794: Characteristic function of numbers having no prime gaps in their factorization.

Offset 1, canonical program `A137794.P4088568533380436255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137794 (n : ℕ) : ℤ :=
  (A137794.P4088568533380436255.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137927.P5814170655149962823

`A307892(n+1)/A007956(n+1)`
-/

namespace A137927.P5814170655149962823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307892 (n + 1) : ℚ) / (A007956 (n + 1) : ℚ)

end

end A137927.P5814170655149962823

noncomputable section

/-- A137927: a(n) = the largest divisor of A000005(n) that is coprime to n. (A000005(n) = the number of positive divisors of n.).

Offset 1, canonical program `A137927.P5814170655149962823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A137927 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137927.P5814170655149962823.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A137927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139532.P2108094528252457204

`eq[1, A245838(2*A004767(n))]`
-/

namespace A139532.P2108094528252457204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139532.P2108094528252457204

noncomputable section

/-- A139532: Numbers k such that 24*k + 19 is prime.

Offset 1, canonical program `A139532.P2108094528252457204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2663 terms. -/
def A139532 (n : ℕ) : ℤ :=
  (A139532.P2108094528252457204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2663 terms. -/
def A139532.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A153218.P3785772997736358194

`eq[1, A245838(2*(n+1))]`
-/

namespace A153218.P3785772997736358194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153218.P3785772997736358194

noncomputable section

/-- A153218: Numbers k such that 6k + 7 is prime.

Offset 1, canonical program `A153218.P3785772997736358194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153218 (n : ℕ) : ℤ :=
  (A153218.P3785772997736358194.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153218.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157037.P548713860299042765

`eq[2, A229341(n+2)]+2`
-/

namespace A157037.P548713860299042765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229341 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A157037.P548713860299042765

noncomputable section

/-- A157037: Numbers with prime arithmetic derivative A003415.

Offset 1, canonical program `A157037.P548713860299042765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4464 terms. -/
def A157037 (n : ℕ) : ℤ :=
  (A157037.P548713860299042765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4464 terms. -/
def A157037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161344.P6462224275357060055

`2*A046022(n+2)`
-/

namespace A161344.P6462224275357060055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046022 (n + 2)

end

end A161344.P6462224275357060055

noncomputable section

/-- A161344: Numbers k with A033676(k)=2, where A033676 is the largest divisor <= sqrt(k).

Offset 1, canonical program `A161344.P6462224275357060055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161344 (n : ℕ) : ℤ :=
  A161344.P6462224275357060055.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161344.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164980.P4043780184913040080

`A008624(Δ[A061395(A164901(n+1))])`
-/

namespace A164980.P4043780184913040080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A164901 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (f1 (n + 1) - f1 n).toNat

end

end A164980.P4043780184913040080

noncomputable section

/-- A164980: Number of primes between consecutive terms of A164901.

Offset 1, canonical program `A164980.P4043780184913040080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3499 terms. -/
def A164980 (n : ℕ) : ℤ :=
  A164980.P4043780184913040080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3499 terms. -/
def A164980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166228.P7650312400576267198

`abs(∑[A036453(n+1)*A080243(n)])`
-/

namespace A166228.P7650312400576267198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A080243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166228.P7650312400576267198

noncomputable section

/-- A166228: Alternating sum of large Schroeder numbers.

Offset 0, canonical program `A166228.P7650312400576267198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A166228 (n : ℕ) : ℤ :=
  A166228.P7650312400576267198.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A166228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166265.P12558758465814392092

`A000404(n+1)+1`
-/

namespace A166265.P12558758465814392092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) + 1

end

end A166265.P12558758465814392092

noncomputable section

/-- A166265: Numbers of the form 1+x^2+y^2, x, y integers >= 1.

Offset 1, canonical program `A166265.P12558758465814392092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166265 (n : ℕ) : ℤ :=
  A166265.P12558758465814392092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166265.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A172072.P14384555314162830453

`record[A061395(A151800(3*n)+6)]`
-/

namespace A172072.P14384555314162830453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A151800 (3 * n) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172072.P14384555314162830453

noncomputable section

/-- A172072: Numbers k such that either prime(k) - 5/2 +- 7/2 is prime.

Offset 1, canonical program `A172072.P14384555314162830453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A172072 (n : ℕ) : ℤ :=
  A172072.P14384555314162830453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A172072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174009.P5463232597024446893

`record[A061395(xor(1, A174008(n+1))+1)]`
-/

namespace A174009.P5463232597024446893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.xor 1 (A174008 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174009.P5463232597024446893

noncomputable section

/-- A174009: Indices of the primes appearing in A174008.

Offset 1, canonical program `A174009.P5463232597024446893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1610 terms. -/
def A174009 (n : ℕ) : ℤ :=
  A174009.P5463232597024446893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1610 terms. -/
def A174009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175154.P10023110274526491753

`record[A061395(n²+11+n)]`
-/

namespace A175154.P10023110274526491753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n ^ 2 + 11 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175154.P10023110274526491753

noncomputable section

/-- A175154: a(n) = prime index of A048059(n).

Offset 1, canonical program `A175154.P10023110274526491753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A175154 (n : ℕ) : ℤ :=
  A175154.P10023110274526491753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A175154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175787.P10024478366857533250

`A046022(n+2)`
-/

namespace A175787.P10024478366857533250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 2)

end

end A175787.P10024478366857533250

noncomputable section

/-- A175787: Primes together with 4.

Offset 1, canonical program `A175787.P10024478366857533250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175787 (n : ℕ) : ℤ :=
  A175787.P10024478366857533250.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175787.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A181971.P17901537112914252763

`A029656(n+1)-A035317(n)`
-/

namespace A181971.P17901537112914252763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A035317 n

end

end A181971.P17901537112914252763

noncomputable section

/-- A181971: Triangle read by rows: T(n,0) = 1, T(n,n) = floor((n+3)/2) and T(n,k) = T(n-1,k-1) + T(n-1,k), 0 < k < n.

Offset 0, canonical program `A181971.P17901537112914252763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181971 (n : ℕ) : ℤ :=
  A181971.P17901537112914252763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184776.P6747012226356231733

`A061395(A184774(n+1)+A000007(n+4))`
-/

namespace A184776.P6747012226356231733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A184774 (n + 1) + A000007 (n + 4)).toNat

end

end A184776.P6747012226356231733

noncomputable section

/-- A184776: Numbers m such that prime(m) is of the form floor(k*sqrt(2)); complement of A184779.

Offset 1, canonical program `A184776.P6747012226356231733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6740 terms. -/
def A184776 (n : ℕ) : ℤ :=
  A184776.P6747012226356231733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6740 terms. -/
def A184776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184795.P7757484182494400038

`A061395(p?[floor(n*ϕ²)])`
-/

namespace A184795.P7757484182494400038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184795.P7757484182494400038

noncomputable section

/-- A184795: Numbers m such that prime(m) is of the form floor(k*s), where s=(3+sqrt(5))/2; complement of A184793.

Offset 1, canonical program `A184795.P7757484182494400038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3619 terms. -/
def A184795 (n : ℕ) : ℤ :=
  A184795.P7757484182494400038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3619 terms. -/
def A184795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184804.P5256680205815034056

`A061395(p?[floor(n*sqrt(5))])`
-/

namespace A184804.P5256680205815034056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184804.P5256680205815034056

noncomputable section

/-- A184804: Numbers m such that prime(m) is of the form floor(k*sqrt(5)); complement of A184807.

Offset 1, canonical program `A184804.P5256680205815034056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4260 terms. -/
def A184804 (n : ℕ) : ℤ :=
  A184804.P5256680205815034056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4260 terms. -/
def A184804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184811.P17820329255503839465

`A061395(p?[floor((n+1)/(sqrt(6)-2))])`
-/

namespace A184811.P17820329255503839465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184811.P17820329255503839465

noncomputable section

/-- A184811: Numbers m such that prime(m) has the form floor(r*k), where r=sqrt(3/2); complement of A184810.

Offset 1, canonical program `A184811.P17820329255503839465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4268 terms. -/
def A184811 (n : ℕ) : ℤ :=
  A184811.P17820329255503839465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4268 terms. -/
def A184811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184861.P8608652935001601078

`A061395(p?[round(ϕ*n)])`
-/

namespace A184861.P8608652935001601078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184861.P8608652935001601078

noncomputable section

/-- A184861: Numbers m such that prime(m) is of the form floor(nr+h), where r=(1+sqrt(5))/2 and h=1/2; complement of A184864.

Offset 1, canonical program `A184861.P8608652935001601078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5897 terms. -/
def A184861 (n : ℕ) : ℤ :=
  A184861.P8608652935001601078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5897 terms. -/
def A184861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184874.P12081557824146837878

`A061395(p?[A184871(n+1)])`
-/

namespace A184874.P12081557824146837878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184874.P12081557824146837878

noncomputable section

/-- A184874: Numbers m such that prime(m) is of the form k+floor(ks/r)+floor(kt/r), where r=log(2), s=log(3), t=log(5).

Offset 1, canonical program `A184874.P12081557824146837878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1045 terms. -/
def A184874 (n : ℕ) : ℤ :=
  A184874.P12081557824146837878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1045 terms. -/
def A184874.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190724.P8349568036750769725

`A002003(n+1)-A225887(n)`
-/

namespace A190724.P8349568036750769725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 (n + 1) - A225887 n

end

end A190724.P8349568036750769725

noncomputable section

/-- A190724: Row sums of Riordan matrix A118384.

Offset 0, canonical program `A190724.P8349568036750769725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A190724 (n : ℕ) : ℤ :=
  A190724.P8349568036750769725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A190724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192672.P1400011279283696610

`floor(sqrt(abs(A080243(n))))`
-/

namespace A192672.P1400011279283696610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A080243 n|

end

end A192672.P1400011279283696610

noncomputable section

/-- A192672: Floor-Sqrt transform of little Schroeder numbers (A001003).

Offset 0, canonical program `A192672.P1400011279283696610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A192672 (n : ℕ) : ℤ :=
  A192672.P1400011279283696610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A192672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192673.P17428601771079711106

`floor(sqrt(abs(2*A080243(n))))`
-/

namespace A192673.P17428601771079711106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |2 * A080243 n|

end

end A192673.P17428601771079711106

noncomputable section

/-- A192673: Floor-Sqrt transform of large Schroder numbers (A006318).

Offset 0, canonical program `A192673.P17428601771079711106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A192673 (n : ℕ) : ℤ :=
  A192673.P17428601771079711106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A192673.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A203623.P1383915864646164806

`a(n-1)+A061395(n+1)` with `a(0)=0`
-/

namespace A203623.P1383915864646164806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A061395 (n + 1)

end

end A203623.P1383915864646164806

noncomputable section

/-- A203623: Partial sums of A061395.

Offset 1, canonical program `A203623.P1383915864646164806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A203623 (n : ℕ) : ℤ :=
  A203623.P1383915864646164806.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A203623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216299.P2316561811494309320

`∩[A008471(n+1), A153275(n+1)]`
-/

namespace A216299.P2316561811494309320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216299.P2316561811494309320

noncomputable section

/-- A216299: Numbers k such that 10k+1 is composite but 10k+3, 10k+7, 10k+9 are all prime.

Offset 1, canonical program `A216299.P2316561811494309320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A216299 (n : ℕ) : ℤ :=
  (A216299.P2316561811494309320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A216299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220656.P9197403006323816996

`A220655(n+1)+1`
-/

namespace A220656.P9197403006323816996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220655 (n + 1) + 1

end

end A220656.P9197403006323816996

noncomputable section

/-- A220656: The positions of those permutations in A030298 where the first element is not fixed.

Offset 1, canonical program `A220656.P9197403006323816996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220656 (n : ℕ) : ℤ :=
  A220656.P9197403006323816996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220663.P5128857220396618442

`n+1-A220662(n+1)`
-/

namespace A220663.P5128857220396618442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A220662 (n + 1)

end

end A220663.P5128857220396618442

noncomputable section

/-- A220663: Irregular table: row n (n>=1) consists of numbers 0..A084556(n)-1.

Offset 1, canonical program `A220663.P5128857220396618442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220663 (n : ℕ) : ℤ :=
  A220663.P5128857220396618442.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220789.P11763178928776331104

`comp[A092058(n+1)-2]+2`
-/

namespace A220789.P11763178928776331104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A220789.P11763178928776331104

noncomputable section

/-- A220789: Numbers n such that 2*prime(n)^2 - 1 is not prime.

Offset 1, canonical program `A220789.P11763178928776331104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A220789 (n : ℕ) : ℤ :=
  (A220789.P11763178928776331104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A220789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226025.P10601113510136016391

`lt[2, A325937(n+1)]+1`
-/

namespace A226025.P10601113510136016391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A226025.P10601113510136016391

noncomputable section

/-- A226025: Odd composite numbers that are not squares of primes.

Offset 1, canonical program `A226025.P10601113510136016391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226025 (n : ℕ) : ℤ :=
  (A226025.P10601113510136016391.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227506.P1241765352015404149

`A010683(n)+A000035(n)*A080243(n)`
-/

namespace A227506.P1241765352015404149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010683 n + A000035 n * A080243 n

end

end A227506.P1241765352015404149

noncomputable section

/-- A227506: Schroeder triangle sums: a(2*n-1) = A010683(2*n-2) and a(2*n) = A010683(2*n-1) - A001003(2*n-1).

Offset 1, canonical program `A227506.P1241765352015404149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A227506 (n : ℕ) : ℤ :=
  A227506.P1241765352015404149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A227506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230295.P4156999236486821316

`A230294(2*n+3)-A230293(n+1)`
-/

namespace A230295.P4156999236486821316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230294 (2 * n + 3) - A230293 (n + 1)

end

end A230295.P4156999236486821316

noncomputable section

/-- A230295: a(n) = Sum_{i=1..n} d(8*i+5) - Sum_{i=1..n} d(4*i+3), where d(n) = A000005(n).

Offset 1, canonical program `A230295.P4156999236486821316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A230295 (n : ℕ) : ℤ :=
  A230295.P4156999236486821316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A230295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230476.P10377358832244411741

`A230293(n+1)+A230294(n+1)`
-/

namespace A230476.P10377358832244411741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230293 (n + 1) + A230294 (n + 1)

end

end A230476.P10377358832244411741

noncomputable section

/-- A230476: a(n) = Sum_{i=1..n} d(8*i+1) - Sum_{i=1..n} d(2*i+1), where d(n) = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A230476.P10377358832244411741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230293, A230294, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230476 (n : ℕ) : ℤ :=
  A230476.P10377358832244411741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230293, A230294, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A231864.P18222772313538243149

`∑[(A300252(n+1)+A300251(n+1))²]`
-/

namespace A231864.P18222772313538243149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A300252 (n + 1) + A300251 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P18222772313538243149

noncomputable section

/-- A231864: Partial sums of the second power of arithmetic derivative function A003415.

Offset 1, canonical program `A231864.P18222772313538243149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231864 (n : ℕ) : ℤ :=
  A231864.P18222772313538243149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236407.P10884246669097330149

`A002003(n)+n`
-/

namespace A236407.P10884246669097330149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 n + (n : ℤ)

end

end A236407.P10884246669097330149

noncomputable section

/-- A236407: a(n) = 2*Sum_{k=0..n-1} C(n-1,k)*C(n+k,k) + n.

Offset 0, canonical program `A236407.P10884246669097330149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236407 (n : ℕ) : ℤ :=
  A236407.P10884246669097330149.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240668.P2555984127848424708

`val(A336510(2*(n+1))+1, 2)`
-/

namespace A240668.P2555984127848424708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336510 (2 * (n + 1)) + 1).toNat 2

end

end A240668.P2555984127848424708

noncomputable section

/-- A240668: Number of the first odd exponents in the prime power factorization of (2*n)!.

Offset 1, canonical program `A240668.P2555984127848424708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. -/
def A240668 (n : ℕ) : ℤ :=
  (A240668.P2555984127848424708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. -/
def A240668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241920.P14941516816984529543

`∑[char[∑[A061395(n+1)]+1]]+1`
-/

namespace A241920.P14941516816984529543
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A241920.P14941516816984529543

noncomputable section

/-- A241920: After a(1)=1, each n appears A061395(n) times, where A061395 gives the index of the largest prime factor of n.

Offset 1, canonical program `A241920.P14941516816984529543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241920 (n : ℕ) : ℤ :=
  (A241920.P14941516816984529543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242343.P2225175868314659616

`A000217(eq[2, A300252(A133263(n))])`
-/

namespace A242343.P2225175868314659616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300252 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242343.P2225175868314659616

noncomputable section

/-- A242343: Triangular numbers T such that (T+2) is semiprime.

Offset 1, canonical program `A242343.P2225175868314659616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A242343 (n : ℕ) : ℤ :=
  A242343.P2225175868314659616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A242343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243177.P11032770322893023695

`∩[A002479(n+1), A047458(n+1)]`
-/

namespace A243177.P11032770322893023695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243177.P11032770322893023695

noncomputable section

/-- A243177: Numbers of the form 3x^2+2xy+3y^2.

Offset 1, canonical program `A243177.P11032770322893023695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4035 terms. -/
def A243177 (n : ℕ) : ℤ :=
  (A243177.P11032770322893023695.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4035 terms. -/
def A243177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243290.P623710756399021785

`A061395(A005117(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243290.P623710756399021785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A005117 (n + 1)).toNat

end

end A243290.P623710756399021785

noncomputable section

/-- A243290: The index of the greatest prime dividing the n-th squarefree number: a(n) = A061395(A005117(n)).

Offset 1, canonical program `A243290.P623710756399021785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243290 (n : ℕ) : ℤ :=
  A243290.P623710756399021785.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243290.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243291.P16902629913632114201

`n+1-A061395(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243291.P16902629913632114201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A061395 (n + 1)

end

end A243291.P16902629913632114201

noncomputable section

/-- A243291: Difference between n and the index of its largest prime factor: a(n) = n - A061395(n).

Offset 1, canonical program `A243291.P16902629913632114201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243291 (n : ℕ) : ℤ :=
  A243291.P16902629913632114201.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244990.P13046816219310750522

`eq[2, gcd(2, A061395(n+1))]+1`
-/

namespace A244990.P13046816219310750522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A061395 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A244990.P13046816219310750522

noncomputable section

/-- A244990: After 1, numbers whose greatest prime factor is a prime with an even index; n such that A061395(n) is even.

Offset 1, canonical program `A244990.P13046816219310750522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244990 (n : ℕ) : ℤ :=
  (A244990.P13046816219310750522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244991.P9429980419197300237

`eq[1, A061395(n+1)%2]+1`
-/

namespace A244991.P9429980419197300237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244991.P9429980419197300237

noncomputable section

/-- A244991: Numbers whose greatest prime factor is a prime with an odd index; n such that A006530(n) is in A031368.

Offset 1, canonical program `A244991.P9429980419197300237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244991 (n : ℕ) : ℤ :=
  (A244991.P9429980419197300237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244992.P11847278491513242211

`A000035(A061395(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244992.P11847278491513242211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A061395 (n + 1)).toNat

end

end A244992.P11847278491513242211

noncomputable section

/-- A244992: Characteristic function for A244991: a(n) = A000035(A061395(n)).

Offset 1, canonical program `A244992.P11847278491513242211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244992 (n : ℕ) : ℤ :=
  A244992.P11847278491513242211.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007298.P9853402396666436554

`record[A057427(n)*A143061(n+1)]`
-/

namespace A007298.P9853402396666436554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A143061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007298.P9853402396666436554

noncomputable section

/-- A007298: Sums of consecutive Fibonacci numbers.

Offset 1, canonical program `A007298.P9853402396666436554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. -/
def A007298 (n : ℕ) : ℤ :=
  A007298.P9853402396666436554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. -/
def A007298.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A023570.P4841596169678730397

`A061395(∏{e}[3-A000040(n+1), A000040(#)])`
-/

namespace A023570.P4841596169678730397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A023570.P4841596169678730397

noncomputable section

/-- A023570: Greatest exponent in prime-power factorization of prime(n)-3; a(1) = a(2) = 0.

Offset 1, canonical program `A023570.P4841596169678730397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023570 (n : ℕ) : ℤ :=
  A023570.P4841596169678730397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048640.P576295911288433352

`A000007(n)+2*A048672(n+1)`
-/

namespace A048640.P576295911288433352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A048672 (n + 1)

end

end A048640.P576295911288433352

noncomputable section

/-- A048640: Binary encoding of the squarefree numbers, A005117.

Offset 1, canonical program `A048640.P576295911288433352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1361 terms. -/
def A048640 (n : ℕ) : ℤ :=
  A048640.P576295911288433352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1361 terms. -/
def A048640.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A073450.P771997140351676744

`A143061(A099375(n)+1+n)%A020695(A002262(n))`
-/

namespace A073450.P771997140351676744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143061 (A099375 n + 1 + (n : ℤ)).toNat) (A020695 (A002262 n).toNat)

end

end A073450.P771997140351676744

noncomputable section

/-- A073450: Triangle T(j,k) = remainder of Fibonacci(j) divided by Fibonacci(k), for 3 < j and 2 < k < j.

Offset 0, canonical program `A073450.P771997140351676744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A073450 (n : ℕ) : ℤ :=
  A073450.P771997140351676744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A073450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094585.P14412693458980172051

`gcd(A000038(n), A143061(A014132(n+1)))`
-/

namespace A094585.P14412693458980172051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A143061 (A014132 (n + 1)).toNat)

end

end A094585.P14412693458980172051

noncomputable section

/-- A094585: Triangle T of all positive differences of distinct Fibonacci numbers; also, triangle of all sums of consecutive distinct Fibonacci numbers.

Offset 1, canonical program `A094585.P14412693458980172051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A094585 (n : ℕ) : ℤ :=
  (A094585.P14412693458980172051.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A094585.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A036698.P3152835247264100802

`A014200(n²)`
-/

namespace A036698.P3152835247264100802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (n ^ 2)

end

end A036698.P3152835247264100802

noncomputable section

/-- A036698: a(n) is the number of Gaussian integers z=a+bi satisfying |z|<=n, a>0, b>=0.

Offset 0, canonical program `A036698.P3152835247264100802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036698 (n : ℕ) : ℤ :=
  A036698.P3152835247264100802.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036698.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A060461.P10262298228971221195

`A171696(n+2)`
-/

namespace A060461.P10262298228971221195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171696 (n + 2)

end

end A060461.P10262298228971221195

noncomputable section

/-- A060461: Numbers k such that 6*k-1 and 6*k+1 are twin composites.

Offset 1, canonical program `A060461.P10262298228971221195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060461 (n : ℕ) : ℤ :=
  A060461.P10262298228971221195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060992.P2954310029962380558

`(A018804(n+1)-A008619(A022998(n)))/2`
-/

namespace A060992.P2954310029962380558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) - A008619 (A022998 n).toNat : ℚ) / 2

end

end A060992.P2954310029962380558

noncomputable section

/-- A060992: a(n) = Sum_{gcd(i,j) | 0 < i <= j < n and i+j = n}.

Offset 1, canonical program `A060992.P2954310029962380558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A060992 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060992.P2954310029962380558.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A060992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062362.P3475805551919053752

`floor(A018804(n+1)/(n+1))`
-/

namespace A062362.P3475805551919053752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018804 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A062362.P3475805551919053752

noncomputable section

/-- A062362: a(n) = floor of Sum_{ d divides n } phi(d)/d.

Offset 1, canonical program `A062362.P3475805551919053752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062362 (n : ℕ) : ℤ :=
  A062362.P3475805551919053752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062949.P13399345798369754227

`∑{d}[n+1, A018804(#)*A396336((n+1)/#)]`
-/

namespace A062949.P13399345798369754227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A396336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062949.P13399345798369754227

noncomputable section

/-- A062949: Multiplicative with a(p^e) = ((e+1)*p^(e+1)-(e+2)*p^e+1)/(p-1).

Offset 1, canonical program `A062949.P13399345798369754227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062949 (n : ℕ) : ℤ :=
  A062949.P13399345798369754227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063754.P8530571032129736586

`A018804(n+1)-A029935(n+1)`
-/

namespace A063754.P8530571032129736586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A029935 (n + 1)

end

end A063754.P8530571032129736586

noncomputable section

/-- A063754: Dirichlet convolution of totient and cototient.

Offset 1, canonical program `A063754.P8530571032129736586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063754 (n : ℕ) : ℤ :=
  A063754.P8530571032129736586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063754.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A069193.P1502617142194648967

`∑{d}[n+1, A018804(#)*A397412((n+1)/#)]`
-/

namespace A069193.P1502617142194648967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A397412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069193.P1502617142194648967

noncomputable section

/-- A069193: a(n) = Sum_{d|n} d*phi(n)/phi(d).

Offset 1, canonical program `A069193.P1502617142194648967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069193 (n : ℕ) : ℤ :=
  A069193.P1502617142194648967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069193.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086227.P5243369785632214675

`(-1)^(n+3)*A079458(n+2)/A140434(n+2)`
-/

namespace A086227.P5243369785632214675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 3) * A079458 (n + 2) : ℚ) / (A140434 (n + 2) : ℚ)

end

end A086227.P5243369785632214675

noncomputable section

/-- A086227: a(n) = Sum_{1<=k<=4*n, gcd(k,n)=1} (i^k*tan(k*Pi/(4*n)))/(4*i), where i is the imaginary unit.

Offset 2, canonical program `A086227.P5243369785632214675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, A140434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086227.P5243369785632214675.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, A140434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087122.P15401015175558508661

`A008833(n+1)*A018804(A019554(n+1))`
-/

namespace A087122.P15401015175558508661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A018804 (A019554 (n + 1)).toNat

end

end A087122.P15401015175558508661

noncomputable section

/-- A087122: a(n) is the number of non-congruent solutions to x^2*y^2 == 0 (mod n).

Offset 1, canonical program `A087122.P15401015175558508661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087122 (n : ℕ) : ℤ :=
  A087122.P15401015175558508661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087122.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A116512.P13906908477700417415

`∑{d}[n+1, A001222(#)*A007431((n+1)/#)]`
-/

namespace A116512.P13906908477700417415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 d * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A116512.P13906908477700417415

noncomputable section

/-- A116512: a(n) is the number of positive integers each of which is <= n and is divisible by exactly one prime dividing n (but is coprime to every other prime dividing n). a(1) = 0.

Offset 1, canonical program `A116512.P13906908477700417415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116512 (n : ℕ) : ℤ :=
  A116512.P13906908477700417415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117494.P9311759642922684203

`∑{d}[n+1, #*A143519((n+1)/#)]`
-/

namespace A117494.P9311759642922684203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P9311759642922684203

noncomputable section

/-- A117494: a(n) is the number of m's, 1 <= m <= n, where gcd(m,n) is prime.

Offset 1, canonical program `A117494.P9311759642922684203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117494 (n : ℕ) : ℤ :=
  A117494.P9311759642922684203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117494.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130107.P1988406999421660602

`∑{d}[n+1, A007428(#)*A060648((n+1)/#)]`
-/

namespace A130107.P1988406999421660602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P1988406999421660602

noncomputable section

/-- A130107: Möbius transform of A063659.

Offset 1, canonical program `A130107.P1988406999421660602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130107 (n : ℕ) : ℤ :=
  A130107.P1988406999421660602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130107.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134427.P9505557340857002464

`floor(sqrt(A134420(n+1)))`
-/

namespace A134427.P9505557340857002464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A134420 (n + 1))

end

end A134427.P9505557340857002464

noncomputable section

/-- A134427: Numbers k such that k^2 + 1 is a composite squarefree number.

Offset 1, canonical program `A134427.P9505557340857002464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134427 (n : ℕ) : ℤ :=
  A134427.P9505557340857002464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160255.P16099810821214577880

`(A000578(n+1)-(n+1)*A018804(n+1))/2`
-/

namespace A160255.P16099810821214577880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) - (n + 1 : ℤ) * A018804 (n + 1) : ℚ) / 2

end

end A160255.P16099810821214577880

noncomputable section

/-- A160255: The sum of all the entries in an n X n Cayley table for multiplication in Z_n.

Offset 1, canonical program `A160255.P16099810821214577880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160255 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160255.P16099810821214577880.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174088.P3336557888488504044

`(A018804(n+1)+A000188(n+1))/2`
-/

namespace A174088.P3336557888488504044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) + A000188 (n + 1) : ℚ) / 2

end

end A174088.P3336557888488504044

noncomputable section

/-- A174088: Number of pairs (i,j) such that i*j == 0 (mod k), 0 <= i <= j < k.

Offset 1, canonical program `A174088.P3336557888488504044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174088 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174088.P3336557888488504044.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174199.P10669363603211169854

`A137921(2*(n+1))`
-/

namespace A174199.P10669363603211169854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (2 * (n + 1))

end

end A174199.P10669363603211169854

noncomputable section

/-- A174199: Bisection of A137921.

Offset 1, canonical program `A174199.P10669363603211169854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174199 (n : ℕ) : ℤ :=
  A174199.P10669363603211169854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178834.P16895514089838133752

`A102839(n+1)-A109196(n+2)`
-/

namespace A178834.P16895514089838133752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102839 (n + 1) - A109196 (n + 2)

end

end A178834.P16895514089838133752

noncomputable section

/-- A178834: a(n) counts anti-chains of size two in "0,1,2" Motzkin trees on n edges.

Offset 0, canonical program `A178834.P16895514089838133752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A178834 (n : ℕ) : ℤ :=
  A178834.P16895514089838133752.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A178834.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A181733.P2943246372235819364

`A139708(n+1)-A092323(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181733.P2943246372235819364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (n + 1) - A092323 (n + 1)

end

end A181733.P2943246372235819364

noncomputable section

/-- A181733: a(n) = A139708(n) - A092323(n).

Offset 1, canonical program `A181733.P2943246372235819364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181733 (n : ℕ) : ℤ :=
  A181733.P2943246372235819364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181733.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A195150.P8159304006399446490

`A137921(n+1)-1`
-/

namespace A195150.P8159304006399446490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (n + 1) - 1

end

end A195150.P8159304006399446490

noncomputable section

/-- A195150: Number of divisors d of n such that d-1 does not divide n.

Offset 1, canonical program `A195150.P8159304006399446490`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195150 (n : ℕ) : ℤ :=
  A195150.P8159304006399446490.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195150.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A204617.P10318683178991972701

`A079458(n+1)/A062570(n+1)`
-/

namespace A204617.P10318683178991972701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 1) : ℚ) / (A062570 (n + 1) : ℚ)

end

end A204617.P10318683178991972701

noncomputable section

/-- A204617: Multiplicative with a(p^e) = p^(e-1)*H(p). H(2) = 1, H(p) = p - 1 if p == 1 (mod 4) and H(p) = p + 1 if p == 3 (mod 4).

Offset 1, canonical program `A204617.P10318683178991972701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204617.P10318683178991972701.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204617.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218147.P2989802918495991465

`A079458(n+3)/4`
-/

namespace A218147.P2989802918495991465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 3) : ℚ) / 4

end

end A218147.P2989802918495991465

noncomputable section

/-- A218147: Degree of minimal polynomial satisfied by exp(8*Pi*phi_2(1/n,1/n)), where phi_2 is defined in the Comments.

Offset 3, canonical program `A218147.P2989802918495991465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218147 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A218147.P2989802918495991465.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224212.P18102868260642251365

`A000196(n)+A014200(n)+1`
-/

namespace A224212.P18102868260642251365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + (A014200 n + 1)

end

end A224212.P18102868260642251365

noncomputable section

/-- A224212: Number of nonnegative solutions to x^2 + y^2 <= n.

Offset 0, canonical program `A224212.P18102868260642251365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224212 (n : ℕ) : ℤ :=
  A224212.P18102868260642251365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234307.P17695317593474618557

`(A018804(2*(n+1))-(n+1))/2`
-/

namespace A234307.P17695317593474618557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (2 * (n + 1)) - (n + 1 : ℤ) : ℚ) / 2

end

end A234307.P17695317593474618557

noncomputable section

/-- A234307: a(n) = Sum_{i=1..n} gcd(2*n-i, i).

Offset 1, canonical program `A234307.P17695317593474618557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234307 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A234307.P17695317593474618557.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234307.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A237526.P3622557248388023722

`A014200(n)-floor(sqrt(n))`
-/

namespace A237526.P3622557248388023722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 n - (Nat.sqrt n : ℤ)

end

end A237526.P3622557248388023722

noncomputable section

/-- A237526: a(n) = number of unit squares in the first quadrant of a disk of radius sqrt(n) centered at the origin of a square lattice.

Offset 0, canonical program `A237526.P3622557248388023722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237526 (n : ℕ) : ℤ :=
  A237526.P3622557248388023722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000328.P3563522184609365216

`A057655(n²)`
-/

namespace A000328.P3563522184609365216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (n ^ 2)

end

end A000328.P3563522184609365216

noncomputable section

/-- A000328: Number of points of norm <= n^2 in square lattice.

Offset 0, canonical program `A000328.P3563522184609365216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000328 (n : ℕ) : ℤ :=
  A000328.P3563522184609365216.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006579.P17134374714227435969

`A018804(n+1)-(n+1)`
-/

namespace A006579.P17134374714227435969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - (n + 1 : ℤ)

end

end A006579.P17134374714227435969

noncomputable section

/-- A006579: a(n) = Sum_{k=1..n-1} gcd(n,k).

Offset 1, canonical program `A006579.P17134374714227435969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006579 (n : ℕ) : ℤ :=
  A006579.P17134374714227435969.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006579.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A027861.P1880857397688890924

`(A002731(n+1)-1)/2`
-/

namespace A027861.P1880857397688890924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002731 (n + 1) - 1 : ℚ) / 2

end

end A027861.P1880857397688890924

noncomputable section

/-- A027861: Numbers k such that k^2 + (k+1)^2 is prime.

Offset 1, canonical program `A027861.P1880857397688890924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027861 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027861.P1880857397688890924.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027861.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027862.P15112400691824553338

`(A002731(n+1)²+1)/2`
-/

namespace A027862.P15112400691824553338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002731 (n + 1) ^ 2 + 1 : ℚ) / 2

end

end A027862.P15112400691824553338

noncomputable section

/-- A027862: Primes of the form j^2 + (j+1)^2.

Offset 1, canonical program `A027862.P15112400691824553338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027862 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027862.P15112400691824553338.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027862.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034968.P11463317321541393924

`A099563(n)+a(A257687(n))` with `a(0)=0, a(1)=1`
-/

namespace A034968.P11463317321541393924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A099563 n + a (A257687 n).toNat

end

end A034968.P11463317321541393924

noncomputable section

/-- A034968: Minimal number of factorials that add to n.

Offset 0, canonical program `A034968.P11463317321541393924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099563, A257687, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A034968 (n : ℕ) : ℤ :=
  A034968.P11463317321541393924.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099563, A257687, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A034968.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A036704.P2788393936175939244

`A057655(n²+n)`
-/

namespace A036704.P2788393936175939244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (n ^ 2 + n)

end

end A036704.P2788393936175939244

noncomputable section

/-- A036704: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2.

Offset 0, canonical program `A036704.P2788393936175939244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036704 (n : ℕ) : ℤ :=
  A036704.P2788393936175939244.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036704.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045670.P9055415353420482661

`A007953(A007932(n+1))`
-/

namespace A045670.P9055415353420482661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007932 (n + 1)).toNat

end

end A045670.P9055415353420482661

noncomputable section

/-- A045670: Digital sum (in base 10) of numbers in base 3 of the alternate number system.

Offset 1, canonical program `A045670.P9055415353420482661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045670 (n : ℕ) : ℤ :=
  A045670.P9055415353420482661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045670.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A060130.P13983426075283678403

`1+a(A257687(n))` with `a(0)=0`
-/

namespace A060130.P13983426075283678403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A257687 n).toNat

end

end A060130.P13983426075283678403

noncomputable section

/-- A060130: Number of nonzero digits in factorial base representation (A007623) of n; minimum number of transpositions needed to compose each permutation in the lists A060117 & A060118.

Offset 0, canonical program `A060130.P13983426075283678403`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060130 (n : ℕ) : ℤ :=
  (A060130.P13983426075283678403.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066427.P8185841536175877705

`lt[A064179(n+1), A008683(n+1)]+1`
-/

namespace A066427.P8185841536175877705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066427.P8185841536175877705

noncomputable section

/-- A066427: Numbers with mu = 0 and infinitary MoebiusMu = -1; (sum of binary digits of prime exponents is odd).

Offset 1, canonical program `A066427.P8185841536175877705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9809 terms. -/
def A066427 (n : ℕ) : ℤ :=
  (A066427.P8185841536175877705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9809 terms. -/
def A066427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066428.P8799136072068236919

`lt[A008683(n+1), A064179(n+1)]+1`
-/

namespace A066428.P8799136072068236919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066428.P8799136072068236919

noncomputable section

/-- A066428: Numbers with mu = 0 and infinitary MoebiusMu = +1 (sum of binary digits of prime exponents is even).

Offset 1, canonical program `A066428.P8799136072068236919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9790 terms. -/
def A066428 (n : ℕ) : ℤ :=
  (A066428.P8799136072068236919.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9790 terms. -/
def A066428.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A073248.P6563719464096944215

`∩[A053806(n+1)-2, A072284(n+1)]`
-/

namespace A073248.P6563719464096944215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073248.P6563719464096944215

noncomputable section

/-- A073248: Squarefree numbers k such that k+1 is also squarefree, but k-1 and k+2 are not.

Offset 1, canonical program `A073248.P6563719464096944215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A073248 (n : ℕ) : ℤ :=
  (A073248.P6563719464096944215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A073248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074274.P5256342783301417173

`Δ[A074273(n+1)]`
-/

namespace A074274.P5256342783301417173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074274.P5256342783301417173

noncomputable section

/-- A074274: Gaps between even number of 1's in the Kolakoski sequence A000002.

Offset 1, canonical program `A074274.P5256342783301417173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A074274 (n : ℕ) : ℤ :=
  A074274.P5256342783301417173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A074274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074289.P13643960160893623

`∩[2*A022297(n+2)-n, record[A074288(n+1)]]`
-/

namespace A074289.P13643960160893623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022297 (n + 2) - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074289.P13643960160893623

noncomputable section

/-- A074289: Values of A000002(n)*A054353(n) that are repeated.

Offset 1, canonical program `A074289.P13643960160893623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1729 terms. -/
def A074289 (n : ℕ) : ℤ :=
  (A074289.P13643960160893623.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1729 terms. -/
def A074289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080543.P9661818931796331892

`A080541(A080541(n+1))`
-/

namespace A080543.P9661818931796331892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (A080541 (n + 1)).toNat

end

end A080543.P9661818931796331892

noncomputable section

/-- A080543: In binary representation: keep the first digit and rotate left the others twice.

Offset 1, canonical program `A080543.P9661818931796331892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9096 terms. -/
def A080543 (n : ℕ) : ℤ :=
  A080543.P9661818931796331892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9096 terms. -/
def A080543.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085712.P6030904731041959429

`2*p?[A002731(n+1)]`
-/

namespace A085712.P6030904731041959429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085712.P6030904731041959429

noncomputable section

/-- A085712: Semiprimes k such that gpf(k)^lpf(k)+1 is also semiprime, where gpf = A006530 and lpf = A020639.

Offset 1, canonical program `A085712.P6030904731041959429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A085712 (n : ℕ) : ℤ :=
  A085712.P6030904731041959429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A085712.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088711.P10668698968126566124

`∩[A050703(n+1), A271568(n+1)]`
-/

namespace A088711.P10668698968126566124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088711.P10668698968126566124

noncomputable section

/-- A088711: Numbers m that are a product of two primes j and k such that both m+j+k and m-j-k are primes.

Offset 1, canonical program `A088711.P10668698968126566124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1115 terms. -/
def A088711 (n : ℕ) : ℤ :=
  (A088711.P10668698968126566124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1115 terms. -/
def A088711.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A108926.P13113658268164556802

`∩[A231089(n+1)-2, A231089(n+1)]`
-/

namespace A108926.P13113658268164556802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108926.P13113658268164556802

noncomputable section

/-- A108926: Initial members of abundant quintuplets, i.e., values of k such that (k, k+2, k+4, k+6, k+8) are all abundant numbers.

Offset 1, canonical program `A108926.P13113658268164556802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A108926 (n : ℕ) : ℤ :=
  (A108926.P13113658268164556802.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A108926.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A120992.P11139390425260994503

`A053806(n+1)-A072284(n+1)`
-/

namespace A120992.P11139390425260994503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - A072284 (n + 1)

end

end A120992.P11139390425260994503

noncomputable section

/-- A120992: Number of integers in n-th run of squarefree positive integers.

Offset 1, canonical program `A120992.P11139390425260994503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120992 (n : ℕ) : ℤ :=
  A120992.P11139390425260994503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129033.P13034651442379249591

`A003051(n+6)-A131743(n+5)-2`
-/

namespace A129033.P13034651442379249591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003051 (n + 6) - A131743 (n + 5) - 2

end

end A129033.P13034651442379249591

noncomputable section

/-- A129033: Number of n-node triangulations of the torus S_1 in which every node has degree >= 6.

Offset 6, canonical program `A129033.P13034651442379249591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129033 (n : ℕ) : ℤ :=
  A129033.P13034651442379249591.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129438.P16505802994344033545

`A125096(A028310(n))`
-/

namespace A129438.P16505802994344033545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A028310 n).toNat

end

end A129438.P16505802994344033545

noncomputable section

/-- A129438: Expansion of (phi(q) * phi(q^2) + phi(-q^2) * phi(q^4)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 0, canonical program `A129438.P16505802994344033545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129438 (n : ℕ) : ℤ :=
  A129438.P16505802994344033545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129438.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139709.P10417153833088246719

`A007088(A139708(n+1))`
-/

namespace A139709.P10417153833088246719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A139708 (n + 1)).toNat

end

end A139709.P10417153833088246719

noncomputable section

/-- A139709: Take n in binary. Rotate the binary digits to the left until a 1 once again appears as the leftmost digit. a(n) is result written in binary.

Offset 1, canonical program `A139709.P10417153833088246719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139709 (n : ℕ) : ℤ :=
  A139709.P10417153833088246719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139709.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A152537.P6416251787973897900

`a(n-1)+a(n-1)-A257628(n)` with `a(0)=1`
-/

namespace A152537.P6416251787973897900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A257628 n)

end

end A152537.P6416251787973897900

noncomputable section

/-- A152537: Convolution sequence: this sequence convolved with A000041 gives powers of 2, (A000079).

Offset 0, canonical program `A152537.P6416251787973897900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A152537 (n : ℕ) : ℤ :=
  A152537.P6416251787973897900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A152537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153215.P1043252920232416462

`∩[A318959(n+1), A319050(n+1)]`
-/

namespace A153215.P1043252920232416462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153215.P1043252920232416462

noncomputable section

/-- A153215: Primes p such that none of p-2, p-1, p+1, and p+2 is squarefree.

Offset 1, canonical program `A153215.P1043252920232416462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A153215 (n : ℕ) : ℤ :=
  (A153215.P1043252920232416462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A153215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156244.P7860944318460919725

`A078649(2*(n+1))`
-/

namespace A156244.P7860944318460919725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (2 * (n + 1))

end

end A156244.P7860944318460919725

noncomputable section

/-- A156244: Bisection of A078649.

Offset 1, canonical program `A156244.P7860944318460919725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156244 (n : ℕ) : ℤ :=
  A156244.P7860944318460919725.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156244.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156245.P8092038638020984923

`A078649(2*n+1)`
-/

namespace A156245.P8092038638020984923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (2 * n + 1)

end

end A156245.P8092038638020984923

noncomputable section

/-- A156245: Bisection of A078649.

Offset 1, canonical program `A156245.P8092038638020984923`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156245 (n : ℕ) : ℤ :=
  A156245.P8092038638020984923.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156245.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156256.P13404197385732133803

`A078649(n+2)-A078649(n+1)-2`
-/

namespace A156256.P13404197385732133803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 2) - A078649 (n + 1) - 2

end

end A156256.P13404197385732133803

noncomputable section

/-- A156256: Number of 1's separating successive 2's in the Kolakoski sequence A000002.

Offset 1, canonical program `A156256.P13404197385732133803`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156256 (n : ℕ) : ℤ :=
  A156256.P13404197385732133803.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156257.P13237227130742340145

`A000002(A078649(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156257.P13237227130742340145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A078649 (n + 1) + 1).toNat

end

end A156257.P13237227130742340145

noncomputable section

/-- A156257: Digit of runs of length 2 in the Kolakoski sequence A000002: a(n) = A000002(A078649(n)).

Offset 1, canonical program `A156257.P13237227130742340145`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156257 (n : ℕ) : ℤ :=
  A156257.P13237227130742340145.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156258.P4976708628411436766

`1/2*(A000002(A078649(n+1))-A000002(A078649(n+1)+2)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156258.P4976708628411436766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000002 (A078649 (n + 1)).toNat - A000002 (A078649 (n + 1) + 2).toNat + 1 : ℚ)

end

end A156258.P4976708628411436766

noncomputable section

/-- A156258: a(n)=(1/2)*(A000002(A078649(n))-A000002(A078649(n)+2)+1).

Offset 1, canonical program `A156258.P4976708628411436766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156258 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156258.P4976708628411436766.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156259.P16246596672154107662

`1/2*(A000002(A078649(n+1)+2)-A000002(A078649(n+1))+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156259.P16246596672154107662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000002 (A078649 (n + 1) + 2).toNat - A000002 (A078649 (n + 1)).toNat + 1 : ℚ)

end

end A156259.P16246596672154107662

noncomputable section

/-- A156259: a(n)=(1/2)*(A000002(A078649(n)+2)-A000002(A078649(n))+1).

Offset 1, canonical program `A156259.P16246596672154107662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156259.P16246596672154107662.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156265.P11083405800392652458

`3*(n+1)-A078649(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156265.P11083405800392652458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A078649 (n + 1)

end

end A156265.P11083405800392652458

noncomputable section

/-- A156265: a(n)=3*n-A078649(n).

Offset 1, canonical program `A156265.P11083405800392652458`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156265 (n : ℕ) : ℤ :=
  A156265.P11083405800392652458.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156267.P4727819822386795291

`A054353(2*(n+1))-A078649(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156267.P4727819822386795291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (2 * (n + 1)) - A078649 (n + 1)

end

end A156267.P4727819822386795291

noncomputable section

/-- A156267: a(n)=A054353(2*n)-A078649(n).

Offset 1, canonical program `A156267.P4727819822386795291`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156267 (n : ℕ) : ℤ :=
  A156267.P4727819822386795291.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156267.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156268.P6336594155207146855

`2*A054353(n+1)-A078649(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156268.P6336594155207146855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054353 (n + 1) - A078649 (n + 1)

end

end A156268.P6336594155207146855

noncomputable section

/-- A156268: a(n)=2*A054353(n)-A078649(n).

Offset 1, canonical program `A156268.P6336594155207146855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156268 (n : ℕ) : ℤ :=
  A156268.P6336594155207146855.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156268.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156352.P2115846142684251298

`A078649(A054353(n+1)-(n+1)+1)-A054353(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156352.P2115846142684251298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (A054353 (n + 1) - (n + 1 : ℤ) + 1).toNat - A054353 (n + 1)

end

end A156352.P2115846142684251298

noncomputable section

/-- A156352: a(n)=A078649(A054353(n)-n+1)-A054353(n).

Offset 1, canonical program `A156352.P2115846142684251298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156352 (n : ℕ) : ℤ :=
  A156352.P2115846142684251298.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156352.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162902.P8702082304774524880

`∪[A053806(n+1), A072284(n+1)]`
-/

namespace A162902.P8702082304774524880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162902.P8702082304774524880

noncomputable section

/-- A162902: An increasing sequence of alternatingly squarefree and nonsquarefree numbers.

Offset 1, canonical program `A162902.P8702082304774524880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162902 (n : ℕ) : ℤ :=
  (A162902.P8702082304774524880.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162911.P13044090797899104373

`A002487(A258996(n+1))`
-/

namespace A162911.P13044090797899104373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A258996 (n + 1)).toNat

end

end A162911.P13044090797899104373

noncomputable section

/-- A162911: Numerators of drib tree fractions, where drib is the bit-reversal permutation tree of the Bird tree.

Offset 1, canonical program `A162911.P13044090797899104373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162911 (n : ℕ) : ℤ :=
  A162911.P13044090797899104373.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162911.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162912.P15780371086772788936

`A002487(1+A258996(n+1))`
-/

namespace A162912.P15780371086772788936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A258996 (n + 1)).toNat

end

end A162912.P15780371086772788936

noncomputable section

/-- A162912: Denominators of drib tree fractions, where drib is the bit-reversal permutation tree of the Bird tree.

Offset 1, canonical program `A162912.P15780371086772788936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162912 (n : ℕ) : ℤ :=
  A162912.P15780371086772788936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162912.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A192618.P9154005034484997042

`record[A008475(A002731(n+1))²]`
-/

namespace A192618.P9154005034484997042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A002731 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192618.P9154005034484997042

noncomputable section

/-- A192618: Prime powers p^k with even exponents k > 0 such that (1 + p^k)/2 is prime.

Offset 1, canonical program `A192618.P9154005034484997042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192618 (n : ℕ) : ℤ :=
  A192618.P9154005034484997042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192618.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A219646.P1459568560880754385

`∑[A219642(n)]`
-/

namespace A219646.P1459568560880754385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219646.P1459568560880754385

noncomputable section

/-- A219646: Partial sums of A219642.

Offset 0, canonical program `A219646.P1459568560880754385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219646 (n : ℕ) : ℤ :=
  A219646.P1459568560880754385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227132.P9151109300955143811

`eq[4, 4/a(A257687(n))]` with `a(0)=1`
-/

namespace A227132.P9151109300955143811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  4 / f2 (A257687 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A227132.P9151109300955143811

noncomputable section

/-- A227132: Numbers k for which there is an odd number of nonzero digits when k is written in the factorial base (A007623).

Offset 1, canonical program `A227132.P9151109300955143811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2520 terms. -/
def A227132 (n : ℕ) : ℤ :=
  (A227132.P9151109300955143811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2520 terms. -/
def A227132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227153.P14249677092312730531

`a(A257687(n))*A099563(n)` with `a(0)=1`
-/

namespace A227153.P14249677092312730531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A257687 n).toNat * A099563 n

end

end A227153.P14249677092312730531

noncomputable section

/-- A227153: Product of nonzero digits of n in factorial base.

Offset 0, canonical program `A227153.P14249677092312730531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227153 (n : ℕ) : ℤ :=
  A227153.P14249677092312730531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243747.P6224960804244215047

`A035184(A259445(n+2))-A002325(n+2)`
-/

namespace A243747.P6224960804244215047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (A259445 (n + 2)).toNat - A002325 (n + 2)

end

end A243747.P6224960804244215047

noncomputable section

/-- A243747: Expansion of (phi(q) - phi(q^2))^2 / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 2, canonical program `A243747.P6224960804244215047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243747 (n : ℕ) : ℤ :=
  A243747.P6224960804244215047.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248514.P12001065706870817028

`ceil(A003602(eq[1, A010060(n)])/2)`
-/

namespace A248514.P12001065706870817028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2⌉

end

end A248514.P12001065706870817028

noncomputable section

/-- A248514: Fractal sequence of the dispersion of the "odious numbers".

Offset 1, canonical program `A248514.P12001065706870817028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A248514 (n : ℕ) : ℤ :=
  A248514.P12001065706870817028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A248514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000028.P8857618948248108747

`lt[A064179(n+1), 0]+1`
-/

namespace A000028.P8857618948248108747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A000028.P8857618948248108747

noncomputable section

/-- A000028: Let k = p_1^e_1 p_2^e_2 p_3^e_3 ... be the prime factorization of n. Sequence gives k such that the sum of the numbers of 1's in the binary expansions of e_1, e_2, e_3, ... is odd.

Offset 1, canonical program `A000028.P8857618948248108747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000028 (n : ℕ) : ℤ :=
  (A000028.P8857618948248108747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000379.P2146762870191125064

`eq[1, A064179(n+1)]+1`
-/

namespace A000379.P2146762870191125064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000379.P2146762870191125064

noncomputable section

/-- A000379: Numbers where total number of 1-bits in the exponents of their prime factorization is even; a 2-way classification of integers: complement of A000028.

Offset 1, canonical program `A000379.P2146762870191125064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000379 (n : ℕ) : ℤ :=
  (A000379.P2146762870191125064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013948.P3339504944308927508

`A078649(n+1)-n`
-/

namespace A013948.P3339504944308927508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1) - (n : ℤ)

end

end A013948.P3339504944308927508

noncomputable section

/-- A013948: Positions of 2's in Kolakoski sequence (A000002).

Offset 1, canonical program `A013948.P3339504944308927508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013948 (n : ℕ) : ℤ :=
  A013948.P3339504944308927508.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013948.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A022304.P12337399357003774958

`∑[A327239(n+2)]`
-/

namespace A022304.P12337399357003774958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327239 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P12337399357003774958

noncomputable section

/-- A022304: Index of n-th 1 in A022303.

Offset 0, canonical program `A022304.P12337399357003774958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022304 (n : ℕ) : ℤ :=
  A022304.P12337399357003774958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022304.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A051226.P497692568898990968

`2*A051225(n+1)`
-/

namespace A051226.P497692568898990968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051225 (n + 1)

end

end A051226.P497692568898990968

noncomputable section

/-- A051226: Numbers m such that the Bernoulli number B_m has denominator 30.

Offset 1, canonical program `A051226.P497692568898990968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051226 (n : ℕ) : ℤ :=
  A051226.P497692568898990968.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054841.P9974101703667219502

`∑{d}[n+1, A276379(A014963(#))]`
-/

namespace A054841.P9974101703667219502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276379 (A014963 d).toNat

end

end A054841.P9974101703667219502

noncomputable section

/-- A054841: If n = 2^a * 3^b * 5^c * 7^d * ... then a(n) = a + 10 * b + 100 * c + 1000 * d + ... .

Offset 1, canonical program `A054841.P9974101703667219502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. -/
def A054841 (n : ℕ) : ℤ :=
  A054841.P9974101703667219502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. -/
def A054841.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A068074.P5533713125246169927

`(-1)^(n+1)*A228441((n+1)²)`
-/

namespace A068074.P5533713125246169927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A228441 ((n + 1) ^ 2)

end

end A068074.P5533713125246169927

noncomputable section

/-- A068074: a(n) = Sum_{d|n} (-1)^d*2^omega(n/d) where omega(x) is the number of distinct prime factors in the factorization of x.

Offset 1, canonical program `A068074.P5533713125246169927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068074 (n : ℕ) : ℤ :=
  A068074.P5533713125246169927.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074263.P1367974971333941862

`∩[A078649(n+1), A156243(n+1)+1]`
-/

namespace A074263.P1367974971333941862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074263.P1367974971333941862

noncomputable section

/-- A074263: Positions of '22' in Kolakoski sequence A000002.

Offset 1, canonical program `A074263.P1367974971333941862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5008 terms. -/
def A074263 (n : ℕ) : ℤ :=
  (A074263.P1367974971333941862.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5008 terms. -/
def A074263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079703.P2275513762090753196

`4*A043297(n+2)`
-/

namespace A079703.P2275513762090753196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A043297 (n + 2)

end

end A079703.P2275513762090753196

noncomputable section

/-- A079703: Numbers 4p where p is prime and 2p+1 and 4p+1 are composite.

Offset 0, canonical program `A079703.P2275513762090753196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079703 (n : ℕ) : ℤ :=
  A079703.P2275513762090753196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079703.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130445.P7579084859812681452

`comp[A130446(n+1)-1]+1`
-/

namespace A130445.P7579084859812681452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A130445.P7579084859812681452

noncomputable section

/-- A130445: Integers in the range [1, 425] not expressible as a difference of the unique optimal Golomb ruler of order 24. See A130444.

Offset 1, canonical program `A130445.P7579084859812681452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A130445 (n : ℕ) : ℤ :=
  (A130445.P7579084859812681452.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A130445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131343.P2090840239221504479

`A112310(A188015(n+1))-1`
-/

namespace A131343.P2090840239221504479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (A188015 (n + 1)).toNat - 1

end

end A131343.P2090840239221504479

noncomputable section

/-- A131343: Number of 1's in maximal Lucas representation (A130311) of n.

Offset 0, canonical program `A131343.P2090840239221504479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A131343 (n : ℕ) : ℤ :=
  A131343.P2090840239221504479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A131343.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A213540.P1206337804366464910

`A003714(n)*8+3`
-/

namespace A213540.P1206337804366464910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n * 8 + 3

end

end A213540.P1206337804366464910

noncomputable section

/-- A213540: Numbers k such that k AND k*2 = 2, where AND is the bitwise AND operator.

Offset 1, canonical program `A213540.P1206337804366464910`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213540 (n : ℕ) : ℤ :=
  A213540.P1206337804366464910.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213540.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214974.P2106782757956089730

`eq[A007895(n+1), A116543(n+1)]+1`
-/

namespace A214974.P2106782757956089730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A214974.P2106782757956089730

noncomputable section

/-- A214974: Numbers k for which A116543(k) = A007895(k); i.e., the Lucas and Zeckendorf representations of k have the same length.

Offset 1, canonical program `A214974.P2106782757956089730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A214974 (n : ℕ) : ℤ :=
  (A214974.P2106782757956089730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A214974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214975.P9208562958097402134

`lt[A116543(n), A007895(n)]`
-/

namespace A214975.P9208562958097402134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214975.P9208562958097402134

noncomputable section

/-- A214975: Numbers k for which A116543(k) < A007895(k); i.e., the Lucas representation of k is shorter than the Zeckendorf representation.

Offset 1, canonical program `A214975.P9208562958097402134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. -/
def A214975 (n : ℕ) : ℤ :=
  (A214975.P9208562958097402134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. -/
def A214975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214976.P15271784311769597705

`lt[A007895(n), A116543(n)]`
-/

namespace A214976.P15271784311769597705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214976.P15271784311769597705

noncomputable section

/-- A214976: Numbers k for which A116543(k) > A007895(k); i.e., the Lucas representation of k is longer than the Zeckendorf representation.

Offset 1, canonical program `A214976.P15271784311769597705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3604 terms. -/
def A214976 (n : ℕ) : ℤ :=
  (A214976.P15271784311769597705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3604 terms. -/
def A214976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214977.P6749457083996536388

`∑[A116543(n+1)]`
-/

namespace A214977.P6749457083996536388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214977.P6749457083996536388

noncomputable section

/-- A214977: Number of terms in Lucas representations of 1,2,...,n.

Offset 1, canonical program `A214977.P6749457083996536388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214977 (n : ℕ) : ℤ :=
  A214977.P6749457083996536388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219638.P10933090665757419275

`comp[n-ceil(A104324(n)/2)]`
-/

namespace A219638.P10933090665757419275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(A104324 n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219638.P10933090665757419275

noncomputable section

/-- A219638: Complement of A219640. Natural numbers that do not occur in A219641.

Offset 1, canonical program `A219638.P10933090665757419275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219638 (n : ℕ) : ℤ :=
  (A219638.P10933090665757419275.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230834.P9285383202588386292

`∪[A001248(n+1), A107890(n+1)]`
-/

namespace A230834.P9285383202588386292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230834.P9285383202588386292

noncomputable section

/-- A230834: Loeschian semiprimes: semiprimes of the form x^2 + x*y + y^2.

Offset 1, canonical program `A230834.P9285383202588386292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230834 (n : ℕ) : ℤ :=
  (A230834.P9285383202588386292.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247068.P6299063819757752497

`p?[A003714(n)]`
-/

namespace A247068.P6299063819757752497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247068.P6299063819757752497

noncomputable section

/-- A247068: Primes whose base-2 expansion has no two consecutive 1's.

Offset 1, canonical program `A247068.P6299063819757752497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A247068 (n : ℕ) : ℤ :=
  A247068.P6299063819757752497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A247068.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A076503.P10982383402071221078

`p?[A215618(n+1)]`
-/

namespace A076503.P10982383402071221078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076503.P10982383402071221078

noncomputable section

/-- A076503: Prime numbers whose squares have square digit-sums.

Offset 1, canonical program `A076503.P10982383402071221078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A076503 (n : ℕ) : ℤ :=
  A076503.P10982383402071221078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A076503.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A247122.P6428135620263079881

`∩[A104213(n+1), A119450(n+1)]`
-/

namespace A247122.P6428135620263079881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247122.P6428135620263079881

noncomputable section

/-- A247122: Primes p such that the digit sum of p is an odd composite number.

Offset 1, canonical program `A247122.P6428135620263079881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1761 terms. -/
def A247122 (n : ℕ) : ℤ :=
  (A247122.P6428135620263079881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1761 terms. -/
def A247122.provenance : SequenceMachineLib.Provenance := .conjectured

