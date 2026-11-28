import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B000.C051
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
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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
import Seq.B004.C004
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

/-! ## A355818.P8434009146016127657

`gcd(n+1, A324644(n+1))`
-/

namespace A355818.P8434009146016127657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A324644 (n + 1))

end

end A355818.P8434009146016127657

noncomputable section

/-- A355818: Greatest common divisor of n, sigma(n) and A276086(n), where A276086 is primorial base exp-function.

Offset 1, canonical program `A355818.P8434009146016127657`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355818 (n : ℕ) : ℤ :=
  (A355818.P8434009146016127657.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355818.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356229.P13870738333208729634

`A287170(2*(n+1))`
-/

namespace A356229.P13870738333208729634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (2 * (n + 1))

end

end A356229.P13870738333208729634

noncomputable section

/-- A356229: Number of maximal gapless submultisets of the prime indices of 2n.

Offset 1, canonical program `A356229.P13870738333208729634`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356229 (n : ℕ) : ℤ :=
  A356229.P13870738333208729634.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358224.P11726547579402551089

`A000035(A328386(n+1))`
-/

namespace A358224.P11726547579402551089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A328386 (n + 1)).toNat

end

end A358224.P11726547579402551089

noncomputable section

/-- A358224: Parity of A328386(n), where A328386(n) = A276086(n) mod n, and A276086 is the primorial base exp-function.

Offset 1, canonical program `A358224.P11726547579402551089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358224 (n : ℕ) : ℤ :=
  A358224.P11726547579402551089.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358224.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A358764.P15713081182403681202

`A276086(n)-A324895(n)`
-/

namespace A358764.P15713081182403681202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A324895 n

end

end A358764.P15713081182403681202

noncomputable section

/-- A358764: Largest difference between consecutive divisors of A276086(n), where A276086 is the primorial base exp-function.

Offset 0, canonical program `A358764.P15713081182403681202`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358764 (n : ℕ) : ℤ :=
  A358764.P15713081182403681202.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358764.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A369445.P13717645019014606819

`A000203(n+1)/A324644(n+1)`
-/

namespace A369445.P13717645019014606819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A324644 (n + 1) : ℚ)

end

end A369445.P13717645019014606819

noncomputable section

/-- A369445: Numerator of sigma(n) / A276086(n), where A276086 is the primorial base exp-function.

Offset 1, canonical program `A369445.P13717645019014606819`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369445 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369445.P13717645019014606819.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369446.P16402886851353338065

`A276086(n+1)/A324644(n+1)`
-/

namespace A369446.P16402886851353338065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 (n + 1) : ℚ) / (A324644 (n + 1) : ℚ)

end

end A369446.P16402886851353338065

noncomputable section

/-- A369446: Denominator of sigma(n) / A276086(n), where A276086 is the primorial base exp-function.

Offset 1, canonical program `A369446.P16402886851353338065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369446 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369446.P16402886851353338065.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373601.P4232963300260812751

`A079978(A373600(n))`
-/

namespace A373601.P4232963300260812751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373600 n).toNat

end

end A373601.P4232963300260812751

noncomputable section

/-- A373601: a(n) = 1 if the sum of prime factors (with multiplicity) of A276086(n) is a multiple of 3, otherwise 0, where A276086 is the primorial base exp-function.

Offset 0, canonical program `A373601.P4232963300260812751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373601 (n : ℕ) : ℤ :=
  A373601.P4232963300260812751.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373601.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A392595.P12142057452632450430

`A324895(n)%360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392595.P12142057452632450430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324895 n) 360

end

end A392595.P12142057452632450430

noncomputable section

/-- A392595: a(n) = A324895(n) mod 360, where A324895 gives the largest proper divisor of primorial base exp-function.

Offset 0, canonical program `A392595.P12142057452632450430`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392595 (n : ℕ) : ℤ :=
  A392595.P12142057452632450430.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392595.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392599.P2829318639345328643

`A276087(n)%360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392599.P2829318639345328643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276087 n) 360

end

end A392599.P2829318639345328643

noncomputable section

/-- A392599: a(n) = A276087(n) mod 360, where A276087 is the primorial base exp-function applied twice.

Offset 0, canonical program `A392599.P2829318639345328643`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276087(n)%360` (program `A392599.P2829318639345328643`, by `A392599.P2829318639345328643.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A392599 (n : ℕ) : ℤ :=
  A392599.P2829318639345328643.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A276087(n)%360` (program `A392599.P2829318639345328643`, by `A392599.P2829318639345328643.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A392599.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392608.P7410428666246538221

`A001221(A324198(n))`
-/

namespace A392608.P7410428666246538221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A324198 n).toNat

end

end A392608.P7410428666246538221

noncomputable section

/-- A392608: Number of nonzero digits in the primorial base representation of n (A049345) such that their corresponding radix prime divides n.

Offset 0, canonical program `A392608.P7410428666246538221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392608 (n : ℕ) : ℤ :=
  A392608.P7410428666246538221.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356299.P6838311421198862720

`gcd(A276086(n+1), A342001(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356299.P6838311421198862720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (n + 1)) (A342001 (n + 1))

end

end A356299.P6838311421198862720

noncomputable section

/-- A356299: a(n) = gcd(A276086(n), A342001(n)), where A276086 is the primorial base exp-function, and A342001 is the arithmetic derivative without its inherited divisor.

Offset 1, canonical program `A356299.P6838311421198862720`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A276086(n+1), A342001(n+1))` (program `A356299.P6838311421198862720`, by `A356299.P6838311421198862720.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356299 (n : ℕ) : ℤ :=
  (A356299.P6838311421198862720.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A276086(n+1), A342001(n+1))` (program `A356299.P6838311421198862720`, by `A356299.P6838311421198862720.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356299.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A358765.P482776091523711210

`A358669(n)%60`
-/

namespace A358765.P482776091523711210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358669 n) 60

end

end A358765.P482776091523711210

noncomputable section

/-- A358765: a(n) = A003415(n)*A276086(n) mod 60, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

Offset 0, canonical program `A358765.P482776091523711210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358765 (n : ℕ) : ℤ :=
  A358765.P482776091523711210.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358765.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359424.P7532572061000122875

`A359423(n)%60`
-/

namespace A359424.P7532572061000122875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359423 n) 60

end

end A359424.P7532572061000122875

noncomputable section

/-- A359424: The least common multiple of the arithmetic derivative and the primorial base exp-function, reduced modulo 60.

Offset 0, canonical program `A359424.P7532572061000122875`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359424 (n : ℕ) : ℤ :=
  A359424.P7532572061000122875.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359424.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359425.P15847596511919593264

`∑{d}[n+1, A347130((n+1)/#)*A383286(#)]`
-/

namespace A359425.P15847596511919593264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A383286 d

end

end A359425.P15847596511919593264

noncomputable section

/-- A359425: Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

Offset 1, canonical program `A359425.P15847596511919593264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359425 (n : ℕ) : ℤ :=
  A359425.P15847596511919593264.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359425.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A366385.P9857088472437292857

`A052126(n+1)*A061395(n+1)`
-/

namespace A366385.P9857088472437292857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A061395 (n + 1)

end

end A366385.P9857088472437292857

noncomputable section

/-- A366385: Divide n by its largest prime factor, then multiply with the index of that same prime; a(1) = 0 by convention.

Offset 1, canonical program `A366385.P9857088472437292857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366385 (n : ℕ) : ℤ :=
  A366385.P9857088472437292857.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366385.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A366785.P721477122274016102

`gcd(A001222(n+1), A061395(n+1))`
-/

namespace A366785.P721477122274016102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A061395 (n + 1))

end

end A366785.P721477122274016102

noncomputable section

/-- A366785: Greatest common divisor of the number of prime factors (counted with multiplicity, A001222) and the greatest prime index (A061395) of n.

Offset 1, canonical program `A366785.P721477122274016102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366785 (n : ℕ) : ℤ :=
  (A366785.P721477122274016102.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366785.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A369038.P18199444595080537960

`A003415(n+1)/A345000(n+1)`
-/

namespace A369038.P18199444595080537960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A345000 (n + 1) : ℚ)

end

end A369038.P18199444595080537960

noncomputable section

/-- A369038: Numerator of ratio A003415(n) / A003415(A276086(n)), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

Offset 1, canonical program `A369038.P18199444595080537960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369038 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369038.P18199444595080537960.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369039.P5545126022124610006

`A327860(n+1)/A345000(n+1)`
-/

namespace A369039.P5545126022124610006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 (n + 1) : ℚ) / (A345000 (n + 1) : ℚ)

end

end A369039.P5545126022124610006

noncomputable section

/-- A369039: Denominator of ratio A003415(n) / A003415(A276086(n)), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

Offset 1, canonical program `A369039.P5545126022124610006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369039.P5545126022124610006.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369653.P5991875843094545787

`A079978(A327860(n))`
-/

namespace A369653.P5991875843094545787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A327860 n).toNat

end

end A369653.P5991875843094545787

noncomputable section

/-- A369653: a(n) = 1 if A327860(n) is a multiple of 3, otherwise 0, where A327860 is the arithmetic derivative of the primorial base exp-function.

Offset 0, canonical program `A369653.P5991875843094545787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369653 (n : ℕ) : ℤ :=
  A369653.P5991875843094545787.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369653.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A370116.P5557081367806882330

`n/A369964(n)`
-/

namespace A370116.P5557081367806882330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A369964 n : ℚ)

end

end A370116.P5557081367806882330

noncomputable section

/-- A370116: Numerator of n/A276086(A003415(n)), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

Offset 0, canonical program `A370116.P5557081367806882330`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370116 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370116.P5557081367806882330.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370117.P16844477080958860315

`A327859(n)/A369964(n)`
-/

namespace A370117.P16844477080958860315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327859 n : ℚ) / (A369964 n : ℚ)

end

end A370117.P16844477080958860315

noncomputable section

/-- A370117: Denominator of n/A276086(A003415(n)), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

Offset 0, canonical program `A370117.P16844477080958860315`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370117 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370117.P16844477080958860315.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370117.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370131.P13673543069642335186

`A068346(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370131.P13673543069642335186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A276086 n).toNat

end

end A370131.P13673543069642335186

noncomputable section

/-- A370131: a(n) = A068346(A276086(n)), where A068346 is the second arithmetic derivative, and A276086 is the primorial base exp-function.

Offset 0, canonical program `A370131.P13673543069642335186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370131 (n : ℕ) : ℤ :=
  A370131.P13673543069642335186.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370131.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372442.P7915193120500991903

`A070939(n+2)-A061395(n+2)`
-/

namespace A372442.P7915193120500991903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 2) - A061395 (n + 2)

end

end A372442.P7915193120500991903

noncomputable section

/-- A372442: (Greatest binary index of n) minus (greatest prime index of n).

Offset 2, canonical program `A372442.P7915193120500991903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372442 (n : ℕ) : ℤ :=
  A372442.P7915193120500991903.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372442.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A392600.P6052840119253966993

`A327860(n)%360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392600.P6052840119253966993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327860 n) 360

end

end A392600.P6052840119253966993

noncomputable section

/-- A392600: a(n) = A327860(n) mod 360, where A327860 is the arithmetic derivative of the primorial base exp-function.

Offset 0, canonical program `A392600.P6052840119253966993`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A327860(n)%360` (program `A392600.P6052840119253966993`, by `A392600.P6052840119253966993.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A392600 (n : ℕ) : ℤ :=
  A392600.P6052840119253966993.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A327860(n)%360` (program `A392600.P6052840119253966993`, by `A392600.P6052840119253966993.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A392600.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A399372.P3051137175821070441

`A020639(A327859(n))`
-/

namespace A399372.P3051137175821070441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A327859 n).toNat

end

end A399372.P3051137175821070441

noncomputable section

/-- A399372: a(n) is the smallest prime not dividing A003415(n) [the arithmetic derivative of n], with a(0) = a(1) = 1 by convention.

Offset 0, canonical program `A399372.P3051137175821070441`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399372 (n : ℕ) : ℤ :=
  A399372.P3051137175821070441.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399372.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399376.P16130114159790003951

`A028233(A327859(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399376.P16130114159790003951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A327859 n).toNat

end

end A399376.P16130114159790003951

noncomputable section

/-- A399376: a(n) = A028233(A327859(n)).

Offset 0, canonical program `A399376.P16130114159790003951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399376 (n : ℕ) : ℤ :=
  A399376.P16130114159790003951.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400151.P12638623928893939596

`A328571(A003415(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400151.P12638623928893939596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (A003415 n).toNat

end

end A400151.P12638623928893939596

noncomputable section

/-- A400151: a(n) = A328571(A003415(n)).

Offset 0, canonical program `A400151.P12638623928893939596`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A328571(A003415(n))` (program `A400151.P12638623928893939596`, by `A400151.P12638623928893939596.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400151 (n : ℕ) : ℤ :=
  A400151.P12638623928893939596.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A328571(A003415(n))` (program `A400151.P12638623928893939596`, by `A400151.P12638623928893939596.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400151.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A400260.P9972269683842690862

`val(A327859(col(n)), A000040(1+row(n)-col(n)))`
-/

namespace A400260.P9972269683842690862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327859 (SequenceMachineLib.triCol n)).toNat (A000040 (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat).toNat

end

end A400260.P9972269683842690862

noncomputable section

/-- A400260: Square array read by falling antidiagonals: A(n,k) = the (k+1)-th least significant digit of arithmetic derivative of n when it is read in primorial base, A049345.

Offset 0, canonical program `A400260.P9972269683842690862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400260 (n : ℕ) : ℤ :=
  (A400260.P9972269683842690862.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400263.P12527445212695226061

`A007949(A327859(n))`
-/

namespace A400263.P12527445212695226061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A327859 n).toNat

end

end A400263.P12527445212695226061

noncomputable section

/-- A400263: The second least significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

Offset 0, canonical program `A400263.P12527445212695226061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400263 (n : ℕ) : ℤ :=
  A400263.P12527445212695226061.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400265.P327864196285606398

`A112765(A327859(n))`
-/

namespace A400265.P327864196285606398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A327859 n).toNat

end

end A400265.P327864196285606398

noncomputable section

/-- A400265: The third least significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

Offset 0, canonical program `A400265.P327864196285606398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400265 (n : ℕ) : ℤ :=
  A400265.P327864196285606398.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400267.P15255632653224418353

`A214411(A327859(n))`
-/

namespace A400267.P15255632653224418353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A327859 n).toNat

end

end A400267.P15255632653224418353

noncomputable section

/-- A400267: The fourth least significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

Offset 0, canonical program `A400267.P15255632653224418353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400267 (n : ℕ) : ℤ :=
  A400267.P15255632653224418353.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401911.P1278241965479012

`gcd(n+1, A342001(n+1))`
-/

namespace A401911.P1278241965479012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A342001 (n + 1))

end

end A401911.P1278241965479012

noncomputable section

/-- A401911: The greatest common divisor of n and A342001(n), where A342001(n) = A003415(n)/A003557(n).

Offset 1, canonical program `A401911.P1278241965479012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401911 (n : ℕ) : ℤ :=
  (A401911.P1278241965479012.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401911.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A366840.P17137846369514752914`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366840 (n : ℕ) : ℤ :=
  A366840.P17137846369514752914.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366840.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A377930.P10239957965127502951

`max(A007814(col(n)+1), A007814(row(n)-col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377930.P10239957965127502951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A007814 (SequenceMachineLib.triCol n + 1)) (A007814 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat)

end

end A377930.P10239957965127502951

noncomputable section

/-- A377930: Square array A(n, k), n, k > 0, read by antidiagonals; A(n, k) = max(A007814(n), A007814(k)).

Offset 1, canonical program `A377930.P10239957965127502951`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `max(A007814(col(n)+1), A007814(row(n)-col(n)+1))` (program `A377930.P10239957965127502951`, by `A377930.P10239957965127502951.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377930 (n : ℕ) : ℤ :=
  A377930.P10239957965127502951.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `max(A007814(col(n)+1), A007814(row(n)-col(n)+1))` (program `A377930.P10239957965127502951`, by `A377930.P10239957965127502951.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377930.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A379483.P10370958527501415734

`A007814(1+A379482(n+1))`
-/

namespace A379483.P10370958527501415734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A379482 (n + 1)).toNat

end

end A379483.P10370958527501415734

noncomputable section

/-- A379483: a(n) is the number of trailing 1-bits in the binary representation of sigma(A003961(n^2)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379483.P10370958527501415734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379483 (n : ℕ) : ℤ :=
  A379483.P10370958527501415734.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379483.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A355820.P7793470395050703864

`A010051(A355442(n+1)+1)`
-/

namespace A355820.P7793470395050703864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A355442 (n + 1) + 1).toNat

end

end A355820.P7793470395050703864

noncomputable section

/-- A355820: a(n) = 1 if A003961(n) and A276086(n) are relatively prime, otherwise 0, where A003961 is fully multiplicative with a(p) = nextprime(p), and A276086 is primorial base exp-function.

Offset 1, canonical program `A355820.P7793470395050703864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355820 (n : ℕ) : ℤ :=
  A355820.P7793470395050703864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355941.P5058088448507230669

`eq[1, A355940(n+1)]+1`
-/

namespace A355941.P5058088448507230669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355941.P5058088448507230669

noncomputable section

/-- A355941: Numbers k such that A003973(k) is a multiple of A000203(k).

Offset 1, canonical program `A355941.P5058088448507230669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941 (n : ℕ) : ℤ :=
  (A355941.P5058088448507230669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356241.P11760164375224009749

`∑{p}[n+1, A151774(#)]`
-/

namespace A356241.P11760164375224009749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A151774 p

end

end A356241.P11760164375224009749

noncomputable section

/-- A356241: a(n) is the number of distinct Fermat numbers dividing n.

Offset 1, canonical program `A356241.P11760164375224009749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356241 (n : ℕ) : ℤ :=
  A356241.P11760164375224009749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356310.P10789679999806068444

`floor(1/A327858(n))`
-/

namespace A356310.P10789679999806068444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A327858 n : ℚ)⌋

end

end A356310.P10789679999806068444

noncomputable section

/-- A356310: a(n) = 1 if A003415(n) and A276086(n) are relatively prime, otherwise 0. Here A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

Offset 0, canonical program `A356310.P10789679999806068444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356310 (n : ℕ) : ℤ :=
  A356310.P10789679999806068444.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356311.P3827201041413936747

`eq[1, A327858(n)]`
-/

namespace A356311.P3827201041413936747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356311.P3827201041413936747

noncomputable section

/-- A356311: Numbers k for which A003415(k) and A276086(k) are relatively prime, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

Offset 1, canonical program `A356311.P3827201041413936747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356311 (n : ℕ) : ℤ :=
  (A356311.P3827201041413936747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356311.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A357625.P7816009241182217699

`eq[0, A124754(and(n, A006068(n)))]`
-/

namespace A357625.P7816009241182217699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (Int.land (n : ℤ) (A006068 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357625.P7816009241182217699

noncomputable section

/-- A357625: Numbers k such that the k-th composition in standard order has half-alternating sum 0.

Offset 1, canonical program `A357625.P7816009241182217699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A357625 (n : ℕ) : ℤ :=
  (A357625.P7816009241182217699.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A357625.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358757.P5737708238114910704

`filter[2*(n+1), A358755(#)]`
-/

namespace A358757.P5737708238114910704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358755 (f1 j) = 1) n)

end

end A358757.P5737708238114910704

noncomputable section

/-- A358757: Numbers k such that the smallest prime that does not divide them is of the form 6m-1.

Offset 1, canonical program `A358757.P5737708238114910704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358757 (n : ℕ) : ℤ :=
  (A358757.P5737708238114910704.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358757.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358847.P1039269610394858757

`A358755(6*(n+1))`
-/

namespace A358847.P1039269610394858757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358755 (6 * (n + 1))

end

end A358847.P1039269610394858757

noncomputable section

/-- A358847: a(n) = 1 if A053669(6*n) [the smallest prime not dividing 6*n] is of the form 6m-1, otherwise a(n) = 0.

Offset 1, canonical program `A358847.P1039269610394858757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358847 (n : ℕ) : ℤ :=
  A358847.P1039269610394858757.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359121.P16760868377081440606

`fp[A068811(n+1)-1]`
-/

namespace A359121.P16760868377081440606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068811 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A359121.P16760868377081440606

noncomputable section

/-- A359121: a(n) = number of terms of A068811 that are <= n.

Offset 1, canonical program `A359121.P16760868377081440606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359121 (n : ℕ) : ℤ :=
  (A359121.P16760868377081440606.a (n - 1) : ℤ)

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

/-! ## A359830.P7538047403356094708

`eq[0, A353350(n+1)]+1`
-/

namespace A359830.P7538047403356094708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359830.P7538047403356094708

noncomputable section

/-- A359830: Numbers k such that A048675(k) is not a multiple of 3.

Offset 1, canonical program `A359830.P7538047403356094708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359830 (n : ℕ) : ℤ :=
  (A359830.P7538047403356094708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360390.P1189110862996422458

`∑[A359485(1+n)]`
-/

namespace A360390.P1189110862996422458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359485 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360390.P1189110862996422458

noncomputable section

/-- A360390: a(1) = 1; a(n) = -Sum_{k=2..n} k^2 * a(floor(n/k)).

Offset 1, canonical program `A360390.P1189110862996422458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360390 (n : ℕ) : ℤ :=
  A360390.P1189110862996422458.a (n - 1)

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

/-! ## A361024.P7432656464654402567

`A361023(n+1)-A324903(n+1)`
-/

namespace A361024.P7432656464654402567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361023 (n + 1) - A324903 (n + 1)

end

end A361024.P7432656464654402567

noncomputable section

/-- A361024: a(n) = 1 if n and sigma(n) have equal 2-adic valuations, otherwise 0, where sigma is the sum of divisors function.

Offset 1, canonical program `A361024.P7432656464654402567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361023, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361024 (n : ℕ) : ℤ :=
  A361024.P7432656464654402567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361023, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361122.P3369539810080432684

`Δ[A053767(n)]²%3`
-/

namespace A361122.P3369539810080432684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) 3

end

end A361122.P3369539810080432684

noncomputable section

/-- A361122: 0 if n-th composite number A002808(n) is divisible by 3, otherwise 1.

Offset 1, canonical program `A361122.P3369539810080432684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361122 (n : ℕ) : ℤ :=
  A361122.P3369539810080432684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361122.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A361468.P13798965541341440440

`A249670(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361468.P13798965541341440440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249670 (A003961 (n + 1)).toNat

end

end A361468.P13798965541341440440

noncomputable section

/-- A361468: a(n) = A249670(A003961(n)).

Offset 1, canonical program `A361468.P13798965541341440440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361468 (n : ℕ) : ℤ :=
  A361468.P13798965541341440440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361469.P8533097627306347180

`A001222(A249670(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361469.P8533097627306347180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A249670 (A003961 (n + 1)).toNat).toNat

end

end A361469.P8533097627306347180

noncomputable section

/-- A361469: a(n) = bigomega(A249670(A003961(n))).

Offset 1, canonical program `A361469.P8533097627306347180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361469 (n : ℕ) : ℤ :=
  A361469.P8533097627306347180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362831.P18331278576335527605

`col(A007590(n+2)%A076973(n+1))`
-/

namespace A362831.P18331278576335527605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Int.tmod (A007590 (n + 2)) (A076973 (n + 1))).toNat

end

end A362831.P18331278576335527605

noncomputable section

/-- A362831: Number of partitions of n into two distinct parts (s,t) such that pi(s) = pi(t).

Offset 1, canonical program `A362831.P18331278576335527605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A362831 (n : ℕ) : ℤ :=
  (A362831.P18331278576335527605.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A362831.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363131.P14795479166980010344

`∑{p}[n+1, gcd(n, #)]-A362613(n+1)`
-/

namespace A363131.P14795479166980010344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) - A362613 (n + 1)

end

end A363131.P14795479166980010344

noncomputable section

/-- A363131: Number of non-co-modes in the prime factorization of n.

Offset 1, canonical program `A363131.P14795479166980010344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363131 (n : ℕ) : ℤ :=
  A363131.P14795479166980010344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363707.P5002782806402989866

`a(n-1)+a(n-2)+A051697(n)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A363707.P5002782806402989866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) + A051697 n

end

end A363707.P5002782806402989866

noncomputable section

/-- A363707: For n >= 2, a(n) = a(n-1) + a(n-2) + A051697(n), a(0)=0, a(1)=1.

Offset 0, canonical program `A363707.P5002782806402989866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363707 (n : ℕ) : ℤ :=
  A363707.P5002782806402989866.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051697, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363707.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A363827.P18391787838722580186

`2^min(A007814(n+1), A102572(n+1))`
-/

namespace A363827.P18391787838722580186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (min (A007814 (n + 1)) (A102572 (n + 1)) : ℤ)

end

end A363827.P18391787838722580186

noncomputable section

/-- A363827: Highest power of 2 dividing n which is <= sqrt(n).

Offset 1, canonical program `A363827.P18391787838722580186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363827 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363827.P18391787838722580186.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363827.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A365499.P13962074422942829472

`A056671(A000188(n+1))*A056671(n+1)`
-/

namespace A365499.P13962074422942829472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A000188 (n + 1)).toNat * A056671 (n + 1)

end

end A365499.P13962074422942829472

noncomputable section

/-- A365499: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 + 1/p^s - 1/p^(4*s)).

Offset 1, canonical program `A365499.P13962074422942829472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365499 (n : ℕ) : ℤ :=
  A365499.P13962074422942829472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365499.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A366370.P2794676469599154442

`A285097(1+A000225(col(n)+1)^(row(n)-col(n)+1))`
-/

namespace A366370.P2794676469599154442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (SequenceMachineLib.roundAway (1 + (A000225 (SequenceMachineLib.triCol n + 1) : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ))).toNat

end

end A366370.P2794676469599154442

noncomputable section

/-- A366370: Square array A(n,k) giving the length of the least significant run of 0-bits in binary expansion of A000225(n)^k, or 0 if A000225(n)^k is a binary repunit.

Offset 1, canonical program `A366370.P2794676469599154442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366370 (n : ℕ) : ℤ :=
  A366370.P2794676469599154442.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366370.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A367624.P11733907382784255420

`val(A123581(2*(1+n)), 2)`
-/

namespace A367624.P11733907382784255420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A123581 (2 * (1 + n))).toNat 2

end

end A367624.P11733907382784255420

noncomputable section

/-- A367624: 2-adic valuation of A123581(2*n).

Offset 1, canonical program `A367624.P11733907382784255420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A367624 (n : ℕ) : ℤ :=
  (A367624.P11733907382784255420.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A367624.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368701.P9028643918638500654

`A353478(A353478(n+4)+A003415(n+1))`
-/

namespace A368701.P9028643918638500654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (A353478 (n + 4) + A003415 (n + 1)).toNat

end

end A368701.P9028643918638500654

noncomputable section

/-- A368701: a(n) = 1 if n satisfies the arithmetic differential equation 2n" - n' - 4 = 0, otherwise 0. Cf. A003415.

Offset 1, canonical program `A368701.P9028643918638500654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368701 (n : ℕ) : ℤ :=
  A368701.P9028643918638500654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368701.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A369048.P16103584764765709641

`ceil(A168036(n)/A003878(n))`
-/

namespace A369048.P16103584764765709641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168036 n : ℚ) / (A003878 n : ℚ)⌉

end

end A369048.P16103584764765709641

noncomputable section

/-- A369048: a(n) = 1 if the arithmetic derivative of n is greater than n, otherwise 0.

Offset 0, canonical program `A369048.P16103584764765709641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369048 (n : ℕ) : ℤ :=
  A369048.P16103584764765709641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369048.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A370114.P9435787118305735092

`record[A369964(n)]`
-/

namespace A370114.P9435787118305735092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370114.P9435787118305735092

noncomputable section

/-- A370114: Numbers k for which A276086(A003415(k)) is a multiple of k, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

Offset 1, canonical program `A370114.P9435787118305735092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A370114 (n : ℕ) : ℤ :=
  A370114.P9435787118305735092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A370114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370120.P10828013530536882922

`A003415(n)-A276085(A369964(n))`
-/

namespace A370120.P10828013530536882922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n - A276085 (A369964 n).toNat

end

end A370120.P10828013530536882922

noncomputable section

/-- A370120: a(n) = A276085(A370117(n)), where A370117(n) is the denominator of n/A276086(A003415(n)), A003415 is the arithmetic derivative, A276086 is the primorial base exp-function, and A276085 is its inverse, the primorial base log-function.

Offset 0, canonical program `A370120.P10828013530536882922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A370120 (n : ℕ) : ℤ :=
  A370120.P10828013530536882922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A370120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370494.P10899196163276954018

`A002378(A030059(n+1)-1)`
-/

namespace A370494.P10899196163276954018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A030059 (n + 1) - 1).toNat

end

end A370494.P10899196163276954018

noncomputable section

/-- A370494: Oblong numbers of the form (k-1)*k where k is the product of an odd number of distinct primes.

Offset 1, canonical program `A370494.P10899196163276954018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370494 (n : ℕ) : ℤ :=
  A370494.P10899196163276954018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370494.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370597.P9213446760397274824

`record[root(2*(n+1), A378887(n+1))]`
-/

namespace A370597.P9213446760397274824
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℝ) ^ (1 / (A378887 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370597.P9213446760397274824

noncomputable section

/-- A370597: Even numbers k such that gcd(k, A007814(k)) = 1.

Offset 1, canonical program `A370597.P9213446760397274824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A370597 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370597.P9213446760397274824.a (n - 1))

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

/-! ## A371907.P13863929953614005785

`A357215(n+1)-A371906(n+1)`
-/

namespace A371907.P13863929953614005785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357215 (n + 1) - A371906 (n + 1)

end

end A371907.P13863929953614005785

noncomputable section

/-- A371907: a(n) = sum of 2^(k-1) such that floor(n/prime(k)) is even.

Offset 1, canonical program `A371907.P13863929953614005785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371907 (n : ℕ) : ℤ :=
  A371907.P13863929953614005785.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371907.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372380.P6140724310008324875

`∑{d}[1+n, A359473(#)]`
-/

namespace A372380.P6140724310008324875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359473 d

end

end A372380.P6140724310008324875

noncomputable section

/-- A372380: The number of divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A372380.P6140724310008324875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372380 (n : ℕ) : ℤ :=
  A372380.P6140724310008324875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372468.P1330154070991715833

`A000005(A036537(n+1))`
-/

namespace A372468.P1330154070991715833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036537 (n + 1)).toNat

end

end A372468.P1330154070991715833

noncomputable section

/-- A372468: The number of divisors of the numbers whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372468.P1330154070991715833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372468 (n : ℕ) : ℤ :=
  A372468.P1330154070991715833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372468.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A372567.P13528077420289210032

`filter[A372566(n+1), A324908(#)]`
-/

namespace A372567.P13528077420289210032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A372567.P13528077420289210032

noncomputable section

/-- A372567: Odd numbers k such that k, sigma(k) and A003961(k) have a common divisor larger than 1, where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372567.P13528077420289210032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A372567 (n : ℕ) : ℤ :=
  A372567.P13528077420289210032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A372567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372690.P6818816879152483449

`A036537(record[n/Δ[A036537(n+1)]]+1)`
-/

namespace A372690.P6818816879152483449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A372690.P6818816879152483449

noncomputable section

/-- A372690: Numbers k such that k and k+1 are both numbers whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372690.P6818816879152483449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6469 terms. -/
def A372690 (n : ℕ) : ℤ :=
  A372690.P6818816879152483449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6469 terms. -/
def A372690.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373137.P12052186236849325634

`A253513(A372576(1+n))`
-/

namespace A373137.P12052186236849325634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 (A372576 (1 + n)).toNat

end

end A373137.P12052186236849325634

noncomputable section

/-- A373137: a(n) = 1 if A276085(n) is a multiple of 8, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373137.P12052186236849325634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373137 (n : ℕ) : ℤ :=
  A373137.P12052186236849325634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373139.P12189043771799804340

`a(A372576(n+1)%5)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A373139.P12189043771799804340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (Int.tmod (A372576 (n + 1)) 5).toNat

end

end A373139.P12189043771799804340

noncomputable section

/-- A373139: a(n) = 1 if A276085(n) is a multiple of 5, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373139.P12189043771799804340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373139 (n : ℕ) : ℤ :=
  (A373139.P12189043771799804340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373139.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373255.P708469919064261608

`lt[0, A373253(n)]`
-/

namespace A373255.P708469919064261608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A373255.P708469919064261608

noncomputable section

/-- A373255: Numbers k for which A003415(k) == +1 (mod 3), where A003415 is the arithmetic derivative.

Offset 1, canonical program `A373255.P708469919064261608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373255 (n : ℕ) : ℤ :=
  (A373255.P708469919064261608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373261.P9001198650770506129

`lt[0, A373153(n+1)]+1`
-/

namespace A373261.P9001198650770506129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A373261.P9001198650770506129

noncomputable section

/-- A373261: Numbers k for which A276085(k) == +1 (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373261.P9001198650770506129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373261 (n : ℕ) : ℤ :=
  (A373261.P9001198650770506129.a (n - 1) : ℤ)

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

/-! ## A373367.P11671728222294017214

`gcd(A373145(n+1), A373362(n+1))`
-/

namespace A373367.P11671728222294017214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A373145 (n + 1)) (A373362 (n + 1))

end

end A373367.P11671728222294017214

noncomputable section

/-- A373367: a(n) is the greatest common divisor of A001414(n), A003415(n), and A276085(n).

Offset 1, canonical program `A373367.P11671728222294017214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373145, A373362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373367 (n : ℕ) : ℤ :=
  (A373367.P11671728222294017214.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373145, A373362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373474.P16106440629480878009

`A369658(1+n)`
-/

namespace A373474.P16106440629480878009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 (1 + n)

end

end A373474.P16106440629480878009

noncomputable section

/-- A373474: a(n) = 1 if A001414(n) and A083345(n) are both multiples of 3, otherwise 0, where A001414 is fully additive with a(p) = p, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

Offset 1, canonical program `A373474.P16106440629480878009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373474 (n : ℕ) : ℤ :=
  A373474.P16106440629480878009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373477.P12510737956601807680

`4%gcd(3, A373364(n+1))`
-/

namespace A373477.P12510737956601807680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 % Int.gcd 3 (A373364 (n + 1))

end

end A373477.P12510737956601807680

noncomputable section

/-- A373477: a(n) = 1 if A001414(n) and A003415(n) are both multiples of 3, otherwise 0, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373477.P12510737956601807680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373477 (n : ℕ) : ℤ :=
  (A373477.P12510737956601807680.a (n - 1) : ℤ)

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

/-! ## A373486.P4560497335640009081

`C(A373145(n+1), A003415(n+1))`
-/

namespace A373486.P4560497335640009081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373145 (n + 1)).toNat (A003415 (n + 1)).toNat

end

end A373486.P4560497335640009081

noncomputable section

/-- A373486: a(n) = 1 if A276085(n) is a multiple of A003415(n), otherwise 0, where A003415 is the arithmetic derivative and A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A373486.P4560497335640009081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373486 (n : ℕ) : ℤ :=
  (A373486.P4560497335640009081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373493.P8638053645044117825

`A079978(A373378(1+n))`
-/

namespace A373493.P8638053645044117825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373378 (1 + n)).toNat

end

end A373493.P8638053645044117825

noncomputable section

/-- A373493: a(n) = 1 if A059975(n) and A003415(n) are both multiples of 3, otherwise 0, where A059975 is fully additive with a(p) = p-1, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373493.P8638053645044117825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373493 (n : ℕ) : ℤ :=
  A373493.P8638053645044117825.a (n - 1)

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

/-! ## A373830.P15567331108271261023

`A079978(A373605(n)²)`
-/

namespace A373830.P15567331108271261023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373605 n ^ 2).toNat

end

end A373830.P15567331108271261023

noncomputable section

/-- A373830: a(n) = 1 if the primorial base representation of n has alternating digit sum that is a multiple of 3, otherwise 0.

Offset 0, canonical program `A373830.P15567331108271261023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373830 (n : ℕ) : ℤ :=
  A373830.P15567331108271261023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373836.P9775404234224644830

`A079978(A373835(n+1))`
-/

namespace A373836.P9775404234224644830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373835 (n + 1)).toNat

end

end A373836.P9775404234224644830

noncomputable section

/-- A373836: a(n) = 1 if bigomega(n) and A276085(n) are both multiples of 3, otherwise 0, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373836.P9775404234224644830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373836 (n : ℕ) : ℤ :=
  A373836.P9775404234224644830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373836.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A373843.P4252622682383088569

`gcd(n+1, A373842(n+1))`
-/

namespace A373843.P4252622682383088569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A373842 (n + 1))

end

end A373843.P4252622682383088569

noncomputable section

/-- A373843: a(n) = gcd(n, A003415(A276085(n))), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373843.P4252622682383088569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373843 (n : ℕ) : ℤ :=
  (A373843.P4252622682383088569.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373851.P6816487822836138479

`C(A373835(n+1), ∑{e}[n+1, #])`
-/

namespace A373851.P6816487822836138479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373835 (n + 1)).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A373851.P6816487822836138479

noncomputable section

/-- A373851: a(n) = 1 if A276085(n) is a multiple of bigomega(n), otherwise 0, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373851.P6816487822836138479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373851 (n : ℕ) : ℤ :=
  (A373851.P6816487822836138479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374151.P5800413158960378192

`A132090(2^n)`
-/

namespace A374151.P5800413158960378192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (2 ^ n)

end

end A374151.P5800413158960378192

noncomputable section

/-- A374151: The number of prime-indexed primes below 2^n.

Offset 0, canonical program `A374151.P5800413158960378192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374151 (n : ℕ) : ℤ :=
  A374151.P5800413158960378192.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374151.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A374476.P13732577399952410130

`filter[A264828(n+1), A374474(#)]`
-/

namespace A374476.P13732577399952410130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A374476.P13732577399952410130

noncomputable section

/-- A374476: Composite numbers k such that the least prime dividing the sum of divisors of k is equal to the least prime not dividing k.

Offset 1, canonical program `A374476.P13732577399952410130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9399 terms. -/
def A374476 (n : ℕ) : ℤ :=
  A374476.P13732577399952410130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9399 terms. -/
def A374476.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A374913.P2721120150570507897

`A004526(A003628(n+1)%A078426(2*n+5))`
-/

namespace A374913.P2721120150570507897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A003628 (n + 1)) (A078426 (2 * n + 5))).toNat

end

end A374913.P2721120150570507897

noncomputable section

/-- A374913: Numbers k such that k^(k + 1) == k + 1 (mod 2*k + 1).

Offset 1, canonical program `A374913.P2721120150570507897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A374913 (n : ℕ) : ℤ :=
  A374913.P2721120150570507897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A374913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375008.P8177971491124379556

`A046301(A333231(1+n))`
-/

namespace A375008.P8177971491124379556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (A333231 (1 + n)).toNat

end

end A375008.P8177971491124379556

noncomputable section

/-- A375008: Products m of k = 3 consecutive primes p_1..p_k, where only p_1 < m^(1/k).

Offset 1, canonical program `A375008.P8177971491124379556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A375008 (n : ℕ) : ℤ :=
  A375008.P8177971491124379556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A375008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375142.P12759265207830795448

`eq[1, A071625(A003557(n+1))]+1`
-/

namespace A375142.P12759265207830795448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A003557 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375142.P12759265207830795448

noncomputable section

/-- A375142: Numbers whose powerful part (A057521) is a power of a squarefree number that is larger than 1 (A072777).

Offset 1, canonical program `A375142.P12759265207830795448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3618 terms. -/
def A375142 (n : ℕ) : ℤ :=
  (A375142.P12759265207830795448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3618 terms. -/
def A375142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375187.P11918681915645195329

`2^A348841(A028310(n))`
-/

namespace A375187.P11918681915645195329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A348841 (A028310 n).toNat : ℤ)

end

end A375187.P11918681915645195329

noncomputable section

/-- A375187: Number of unitary square divisors of n!.

Offset 0, canonical program `A375187.P11918681915645195329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A375187 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375187.P11918681915645195329.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A375187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375396.P5534209956244180311

`eq[1, A005361(A028234(n+1))]+1`
-/

namespace A375396.P5534209956244180311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A028234 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375396.P5534209956244180311

noncomputable section

/-- A375396: Numbers not divisible by the square of any prime factor except (possibly) the least. Hooklike numbers.

Offset 1, canonical program `A375396.P5534209956244180311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8861 terms. -/
def A375396 (n : ℕ) : ℤ :=
  (A375396.P5534209956244180311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8861 terms. -/
def A375396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376074.P1684381213883420685

`A099777(A355264(1+n))`
-/

namespace A376074.P1684381213883420685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A355264 (1 + n)).toNat

end

end A376074.P1684381213883420685

noncomputable section

/-- A376074: a(n) is the number of distinct right circular cones with integer radius and height having the same volume as a sphere with radius n.

Offset 1, canonical program `A376074.P1684381213883420685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A376074 (n : ℕ) : ℤ :=
  A376074.P1684381213883420685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A376074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376668.P11755089680576327446

`A376663(1+a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A376668.P11755089680576327446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A376663 (1 + a (n - 1)).toNat + a (n - 1)

end

end A376668.P11755089680576327446

noncomputable section

/-- A376668: Positive integers that do not appear more than once in the same row of A036038 (or A078760), i.e., numbers m such that A376663(m) = 1.

Offset 1, canonical program `A376668.P11755089680576327446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A376668 (n : ℕ) : ℤ :=
  A376668.P11755089680576327446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A376668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376887.P3906699374513094039

`∏{e}[1+n, A324655(#)]`
-/

namespace A376887.P3906699374513094039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A324655 (Nat.factorization (f1 n) p)

end

end A376887.P3906699374513094039

noncomputable section

/-- A376887: The number of divisors of n that are products of factors of the form p^(k!) with multiplicities not larger than their multiplicity in n, where p is a prime and k >= 1, when the factorization of n is uniquely done using the factorial-base representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A376887.P3906699374513094039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376887 (n : ℕ) : ℤ :=
  A376887.P3906699374513094039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377019.P2268169833889961243

`eq[A001221(1+n), A376885(n+1)]+1`
-/

namespace A377019.P2268169833889961243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A377019.P2268169833889961243

noncomputable section

/-- A377019: Numbers whose prime factorization has exponents that are all factorial numbers.

Offset 1, canonical program `A377019.P2268169833889961243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8401 terms. -/
def A377019 (n : ℕ) : ℤ :=
  (A377019.P2268169833889961243.a (n - 1) : ℤ)

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

/-! ## A377430.P4255043940740327153

`eq[2, Δ[A112930(n+1)]]+1`
-/

namespace A377430.P4255043940740327153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377430.P4255043940740327153

noncomputable section

/-- A377430: Numbers k such that there is exactly one squarefree number between prime(k)+1 and prime(k+1)-1.

Offset 1, canonical program `A377430.P4255043940740327153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1038 terms. -/
def A377430 (n : ℕ) : ℤ :=
  (A377430.P4255043940740327153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1038 terms. -/
def A377430.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A378229.P3491273019573870571

`∑{d}[n+1, A349388(#)*A378228((n+1)/#)]`
-/

namespace A378229.P3491273019573870571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349388 d * A378228 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378229.P3491273019573870571

noncomputable section

/-- A378229: Dirichlet inverse of A341529, where A341529(n) = sigma(n) * A003961(n), and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378229.P3491273019573870571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378229 (n : ℕ) : ℤ :=
  A378229.P3491273019573870571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378298.P999990269282151152

`floor((A062803(n+1)-n)/2)`
-/

namespace A378298.P999990269282151152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062803 (n + 1) - (n : ℤ) : ℚ) / 2⌋

end

end A378298.P999990269282151152

noncomputable section

/-- A378298: Number of solutions that satisfy the congruence: i^2 == j^2 (mod n) with 1 <= i < j <= n.

Offset 1, canonical program `A378298.P999990269282151152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378298 (n : ℕ) : ℤ :=
  A378298.P999990269282151152.a (n - 1)

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

/-! ## A378905.P1475850440631121097

`A302643(A000040(1+n))`
-/

namespace A378905.P1475850440631121097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (A000040 (1 + n)).toNat

end

end A378905.P1475850440631121097

noncomputable section

/-- A378905: a(n) is the number of odd squarefree semiprimes (A046388) < prime(n).

Offset 1, canonical program `A378905.P1475850440631121097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A378905 (n : ℕ) : ℤ :=
  A378905.P1475850440631121097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A378905.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379478.P7624876134946239236

`A379476(n+1)-A379475(n+1)`
-/

namespace A379478.P7624876134946239236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (n + 1) - A379475 (n + 1)

end

end A379478.P7624876134946239236

noncomputable section

/-- A379478: a(n) = 1 if the greatest common divisor of n, sigma(n) and A003961(n) is 1 and gcd(A003961(n)-2n, A003961(n)-sigma(n)) > 1, otherwise 0.

Offset 1, canonical program `A379478.P7624876134946239236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379475, A379476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379478 (n : ℕ) : ℤ :=
  A379478.P7624876134946239236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379475, A379476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379485.P4633836280962340645

`C(3, lcm(6, A379489(n+1)))`
-/

namespace A379485.P4633836280962340645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Int.lcm 6 (A379489 (n + 1)))

end

end A379485.P4633836280962340645

noncomputable section

/-- A379485: a(n) = 1 if gcd(n,A003961(n))*gcd(sigma(n),A276086(n)) is equal to gcd(n,A276086(n))*gcd(sigma(n),A003961(n)), otherwise 0, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and A276086 is the primorial base exp-function.

Offset 1, canonical program `A379485.P4633836280962340645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379485 (n : ℕ) : ℤ :=
  (A379485.P4633836280962340645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379705.P13999667846666047545

`A242219(1+n)²/(1+n)`
-/

namespace A379705.P13999667846666047545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242219 (1 + n) ^ 2 : ℚ) / (1 + n : ℚ)

end

end A379705.P13999667846666047545

noncomputable section

/-- A379705: a(n) is the least integer k > n such that integers p, q exist for which n, p, k are in arithmetic and n, q, k are in geometric progression.

Offset 1, canonical program `A379705.P13999667846666047545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379705 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379705.P13999667846666047545.a (n - 1))

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

/-! ## A382746.P16210624084711771883

`lt[A007814(n+1)%6-2, 1]+1`
-/

namespace A382746.P16210624084711771883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (n + 1)) 6 - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A382746.P16210624084711771883

noncomputable section

/-- A382746: If k appears, 8*k does not.

Offset 1, canonical program `A382746.P16210624084711771883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8889 terms. -/
def A382746 (n : ℕ) : ℤ :=
  (A382746.P16210624084711771883.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8889 terms. -/
def A382746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382788.P15802914446131148904

`∑{d}[1+n, #*A359473(#)]`
-/

namespace A382788.P15802914446131148904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A359473 d

end

end A382788.P15802914446131148904

noncomputable section

/-- A382788: The sum of divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A382788.P15802914446131148904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382788 (n : ℕ) : ℤ :=
  A382788.P15802914446131148904.a (n - 1)

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

/-! ## A383609.P4805057210729442311

`A167630(C(row(n)+1, 2)+row(n)-col(n))`
-/

namespace A383609.P4805057210729442311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167630 ((Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A383609.P4805057210729442311

noncomputable section

/-- A383609: Triangle read by rows: T(n,k) = T(n-1, k-2) + T(n-1, k-1) + T(n-1, k) for 0 < k < n, T(n,0) = T(n,n) = 1.

Offset 0, canonical program `A383609.P4805057210729442311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167630, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383609 (n : ℕ) : ℤ :=
  A383609.P4805057210729442311.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167630, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383609.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A383960.P12625858686405319927

`∑{e}[1+n, A286324(#)]`
-/

namespace A383960.P12625858686405319927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A286324 (Nat.factorization (f1 n) p)

end

end A383960.P12625858686405319927

noncomputable section

/-- A383960: The number of prime powers p^e having the property that e is an infinitary divisor of the p-adic valuation of n.

Offset 1, canonical program `A383960.P12625858686405319927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383960 (n : ℕ) : ℤ :=
  A383960.P12625858686405319927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385592.P512228778701001309

`comp[∑[A211261(n+1)]]-n`
-/

namespace A385592.P512228778701001309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211261 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A385592.P512228778701001309

noncomputable section

/-- A385592: Values of u in the quartets (2,u,v,w); i.e., values of u for solutions to 2*(2+u) = v*(v+w), in positive integers, with and v>m, sorted by nondecreasing values of u; see Comments.

Offset 1, canonical program `A385592.P512228778701001309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385592 (n : ℕ) : ℤ :=
  A385592.P512228778701001309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385848.P8938428652153350893

`comp[A228367(n+1)+1+n]+1`
-/

namespace A385848.P8938428652153350893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228367 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A385848.P8938428652153350893

noncomputable section

/-- A385848: Numbers not of the form 2^m*k + m + 1, for integers m, k >= 1.

Offset 1, canonical program `A385848.P8938428652153350893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1508 terms. -/
def A385848 (n : ℕ) : ℤ :=
  (A385848.P8938428652153350893.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1508 terms. -/
def A385848.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A386799.P10044724187314136796

`eq[1, gcd(3, A295878(n+1))]+1`
-/

namespace A386799.P10044724187314136796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A295878 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A386799.P10044724187314136796

noncomputable section

/-- A386799: Numbers without an exponent 3 in their prime factorization.

Offset 1, canonical program `A386799.P10044724187314136796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386799 (n : ℕ) : ℤ :=
  (A386799.P10044724187314136796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387216.P8636742261827410665

`lt[1, A373591(1+n)]+1`
-/

namespace A387216.P8636742261827410665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373591 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387216.P8636742261827410665

noncomputable section

/-- A387216: Numbers that have at least two prime factors (counting multiplicity) congruent to 1 mod 3.

Offset 1, canonical program `A387216.P8636742261827410665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7923 terms. -/
def A387216 (n : ℕ) : ℤ :=
  (A387216.P8636742261827410665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7923 terms. -/
def A387216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387254.P610551468953722195

`filter[A002808(1+n), A051904(#)]²`
-/

namespace A387254.P610551468953722195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051904 (f1 j).toNat = 1) n) ^ 2

end

end A387254.P610551468953722195

noncomputable section

/-- A387254: Squares of numbers that are neither prime powers nor powerful.

Offset 1, canonical program `A387254.P610551468953722195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387254 (n : ℕ) : ℤ :=
  A387254.P610551468953722195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387349.P8457853871164443617

`∪[A007064(n+1), A380804(n+1)]`
-/

namespace A387349.P8457853871164443617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387349.P8457853871164443617

noncomputable section

/-- A387349: Positions of 0's in A387348.

Offset 1, canonical program `A387349.P8457853871164443617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387349 (n : ℕ) : ℤ :=
  (A387349.P8457853871164443617.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388280.P3456588769958199962

`eq[0, A388281(n+1)]+1`
-/

namespace A388280.P3456588769958199962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A388280.P3456588769958199962

noncomputable section

/-- A388280: Numbers k for which the sum of k and sigma(k)-k does not generate any carries when done in the primorial base (A049345).

Offset 1, canonical program `A388280.P3456588769958199962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A388280 (n : ℕ) : ℤ :=
  (A388280.P3456588769958199962.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A388280.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389065.P13740932971405314391

`filter[A002808(1+n), A051904(#)]`
-/

namespace A389065.P13740932971405314391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051904 (f1 j).toNat = 1) n)

end

end A389065.P13740932971405314391

noncomputable section

/-- A389065: Numbers that are neither prime powers nor powerful.

Offset 1, canonical program `A389065.P13740932971405314391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389065 (n : ℕ) : ℤ :=
  A389065.P13740932971405314391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389065.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389497.P15007142019661698676

`eq[1, A010052(A005361(1+n))]+1`
-/

namespace A389497.P15007142019661698676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A005361 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A389497.P15007142019661698676

noncomputable section

/-- A389497: Numbers whose number of powerful divisors is a square.

Offset 1, canonical program `A389497.P15007142019661698676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389497 (n : ℕ) : ℤ :=
  (A389497.P15007142019661698676.a (n - 1) : ℤ)

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

/-! ## A390440.P6173635447243039778

`eq[1, A086436(6+A005361(n+1))]+1`
-/

namespace A390440.P6173635447243039778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (6 + A005361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390440.P6173635447243039778

noncomputable section

/-- A390440: Exponentially 5-rough numbers: numbers whose prime factorization exponents are all coprime to 6.

Offset 1, canonical program `A390440.P6173635447243039778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390440 (n : ℕ) : ℤ :=
  (A390440.P6173635447243039778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390555.P16369205481321223814

`∏{e}[1+n, A099777(#)]`
-/

namespace A390555.P16369205481321223814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A099777 (Nat.factorization (f1 n) p)

end

end A390555.P16369205481321223814

noncomputable section

/-- A390555: The number of exponential divisors of n^2.

Offset 1, canonical program `A390555.P16369205481321223814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390555 (n : ℕ) : ℤ :=
  A390555.P16369205481321223814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390555.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391800.P14605006157481767480

`A000040(A391797(n+1))`
-/

namespace A391800.P14605006157481767480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391797 (n + 1)).toNat

end

end A391800.P14605006157481767480

noncomputable section

/-- A391800: Primes indexed by A391797.

Offset 1, canonical program `A391800.P14605006157481767480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391797, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391800 (n : ℕ) : ℤ :=
  A391800.P14605006157481767480.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391797, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391802.P17174835192210781463

`A000040(A391799(n+1))`
-/

namespace A391802.P17174835192210781463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391799 (n + 1)).toNat

end

end A391802.P17174835192210781463

noncomputable section

/-- A391802: Primes indexed by A391799.

Offset 1, canonical program `A391802.P17174835192210781463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391802 (n : ℕ) : ℤ :=
  A391802.P17174835192210781463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391862.P7954269909113733652

`eq[1, A373361(1+n)]+1`
-/

namespace A391862.P7954269909113733652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373361 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A391862.P7954269909113733652

noncomputable section

/-- A391862: Numbers k that are coprime to A276085(k), where A276085 is the primorial base log-function.

Offset 1, canonical program `A391862.P7954269909113733652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391862 (n : ℕ) : ℤ :=
  (A391862.P7954269909113733652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391927.P5320938749559707016

`lt[n, A373842(n+1)]+1`
-/

namespace A391927.P5320938749559707016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391927.P5320938749559707016

noncomputable section

/-- A391927: Numbers k for which A373842(k) >= k, where A373842 is the arithmetic derivative of the primorial base log-function.

Offset 1, canonical program `A391927.P5320938749559707016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391927 (n : ℕ) : ℤ :=
  (A391927.P5320938749559707016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391927.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392450.P8569133511518808190

`∏{e}[1+n, A056671(#)]`
-/

namespace A392450.P8569133511518808190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A056671 (Nat.factorization (f1 n) p)

end

end A392450.P8569133511518808190

noncomputable section

/-- A392450: The number of exponential unitary (or e-unitary) divisors of n that are exponentially squarefree numbers (A209061).

Offset 1, canonical program `A392450.P8569133511518808190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392450 (n : ℕ) : ℤ :=
  A392450.P8569133511518808190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392450.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392605.P11942273638687541516

`lt[A327860(n)², A027693(n)]`
-/

namespace A392605.P11942273638687541516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392605.P11942273638687541516

noncomputable section

/-- A392605: Numbers k such that A327860(k) <= k, where A327860 is the arithmetic derivative of the primorial base exp-function.

Offset 1, canonical program `A392605.P11942273638687541516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A392605 (n : ℕ) : ℤ :=
  (A392605.P11942273638687541516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A392605.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A393045.P1074575809197221546

`eq[2, A393041(n+2)]+2`
-/

namespace A393045.P1074575809197221546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393041 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A393045.P1074575809197221546

noncomputable section

/-- A393045: Numbers such that the least prime not dividing their arithmetic derivative is 5.

Offset 1, canonical program `A393045.P1074575809197221546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1770 terms. -/
def A393045 (n : ℕ) : ℤ :=
  (A393045.P1074575809197221546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1770 terms. -/
def A393045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393067.P2703239075443570268

`char[lt[A327859(n), n+1]-1]`
-/

namespace A393067.P2703239075443570268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A393067.P2703239075443570268

noncomputable section

/-- A393067: a(n) = 1 if A276086(A003415(n)) <= n, otherwise 0, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

Offset 1, canonical program `A393067.P2703239075443570268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A393067 (n : ℕ) : ℤ :=
  (A393067.P2703239075443570268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A393067.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A394433.P11188259402985535920

`eq[2, A073811(1+n)]+1`
-/

namespace A394433.P11188259402985535920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073811 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A394433.P11188259402985535920

noncomputable section

/-- A394433: Numbers k such that gcd(k, phi(k)) is prime.

Offset 1, canonical program `A394433.P11188259402985535920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4568 terms. -/
def A394433 (n : ℕ) : ℤ :=
  (A394433.P11188259402985535920.a (n - 1) : ℤ)

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

/-! ## A396521.P1047001817467315688

`lt[3, A200810(A035004(n+2))]+1`
-/

namespace A396521.P1047001817467315688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200810 (A035004 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A396521.P1047001817467315688

noncomputable section

/-- A396521: Positions of terms > 3 in A200811.

Offset 1, canonical program `A396521.P1047001817467315688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 953 terms. -/
def A396521 (n : ℕ) : ℤ :=
  (A396521.P1047001817467315688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 953 terms. -/
def A396521.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A399374.P18201469211712352783

`A276088(A003415(n))`
-/

namespace A399374.P18201469211712352783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (A003415 n).toNat

end

end A399374.P18201469211712352783

noncomputable section

/-- A399374: For n >= 2, the least significant nonzero digit in primorial base representation of n' (the arithmetic derivative of n), with a(0) = a(1) = 0 by convention.

Offset 0, canonical program `A399374.P18201469211712352783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399374 (n : ℕ) : ℤ :=
  A399374.P18201469211712352783.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399374.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A399831.P4033865291944484204

`A000005(A003557(n+1)*A056554(n+1))`
-/

namespace A399831.P4033865291944484204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1) * A056554 (n + 1)).toNat

end

end A399831.P4033865291944484204

noncomputable section

/-- A399831: The number of divisors d of n such that gcud(d, n/d) is an exponentially odd number (A268335), where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399831.P4033865291944484204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399831 (n : ℕ) : ℤ :=
  A399831.P4033865291944484204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399832.P9867324930414141992

`A001227(n+1)*A286324(2^val(n+1, 2))`
-/

namespace A399832.P9867324930414141992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A286324 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A399832.P9867324930414141992

noncomputable section

/-- A399832: The number of divisors d of n such that gcud(d, n/d) is odd, where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399832.P9867324930414141992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399832 (n : ℕ) : ℤ :=
  A399832.P9867324930414141992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399832.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A400261.P9190088066035420817

`A071178(A327859(n))`
-/

namespace A400261.P9190088066035420817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A327859 n).toNat

end

end A400261.P9190088066035420817

noncomputable section

/-- A400261: The most significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

Offset 0, canonical program `A400261.P9190088066035420817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400261 (n : ℕ) : ℤ :=
  A400261.P9190088066035420817.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400261.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A400522.P3523999780646105483

`A007814(A036537(n+1))`
-/

namespace A400522.P3523999780646105483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A036537 (n + 1)).toNat

end

end A400522.P3523999780646105483

noncomputable section

/-- A400522: The exponent of the highest power of 2 dividing the n-th number whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A400522.P3523999780646105483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400522 (n : ℕ) : ℤ :=
  A400522.P3523999780646105483.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400522.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A400722.P4243337347417651789

`A366771(2*(n+1))`
-/

namespace A400722.P4243337347417651789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366771 (2 * (n + 1))

end

end A400722.P4243337347417651789

noncomputable section

/-- A400722: Number of divisors of (4^n - 1)/3.

Offset 1, canonical program `A400722.P4243337347417651789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A400722 (n : ℕ) : ℤ :=
  A400722.P4243337347417651789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A400722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400872.P1320321163544664813

`∏{e}[1+n, A007425(#)]`
-/

namespace A400872.P1320321163544664813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007425 (Nat.factorization (f1 n) p)

end

end A400872.P1320321163544664813

noncomputable section

/-- A400872: The total number of exponential divisors of the exponential divisors of n.

Offset 1, canonical program `A400872.P1320321163544664813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400872 (n : ℕ) : ℤ :=
  A400872.P1320321163544664813.a (n - 1)

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

/-! ## A401232.P7500020941983931709

`lt[A401066(n+1), 1]+1`
-/

namespace A401232.P7500020941983931709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401066 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A401232.P7500020941983931709

noncomputable section

/-- A401232: Numbers k such that A006530(k) divides A276085(k), where A006530(k) is the largest prime dividing k, 1 if k is 1, and A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A401232.P7500020941983931709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A401232 (n : ℕ) : ℤ :=
  (A401232.P7500020941983931709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A401232.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A401404.P11769500404623702126

`A048989(2*(n+1))/2`
-/

namespace A401404.P11769500404623702126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048989 (2 * (n + 1)) : ℚ) / 2

end

end A401404.P11769500404623702126

noncomputable section

/-- A401404: Numbers m such that pi(2*m) is prime, where pi is A000720.

Offset 1, canonical program `A401404.P11769500404623702126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A401404 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401404.P11769500404623702126.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A401404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401468.P2834647900088656958

`∑[A046801(n+1)]`
-/

namespace A401468.P2834647900088656958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401468.P2834647900088656958

noncomputable section

/-- A401468: a(n) = Sum_{k=1..n} A046801(k).

Offset 1, canonical program `A401468.P2834647900088656958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1212 terms. -/
def A401468 (n : ℕ) : ℤ :=
  A401468.P2834647900088656958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1212 terms. -/
def A401468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401625.P497457721285298481

`A005599(A004514(n))`
-/

namespace A401625.P497457721285298481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (A004514 n).toNat

end

end A401625.P497457721285298481

noncomputable section

/-- A401625: Image of 0 under repeated application of the map k -> (3k, 3k+2, 3k, 3k+2).

Offset 0, canonical program `A401625.P497457721285298481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5120 terms. -/
def A401625 (n : ℕ) : ℤ :=
  A401625.P497457721285298481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5120 terms. -/
def A401625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401710.P3001725798875368537

`A401709(n+1)/A009194(n+1)`
-/

namespace A401710.P3001725798875368537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401709 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A401710.P3001725798875368537

noncomputable section

/-- A401710: a(n) = A017665(n) / A401375(n), where A017665(n) = sigma(n)/gcd(n,sigma(n)), A401375(n) is the largest divisor of sigma(n) coprime with n, and sigma is the sum of divisors function.

Offset 1, canonical program `A401710.P3001725798875368537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401710 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401710.P3001725798875368537.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401710.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401717.P2595911180210568003

`A355447(n+1)-A401716(n+1)`
-/

namespace A401717.P2595911180210568003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1) - A401716 (n + 1)

end

end A401717.P2595911180210568003

noncomputable section

/-- A401717: a(n) = 1 if A003557(n) > A053669(n) and n is neither squarefree nor prime power, otherwise 0, where A003557(n) is n divided by its squarefree kernel, and A053669(n) is the smallest prime not dividing n.

Offset 1, canonical program `A401717.P2595911180210568003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355447, A401716, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A401717 (n : ℕ) : ℤ :=
  A401717.P2595911180210568003.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355447, A401716, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A401717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401724.P1629585607848376943

`A276085(n+2)%A342001(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401724.P1629585607848376943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 2)) (A342001 (n + 2))

end

end A401724.P1629585607848376943

noncomputable section

/-- A401724: a(n) = A276085(n) mod A342001(n), where A342001(n) = A003415(n)/A003557(n), and A276085 is fully additive with a(p) = p#/p.

Offset 2, canonical program `A401724.P1629585607848376943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401724 (n : ℕ) : ℤ :=
  A401724.P1629585607848376943.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401921.P16439554682903368677

`fo[A342001(n+1)]+1`
-/

namespace A401921.P16439554682903368677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A401921.P16439554682903368677

noncomputable section

/-- A401921: Position of the first occurrence of n in A342001.

Offset 0, canonical program `A401921.P16439554682903368677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A401921 (n : ℕ) : ℤ :=
  (A401921.P16439554682903368677.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A401921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A402244.P15937437709523457238

`A008835(n+1)*A056554(n+1)`
-/

namespace A402244.P15937437709523457238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A056554 (n + 1)

end

end A402244.P15937437709523457238

noncomputable section

/-- A402244: Largest divisor of n that is a term in A252895.

Offset 1, canonical program `A402244.P15937437709523457238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A402244 (n : ℕ) : ℤ :=
  A402244.P15937437709523457238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A402244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A402245.P13887350206260039043

`A007814(A122132(n+1))`
-/

namespace A402245.P13887350206260039043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A122132 (n + 1)).toNat

end

end A402245.P13887350206260039043

noncomputable section

/-- A402245: Exponent of highest power of 2 dividing A122132(n).

Offset 1, canonical program `A402245.P13887350206260039043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A402245 (n : ℕ) : ℤ :=
  A402245.P13887350206260039043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A402245.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355942.P8093612167510493976

`lt[(n+1)%A326042(n+1), 1]+1`
-/

namespace A355942.P8093612167510493976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A326042 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A355942.P8093612167510493976

noncomputable section

/-- A355942: Numbers k such that k is a multiple of A326042(k).

Offset 1, canonical program `A355942.P8093612167510493976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A355942 (n : ℕ) : ℤ :=
  (A355942.P8093612167510493976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A355942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356171.P7814798244112618989

`eq[(-1)^n, A330749(n+1)]+1`
-/

namespace A356171.P7814798244112618989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330749 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A356171.P7814798244112618989

noncomputable section

/-- A356171: Odd numbers that are not divisible by two consecutive prime numbers.

Offset 1, canonical program `A356171.P7814798244112618989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356171 (n : ℕ) : ℤ :=
  (A356171.P7814798244112618989.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356733.P2832013835477743224

`A287170(n+1)-A287170(A330749(n+1))`
-/

namespace A356733.P2832013835477743224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1) - A287170 (A330749 (n + 1)).toNat

end

end A356733.P2832013835477743224

noncomputable section

/-- A356733: Number of neighborless parts in the integer partition with Heinz number n.

Offset 1, canonical program `A356733.P2832013835477743224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356733 (n : ℕ) : ℤ :=
  A356733.P2832013835477743224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356733.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358217.P15146793602575622930

`A001222(A319627(n+1))`
-/

namespace A358217.P15146793602575622930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A319627 (n + 1)).toNat

end

end A358217.P15146793602575622930

noncomputable section

/-- A358217: Number of prime factors (with multiplicity) in A319627(n).

Offset 1, canonical program `A358217.P15146793602575622930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358217 (n : ℕ) : ℤ :=
  A358217.P15146793602575622930.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358217.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358223.P17799265343679974090

`∑{d}[n+1, A181819(#)]`
-/

namespace A358223.P17799265343679974090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A181819 d

end

end A358223.P17799265343679974090

noncomputable section

/-- A358223: Inverse Möbius transform of A181819, prime shadow function.

Offset 1, canonical program `A358223.P17799265343679974090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358223 (n : ℕ) : ℤ :=
  A358223.P17799265343679974090.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358223.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A359178.P4890036518726315515

`eq[1, A362613(1+n)]+1`
-/

namespace A359178.P4890036518726315515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362613 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359178.P4890036518726315515

noncomputable section

/-- A359178: Numbers with a unique smallest prime exponent.

Offset 1, canonical program `A359178.P4890036518726315515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3086 terms. -/
def A359178 (n : ℕ) : ℤ :=
  (A359178.P4890036518726315515.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3086 terms. -/
def A359178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359466.P10474254180579388009

`A353670(A181819(n+1))`
-/

namespace A359466.P10474254180579388009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (A181819 (n + 1)).toNat

end

end A359466.P10474254180579388009

noncomputable section

/-- A359466: a(n) = 1 if n has exactly one non-unitary prime factor, otherwise 0.

Offset 1, canonical program `A359466.P10474254180579388009`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359466 (n : ℕ) : ℤ :=
  A359466.P10474254180579388009.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359466.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A363734.P5058385992717790514

`A363735(n)-A363421(n)`
-/

namespace A363734.P5058385992717790514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363735 n - A363421 n

end

end A363734.P5058385992717790514

noncomputable section

/-- A363734: a(n) = Sum_{k=0..n} n^divides(k, n), where divides(k, n) = 1 if k divides n, otherwise 0.

Offset 0, canonical program `A363734.P5058385992717790514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363421, A363735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363734 (n : ℕ) : ℤ :=
  A363734.P5058385992717790514.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363421, A363735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363734.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A364061.P6292639420439782775

`record[(n+1)*A010051(A359612(n+2)+1)]+1`
-/

namespace A364061.P6292639420439782775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A359612 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A364061.P6292639420439782775

noncomputable section

/-- A364061: Numbers whose exponent of 2 in their canonical prime factorization is smaller than all the other exponents.

Offset 1, canonical program `A364061.P6292639420439782775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A364061 (n : ℕ) : ℤ :=
  A364061.P6292639420439782775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A364061.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368883.P15220124050998758452

`A061389(A053165(1+n))`
-/

namespace A368883.P15220124050998758452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A053165 (1 + n)).toNat

end

end A368883.P15220124050998758452

noncomputable section

/-- A368883: The number of infinitary divisors of n that are cubefree.

Offset 1, canonical program `A368883.P15220124050998758452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368883 (n : ℕ) : ℤ :=
  A368883.P15220124050998758452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369361.P17233019200793958702

`lt[1, A319627(n+1)]+1`
-/

namespace A369361.P17233019200793958702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A369361.P17233019200793958702

noncomputable section

/-- A369361: Numbers that are not products of primorials.

Offset 1, canonical program `A369361.P17233019200793958702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9917 terms. -/
def A369361 (n : ℕ) : ℤ :=
  (A369361.P17233019200793958702.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9917 terms. -/
def A369361.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A370132.P9937254118189264535

`lt[A328114(n)-1, 2]`
-/

namespace A370132.P9937254118189264535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370132.P9937254118189264535

noncomputable section

/-- A370132: Numbers with no digit larger than 2 in primorial base, A049345.

Offset 1, canonical program `A370132.P9937254118189264535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A370132 (n : ℕ) : ℤ :=
  (A370132.P9937254118189264535.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A370132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370133.P15920512231563652372

`lt[A328114(n), 4]`
-/

namespace A370133.P15920512231563652372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370133.P15920512231563652372

noncomputable section

/-- A370133: Numbers with no digit larger than 3 in primorial base, A049345.

Offset 1, canonical program `A370133.P15920512231563652372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1537 terms. -/
def A370133 (n : ℕ) : ℤ :=
  (A370133.P15920512231563652372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1537 terms. -/
def A370133.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372466.P16049166336239421302

`A051903(A036537(n+1))`
-/

namespace A372466.P16049166336239421302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A036537 (n + 1)).toNat

end

end A372466.P16049166336239421302

noncomputable section

/-- A372466: The maximal exponent in the prime factorization of the numbers whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372466.P16049166336239421302`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372466 (n : ℕ) : ℤ :=
  A372466.P16049166336239421302.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372573.P2071645213526061592

`1-abs(A373153(1+n))`
-/

namespace A372573.P2071645213526061592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A373153 (1 + n)|

end

end A372573.P2071645213526061592

noncomputable section

/-- A372573: a(n) = 1 if A276085(n) is a multiple of 3, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A372573.P2071645213526061592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372573 (n : ℕ) : ℤ :=
  A372573.P2071645213526061592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372573.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373246.P16217908372987962355

`gcd(n+1, A181819(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373246.P16217908372987962355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A181819 (n + 1))

end

end A373246.P16217908372987962355

noncomputable section

/-- A373246: Greatest common divisor of n and its prime shadow: a(n) = gcd(n, A181819(n)).

Offset 1, canonical program `A373246.P16217908372987962355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373246 (n : ℕ) : ℤ :=
  (A373246.P16217908372987962355.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373246.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373247.P347523656248866741

`(n+1)%A181819(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373247.P347523656248866741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A181819 (n + 1))

end

end A373247.P347523656248866741

noncomputable section

/-- A373247: a(n) = n mod A181819(n), where A181819(n) is the prime shadow of n.

Offset 1, canonical program `A373247.P347523656248866741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373247 (n : ℕ) : ℤ :=
  A373247.P347523656248866741.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373247.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373984.P1990840556673078357

`A108951(n+1)-A373158(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373984.P1990840556673078357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) - A373158 (n + 1)

end

end A373984.P1990840556673078357

noncomputable section

/-- A373984: a(n) = A108951(n) - A373158(n), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373984.P1990840556673078357`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373984 (n : ℕ) : ℤ :=
  A373984.P1990840556673078357.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373985.P17399683127926261314

`gcd(A108951(n+1), A373158(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373985.P17399683127926261314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108951 (n + 1)) (A373158 (n + 1))

end

end A373985.P17399683127926261314

noncomputable section

/-- A373985: a(n) = gcd(A108951(n), A373158(n)), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373985.P17399683127926261314`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373985 (n : ℕ) : ℤ :=
  (A373985.P17399683127926261314.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373985.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A374326.P8962171448566803801

`sqrt(A374325(n+1))`
-/

namespace A374326.P8962171448566803801
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374325 (n + 1) : ℝ)

end

end A374326.P8962171448566803801

noncomputable section

/-- A374326: The square root of the maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a square.

Offset 1, canonical program `A374326.P8962171448566803801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374326 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374326.P8962171448566803801.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376645.P39489248175618375

`max(2*A007814(n+1), A375669(n+1))`
-/

namespace A376645.P39489248175618375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (2 * A007814 (n + 1)) (A375669 (n + 1))

end

end A376645.P39489248175618375

noncomputable section

/-- A376645: The maximum exponent in the factorization of n into powers of Gaussian primes.

Offset 1, canonical program `A376645.P39489248175618375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376645 (n : ℕ) : ℤ :=
  A376645.P39489248175618375.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376645.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377850.P14551492886905901967

`A375510(A375779(n+1))`
-/

namespace A377850.P14551492886905901967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375510 (A375779 (n + 1)).toNat

end

end A377850.P14551492886905901967

noncomputable section

/-- A377850: Noll index series of Zernike polynomials converted to Fringe index.

Offset 1, canonical program `A377850.P14551492886905901967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9991 terms. -/
def A377850 (n : ℕ) : ℤ :=
  A377850.P14551492886905901967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9991 terms. -/
def A377850.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A378705.P17190127622921293561

`A381664(A056023(1+n))`
-/

namespace A378705.P17190127622921293561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A056023 (1 + n)).toNat

end

end A378705.P17190127622921293561

noncomputable section

/-- A378705: Inverse permutation to A378200.

Offset 1, canonical program `A378705.P17190127622921293561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378705 (n : ℕ) : ℤ :=
  A378705.P17190127622921293561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A378705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379108.P285787528398136253

`∑{d}[n+1, A000203(#)*A359579((n+1)/#)]`
-/

namespace A379108.P285787528398136253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A359579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379108.P285787528398136253

noncomputable section

/-- A379108: Dirichlet convolution of sigma with A359579.

Offset 1, canonical program `A379108.P285787528398136253`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379108 (n : ℕ) : ℤ :=
  A379108.P285787528398136253.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379108.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A379218.P1688385068240384279

`∑{d}[n+1, #*A359579((n+1)/#)]`
-/

namespace A379218.P1688385068240384279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A359579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379218.P1688385068240384279

noncomputable section

/-- A379218: Möbius transform of A379108.

Offset 1, canonical program `A379218.P1688385068240384279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379218 (n : ℕ) : ℤ :=
  A379218.P1688385068240384279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379218.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A380265.P971434528852180686

`(n+1)/gcd(n+1, ∑[A061395(A181819(n+1))])`
-/

namespace A380265.P971434528852180686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A181819 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A380265.P971434528852180686

noncomputable section

/-- A380265: a(n) is the denominator of the mean value of A051903(k) at the range k = 1..n.

Offset 1, canonical program `A380265.P971434528852180686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380265 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380265.P971434528852180686.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380265.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A381201.P5285966615949982565

`A156061(A181819(n+1)*A328878(n+1))`
-/

namespace A381201.P5285966615949982565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A181819 (n + 1) * A328878 (n + 1)).toNat

end

end A381201.P5285966615949982565

noncomputable section

/-- A381201: a(n) is the product of the elements of the set of bases and exponents in the prime factorization of n.

Offset 1, canonical program `A381201.P5285966615949982565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A381201 (n : ℕ) : ℤ :=
  A381201.P5285966615949982565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A381201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381542.P14309629720636309362

`eq[A051903(n+1), A061395(2*(n+1))]+1`
-/

namespace A381542.P14309629720636309362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A381542.P14309629720636309362

noncomputable section

/-- A381542: Numbers > 1 whose greatest prime index equals their greatest prime multiplicity.

Offset 1, canonical program `A381542.P14309629720636309362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A381542 (n : ℕ) : ℤ :=
  (A381542.P14309629720636309362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A381542.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A383425.P6301247680176130288

`comp[∪[floor((n+1)*ϕ²)-1, A383423(n+1)]]`
-/

namespace A383425.P6301247680176130288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383423 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A383425.P6301247680176130288

noncomputable section

/-- A383425: Indices k such that A003849(k) = 0 and A383422(k) = 1.

Offset 1, canonical program `A383425.P6301247680176130288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383425 (n : ℕ) : ℤ :=
  (A383425.P6301247680176130288.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383425.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387727.P7943591316893590562

`comp[A387728(n+1)-1]+1`
-/

namespace A387727.P7943591316893590562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387728 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387727.P7943591316893590562

noncomputable section

/-- A387727: Numbers k such that the powerful part of the sum of divisors of k (A387726) is greater than or equal to k.

Offset 1, canonical program `A387727.P7943591316893590562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 871 terms. -/
def A387727 (n : ℕ) : ℤ :=
  (A387727.P7943591316893590562.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 871 terms. -/
def A387727.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390126.P4203344648687792492

`∪[A177492(n+1), A177493(n+1)]`
-/

namespace A390126.P4203344648687792492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390126.P4203344648687792492

noncomputable section

/-- A390126: Powers k^m, m = 2..3, of squarefree composite k.

Offset 1, canonical program `A390126.P4203344648687792492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390126 (n : ℕ) : ℤ :=
  (A390126.P4203344648687792492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390126.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390788.P4885482979136990160

`lt[A056139(2*(n+1)), 0]+1`
-/

namespace A390788.P4885482979136990160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056139 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390788.P4885482979136990160

noncomputable section

/-- A390788: Numbers k such that 2*k - (greatest prime < 2*k) < (least prime > 2*k) - 2*k.

Offset 1, canonical program `A390788.P4885482979136990160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390788 (n : ℕ) : ℤ :=
  (A390788.P4885482979136990160.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390789.P6926022290511936465

`A072568(1+n)/2`
-/

namespace A390789.P6926022290511936465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072568 (1 + n) : ℚ) / 2

end

end A390789.P6926022290511936465

noncomputable section

/-- A390789: Numbers k such that 2*k - (greatest prime < 2*k) = (least prime > 2*k) - 2*k.

Offset 1, canonical program `A390789.P6926022290511936465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390789 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390789.P6926022290511936465.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391351.P8606578630690309772

`lt[A056139(3*(n+1)), 1]+1`
-/

namespace A391351.P8606578630690309772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056139 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A391351.P8606578630690309772

noncomputable section

/-- A391351: Numbers k such that 3*k - (greatest prime < 3*k) < (least prime > 3*k) - 3*k.

Offset 1, canonical program `A391351.P8606578630690309772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8965 terms. -/
def A391351 (n : ℕ) : ℤ :=
  (A391351.P8606578630690309772.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8965 terms. -/
def A391351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391353.P10543922163305761280

`lt[8, A056139(n+2*(n+1))]+1`
-/

namespace A391353.P10543922163305761280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056139 (n + 2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391353.P10543922163305761280

noncomputable section

/-- A391353: Numbers k such that 3*k - (greatest prime < 3*k) > (least prime > 3*k) - 3*k.

Offset 1, canonical program `A391353.P10543922163305761280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8964 terms. -/
def A391353 (n : ℕ) : ℤ :=
  (A391353.P10543922163305761280.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8964 terms. -/
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

/-! ## A391946.P10395544534051673053

`A276085(A392598(n+1))`
-/

namespace A391946.P10395544534051673053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A392598 (n + 1)).toNat

end

end A391946.P10395544534051673053

noncomputable section

/-- A391946: a(n) = A276085(n) mod 2310, where A276085 is the primorial base log-function.

Offset 1, canonical program `A391946.P10395544534051673053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, A392598, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391946 (n : ℕ) : ℤ :=
  A391946.P10395544534051673053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, A392598, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391946.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A392865.P3837088784219684153

`(n+1)%A117366(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392865.P3837088784219684153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A117366 (n + 1))

end

end A392865.P3837088784219684153

noncomputable section

/-- A392865: a(n) = n mod A117366(n), where A117366 gives the smallest prime greater than the largest prime dividing n.

Offset 1, canonical program `A392865.P3837088784219684153`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392865 (n : ℕ) : ℤ :=
  A392865.P3837088784219684153.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392865.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392872.P9743280895304921278

`A122111(n+1)%A000040(1+A001222(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392872.P9743280895304921278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122111 (n + 1)) (A000040 (1 + A001222 (n + 1)).toNat)

end

end A392872.P9743280895304921278

noncomputable section

/-- A392872: a(n) = A122111(n) mod prime(1+bigomega(n)).

Offset 1, canonical program `A392872.P9743280895304921278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392872 (n : ℕ) : ℤ :=
  A392872.P9743280895304921278.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392872.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A396895.P7912046450592316273

`A396869(A027883(1+n))`
-/

namespace A396895.P7912046450592316273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396869 (A027883 (1 + n)).toNat

end

end A396895.P7912046450592316273

noncomputable section

/-- A396895: a(n) = 4*p - floor(2*sqrt(p))^2, where p = prime(n).

Offset 1, canonical program `A396895.P7912046450592316273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A396895 (n : ℕ) : ℤ :=
  A396895.P7912046450592316273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A396895.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A400153.P269782748458645869

`A400152(A003415(n))`
-/

namespace A400153.P269782748458645869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400152 (A003415 n).toNat

end

end A400153.P269782748458645869

noncomputable section

/-- A400153: a(0)=a(1)=1, after which a(n) = p^{the most significant digit of n' in primorial base, A049345}, where p is the corresponding radix prime of the most significant digit, and n' stands for the arithmetic derivative of n, A003415(n).

Offset 0, canonical program `A400153.P269782748458645869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400152, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400153 (n : ℕ) : ℤ :=
  A400153.P269782748458645869.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400152, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400153.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A401041.P2622199044534407254

`A182843(n+2)-C(A000720(n+1)+1, 2)`
-/

namespace A401041.P2622199044534407254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182843 (n + 2) - (Nat.choose (A000720 (n + 1) + 1).toNat 2 : ℤ)

end

end A401041.P2622199044534407254

noncomputable section

/-- A401041: a(n) = Sum_{k=4..n, k composite} (pi(lpf(k)) - 1), where lpf(k) = A020639(k) is the least prime factor of k.

Offset 1, canonical program `A401041.P2622199044534407254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182843, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401041 (n : ℕ) : ℤ :=
  A401041.P2622199044534407254.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182843, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401375.P4355950383220751313

`A000203(n+1)/A401709(n+1)`
-/

namespace A401375.P4355950383220751313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A401709 (n + 1) : ℚ)

end

end A401375.P4355950383220751313

noncomputable section

/-- A401375: Largest divisor of sigma(n) coprime with n, where sigma is the sum of divisors function.

Offset 1, canonical program `A401375.P4355950383220751313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401375 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401375.P4355950383220751313.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401927.P17143892616351538426

`A108951(A328571(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401927.P17143892616351538426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A328571 n).toNat

end

end A401927.P17143892616351538426

noncomputable section

/-- A401927: a(n) = A108951(A328571(n)), where A108951 is fully multiplicative with a(p) = p# (A034386), and A328571(n) = A007947(A276086(n)), i.e., the squarefree kernel of the primorial base exp-function.

Offset 0, canonical program `A401927.P17143892616351538426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401927 (n : ℕ) : ℤ :=
  A401927.P17143892616351538426.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A402519.P5662756144460699818

`A073039(n+1)/(n+1)`
-/

namespace A402519.P5662756144460699818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073039 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A402519.P5662756144460699818

noncomputable section

/-- A402519: a(n) = the smallest number k such that k * n is in A025487.

Offset 1, canonical program `A402519.P5662756144460699818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073039, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A402519 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A402519.P5662756144460699818.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073039, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A402519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356749.P7001661797573302836

`A035614(A361989(n+1))`
-/

namespace A356749.P7001661797573302836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 (A361989 (n + 1)).toNat

end

end A356749.P7001661797573302836

noncomputable section

/-- A356749: a(n) is the number of trailing 1's in the dual Zeckendorf representation of n (A104326).

Offset 0, canonical program `A356749.P7001661797573302836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356749 (n : ℕ) : ℤ :=
  A356749.P7001661797573302836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356838.P1755932698928318834

`A020639(A261969(2+n))`
-/

namespace A356838.P1755932698928318834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A261969 (2 + n)).toNat

end

end A356838.P1755932698928318834

noncomputable section

/-- A356838: The smallest of the most common prime factors of n.

Offset 2, canonical program `A356838.P1755932698928318834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A356838 (n : ℕ) : ℤ :=
  A356838.P1755932698928318834.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A356838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356840.P71090366362835746

`A085392(2*A261969(n+2))`
-/

namespace A356840.P71090366362835746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A261969 (n + 2)).toNat

end

end A356840.P71090366362835746

noncomputable section

/-- A356840: Largest most common prime factor of n.

Offset 2, canonical program `A356840.P71090366362835746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A356840 (n : ℕ) : ℤ :=
  A356840.P71090366362835746.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A356840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356862.P5126583695026879254

`eq[1, A001221(A261969(n+1))]+1`
-/

namespace A356862.P5126583695026879254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A261969 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356862.P5126583695026879254

noncomputable section

/-- A356862: Numbers with a unique largest prime exponent.

Offset 1, canonical program `A356862.P5126583695026879254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4889 terms. -/
def A356862 (n : ℕ) : ℤ :=
  (A356862.P5126583695026879254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4889 terms. -/
def A356862.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A362611.P8356585510244448062

`∑{e}[A261969(n+1), #]`
-/

namespace A362611.P8356585510244448062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A362611.P8356585510244448062

noncomputable section

/-- A362611: Number of modes in the prime factorization of n.

Offset 1, canonical program `A362611.P8356585510244448062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362611 (n : ℕ) : ℤ :=
  (A362611.P8356585510244448062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364160.P3150467090921596090

`record[A285109(n+1)/A261969(n+1)]`
-/

namespace A364160.P3150467090921596090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285109 (n + 1) : ℚ) / (A261969 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364160.P3150467090921596090

noncomputable section

/-- A364160: Numbers whose least prime factor has the greatest exponent.

Offset 1, canonical program `A364160.P3150467090921596090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4219 terms. -/
def A364160 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364160.P3150467090921596090.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4219 terms. -/
def A364160.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A374046.P2398993085697687912

`comp[A374047(1+n)]`
-/

namespace A374046.P2398993085697687912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374047 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A374046.P2398993085697687912

noncomputable section

/-- A374046: Numbers k for which A328845(k) is even, where A328845 is the first Fibonacci based variant of arithmetic derivative.

Offset 1, canonical program `A374046.P2398993085697687912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374046 (n : ℕ) : ℤ :=
  (A374046.P2398993085697687912.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375072.P124892896223991445

`∩[A060476(n+1), A382967(n+1)]`
-/

namespace A375072.P124892896223991445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P124892896223991445

noncomputable section

/-- A375072: Biquadratefree numbers (A046100) that are not cubefree (A004709).

Offset 1, canonical program `A375072.P124892896223991445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A375072 (n : ℕ) : ℤ :=
  (A375072.P124892896223991445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A375072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375931.P9740495412486584682

`A261969(n+1)^A051903(n+1)`
-/

namespace A375931.P9740495412486584682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261969 (n + 1) : ℚ) ^ (A051903 (n + 1) : ℤ)

end

end A375931.P9740495412486584682

noncomputable section

/-- A375931: The product of the prime powers in the prime factorization of n that have an exponent that is equal to the maximum exponent in this factorization.

Offset 1, canonical program `A375931.P9740495412486584682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A261969, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375931.P9740495412486584682.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A261969, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376164.P9633293229623041647

`A373415(n+1)+A053797(n+1)`
-/

namespace A376164.P9633293229623041647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373415 (n + 1) + A053797 (n + 1)

end

end A376164.P9633293229623041647

noncomputable section

/-- A376164: Maximum of the n-th maximal run of nonsquarefree numbers (increasing by 1 at a time).

Offset 1, canonical program `A376164.P9633293229623041647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376164 (n : ℕ) : ℤ :=
  A376164.P9633293229623041647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377880.P16509850841699067558

`∪[A000469(n+1), A067259(n+1)]`
-/

namespace A377880.P16509850841699067558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377880.P16509850841699067558

noncomputable section

/-- A377880: Nonprime cubefree numbers.

Offset 1, canonical program `A377880.P16509850841699067558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377880 (n : ℕ) : ℤ :=
  (A377880.P16509850841699067558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378767.P8703849694120063449

`filter[A046099(1+n), A355447(#)]`
-/

namespace A378767.P8703849694120063449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A378767.P8703849694120063449

noncomputable section

/-- A378767: Numbers k that are not prime powers which are divisible by a cube greater than 1.

Offset 1, canonical program `A378767.P8703849694120063449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9962 terms. -/
def A378767 (n : ℕ) : ℤ :=
  A378767.P8703849694120063449.a (n - 1)

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

/-! ## A382423.P17194027125548020755

`A369427(A046100(n+1))`
-/

namespace A382423.P17194027125548020755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (A046100 (n + 1)).toNat

end

end A382423.P17194027125548020755

noncomputable section

/-- A382423: The number of exponents in the prime factorization of n-th biquadratefree number that are equal to 2.

Offset 1, canonical program `A382423.P17194027125548020755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A369427, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382423 (n : ℕ) : ℤ :=
  A382423.P17194027125548020755.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A369427, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382423.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382726.P822100192108141517

`∑[A382720(n)]`
-/

namespace A382726.P822100192108141517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382726.P822100192108141517

noncomputable section

/-- A382726: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 7.

Offset 0, canonical program `A382726.P822100192108141517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382726 (n : ℕ) : ℤ :=
  A382726.P822100192108141517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382902.P15410201200105396021

`A007948(A046100(n+1))`
-/

namespace A382902.P15410201200105396021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A046100 (n + 1)).toNat

end

end A382902.P15410201200105396021

noncomputable section

/-- A382902: The largest cubefree divisor of the n-th biquadratefree number.

Offset 1, canonical program `A382902.P15410201200105396021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382902 (n : ℕ) : ℤ :=
  A382902.P15410201200105396021.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382904.P15714576197998800300

`A007947(A046100(n+1))`
-/

namespace A382904.P15714576197998800300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A046100 (n + 1)).toNat

end

end A382904.P15714576197998800300

noncomputable section

/-- A382904: The squarefree kernel of the n-th biquadratefree number.

Offset 1, canonical program `A382904.P15714576197998800300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382904 (n : ℕ) : ℤ :=
  A382904.P15714576197998800300.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382905.P13634783915817260642

`A055231(A046100(n+1))`
-/

namespace A382905.P13634783915817260642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A046100 (n + 1)).toNat

end

end A382905.P13634783915817260642

noncomputable section

/-- A382905: The powerfree part of the n-th biquadratefree number.

Offset 1, canonical program `A382905.P13634783915817260642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382905 (n : ℕ) : ℤ :=
  A382905.P13634783915817260642.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382905.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A386325.P8442755559218868440

`∩[A038615(n+1), A038618(n+1)]`
-/

namespace A386325.P8442755559218868440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386325.P8442755559218868440

noncomputable section

/-- A386325: Primes without {0, 7} as digits.

Offset 1, canonical program `A386325.P8442755559218868440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4967 terms. -/
def A386325 (n : ℕ) : ℤ :=
  (A386325.P8442755559218868440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4967 terms. -/
def A386325.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A400145.P3159819875312283188

`A000593(n+1)*A193231(A006519(n+1))`
-/

namespace A400145.P3159819875312283188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A193231 (A006519 (n + 1)).toNat

end

end A400145.P3159819875312283188

noncomputable section

/-- A400145: The sum of divisors d of n such that gcid(d, n/d) is odd, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400145.P3159819875312283188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400145 (n : ℕ) : ℤ :=
  A400145.P3159819875312283188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400145.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390765.P2882205278536713732

`∑{digits}[A007093(n), A054123(#)]`
-/

namespace A390765.P2882205278536713732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054123 x).sum

end

end A390765.P2882205278536713732

noncomputable section

/-- A390765: Number of digits in base-7 representation of n.

Offset 0, canonical program `A390765.P2882205278536713732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390765 (n : ℕ) : ℤ :=
  A390765.P2882205278536713732.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390765.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358841.P10582300126496029055

`val(A328579(n), 3)`
-/

namespace A358841.P10582300126496029055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328579 n).toNat 3

end

end A358841.P10582300126496029055

noncomputable section

/-- A358841: a(n) = 1 if A276086(n) is of the form 6k+1, where A276086 is the primorial base exp-function.

Offset 0, canonical program `A358841.P10582300126496029055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358841 (n : ℕ) : ℤ :=
  (A358841.P10582300126496029055.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358841.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A365859.P7072414971746195033

`2*A365857(n+1)-A032198(n+1)`
-/

namespace A365859.P7072414971746195033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A365857 (n + 1) - A032198 (n + 1)

end

end A365859.P7072414971746195033

noncomputable section

/-- A365859: Number of self-dual cyclic n-color compositions.

Offset 1, canonical program `A365859.P7072414971746195033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032198, A365857, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365859 (n : ℕ) : ℤ :=
  A365859.P7072414971746195033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032198, A365857, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365859.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367514.P13078077602515412327

`gcd(n+1, A270418(n+1)^3)`
-/

namespace A367514.P13078077602515412327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A270418 (n + 1) ^ 3)

end

end A367514.P13078077602515412327

noncomputable section

/-- A367514: The exponentially odious part of n: the largest unitary divisor of n that is an exponentially odious number (A270428).

Offset 1, canonical program `A367514.P13078077602515412327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367514 (n : ℕ) : ℤ :=
  (A367514.P13078077602515412327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367514.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368251.P3199248697924659099

`A327527(n+1)-A034444(n+1)`
-/

namespace A368251.P3199248697924659099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (n + 1) - A034444 (n + 1)

end

end A368251.P3199248697924659099

noncomputable section

/-- A368251: The number of nonsquarefree divisors of n that are powers of squarefree numbers (A072777).

Offset 1, canonical program `A368251.P3199248697924659099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368251 (n : ℕ) : ℤ :=
  A368251.P3199248697924659099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368251.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A371459.P4283562606658194077

`xor(A309952(n), A371442(n))`
-/

namespace A371459.P4283562606658194077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A309952 n) (A371442 n)

end

end A371459.P4283562606658194077

noncomputable section

/-- A371459: For any positive integer with binary digits (b_1, ..., b_w) (where b_1 = 1), the binary digits of a(n), possibly with leading zeros, are (b_2, b_4, ..., b_{floor(w/2) * 2}); a(0) = 0.

Offset 0, canonical program `A371459.P4283562606658194077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A371459 (n : ℕ) : ℤ :=
  A371459.P4283562606658194077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A371459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376400.P14733007282789081327

`a(n-1)*A276076(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376400.P14733007282789081327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A276076 (a (n - 1)).toNat

end

end A376400.P14733007282789081327

noncomputable section

/-- A376400: a(0) = 1, and for n > 0, a(n) = a(n-1) * A276076(a(n-1)), where A276076 is the factorial base exp-function.

Offset 0, canonical program `A376400.P14733007282789081327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376400 (n : ℕ) : ℤ :=
  A376400.P14733007282789081327.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376403.P11897417426599491528

`a(n-1)+A276076(a(n-1))` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376403.P11897417426599491528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A276076 (a (n - 1)).toNat

end

end A376403.P11897417426599491528

noncomputable section

/-- A376403: a(0) = 0, and for n > 0, a(n) = a(n-1) + A276076(a(n-1)), where A276076 is the factorial base exp-function.

Offset 0, canonical program `A376403.P11897417426599491528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376403 (n : ℕ) : ℤ :=
  A376403.P11897417426599491528.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377562.P2280252977947745311

`eq[1, A231204(A000005(n+1))]+1`
-/

namespace A377562.P2280252977947745311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377562.P2280252977947745311

noncomputable section

/-- A377562: Numbers that have twice as many infinitary divisors as noninfinitary divisors.

Offset 1, canonical program `A377562.P2280252977947745311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377562 (n : ℕ) : ℤ :=
  (A377562.P2280252977947745311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378663.P6986709549582363223

`A378662(n+1)-A080225(n+1)`
-/

namespace A378663.P6986709549582363223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1) - A080225 (n + 1)

end

end A378663.P6986709549582363223

noncomputable section

/-- A378663: Number of divisors d of n such that sigma(d) < 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A378663.P6986709549582363223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663 (n : ℕ) : ℤ :=
  A378663.P6986709549582363223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380443.P11461190223670850565

`A080079(or(1, A341916(n+1)))`
-/

namespace A380443.P11461190223670850565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (Int.lor 1 (A341916 (n + 1))).toNat

end

end A380443.P11461190223670850565

noncomputable section

/-- A380443: a(n) = numerator(b(n)), where b(n) = b(n/2)/2 for n even and 1 - b((n-1)/2)/2 for n odd with b(1) = 1.

Offset 1, canonical program `A380443.P11461190223670850565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A380443 (n : ℕ) : ℤ :=
  A380443.P11461190223670850565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A380443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381205.P120942691401250888

`A001221(A064988(n+1)*A181819(n+1))`
-/

namespace A381205.P120942691401250888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A064988 (n + 1) * A181819 (n + 1)).toNat

end

end A381205.P120942691401250888

noncomputable section

/-- A381205: a(n) is the cardinality of the set of bases and exponents (including exponents = 1) in the prime factorization of n.

Offset 1, canonical program `A381205.P120942691401250888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A381205 (n : ℕ) : ℤ :=
  A381205.P120942691401250888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A381205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382903.P2846374962855123125

`A360539(A046100(n+1))`
-/

namespace A382903.P2846374962855123125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A046100 (n + 1)).toNat

end

end A382903.P2846374962855123125

noncomputable section

/-- A382903: The largest cubefree unitary divisor of the n-th biquadratefree number.

Offset 1, canonical program `A382903.P2846374962855123125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382903 (n : ℕ) : ℤ :=
  A382903.P2846374962855123125.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383288.P8330207699050521713

`filter[A003159(n+1), A383287(#)]`
-/

namespace A383288.P8330207699050521713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383287 (f1 j).toNat = 1) n)

end

end A383288.P8330207699050521713

noncomputable section

/-- A383288: Numbers k for which A276075(k) is a multiple of 4, where A276075 is fully additive with a(p) = PrimePi(p)!.

Offset 1, canonical program `A383288.P8330207699050521713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6000 terms. -/
def A383288 (n : ℕ) : ℤ :=
  A383288.P8330207699050521713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6000 terms. -/
def A383288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384527.P5491213751504575383

`∩[A384526(n+1)-6, A384526(n+1)]`
-/

namespace A384527.P5491213751504575383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384526 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384527.P5491213751504575383

noncomputable section

/-- A384527: Primes p such that p + 6, p + 12, p + 14, p + 20 and p + 26 are also primes.

Offset 1, canonical program `A384527.P5491213751504575383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A384527 (n : ℕ) : ℤ :=
  (A384527.P5491213751504575383.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A384527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384868.P10611480647855577047

`A231204(A054429(1+n))-A231204(n+1)`
-/

namespace A384868.P10611480647855577047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A054429 (1 + n)).toNat - A231204 (n + 1)

end

end A384868.P10611480647855577047

noncomputable section

/-- A384868: a(n) = Sum_{i=1...|b|} i*(-1)^b_i where b is the lexicographically n-th binary string.

Offset 0, canonical program `A384868.P10611480647855577047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384868 (n : ℕ) : ℤ :=
  A384868.P10611480647855577047.a n

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

/-! ## A391074.P7066598171140740427

`A000005(n+1)-A327527(n+1)`
-/

namespace A391074.P7066598171140740427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A327527 (n + 1)

end

end A391074.P7066598171140740427

noncomputable section

/-- A391074: a(n) is the number of nonuniform divisors of n.

Offset 1, canonical program `A391074.P7066598171140740427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391074 (n : ℕ) : ℤ :=
  A391074.P7066598171140740427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391074.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A392369.P11373997461859742718

`A000120(A341916(n))`
-/

namespace A392369.P11373997461859742718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A341916 n).toNat

end

end A392369.P11373997461859742718

noncomputable section

/-- A392369: Sum of odd-indexed parts of the reversed n-th composition in standard order.

Offset 0, canonical program `A392369.P11373997461859742718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A392369 (n : ℕ) : ℤ :=
  A392369.P11373997461859742718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A392369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392876.P12816247048569082513

`A276076(n)%A117366(A276076(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392876.P12816247048569082513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276076 n) (A117366 (A276076 n).toNat)

end

end A392876.P12816247048569082513

noncomputable section

/-- A392876: a(n) = A276076(n) mod A117366(A276076(n)), where A117366 gives the smallest prime greater than the largest prime dividing n, and A276076 is the factorial base exp-function.

Offset 0, canonical program `A392876.P12816247048569082513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117366, A276076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392876 (n : ℕ) : ℤ :=
  A392876.P12816247048569082513.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117366, A276076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392876.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A366145.P15841595300471254035

`A000005(n+1)/A366147(n+1)`
-/

namespace A366145.P15841595300471254035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A366147 (n + 1) : ℚ)

end

end A366145.P15841595300471254035

noncomputable section

/-- A366145: The number of divisors of the largest divisor of n that is a cubefull number (A036966).

Offset 1, canonical program `A366145.P15841595300471254035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366145 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366145.P15841595300471254035.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366145.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A368804.P4426558620621921301

`A007088(A362030(1+n))`
-/

namespace A368804.P4426558620621921301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A362030 (1 + n)).toNat

end

end A368804.P4426558620621921301

noncomputable section

/-- A368804: Irregular triangle read by rows: T(n,k) is the k-th balanced binary word of length 2*n, where words within a row are in lexicographical order (with leading zeros removed and interpreted as decimal numbers).

Offset 1, canonical program `A368804.P4426558620621921301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368804 (n : ℕ) : ℤ :=
  A368804.P4426558620621921301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368804.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379471.P2278265495369087654

`A193231(A057889(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379471.P2278265495369087654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A057889 n).toNat

end

end A379471.P2278265495369087654

noncomputable section

/-- A379471: Composition of bijective bit-reverse and Blue code, in this order: a(n) = A193231(A057889(n)).

Offset 0, canonical program `A379471.P2278265495369087654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A193231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379471 (n : ℕ) : ℤ :=
  A379471.P2278265495369087654.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A193231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379472.P10239705604870062825

`A057889(A193231(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379472.P10239705604870062825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A193231 n).toNat

end

end A379472.P10239705604870062825

noncomputable section

/-- A379472: Composition of Blue code and bijective bit-reverse, in this order: a(n) = A057889(A193231(n)).

Offset 0, canonical program `A379472.P10239705604870062825`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A193231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379472 (n : ℕ) : ℤ :=
  A379472.P10239705604870062825.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A193231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379472.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A389908.P2197151231066400365

`min(n+1, A056539(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389908.P2197151231066400365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (n + 1 : ℤ) (A056539 (n + 1))

end

end A389908.P2197151231066400365

noncomputable section

/-- A389908: a(n) = min(n, A056539(n)), where A056539 reverses the bits in binary expansion of n and also complements them (0->1, 1->0) if n is even.

Offset 1, canonical program `A389908.P2197151231066400365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389908 (n : ℕ) : ℤ :=
  A389908.P2197151231066400365.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389908.provenance : SequenceMachineLib.Provenance := .conditional

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

